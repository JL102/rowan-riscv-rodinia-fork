; ModuleID = 'hotspot_openmp.cpp'
source_filename = "hotspot_openmp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@num_omp_threads = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [44 x i8] c";hotspot_openmp.cpp;single_iteration;69;5;;\00", align 1
@2 = private unnamed_addr constant [46 x i8] c";hotspot_openmp.cpp;single_iteration;69;151;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%d\09%g\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"file could not be opened for reading\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"not enough lines in file\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"invalid file format\00", align 1
@.str.10 = private unnamed_addr constant [87 x i8] c"Usage: %s <grid_rows> <grid_cols> <sim_time> <no. of threads><temp_file> <power_file>\0A\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"\09<grid_rows>  - number of rows in the grid (positive integer)\0A\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"\09<grid_cols>  - number of columns in the grid (positive integer)\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\09<sim_time>   - number of iterations\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\09<no. of threads>   - number of threads\0A\00", align 1
@.str.15 = private unnamed_addr constant [89 x i8] c"\09<temp_file>  - name of the file containing the initial temperature values of each cell\0A\00", align 1
@.str.16 = private unnamed_addr constant [86 x i8] c"\09<power_file> - name of the file containing the dissipated power values of each cell\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\09<output_file> - name of the output file\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"unable to allocate memory\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Total time: %.3f seconds\0A\00", align 1
@str = private unnamed_addr constant [24 x i8] c"The file was not opened\00", align 1
@str.22 = private unnamed_addr constant [42 x i8] c"Start computing the transient temperature\00", align 1
@str.23 = private unnamed_addr constant [18 x i8] c"Ending simulation\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @_Z8get_timev() local_unnamed_addr #0 !dbg !353 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !358
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12, !dbg !358
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !357, metadata !DIExpression()), !dbg !359
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, i8* null) #12, !dbg !360
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !361
  %5 = load i64, i64* %4, align 8, !dbg !361, !tbaa !362
  %6 = mul nsw i64 %5, 1000000, !dbg !367
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !368
  %8 = load i64, i64* %7, align 8, !dbg !368, !tbaa !369
  %9 = add nsw i64 %6, %8, !dbg !370
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12, !dbg !371
  ret i64 %9, !dbg !372
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare !dbg !6 i32 @gettimeofday(%struct.timeval* nocapture, i8* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: sspstrong uwtable
define dso_local void @_Z16single_iterationPfS_S_iifffff(float* %0, float* %1, float* %2, i32 %3, i32 %4, float %5, float %6, float %7, float %8, float %9) local_unnamed_addr #4 !dbg !373 {
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ident_t, align 8
  %20 = bitcast %struct.ident_t* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %20, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata float* %0, metadata !377, metadata !DIExpression()), !dbg !394
  store float* %0, float** %11, align 8, !tbaa !395
  call void @llvm.dbg.value(metadata float* %1, metadata !378, metadata !DIExpression()), !dbg !394
  store float* %1, float** %12, align 8, !tbaa !395
  call void @llvm.dbg.value(metadata float* %2, metadata !379, metadata !DIExpression()), !dbg !394
  store float* %2, float** %13, align 8, !tbaa !395
  call void @llvm.dbg.value(metadata i32 %3, metadata !380, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %4, metadata !381, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata float %5, metadata !382, metadata !DIExpression()), !dbg !394
  store float %5, float* %14, align 4, !tbaa !397
  call void @llvm.dbg.value(metadata float %6, metadata !383, metadata !DIExpression()), !dbg !394
  store float %6, float* %15, align 4, !tbaa !397
  call void @llvm.dbg.value(metadata float %7, metadata !384, metadata !DIExpression()), !dbg !394
  store float %7, float* %16, align 4, !tbaa !397
  call void @llvm.dbg.value(metadata float %8, metadata !385, metadata !DIExpression()), !dbg !394
  store float %8, float* %17, align 4, !tbaa !397
  call void @llvm.dbg.value(metadata float undef, metadata !386, metadata !DIExpression()), !dbg !394
  %21 = mul nsw i32 %4, %3, !dbg !399
  %22 = sdiv i32 %21, 256, !dbg !400
  call void @llvm.dbg.value(metadata i32 %22, metadata !391, metadata !DIExpression()), !dbg !394
  %23 = sdiv i32 %4, 16, !dbg !401
  call void @llvm.dbg.value(metadata i32 %23, metadata !392, metadata !DIExpression()), !dbg !394
  %24 = bitcast i32* %18 to i8*, !dbg !402
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #12, !dbg !402
  %25 = sdiv i32 %3, 16, !dbg !403
  call void @llvm.dbg.value(metadata i32 %25, metadata !393, metadata !DIExpression()), !dbg !394
  store i32 %25, i32* %18, align 4, !dbg !404, !tbaa !405
  %26 = load i32, i32* @num_omp_threads, align 4, !dbg !407, !tbaa !405
  tail call void @omp_set_num_threads(i32 %26), !dbg !408
  %27 = zext i32 %22 to i64, !dbg !409
  %28 = zext i32 %23 to i64, !dbg !409
  %29 = zext i32 %3 to i64, !dbg !409
  %30 = zext i32 %4 to i64, !dbg !409
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %19, i64 0, i32 4, !dbg !409
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i64 0, i64 0), i8** %31, align 8, !dbg !409, !tbaa !410
  call void @llvm.dbg.value(metadata float** %11, metadata !377, metadata !DIExpression(DW_OP_deref)), !dbg !394
  call void @llvm.dbg.value(metadata float** %12, metadata !378, metadata !DIExpression(DW_OP_deref)), !dbg !394
  call void @llvm.dbg.value(metadata float** %13, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !394
  call void @llvm.dbg.value(metadata float* %14, metadata !382, metadata !DIExpression(DW_OP_deref)), !dbg !394
  call void @llvm.dbg.value(metadata float* %15, metadata !383, metadata !DIExpression(DW_OP_deref)), !dbg !394
  call void @llvm.dbg.value(metadata float* %16, metadata !384, metadata !DIExpression(DW_OP_deref)), !dbg !394
  call void @llvm.dbg.value(metadata float* %17, metadata !385, metadata !DIExpression(DW_OP_deref)), !dbg !394
  call void @llvm.dbg.value(metadata i32* %18, metadata !393, metadata !DIExpression(DW_OP_deref)), !dbg !394
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %19, i32 12, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i32*, i64, i64, i64, float*, float**, float**, float*, float*, float*, float**)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %27, i32* nonnull %18, i64 %28, i64 %29, i64 %30, float* nonnull %14, float** nonnull %13, float** nonnull %12, float* nonnull %15, float* nonnull %16, float* nonnull %17, float** nonnull %11), !dbg !409
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !412
  ret void, !dbg !412
}

