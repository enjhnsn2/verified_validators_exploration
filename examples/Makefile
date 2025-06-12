CXX = clang++
CXXFLAGS = -std=c++17 -Wall -Wextra \
           -I../rlbox/code/include \
           -I. \
           -emit-llvm -c \
           -fno-exceptions \
           -fno-rtti \
           -O1
TARGET = test_verify_arrays.bc
SRCS = test_verify_arrays.cpp

.PHONY: all build run clean

all: build

build: $(TARGET)

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $@ $^

run: $(TARGET)
	lli $(TARGET)

clean:
	rm -f $(TARGET)