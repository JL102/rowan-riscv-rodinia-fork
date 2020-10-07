CLANG = clang
CC = gcc
CCFLAGS = -g -fopenmp -O3
OUTPUT = *.out

3D_llvm:
	$(CLANG) $(CCFLAGS) -S -emit-llvm 3D.c -lm -o 3D.ll

3D_clang:
	$(CLANG) -o 3D $(CCFLAGS) 3D.c -lm 

3D:
	$(CC) -o 3D $(CCFLAGS) 3D.c -lm 

clean:
	rm -f 3D $(OUTPUT)
