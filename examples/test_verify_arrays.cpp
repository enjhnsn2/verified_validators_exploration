#include <array>
#include <cstdint>
#include <cstring>
#include <memory>
#include <cassert>

#include "test_include.hpp"

/// This file contains a series of functions to test our sandbox data validation strategy


// This function should flag unsafety, as we don't check the data from the sandbox
// and this leads to an OOB memory read
int sandbox_array_index_unchecked_unsafe() {
  // Create and initialize the sandbox
  rlbox::rlbox_sandbox<TestSandbox> sandbox;
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
  rlbox::rlbox_sandbox<TestSandbox> sandbox;
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
  rlbox::rlbox_sandbox<TestSandbox> sandbox;
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
      return index;
    }
  });

  // Use the lifted value to index into host array
  // Note: In real applications, you should validate the index is in bounds
  host_array[index];

  // Cleanup
  sandbox.destroy_sandbox();
  
  return 0;
}

int main() {
  sandbox_array_index_checked();
  sandbox_array_index_unchecked_safe();
  sandbox_array_index_unchecked_unsafe();
  return 0;
}