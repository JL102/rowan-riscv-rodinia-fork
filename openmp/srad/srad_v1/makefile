# Example
# target: dependencies
	# command 1
	# command 2
          # .
          # .
          # .
	# command n

CLANG = clang
CC_FLAGS = -g -fopenmp -O2
LLVM_FLAGS = -S -emit-llvm

# Had to overwrite the other one because I don't know this dependency syntax
all: srad_clang srad_llvm

srad_clang: main-clang.o 
	${CLANG} main.o -lm ${CC_FLAGS} -o srad_v1

srad_llvm: main.c define.c graphics.c
	${CLANG} main.c ${CC_FLAGS} ${LLVM_FLAGS} -o srad_v1.ll

main-clang.o: main.c define.c graphics.c 
	${CLANG} main.c -c ${CC_FLAGS}

srad_gcc: main-gcc.o
	gcc main.o -lm -fopenmp -o srad_v1
	
main-gcc.o: main.c define.c graphics.c
	gcc main.c -c -O3 -fopenmp
	

# link objects(binaries) together
#a.out:	main.o
#	gcc	main.o \
#			-lm -fopenmp -o srad

# compile main function file into object (binary)
#main.o: 	main.c \
#				define.c \
#				graphics.c
#	gcc	main.c \
#			-c -O3 -fopenmp

# delete all object files
clean:
	rm *.o srad