declare !dbg !22 void @omp_set_num_threads(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i64 %2, i32* nocapture readonly dereferenceable(4) %3, i64 %4, i64 %5, i64 %6, float* nocapture readonly dereferenceable(4) %7, float** nocapture readonly dereferenceable(8) %8, float** nocapture readonly dereferenceable(8) %9, float* nocapture readonly dereferenceable(4) %10, float* nocapture readonly dereferenceable(4) %11, float* nocapture readonly dereferenceable(4) %12, float** nocapture readonly dereferenceable(8) %13) #6 !dbg !413 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !424, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32* %1, metadata !425, metadata !DIExpression()), !dbg !438
  %20 = trunc i64 %2 to i32
  call void @llvm.dbg.value(metadata i32 %20, metadata !426, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !438
  call void @llvm.dbg.value(metadata i64 %2, metadata !426, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !438
  call void @llvm.dbg.value(metadata i32* %3, metadata !427, metadata !DIExpression()), !dbg !438
  %21 = trunc i64 %4 to i32
  call void @llvm.dbg.value(metadata i32 %21, metadata !428, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !438
  call void @llvm.dbg.value(metadata i64 %4, metadata !428, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !438
  %22 = trunc i64 %5 to i32
  call void @llvm.dbg.value(metadata i32 %22, metadata !429, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !438
  call void @llvm.dbg.value(metadata i64 %5, metadata !429, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !438
  %23 = trunc i64 %6 to i32
  call void @llvm.dbg.value(metadata i32 %23, metadata !430, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !438
  call void @llvm.dbg.value(metadata i64 %6, metadata !430, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !438
  call void @llvm.dbg.value(metadata float* %7, metadata !431, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata float** %8, metadata !432, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata float** %9, metadata !433, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata float* %10, metadata !434, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata float* %11, metadata !435, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata float* %12, metadata !436, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata float** %13, metadata !437, metadata !DIExpression()), !dbg !438
  %24 = bitcast %struct.ident_t* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %24)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %24, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #12, !noalias !439
  call void @llvm.dbg.value(metadata i32* %0, metadata !442, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32* undef, metadata !447, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %20, metadata !448, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32* %3, metadata !449, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %21, metadata !450, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %22, metadata !451, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %23, metadata !452, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float* %7, metadata !453, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float** %8, metadata !454, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float** %9, metadata !455, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float* %10, metadata !456, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float* %11, metadata !457, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float* %12, metadata !458, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float** %13, metadata !459, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %20, metadata !461, metadata !DIExpression()) #12, !dbg !482
  %25 = add nsw i32 %20, -1, !dbg !484
  call void @llvm.dbg.value(metadata i32 %25, metadata !461, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 0, metadata !462, metadata !DIExpression()) #12, !dbg !482
  %26 = icmp sgt i32 %20, 0, !dbg !484
  br i1 %26, label %27, label %572, !dbg !484

27:                                               ; preds = %14
  %28 = bitcast i32* %15 to i8*, !dbg !484
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #12, !dbg !484, !noalias !439
  call void @llvm.dbg.value(metadata i32 0, metadata !463, metadata !DIExpression()) #12, !dbg !482
  store i32 0, i32* %15, align 4, !dbg !485, !tbaa !405, !noalias !439
  %29 = bitcast i32* %16 to i8*, !dbg !484
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #12, !dbg !484, !noalias !439
  call void @llvm.dbg.value(metadata i32 %25, metadata !464, metadata !DIExpression()) #12, !dbg !482
  store i32 %25, i32* %16, align 4, !dbg !485, !tbaa !405, !noalias !439
  %30 = bitcast i32* %17 to i8*, !dbg !484
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #12, !dbg !484, !noalias !439
  call void @llvm.dbg.value(metadata i32 1, metadata !465, metadata !DIExpression()) #12, !dbg !482
  store i32 1, i32* %17, align 4, !dbg !485, !tbaa !405, !noalias !439
  %31 = bitcast i32* %18 to i8*, !dbg !484
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #12, !dbg !484, !noalias !439
  call void @llvm.dbg.value(metadata i32 0, metadata !466, metadata !DIExpression()) #12, !dbg !482
  store i32 0, i32* %18, align 4, !dbg !485, !tbaa !405, !noalias !439
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %19, i64 0, i32 4, !dbg !484
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i64 0, i64 0), i8** %32, align 8, !dbg !484, !tbaa !410, !noalias !439
  %33 = load i32, i32* %0, align 4, !dbg !484, !tbaa !405, !alias.scope !439
  call void @llvm.dbg.value(metadata i32* %15, metadata !463, metadata !DIExpression(DW_OP_deref)) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32* %16, metadata !464, metadata !DIExpression(DW_OP_deref)) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32* %17, metadata !465, metadata !DIExpression(DW_OP_deref)) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32* %18, metadata !466, metadata !DIExpression(DW_OP_deref)) #12, !dbg !482
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %19, i32 %33, i32 34, i32* nonnull %18, i32* nonnull %15, i32* nonnull %16, i32* nonnull %17, i32 1, i32 1) #12, !dbg !484, !noalias !439
  %34 = load i32, i32* %16, align 4, !dbg !485, !tbaa !405, !noalias !439
  call void @llvm.dbg.value(metadata i32 %34, metadata !464, metadata !DIExpression()) #12, !dbg !482
  %35 = icmp slt i32 %34, %20, !dbg !485
  %36 = select i1 %35, i32 %34, i32 %25, !dbg !485
  call void @llvm.dbg.value(metadata i32 %36, metadata !464, metadata !DIExpression()) #12, !dbg !482
  store i32 %36, i32* %16, align 4, !dbg !485, !tbaa !405, !noalias !439
  %37 = load i32, i32* %15, align 4, !dbg !485, !tbaa !405, !noalias !439
  call void @llvm.dbg.value(metadata i32 %37, metadata !463, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %37, metadata !460, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float undef, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %36, metadata !464, metadata !DIExpression()) #12, !dbg !482
  %38 = icmp sgt i32 %37, %36, !dbg !484
  br i1 %38, label %571, label %39, !dbg !484

39:                                               ; preds = %27
  %40 = load i32, i32* %3, align 4, !dbg !486, !tbaa !405, !noalias !439
  %41 = shl i64 %6, 32, !dbg !487
  %42 = ashr exact i64 %41, 32, !dbg !487
  %43 = load float*, float** %9, align 8, !dbg !498, !noalias !439
  %44 = load float*, float** %13, align 8, !dbg !498, !noalias !439
  %45 = load float*, float** %8, align 8, !dbg !499, !noalias !439
  %46 = shl i64 %5, 32
  %47 = add i64 %46, -4294967296
  %48 = ashr exact i64 %47, 32
  %49 = add i64 %41, -4294967296
  %50 = ashr exact i64 %49, 32
  %51 = add nsw i64 %50, -1, !dbg !501
  %52 = add nsw i64 %50, %42, !dbg !501
  br label %53, !dbg !484

53:                                               ; preds = %567, %39
  %54 = phi i32 [ %37, %39 ], [ %569, %567 ]
  %55 = phi float [ undef, %39 ], [ %568, %567 ]
  call void @llvm.dbg.value(metadata i32 %54, metadata !460, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %55, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %54, metadata !462, metadata !DIExpression()) #12, !dbg !482
  %56 = sdiv i32 %54, %40, !dbg !504
  %57 = shl i32 %56, 4, !dbg !505
  call void @llvm.dbg.value(metadata i32 %57, metadata !470, metadata !DIExpression()) #12, !dbg !486
  %58 = srem i32 %54, %21, !dbg !506
  %59 = shl i32 %58, 4, !dbg !507
  call void @llvm.dbg.value(metadata i32 %59, metadata !472, metadata !DIExpression()) #12, !dbg !486
  %60 = add nsw i32 %57, 16, !dbg !508
  call void @llvm.dbg.value(metadata i32 undef, metadata !473, metadata !DIExpression()) #12, !dbg !486
  %61 = add nsw i32 %59, 16, !dbg !509
  call void @llvm.dbg.value(metadata i32 undef, metadata !474, metadata !DIExpression()) #12, !dbg !486
  %62 = icmp ne i32 %56, 0, !dbg !510
  %63 = icmp ne i32 %58, 0, !dbg !511
  %64 = and i1 %62, %63, !dbg !512
  %65 = icmp slt i32 %60, %22, !dbg !513
  %66 = and i1 %64, %65, !dbg !512
  call void @llvm.dbg.value(metadata i32 undef, metadata !473, metadata !DIExpression()) #12, !dbg !486
  %67 = icmp slt i32 %61, %23, !dbg !514
  %68 = and i1 %66, %67, !dbg !512
  call void @llvm.dbg.value(metadata i32 %57, metadata !467, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %57, metadata !467, metadata !DIExpression()) #12, !dbg !482
  %69 = sext i32 %59 to i64, !dbg !486
  br i1 %68, label %74, label %70, !dbg !512

70:                                               ; preds = %53
  %71 = sext i32 %61 to i64, !dbg !515
  %72 = sext i32 %57 to i64, !dbg !515
  %73 = sext i32 %60 to i64, !dbg !515
  br label %80, !dbg !515

74:                                               ; preds = %53
  %75 = sext i32 %57 to i64, !dbg !516
  %76 = sext i32 %60 to i64, !dbg !516
  %77 = or i64 %69, 4, !dbg !517
  %78 = or i64 %69, 8, !dbg !517
  %79 = or i64 %69, 12, !dbg !517
  br label %355, !dbg !516

80:                                               ; preds = %353, %70
  %81 = phi i64 [ %72, %70 ], [ %89, %353 ]
  %82 = phi float [ %55, %70 ], [ %345, %353 ]
  call void @llvm.dbg.value(metadata i64 %81, metadata !467, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %82, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %59, metadata !468, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %82, metadata !469, metadata !DIExpression()) #12, !dbg !482
  %83 = icmp eq i64 %81, 0
  %84 = icmp eq i64 %81, %48
  %85 = load float*, float** %8, align 8, !dbg !518, !noalias !439
  %86 = mul nsw i64 %81, %42, !dbg !518
  %87 = getelementptr inbounds float, float* %85, i64 %86, !dbg !518
  %88 = load float*, float** %9, align 8, !dbg !518, !noalias !439
  %89 = add nsw i64 %81, 1, !dbg !526
  %90 = mul nsw i64 %89, %42, !dbg !518
  %91 = getelementptr inbounds float, float* %88, i64 %90, !dbg !518
  %92 = add nsw i64 %81, -1, !dbg !518
  %93 = mul nsw i64 %92, %42, !dbg !518
  %94 = getelementptr inbounds float, float* %88, i64 %93, !dbg !518
  %95 = getelementptr inbounds float, float* %88, i64 %86, !dbg !518
  %96 = add nsw i64 %86, 1, !dbg !518
  %97 = getelementptr inbounds float, float* %88, i64 %96, !dbg !518
  %98 = getelementptr inbounds float, float* %88, i64 1, !dbg !487
  %99 = getelementptr inbounds float, float* %88, i64 %42, !dbg !487
  %100 = add nsw i64 %86, %50, !dbg !527
  %101 = getelementptr inbounds float, float* %85, i64 %100, !dbg !527
  %102 = add nsw i64 %90, %50, !dbg !527
  %103 = getelementptr inbounds float, float* %88, i64 %102, !dbg !527
  %104 = add nsw i64 %93, %50, !dbg !527
  %105 = getelementptr inbounds float, float* %88, i64 %104, !dbg !527
  %106 = getelementptr inbounds float, float* %88, i64 %100, !dbg !527
  %107 = add nsw i64 %100, -1, !dbg !527
  %108 = getelementptr inbounds float, float* %88, i64 %107, !dbg !527
  %109 = getelementptr inbounds float, float* %85, i64 %50, !dbg !501
  %110 = getelementptr inbounds float, float* %88, i64 %51, !dbg !501
  %111 = getelementptr inbounds float, float* %88, i64 %50, !dbg !501
  %112 = getelementptr inbounds float, float* %88, i64 %52, !dbg !501
  br label %113, !dbg !529

113:                                              ; preds = %344, %80
  %114 = phi i64 [ %69, %80 ], [ %351, %344 ]
  %115 = phi float [ %82, %80 ], [ %345, %344 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !468, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %115, metadata !469, metadata !DIExpression()) #12, !dbg !482
  %116 = icmp eq i64 %114, 0
  %117 = or i64 %114, %81, !dbg !530
  %118 = trunc i64 %117 to i32, !dbg !530
  %119 = icmp eq i32 %118, 0, !dbg !530
  br i1 %119, label %120, label %139, !dbg !530

120:                                              ; preds = %113
  %121 = load float, float* %7, align 4, !dbg !531, !tbaa !397, !noalias !439
  %122 = load float, float* %85, align 4, !dbg !532, !tbaa !397, !noalias !439
  %123 = load float, float* %98, align 4, !dbg !533, !tbaa !397, !noalias !439
  %124 = load float, float* %88, align 4, !dbg !534, !tbaa !397, !noalias !439
  %125 = fsub float %123, %124, !dbg !535
  %126 = load float, float* %10, align 4, !dbg !536, !tbaa !397, !noalias !439
  %127 = fmul float %125, %126, !dbg !537
  %128 = fadd float %122, %127, !dbg !538
  %129 = load float, float* %99, align 4, !dbg !539, !tbaa !397, !noalias !439
  %130 = fsub float %129, %124, !dbg !540
  %131 = load float, float* %11, align 4, !dbg !541, !tbaa !397, !noalias !439
  %132 = fmul float %130, %131, !dbg !542
  %133 = fadd float %128, %132, !dbg !543
  %134 = fsub float 8.000000e+01, %124, !dbg !544
  %135 = load float, float* %12, align 4, !dbg !545, !tbaa !397, !noalias !439
  %136 = fmul float %134, %135, !dbg !546
  %137 = fadd float %133, %136, !dbg !547
  %138 = fmul float %121, %137, !dbg !548
  call void @llvm.dbg.value(metadata float %138, metadata !469, metadata !DIExpression()) #12, !dbg !482
  br label %344, !dbg !549

139:                                              ; preds = %113
  %140 = icmp eq i64 %114, %50
  %141 = and i1 %83, %140, !dbg !550
  br i1 %141, label %142, label %161, !dbg !550

142:                                              ; preds = %139
  %143 = load float, float* %7, align 4, !dbg !551, !tbaa !397, !noalias !439
  %144 = load float, float* %109, align 4, !dbg !552, !tbaa !397, !noalias !439
  %145 = load float, float* %110, align 4, !dbg !553, !tbaa !397, !noalias !439
  %146 = load float, float* %111, align 4, !dbg !554, !tbaa !397, !noalias !439
  %147 = fsub float %145, %146, !dbg !555
  %148 = load float, float* %10, align 4, !dbg !556, !tbaa !397, !noalias !439
  %149 = fmul float %147, %148, !dbg !557
  %150 = fadd float %144, %149, !dbg !558
  %151 = load float, float* %112, align 4, !dbg !559, !tbaa !397, !noalias !439
  %152 = fsub float %151, %146, !dbg !560
  %153 = load float, float* %11, align 4, !dbg !561, !tbaa !397, !noalias !439
  %154 = fmul float %152, %153, !dbg !562
  %155 = fadd float %150, %154, !dbg !563
  %156 = fsub float 8.000000e+01, %146, !dbg !564
  %157 = load float, float* %12, align 4, !dbg !565, !tbaa !397, !noalias !439
  %158 = fmul float %156, %157, !dbg !566
  %159 = fadd float %155, %158, !dbg !567
  %160 = fmul float %143, %159, !dbg !568
  call void @llvm.dbg.value(metadata float %160, metadata !469, metadata !DIExpression()) #12, !dbg !482
  br label %344, !dbg !569

161:                                              ; preds = %139
  %162 = and i1 %84, %140, !dbg !570
  br i1 %162, label %163, label %182, !dbg !570

163:                                              ; preds = %161
  %164 = load float, float* %7, align 4, !dbg !571, !tbaa !397, !noalias !439
  %165 = load float, float* %101, align 4, !dbg !573, !tbaa !397, !noalias !439
  %166 = load float, float* %108, align 4, !dbg !574, !tbaa !397, !noalias !439
  %167 = load float, float* %106, align 4, !dbg !575, !tbaa !397, !noalias !439
  %168 = fsub float %166, %167, !dbg !576
  %169 = load float, float* %10, align 4, !dbg !577, !tbaa !397, !noalias !439
  %170 = fmul float %168, %169, !dbg !578
  %171 = fadd float %165, %170, !dbg !579
  %172 = load float, float* %105, align 4, !dbg !580, !tbaa !397, !noalias !439
  %173 = fsub float %172, %167, !dbg !581
  %174 = load float, float* %11, align 4, !dbg !582, !tbaa !397, !noalias !439
  %175 = fmul float %173, %174, !dbg !583
  %176 = fadd float %171, %175, !dbg !584
  %177 = fsub float 8.000000e+01, %167, !dbg !585
  %178 = load float, float* %12, align 4, !dbg !586, !tbaa !397, !noalias !439
  %179 = fmul float %177, %178, !dbg !587
  %180 = fadd float %176, %179, !dbg !588
  %181 = fmul float %164, %180, !dbg !589
  call void @llvm.dbg.value(metadata float %181, metadata !469, metadata !DIExpression()) #12, !dbg !482
  br label %344, !dbg !590

182:                                              ; preds = %161
  %183 = and i1 %84, %116, !dbg !591
  br i1 %183, label %184, label %203, !dbg !591

184:                                              ; preds = %182
  %185 = load float, float* %7, align 4, !dbg !592, !tbaa !397, !noalias !439
  %186 = load float, float* %87, align 4, !dbg !594, !tbaa !397, !noalias !439
  %187 = load float, float* %97, align 4, !dbg !595, !tbaa !397, !noalias !439
  %188 = load float, float* %95, align 4, !dbg !596, !tbaa !397, !noalias !439
  %189 = fsub float %187, %188, !dbg !597
  %190 = load float, float* %10, align 4, !dbg !598, !tbaa !397, !noalias !439
  %191 = fmul float %189, %190, !dbg !599
  %192 = fadd float %186, %191, !dbg !600
  %193 = load float, float* %94, align 4, !dbg !601, !tbaa !397, !noalias !439
  %194 = fsub float %193, %188, !dbg !602
  %195 = load float, float* %11, align 4, !dbg !603, !tbaa !397, !noalias !439
  %196 = fmul float %194, %195, !dbg !604
  %197 = fadd float %192, %196, !dbg !605
  %198 = fsub float 8.000000e+01, %188, !dbg !606
  %199 = load float, float* %12, align 4, !dbg !607, !tbaa !397, !noalias !439
  %200 = fmul float %198, %199, !dbg !608
  %201 = fadd float %197, %200, !dbg !609
  %202 = fmul float %185, %201, !dbg !610
  call void @llvm.dbg.value(metadata float %202, metadata !469, metadata !DIExpression()) #12, !dbg !482
  br label %344, !dbg !611

203:                                              ; preds = %182
  br i1 %83, label %204, label %242, !dbg !612

204:                                              ; preds = %203
  %205 = load float, float* %7, align 4, !dbg !613, !tbaa !397, !noalias !439
  %206 = fpext float %205 to double, !dbg !615
  %207 = getelementptr inbounds float, float* %85, i64 %114, !dbg !616
  %208 = load float, float* %207, align 4, !dbg !616, !tbaa !397, !noalias !439
  %209 = fpext float %208 to double, !dbg !616
  %210 = add nsw i64 %114, 1, !dbg !617
  %211 = getelementptr inbounds float, float* %88, i64 %210, !dbg !618
  %212 = load float, float* %211, align 4, !dbg !618, !tbaa !397, !noalias !439
  %213 = add nsw i64 %114, -1, !dbg !619
  %214 = getelementptr inbounds float, float* %88, i64 %213, !dbg !620
  %215 = load float, float* %214, align 4, !dbg !620, !tbaa !397, !noalias !439
  %216 = fadd float %212, %215, !dbg !621
  %217 = fpext float %216 to double, !dbg !618
  %218 = getelementptr inbounds float, float* %88, i64 %114, !dbg !622
  %219 = load float, float* %218, align 4, !dbg !622, !tbaa !397, !noalias !439
  %220 = fpext float %219 to double, !dbg !622
  %221 = fmul double %220, 2.000000e+00, !dbg !623
  %222 = fsub double %217, %221, !dbg !624
  %223 = load float, float* %10, align 4, !dbg !625, !tbaa !397, !noalias !439
  %224 = fpext float %223 to double, !dbg !625
  %225 = fmul double %222, %224, !dbg !626
  %226 = fadd double %225, %209, !dbg !627
  %227 = add nsw i64 %114, %42, !dbg !628
  %228 = getelementptr inbounds float, float* %88, i64 %227, !dbg !629
  %229 = load float, float* %228, align 4, !dbg !629, !tbaa !397, !noalias !439
  %230 = fsub float %229, %219, !dbg !630
  %231 = load float, float* %11, align 4, !dbg !631, !tbaa !397, !noalias !439
  %232 = fmul float %230, %231, !dbg !632
  %233 = fpext float %232 to double, !dbg !633
  %234 = fadd double %226, %233, !dbg !634
  %235 = fsub float 8.000000e+01, %219, !dbg !635
  %236 = load float, float* %12, align 4, !dbg !636, !tbaa !397, !noalias !439
  %237 = fmul float %235, %236, !dbg !637
  %238 = fpext float %237 to double, !dbg !638
  %239 = fadd double %234, %238, !dbg !639
  %240 = fmul double %239, %206, !dbg !640
  %241 = fptrunc double %240 to float, !dbg !615
  call void @llvm.dbg.value(metadata float %241, metadata !469, metadata !DIExpression()) #12, !dbg !482
  br label %344, !dbg !641

242:                                              ; preds = %203
  br i1 %140, label %243, label %273, !dbg !642

243:                                              ; preds = %242
  %244 = load float, float* %7, align 4, !dbg !643, !tbaa !397, !noalias !439
  %245 = fpext float %244 to double, !dbg !644
  %246 = load float, float* %101, align 4, !dbg !645, !tbaa !397, !noalias !439
  %247 = fpext float %246 to double, !dbg !645
  %248 = load float, float* %103, align 4, !dbg !646, !tbaa !397, !noalias !439
  %249 = load float, float* %105, align 4, !dbg !647, !tbaa !397, !noalias !439
  %250 = fadd float %248, %249, !dbg !648
  %251 = fpext float %250 to double, !dbg !646
  %252 = load float, float* %106, align 4, !dbg !649, !tbaa !397, !noalias !439
  %253 = fpext float %252 to double, !dbg !649
  %254 = fmul double %253, 2.000000e+00, !dbg !650
  %255 = fsub double %251, %254, !dbg !651
  %256 = load float, float* %11, align 4, !dbg !652, !tbaa !397, !noalias !439
  %257 = fpext float %256 to double, !dbg !652
  %258 = fmul double %255, %257, !dbg !653
  %259 = fadd double %258, %247, !dbg !654
  %260 = load float, float* %108, align 4, !dbg !655, !tbaa !397, !noalias !439
  %261 = fsub float %260, %252, !dbg !656
  %262 = load float, float* %10, align 4, !dbg !657, !tbaa !397, !noalias !439
  %263 = fmul float %261, %262, !dbg !658
  %264 = fpext float %263 to double, !dbg !659
  %265 = fadd double %259, %264, !dbg !660
  %266 = fsub float 8.000000e+01, %252, !dbg !661
  %267 = load float, float* %12, align 4, !dbg !662, !tbaa !397, !noalias !439
  %268 = fmul float %266, %267, !dbg !663
  %269 = fpext float %268 to double, !dbg !664
  %270 = fadd double %265, %269, !dbg !665
  %271 = fmul double %270, %245, !dbg !666
  %272 = fptrunc double %271 to float, !dbg !644
  call void @llvm.dbg.value(metadata float %272, metadata !469, metadata !DIExpression()) #12, !dbg !482
  br label %344, !dbg !667

273:                                              ; preds = %242
  br i1 %84, label %274, label %313, !dbg !668

274:                                              ; preds = %273
  %275 = load float, float* %7, align 4, !dbg !669, !tbaa !397, !noalias !439
  %276 = fpext float %275 to double, !dbg !671
  %277 = add nsw i64 %114, %86, !dbg !672
  %278 = getelementptr inbounds float, float* %85, i64 %277, !dbg !673
  %279 = load float, float* %278, align 4, !dbg !673, !tbaa !397, !noalias !439
  %280 = fpext float %279 to double, !dbg !673
  %281 = add nsw i64 %277, 1, !dbg !674
  %282 = getelementptr inbounds float, float* %88, i64 %281, !dbg !675
  %283 = load float, float* %282, align 4, !dbg !675, !tbaa !397, !noalias !439
  %284 = add nsw i64 %277, -1, !dbg !676
  %285 = getelementptr inbounds float, float* %88, i64 %284, !dbg !677
  %286 = load float, float* %285, align 4, !dbg !677, !tbaa !397, !noalias !439
  %287 = fadd float %283, %286, !dbg !678
  %288 = fpext float %287 to double, !dbg !675
  %289 = getelementptr inbounds float, float* %88, i64 %277, !dbg !679
  %290 = load float, float* %289, align 4, !dbg !679, !tbaa !397, !noalias !439
  %291 = fpext float %290 to double, !dbg !679
  %292 = fmul double %291, 2.000000e+00, !dbg !680
  %293 = fsub double %288, %292, !dbg !681
  %294 = load float, float* %10, align 4, !dbg !682, !tbaa !397, !noalias !439
  %295 = fpext float %294 to double, !dbg !682
  %296 = fmul double %293, %295, !dbg !683
  %297 = fadd double %296, %280, !dbg !684
  %298 = add nsw i64 %114, %93, !dbg !685
  %299 = getelementptr inbounds float, float* %88, i64 %298, !dbg !686
  %300 = load float, float* %299, align 4, !dbg !686, !tbaa !397, !noalias !439
  %301 = fsub float %300, %290, !dbg !687
  %302 = load float, float* %11, align 4, !dbg !688, !tbaa !397, !noalias !439
  %303 = fmul float %301, %302, !dbg !689
  %304 = fpext float %303 to double, !dbg !690
  %305 = fadd double %297, %304, !dbg !691
  %306 = fsub float 8.000000e+01, %290, !dbg !692
  %307 = load float, float* %12, align 4, !dbg !693, !tbaa !397, !noalias !439
  %308 = fmul float %306, %307, !dbg !694
  %309 = fpext float %308 to double, !dbg !695
  %310 = fadd double %305, %309, !dbg !696
  %311 = fmul double %310, %276, !dbg !697
  %312 = fptrunc double %311 to float, !dbg !671
  call void @llvm.dbg.value(metadata float %312, metadata !469, metadata !DIExpression()) #12, !dbg !482
  br label %344, !dbg !698

313:                                              ; preds = %273
  br i1 %116, label %314, label %344, !dbg !699

314:                                              ; preds = %313
  %315 = load float, float* %7, align 4, !dbg !700, !tbaa !397, !noalias !439
  %316 = fpext float %315 to double, !dbg !701
  %317 = load float, float* %87, align 4, !dbg !702, !tbaa !397, !noalias !439
  %318 = fpext float %317 to double, !dbg !702
  %319 = load float, float* %91, align 4, !dbg !703, !tbaa !397, !noalias !439
  %320 = load float, float* %94, align 4, !dbg !704, !tbaa !397, !noalias !439
  %321 = fadd float %319, %320, !dbg !705
  %322 = fpext float %321 to double, !dbg !703
  %323 = load float, float* %95, align 4, !dbg !706, !tbaa !397, !noalias !439
  %324 = fpext float %323 to double, !dbg !706
  %325 = fmul double %324, 2.000000e+00, !dbg !707
  %326 = fsub double %322, %325, !dbg !708
  %327 = load float, float* %11, align 4, !dbg !709, !tbaa !397, !noalias !439
  %328 = fpext float %327 to double, !dbg !709
  %329 = fmul double %326, %328, !dbg !710
  %330 = fadd double %329, %318, !dbg !711
  %331 = load float, float* %97, align 4, !dbg !712, !tbaa !397, !noalias !439
  %332 = fsub float %331, %323, !dbg !713
  %333 = load float, float* %10, align 4, !dbg !714, !tbaa !397, !noalias !439
  %334 = fmul float %332, %333, !dbg !715
  %335 = fpext float %334 to double, !dbg !716
  %336 = fadd double %330, %335, !dbg !717
  %337 = fsub float 8.000000e+01, %323, !dbg !718
  %338 = load float, float* %12, align 4, !dbg !719, !tbaa !397, !noalias !439
  %339 = fmul float %337, %338, !dbg !720
  %340 = fpext float %339 to double, !dbg !721
  %341 = fadd double %336, %340, !dbg !722
  %342 = fmul double %341, %316, !dbg !723
  %343 = fptrunc double %342 to float, !dbg !701
  call void @llvm.dbg.value(metadata float %343, metadata !469, metadata !DIExpression()) #12, !dbg !482
  br label %344, !dbg !724

344:                                              ; preds = %314, %313, %274, %243, %204, %184, %163, %142, %120
  %345 = phi float [ %138, %120 ], [ %160, %142 ], [ %181, %163 ], [ %202, %184 ], [ %241, %204 ], [ %272, %243 ], [ %312, %274 ], [ %343, %314 ], [ %115, %313 ]
  call void @llvm.dbg.value(metadata float %345, metadata !469, metadata !DIExpression()) #12, !dbg !482
  %346 = add nsw i64 %114, %86, !dbg !725
  %347 = getelementptr inbounds float, float* %43, i64 %346, !dbg !726
  %348 = load float, float* %347, align 4, !dbg !726, !tbaa !397, !noalias !439
  %349 = fadd float %345, %348, !dbg !727
  %350 = getelementptr inbounds float, float* %44, i64 %346, !dbg !728
  store float %349, float* %350, align 4, !dbg !729, !tbaa !397, !noalias !439
  %351 = add nsw i64 %114, 1, !dbg !730
  call void @llvm.dbg.value(metadata i64 %351, metadata !468, metadata !DIExpression()) #12, !dbg !482
  %352 = icmp slt i64 %351, %71, !dbg !731
  br i1 %352, label %113, label %353, !dbg !529, !llvm.loop !732

353:                                              ; preds = %344
  call void @llvm.dbg.value(metadata float %345, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %345, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %345, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %345, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %345, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %345, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %345, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %345, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata float %345, metadata !469, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i64 %89, metadata !467, metadata !DIExpression()) #12, !dbg !482
  %354 = icmp slt i64 %89, %73, !dbg !734
  br i1 %354, label %80, label %567, !dbg !515, !llvm.loop !735

355:                                              ; preds = %355, %74
  %356 = phi i64 [ %75, %74 ], [ %358, %355 ]
  call void @llvm.dbg.value(metadata i64 %356, metadata !467, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 0, metadata !481, metadata !DIExpression()) #12, !dbg !517
  %357 = mul nsw i64 %356, %42, !dbg !499
  %358 = add nsw i64 %356, 1, !dbg !737
  %359 = mul nsw i64 %358, %42, !dbg !499
  %360 = add nsw i64 %356, -1, !dbg !499
  %361 = mul nsw i64 %360, %42, !dbg !499
  %362 = add nsw i64 %357, %69, !dbg !738
  %363 = getelementptr inbounds float, float* %43, i64 %362, !dbg !739
  %364 = bitcast float* %363 to <4 x float>*, !dbg !739
  %365 = load <4 x float>, <4 x float>* %364, align 4, !dbg !739, !tbaa !397, !noalias !439, !llvm.access.group !740
  %366 = load float, float* %7, align 4, !dbg !741, !tbaa !397, !noalias !439, !llvm.access.group !740
  %367 = insertelement <4 x float> undef, float %366, i32 0, !dbg !742
  %368 = shufflevector <4 x float> %367, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !742
  %369 = getelementptr inbounds float, float* %45, i64 %362, !dbg !742
  %370 = bitcast float* %369 to <4 x float>*, !dbg !742
  %371 = load <4 x float>, <4 x float>* %370, align 4, !dbg !742, !tbaa !397, !noalias !439, !llvm.access.group !740
  %372 = add nsw i64 %359, %69, !dbg !743
  %373 = getelementptr inbounds float, float* %43, i64 %372, !dbg !744
  %374 = bitcast float* %373 to <4 x float>*, !dbg !744
  %375 = load <4 x float>, <4 x float>* %374, align 4, !dbg !744, !tbaa !397, !noalias !439, !llvm.access.group !740
  %376 = add nsw i64 %361, %69, !dbg !745
  %377 = getelementptr inbounds float, float* %43, i64 %376, !dbg !746
  %378 = bitcast float* %377 to <4 x float>*, !dbg !746
  %379 = load <4 x float>, <4 x float>* %378, align 4, !dbg !746, !tbaa !397, !noalias !439, !llvm.access.group !740
  %380 = fadd <4 x float> %375, %379, !dbg !747
  %381 = fmul <4 x float> %365, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, !dbg !748
  %382 = fsub <4 x float> %380, %381, !dbg !749
  %383 = load float, float* %11, align 4, !dbg !750, !tbaa !397, !noalias !439, !llvm.access.group !740
  %384 = insertelement <4 x float> undef, float %383, i32 0, !dbg !751
  %385 = shufflevector <4 x float> %384, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %386 = fmul <4 x float> %385, %382, !dbg !751
  %387 = fadd <4 x float> %371, %386, !dbg !752
  %388 = add nsw i64 %362, 1, !dbg !753
  %389 = getelementptr inbounds float, float* %43, i64 %388, !dbg !754
  %390 = bitcast float* %389 to <4 x float>*, !dbg !754
  %391 = load <4 x float>, <4 x float>* %390, align 4, !dbg !754, !tbaa !397, !noalias !439, !llvm.access.group !740
  %392 = add nsw i64 %362, -1, !dbg !755
  %393 = getelementptr inbounds float, float* %43, i64 %392, !dbg !756
  %394 = bitcast float* %393 to <4 x float>*, !dbg !756
  %395 = load <4 x float>, <4 x float>* %394, align 4, !dbg !756, !tbaa !397, !noalias !439, !llvm.access.group !740
  %396 = fadd <4 x float> %391, %395, !dbg !757
  %397 = fsub <4 x float> %396, %381, !dbg !758
  %398 = load float, float* %10, align 4, !dbg !759, !tbaa !397, !noalias !439, !llvm.access.group !740
  %399 = insertelement <4 x float> undef, float %398, i32 0, !dbg !751
  %400 = shufflevector <4 x float> %399, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %401 = fmul <4 x float> %400, %397, !dbg !751
  %402 = fadd <4 x float> %387, %401, !dbg !760
  %403 = fsub <4 x float> <float 8.000000e+01, float 8.000000e+01, float 8.000000e+01, float 8.000000e+01>, %365, !dbg !761
  %404 = load float, float* %12, align 4, !dbg !762, !tbaa !397, !noalias !439, !llvm.access.group !740
  %405 = insertelement <4 x float> undef, float %404, i32 0, !dbg !751
  %406 = shufflevector <4 x float> %405, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %407 = fmul <4 x float> %403, %406, !dbg !751
  %408 = fadd <4 x float> %407, %402, !dbg !763
  %409 = fmul <4 x float> %368, %408, !dbg !751
  %410 = fadd <4 x float> %365, %409, !dbg !764
  %411 = getelementptr inbounds float, float* %44, i64 %362, !dbg !765
  %412 = bitcast float* %411 to <4 x float>*, !dbg !766
  store <4 x float> %410, <4 x float>* %412, align 4, !dbg !766, !tbaa !397, !noalias !439, !llvm.access.group !740
  %413 = add nsw i64 %77, %357, !dbg !738
  %414 = getelementptr inbounds float, float* %43, i64 %413, !dbg !739
  %415 = bitcast float* %414 to <4 x float>*, !dbg !739
  %416 = load <4 x float>, <4 x float>* %415, align 4, !dbg !739, !tbaa !397, !noalias !439, !llvm.access.group !740
  %417 = load float, float* %7, align 4, !dbg !741, !tbaa !397, !noalias !439, !llvm.access.group !740
  %418 = insertelement <4 x float> undef, float %417, i32 0, !dbg !742
  %419 = shufflevector <4 x float> %418, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !742
  %420 = getelementptr inbounds float, float* %45, i64 %413, !dbg !742
  %421 = bitcast float* %420 to <4 x float>*, !dbg !742
  %422 = load <4 x float>, <4 x float>* %421, align 4, !dbg !742, !tbaa !397, !noalias !439, !llvm.access.group !740
  %423 = add nsw i64 %77, %359, !dbg !743
  %424 = getelementptr inbounds float, float* %43, i64 %423, !dbg !744
  %425 = bitcast float* %424 to <4 x float>*, !dbg !744
  %426 = load <4 x float>, <4 x float>* %425, align 4, !dbg !744, !tbaa !397, !noalias !439, !llvm.access.group !740
  %427 = add nsw i64 %77, %361, !dbg !745
  %428 = getelementptr inbounds float, float* %43, i64 %427, !dbg !746
  %429 = bitcast float* %428 to <4 x float>*, !dbg !746
  %430 = load <4 x float>, <4 x float>* %429, align 4, !dbg !746, !tbaa !397, !noalias !439, !llvm.access.group !740
  %431 = fadd <4 x float> %426, %430, !dbg !747
  %432 = fmul <4 x float> %416, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, !dbg !748
  %433 = fsub <4 x float> %431, %432, !dbg !749
  %434 = load float, float* %11, align 4, !dbg !750, !tbaa !397, !noalias !439, !llvm.access.group !740
  %435 = insertelement <4 x float> undef, float %434, i32 0, !dbg !751
  %436 = shufflevector <4 x float> %435, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %437 = fmul <4 x float> %436, %433, !dbg !751
  %438 = fadd <4 x float> %422, %437, !dbg !752
  %439 = add nsw i64 %413, 1, !dbg !753
  %440 = getelementptr inbounds float, float* %43, i64 %439, !dbg !754
  %441 = bitcast float* %440 to <4 x float>*, !dbg !754
  %442 = load <4 x float>, <4 x float>* %441, align 4, !dbg !754, !tbaa !397, !noalias !439, !llvm.access.group !740
  %443 = add nsw i64 %413, -1, !dbg !755
  %444 = getelementptr inbounds float, float* %43, i64 %443, !dbg !756
  %445 = bitcast float* %444 to <4 x float>*, !dbg !756
  %446 = load <4 x float>, <4 x float>* %445, align 4, !dbg !756, !tbaa !397, !noalias !439, !llvm.access.group !740
  %447 = fadd <4 x float> %442, %446, !dbg !757
  %448 = fsub <4 x float> %447, %432, !dbg !758
  %449 = load float, float* %10, align 4, !dbg !759, !tbaa !397, !noalias !439, !llvm.access.group !740
  %450 = insertelement <4 x float> undef, float %449, i32 0, !dbg !751
  %451 = shufflevector <4 x float> %450, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %452 = fmul <4 x float> %451, %448, !dbg !751
  %453 = fadd <4 x float> %438, %452, !dbg !760
  %454 = fsub <4 x float> <float 8.000000e+01, float 8.000000e+01, float 8.000000e+01, float 8.000000e+01>, %416, !dbg !761
  %455 = load float, float* %12, align 4, !dbg !762, !tbaa !397, !noalias !439, !llvm.access.group !740
  %456 = insertelement <4 x float> undef, float %455, i32 0, !dbg !751
  %457 = shufflevector <4 x float> %456, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %458 = fmul <4 x float> %454, %457, !dbg !751
  %459 = fadd <4 x float> %458, %453, !dbg !763
  %460 = fmul <4 x float> %419, %459, !dbg !751
  %461 = fadd <4 x float> %416, %460, !dbg !764
  %462 = getelementptr inbounds float, float* %44, i64 %413, !dbg !765
  %463 = bitcast float* %462 to <4 x float>*, !dbg !766
  store <4 x float> %461, <4 x float>* %463, align 4, !dbg !766, !tbaa !397, !noalias !439, !llvm.access.group !740
  %464 = add nsw i64 %78, %357, !dbg !738
  %465 = getelementptr inbounds float, float* %43, i64 %464, !dbg !739
  %466 = bitcast float* %465 to <4 x float>*, !dbg !739
  %467 = load <4 x float>, <4 x float>* %466, align 4, !dbg !739, !tbaa !397, !noalias !439, !llvm.access.group !740
  %468 = load float, float* %7, align 4, !dbg !741, !tbaa !397, !noalias !439, !llvm.access.group !740
  %469 = insertelement <4 x float> undef, float %468, i32 0, !dbg !742
  %470 = shufflevector <4 x float> %469, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !742
  %471 = getelementptr inbounds float, float* %45, i64 %464, !dbg !742
  %472 = bitcast float* %471 to <4 x float>*, !dbg !742
  %473 = load <4 x float>, <4 x float>* %472, align 4, !dbg !742, !tbaa !397, !noalias !439, !llvm.access.group !740
  %474 = add nsw i64 %78, %359, !dbg !743
  %475 = getelementptr inbounds float, float* %43, i64 %474, !dbg !744
  %476 = bitcast float* %475 to <4 x float>*, !dbg !744
  %477 = load <4 x float>, <4 x float>* %476, align 4, !dbg !744, !tbaa !397, !noalias !439, !llvm.access.group !740
  %478 = add nsw i64 %78, %361, !dbg !745
  %479 = getelementptr inbounds float, float* %43, i64 %478, !dbg !746
  %480 = bitcast float* %479 to <4 x float>*, !dbg !746
  %481 = load <4 x float>, <4 x float>* %480, align 4, !dbg !746, !tbaa !397, !noalias !439, !llvm.access.group !740
  %482 = fadd <4 x float> %477, %481, !dbg !747
  %483 = fmul <4 x float> %467, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, !dbg !748
  %484 = fsub <4 x float> %482, %483, !dbg !749
  %485 = load float, float* %11, align 4, !dbg !750, !tbaa !397, !noalias !439, !llvm.access.group !740
  %486 = insertelement <4 x float> undef, float %485, i32 0, !dbg !751
  %487 = shufflevector <4 x float> %486, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %488 = fmul <4 x float> %487, %484, !dbg !751
  %489 = fadd <4 x float> %473, %488, !dbg !752
  %490 = add nsw i64 %464, 1, !dbg !753
  %491 = getelementptr inbounds float, float* %43, i64 %490, !dbg !754
  %492 = bitcast float* %491 to <4 x float>*, !dbg !754
  %493 = load <4 x float>, <4 x float>* %492, align 4, !dbg !754, !tbaa !397, !noalias !439, !llvm.access.group !740
  %494 = add nsw i64 %464, -1, !dbg !755
  %495 = getelementptr inbounds float, float* %43, i64 %494, !dbg !756
  %496 = bitcast float* %495 to <4 x float>*, !dbg !756
  %497 = load <4 x float>, <4 x float>* %496, align 4, !dbg !756, !tbaa !397, !noalias !439, !llvm.access.group !740
  %498 = fadd <4 x float> %493, %497, !dbg !757
  %499 = fsub <4 x float> %498, %483, !dbg !758
  %500 = load float, float* %10, align 4, !dbg !759, !tbaa !397, !noalias !439, !llvm.access.group !740
  %501 = insertelement <4 x float> undef, float %500, i32 0, !dbg !751
  %502 = shufflevector <4 x float> %501, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %503 = fmul <4 x float> %502, %499, !dbg !751
  %504 = fadd <4 x float> %489, %503, !dbg !760
  %505 = fsub <4 x float> <float 8.000000e+01, float 8.000000e+01, float 8.000000e+01, float 8.000000e+01>, %467, !dbg !761
  %506 = load float, float* %12, align 4, !dbg !762, !tbaa !397, !noalias !439, !llvm.access.group !740
  %507 = insertelement <4 x float> undef, float %506, i32 0, !dbg !751
  %508 = shufflevector <4 x float> %507, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %509 = fmul <4 x float> %505, %508, !dbg !751
  %510 = fadd <4 x float> %509, %504, !dbg !763
  %511 = fmul <4 x float> %470, %510, !dbg !751
  %512 = fadd <4 x float> %467, %511, !dbg !764
  %513 = getelementptr inbounds float, float* %44, i64 %464, !dbg !765
  %514 = bitcast float* %513 to <4 x float>*, !dbg !766
  store <4 x float> %512, <4 x float>* %514, align 4, !dbg !766, !tbaa !397, !noalias !439, !llvm.access.group !740
  %515 = add nsw i64 %79, %357, !dbg !738
  %516 = getelementptr inbounds float, float* %43, i64 %515, !dbg !739
  %517 = bitcast float* %516 to <4 x float>*, !dbg !739
  %518 = load <4 x float>, <4 x float>* %517, align 4, !dbg !739, !tbaa !397, !noalias !439, !llvm.access.group !740
  %519 = load float, float* %7, align 4, !dbg !741, !tbaa !397, !noalias !439, !llvm.access.group !740
  %520 = insertelement <4 x float> undef, float %519, i32 0, !dbg !742
  %521 = shufflevector <4 x float> %520, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !742
  %522 = getelementptr inbounds float, float* %45, i64 %515, !dbg !742
  %523 = bitcast float* %522 to <4 x float>*, !dbg !742
  %524 = load <4 x float>, <4 x float>* %523, align 4, !dbg !742, !tbaa !397, !noalias !439, !llvm.access.group !740
  %525 = add nsw i64 %79, %359, !dbg !743
  %526 = getelementptr inbounds float, float* %43, i64 %525, !dbg !744
  %527 = bitcast float* %526 to <4 x float>*, !dbg !744
  %528 = load <4 x float>, <4 x float>* %527, align 4, !dbg !744, !tbaa !397, !noalias !439, !llvm.access.group !740
  %529 = add nsw i64 %79, %361, !dbg !745
  %530 = getelementptr inbounds float, float* %43, i64 %529, !dbg !746
  %531 = bitcast float* %530 to <4 x float>*, !dbg !746
  %532 = load <4 x float>, <4 x float>* %531, align 4, !dbg !746, !tbaa !397, !noalias !439, !llvm.access.group !740
  %533 = fadd <4 x float> %528, %532, !dbg !747
  %534 = fmul <4 x float> %518, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, !dbg !748
  %535 = fsub <4 x float> %533, %534, !dbg !749
  %536 = load float, float* %11, align 4, !dbg !750, !tbaa !397, !noalias !439, !llvm.access.group !740
  %537 = insertelement <4 x float> undef, float %536, i32 0, !dbg !751
  %538 = shufflevector <4 x float> %537, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %539 = fmul <4 x float> %538, %535, !dbg !751
  %540 = fadd <4 x float> %524, %539, !dbg !752
  %541 = add nsw i64 %515, 1, !dbg !753
  %542 = getelementptr inbounds float, float* %43, i64 %541, !dbg !754
  %543 = bitcast float* %542 to <4 x float>*, !dbg !754
  %544 = load <4 x float>, <4 x float>* %543, align 4, !dbg !754, !tbaa !397, !noalias !439, !llvm.access.group !740
  %545 = add nsw i64 %515, -1, !dbg !755
  %546 = getelementptr inbounds float, float* %43, i64 %545, !dbg !756
  %547 = bitcast float* %546 to <4 x float>*, !dbg !756
  %548 = load <4 x float>, <4 x float>* %547, align 4, !dbg !756, !tbaa !397, !noalias !439, !llvm.access.group !740
  %549 = fadd <4 x float> %544, %548, !dbg !757
  %550 = fsub <4 x float> %549, %534, !dbg !758
  %551 = load float, float* %10, align 4, !dbg !759, !tbaa !397, !noalias !439, !llvm.access.group !740
  %552 = insertelement <4 x float> undef, float %551, i32 0, !dbg !751
  %553 = shufflevector <4 x float> %552, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %554 = fmul <4 x float> %553, %550, !dbg !751
  %555 = fadd <4 x float> %540, %554, !dbg !760
  %556 = fsub <4 x float> <float 8.000000e+01, float 8.000000e+01, float 8.000000e+01, float 8.000000e+01>, %518, !dbg !761
  %557 = load float, float* %12, align 4, !dbg !762, !tbaa !397, !noalias !439, !llvm.access.group !740
  %558 = insertelement <4 x float> undef, float %557, i32 0, !dbg !751
  %559 = shufflevector <4 x float> %558, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !751
  %560 = fmul <4 x float> %556, %559, !dbg !751
  %561 = fadd <4 x float> %560, %555, !dbg !763
  %562 = fmul <4 x float> %521, %561, !dbg !751
  %563 = fadd <4 x float> %518, %562, !dbg !764
  %564 = getelementptr inbounds float, float* %44, i64 %515, !dbg !765
  %565 = bitcast float* %564 to <4 x float>*, !dbg !766
  store <4 x float> %563, <4 x float>* %565, align 4, !dbg !766, !tbaa !397, !noalias !439, !llvm.access.group !740
  call void @llvm.dbg.value(metadata i32 %59, metadata !468, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #12, !dbg !482
  call void @llvm.dbg.value(metadata i64 %358, metadata !467, metadata !DIExpression()) #12, !dbg !482
  %566 = icmp slt i64 %358, %76, !dbg !767
  br i1 %566, label %355, label %567, !dbg !516, !llvm.loop !768

567:                                              ; preds = %353, %355
  %568 = phi float [ %55, %355 ], [ %345, %353 ]
  call void @llvm.dbg.value(metadata float %568, metadata !469, metadata !DIExpression()) #12, !dbg !482
  %569 = add nsw i32 %54, 1, !dbg !484
  call void @llvm.dbg.value(metadata i32 %569, metadata !460, metadata !DIExpression()) #12, !dbg !482
  call void @llvm.dbg.value(metadata i32 %36, metadata !464, metadata !DIExpression()) #12, !dbg !482
  %570 = icmp slt i32 %54, %36, !dbg !484
  br i1 %570, label %53, label %571, !dbg !484, !llvm.loop !770

571:                                              ; preds = %567, %27
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i64 0, i64 0), i8** %32, align 8, !dbg !771, !tbaa !410, !noalias !439
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %19, i32 %33) #12, !dbg !771, !noalias !439
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #12, !dbg !771, !noalias !439
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #12, !dbg !771, !noalias !439
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #12, !dbg !771, !noalias !439
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #12, !dbg !771, !noalias !439
  br label %572, !dbg !771

572:                                              ; preds = %14, %571
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24), !dbg !773
  ret void, !dbg !774
}

