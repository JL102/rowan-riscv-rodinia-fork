# C compiler
#CC = gcc
CC = clang
CC_FLAGS = -g -fopenmp  -O2


llvm: facetrain.ll backprop.ll backprop_kernel.ll imagenet.ll
	zip backprop.zip facetrain.ll backprop.ll backprop_kernel.ll imagenet.ll

facetrain.ll: facetrain.c backprop.h
	$(CC) $(CC_FLAGS) -S -emit-llvm facetrain.c -o facetrain.ll

backprop.ll: backprop.c backprop.h
	$(CC) $(CC_FLAGS) -S -emit-llvm backprop.c -o backprop.ll

backprop_kernel.ll: backprop_kernel.c backprop.h
	$(CC) $(CC_FLAGS) -S -emit-llvm backprop_kernel.c -o backprop_kernel.ll

imagenet.ll: imagenet.c backprop.h
	$(CC) $(CC_FLAGS) -S -emit-llvm imagenet.c -o imagenet.ll


backprop: backprop.o facetrain.o imagenet.o backprop_kernel.o 
	$(CC) $(CC_FLAGS) backprop.o facetrain.o imagenet.o backprop_kernel.o -o backprop -lm

%.o: %.[ch]
	$(CC) $(CC_FLAGS) $< -c

facetrain.o: facetrain.c backprop.h
	$(CC) $(CC_FLAGS) facetrain.c -c
	
backprop.o: backprop.c backprop.h
	$(CC) $(CC_FLAGS) backprop.c -c

backprop_kernel.o: backprop_kernel.c backprop.h
	$(CC) $(CC_FLAGS) backprop_kernel.c -c

imagenet.o: imagenet.c backprop.h
	$(CC) $(CC_FLAGS) imagenet.c -c


clean:
	rm -f *.o *~ backprop backprop_cuda.linkinfo
