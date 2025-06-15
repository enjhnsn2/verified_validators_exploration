CXX = clang++-14
CC = clang-14

# Flags for LLVM bitcode generation
LLVM_CXXFLAGS = -std=c++17 -Wall -Wextra \
           -I../rlbox/code/include \
           -I. \
           -emit-llvm \
           -fno-exceptions \
           -O0 \
		   -g

# Flags for native compilation
NATIVE_CXXFLAGS = -std=c++17 -Wall -Wextra \
           -I../rlbox/code/include \
           -I. \
           -fno-exceptions \
           -O0 \
		   -g

# Flags for C compilation with LLVM bitcode
LLVM_CFLAGS = -Wall -Wextra -emit-llvm -fPIC -O0 -g

CFLAGS = -Wall -Wextra -fPIC -O0 -g

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

.PHONY: all build run clean

all: build

build: $(GUEST_LIB) $(GUEST_BC) $(GUEST_LL) $(HOST) $(HOST_BC) $(HOST_LL)

$(GUEST_LIB): $(GUEST_SRCS)
	$(CC) $(CFLAGS) -shared -o $@ $^

$(GUEST_BC): $(GUEST_SRCS)
	$(CC) $(LLVM_CFLAGS) -c -o $@ $^

$(GUEST_LL): $(GUEST_SRCS)
	$(CC) $(LLVM_CFLAGS) -S -o $@ $^

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
	rm -f $(GUEST_LIB)
	rm -f $(GUEST_BC)
	rm -f $(GUEST_LL)
	rm -f $(HOST)
	rm -f $(HOST_BC)
	rm -f $(HOST_LL)
	rm -f $(HOST_OBJ)