declare !callback !775 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: sspstrong uwtable
define dso_local void @_Z17compute_tran_tempPfiS_S_ii(float* %0, i32 %1, float* %2, float* %3, i32 %4, i32 %5) local_unnamed_addr #4 !dbg !777 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata float* %0, metadata !781, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i32 %1, metadata !782, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata float* %2, metadata !783, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata float* %3, metadata !784, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i32 %4, metadata !785, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i32 %5, metadata !786, metadata !DIExpression()), !dbg !807
  %16 = sitofp i32 %4 to float, !dbg !808
  %17 = fdiv float 0x3F90624DE0000000, %16, !dbg !809
  call void @llvm.dbg.value(metadata float %17, metadata !787, metadata !DIExpression()), !dbg !807
  %18 = sitofp i32 %5 to float, !dbg !810
  %19 = fdiv float 0x3F90624DE0000000, %18, !dbg !811
  call void @llvm.dbg.value(metadata float %19, metadata !788, metadata !DIExpression()), !dbg !807
  %20 = fpext float %19 to double, !dbg !812
  %21 = fmul double %20, 0x407B580015CA2000, !dbg !813
  %22 = fpext float %17 to double, !dbg !814
  %23 = fmul double %21, %22, !dbg !815
  %24 = fptrunc double %23 to float, !dbg !816
  call void @llvm.dbg.value(metadata float %24, metadata !789, metadata !DIExpression()), !dbg !807
  %25 = fmul double %22, 0x3FB99999AE000000, !dbg !817
  %26 = fdiv double %20, %25, !dbg !818
  %27 = fptrunc double %26 to float, !dbg !819
  call void @llvm.dbg.value(metadata float %27, metadata !790, metadata !DIExpression()), !dbg !807
  %28 = fmul double %20, 0x3FB99999AE000000, !dbg !820
  %29 = fdiv double %22, %28, !dbg !821
  %30 = fptrunc double %29 to float, !dbg !822
  call void @llvm.dbg.value(metadata float %30, metadata !791, metadata !DIExpression()), !dbg !807
  %31 = fmul float %17, 1.000000e+02, !dbg !823
  %32 = fmul float %31, %19, !dbg !824
  %33 = fdiv float 0x3F40624DE0000000, %32, !dbg !825
  call void @llvm.dbg.value(metadata float %33, metadata !792, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata float 0x40BAC92480000000, metadata !793, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata float 0x3DE40B0E00000000, metadata !794, metadata !DIExpression()), !dbg !807
  %34 = fdiv float 1.000000e+00, %27, !dbg !826
  call void @llvm.dbg.value(metadata float %34, metadata !795, metadata !DIExpression()), !dbg !807
  %35 = fdiv float 1.000000e+00, %30, !dbg !827
  call void @llvm.dbg.value(metadata float %35, metadata !796, metadata !DIExpression()), !dbg !807
  %36 = fdiv float 1.000000e+00, %33, !dbg !828
  call void @llvm.dbg.value(metadata float %36, metadata !797, metadata !DIExpression()), !dbg !807
  %37 = fdiv float 0x3DE40B0E00000000, %24, !dbg !829
  call void @llvm.dbg.value(metadata float %37, metadata !798, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata float* %0, metadata !799, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata float* %2, metadata !801, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i32 0, metadata !802, metadata !DIExpression()), !dbg !831
  %38 = icmp sgt i32 %1, 0, !dbg !832
  br i1 %38, label %39, label %58, !dbg !833

