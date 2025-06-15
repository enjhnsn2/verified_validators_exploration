CXX = clang++-14
CC = clang-14

# Common flags
COMMON_FLAGS = -Wall -Wextra -O0 -g
INCLUDE_FLAGS = -I../rlbox/code/include -I.

# LLVM bitcode flags
LLVM_CXXFLAGS = -std=c++17 $(COMMON_FLAGS) $(INCLUDE_FLAGS) -emit-llvm -fno-exceptions
LLVM_CFLAGS = $(COMMON_FLAGS) -emit-llvm -fPIC

# Native compilation flags
NATIVE_CXXFLAGS = -std=c++17 $(COMMON_FLAGS) $(INCLUDE_FLAGS) -fno-exceptions
NATIVE_CFLAGS = $(COMMON_FLAGS) -fPIC

# Guest library targets
GUEST_LIB = libguest.so
GUEST_BC = guest.bc
GUEST_LL = guest.ll
GUEST_SRCS = guest.c

# Host program targets
HOST = host
HOST_BC = host.bc
HOST_LL = host.ll
HOST_SRCS = host.cpp
HOST_OBJ = host.o

.PHONY: all build clean run_native

all: build

build: $(GUEST_LIB) $(GUEST_BC) $(GUEST_LL) $(HOST) $(HOST_BC) $(HOST_LL)

# Guest library rules
$(GUEST_LIB): $(GUEST_SRCS)
	$(CC) $(NATIVE_CFLAGS) -shared -o $@ $^

$(GUEST_BC): $(GUEST_SRCS)
	$(CC) $(LLVM_CFLAGS) -c -o $@ $^

$(GUEST_LL): $(GUEST_SRCS)
	$(CC) $(LLVM_CFLAGS) -S -o $@ $^

# Host program rules
$(HOST_BC): $(HOST_SRCS)
	$(CXX) $(LLVM_CXXFLAGS) -c -o $@ $^

$(HOST_LL): $(HOST_SRCS)
	$(CXX) $(LLVM_CXXFLAGS) -S -o $@ $^

$(HOST_OBJ): $(HOST_SRCS)
	$(CXX) $(NATIVE_CXXFLAGS) -c -o $@ $<

$(HOST): $(HOST_OBJ) $(GUEST_LIB)
	$(CXX) -o $@ $< -L. -lguest

run_native: $(HOST)
	LD_LIBRARY_PATH=. ./$(HOST)

clean:
	rm -f $(GUEST_LIB) $(GUEST_BC) $(GUEST_LL) $(HOST) $(HOST_BC) $(HOST_LL) $(HOST_OBJ)
