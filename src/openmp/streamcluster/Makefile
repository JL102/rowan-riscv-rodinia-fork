PREFIX=${PARSECDIR}/pkgs/kernels/streamcluster/inst/${PARSECPLAT}

TARGET_C = sc_cpu
TARGET_O = sc_omp
CLANG = clang++
CC_FLAGS = -g -fopenmp -O2
LLVM_FLAGS = -S -emit-llvm

ifdef version
  ifeq "$(version)" "parallel"
    CXXFLAGS :=	$(CXXFLAGS) -DENABLE_THREADS -pthread
  endif
endif

all: cpu_llvm omp_llvm cpu_clang omp_clang

cpu_llvm:
	$(CLANG) $(CC_FLAGS) ${LLVM_FLAGS} streamcluster_original.cpp -o $(TARGET_C).ll $(LIBS) -DENABLE_THREADS -pthread

omp_llvm:
	${CLANG} ${CC_FLAGS} ${LLVM_FLAGS} -o $(TARGET_O).ll streamcluster_omp.cpp

cpu_clang:
	$(CLANG) $(CC_FLAGS) streamcluster_original.cpp -o $(TARGET_C) $(LIBS) -DENABLE_THREADS -pthread

omp_clang:
	${CLANG} ${CC_FLAGS} -o $(TARGET_O) streamcluster_omp.cpp

cpu_gcc:
	$(CXX) $(CXXFLAGS) streamcluster_original.cpp -o $(TARGET_C) $(LIBS) -DENABLE_THREADS -pthread
# original:
#	$(CXX) $(CXXFLAGS) streamcluster_original.cpp -o $(TARGET_C) $(LIBS) -DENABLE_THREADS -pthread

omp_gcc:
	g++ -O3 -fopenmp -o $(TARGET_O) streamcluster_omp.cpp


clean:
	rm -f *.o *~ *.txt sc_cpu sc_omp
	