39:                                               ; preds = %6
  %40 = bitcast float** %7 to i8*
  %41 = bitcast float** %8 to i8*
  %42 = bitcast float** %9 to i8*
  %43 = bitcast float* %10 to i8*
  %44 = bitcast float* %11 to i8*
  %45 = bitcast float* %12 to i8*
  %46 = bitcast float* %13 to i8*
  %47 = bitcast %struct.ident_t* %15 to i8*
  %48 = mul nsw i32 %5, %4, !dbg !834
  %49 = sdiv i32 %48, 256, !dbg !834
  %50 = sdiv i32 %5, 16, !dbg !834
  %51 = bitcast i32* %14 to i8*, !dbg !834
  %52 = sdiv i32 %4, 16, !dbg !834
  %53 = zext i32 %49 to i64, !dbg !834
  %54 = zext i32 %50 to i64, !dbg !834
  %55 = zext i32 %4 to i64, !dbg !834
  %56 = zext i32 %5 to i64, !dbg !834
  %57 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %15, i64 0, i32 4, !dbg !834
  br label %59, !dbg !833

58:                                               ; preds = %59, %6
  ret void, !dbg !836

59:                                               ; preds = %59, %39
  %60 = phi float* [ %0, %39 ], [ %62, %59 ]
  %61 = phi i32 [ 0, %39 ], [ %64, %59 ]
  %62 = phi float* [ %2, %39 ], [ %60, %59 ]
  call void @llvm.dbg.value(metadata float* %60, metadata !799, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i32 %61, metadata !802, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata float* %62, metadata !801, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %44)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %45)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %47)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %47, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata float* %60, metadata !377, metadata !DIExpression()), !dbg !834
  store float* %60, float** %7, align 8, !tbaa !395
  call void @llvm.dbg.value(metadata float* %62, metadata !378, metadata !DIExpression()), !dbg !834
  store float* %62, float** %8, align 8, !tbaa !395
  call void @llvm.dbg.value(metadata float* %3, metadata !379, metadata !DIExpression()), !dbg !834
  store float* %3, float** %9, align 8, !tbaa !395
  call void @llvm.dbg.value(metadata i32 %4, metadata !380, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i32 %5, metadata !381, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata float %37, metadata !382, metadata !DIExpression()), !dbg !834
  store float %37, float* %10, align 4, !tbaa !397
  call void @llvm.dbg.value(metadata float %34, metadata !383, metadata !DIExpression()), !dbg !834
  store float %34, float* %11, align 4, !tbaa !397
  call void @llvm.dbg.value(metadata float %35, metadata !384, metadata !DIExpression()), !dbg !834
  store float %35, float* %12, align 4, !tbaa !397
  call void @llvm.dbg.value(metadata float %36, metadata !385, metadata !DIExpression()), !dbg !834
  store float %36, float* %13, align 4, !tbaa !397
  call void @llvm.dbg.value(metadata float undef, metadata !386, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i32 %49, metadata !391, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i32 %50, metadata !392, metadata !DIExpression()), !dbg !834
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %51) #12, !dbg !837
  call void @llvm.dbg.value(metadata i32 %52, metadata !393, metadata !DIExpression()), !dbg !834
  store i32 %52, i32* %14, align 4, !dbg !838, !tbaa !405
  %63 = load i32, i32* @num_omp_threads, align 4, !dbg !839, !tbaa !405
  call void @omp_set_num_threads(i32 %63), !dbg !840
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i64 0, i64 0), i8** %57, align 8, !dbg !841, !tbaa !410
  call void @llvm.dbg.value(metadata float** %7, metadata !377, metadata !DIExpression(DW_OP_deref)), !dbg !834
  call void @llvm.dbg.value(metadata float** %8, metadata !378, metadata !DIExpression(DW_OP_deref)), !dbg !834
  call void @llvm.dbg.value(metadata float** %9, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !834
  call void @llvm.dbg.value(metadata float* %10, metadata !382, metadata !DIExpression(DW_OP_deref)), !dbg !834
  call void @llvm.dbg.value(metadata float* %11, metadata !383, metadata !DIExpression(DW_OP_deref)), !dbg !834
  call void @llvm.dbg.value(metadata float* %12, metadata !384, metadata !DIExpression(DW_OP_deref)), !dbg !834
  call void @llvm.dbg.value(metadata float* %13, metadata !385, metadata !DIExpression(DW_OP_deref)), !dbg !834
  call void @llvm.dbg.value(metadata i32* %14, metadata !393, metadata !DIExpression(DW_OP_deref)), !dbg !834
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %15, i32 12, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i32*, i64, i64, i64, float*, float**, float**, float*, float*, float*, float**)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %53, i32* nonnull %14, i64 %54, i64 %55, i64 %56, float* nonnull %10, float** nonnull %9, float** nonnull %8, float* nonnull %11, float* nonnull %12, float* nonnull %13, float** nonnull %7), !dbg !841
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %51) #12, !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40), !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41), !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42), !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43), !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44), !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45), !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46), !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %47), !dbg !842
  call void @llvm.dbg.value(metadata float* %62, metadata !804, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata float* %60, metadata !801, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata float* %62, metadata !799, metadata !DIExpression()), !dbg !830
  %64 = add nuw nsw i32 %61, 1, !dbg !844
  call void @llvm.dbg.value(metadata i32 %64, metadata !802, metadata !DIExpression()), !dbg !831
  %65 = icmp eq i32 %64, %1, !dbg !832
  br i1 %65, label %58, label %59, !dbg !833, !llvm.loop !845
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @_Z5fatalPc(i8* %0) local_unnamed_addr #7 !dbg !847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !851, metadata !DIExpression()), !dbg !852
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !853, !tbaa !395
  %3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %0) #13, !dbg !854
  tail call void @exit(i32 1) #14, !dbg !855
  unreachable, !dbg !855
}

; Function Attrs: nofree nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_Z11writeoutputPfiiPc(float* nocapture readonly %0, i32 %1, i32 %2, i8* nocapture readonly %3) local_unnamed_addr #0 !dbg !856 {
  %5 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata float* %0, metadata !860, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 %1, metadata !861, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 %2, metadata !862, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8* %3, metadata !863, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 0, metadata !866, metadata !DIExpression()), !dbg !875
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !876
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %6) #12, !dbg !876
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !871, metadata !DIExpression()), !dbg !877
  %7 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !878
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !867, metadata !DIExpression()), !dbg !875
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !880
  br i1 %8, label %9, label %11, !dbg !881

9:                                                ; preds = %4
  %10 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str, i64 0, i64 0)), !dbg !882
  br label %11, !dbg !882

11:                                               ; preds = %9, %4
  call void @llvm.dbg.value(metadata i32 0, metadata !864, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 0, metadata !866, metadata !DIExpression()), !dbg !875
  %12 = icmp sgt i32 %1, 0, !dbg !883
  br i1 %12, label %13, label %39, !dbg !886

13:                                               ; preds = %11
  %14 = icmp sgt i32 %2, 0, !dbg !887
  %15 = sext i32 %2 to i64, !dbg !886
  %16 = zext i32 %1 to i64, !dbg !883
  %17 = zext i32 %2 to i64, !dbg !887
  br label %18, !dbg !886

18:                                               ; preds = %35, %13
  %19 = phi i64 [ 0, %13 ], [ %37, %35 ]
  %20 = phi i32 [ 0, %13 ], [ %36, %35 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !864, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 %20, metadata !866, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 %20, metadata !866, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 0, metadata !865, metadata !DIExpression()), !dbg !875
  br i1 %14, label %21, label %35, !dbg !890

21:                                               ; preds = %18
  %22 = mul nsw i64 %19, %15, !dbg !891
  br label %23, !dbg !890

23:                                               ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %33, %23 ]
  %25 = phi i32 [ %20, %21 ], [ %32, %23 ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !866, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i64 %24, metadata !865, metadata !DIExpression()), !dbg !875
  %26 = add nsw i64 %24, %22, !dbg !893
  %27 = getelementptr inbounds float, float* %0, i64 %26, !dbg !894
  %28 = load float, float* %27, align 4, !dbg !894, !tbaa !397
  %29 = fpext float %28 to double, !dbg !894
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %25, double %29) #12, !dbg !895
  %31 = call i32 @fputs(i8* nonnull %6, %struct._IO_FILE* %7), !dbg !896
  %32 = add nsw i32 %25, 1, !dbg !897
  call void @llvm.dbg.value(metadata i32 %32, metadata !866, metadata !DIExpression()), !dbg !875
  %33 = add nuw nsw i64 %24, 1, !dbg !898
  call void @llvm.dbg.value(metadata i64 %33, metadata !865, metadata !DIExpression()), !dbg !875
  %34 = icmp eq i64 %33, %17, !dbg !899
  br i1 %34, label %35, label %23, !dbg !890, !llvm.loop !900

35:                                               ; preds = %23, %18
  %36 = phi i32 [ %20, %18 ], [ %32, %23 ], !dbg !875
  call void @llvm.dbg.value(metadata i32 %36, metadata !866, metadata !DIExpression()), !dbg !875
  %37 = add nuw nsw i64 %19, 1, !dbg !902
  call void @llvm.dbg.value(metadata i64 %37, metadata !864, metadata !DIExpression()), !dbg !875
  %38 = icmp eq i64 %37, %16, !dbg !883
  br i1 %38, label %39, label %18, !dbg !886, !llvm.loop !903

39:                                               ; preds = %35, %11
  %40 = tail call i32 @fclose(%struct._IO_FILE* %7), !dbg !905
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %6) #12, !dbg !906
  ret void, !dbg !906
}

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !26 i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !88 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_Z10read_inputPfiiPc(float* nocapture %0, i32 %1, i32 %2, i8* nocapture readonly %3) local_unnamed_addr #0 !dbg !907 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca float, align 4
  call void @llvm.dbg.value(metadata float* %0, metadata !909, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i32 %1, metadata !910, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i32 %2, metadata !911, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i8* %3, metadata !912, metadata !DIExpression()), !dbg !918
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !919
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %7) #12, !dbg !919
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !916, metadata !DIExpression()), !dbg !920
  %8 = bitcast float* %6 to i8*, !dbg !921
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #12, !dbg !921
  %9 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !dbg !922
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, metadata !915, metadata !DIExpression()), !dbg !918
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !923
  br i1 %10, label %17, label %11, !dbg !925

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !913, metadata !DIExpression()), !dbg !918
  %12 = mul i32 %2, %1, !dbg !926
  %13 = icmp sgt i32 %12, 0, !dbg !929
  br i1 %13, label %14, label %34, !dbg !930

14:                                               ; preds = %11
  %15 = bitcast float* %6 to i32*, !dbg !931
  %16 = zext i32 %12 to i64, !dbg !929
  br label %18, !dbg !930

17:                                               ; preds = %4
  tail call void @_Z5fatalPc(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)), !dbg !933
  unreachable

18:                                               ; preds = %28, %14
  %19 = phi i64 [ 0, %14 ], [ %32, %28 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !913, metadata !DIExpression()), !dbg !918
  %20 = call i8* @fgets_unlocked(i8* nonnull %7, i32 256, %struct._IO_FILE* nonnull %9), !dbg !934
  %21 = call i32 @feof(%struct._IO_FILE* nonnull %9) #12, !dbg !935
  %22 = icmp eq i32 %21, 0, !dbg !935
  br i1 %22, label %24, label %23, !dbg !937

23:                                               ; preds = %18
  call void @_Z5fatalPc(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0)), !dbg !938
  unreachable

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata float* %6, metadata !917, metadata !DIExpression(DW_OP_deref)), !dbg !918
  %25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), float* nonnull %6) #12, !dbg !939
  %26 = icmp eq i32 %25, 1, !dbg !941
  br i1 %26, label %28, label %27, !dbg !942

27:                                               ; preds = %24
  call void @_Z5fatalPc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)), !dbg !943
  unreachable

28:                                               ; preds = %24
  %29 = load i32, i32* %15, align 4, !dbg !944, !tbaa !397
  call void @llvm.dbg.value(metadata float undef, metadata !917, metadata !DIExpression()), !dbg !918
  %30 = getelementptr inbounds float, float* %0, i64 %19, !dbg !945
  %31 = bitcast float* %30 to i32*, !dbg !946
  store i32 %29, i32* %31, align 4, !dbg !946, !tbaa !397
  %32 = add nuw nsw i64 %19, 1, !dbg !947
  call void @llvm.dbg.value(metadata i64 %32, metadata !913, metadata !DIExpression()), !dbg !918
  %33 = icmp eq i64 %32, %16, !dbg !929
  br i1 %33, label %34, label %18, !dbg !930, !llvm.loop !948

34:                                               ; preds = %28, %11
  %35 = call i32 @fclose(%struct._IO_FILE* nonnull %9), !dbg !950
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #12, !dbg !951
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %7) #12, !dbg !951
  ret void, !dbg !951
}

; Function Attrs: nofree nounwind
declare !dbg !94 i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @_Z5usageiPPc(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #7 !dbg !952 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !956, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i8** %1, metadata !957, metadata !DIExpression()), !dbg !958
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !959, !tbaa !395
  %4 = load i8*, i8** %1, align 8, !dbg !960, !tbaa !395
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.10, i64 0, i64 0), i8* %4) #13, !dbg !961
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !962, !tbaa !395
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i64 62, i64 1, %struct._IO_FILE* %6) #13, !dbg !963
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !964, !tbaa !395
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %8) #13, !dbg !965
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !966, !tbaa !395
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %10) #13, !dbg !967
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !968, !tbaa !395
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %12) #13, !dbg !969
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !970, !tbaa !395
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.15, i64 0, i64 0), i64 88, i64 1, %struct._IO_FILE* %14) #13, !dbg !971
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !972, !tbaa !395
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.16, i64 0, i64 0), i64 85, i64 1, %struct._IO_FILE* %16) #13, !dbg !973
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !974, !tbaa !395
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %18) #13, !dbg !975
  tail call void @exit(i32 1) #14, !dbg !976
  unreachable, !dbg !976
}

; Function Attrs: norecurse sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #9 !dbg !977 {
  %3 = alloca <2 x i64>, align 16
  %4 = bitcast <2 x i64>* %3 to %struct.timeval*
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !357, metadata !DIExpression()), !dbg !995
  %5 = alloca <2 x i64>, align 16
  %6 = bitcast <2 x i64>* %5 to %struct.timeval*
  call void @llvm.dbg.declare(metadata %struct.timeval* %6, metadata !357, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %0, metadata !981, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8** %1, metadata !982, metadata !DIExpression()), !dbg !999
  %7 = icmp eq i32 %0, 8, !dbg !1000
  br i1 %7, label %9, label %8, !dbg !1002

8:                                                ; preds = %2
  tail call void @_Z5usageiPPc(i32 undef, i8** %1), !dbg !1003
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1004
  %11 = load i8*, i8** %10, align 8, !dbg !1004, !tbaa !395
  call void @llvm.dbg.value(metadata i8* %11, metadata !152, metadata !DIExpression()) #12, !dbg !1006
  %12 = tail call i64 @strtol(i8* nocapture nonnull %11, i8** null, i32 10) #12, !dbg !1008
  %13 = trunc i64 %12 to i32, !dbg !1008
  call void @llvm.dbg.value(metadata i32 %13, metadata !983, metadata !DIExpression()), !dbg !999
  %14 = icmp slt i32 %13, 1, !dbg !1009
  br i1 %14, label %33, label %15, !dbg !1010

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8*, i8** %1, i64 2, !dbg !1011
  %17 = load i8*, i8** %16, align 8, !dbg !1011, !tbaa !395
  call void @llvm.dbg.value(metadata i8* %17, metadata !152, metadata !DIExpression()) #12, !dbg !1012
  %18 = tail call i64 @strtol(i8* nocapture nonnull %17, i8** null, i32 10) #12, !dbg !1014
  %19 = trunc i64 %18 to i32, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %19, metadata !984, metadata !DIExpression()), !dbg !999
  %20 = icmp slt i32 %19, 1, !dbg !1015
  br i1 %20, label %33, label %21, !dbg !1016

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8*, i8** %1, i64 3, !dbg !1017
  %23 = load i8*, i8** %22, align 8, !dbg !1017, !tbaa !395
  call void @llvm.dbg.value(metadata i8* %23, metadata !152, metadata !DIExpression()) #12, !dbg !1018
  %24 = tail call i64 @strtol(i8* nocapture nonnull %23, i8** null, i32 10) #12, !dbg !1020
  %25 = trunc i64 %24 to i32, !dbg !1020
  call void @llvm.dbg.value(metadata i32 %25, metadata !985, metadata !DIExpression()), !dbg !999
  %26 = icmp slt i32 %25, 1, !dbg !1021
  br i1 %26, label %33, label %27, !dbg !1022

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8*, i8** %1, i64 4, !dbg !1023
  %29 = load i8*, i8** %28, align 8, !dbg !1023, !tbaa !395
  call void @llvm.dbg.value(metadata i8* %29, metadata !152, metadata !DIExpression()) #12, !dbg !1024
  %30 = tail call i64 @strtol(i8* nocapture nonnull %29, i8** null, i32 10) #12, !dbg !1026
  %31 = trunc i64 %30 to i32, !dbg !1026
  store i32 %31, i32* @num_omp_threads, align 4, !dbg !1027, !tbaa !405
  %32 = icmp slt i32 %31, 1, !dbg !1028
  br i1 %32, label %33, label %34, !dbg !1029

33:                                               ; preds = %27, %21, %15, %9
  call void @llvm.dbg.value(metadata i32 undef, metadata !984, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 undef, metadata !985, metadata !DIExpression()), !dbg !999
  tail call void @_Z5usageiPPc(i32 undef, i8** nonnull %1), !dbg !1030
  unreachable

34:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 %19, metadata !984, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 %25, metadata !985, metadata !DIExpression()), !dbg !999
  %35 = shl i64 %12, 32, !dbg !1031
  %36 = mul i64 %35, %18, !dbg !1032
  %37 = ashr exact i64 %36, 32, !dbg !1032
  %38 = tail call noalias i8* @calloc(i64 %37, i64 4) #12, !dbg !1033
  %39 = bitcast i8* %38 to float*, !dbg !1034
  call void @llvm.dbg.value(metadata float* %39, metadata !987, metadata !DIExpression()), !dbg !999
  %40 = tail call noalias i8* @calloc(i64 %37, i64 4) #12, !dbg !1035
  %41 = bitcast i8* %40 to float*, !dbg !1036
  call void @llvm.dbg.value(metadata float* %41, metadata !988, metadata !DIExpression()), !dbg !999
  %42 = tail call noalias i8* @calloc(i64 %37, i64 4) #12, !dbg !1037
  %43 = bitcast i8* %42 to float*, !dbg !1038
  call void @llvm.dbg.value(metadata float* %43, metadata !989, metadata !DIExpression()), !dbg !999
  %44 = icmp ne i8* %38, null, !dbg !1039
  %45 = icmp ne i8* %40, null, !dbg !1041
  %46 = and i1 %44, %45, !dbg !1042
  br i1 %46, label %48, label %47, !dbg !1042

47:                                               ; preds = %34
  tail call void @_Z5fatalPc(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0)), !dbg !1043
  unreachable

