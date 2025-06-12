CXX = clang++-14
CXXFLAGS = -std=c++17 -Wall -Wextra \
           -I../rlbox/code/include \
           -I. \
           -emit-llvm \
           -fno-exceptions \
           -fno-rtti \
           -O1 \
	   -g

TARGET = test_verify_arrays.bc
TEXT_TARGET= test_verify_arrays.ll
SRCS = test_verify_arrays.cpp

.PHONY: all build run clean

all: build

build: $(TARGET) $(TEXT_TARGET)

$(TARGET): $(SRCS)
	$(CXX) -c $(CXXFLAGS) -o $@ $^

$(TEXT_TARGET): $(SRCS)
	$(CXX) -S $(CXXFLAGS) -o $@ $^

run: $(TARGET)
	lli $(TARGET)

clean:
	rm -f $(TARGET)
	rm -f $(TEXT_TARGET)
