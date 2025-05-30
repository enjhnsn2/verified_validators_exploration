CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra \
           -I../rlbox/code/include \
           -I.

TARGET = test_verify_arrays
SRCS = test_verify_arrays.cpp

.PHONY: all build run clean

all: build

build: $(TARGET)

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $@ $^

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) 