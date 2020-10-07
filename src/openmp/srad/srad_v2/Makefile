# C compiler
CLANG = clang
CC = g++
CC_FLAGS = -g -fopenmp -O2

all: srad_llvm srad_clang

srad_llvm:
	$(CLANG) $(CC_FLAGS) -S -emit-llvm srad.cpp -o srad_v2.ll

srad_clang:
	$(CLANG) $(CC_FLAGS) srad.cpp -o srad_v2

srad: 
	$(CC) $(CC_FLAGS) srad.cpp -o srad_v2

clean:
	rm -f srad
