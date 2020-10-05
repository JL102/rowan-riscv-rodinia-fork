# C compiler
CLANG = clang
CC = g++
ICC = icc
CC_FLAGS = -g -fopenmp -O2

all: bfs_llvm bfs_clang

bfs_llvm: bfs.cpp
	$(CLANG) $(CC_FLAGS) -c -emit-llvm bfs.cpp -o bfs.bc

bfs_clang: bfs.cpp
	$(CLANG) $(CC_FLAGS) bfs.cpp -o bfs

bfs_gcc: bfs.cpp 
	$(CC) $(CC_FLAGS) bfs.cpp -o bfs 

bfs_offload: bfs.cpp
	$(ICC) $(CC_FLAGS) -DOMP_OFFLOAD bfs.cpp -o bfs_offload

clean:
	rm -f bfs bfs_offload result.txt
