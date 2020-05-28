.PHONY: clean
all: bin/main

./bin/main: ./build/src/main.o ./build/src/func.o
	g++ -std=c++17 -Wall -Werror -o ./bin/main ./build/src/main.o ./build/src/func.o -lm

./build/src/main.o: ./src/main.cpp
	g++ -std=c++17 -c -o ./build/src/main.o ./src/main.cpp -lm

./build/src/func.o: ./src/func.cpp
	g++ -std=c++17 -c -o  ./build/src/func.o ./src/func.cpp -lm


clean:
	rm -rf bin/* build/src/*o build/test/*o