# C compiler
CLANG = clang
CC = g++
CC_FLAGS = -g -fopenmp -O2

srad_llvm:
	$(CLANG) $(CC_FLAGS) -S -emit-llvm srad.cpp -o srad.ll

srad_clang:
	$(CLANG) $(CC_FLAGS) srad.cpp -o srad

srad: 
	$(CC) $(CC_FLAGS) srad.cpp -o srad 

clean:
	rm -f srad
