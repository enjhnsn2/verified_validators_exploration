// We're going to use RLBox in a single-threaded environment.
#define RLBOX_SINGLE_THREADED_INVOCATIONS
// All calls into the sandbox are resolved statically.
#define RLBOX_USE_STATIC_CALLS() rlbox_noop_sandbox_lookup_symbol

#include <stdio.h>
#include <cassert>
#include "rlbox.hpp"
#include "rlbox_noop_sandbox.hpp"

#define release_assert(cond, msg) if (!(cond)) { fputs(msg, stderr); abort(); }

#include "guest.h"

using namespace std;
using namespace rlbox;

// Define base type for guest using the noop sandbox
RLBOX_DEFINE_BASE_TYPES_FOR(guest, noop);

// Declare callback function we're going to call from sandboxed code.
void hello_cb(rlbox_sandbox_guest& _, tainted_guest<const char*> str);

void hello_cb(rlbox_sandbox_guest& _, tainted_guest<const char*> str) {
  auto checked_string =
    str.copy_and_verify_string([](unique_ptr<char[]> val) {
        release_assert(val != nullptr && strlen(val.get()) < 1024, "val is null or greater than 1024\n");
        return val;
    });
  printf("hello_cb: %s\n", checked_string.get());
}


int main() {
   // Declare and create a new sandbox
  rlbox_sandbox_guest sandbox;
  sandbox.create_sandbox();

  // Call the library hello function:
  sandbox.invoke_sandbox_function(hello);

  // call the add function and check the result:
  auto ok = sandbox.invoke_sandbox_function(add, 3, 4)
                   .copy_and_verify([](unsigned ret){
    printf("Adding... 3+4 = %d\n", ret);
    return ret == 7;
  });
  printf("OK? = %d\n", ok);
  
 
  // Call the library echo function
  const char* helloStr = "hi hi!";
  size_t helloSize = strlen(helloStr) + 1;
  tainted_guest<char*> taintedStr = sandbox.malloc_in_sandbox<char>(helloSize);
  strncpy(taintedStr
            .unverified_safe_pointer_because(helloSize, "writing to region")
         , helloStr, helloSize);
  
  sandbox.invoke_sandbox_function(echo, taintedStr);
  sandbox.free_in_sandbox(taintedStr);


  // register callback and call it
  auto cb = sandbox.register_callback(hello_cb);
  sandbox.invoke_sandbox_function(call_cb, cb);

  // destroy sandbox
  sandbox.destroy_sandbox();

  return 0;
}




// Data transfer test cases (no sandbox control flow)


// This function should flag unsafety, as we don't check the data from the sandbox
// and this leads to an OOB memory read
int sandbox_array_index_unchecked_unsafe() {
  // Create and initialize the sandbox
  rlbox_sandbox_guest sandbox;
  sandbox.create_sandbox();

  // Malloc buffer of length 4 in sandbox
  auto sandbox_array = sandbox.malloc_in_sandbox<int32_t[4]>();

  // Initialize sandbox array with some values 
  (*sandbox_array)[0] = 10;  
  (*sandbox_array)[1] = 20;
  (*sandbox_array)[2] = 30;
  (*sandbox_array)[3] = 40;

  // Create host array (not in sandbox)
  std::array<int32_t, 4> host_array = { 100, 200, 300, 400 };

  // Read the first int from sandbox array 
  auto index = (*sandbox_array)[0].UNSAFE_unverified();

  // Index into host array (unsafe)
  host_array[index];

  // Cleanup
  sandbox.destroy_sandbox();
  
  return 0;
}

// This function should not flag unsafety. 
// We don't check the results from the sandbox, but we know the index is valid
int sandbox_array_index_unchecked_safe() {
  // Create and initialize the sandbox
  rlbox_sandbox_guest sandbox;
  sandbox.create_sandbox();

  // Malloc buffer of length 4 in sandbox
  auto sandbox_array = sandbox.malloc_in_sandbox<int32_t[4]>();

  // Initialize sandbox array with some values including a valid index
  (*sandbox_array)[0] = 2;  // We'll use this as our index
  (*sandbox_array)[1] = 20;
  (*sandbox_array)[2] = 30;
  (*sandbox_array)[3] = 40;

  // Create host array (not in sandbox)
  std::array<int32_t, 4> host_array = { 100, 200, 300, 400 };

  // Read the first int from sandbox array
  auto index = (*sandbox_array)[0].UNSAFE_unverified();

  // Index into host array
  host_array[index];

  // Cleanup
  // sandbox.destroy_sandbox();
  
  return 0;
}

// This function should not flag unsafety. 
// We check the results from the sandbox, and we therefore know the index is valid
int sandbox_array_index_checked() {
  // Create and initialize the sandbox
  rlbox_sandbox_guest sandbox;
  sandbox.create_sandbox();

  // Malloc buffer of length 4 in sandbox
  auto sandbox_array = sandbox.malloc_in_sandbox<int32_t[4]>();

  // Initialize sandbox array with some values including a valid index
  (*sandbox_array)[0] = 10;  // We'll use this as our index
  (*sandbox_array)[1] = 20;
  (*sandbox_array)[2] = 30;
  (*sandbox_array)[3] = 40;

  // Create host array (not in sandbox)
  std::array<int32_t, 4> host_array = { 100, 200, 300, 400 };

  // Read the first int from sandbox array using unsafe_unverified
  auto index =(*sandbox_array)[0].copy_and_verify([&](int32_t index) {
    if (index < 4){
    return index;
    }
    else {
      return 3;
    }
  });

  // Use the lifted value to index into host array
  // Note: In real applications, you should validate the index is in bounds
  host_array[index];

  // Cleanup
  sandbox.destroy_sandbox();
  
  return 0;
}