48:                                               ; preds = %34
  %49 = getelementptr inbounds i8*, i8** %1, i64 5, !dbg !1044
  %50 = load i8*, i8** %49, align 8, !dbg !1044, !tbaa !395
  call void @llvm.dbg.value(metadata i8* %50, metadata !990, metadata !DIExpression()), !dbg !999
  %51 = getelementptr inbounds i8*, i8** %1, i64 6, !dbg !1045
  %52 = load i8*, i8** %51, align 8, !dbg !1045, !tbaa !395
  call void @llvm.dbg.value(metadata i8* %52, metadata !991, metadata !DIExpression()), !dbg !999
  %53 = getelementptr inbounds i8*, i8** %1, i64 7, !dbg !1046
  %54 = load i8*, i8** %53, align 8, !dbg !1046, !tbaa !395
  call void @llvm.dbg.value(metadata i8* %54, metadata !992, metadata !DIExpression()), !dbg !999
  tail call void @_Z10read_inputPfiiPc(float* nonnull %39, i32 %13, i32 %19, i8* %50), !dbg !1047
  tail call void @_Z10read_inputPfiiPc(float* nonnull %41, i32 %13, i32 %19, i8* %52), !dbg !1048
  %55 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.22, i64 0, i64 0)), !dbg !1049
  %56 = bitcast <2 x i64>* %5 to i8*, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #12, !dbg !1050
  %57 = call i32 @gettimeofday(%struct.timeval* nonnull %6, i8* null) #12, !dbg !1051
  %58 = load <2 x i64>, <2 x i64>* %5, align 16, !dbg !1052, !tbaa !1053
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #12, !dbg !1054
  call void @llvm.dbg.value(metadata i64 undef, metadata !993, metadata !DIExpression()), !dbg !999
  tail call void @_Z17compute_tran_tempPfiS_S_ii(float* %43, i32 %25, float* nonnull %39, float* nonnull %41, i32 %13, i32 %19), !dbg !1055
  %59 = bitcast <2 x i64>* %3 to i8*, !dbg !1056
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #12, !dbg !1056
  %60 = call i32 @gettimeofday(%struct.timeval* nonnull %4, i8* null) #12, !dbg !1057
  %61 = load <2 x i64>, <2 x i64>* %3, align 16, !dbg !1058, !tbaa !1053
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %59) #12, !dbg !1059
  call void @llvm.dbg.value(metadata i64 undef, metadata !994, metadata !DIExpression()), !dbg !999
  %62 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.23, i64 0, i64 0)), !dbg !1060
  %63 = sub <2 x i64> %61, %58
  %64 = extractelement <2 x i64> %63, i32 0
  %65 = mul i64 %64, 1000000
  %66 = extractelement <2 x i64> %63, i32 1, !dbg !1061
  %67 = add i64 %66, %65, !dbg !1061
  %68 = sitofp i64 %67 to float, !dbg !1062
  %69 = fdiv float %68, 1.000000e+06, !dbg !1063
  %70 = fpext float %69 to double, !dbg !1064
  %71 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), double %70), !dbg !1065
  %72 = and i32 %25, 1, !dbg !1066
  %73 = icmp eq i32 %72, 0, !dbg !1067
  %74 = select i1 %73, float* %39, float* %43, !dbg !1067
  tail call void @_Z11writeoutputPfiiPc(float* %74, i32 %13, i32 %19, i8* %54), !dbg !1068
  tail call void @free(i8* nonnull %38) #12, !dbg !1069
  tail call void @free(i8* nonnull %40) #12, !dbg !1070
  ret i32 0, !dbg !1071
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !98 void @free(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i8* @fgets_unlocked(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

attributes #0 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "num_omp_threads", scope: !2, file: !3, line: 48, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !103, imports: !113, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hotspot_openmp.cpp", directory: "/home/andrew/class/clinic-hardware-accelerator/rodinia_3.1/openmp/hotspot")
!4 = !{}
!5 = !{!6, !22, !26, !88, !91, !94, !95, !97, !98, !10, !102}
!6 = !DISubprogram(name: "gettimeofday", scope: !7, file: !7, line: 66, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/sys/time.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !21}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !13, line: 8, size: 128, flags: DIFlagTypePassByValue, elements: !14, identifier: "_ZTS7timeval")
!13 = !DIFile(filename: "/usr/include/bits/types/struct_timeval.h", directory: "")
!14 = !{!15, !19}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !12, file: !13, line: 10, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !17, line: 160, baseType: !18)
!17 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!18 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !12, file: !13, line: 11, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !17, line: 162, baseType: !18)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DISubprogram(name: "omp_set_num_threads", scope: !23, file: !23, line: 57, type: !24, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!23 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!24 = !DISubroutineType(types: !25)
!25 = !{null, !10}
!26 = !DISubprogram(name: "fputs", scope: !27, file: !27, line: 631, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!27 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!28 = !DISubroutineType(types: !29)
!29 = !{!10, !30, !33}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !36, identifier: "_ZTS8_IO_FILE")
!35 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!36 = !{!37, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !53, !54, !55, !56, !58, !60, !62, !66, !69, !71, !74, !77, !78, !79, !83, !84}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !34, file: !35, line: 51, baseType: !10, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !34, file: !35, line: 54, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !34, file: !35, line: 55, baseType: !39, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !34, file: !35, line: 56, baseType: !39, size: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !34, file: !35, line: 57, baseType: !39, size: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !34, file: !35, line: 58, baseType: !39, size: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !34, file: !35, line: 59, baseType: !39, size: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !34, file: !35, line: 60, baseType: !39, size: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !34, file: !35, line: 61, baseType: !39, size: 64, offset: 512)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !34, file: !35, line: 64, baseType: !39, size: 64, offset: 576)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !34, file: !35, line: 65, baseType: !39, size: 64, offset: 640)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !34, file: !35, line: 66, baseType: !39, size: 64, offset: 704)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !34, file: !35, line: 68, baseType: !51, size: 64, offset: 768)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !35, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !34, file: !35, line: 70, baseType: !33, size: 64, offset: 832)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !34, file: !35, line: 72, baseType: !10, size: 32, offset: 896)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !34, file: !35, line: 73, baseType: !10, size: 32, offset: 928)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !34, file: !35, line: 74, baseType: !57, size: 64, offset: 960)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !17, line: 152, baseType: !18)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !34, file: !35, line: 77, baseType: !59, size: 16, offset: 1024)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !34, file: !35, line: 78, baseType: !61, size: 8, offset: 1040)
!61 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !34, file: !35, line: 79, baseType: !63, size: 8, offset: 1048)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 1)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !34, file: !35, line: 81, baseType: !67, size: 64, offset: 1088)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !35, line: 43, baseType: null)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !34, file: !35, line: 89, baseType: !70, size: 64, offset: 1152)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !17, line: 153, baseType: !18)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !34, file: !35, line: 91, baseType: !72, size: 64, offset: 1216)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !35, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !34, file: !35, line: 92, baseType: !75, size: 64, offset: 1280)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !35, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !34, file: !35, line: 93, baseType: !33, size: 64, offset: 1344)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !34, file: !35, line: 94, baseType: !21, size: 64, offset: 1408)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !34, file: !35, line: 95, baseType: !80, size: 64, offset: 1472)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 46, baseType: !82)
!81 = !DIFile(filename: "/usr/lib/clang/10.0.1/include/stddef.h", directory: "")
!82 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !34, file: !35, line: 96, baseType: !10, size: 32, offset: 1536)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !34, file: !35, line: 98, baseType: !85, size: 160, offset: 1568)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 20)
!88 = !DISubprogram(name: "fclose", scope: !27, file: !27, line: 213, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!89 = !DISubroutineType(types: !90)
!90 = !{!10, !33}
!91 = !DISubprogram(name: "fgets", scope: !27, file: !27, line: 568, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!92 = !DISubroutineType(types: !93)
!93 = !{!39, !39, !10, !33}
!94 = !DISubprogram(name: "feof", scope: !27, file: !27, line: 764, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLOAT", file: !3, line: 34, baseType: !97)
!97 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!98 = !DISubprogram(name: "free", scope: !99, file: !99, line: 565, type: !100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!99 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!100 = !DISubroutineType(types: !101)
!101 = !{null, !21}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!103 = !{!104, !107, !109, !111, !0}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression(DW_OP_constu, 1117782016, DW_OP_stack_value))
!105 = distinct !DIGlobalVariable(name: "amb_temp", scope: !2, file: !3, line: 46, type: !106, isLocal: true, isDefinition: true)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression(DW_OP_constu, 1015222895, DW_OP_stack_value))
!108 = distinct !DIGlobalVariable(name: "chip_height", scope: !2, file: !3, line: 38, type: !106, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression(DW_OP_constu, 1015222895, DW_OP_stack_value))
!110 = distinct !DIGlobalVariable(name: "chip_width", scope: !2, file: !3, line: 39, type: !106, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression(DW_OP_constu, 973279855, DW_OP_stack_value))
!112 = distinct !DIGlobalVariable(name: "t_chip", scope: !2, file: !3, line: 37, type: !106, isLocal: true, isDefinition: true)
!113 = !{!114, !120, !124, !130, !134, !139, !141, !147, !153, !157, !168, !172, !176, !178, !180, !184, !188, !192, !196, !200, !208, !212, !216, !218, !222, !226, !231, !236, !240, !244, !246, !254, !258, !266, !268, !272, !276, !280, !284, !289, !293, !298, !299, !300, !301, !303, !304, !305, !306, !307, !308, !309, !311, !312, !313, !314, !315, !316, !317, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !116, file: !119, line: 52)
!115 = !DINamespace(name: "std", scope: null)
!116 = !DISubprogram(name: "abs", scope: !99, file: !99, line: 840, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubroutineType(types: !118)
!118 = !{!10, !10}
!119 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/std_abs.h", directory: "")
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !121, file: !123, line: 127)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !99, line: 62, baseType: !122)
!122 = !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!123 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdlib", directory: "")
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !125, file: !123, line: 128)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !99, line: 70, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !127, identifier: "_ZTS6ldiv_t")
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !126, file: !99, line: 68, baseType: !18, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !126, file: !99, line: 69, baseType: !18, size: 64, offset: 64)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !131, file: !123, line: 130)
!131 = !DISubprogram(name: "abort", scope: !99, file: !99, line: 591, type: !132, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!132 = !DISubroutineType(types: !133)
!133 = !{null}
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !135, file: !123, line: 134)
!135 = !DISubprogram(name: "atexit", scope: !99, file: !99, line: 595, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DISubroutineType(types: !137)
!137 = !{!10, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !140, file: !123, line: 137)
!140 = !DISubprogram(name: "at_quick_exit", scope: !99, file: !99, line: 600, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !142, file: !123, line: 140)
!142 = !DISubprogram(name: "atof", scope: !143, file: !143, line: 25, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DIFile(filename: "/usr/include/bits/stdlib-float.h", directory: "")
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !30}
!146 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !148, file: !123, line: 141)
!148 = distinct !DISubprogram(name: "atoi", scope: !99, file: !99, line: 361, type: !149, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{!10, !30}
!151 = !{!152}
!152 = !DILocalVariable(name: "__nptr", arg: 1, scope: !148, file: !99, line: 361, type: !30)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !154, file: !123, line: 142)
!154 = !DISubprogram(name: "atol", scope: !99, file: !99, line: 366, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!155 = !DISubroutineType(types: !156)
!156 = !{!18, !30}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !158, file: !123, line: 143)
!158 = !DISubprogram(name: "bsearch", scope: !159, file: !159, line: 20, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DIFile(filename: "/usr/include/bits/stdlib-bsearch.h", directory: "")
!160 = !DISubroutineType(types: !161)
!161 = !{!21, !162, !162, !80, !80, !164}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !99, line: 808, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!10, !162, !162}
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !169, file: !123, line: 144)
!169 = !DISubprogram(name: "calloc", scope: !99, file: !99, line: 542, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubroutineType(types: !171)
!171 = !{!21, !80, !80}
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !173, file: !123, line: 145)
!173 = !DISubprogram(name: "div", scope: !99, file: !99, line: 852, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{!121, !10, !10}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !177, file: !123, line: 146)
!177 = !DISubprogram(name: "exit", scope: !99, file: !99, line: 617, type: !24, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !179, file: !123, line: 147)
!179 = !DISubprogram(name: "free", scope: !99, file: !99, line: 565, type: !100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !181, file: !123, line: 148)
!181 = !DISubprogram(name: "getenv", scope: !99, file: !99, line: 634, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DISubroutineType(types: !183)
!183 = !{!39, !30}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !185, file: !123, line: 149)
!185 = !DISubprogram(name: "labs", scope: !99, file: !99, line: 841, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubroutineType(types: !187)
!187 = !{!18, !18}
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !189, file: !123, line: 150)
!189 = !DISubprogram(name: "ldiv", scope: !99, file: !99, line: 854, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubroutineType(types: !191)
!191 = !{!125, !18, !18}
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !193, file: !123, line: 151)
!193 = !DISubprogram(name: "malloc", scope: !99, file: !99, line: 539, type: !194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!194 = !DISubroutineType(types: !195)
!195 = !{!21, !80}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !197, file: !123, line: 153)
!197 = !DISubprogram(name: "mblen", scope: !99, file: !99, line: 922, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DISubroutineType(types: !199)
!199 = !{!10, !30, !80}
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !201, file: !123, line: 154)
!201 = !DISubprogram(name: "mbstowcs", scope: !99, file: !99, line: 933, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DISubroutineType(types: !203)
!203 = !{!80, !204, !207, !80}
!204 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!207 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !209, file: !123, line: 155)
!209 = !DISubprogram(name: "mbtowc", scope: !99, file: !99, line: 925, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubroutineType(types: !211)
!211 = !{!10, !204, !207, !80}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !213, file: !123, line: 157)
!213 = !DISubprogram(name: "qsort", scope: !99, file: !99, line: 830, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !21, !80, !80, !164}
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !217, file: !123, line: 160)
!217 = !DISubprogram(name: "quick_exit", scope: !99, file: !99, line: 623, type: !24, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !219, file: !123, line: 163)
!219 = !DISubprogram(name: "rand", scope: !99, file: !99, line: 453, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubroutineType(types: !221)
!221 = !{!10}
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !223, file: !123, line: 164)
!223 = !DISubprogram(name: "realloc", scope: !99, file: !99, line: 550, type: !224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DISubroutineType(types: !225)
!225 = !{!21, !21, !80}
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !227, file: !123, line: 165)
!227 = !DISubprogram(name: "srand", scope: !99, file: !99, line: 455, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !230}
!230 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !232, file: !123, line: 166)
!232 = !DISubprogram(name: "strtod", scope: !99, file: !99, line: 117, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubroutineType(types: !234)
!234 = !{!146, !207, !235}
!235 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !237, file: !123, line: 167)
!237 = !DISubprogram(name: "strtol", scope: !99, file: !99, line: 176, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{!18, !207, !235, !10}
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !241, file: !123, line: 168)
!241 = !DISubprogram(name: "strtoul", scope: !99, file: !99, line: 180, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DISubroutineType(types: !243)
!243 = !{!82, !207, !235, !10}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !245, file: !123, line: 169)
!245 = !DISubprogram(name: "system", scope: !99, file: !99, line: 784, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !247, file: !123, line: 171)
!247 = !DISubprogram(name: "wcstombs", scope: !99, file: !99, line: 937, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DISubroutineType(types: !249)
!249 = !{!80, !250, !251, !80}
!250 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !255, file: !123, line: 172)
!255 = !DISubprogram(name: "wctomb", scope: !99, file: !99, line: 929, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubroutineType(types: !257)
!257 = !{!10, !39, !206}
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !259, entity: !260, file: !123, line: 200)
!259 = !DINamespace(name: "__gnu_cxx", scope: null)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !99, line: 80, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !262, identifier: "_ZTS7lldiv_t")
!262 = !{!263, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !261, file: !99, line: 78, baseType: !264, size: 64)
!264 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !261, file: !99, line: 79, baseType: !264, size: 64, offset: 64)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !259, entity: !267, file: !123, line: 206)
!267 = !DISubprogram(name: "_Exit", scope: !99, file: !99, line: 629, type: !24, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !259, entity: !269, file: !123, line: 210)
!269 = !DISubprogram(name: "llabs", scope: !99, file: !99, line: 844, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DISubroutineType(types: !271)
!271 = !{!264, !264}
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !259, entity: !273, file: !123, line: 216)
!273 = !DISubprogram(name: "lldiv", scope: !99, file: !99, line: 858, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{!260, !264, !264}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !259, entity: !277, file: !123, line: 227)
!277 = !DISubprogram(name: "atoll", scope: !99, file: !99, line: 373, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DISubroutineType(types: !279)
!279 = !{!264, !30}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !259, entity: !281, file: !123, line: 228)
!281 = !DISubprogram(name: "strtoll", scope: !99, file: !99, line: 200, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DISubroutineType(types: !283)
!283 = !{!264, !207, !235, !10}
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !259, entity: !285, file: !123, line: 229)
!285 = !DISubprogram(name: "strtoull", scope: !99, file: !99, line: 205, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !207, !235, !10}
!288 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !259, entity: !290, file: !123, line: 231)
!290 = !DISubprogram(name: "strtof", scope: !99, file: !99, line: 123, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DISubroutineType(types: !292)
!292 = !{!97, !207, !235}
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !259, entity: !294, file: !123, line: 232)
!294 = !DISubprogram(name: "strtold", scope: !99, file: !99, line: 126, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !207, !235}
!297 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !260, file: !123, line: 240)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !267, file: !123, line: 242)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !269, file: !123, line: 244)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !302, file: !123, line: 245)
!302 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !259, file: !123, line: 213, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !273, file: !123, line: 246)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !277, file: !123, line: 248)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !290, file: !123, line: 249)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !281, file: !123, line: 250)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !285, file: !123, line: 251)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !294, file: !123, line: 252)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !131, file: !310, line: 38)
!310 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/stdlib.h", directory: "")
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !135, file: !310, line: 39)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !177, file: !310, line: 40)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !140, file: !310, line: 43)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !217, file: !310, line: 46)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !121, file: !310, line: 51)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !125, file: !310, line: 52)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !318, file: !310, line: 54)
!318 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !115, file: !119, line: 103, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !321}
!321 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !142, file: !310, line: 55)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !148, file: !310, line: 56)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !154, file: !310, line: 57)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !158, file: !310, line: 58)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !169, file: !310, line: 59)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !302, file: !310, line: 60)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !179, file: !310, line: 61)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !181, file: !310, line: 62)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !185, file: !310, line: 63)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !189, file: !310, line: 64)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !193, file: !310, line: 65)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !197, file: !310, line: 67)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !201, file: !310, line: 68)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !209, file: !310, line: 69)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !213, file: !310, line: 71)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !219, file: !310, line: 72)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !223, file: !310, line: 73)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !227, file: !310, line: 74)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !232, file: !310, line: 75)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !237, file: !310, line: 76)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !241, file: !310, line: 77)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !245, file: !310, line: 78)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !247, file: !310, line: 80)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !255, file: !310, line: 81)
!346 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !115, file: !3, line: 15)
!347 = !{i32 7, !"Dwarf Version", i32 4}
!348 = !{i32 2, !"Debug Info Version", i32 3}
!349 = !{i32 1, !"wchar_size", i32 4}
!350 = !{i32 7, !"PIC Level", i32 2}
!351 = !{i32 7, !"PIE Level", i32 2}
!352 = !{!"clang version 10.0.1 "}
!353 = distinct !DISubprogram(name: "get_time", linkageName: "_Z8get_timev", scope: !3, file: !3, line: 7, type: !354, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!264}
!356 = !{!357}
!357 = !DILocalVariable(name: "tv", scope: !353, file: !3, line: 9, type: !12)
!358 = !DILocation(line: 9, column: 5, scope: !353)
!359 = !DILocation(line: 9, column: 20, scope: !353)
!360 = !DILocation(line: 10, column: 5, scope: !353)
!361 = !DILocation(line: 11, column: 16, scope: !353)
!362 = !{!363, !364, i64 0}
!363 = !{!"_ZTS7timeval", !364, i64 0, !364, i64 8}
!364 = !{!"long", !365, i64 0}
!365 = !{!"omnipotent char", !366, i64 0}
!366 = !{!"Simple C++ TBAA"}
!367 = !DILocation(line: 11, column: 23, scope: !353)
!368 = !DILocation(line: 11, column: 39, scope: !353)
!369 = !{!363, !364, i64 8}
!370 = !DILocation(line: 11, column: 34, scope: !353)
!371 = !DILocation(line: 13, column: 1, scope: !353)
!372 = !DILocation(line: 11, column: 5, scope: !353)
!373 = distinct !DISubprogram(name: "single_iteration", linkageName: "_Z16single_iterationPfS_S_iifffff", scope: !3, file: !3, line: 54, type: !374, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !95, !95, !95, !10, !10, !96, !96, !96, !96, !96}
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!377 = !DILocalVariable(name: "result", arg: 1, scope: !373, file: !3, line: 54, type: !95)
!378 = !DILocalVariable(name: "temp", arg: 2, scope: !373, file: !3, line: 54, type: !95)
!379 = !DILocalVariable(name: "power", arg: 3, scope: !373, file: !3, line: 54, type: !95)
!380 = !DILocalVariable(name: "row", arg: 4, scope: !373, file: !3, line: 54, type: !10)
!381 = !DILocalVariable(name: "col", arg: 5, scope: !373, file: !3, line: 54, type: !10)
!382 = !DILocalVariable(name: "Cap_1", arg: 6, scope: !373, file: !3, line: 55, type: !96)
!383 = !DILocalVariable(name: "Rx_1", arg: 7, scope: !373, file: !3, line: 55, type: !96)
!384 = !DILocalVariable(name: "Ry_1", arg: 8, scope: !373, file: !3, line: 55, type: !96)
!385 = !DILocalVariable(name: "Rz_1", arg: 9, scope: !373, file: !3, line: 55, type: !96)
!386 = !DILocalVariable(name: "step", arg: 10, scope: !373, file: !3, line: 56, type: !96)
!387 = !DILocalVariable(name: "delta", scope: !373, file: !3, line: 58, type: !96)
!388 = !DILocalVariable(name: "r", scope: !373, file: !3, line: 59, type: !10)
!389 = !DILocalVariable(name: "c", scope: !373, file: !3, line: 59, type: !10)
!390 = !DILocalVariable(name: "chunk", scope: !373, file: !3, line: 60, type: !10)
!391 = !DILocalVariable(name: "num_chunk", scope: !373, file: !3, line: 61, type: !10)
!392 = !DILocalVariable(name: "chunks_in_row", scope: !373, file: !3, line: 62, type: !10)
!393 = !DILocalVariable(name: "chunks_in_col", scope: !373, file: !3, line: 63, type: !10)
!394 = !DILocation(line: 0, scope: !373)
!395 = !{!396, !396, i64 0}
!396 = !{!"any pointer", !365, i64 0}
!397 = !{!398, !398, i64 0}
!398 = !{!"float", !365, i64 0}
!399 = !DILocation(line: 61, column: 24, scope: !373)
!400 = !DILocation(line: 61, column: 29, scope: !373)
!401 = !DILocation(line: 62, column: 28, scope: !373)
!402 = !DILocation(line: 63, column: 5, scope: !373)
!403 = !DILocation(line: 63, column: 28, scope: !373)
!404 = !DILocation(line: 63, column: 9, scope: !373)
!405 = !{!406, !406, i64 0}
!406 = !{!"int", !365, i64 0}
!407 = !DILocation(line: 67, column: 22, scope: !373)
!408 = !DILocation(line: 67, column: 2, scope: !373)
!409 = !DILocation(line: 69, column: 5, scope: !373)
!410 = !{!411, !396, i64 16}
!411 = !{!"_ZTS7ident_t", !406, i64 0, !406, i64 4, !406, i64 8, !406, i64 12, !396, i64 16}
!412 = !DILocation(line: 149, column: 1, scope: !373)
!413 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 71, type: !414, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416, !416, !82, !420, !82, !82, !82, !421, !422, !422, !421, !421, !421, !422}
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!420 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !96, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !95, size: 64)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437}
!424 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !413, type: !416, flags: DIFlagArtificial)
!425 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !413, type: !416, flags: DIFlagArtificial)
!426 = !DILocalVariable(name: "num_chunk", arg: 3, scope: !413, type: !82, flags: DIFlagArtificial)
!427 = !DILocalVariable(name: "chunks_in_col", arg: 4, scope: !413, type: !420, flags: DIFlagArtificial)
!428 = !DILocalVariable(name: "chunks_in_row", arg: 5, scope: !413, type: !82, flags: DIFlagArtificial)
!429 = !DILocalVariable(name: "row", arg: 6, scope: !413, type: !82, flags: DIFlagArtificial)
!430 = !DILocalVariable(name: "col", arg: 7, scope: !413, type: !82, flags: DIFlagArtificial)
!431 = !DILocalVariable(name: "Cap_1", arg: 8, scope: !413, type: !421, flags: DIFlagArtificial)
!432 = !DILocalVariable(name: "power", arg: 9, scope: !413, type: !422, flags: DIFlagArtificial)
!433 = !DILocalVariable(name: "temp", arg: 10, scope: !413, type: !422, flags: DIFlagArtificial)
!434 = !DILocalVariable(name: "Rx_1", arg: 11, scope: !413, type: !421, flags: DIFlagArtificial)
!435 = !DILocalVariable(name: "Ry_1", arg: 12, scope: !413, type: !421, flags: DIFlagArtificial)
!436 = !DILocalVariable(name: "Rz_1", arg: 13, scope: !413, type: !421, flags: DIFlagArtificial)
!437 = !DILocalVariable(name: "result", arg: 14, scope: !413, type: !422, flags: DIFlagArtificial)
!438 = !DILocation(line: 0, scope: !413)
!439 = !{!440}
!440 = distinct !{!440, !441, !".omp_outlined._debug__: argument 0"}
!441 = distinct !{!441, !".omp_outlined._debug__"}
!442 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !443, type: !416, flags: DIFlagArtificial)
!443 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 71, type: !444, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !416, !416, !10, !420, !10, !10, !10, !421, !422, !422, !421, !421, !421, !422}
!446 = !{!442, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !461, !462, !463, !464, !465, !466, !462, !467, !468, !469, !462, !470, !472, !473, !474, !475, !475, !475, !480, !481, !480}
!447 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !443, type: !416, flags: DIFlagArtificial)
!448 = !DILocalVariable(name: "num_chunk", arg: 3, scope: !443, file: !3, line: 61, type: !10)
!449 = !DILocalVariable(name: "chunks_in_col", arg: 4, scope: !443, file: !3, line: 63, type: !420)
!450 = !DILocalVariable(name: "chunks_in_row", arg: 5, scope: !443, file: !3, line: 62, type: !10)
!451 = !DILocalVariable(name: "row", arg: 6, scope: !443, file: !3, line: 54, type: !10)
!452 = !DILocalVariable(name: "col", arg: 7, scope: !443, file: !3, line: 54, type: !10)
!453 = !DILocalVariable(name: "Cap_1", arg: 8, scope: !443, file: !3, line: 55, type: !421)
!454 = !DILocalVariable(name: "power", arg: 9, scope: !443, file: !3, line: 54, type: !422)
!455 = !DILocalVariable(name: "temp", arg: 10, scope: !443, file: !3, line: 54, type: !422)
!456 = !DILocalVariable(name: "Rx_1", arg: 11, scope: !443, file: !3, line: 55, type: !421)
!457 = !DILocalVariable(name: "Ry_1", arg: 12, scope: !443, file: !3, line: 55, type: !421)
!458 = !DILocalVariable(name: "Rz_1", arg: 13, scope: !443, file: !3, line: 55, type: !421)
!459 = !DILocalVariable(name: "result", arg: 14, scope: !443, file: !3, line: 54, type: !422)
!460 = !DILocalVariable(name: ".omp.iv", scope: !443, type: !10, flags: DIFlagArtificial)
!461 = !DILocalVariable(name: ".capture_expr.", scope: !443, type: !10, flags: DIFlagArtificial)
!462 = !DILocalVariable(name: "chunk", scope: !443, type: !10, flags: DIFlagArtificial)
!463 = !DILocalVariable(name: ".omp.lb", scope: !443, type: !10, flags: DIFlagArtificial)
!464 = !DILocalVariable(name: ".omp.ub", scope: !443, type: !10, flags: DIFlagArtificial)
!465 = !DILocalVariable(name: ".omp.stride", scope: !443, type: !10, flags: DIFlagArtificial)
!466 = !DILocalVariable(name: ".omp.is_last", scope: !443, type: !10, flags: DIFlagArtificial)
!467 = !DILocalVariable(name: "r", scope: !443, type: !10, flags: DIFlagArtificial)
!468 = !DILocalVariable(name: "c", scope: !443, type: !10, flags: DIFlagArtificial)
!469 = !DILocalVariable(name: "delta", scope: !443, type: !96, flags: DIFlagArtificial)
!470 = !DILocalVariable(name: "r_start", scope: !471, file: !3, line: 73, type: !10)
!471 = distinct !DILexicalBlock(scope: !443, file: !3, line: 72, column: 5)
!472 = !DILocalVariable(name: "c_start", scope: !471, file: !3, line: 74, type: !10)
!473 = !DILocalVariable(name: "r_end", scope: !471, file: !3, line: 75, type: !10)
!474 = !DILocalVariable(name: "c_end", scope: !471, file: !3, line: 76, type: !10)
!475 = !DILocalVariable(name: ".capture_expr.", scope: !476, type: !10, flags: DIFlagArtificial)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 138, column: 1)
!477 = distinct !DILexicalBlock(scope: !478, file: !3, line: 137, column: 62)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 137, column: 9)
!479 = distinct !DILexicalBlock(scope: !471, file: !3, line: 137, column: 9)
!480 = !DILocalVariable(name: "c", scope: !476, type: !10, flags: DIFlagArtificial)
!481 = !DILocalVariable(name: ".omp.iv", scope: !476, type: !10, flags: DIFlagArtificial)
!482 = !DILocation(line: 0, scope: !443, inlinedAt: !483)
!483 = distinct !DILocation(line: 71, column: 5, scope: !413)
!484 = !DILocation(line: 71, column: 5, scope: !443, inlinedAt: !483)
!485 = !DILocation(line: 71, column: 11, scope: !443, inlinedAt: !483)
!486 = !DILocation(line: 0, scope: !471, inlinedAt: !483)
!487 = !DILocation(line: 0, scope: !488, inlinedAt: !483)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 83, column: 49)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 83, column: 26)
!490 = distinct !DILexicalBlock(scope: !491, file: !3, line: 81, column: 70)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 81, column: 17)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 81, column: 17)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 80, column: 66)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 80, column: 13)
!495 = distinct !DILexicalBlock(scope: !496, file: !3, line: 80, column: 13)
!496 = distinct !DILexicalBlock(scope: !497, file: !3, line: 79, column: 9)
!497 = distinct !DILexicalBlock(scope: !471, file: !3, line: 78, column: 14)
!498 = !DILocation(line: 0, scope: !490, inlinedAt: !483)
!499 = !DILocation(line: 0, scope: !500, inlinedAt: !483)
!500 = distinct !DILexicalBlock(scope: !476, file: !3, line: 139, column: 66)
!501 = !DILocation(line: 0, scope: !502, inlinedAt: !483)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 89, column: 56)
!503 = distinct !DILexicalBlock(scope: !489, file: !3, line: 89, column: 30)
!504 = !DILocation(line: 73, column: 42, scope: !471, inlinedAt: !483)
!505 = !DILocation(line: 73, column: 35, scope: !471, inlinedAt: !483)
!506 = !DILocation(line: 74, column: 42, scope: !471, inlinedAt: !483)
!507 = !DILocation(line: 74, column: 35, scope: !471, inlinedAt: !483)
!508 = !DILocation(line: 75, column: 29, scope: !471, inlinedAt: !483)
!509 = !DILocation(line: 76, column: 29, scope: !471, inlinedAt: !483)
!510 = !DILocation(line: 78, column: 22, scope: !497, inlinedAt: !483)
!511 = !DILocation(line: 78, column: 38, scope: !497, inlinedAt: !483)
!512 = !DILocation(line: 78, column: 27, scope: !497, inlinedAt: !483)
!513 = !DILocation(line: 78, column: 52, scope: !497, inlinedAt: !483)
!514 = !DILocation(line: 78, column: 68, scope: !497, inlinedAt: !483)
!515 = !DILocation(line: 80, column: 13, scope: !495, inlinedAt: !483)
!516 = !DILocation(line: 137, column: 9, scope: !479, inlinedAt: !483)
!517 = !DILocation(line: 0, scope: !476, inlinedAt: !483)
!518 = !DILocation(line: 0, scope: !519, inlinedAt: !483)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 125, column: 38)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 125, column: 30)
!521 = distinct !DILexicalBlock(scope: !522, file: !3, line: 119, column: 30)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 113, column: 30)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 107, column: 30)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 101, column: 30)
!525 = distinct !DILexicalBlock(scope: !503, file: !3, line: 95, column: 30)
!526 = !DILocation(line: 80, column: 60, scope: !494, inlinedAt: !483)
!527 = !DILocation(line: 0, scope: !528, inlinedAt: !483)
!528 = distinct !DILexicalBlock(scope: !522, file: !3, line: 113, column: 42)
!529 = !DILocation(line: 81, column: 17, scope: !492, inlinedAt: !483)
!530 = !DILocation(line: 83, column: 35, scope: !489, inlinedAt: !483)
!531 = !DILocation(line: 84, column: 34, scope: !488, inlinedAt: !483)
!532 = !DILocation(line: 84, column: 44, scope: !488, inlinedAt: !483)
!533 = !DILocation(line: 85, column: 30, scope: !488, inlinedAt: !483)
!534 = !DILocation(line: 85, column: 40, scope: !488, inlinedAt: !483)
!535 = !DILocation(line: 85, column: 38, scope: !488, inlinedAt: !483)
!536 = !DILocation(line: 85, column: 51, scope: !488, inlinedAt: !483)
!537 = !DILocation(line: 85, column: 49, scope: !488, inlinedAt: !483)
!538 = !DILocation(line: 84, column: 53, scope: !488, inlinedAt: !483)
!539 = !DILocation(line: 86, column: 30, scope: !488, inlinedAt: !483)
!540 = !DILocation(line: 86, column: 40, scope: !488, inlinedAt: !483)
!541 = !DILocation(line: 86, column: 53, scope: !488, inlinedAt: !483)
!542 = !DILocation(line: 86, column: 51, scope: !488, inlinedAt: !483)
!543 = !DILocation(line: 85, column: 56, scope: !488, inlinedAt: !483)
!544 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !483)
!545 = !DILocation(line: 87, column: 52, scope: !488, inlinedAt: !483)
!546 = !DILocation(line: 87, column: 50, scope: !488, inlinedAt: !483)
!547 = !DILocation(line: 86, column: 58, scope: !488, inlinedAt: !483)
!548 = !DILocation(line: 84, column: 41, scope: !488, inlinedAt: !483)
!549 = !DILocation(line: 88, column: 21, scope: !488, inlinedAt: !483)
!550 = !DILocation(line: 89, column: 39, scope: !503, inlinedAt: !483)
!551 = !DILocation(line: 90, column: 34, scope: !502, inlinedAt: !483)
!552 = !DILocation(line: 90, column: 44, scope: !502, inlinedAt: !483)
!553 = !DILocation(line: 91, column: 30, scope: !502, inlinedAt: !483)
!554 = !DILocation(line: 91, column: 42, scope: !502, inlinedAt: !483)
!555 = !DILocation(line: 91, column: 40, scope: !502, inlinedAt: !483)
!556 = !DILocation(line: 91, column: 53, scope: !502, inlinedAt: !483)
!557 = !DILocation(line: 91, column: 51, scope: !502, inlinedAt: !483)
!558 = !DILocation(line: 90, column: 53, scope: !502, inlinedAt: !483)
!559 = !DILocation(line: 92, column: 30, scope: !502, inlinedAt: !483)
!560 = !DILocation(line: 92, column: 42, scope: !502, inlinedAt: !483)
!561 = !DILocation(line: 92, column: 55, scope: !502, inlinedAt: !483)
!562 = !DILocation(line: 92, column: 53, scope: !502, inlinedAt: !483)
!563 = !DILocation(line: 91, column: 58, scope: !502, inlinedAt: !483)
!564 = !DILocation(line: 93, column: 38, scope: !502, inlinedAt: !483)
!565 = !DILocation(line: 93, column: 51, scope: !502, inlinedAt: !483)
!566 = !DILocation(line: 93, column: 49, scope: !502, inlinedAt: !483)
!567 = !DILocation(line: 92, column: 60, scope: !502, inlinedAt: !483)
!568 = !DILocation(line: 90, column: 41, scope: !502, inlinedAt: !483)
!569 = !DILocation(line: 94, column: 21, scope: !502, inlinedAt: !483)
!570 = !DILocation(line: 95, column: 43, scope: !525, inlinedAt: !483)
!571 = !DILocation(line: 96, column: 34, scope: !572, inlinedAt: !483)
!572 = distinct !DILexicalBlock(scope: !525, file: !3, line: 95, column: 60)
!573 = !DILocation(line: 96, column: 44, scope: !572, inlinedAt: !483)
!574 = !DILocation(line: 97, column: 30, scope: !572, inlinedAt: !483)
!575 = !DILocation(line: 97, column: 48, scope: !572, inlinedAt: !483)
!576 = !DILocation(line: 97, column: 46, scope: !572, inlinedAt: !483)
!577 = !DILocation(line: 97, column: 65, scope: !572, inlinedAt: !483)
!578 = !DILocation(line: 97, column: 63, scope: !572, inlinedAt: !483)
!579 = !DILocation(line: 96, column: 59, scope: !572, inlinedAt: !483)
!580 = !DILocation(line: 98, column: 30, scope: !572, inlinedAt: !483)
!581 = !DILocation(line: 98, column: 48, scope: !572, inlinedAt: !483)
!582 = !DILocation(line: 98, column: 67, scope: !572, inlinedAt: !483)
!583 = !DILocation(line: 98, column: 65, scope: !572, inlinedAt: !483)
!584 = !DILocation(line: 97, column: 70, scope: !572, inlinedAt: !483)
!585 = !DILocation(line: 99, column: 38, scope: !572, inlinedAt: !483)
!586 = !DILocation(line: 99, column: 57, scope: !572, inlinedAt: !483)
!587 = !DILocation(line: 99, column: 55, scope: !572, inlinedAt: !483)
!588 = !DILocation(line: 98, column: 72, scope: !572, inlinedAt: !483)
!589 = !DILocation(line: 96, column: 41, scope: !572, inlinedAt: !483)
!590 = !DILocation(line: 100, column: 21, scope: !572, inlinedAt: !483)
!591 = !DILocation(line: 101, column: 43, scope: !524, inlinedAt: !483)
!592 = !DILocation(line: 102, column: 34, scope: !593, inlinedAt: !483)
!593 = distinct !DILexicalBlock(scope: !524, file: !3, line: 101, column: 56)
!594 = !DILocation(line: 102, column: 44, scope: !593, inlinedAt: !483)
!595 = !DILocation(line: 103, column: 30, scope: !593, inlinedAt: !483)
!596 = !DILocation(line: 103, column: 46, scope: !593, inlinedAt: !483)
!597 = !DILocation(line: 103, column: 44, scope: !593, inlinedAt: !483)
!598 = !DILocation(line: 103, column: 61, scope: !593, inlinedAt: !483)
!599 = !DILocation(line: 103, column: 59, scope: !593, inlinedAt: !483)
!600 = !DILocation(line: 102, column: 57, scope: !593, inlinedAt: !483)
!601 = !DILocation(line: 104, column: 30, scope: !593, inlinedAt: !483)
!602 = !DILocation(line: 104, column: 46, scope: !593, inlinedAt: !483)
!603 = !DILocation(line: 104, column: 63, scope: !593, inlinedAt: !483)
!604 = !DILocation(line: 104, column: 61, scope: !593, inlinedAt: !483)
!605 = !DILocation(line: 103, column: 66, scope: !593, inlinedAt: !483)
!606 = !DILocation(line: 105, column: 39, scope: !593, inlinedAt: !483)
!607 = !DILocation(line: 105, column: 56, scope: !593, inlinedAt: !483)
!608 = !DILocation(line: 105, column: 54, scope: !593, inlinedAt: !483)
!609 = !DILocation(line: 104, column: 68, scope: !593, inlinedAt: !483)
!610 = !DILocation(line: 102, column: 41, scope: !593, inlinedAt: !483)
!611 = !DILocation(line: 106, column: 21, scope: !593, inlinedAt: !483)
!612 = !DILocation(line: 107, column: 30, scope: !524, inlinedAt: !483)
!613 = !DILocation(line: 108, column: 34, scope: !614, inlinedAt: !483)
!614 = distinct !DILexicalBlock(scope: !523, file: !3, line: 107, column: 38)
!615 = !DILocation(line: 108, column: 33, scope: !614, inlinedAt: !483)
!616 = !DILocation(line: 108, column: 44, scope: !614, inlinedAt: !483)
!617 = !DILocation(line: 109, column: 36, scope: !614, inlinedAt: !483)
!618 = !DILocation(line: 109, column: 30, scope: !614, inlinedAt: !483)
!619 = !DILocation(line: 109, column: 48, scope: !614, inlinedAt: !483)
!620 = !DILocation(line: 109, column: 42, scope: !614, inlinedAt: !483)
!621 = !DILocation(line: 109, column: 40, scope: !614, inlinedAt: !483)
!622 = !DILocation(line: 109, column: 58, scope: !614, inlinedAt: !483)
!623 = !DILocation(line: 109, column: 57, scope: !614, inlinedAt: !483)
!624 = !DILocation(line: 109, column: 52, scope: !614, inlinedAt: !483)
!625 = !DILocation(line: 109, column: 69, scope: !614, inlinedAt: !483)
!626 = !DILocation(line: 109, column: 67, scope: !614, inlinedAt: !483)
!627 = !DILocation(line: 108, column: 53, scope: !614, inlinedAt: !483)
!628 = !DILocation(line: 110, column: 38, scope: !614, inlinedAt: !483)
!629 = !DILocation(line: 110, column: 30, scope: !614, inlinedAt: !483)
!630 = !DILocation(line: 110, column: 42, scope: !614, inlinedAt: !483)
!631 = !DILocation(line: 110, column: 55, scope: !614, inlinedAt: !483)
!632 = !DILocation(line: 110, column: 53, scope: !614, inlinedAt: !483)
!633 = !DILocation(line: 110, column: 29, scope: !614, inlinedAt: !483)
!634 = !DILocation(line: 109, column: 74, scope: !614, inlinedAt: !483)
!635 = !DILocation(line: 111, column: 39, scope: !614, inlinedAt: !483)
!636 = !DILocation(line: 111, column: 52, scope: !614, inlinedAt: !483)
!637 = !DILocation(line: 111, column: 50, scope: !614, inlinedAt: !483)
!638 = !DILocation(line: 111, column: 29, scope: !614, inlinedAt: !483)
!639 = !DILocation(line: 110, column: 60, scope: !614, inlinedAt: !483)
!640 = !DILocation(line: 108, column: 41, scope: !614, inlinedAt: !483)
!641 = !DILocation(line: 112, column: 21, scope: !614, inlinedAt: !483)
!642 = !DILocation(line: 113, column: 30, scope: !523, inlinedAt: !483)
!643 = !DILocation(line: 114, column: 34, scope: !528, inlinedAt: !483)
!644 = !DILocation(line: 114, column: 33, scope: !528, inlinedAt: !483)
!645 = !DILocation(line: 114, column: 44, scope: !528, inlinedAt: !483)
!646 = !DILocation(line: 115, column: 30, scope: !528, inlinedAt: !483)
!647 = !DILocation(line: 115, column: 50, scope: !528, inlinedAt: !483)
!648 = !DILocation(line: 115, column: 48, scope: !528, inlinedAt: !483)
!649 = !DILocation(line: 115, column: 74, scope: !528, inlinedAt: !483)
!650 = !DILocation(line: 115, column: 73, scope: !528, inlinedAt: !483)
!651 = !DILocation(line: 115, column: 68, scope: !528, inlinedAt: !483)
!652 = !DILocation(line: 115, column: 91, scope: !528, inlinedAt: !483)
!653 = !DILocation(line: 115, column: 89, scope: !528, inlinedAt: !483)
!654 = !DILocation(line: 114, column: 59, scope: !528, inlinedAt: !483)
!655 = !DILocation(line: 116, column: 30, scope: !528, inlinedAt: !483)
!656 = !DILocation(line: 116, column: 46, scope: !528, inlinedAt: !483)
!657 = !DILocation(line: 116, column: 65, scope: !528, inlinedAt: !483)
!658 = !DILocation(line: 116, column: 63, scope: !528, inlinedAt: !483)
!659 = !DILocation(line: 116, column: 29, scope: !528, inlinedAt: !483)
!660 = !DILocation(line: 115, column: 96, scope: !528, inlinedAt: !483)
!661 = !DILocation(line: 117, column: 39, scope: !528, inlinedAt: !483)
!662 = !DILocation(line: 117, column: 58, scope: !528, inlinedAt: !483)
!663 = !DILocation(line: 117, column: 56, scope: !528, inlinedAt: !483)
!664 = !DILocation(line: 117, column: 29, scope: !528, inlinedAt: !483)
!665 = !DILocation(line: 116, column: 70, scope: !528, inlinedAt: !483)
!666 = !DILocation(line: 114, column: 41, scope: !528, inlinedAt: !483)
!667 = !DILocation(line: 118, column: 21, scope: !528, inlinedAt: !483)
!668 = !DILocation(line: 119, column: 30, scope: !522, inlinedAt: !483)
!669 = !DILocation(line: 120, column: 34, scope: !670, inlinedAt: !483)
!670 = distinct !DILexicalBlock(scope: !521, file: !3, line: 119, column: 42)
!671 = !DILocation(line: 120, column: 33, scope: !670, inlinedAt: !483)
!672 = !DILocation(line: 120, column: 55, scope: !670, inlinedAt: !483)
!673 = !DILocation(line: 120, column: 44, scope: !670, inlinedAt: !483)
!674 = !DILocation(line: 121, column: 42, scope: !670, inlinedAt: !483)
!675 = !DILocation(line: 121, column: 30, scope: !670, inlinedAt: !483)
!676 = !DILocation(line: 121, column: 60, scope: !670, inlinedAt: !483)
!677 = !DILocation(line: 121, column: 48, scope: !670, inlinedAt: !483)
!678 = !DILocation(line: 121, column: 46, scope: !670, inlinedAt: !483)
!679 = !DILocation(line: 121, column: 70, scope: !670, inlinedAt: !483)
!680 = !DILocation(line: 121, column: 69, scope: !670, inlinedAt: !483)
!681 = !DILocation(line: 121, column: 64, scope: !670, inlinedAt: !483)
!682 = !DILocation(line: 121, column: 87, scope: !670, inlinedAt: !483)
!683 = !DILocation(line: 121, column: 85, scope: !670, inlinedAt: !483)
!684 = !DILocation(line: 120, column: 59, scope: !670, inlinedAt: !483)
!685 = !DILocation(line: 122, column: 44, scope: !670, inlinedAt: !483)
!686 = !DILocation(line: 122, column: 30, scope: !670, inlinedAt: !483)
!687 = !DILocation(line: 122, column: 48, scope: !670, inlinedAt: !483)
!688 = !DILocation(line: 122, column: 67, scope: !670, inlinedAt: !483)
!689 = !DILocation(line: 122, column: 65, scope: !670, inlinedAt: !483)
!690 = !DILocation(line: 122, column: 29, scope: !670, inlinedAt: !483)
!691 = !DILocation(line: 121, column: 92, scope: !670, inlinedAt: !483)
!692 = !DILocation(line: 123, column: 39, scope: !670, inlinedAt: !483)
!693 = !DILocation(line: 123, column: 58, scope: !670, inlinedAt: !483)
!694 = !DILocation(line: 123, column: 56, scope: !670, inlinedAt: !483)
!695 = !DILocation(line: 123, column: 29, scope: !670, inlinedAt: !483)
!696 = !DILocation(line: 122, column: 72, scope: !670, inlinedAt: !483)
!697 = !DILocation(line: 120, column: 41, scope: !670, inlinedAt: !483)
!698 = !DILocation(line: 124, column: 21, scope: !670, inlinedAt: !483)
!699 = !DILocation(line: 125, column: 30, scope: !521, inlinedAt: !483)
!700 = !DILocation(line: 126, column: 34, scope: !519, inlinedAt: !483)
!701 = !DILocation(line: 126, column: 33, scope: !519, inlinedAt: !483)
!702 = !DILocation(line: 126, column: 44, scope: !519, inlinedAt: !483)
!703 = !DILocation(line: 127, column: 30, scope: !519, inlinedAt: !483)
!704 = !DILocation(line: 127, column: 48, scope: !519, inlinedAt: !483)
!705 = !DILocation(line: 127, column: 46, scope: !519, inlinedAt: !483)
!706 = !DILocation(line: 127, column: 70, scope: !519, inlinedAt: !483)
!707 = !DILocation(line: 127, column: 69, scope: !519, inlinedAt: !483)
!708 = !DILocation(line: 127, column: 64, scope: !519, inlinedAt: !483)
!709 = !DILocation(line: 127, column: 85, scope: !519, inlinedAt: !483)
!710 = !DILocation(line: 127, column: 83, scope: !519, inlinedAt: !483)
!711 = !DILocation(line: 126, column: 57, scope: !519, inlinedAt: !483)
!712 = !DILocation(line: 128, column: 30, scope: !519, inlinedAt: !483)
!713 = !DILocation(line: 128, column: 44, scope: !519, inlinedAt: !483)
!714 = !DILocation(line: 128, column: 61, scope: !519, inlinedAt: !483)
!715 = !DILocation(line: 128, column: 59, scope: !519, inlinedAt: !483)
!716 = !DILocation(line: 128, column: 29, scope: !519, inlinedAt: !483)
!717 = !DILocation(line: 127, column: 90, scope: !519, inlinedAt: !483)
!718 = !DILocation(line: 129, column: 39, scope: !519, inlinedAt: !483)
!719 = !DILocation(line: 129, column: 56, scope: !519, inlinedAt: !483)
!720 = !DILocation(line: 129, column: 54, scope: !519, inlinedAt: !483)
!721 = !DILocation(line: 129, column: 29, scope: !519, inlinedAt: !483)
!722 = !DILocation(line: 128, column: 66, scope: !519, inlinedAt: !483)
!723 = !DILocation(line: 126, column: 41, scope: !519, inlinedAt: !483)
!724 = !DILocation(line: 130, column: 21, scope: !519, inlinedAt: !483)
!725 = !DILocation(line: 131, column: 48, scope: !490, inlinedAt: !483)
!726 = !DILocation(line: 131, column: 38, scope: !490, inlinedAt: !483)
!727 = !DILocation(line: 131, column: 51, scope: !490, inlinedAt: !483)
!728 = !DILocation(line: 131, column: 21, scope: !490, inlinedAt: !483)
!729 = !DILocation(line: 131, column: 37, scope: !490, inlinedAt: !483)
!730 = !DILocation(line: 81, column: 64, scope: !491, inlinedAt: !483)
!731 = !DILocation(line: 81, column: 38, scope: !491, inlinedAt: !483)
!732 = distinct !{!732, !529, !733}
!733 = !DILocation(line: 132, column: 17, scope: !492, inlinedAt: !483)
!734 = !DILocation(line: 80, column: 34, scope: !494, inlinedAt: !483)
!735 = distinct !{!735, !515, !736}
!736 = !DILocation(line: 133, column: 13, scope: !495, inlinedAt: !483)
!737 = !DILocation(line: 137, column: 56, scope: !478, inlinedAt: !483)
!738 = !DILocation(line: 141, column: 44, scope: !500, inlinedAt: !483)
!739 = !DILocation(line: 141, column: 34, scope: !500, inlinedAt: !483)
!740 = distinct !{}
!741 = !DILocation(line: 142, column: 24, scope: !500, inlinedAt: !483)
!742 = !DILocation(line: 142, column: 33, scope: !500, inlinedAt: !483)
!743 = !DILocation(line: 143, column: 36, scope: !500, inlinedAt: !483)
!744 = !DILocation(line: 143, column: 22, scope: !500, inlinedAt: !483)
!745 = !DILocation(line: 143, column: 56, scope: !500, inlinedAt: !483)
!746 = !DILocation(line: 143, column: 42, scope: !500, inlinedAt: !483)
!747 = !DILocation(line: 143, column: 40, scope: !500, inlinedAt: !483)
!748 = !DILocation(line: 143, column: 65, scope: !500, inlinedAt: !483)
!749 = !DILocation(line: 143, column: 60, scope: !500, inlinedAt: !483)
!750 = !DILocation(line: 143, column: 83, scope: !500, inlinedAt: !483)
!751 = !DILocation(line: 139, column: 13, scope: !476, inlinedAt: !483)
!752 = !DILocation(line: 142, column: 48, scope: !500, inlinedAt: !483)
!753 = !DILocation(line: 144, column: 34, scope: !500, inlinedAt: !483)
!754 = !DILocation(line: 144, column: 22, scope: !500, inlinedAt: !483)
!755 = !DILocation(line: 144, column: 52, scope: !500, inlinedAt: !483)
!756 = !DILocation(line: 144, column: 40, scope: !500, inlinedAt: !483)
!757 = !DILocation(line: 144, column: 38, scope: !500, inlinedAt: !483)
!758 = !DILocation(line: 144, column: 56, scope: !500, inlinedAt: !483)
!759 = !DILocation(line: 144, column: 79, scope: !500, inlinedAt: !483)
!760 = !DILocation(line: 143, column: 88, scope: !500, inlinedAt: !483)
!761 = !DILocation(line: 145, column: 31, scope: !500, inlinedAt: !483)
!762 = !DILocation(line: 145, column: 50, scope: !500, inlinedAt: !483)
!763 = !DILocation(line: 144, column: 84, scope: !500, inlinedAt: !483)
!764 = !DILocation(line: 141, column: 47, scope: !500, inlinedAt: !483)
!765 = !DILocation(line: 141, column: 17, scope: !500, inlinedAt: !483)
!766 = !DILocation(line: 141, column: 33, scope: !500, inlinedAt: !483)
!767 = !DILocation(line: 137, column: 30, scope: !478, inlinedAt: !483)
!768 = distinct !{!768, !516, !769}
!769 = !DILocation(line: 147, column: 9, scope: !479, inlinedAt: !483)
!770 = distinct !{!770, !771, !772}
!771 = !DILocation(line: 69, column: 5, scope: !443, inlinedAt: !483)
!772 = !DILocation(line: 69, column: 151, scope: !443, inlinedAt: !483)
!773 = !DILocation(line: 148, column: 5, scope: !443, inlinedAt: !483)
!774 = !DILocation(line: 71, column: 5, scope: !413)
!775 = !{!776}
!776 = !{i64 2, i64 -1, i64 -1, i1 true}
!777 = distinct !DISubprogram(name: "compute_tran_temp", linkageName: "_Z17compute_tran_tempPfiS_S_ii", scope: !3, file: !3, line: 159, type: !778, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !95, !10, !95, !95, !10, !10}
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !801, !802, !804}
!781 = !DILocalVariable(name: "result", arg: 1, scope: !777, file: !3, line: 159, type: !95)
!782 = !DILocalVariable(name: "num_iterations", arg: 2, scope: !777, file: !3, line: 159, type: !10)
!783 = !DILocalVariable(name: "temp", arg: 3, scope: !777, file: !3, line: 159, type: !95)
!784 = !DILocalVariable(name: "power", arg: 4, scope: !777, file: !3, line: 159, type: !95)
!785 = !DILocalVariable(name: "row", arg: 5, scope: !777, file: !3, line: 159, type: !10)
!786 = !DILocalVariable(name: "col", arg: 6, scope: !777, file: !3, line: 159, type: !10)
!787 = !DILocalVariable(name: "grid_height", scope: !777, file: !3, line: 165, type: !96)
!788 = !DILocalVariable(name: "grid_width", scope: !777, file: !3, line: 166, type: !96)
!789 = !DILocalVariable(name: "Cap", scope: !777, file: !3, line: 168, type: !96)
!790 = !DILocalVariable(name: "Rx", scope: !777, file: !3, line: 169, type: !96)
!791 = !DILocalVariable(name: "Ry", scope: !777, file: !3, line: 170, type: !96)
!792 = !DILocalVariable(name: "Rz", scope: !777, file: !3, line: 171, type: !96)
!793 = !DILocalVariable(name: "max_slope", scope: !777, file: !3, line: 173, type: !96)
!794 = !DILocalVariable(name: "step", scope: !777, file: !3, line: 174, type: !96)
!795 = !DILocalVariable(name: "Rx_1", scope: !777, file: !3, line: 176, type: !96)
!796 = !DILocalVariable(name: "Ry_1", scope: !777, file: !3, line: 177, type: !96)
!797 = !DILocalVariable(name: "Rz_1", scope: !777, file: !3, line: 178, type: !96)
!798 = !DILocalVariable(name: "Cap_1", scope: !777, file: !3, line: 179, type: !96)
!799 = !DILocalVariable(name: "r", scope: !800, file: !3, line: 193, type: !95)
!800 = distinct !DILexicalBlock(scope: !777, file: !3, line: 192, column: 9)
!801 = !DILocalVariable(name: "t", scope: !800, file: !3, line: 194, type: !95)
!802 = !DILocalVariable(name: "i", scope: !803, file: !3, line: 195, type: !10)
!803 = distinct !DILexicalBlock(scope: !800, file: !3, line: 195, column: 13)
!804 = !DILocalVariable(name: "tmp", scope: !805, file: !3, line: 201, type: !95)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 196, column: 13)
!806 = distinct !DILexicalBlock(scope: !803, file: !3, line: 195, column: 13)
!807 = !DILocation(line: 0, scope: !777)
!808 = !DILocation(line: 165, column: 36, scope: !777)
!809 = !DILocation(line: 165, column: 34, scope: !777)
!810 = !DILocation(line: 166, column: 34, scope: !777)
!811 = !DILocation(line: 166, column: 32, scope: !777)
!812 = !DILocation(line: 168, column: 52, scope: !777)
!813 = !DILocation(line: 168, column: 50, scope: !777)
!814 = !DILocation(line: 168, column: 65, scope: !777)
!815 = !DILocation(line: 168, column: 63, scope: !777)
!816 = !DILocation(line: 168, column: 14, scope: !777)
!817 = !DILocation(line: 169, column: 47, scope: !777)
!818 = !DILocation(line: 169, column: 24, scope: !777)
!819 = !DILocation(line: 169, column: 13, scope: !777)
!820 = !DILocation(line: 170, column: 48, scope: !777)
!821 = !DILocation(line: 170, column: 25, scope: !777)
!822 = !DILocation(line: 170, column: 13, scope: !777)
!823 = !DILocation(line: 171, column: 28, scope: !777)
!824 = !DILocation(line: 171, column: 42, scope: !777)
!825 = !DILocation(line: 171, column: 20, scope: !777)
!826 = !DILocation(line: 176, column: 19, scope: !777)
!827 = !DILocation(line: 177, column: 19, scope: !777)
!828 = !DILocation(line: 178, column: 19, scope: !777)
!829 = !DILocation(line: 179, column: 23, scope: !777)
!830 = !DILocation(line: 0, scope: !800)
!831 = !DILocation(line: 0, scope: !803)
!832 = !DILocation(line: 195, column: 31, scope: !806)
!833 = !DILocation(line: 195, column: 13, scope: !803)
!834 = !DILocation(line: 0, scope: !373, inlinedAt: !835)
!835 = distinct !DILocation(line: 200, column: 17, scope: !805)
!836 = !DILocation(line: 209, column: 1, scope: !777)
!837 = !DILocation(line: 63, column: 5, scope: !373, inlinedAt: !835)
!838 = !DILocation(line: 63, column: 9, scope: !373, inlinedAt: !835)
!839 = !DILocation(line: 67, column: 22, scope: !373, inlinedAt: !835)
!840 = !DILocation(line: 67, column: 2, scope: !373, inlinedAt: !835)
!841 = !DILocation(line: 69, column: 5, scope: !373, inlinedAt: !835)
!842 = !DILocation(line: 149, column: 1, scope: !373, inlinedAt: !835)
!843 = !DILocation(line: 0, scope: !805)
!844 = !DILocation(line: 195, column: 51, scope: !806)
!845 = distinct !{!845, !833, !846}
!846 = !DILocation(line: 204, column: 13, scope: !803)
!847 = distinct !DISubprogram(name: "fatal", linkageName: "_Z5fatalPc", scope: !3, file: !3, line: 211, type: !848, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !39}
!850 = !{!851}
!851 = !DILocalVariable(name: "s", arg: 1, scope: !847, file: !3, line: 211, type: !39)
!852 = !DILocation(line: 0, scope: !847)
!853 = !DILocation(line: 213, column: 10, scope: !847)
!854 = !DILocation(line: 213, column: 2, scope: !847)
!855 = !DILocation(line: 214, column: 2, scope: !847)
!856 = distinct !DISubprogram(name: "writeoutput", linkageName: "_Z11writeoutputPfiiPc", scope: !3, file: !3, line: 217, type: !857, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !95, !10, !10, !39}
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !871}
!860 = !DILocalVariable(name: "vect", arg: 1, scope: !856, file: !3, line: 217, type: !95)
!861 = !DILocalVariable(name: "grid_rows", arg: 2, scope: !856, file: !3, line: 217, type: !10)
!862 = !DILocalVariable(name: "grid_cols", arg: 3, scope: !856, file: !3, line: 217, type: !10)
!863 = !DILocalVariable(name: "file", arg: 4, scope: !856, file: !3, line: 217, type: !39)
!864 = !DILocalVariable(name: "i", scope: !856, file: !3, line: 219, type: !10)
!865 = !DILocalVariable(name: "j", scope: !856, file: !3, line: 219, type: !10)
!866 = !DILocalVariable(name: "index", scope: !856, file: !3, line: 219, type: !10)
!867 = !DILocalVariable(name: "fp", scope: !856, file: !3, line: 220, type: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !870, line: 7, baseType: !34)
!870 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!871 = !DILocalVariable(name: "str", scope: !856, file: !3, line: 221, type: !872)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 256)
!875 = !DILocation(line: 0, scope: !856)
!876 = !DILocation(line: 221, column: 5, scope: !856)
!877 = !DILocation(line: 221, column: 10, scope: !856)
!878 = !DILocation(line: 223, column: 15, scope: !879)
!879 = distinct !DILexicalBlock(scope: !856, file: !3, line: 223, column: 9)
!880 = !DILocation(line: 223, column: 34, scope: !879)
!881 = !DILocation(line: 223, column: 9, scope: !856)
!882 = !DILocation(line: 224, column: 9, scope: !879)
!883 = !DILocation(line: 227, column: 17, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 227, column: 5)
!885 = distinct !DILexicalBlock(scope: !856, file: !3, line: 227, column: 5)
!886 = !DILocation(line: 227, column: 5, scope: !885)
!887 = !DILocation(line: 0, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 228, column: 9)
!889 = distinct !DILexicalBlock(scope: !884, file: !3, line: 228, column: 9)
!890 = !DILocation(line: 228, column: 9, scope: !889)
!891 = !DILocation(line: 0, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !3, line: 229, column: 9)
!893 = !DILocation(line: 231, column: 61, scope: !892)
!894 = !DILocation(line: 231, column: 45, scope: !892)
!895 = !DILocation(line: 231, column: 13, scope: !892)
!896 = !DILocation(line: 232, column: 13, scope: !892)
!897 = !DILocation(line: 233, column: 18, scope: !892)
!898 = !DILocation(line: 228, column: 35, scope: !888)
!899 = !DILocation(line: 228, column: 21, scope: !888)
!900 = distinct !{!900, !890, !901}
!901 = !DILocation(line: 234, column: 9, scope: !889)
!902 = !DILocation(line: 227, column: 31, scope: !884)
!903 = distinct !{!903, !886, !904}
!904 = !DILocation(line: 234, column: 9, scope: !885)
!905 = !DILocation(line: 236, column: 5, scope: !856)
!906 = !DILocation(line: 237, column: 1, scope: !856)
!907 = distinct !DISubprogram(name: "read_input", linkageName: "_Z10read_inputPfiiPc", scope: !3, file: !3, line: 239, type: !857, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !908)
!908 = !{!909, !910, !911, !912, !913, !914, !915, !916, !917}
!909 = !DILocalVariable(name: "vect", arg: 1, scope: !907, file: !3, line: 239, type: !95)
!910 = !DILocalVariable(name: "grid_rows", arg: 2, scope: !907, file: !3, line: 239, type: !10)
!911 = !DILocalVariable(name: "grid_cols", arg: 3, scope: !907, file: !3, line: 239, type: !10)
!912 = !DILocalVariable(name: "file", arg: 4, scope: !907, file: !3, line: 239, type: !39)
!913 = !DILocalVariable(name: "i", scope: !907, file: !3, line: 241, type: !10)
!914 = !DILocalVariable(name: "index", scope: !907, file: !3, line: 241, type: !10)
!915 = !DILocalVariable(name: "fp", scope: !907, file: !3, line: 242, type: !868)
!916 = !DILocalVariable(name: "str", scope: !907, file: !3, line: 243, type: !872)
!917 = !DILocalVariable(name: "val", scope: !907, file: !3, line: 244, type: !96)
!918 = !DILocation(line: 0, scope: !907)
!919 = !DILocation(line: 243, column: 2, scope: !907)
!920 = !DILocation(line: 243, column: 7, scope: !907)
!921 = !DILocation(line: 244, column: 2, scope: !907)
!922 = !DILocation(line: 246, column: 7, scope: !907)
!923 = !DILocation(line: 247, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !907, file: !3, line: 247, column: 6)
!925 = !DILocation(line: 247, column: 6, scope: !907)
!926 = !DILocation(line: 250, column: 26, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 250, column: 2)
!928 = distinct !DILexicalBlock(scope: !907, file: !3, line: 250, column: 2)
!929 = !DILocation(line: 250, column: 14, scope: !927)
!930 = !DILocation(line: 250, column: 2, scope: !928)
!931 = !DILocation(line: 0, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !3, line: 250, column: 44)
!933 = !DILocation(line: 248, column: 3, scope: !924)
!934 = !DILocation(line: 251, column: 3, scope: !932)
!935 = !DILocation(line: 252, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !3, line: 252, column: 7)
!937 = !DILocation(line: 252, column: 7, scope: !932)
!938 = !DILocation(line: 253, column: 4, scope: !936)
!939 = !DILocation(line: 254, column: 8, scope: !940)
!940 = distinct !DILexicalBlock(scope: !932, file: !3, line: 254, column: 7)
!941 = !DILocation(line: 254, column: 32, scope: !940)
!942 = !DILocation(line: 254, column: 7, scope: !932)
!943 = !DILocation(line: 255, column: 4, scope: !940)
!944 = !DILocation(line: 256, column: 13, scope: !932)
!945 = !DILocation(line: 256, column: 3, scope: !932)
!946 = !DILocation(line: 256, column: 11, scope: !932)
!947 = !DILocation(line: 250, column: 40, scope: !927)
!948 = distinct !{!948, !930, !949}
!949 = !DILocation(line: 257, column: 2, scope: !928)
!950 = !DILocation(line: 259, column: 2, scope: !907)
!951 = !DILocation(line: 260, column: 1, scope: !907)
!952 = distinct !DISubprogram(name: "usage", linkageName: "_Z5usageiPPc", scope: !3, file: !3, line: 262, type: !953, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !955)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !10, !102}
!955 = !{!956, !957}
!956 = !DILocalVariable(name: "argc", arg: 1, scope: !952, file: !3, line: 262, type: !10)
!957 = !DILocalVariable(name: "argv", arg: 2, scope: !952, file: !3, line: 262, type: !102)
!958 = !DILocation(line: 0, scope: !952)
!959 = !DILocation(line: 264, column: 10, scope: !952)
!960 = !DILocation(line: 264, column: 109, scope: !952)
!961 = !DILocation(line: 264, column: 2, scope: !952)
!962 = !DILocation(line: 265, column: 10, scope: !952)
!963 = !DILocation(line: 265, column: 2, scope: !952)
!964 = !DILocation(line: 266, column: 10, scope: !952)
!965 = !DILocation(line: 266, column: 2, scope: !952)
!966 = !DILocation(line: 267, column: 10, scope: !952)
!967 = !DILocation(line: 267, column: 2, scope: !952)
!968 = !DILocation(line: 268, column: 10, scope: !952)
!969 = !DILocation(line: 268, column: 2, scope: !952)
!970 = !DILocation(line: 269, column: 10, scope: !952)
!971 = !DILocation(line: 269, column: 2, scope: !952)
!972 = !DILocation(line: 270, column: 10, scope: !952)
!973 = !DILocation(line: 270, column: 2, scope: !952)
!974 = !DILocation(line: 271, column: 17, scope: !952)
!975 = !DILocation(line: 271, column: 9, scope: !952)
!976 = !DILocation(line: 272, column: 2, scope: !952)
!977 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 275, type: !978, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{!10, !10, !102}
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994}
!981 = !DILocalVariable(name: "argc", arg: 1, scope: !977, file: !3, line: 275, type: !10)
!982 = !DILocalVariable(name: "argv", arg: 2, scope: !977, file: !3, line: 275, type: !102)
!983 = !DILocalVariable(name: "grid_rows", scope: !977, file: !3, line: 277, type: !10)
!984 = !DILocalVariable(name: "grid_cols", scope: !977, file: !3, line: 277, type: !10)
!985 = !DILocalVariable(name: "sim_time", scope: !977, file: !3, line: 277, type: !10)
!986 = !DILocalVariable(name: "i", scope: !977, file: !3, line: 277, type: !10)
!987 = !DILocalVariable(name: "temp", scope: !977, file: !3, line: 278, type: !95)
!988 = !DILocalVariable(name: "power", scope: !977, file: !3, line: 278, type: !95)
!989 = !DILocalVariable(name: "result", scope: !977, file: !3, line: 278, type: !95)
!990 = !DILocalVariable(name: "tfile", scope: !977, file: !3, line: 279, type: !39)
!991 = !DILocalVariable(name: "pfile", scope: !977, file: !3, line: 279, type: !39)
!992 = !DILocalVariable(name: "ofile", scope: !977, file: !3, line: 279, type: !39)
!993 = !DILocalVariable(name: "start_time", scope: !977, file: !3, line: 308, type: !264)
!994 = !DILocalVariable(name: "end_time", scope: !977, file: !3, line: 312, type: !264)
!995 = !DILocation(line: 9, column: 20, scope: !353, inlinedAt: !996)
!996 = distinct !DILocation(line: 312, column: 26, scope: !977)
!997 = !DILocation(line: 9, column: 20, scope: !353, inlinedAt: !998)
!998 = distinct !DILocation(line: 308, column: 28, scope: !977)
!999 = !DILocation(line: 0, scope: !977)
!1000 = !DILocation(line: 282, column: 11, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !977, file: !3, line: 282, column: 6)
!1002 = !DILocation(line: 282, column: 6, scope: !977)
!1003 = !DILocation(line: 283, column: 3, scope: !1001)
!1004 = !DILocation(line: 284, column: 24, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !977, file: !3, line: 284, column: 6)
!1006 = !DILocation(line: 0, scope: !148, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 284, column: 19, scope: !1005)
!1008 = !DILocation(line: 363, column: 16, scope: !148, inlinedAt: !1007)
!1009 = !DILocation(line: 284, column: 34, scope: !1005)
!1010 = !DILocation(line: 284, column: 39, scope: !1005)
!1011 = !DILocation(line: 285, column: 21, scope: !1005)
!1012 = !DILocation(line: 0, scope: !148, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 285, column: 16, scope: !1005)
!1014 = !DILocation(line: 363, column: 16, scope: !148, inlinedAt: !1013)
!1015 = !DILocation(line: 285, column: 31, scope: !1005)
!1016 = !DILocation(line: 285, column: 36, scope: !1005)
!1017 = !DILocation(line: 286, column: 20, scope: !1005)
!1018 = !DILocation(line: 0, scope: !148, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 286, column: 15, scope: !1005)
!1020 = !DILocation(line: 363, column: 16, scope: !148, inlinedAt: !1019)
!1021 = !DILocation(line: 286, column: 30, scope: !1005)
!1022 = !DILocation(line: 286, column: 35, scope: !1005)
!1023 = !DILocation(line: 287, column: 27, scope: !1005)
!1024 = !DILocation(line: 0, scope: !148, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 287, column: 22, scope: !1005)
!1026 = !DILocation(line: 363, column: 16, scope: !148, inlinedAt: !1025)
!1027 = !DILocation(line: 287, column: 20, scope: !1005)
!1028 = !DILocation(line: 287, column: 37, scope: !1005)
!1029 = !DILocation(line: 284, column: 6, scope: !977)
!1030 = !DILocation(line: 289, column: 3, scope: !1005)
!1031 = !DILocation(line: 292, column: 37, scope: !977)
!1032 = !DILocation(line: 292, column: 27, scope: !977)
!1033 = !DILocation(line: 292, column: 19, scope: !977)
!1034 = !DILocation(line: 292, column: 9, scope: !977)
!1035 = !DILocation(line: 293, column: 20, scope: !977)
!1036 = !DILocation(line: 293, column: 10, scope: !977)
!1037 = !DILocation(line: 294, column: 21, scope: !977)
!1038 = !DILocation(line: 294, column: 11, scope: !977)
!1039 = !DILocation(line: 295, column: 6, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !977, file: !3, line: 295, column: 5)
!1041 = !DILocation(line: 295, column: 15, scope: !1040)
!1042 = !DILocation(line: 295, column: 11, scope: !1040)
!1043 = !DILocation(line: 296, column: 3, scope: !1040)
!1044 = !DILocation(line: 299, column: 10, scope: !977)
!1045 = !DILocation(line: 300, column: 10, scope: !977)
!1046 = !DILocation(line: 301, column: 13, scope: !977)
!1047 = !DILocation(line: 303, column: 2, scope: !977)
!1048 = !DILocation(line: 304, column: 2, scope: !977)
!1049 = !DILocation(line: 306, column: 2, scope: !977)
!1050 = !DILocation(line: 9, column: 5, scope: !353, inlinedAt: !998)
!1051 = !DILocation(line: 10, column: 5, scope: !353, inlinedAt: !998)
!1052 = !DILocation(line: 11, column: 16, scope: !353, inlinedAt: !998)
!1053 = !{!364, !364, i64 0}
!1054 = !DILocation(line: 13, column: 1, scope: !353, inlinedAt: !998)
!1055 = !DILocation(line: 310, column: 5, scope: !977)
!1056 = !DILocation(line: 9, column: 5, scope: !353, inlinedAt: !996)
!1057 = !DILocation(line: 10, column: 5, scope: !353, inlinedAt: !996)
!1058 = !DILocation(line: 11, column: 16, scope: !353, inlinedAt: !996)
!1059 = !DILocation(line: 13, column: 1, scope: !353, inlinedAt: !996)
!1060 = !DILocation(line: 314, column: 5, scope: !977)
!1061 = !DILocation(line: 315, column: 61, scope: !977)
!1062 = !DILocation(line: 315, column: 51, scope: !977)
!1063 = !DILocation(line: 315, column: 76, scope: !977)
!1064 = !DILocation(line: 315, column: 42, scope: !977)
!1065 = !DILocation(line: 315, column: 5, scope: !977)
!1066 = !DILocation(line: 317, column: 19, scope: !977)
!1067 = !DILocation(line: 317, column: 17, scope: !977)
!1068 = !DILocation(line: 317, column: 5, scope: !977)
!1069 = !DILocation(line: 329, column: 2, scope: !977)
!1070 = !DILocation(line: 330, column: 2, scope: !977)
!1071 = !DILocation(line: 332, column: 2, scope: !977)
