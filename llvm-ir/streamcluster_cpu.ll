; ModuleID = 'streamcluster_original.cpp'
source_filename = "streamcluster_original.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.0, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%"class.std::ios_base::Init" = type { i8 }
%struct.timeval = type { i64, i64 }
%struct.Points = type { i64, i32, %struct.Point* }
%struct.Point = type { float, float*, i64, float }
%union.pthread_barrier_t = type { i64, [24 x i8] }
%union.pthread_barrierattr_t = type { i32 }
%struct.pkmedian_arg_t = type { %struct.Points*, i64, i64, i64*, i32, %union.pthread_barrier_t* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%class.PStream = type { i32 (...)** }
%class.SimStream = type { %class.PStream, i64 }
%class.FileStream = type { %class.PStream, %struct._IO_FILE* }

$_ZN9SimStream4readEPfii = comdat any

$_ZN9SimStream6ferrorEv = comdat any

$_ZN9SimStream4feofEv = comdat any

$_ZN9SimStreamD0Ev = comdat any

$_ZN7PStreamD2Ev = comdat any

$_ZN10FileStream4readEPfii = comdat any

$_ZN10FileStream6ferrorEv = comdat any

$_ZN10FileStream4feofEv = comdat any

$_ZN10FileStreamD2Ev = comdat any

$_ZN10FileStreamD0Ev = comdat any

$_ZTV9SimStream = comdat any

$_ZTS9SimStream = comdat any

$_ZTS7PStream = comdat any

$_ZTI7PStream = comdat any

$_ZTI9SimStream = comdat any

$_ZTV10FileStream = comdat any

$_ZTS10FileStream = comdat any

$_ZTI10FileStream = comdat any

@_ZL5nproc = internal unnamed_addr global i32 0, align 4, !dbg !0
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !233
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open = internal unnamed_addr global i1 false, align 1, !dbg !1683
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs = internal unnamed_addr global double* null, align 8, !dbg !281
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i = internal unnamed_addr global i32 0, align 4, !dbg !283
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !285
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4cond = internal global %union.pthread_cond_t zeroinitializer, align 8, !dbg !288
@_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem = internal unnamed_addr global double* null, align 8, !dbg !291
@_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !357
@_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close = internal unnamed_addr global i32 0, align 4, !dbg !359
@_ZL9is_center = internal unnamed_addr global i8* null, align 8, !dbg !429
@_ZL12center_table = internal unnamed_addr global i32* null, align 8, !dbg !431
@_ZL17switch_membership = internal unnamed_addr global i8* null, align 8, !dbg !433
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k = internal global i64 0, align 8, !dbg !361
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible = internal global i32* null, align 8, !dbg !397
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible = internal unnamed_addr global i32 0, align 4, !dbg !399
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs = internal unnamed_addr global double* null, align 8, !dbg !401
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"error opening %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lf \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"not enough memory for a chunk!\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"read %d points\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"error reading data!\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"finish local search\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"oops! no more space for centers\0A\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"usage: %s k1 k2 d n chunksize clustersize infile outfile nproc\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"  k1:          Min. number of centers allowed\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"  k2:          Max. number of centers allowed\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"  d:           Dimension of each data point\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"  n:           Number of data points\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"  chunksize:   Number of data points to handle per step\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"  clustersize: Maximum number of intermediate centers\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"  infile:      Input file (if n<=0)\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"  outfile:     Output file\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"  nproc:       Number of threads to use\0A\00", align 1
@.str.23 = private unnamed_addr constant [77 x i8] c"if n > 0, points will be randomly generated instead of reading from infile.\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"time = %lf\0A\00", align 1
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !403
@__dso_handle = external hidden global i8
@_ZTV9SimStream = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI9SimStream to i8*), i8* bitcast (i64 (%class.SimStream*, float*, i32, i32)* @_ZN9SimStream4readEPfii to i8*), i8* bitcast (i32 (%class.SimStream*)* @_ZN9SimStream6ferrorEv to i8*), i8* bitcast (i32 (%class.SimStream*)* @_ZN9SimStream4feofEv to i8*), i8* bitcast (void (%class.PStream*)* @_ZN7PStreamD2Ev to i8*), i8* bitcast (void (%class.SimStream*)* @_ZN9SimStreamD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS9SimStream = linkonce_odr dso_local constant [11 x i8] c"9SimStream\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS7PStream = linkonce_odr dso_local constant [9 x i8] c"7PStream\00", comdat, align 1
@_ZTI7PStream = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7PStream, i32 0, i32 0) }, comdat, align 8
@_ZTI9SimStream = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZTS9SimStream, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7PStream to i8*) }, comdat, align 8
@_ZTV10FileStream = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10FileStream to i8*), i8* bitcast (i64 (%class.FileStream*, float*, i32, i32)* @_ZN10FileStream4readEPfii to i8*), i8* bitcast (i32 (%class.FileStream*)* @_ZN10FileStream6ferrorEv to i8*), i8* bitcast (i32 (%class.FileStream*)* @_ZN10FileStream4feofEv to i8*), i8* bitcast (void (%class.FileStream*)* @_ZN10FileStreamD2Ev to i8*), i8* bitcast (void (%class.FileStream*)* @_ZN10FileStreamD0Ev to i8*)] }, comdat, align 8
@.str.25 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"error opening file %s\0A.\00", align 1
@_ZTS10FileStream = linkonce_odr dso_local constant [13 x i8] c"10FileStream\00", comdat, align 1
@_ZTI10FileStream = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10FileStream, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7PStream to i8*) }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_streamcluster_original.cpp, i8* null }]
@str = private unnamed_addr constant [23 x i8] c"PARSEC Benchmark Suite\00", align 1
@str.28 = private unnamed_addr constant [20 x i8] c"closing file stream\00", align 1

; Function Attrs: nounwind uwtable
define dso_local double @_Z7gettimev() local_unnamed_addr #0 !dbg !1688 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !1693
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15, !dbg !1693
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !1692, metadata !DIExpression()), !dbg !1694
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, i8* null) #15, !dbg !1695
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !1696
  %5 = load i64, i64* %4, align 8, !dbg !1696, !tbaa !1697
  %6 = sitofp i64 %5 to double, !dbg !1702
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !1703
  %8 = load i64, i64* %7, align 8, !dbg !1703, !tbaa !1704
  %9 = sitofp i64 %8 to double, !dbg !1705
  %10 = fmul double %9, 0x3EB0C6F7A0B5ED8D, !dbg !1706
  %11 = fadd double %10, %6, !dbg !1707
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15, !dbg !1708
  ret double %11, !dbg !1709
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare !dbg !6 dso_local i32 @gettimeofday(%struct.timeval* nocapture, i8* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i32 @_Z11isIdenticalPfS_i(float* nocapture readonly %0, float* nocapture readonly %1, i32 %2) local_unnamed_addr #4 !dbg !1710 {
  call void @llvm.dbg.value(metadata float* %0, metadata !1714, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata float* %1, metadata !1715, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %2, metadata !1716, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 0, metadata !1717, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 1, metadata !1718, metadata !DIExpression()), !dbg !1719
  %4 = icmp sgt i32 %2, 0, !dbg !1720
  br i1 %4, label %5, label %23, !dbg !1721

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %17, %5 ], [ 1, %3 ]
  %7 = phi i32 [ %16, %5 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !1718, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %7, metadata !1717, metadata !DIExpression()), !dbg !1719
  %8 = zext i32 %7 to i64, !dbg !1722
  %9 = getelementptr inbounds float, float* %0, i64 %8, !dbg !1722
  %10 = load float, float* %9, align 4, !dbg !1722, !tbaa !1725
  %11 = getelementptr inbounds float, float* %1, i64 %8, !dbg !1727
  %12 = load float, float* %11, align 4, !dbg !1727, !tbaa !1725
  %13 = fcmp une float %10, %12, !dbg !1728
  %14 = xor i1 %13, true, !dbg !1729
  %15 = zext i1 %14 to i32, !dbg !1729
  %16 = add nuw nsw i32 %7, %15, !dbg !1729
  %17 = select i1 %13, i32 0, i32 %6, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %17, metadata !1718, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %16, metadata !1717, metadata !DIExpression()), !dbg !1719
  %18 = icmp ne i32 %17, 0, !dbg !1730
  %19 = icmp slt i32 %16, %2, !dbg !1720
  %20 = and i1 %19, %18, !dbg !1720
  br i1 %20, label %5, label %21, !dbg !1721, !llvm.loop !1731

21:                                               ; preds = %5
  %22 = zext i1 %18 to i32, !dbg !1733
  br label %23, !dbg !1733

23:                                               ; preds = %21, %3
  %24 = phi i32 [ 1, %3 ], [ %22, %21 ]
  ret i32 %24, !dbg !1735
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z7shuffleP6Points(%struct.Points* nocapture readonly %0) local_unnamed_addr #0 !dbg !1736 {
  %2 = alloca %struct.Point, align 8
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !1740, metadata !DIExpression()), !dbg !1744
  %3 = bitcast %struct.Point* %2 to i8*, !dbg !1745
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3), !dbg !1745
  call void @llvm.dbg.declare(metadata %struct.Point* %2, metadata !1743, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()), !dbg !1744
  %4 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 0, !dbg !1747
  %5 = load i64, i64* %4, align 8, !dbg !1747, !tbaa !1750
  %6 = icmp sgt i64 %5, 1, !dbg !1754
  br i1 %6, label %7, label %28, !dbg !1755

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !1756
  br label %9, !dbg !1755

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %24, %9 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !1741, metadata !DIExpression()), !dbg !1744
  %11 = tail call i64 @lrand48() #15, !dbg !1758
  %12 = load i64, i64* %4, align 8, !dbg !1759, !tbaa !1750
  %13 = sub nsw i64 %12, %10, !dbg !1760
  %14 = srem i64 %11, %13, !dbg !1761
  %15 = add nsw i64 %14, %10, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %15, metadata !1742, metadata !DIExpression()), !dbg !1744
  %16 = load %struct.Point*, %struct.Point** %8, align 8, !dbg !1763, !tbaa !1764
  %17 = getelementptr inbounds %struct.Point, %struct.Point* %16, i64 %10, !dbg !1765
  %18 = bitcast %struct.Point* %17 to i8*, !dbg !1766
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %3, i8* nonnull align 8 dereferenceable(32) %18, i64 32, i1 false), !dbg !1766, !tbaa.struct !1767
  %19 = getelementptr inbounds %struct.Point, %struct.Point* %16, i64 %15, !dbg !1770
  %20 = bitcast %struct.Point* %19 to i8*, !dbg !1771
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %18, i8* nonnull align 8 dereferenceable(32) %20, i64 32, i1 false), !dbg !1771, !tbaa.struct !1767
  %21 = load %struct.Point*, %struct.Point** %8, align 8, !dbg !1772, !tbaa !1764
  %22 = getelementptr inbounds %struct.Point, %struct.Point* %21, i64 %15, !dbg !1773
  %23 = bitcast %struct.Point* %22 to i8*, !dbg !1774
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %23, i8* nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1774, !tbaa.struct !1767
  %24 = add nuw nsw i64 %10, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %24, metadata !1741, metadata !DIExpression()), !dbg !1744
  %25 = load i64, i64* %4, align 8, !dbg !1747, !tbaa !1750
  %26 = add nsw i64 %25, -1, !dbg !1776
  %27 = icmp slt i64 %24, %26, !dbg !1754
  br i1 %27, label %9, label %28, !dbg !1755, !llvm.loop !1777

28:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3), !dbg !1779
  ret void, !dbg !1779
}

; Function Attrs: nounwind
declare !dbg !23 dso_local i64 @lrand48() local_unnamed_addr #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @_Z10intshufflePii(i32* nocapture %0, i32 %1) local_unnamed_addr #0 !dbg !1780 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1784, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i32 %1, metadata !1785, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 0, metadata !1786, metadata !DIExpression()), !dbg !1789
  %3 = sext i32 %1 to i64, !dbg !1790
  %4 = icmp sgt i32 %1, 0, !dbg !1793
  br i1 %4, label %5, label %17, !dbg !1794

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %15, %5 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !1786, metadata !DIExpression()), !dbg !1789
  %7 = tail call i64 @lrand48() #15, !dbg !1795
  %8 = sub nsw i64 %3, %6, !dbg !1797
  %9 = srem i64 %7, %8, !dbg !1798
  %10 = add nsw i64 %9, %6, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %10, metadata !1787, metadata !DIExpression()), !dbg !1789
  %11 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !1800
  %12 = load i32, i32* %11, align 4, !dbg !1800, !tbaa !1801
  call void @llvm.dbg.value(metadata i32 %12, metadata !1788, metadata !DIExpression()), !dbg !1789
  %13 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !1802
  %14 = load i32, i32* %13, align 4, !dbg !1802, !tbaa !1801
  store i32 %14, i32* %11, align 4, !dbg !1803, !tbaa !1801
  store i32 %12, i32* %13, align 4, !dbg !1804, !tbaa !1801
  %15 = add nuw nsw i64 %6, 1, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %15, metadata !1786, metadata !DIExpression()), !dbg !1789
  %16 = icmp eq i64 %15, %3, !dbg !1793
  br i1 %16, label %17, label %5, !dbg !1794, !llvm.loop !1806

17:                                               ; preds = %5, %2
  ret void, !dbg !1808
}

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local float @_Z4dist5PointS_i(%struct.Point* nocapture readonly byval(%struct.Point) align 8 %0, %struct.Point* nocapture readonly byval(%struct.Point) align 8 %1, i32 %2) local_unnamed_addr #4 !dbg !1809 {
  call void @llvm.dbg.declare(metadata %struct.Point* %0, metadata !1813, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.declare(metadata %struct.Point* %1, metadata !1814, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 %2, metadata !1815, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1817, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !1820
  %4 = icmp sgt i32 %2, 0, !dbg !1821
  br i1 %4, label %5, label %73, !dbg !1824

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Point, %struct.Point* %0, i64 0, i32 1, !dbg !1825
  %7 = load float*, float** %6, align 8, !dbg !1825, !tbaa !1826
  %8 = getelementptr inbounds %struct.Point, %struct.Point* %1, i64 0, i32 1, !dbg !1825
  %9 = load float*, float** %8, align 8, !dbg !1825, !tbaa !1826
  %10 = zext i32 %2 to i64, !dbg !1821
  %11 = add nsw i64 %10, -1, !dbg !1824
  %12 = and i64 %10, 3, !dbg !1824
  %13 = icmp ult i64 %11, 3, !dbg !1824
  br i1 %13, label %54, label %14, !dbg !1824

14:                                               ; preds = %5
  %15 = sub nsw i64 %10, %12, !dbg !1824
  br label %16, !dbg !1824

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %51, %16 ]
  %18 = phi float [ 0.000000e+00, %14 ], [ %50, %16 ]
  %19 = phi i64 [ %15, %14 ], [ %52, %16 ]
  call void @llvm.dbg.value(metadata float %18, metadata !1817, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %17, metadata !1816, metadata !DIExpression()), !dbg !1820
  %20 = getelementptr inbounds float, float* %7, i64 %17, !dbg !1828
  %21 = load float, float* %20, align 4, !dbg !1828, !tbaa !1725
  %22 = getelementptr inbounds float, float* %9, i64 %17, !dbg !1829
  %23 = load float, float* %22, align 4, !dbg !1829, !tbaa !1725
  %24 = fsub float %21, %23, !dbg !1830
  %25 = fmul float %24, %24, !dbg !1831
  %26 = fadd float %18, %25, !dbg !1832
  call void @llvm.dbg.value(metadata float %26, metadata !1817, metadata !DIExpression()), !dbg !1820
  %27 = or i64 %17, 1, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %27, metadata !1816, metadata !DIExpression()), !dbg !1820
  %28 = getelementptr inbounds float, float* %7, i64 %27, !dbg !1828
  %29 = load float, float* %28, align 4, !dbg !1828, !tbaa !1725
  %30 = getelementptr inbounds float, float* %9, i64 %27, !dbg !1829
  %31 = load float, float* %30, align 4, !dbg !1829, !tbaa !1725
  %32 = fsub float %29, %31, !dbg !1830
  %33 = fmul float %32, %32, !dbg !1831
  %34 = fadd float %26, %33, !dbg !1832
  call void @llvm.dbg.value(metadata float %34, metadata !1817, metadata !DIExpression()), !dbg !1820
  %35 = or i64 %17, 2, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %35, metadata !1816, metadata !DIExpression()), !dbg !1820
  %36 = getelementptr inbounds float, float* %7, i64 %35, !dbg !1828
  %37 = load float, float* %36, align 4, !dbg !1828, !tbaa !1725
  %38 = getelementptr inbounds float, float* %9, i64 %35, !dbg !1829
  %39 = load float, float* %38, align 4, !dbg !1829, !tbaa !1725
  %40 = fsub float %37, %39, !dbg !1830
  %41 = fmul float %40, %40, !dbg !1831
  %42 = fadd float %34, %41, !dbg !1832
  call void @llvm.dbg.value(metadata float %42, metadata !1817, metadata !DIExpression()), !dbg !1820
  %43 = or i64 %17, 3, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %43, metadata !1816, metadata !DIExpression()), !dbg !1820
  %44 = getelementptr inbounds float, float* %7, i64 %43, !dbg !1828
  %45 = load float, float* %44, align 4, !dbg !1828, !tbaa !1725
  %46 = getelementptr inbounds float, float* %9, i64 %43, !dbg !1829
  %47 = load float, float* %46, align 4, !dbg !1829, !tbaa !1725
  %48 = fsub float %45, %47, !dbg !1830
  %49 = fmul float %48, %48, !dbg !1831
  %50 = fadd float %42, %49, !dbg !1832
  call void @llvm.dbg.value(metadata float %50, metadata !1817, metadata !DIExpression()), !dbg !1820
  %51 = add nuw nsw i64 %17, 4, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %51, metadata !1816, metadata !DIExpression()), !dbg !1820
  %52 = add i64 %19, -4, !dbg !1824
  %53 = icmp eq i64 %52, 0, !dbg !1824
  br i1 %53, label %54, label %16, !dbg !1824, !llvm.loop !1834

54:                                               ; preds = %16, %5
  %55 = phi float [ undef, %5 ], [ %50, %16 ]
  %56 = phi i64 [ 0, %5 ], [ %51, %16 ]
  %57 = phi float [ 0.000000e+00, %5 ], [ %50, %16 ]
  %58 = icmp eq i64 %12, 0, !dbg !1824
  br i1 %58, label %73, label %59, !dbg !1824

59:                                               ; preds = %54, %59
  %60 = phi i64 [ %70, %59 ], [ %56, %54 ]
  %61 = phi float [ %69, %59 ], [ %57, %54 ]
  %62 = phi i64 [ %71, %59 ], [ %12, %54 ]
  call void @llvm.dbg.value(metadata float %61, metadata !1817, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %60, metadata !1816, metadata !DIExpression()), !dbg !1820
  %63 = getelementptr inbounds float, float* %7, i64 %60, !dbg !1828
  %64 = load float, float* %63, align 4, !dbg !1828, !tbaa !1725
  %65 = getelementptr inbounds float, float* %9, i64 %60, !dbg !1829
  %66 = load float, float* %65, align 4, !dbg !1829, !tbaa !1725
  %67 = fsub float %64, %66, !dbg !1830
  %68 = fmul float %67, %67, !dbg !1831
  %69 = fadd float %61, %68, !dbg !1832
  call void @llvm.dbg.value(metadata float %69, metadata !1817, metadata !DIExpression()), !dbg !1820
  %70 = add nuw nsw i64 %60, 1, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %70, metadata !1816, metadata !DIExpression()), !dbg !1820
  %71 = add i64 %62, -1, !dbg !1824
  %72 = icmp eq i64 %71, 0, !dbg !1824
  br i1 %72, label %73, label %59, !dbg !1824, !llvm.loop !1836

73:                                               ; preds = %54, %59, %3
  %74 = phi float [ 0.000000e+00, %3 ], [ %55, %54 ], [ %69, %59 ], !dbg !1820
  call void @llvm.dbg.value(metadata float %74, metadata !1817, metadata !DIExpression()), !dbg !1820
  ret float %74, !dbg !1838
}

; Function Attrs: uwtable
define dso_local float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* nocapture readonly %0, float %1, i64* nocapture %2, i32 %3, %union.pthread_barrier_t* %4) local_unnamed_addr #6 !dbg !235 {
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !239, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata float %1, metadata !240, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64* %2, metadata !241, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %3, metadata !242, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata %union.pthread_barrier_t* %4, metadata !243, metadata !DIExpression()), !dbg !1839
  %6 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %4) #15, !dbg !1840
  %7 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 0, !dbg !1841
  %8 = load i64, i64* %7, align 8, !dbg !1841, !tbaa !1750
  %9 = load i32, i32* @_ZL5nproc, align 4, !dbg !1842, !tbaa !1801
  %10 = sext i32 %9 to i64, !dbg !1842
  %11 = sdiv i64 %8, %10, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %11, metadata !244, metadata !DIExpression()), !dbg !1839
  %12 = sext i32 %3 to i64, !dbg !1844
  %13 = mul nsw i64 %11, %12, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %13, metadata !245, metadata !DIExpression()), !dbg !1839
  %14 = add nsw i64 %13, %11, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %14, metadata !246, metadata !DIExpression()), !dbg !1839
  %15 = add nsw i32 %9, -1, !dbg !1847
  %16 = icmp eq i32 %15, %3, !dbg !1849
  %17 = select i1 %16, i64 %8, i64 %14, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %17, metadata !246, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %13, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1851
  %18 = shl i64 %13, 32, !dbg !1852
  %19 = ashr exact i64 %18, 32, !dbg !1852
  %20 = icmp sgt i64 %17, %19, !dbg !1853
  br i1 %20, label %21, label %37, !dbg !1854

21:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 %13, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1851
  %22 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !1855
  %23 = load %struct.Point*, %struct.Point** %22, align 8, !dbg !1855, !tbaa !1764
  %24 = getelementptr inbounds %struct.Point, %struct.Point* %23, i64 0, i32 1, !dbg !1855
  %25 = load float*, float** %24, align 8, !dbg !1855, !tbaa.struct !1767
  %26 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 1, !dbg !1855
  %27 = load i32, i32* %26, align 8, !dbg !1855, !tbaa !1856
  %28 = icmp sgt i32 %27, 0, !dbg !1857
  %29 = zext i32 %27 to i64, !dbg !1857
  %30 = shl i64 %13, 32, !dbg !1854
  %31 = ashr exact i64 %30, 32, !dbg !1854
  %32 = add nsw i64 %29, -1, !dbg !1854
  %33 = and i64 %29, 3, !dbg !1859
  %34 = icmp ult i64 %32, 3, !dbg !1859
  %35 = sub nsw i64 %29, %33, !dbg !1859
  %36 = icmp eq i64 %33, 0, !dbg !1859
  br label %44, !dbg !1854

37:                                               ; preds = %105, %5
  %38 = icmp eq i32 %3, 0, !dbg !1860
  br i1 %38, label %114, label %39, !dbg !1862

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !1863
  %41 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 1, !dbg !1863
  %42 = shl i64 %13, 32, !dbg !1864
  %43 = ashr exact i64 %42, 32, !dbg !1864
  br label %124, !dbg !1864

44:                                               ; preds = %21, %105
  %45 = phi i64 [ %31, %21 ], [ %112, %105 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !247, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i64 undef, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1865
  %46 = getelementptr inbounds %struct.Point, %struct.Point* %23, i64 %45, i32 1, !dbg !1866
  %47 = load float*, float** %46, align 8, !dbg !1866, !tbaa.struct !1767
  call void @llvm.dbg.value(metadata float* %47, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1865
  call void @llvm.dbg.value(metadata i64 undef, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1865
  call void @llvm.dbg.value(metadata float* %25, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1865
  call void @llvm.dbg.value(metadata i32 %27, metadata !1815, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1817, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !1865
  br i1 %28, label %48, label %105, !dbg !1867

48:                                               ; preds = %44
  br i1 %34, label %87, label %49, !dbg !1867

49:                                               ; preds = %48, %49
  %50 = phi i64 [ %84, %49 ], [ 0, %48 ]
  %51 = phi float [ %83, %49 ], [ 0.000000e+00, %48 ]
  %52 = phi i64 [ %85, %49 ], [ %35, %48 ]
  call void @llvm.dbg.value(metadata float %51, metadata !1817, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %50, metadata !1816, metadata !DIExpression()), !dbg !1865
  %53 = getelementptr inbounds float, float* %47, i64 %50, !dbg !1868
  %54 = load float, float* %53, align 4, !dbg !1868, !tbaa !1725
  %55 = getelementptr inbounds float, float* %25, i64 %50, !dbg !1869
  %56 = load float, float* %55, align 4, !dbg !1869, !tbaa !1725
  %57 = fsub float %54, %56, !dbg !1870
  %58 = fmul float %57, %57, !dbg !1871
  %59 = fadd float %51, %58, !dbg !1872
  call void @llvm.dbg.value(metadata float %59, metadata !1817, metadata !DIExpression()), !dbg !1865
  %60 = or i64 %50, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %60, metadata !1816, metadata !DIExpression()), !dbg !1865
  %61 = getelementptr inbounds float, float* %47, i64 %60, !dbg !1868
  %62 = load float, float* %61, align 4, !dbg !1868, !tbaa !1725
  %63 = getelementptr inbounds float, float* %25, i64 %60, !dbg !1869
  %64 = load float, float* %63, align 4, !dbg !1869, !tbaa !1725
  %65 = fsub float %62, %64, !dbg !1870
  %66 = fmul float %65, %65, !dbg !1871
  %67 = fadd float %59, %66, !dbg !1872
  call void @llvm.dbg.value(metadata float %67, metadata !1817, metadata !DIExpression()), !dbg !1865
  %68 = or i64 %50, 2, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %68, metadata !1816, metadata !DIExpression()), !dbg !1865
  %69 = getelementptr inbounds float, float* %47, i64 %68, !dbg !1868
  %70 = load float, float* %69, align 4, !dbg !1868, !tbaa !1725
  %71 = getelementptr inbounds float, float* %25, i64 %68, !dbg !1869
  %72 = load float, float* %71, align 4, !dbg !1869, !tbaa !1725
  %73 = fsub float %70, %72, !dbg !1870
  %74 = fmul float %73, %73, !dbg !1871
  %75 = fadd float %67, %74, !dbg !1872
  call void @llvm.dbg.value(metadata float %75, metadata !1817, metadata !DIExpression()), !dbg !1865
  %76 = or i64 %50, 3, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %76, metadata !1816, metadata !DIExpression()), !dbg !1865
  %77 = getelementptr inbounds float, float* %47, i64 %76, !dbg !1868
  %78 = load float, float* %77, align 4, !dbg !1868, !tbaa !1725
  %79 = getelementptr inbounds float, float* %25, i64 %76, !dbg !1869
  %80 = load float, float* %79, align 4, !dbg !1869, !tbaa !1725
  %81 = fsub float %78, %80, !dbg !1870
  %82 = fmul float %81, %81, !dbg !1871
  %83 = fadd float %75, %82, !dbg !1872
  call void @llvm.dbg.value(metadata float %83, metadata !1817, metadata !DIExpression()), !dbg !1865
  %84 = add nuw nsw i64 %50, 4, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %84, metadata !1816, metadata !DIExpression()), !dbg !1865
  %85 = add i64 %52, -4, !dbg !1867
  %86 = icmp eq i64 %85, 0, !dbg !1867
  br i1 %86, label %87, label %49, !dbg !1867, !llvm.loop !1874

87:                                               ; preds = %49, %48
  %88 = phi float [ undef, %48 ], [ %83, %49 ]
  %89 = phi i64 [ 0, %48 ], [ %84, %49 ]
  %90 = phi float [ 0.000000e+00, %48 ], [ %83, %49 ]
  br i1 %36, label %105, label %91, !dbg !1867

91:                                               ; preds = %87, %91
  %92 = phi i64 [ %102, %91 ], [ %89, %87 ]
  %93 = phi float [ %101, %91 ], [ %90, %87 ]
  %94 = phi i64 [ %103, %91 ], [ %33, %87 ]
  call void @llvm.dbg.value(metadata float %93, metadata !1817, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %92, metadata !1816, metadata !DIExpression()), !dbg !1865
  %95 = getelementptr inbounds float, float* %47, i64 %92, !dbg !1868
  %96 = load float, float* %95, align 4, !dbg !1868, !tbaa !1725
  %97 = getelementptr inbounds float, float* %25, i64 %92, !dbg !1869
  %98 = load float, float* %97, align 4, !dbg !1869, !tbaa !1725
  %99 = fsub float %96, %98, !dbg !1870
  %100 = fmul float %99, %99, !dbg !1871
  %101 = fadd float %93, %100, !dbg !1872
  call void @llvm.dbg.value(metadata float %101, metadata !1817, metadata !DIExpression()), !dbg !1865
  %102 = add nuw nsw i64 %92, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %102, metadata !1816, metadata !DIExpression()), !dbg !1865
  %103 = add i64 %94, -1, !dbg !1867
  %104 = icmp eq i64 %103, 0, !dbg !1867
  br i1 %104, label %105, label %91, !dbg !1867, !llvm.loop !1876

105:                                              ; preds = %87, %91, %44
  %106 = phi float [ 0.000000e+00, %44 ], [ %88, %87 ], [ %101, %91 ], !dbg !1865
  call void @llvm.dbg.value(metadata float %106, metadata !1817, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata float %106, metadata !249, metadata !DIExpression()), !dbg !1855
  %107 = getelementptr inbounds %struct.Point, %struct.Point* %23, i64 %45, i32 0, !dbg !1877
  %108 = load float, float* %107, align 8, !dbg !1877, !tbaa !1878
  %109 = fmul float %106, %108, !dbg !1879
  %110 = getelementptr inbounds %struct.Point, %struct.Point* %23, i64 %45, i32 3, !dbg !1880
  store float %109, float* %110, align 8, !dbg !1881, !tbaa !1882
  %111 = getelementptr inbounds %struct.Point, %struct.Point* %23, i64 %45, i32 2, !dbg !1883
  store i64 0, i64* %111, align 8, !dbg !1884, !tbaa !1885
  %112 = add i64 %45, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %112, metadata !247, metadata !DIExpression()), !dbg !1851
  %113 = icmp sgt i64 %17, %112, !dbg !1853
  br i1 %113, label %44, label %37, !dbg !1854, !llvm.loop !1887

114:                                              ; preds = %37
  store i64 1, i64* %2, align 8, !dbg !1889, !tbaa !1769
  %115 = shl nsw i64 %10, 3, !dbg !1891
  %116 = tail call noalias i8* @malloc(i64 %115) #15, !dbg !1892
  store i8* %116, i8** bitcast (double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs to i8**), align 8, !dbg !1893, !tbaa !1768
  store i32 1, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4, !dbg !1894, !tbaa !1801
  %117 = load i64, i64* %7, align 8, !dbg !1895, !tbaa !1750
  %118 = icmp sgt i64 %117, 1, !dbg !1896
  br i1 %118, label %119, label %341, !dbg !1897

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !1898
  %121 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 1, !dbg !1899
  %122 = shl i64 %13, 32, !dbg !1897
  %123 = ashr exact i64 %122, 32, !dbg !1897
  br label %226, !dbg !1897

124:                                              ; preds = %39, %149
  %125 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5mutex) #15, !dbg !1900
  %126 = load i1, i1* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1, !dbg !1901
  br i1 %126, label %130, label %127, !dbg !1902

127:                                              ; preds = %124, %127
  %128 = tail call i32 @pthread_cond_wait(%union.pthread_cond_t* nonnull @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4cond, %union.pthread_mutex_t* nonnull @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5mutex), !dbg !1903
  %129 = load i1, i1* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1, !dbg !1901
  br i1 %129, label %130, label %127, !dbg !1902, !llvm.loop !1904

130:                                              ; preds = %127, %124
  %131 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5mutex) #15, !dbg !1906
  %132 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4, !dbg !1907, !tbaa !1801
  %133 = sext i32 %132 to i64, !dbg !1907
  %134 = load i64, i64* %7, align 8, !dbg !1909, !tbaa !1750
  %135 = icmp sgt i64 %134, %133, !dbg !1910
  br i1 %135, label %136, label %345, !dbg !1911

136:                                              ; preds = %130
  call void @llvm.dbg.value(metadata i64 %13, metadata !252, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1912
  br i1 %20, label %137, label %149, !dbg !1913

137:                                              ; preds = %136
  %138 = load %struct.Point*, %struct.Point** %40, align 8, !dbg !1863, !tbaa !1764
  %139 = getelementptr inbounds %struct.Point, %struct.Point* %138, i64 %133, i32 1, !dbg !1863
  %140 = load float*, float** %139, align 8, !dbg !1863, !tbaa.struct !1767
  %141 = load i32, i32* %41, align 8, !dbg !1863, !tbaa !1856
  %142 = icmp sgt i32 %141, 0, !dbg !1914
  %143 = zext i32 %141 to i64, !dbg !1914
  %144 = add nsw i64 %143, -1, !dbg !1913
  %145 = and i64 %143, 3, !dbg !1916
  %146 = icmp ult i64 %144, 3, !dbg !1916
  %147 = sub nsw i64 %143, %145, !dbg !1916
  %148 = icmp eq i64 %145, 0, !dbg !1916
  br label %152, !dbg !1913

149:                                              ; preds = %223, %136
  %150 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %4) #15, !dbg !1917
  %151 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %4) #15, !dbg !1918
  br label %124, !dbg !1864, !llvm.loop !1919

152:                                              ; preds = %137, %223
  %153 = phi i64 [ %43, %137 ], [ %224, %223 ]
  call void @llvm.dbg.value(metadata i64 %153, metadata !252, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 undef, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1921
  call void @llvm.dbg.value(metadata float* %140, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1921
  call void @llvm.dbg.value(metadata i64 undef, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1921
  %154 = getelementptr inbounds %struct.Point, %struct.Point* %138, i64 %153, i32 1, !dbg !1922
  %155 = load float*, float** %154, align 8, !dbg !1922, !tbaa.struct !1767
  call void @llvm.dbg.value(metadata float* %155, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1921
  call void @llvm.dbg.value(metadata i32 %141, metadata !1815, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1817, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !1921
  br i1 %142, label %156, label %213, !dbg !1923

156:                                              ; preds = %152
  br i1 %146, label %195, label %157, !dbg !1923

157:                                              ; preds = %156, %157
  %158 = phi i64 [ %192, %157 ], [ 0, %156 ]
  %159 = phi float [ %191, %157 ], [ 0.000000e+00, %156 ]
  %160 = phi i64 [ %193, %157 ], [ %147, %156 ]
  call void @llvm.dbg.value(metadata float %159, metadata !1817, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %158, metadata !1816, metadata !DIExpression()), !dbg !1921
  %161 = getelementptr inbounds float, float* %140, i64 %158, !dbg !1924
  %162 = load float, float* %161, align 4, !dbg !1924, !tbaa !1725
  %163 = getelementptr inbounds float, float* %155, i64 %158, !dbg !1925
  %164 = load float, float* %163, align 4, !dbg !1925, !tbaa !1725
  %165 = fsub float %162, %164, !dbg !1926
  %166 = fmul float %165, %165, !dbg !1927
  %167 = fadd float %159, %166, !dbg !1928
  call void @llvm.dbg.value(metadata float %167, metadata !1817, metadata !DIExpression()), !dbg !1921
  %168 = or i64 %158, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %168, metadata !1816, metadata !DIExpression()), !dbg !1921
  %169 = getelementptr inbounds float, float* %140, i64 %168, !dbg !1924
  %170 = load float, float* %169, align 4, !dbg !1924, !tbaa !1725
  %171 = getelementptr inbounds float, float* %155, i64 %168, !dbg !1925
  %172 = load float, float* %171, align 4, !dbg !1925, !tbaa !1725
  %173 = fsub float %170, %172, !dbg !1926
  %174 = fmul float %173, %173, !dbg !1927
  %175 = fadd float %167, %174, !dbg !1928
  call void @llvm.dbg.value(metadata float %175, metadata !1817, metadata !DIExpression()), !dbg !1921
  %176 = or i64 %158, 2, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %176, metadata !1816, metadata !DIExpression()), !dbg !1921
  %177 = getelementptr inbounds float, float* %140, i64 %176, !dbg !1924
  %178 = load float, float* %177, align 4, !dbg !1924, !tbaa !1725
  %179 = getelementptr inbounds float, float* %155, i64 %176, !dbg !1925
  %180 = load float, float* %179, align 4, !dbg !1925, !tbaa !1725
  %181 = fsub float %178, %180, !dbg !1926
  %182 = fmul float %181, %181, !dbg !1927
  %183 = fadd float %175, %182, !dbg !1928
  call void @llvm.dbg.value(metadata float %183, metadata !1817, metadata !DIExpression()), !dbg !1921
  %184 = or i64 %158, 3, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %184, metadata !1816, metadata !DIExpression()), !dbg !1921
  %185 = getelementptr inbounds float, float* %140, i64 %184, !dbg !1924
  %186 = load float, float* %185, align 4, !dbg !1924, !tbaa !1725
  %187 = getelementptr inbounds float, float* %155, i64 %184, !dbg !1925
  %188 = load float, float* %187, align 4, !dbg !1925, !tbaa !1725
  %189 = fsub float %186, %188, !dbg !1926
  %190 = fmul float %189, %189, !dbg !1927
  %191 = fadd float %183, %190, !dbg !1928
  call void @llvm.dbg.value(metadata float %191, metadata !1817, metadata !DIExpression()), !dbg !1921
  %192 = add nuw nsw i64 %158, 4, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %192, metadata !1816, metadata !DIExpression()), !dbg !1921
  %193 = add i64 %160, -4, !dbg !1923
  %194 = icmp eq i64 %193, 0, !dbg !1923
  br i1 %194, label %195, label %157, !dbg !1923, !llvm.loop !1930

195:                                              ; preds = %157, %156
  %196 = phi float [ undef, %156 ], [ %191, %157 ]
  %197 = phi i64 [ 0, %156 ], [ %192, %157 ]
  %198 = phi float [ 0.000000e+00, %156 ], [ %191, %157 ]
  br i1 %148, label %213, label %199, !dbg !1923

199:                                              ; preds = %195, %199
  %200 = phi i64 [ %210, %199 ], [ %197, %195 ]
  %201 = phi float [ %209, %199 ], [ %198, %195 ]
  %202 = phi i64 [ %211, %199 ], [ %145, %195 ]
  call void @llvm.dbg.value(metadata float %201, metadata !1817, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %200, metadata !1816, metadata !DIExpression()), !dbg !1921
  %203 = getelementptr inbounds float, float* %140, i64 %200, !dbg !1924
  %204 = load float, float* %203, align 4, !dbg !1924, !tbaa !1725
  %205 = getelementptr inbounds float, float* %155, i64 %200, !dbg !1925
  %206 = load float, float* %205, align 4, !dbg !1925, !tbaa !1725
  %207 = fsub float %204, %206, !dbg !1926
  %208 = fmul float %207, %207, !dbg !1927
  %209 = fadd float %201, %208, !dbg !1928
  call void @llvm.dbg.value(metadata float %209, metadata !1817, metadata !DIExpression()), !dbg !1921
  %210 = add nuw nsw i64 %200, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %210, metadata !1816, metadata !DIExpression()), !dbg !1921
  %211 = add i64 %202, -1, !dbg !1923
  %212 = icmp eq i64 %211, 0, !dbg !1923
  br i1 %212, label %213, label %199, !dbg !1923, !llvm.loop !1932

213:                                              ; preds = %195, %199, %152
  %214 = phi float [ 0.000000e+00, %152 ], [ %196, %195 ], [ %209, %199 ], !dbg !1921
  call void @llvm.dbg.value(metadata float %214, metadata !1817, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata float %214, metadata !257, metadata !DIExpression()), !dbg !1863
  %215 = getelementptr inbounds %struct.Point, %struct.Point* %138, i64 %153, i32 0, !dbg !1933
  %216 = load float, float* %215, align 8, !dbg !1933, !tbaa !1878
  %217 = fmul float %214, %216, !dbg !1935
  %218 = getelementptr inbounds %struct.Point, %struct.Point* %138, i64 %153, i32 3, !dbg !1936
  %219 = load float, float* %218, align 8, !dbg !1936, !tbaa !1882
  %220 = fcmp olt float %217, %219, !dbg !1937
  br i1 %220, label %221, label %223, !dbg !1938

221:                                              ; preds = %213
  store float %217, float* %218, align 8, !dbg !1939, !tbaa !1882
  %222 = getelementptr inbounds %struct.Point, %struct.Point* %138, i64 %153, i32 2, !dbg !1941
  store i64 %133, i64* %222, align 8, !dbg !1942, !tbaa !1885
  br label %223, !dbg !1943

223:                                              ; preds = %221, %213
  %224 = add i64 %153, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %224, metadata !252, metadata !DIExpression()), !dbg !1912
  %225 = icmp sgt i64 %17, %224, !dbg !1945
  br i1 %225, label %152, label %149, !dbg !1913, !llvm.loop !1946

226:                                              ; preds = %119, %335
  %227 = tail call i64 @lrand48() #15, !dbg !1948
  %228 = sitofp i64 %227 to float, !dbg !1948
  %229 = fmul float %228, 0x3E00000000000000, !dbg !1949
  %230 = load %struct.Point*, %struct.Point** %120, align 8, !dbg !1950, !tbaa !1764
  %231 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4, !dbg !1951, !tbaa !1801
  %232 = sext i32 %231 to i64, !dbg !1952
  %233 = getelementptr inbounds %struct.Point, %struct.Point* %230, i64 %232, i32 3, !dbg !1953
  %234 = load float, float* %233, align 8, !dbg !1953, !tbaa !1882
  %235 = fdiv float %234, %1, !dbg !1954
  %236 = fcmp olt float %229, %235, !dbg !1955
  call void @llvm.dbg.value(metadata i1 %236, metadata !260, metadata !DIExpression()), !dbg !1898
  br i1 %236, label %237, label %335, !dbg !1956

237:                                              ; preds = %226
  %238 = load i64, i64* %2, align 8, !dbg !1957, !tbaa !1769
  %239 = add nsw i64 %238, 1, !dbg !1957
  store i64 %239, i64* %2, align 8, !dbg !1957, !tbaa !1769
  %240 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5mutex) #15, !dbg !1958
  store i1 true, i1* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1, !dbg !1959
  %241 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5mutex) #15, !dbg !1960
  %242 = tail call i32 @pthread_cond_broadcast(%union.pthread_cond_t* nonnull @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4cond) #15, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %13, metadata !265, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1962
  br i1 %20, label %243, label %257, !dbg !1963

243:                                              ; preds = %237
  %244 = load %struct.Point*, %struct.Point** %120, align 8, !dbg !1899, !tbaa !1764
  %245 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4, !dbg !1899, !tbaa !1801
  %246 = sext i32 %245 to i64, !dbg !1899
  %247 = getelementptr inbounds %struct.Point, %struct.Point* %244, i64 %246, i32 1, !dbg !1899
  %248 = load float*, float** %247, align 8, !dbg !1899, !tbaa.struct !1767
  %249 = load i32, i32* %121, align 8, !dbg !1899, !tbaa !1856
  %250 = icmp sgt i32 %249, 0, !dbg !1964
  %251 = zext i32 %249 to i64, !dbg !1964
  %252 = add nsw i64 %251, -1, !dbg !1963
  %253 = and i64 %251, 3, !dbg !1966
  %254 = icmp ult i64 %252, 3, !dbg !1966
  %255 = sub nsw i64 %251, %253, !dbg !1966
  %256 = icmp eq i64 %253, 0, !dbg !1966
  br label %261, !dbg !1963

257:                                              ; preds = %332, %237
  %258 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %4) #15, !dbg !1967
  store i1 false, i1* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1, !dbg !1968
  %259 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %4) #15, !dbg !1969
  %260 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4, !dbg !1970, !tbaa !1801
  br label %335, !dbg !1971

261:                                              ; preds = %243, %332
  %262 = phi i64 [ %123, %243 ], [ %333, %332 ]
  call void @llvm.dbg.value(metadata i64 %262, metadata !265, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 undef, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1972
  call void @llvm.dbg.value(metadata float* %248, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1972
  call void @llvm.dbg.value(metadata i64 undef, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1972
  %263 = getelementptr inbounds %struct.Point, %struct.Point* %244, i64 %262, i32 1, !dbg !1973
  %264 = load float*, float** %263, align 8, !dbg !1973, !tbaa.struct !1767
  call void @llvm.dbg.value(metadata float* %264, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1972
  call void @llvm.dbg.value(metadata i32 %249, metadata !1815, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1817, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !1972
  br i1 %250, label %265, label %322, !dbg !1974

265:                                              ; preds = %261
  br i1 %254, label %304, label %266, !dbg !1974

266:                                              ; preds = %265, %266
  %267 = phi i64 [ %301, %266 ], [ 0, %265 ]
  %268 = phi float [ %300, %266 ], [ 0.000000e+00, %265 ]
  %269 = phi i64 [ %302, %266 ], [ %255, %265 ]
  call void @llvm.dbg.value(metadata float %268, metadata !1817, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %267, metadata !1816, metadata !DIExpression()), !dbg !1972
  %270 = getelementptr inbounds float, float* %248, i64 %267, !dbg !1975
  %271 = load float, float* %270, align 4, !dbg !1975, !tbaa !1725
  %272 = getelementptr inbounds float, float* %264, i64 %267, !dbg !1976
  %273 = load float, float* %272, align 4, !dbg !1976, !tbaa !1725
  %274 = fsub float %271, %273, !dbg !1977
  %275 = fmul float %274, %274, !dbg !1978
  %276 = fadd float %268, %275, !dbg !1979
  call void @llvm.dbg.value(metadata float %276, metadata !1817, metadata !DIExpression()), !dbg !1972
  %277 = or i64 %267, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %277, metadata !1816, metadata !DIExpression()), !dbg !1972
  %278 = getelementptr inbounds float, float* %248, i64 %277, !dbg !1975
  %279 = load float, float* %278, align 4, !dbg !1975, !tbaa !1725
  %280 = getelementptr inbounds float, float* %264, i64 %277, !dbg !1976
  %281 = load float, float* %280, align 4, !dbg !1976, !tbaa !1725
  %282 = fsub float %279, %281, !dbg !1977
  %283 = fmul float %282, %282, !dbg !1978
  %284 = fadd float %276, %283, !dbg !1979
  call void @llvm.dbg.value(metadata float %284, metadata !1817, metadata !DIExpression()), !dbg !1972
  %285 = or i64 %267, 2, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %285, metadata !1816, metadata !DIExpression()), !dbg !1972
  %286 = getelementptr inbounds float, float* %248, i64 %285, !dbg !1975
  %287 = load float, float* %286, align 4, !dbg !1975, !tbaa !1725
  %288 = getelementptr inbounds float, float* %264, i64 %285, !dbg !1976
  %289 = load float, float* %288, align 4, !dbg !1976, !tbaa !1725
  %290 = fsub float %287, %289, !dbg !1977
  %291 = fmul float %290, %290, !dbg !1978
  %292 = fadd float %284, %291, !dbg !1979
  call void @llvm.dbg.value(metadata float %292, metadata !1817, metadata !DIExpression()), !dbg !1972
  %293 = or i64 %267, 3, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %293, metadata !1816, metadata !DIExpression()), !dbg !1972
  %294 = getelementptr inbounds float, float* %248, i64 %293, !dbg !1975
  %295 = load float, float* %294, align 4, !dbg !1975, !tbaa !1725
  %296 = getelementptr inbounds float, float* %264, i64 %293, !dbg !1976
  %297 = load float, float* %296, align 4, !dbg !1976, !tbaa !1725
  %298 = fsub float %295, %297, !dbg !1977
  %299 = fmul float %298, %298, !dbg !1978
  %300 = fadd float %292, %299, !dbg !1979
  call void @llvm.dbg.value(metadata float %300, metadata !1817, metadata !DIExpression()), !dbg !1972
  %301 = add nuw nsw i64 %267, 4, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %301, metadata !1816, metadata !DIExpression()), !dbg !1972
  %302 = add i64 %269, -4, !dbg !1974
  %303 = icmp eq i64 %302, 0, !dbg !1974
  br i1 %303, label %304, label %266, !dbg !1974, !llvm.loop !1981

304:                                              ; preds = %266, %265
  %305 = phi float [ undef, %265 ], [ %300, %266 ]
  %306 = phi i64 [ 0, %265 ], [ %301, %266 ]
  %307 = phi float [ 0.000000e+00, %265 ], [ %300, %266 ]
  br i1 %256, label %322, label %308, !dbg !1974

308:                                              ; preds = %304, %308
  %309 = phi i64 [ %319, %308 ], [ %306, %304 ]
  %310 = phi float [ %318, %308 ], [ %307, %304 ]
  %311 = phi i64 [ %320, %308 ], [ %253, %304 ]
  call void @llvm.dbg.value(metadata float %310, metadata !1817, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %309, metadata !1816, metadata !DIExpression()), !dbg !1972
  %312 = getelementptr inbounds float, float* %248, i64 %309, !dbg !1975
  %313 = load float, float* %312, align 4, !dbg !1975, !tbaa !1725
  %314 = getelementptr inbounds float, float* %264, i64 %309, !dbg !1976
  %315 = load float, float* %314, align 4, !dbg !1976, !tbaa !1725
  %316 = fsub float %313, %315, !dbg !1977
  %317 = fmul float %316, %316, !dbg !1978
  %318 = fadd float %310, %317, !dbg !1979
  call void @llvm.dbg.value(metadata float %318, metadata !1817, metadata !DIExpression()), !dbg !1972
  %319 = add nuw nsw i64 %309, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %319, metadata !1816, metadata !DIExpression()), !dbg !1972
  %320 = add i64 %311, -1, !dbg !1974
  %321 = icmp eq i64 %320, 0, !dbg !1974
  br i1 %321, label %322, label %308, !dbg !1974, !llvm.loop !1983

322:                                              ; preds = %304, %308, %261
  %323 = phi float [ 0.000000e+00, %261 ], [ %305, %304 ], [ %318, %308 ], !dbg !1972
  call void @llvm.dbg.value(metadata float %323, metadata !1817, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata float %323, metadata !269, metadata !DIExpression()), !dbg !1899
  %324 = getelementptr inbounds %struct.Point, %struct.Point* %244, i64 %262, i32 0, !dbg !1984
  %325 = load float, float* %324, align 8, !dbg !1984, !tbaa !1878
  %326 = fmul float %323, %325, !dbg !1986
  %327 = getelementptr inbounds %struct.Point, %struct.Point* %244, i64 %262, i32 3, !dbg !1987
  %328 = load float, float* %327, align 8, !dbg !1987, !tbaa !1882
  %329 = fcmp olt float %326, %328, !dbg !1988
  br i1 %329, label %330, label %332, !dbg !1989

330:                                              ; preds = %322
  store float %326, float* %327, align 8, !dbg !1990, !tbaa !1882
  %331 = getelementptr inbounds %struct.Point, %struct.Point* %244, i64 %262, i32 2, !dbg !1992
  store i64 %246, i64* %331, align 8, !dbg !1993, !tbaa !1885
  br label %332, !dbg !1994

332:                                              ; preds = %330, %322
  %333 = add i64 %262, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %333, metadata !265, metadata !DIExpression()), !dbg !1962
  %334 = icmp sgt i64 %17, %333, !dbg !1996
  br i1 %334, label %261, label %257, !dbg !1963, !llvm.loop !1997

335:                                              ; preds = %257, %226
  %336 = phi i32 [ %260, %257 ], [ %231, %226 ], !dbg !1970
  %337 = add nsw i32 %336, 1, !dbg !1970
  store i32 %337, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4, !dbg !1894, !tbaa !1801
  %338 = sext i32 %337 to i64, !dbg !1999
  %339 = load i64, i64* %7, align 8, !dbg !1895, !tbaa !1750
  %340 = icmp sgt i64 %339, %338, !dbg !1896
  br i1 %340, label %226, label %341, !dbg !1897, !llvm.loop !2000

341:                                              ; preds = %335, %114
  %342 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5mutex) #15, !dbg !2002
  store i1 true, i1* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1, !dbg !2003
  %343 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5mutex) #15, !dbg !2004
  %344 = tail call i32 @pthread_cond_broadcast(%union.pthread_cond_t* nonnull @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4cond) #15, !dbg !2005
  br label %345

345:                                              ; preds = %130, %341
  %346 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %4) #15, !dbg !2006
  store i1 false, i1* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1, !dbg !2007
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !272, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %13, metadata !273, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2008
  br i1 %20, label %347, label %376, !dbg !2009

347:                                              ; preds = %345
  %348 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !2010
  %349 = load %struct.Point*, %struct.Point** %348, align 8, !dbg !2010, !tbaa !1764
  %350 = shl i64 %13, 32, !dbg !2009
  %351 = ashr exact i64 %350, 32, !dbg !2009
  %352 = trunc i64 %11 to i32, !dbg !2009
  %353 = mul i32 %352, %3, !dbg !2009
  %354 = sext i32 %353 to i64, !dbg !2009
  %355 = sub i64 %17, %354, !dbg !2009
  %356 = xor i64 %354, -1, !dbg !2009
  %357 = add i64 %17, %356, !dbg !2009
  %358 = and i64 %355, 3, !dbg !2009
  %359 = icmp eq i64 %358, 0, !dbg !2009
  br i1 %359, label %371, label %360, !dbg !2009

360:                                              ; preds = %347, %360
  %361 = phi i64 [ %368, %360 ], [ %351, %347 ]
  %362 = phi double [ %367, %360 ], [ 0.000000e+00, %347 ]
  %363 = phi i64 [ %369, %360 ], [ %358, %347 ]
  call void @llvm.dbg.value(metadata i64 %361, metadata !273, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata double %362, metadata !272, metadata !DIExpression()), !dbg !1839
  %364 = getelementptr inbounds %struct.Point, %struct.Point* %349, i64 %361, i32 3, !dbg !2013
  %365 = load float, float* %364, align 8, !dbg !2013, !tbaa !1882
  %366 = fpext float %365 to double, !dbg !2014
  %367 = fadd double %362, %366, !dbg !2015
  call void @llvm.dbg.value(metadata double %367, metadata !272, metadata !DIExpression()), !dbg !1839
  %368 = add nsw i64 %361, 1, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %368, metadata !273, metadata !DIExpression()), !dbg !2008
  %369 = add i64 %363, -1, !dbg !2009
  %370 = icmp eq i64 %369, 0, !dbg !2009
  br i1 %370, label %371, label %360, !dbg !2009, !llvm.loop !2017

371:                                              ; preds = %360, %347
  %372 = phi i64 [ %351, %347 ], [ %368, %360 ]
  %373 = phi double [ 0.000000e+00, %347 ], [ %367, %360 ]
  %374 = phi double [ undef, %347 ], [ %367, %360 ]
  %375 = icmp ult i64 %357, 3, !dbg !2009
  br i1 %375, label %376, label %381, !dbg !2009

376:                                              ; preds = %371, %381, %345
  %377 = phi double [ 0.000000e+00, %345 ], [ %374, %371 ], [ %402, %381 ], !dbg !1839
  call void @llvm.dbg.value(metadata double %377, metadata !272, metadata !DIExpression()), !dbg !1839
  %378 = load double*, double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8, !dbg !2018, !tbaa !1768
  %379 = getelementptr inbounds double, double* %378, i64 %12, !dbg !2018
  store double %377, double* %379, align 8, !dbg !2019, !tbaa !2020
  %380 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %4) #15, !dbg !2022
  br i1 %38, label %405, label %480, !dbg !2023

381:                                              ; preds = %371, %381
  %382 = phi i64 [ %403, %381 ], [ %372, %371 ]
  %383 = phi double [ %402, %381 ], [ %373, %371 ]
  call void @llvm.dbg.value(metadata i64 %382, metadata !273, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata double %383, metadata !272, metadata !DIExpression()), !dbg !1839
  %384 = getelementptr inbounds %struct.Point, %struct.Point* %349, i64 %382, i32 3, !dbg !2013
  %385 = load float, float* %384, align 8, !dbg !2013, !tbaa !1882
  %386 = fpext float %385 to double, !dbg !2014
  %387 = fadd double %383, %386, !dbg !2015
  call void @llvm.dbg.value(metadata double %387, metadata !272, metadata !DIExpression()), !dbg !1839
  %388 = add nsw i64 %382, 1, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %388, metadata !273, metadata !DIExpression()), !dbg !2008
  %389 = getelementptr inbounds %struct.Point, %struct.Point* %349, i64 %388, i32 3, !dbg !2013
  %390 = load float, float* %389, align 8, !dbg !2013, !tbaa !1882
  %391 = fpext float %390 to double, !dbg !2014
  %392 = fadd double %387, %391, !dbg !2015
  call void @llvm.dbg.value(metadata double %392, metadata !272, metadata !DIExpression()), !dbg !1839
  %393 = add nsw i64 %382, 2, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %393, metadata !273, metadata !DIExpression()), !dbg !2008
  %394 = getelementptr inbounds %struct.Point, %struct.Point* %349, i64 %393, i32 3, !dbg !2013
  %395 = load float, float* %394, align 8, !dbg !2013, !tbaa !1882
  %396 = fpext float %395 to double, !dbg !2014
  %397 = fadd double %392, %396, !dbg !2015
  call void @llvm.dbg.value(metadata double %397, metadata !272, metadata !DIExpression()), !dbg !1839
  %398 = add nsw i64 %382, 3, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %398, metadata !273, metadata !DIExpression()), !dbg !2008
  %399 = getelementptr inbounds %struct.Point, %struct.Point* %349, i64 %398, i32 3, !dbg !2013
  %400 = load float, float* %399, align 8, !dbg !2013, !tbaa !1882
  %401 = fpext float %400 to double, !dbg !2014
  %402 = fadd double %397, %401, !dbg !2015
  call void @llvm.dbg.value(metadata double %402, metadata !272, metadata !DIExpression()), !dbg !1839
  %403 = add nsw i64 %382, 4, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %403, metadata !273, metadata !DIExpression()), !dbg !2008
  %404 = icmp sgt i64 %17, %403, !dbg !2024
  br i1 %404, label %381, label %376, !dbg !2009, !llvm.loop !2025

405:                                              ; preds = %376
  %406 = load i64, i64* %2, align 8, !dbg !2027, !tbaa !1769
  %407 = sitofp i64 %406 to float, !dbg !2028
  %408 = fmul float %407, %1, !dbg !2029
  %409 = fpext float %408 to double, !dbg !2030
  store double %409, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8, !dbg !2031, !tbaa !2020
  call void @llvm.dbg.value(metadata i32 0, metadata !275, metadata !DIExpression()), !dbg !2032
  %410 = load i32, i32* @_ZL5nproc, align 4, !dbg !2033, !tbaa !1801
  %411 = icmp sgt i32 %410, 0, !dbg !2035
  br i1 %411, label %414, label %412, !dbg !2036

412:                                              ; preds = %405
  %413 = load i8*, i8** bitcast (double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs to i8**), align 8, !dbg !2037, !tbaa !1768
  br label %440, !dbg !2036

414:                                              ; preds = %405
  %415 = load double*, double** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8, !dbg !2038, !tbaa !1768
  %416 = zext i32 %410 to i64, !dbg !2036
  %417 = bitcast double* %415 to i8*, !dbg !2036
  %418 = add nsw i64 %416, -1, !dbg !2036
  %419 = and i64 %416, 7, !dbg !2036
  %420 = icmp ult i64 %418, 7, !dbg !2036
  br i1 %420, label %423, label %421, !dbg !2036

421:                                              ; preds = %414
  %422 = sub nsw i64 %416, %419, !dbg !2036
  br label %442, !dbg !2036

423:                                              ; preds = %442, %414
  %424 = phi double [ undef, %414 ], [ %476, %442 ]
  %425 = phi i64 [ 0, %414 ], [ %477, %442 ]
  %426 = phi double [ %409, %414 ], [ %476, %442 ]
  %427 = icmp eq i64 %419, 0, !dbg !2036
  br i1 %427, label %438, label %428, !dbg !2036

428:                                              ; preds = %423, %428
  %429 = phi i64 [ %435, %428 ], [ %425, %423 ], !dbg !2032
  %430 = phi double [ %434, %428 ], [ %426, %423 ], !dbg !2032
  %431 = phi i64 [ %436, %428 ], [ %419, %423 ]
  call void @llvm.dbg.value(metadata i64 %429, metadata !275, metadata !DIExpression()), !dbg !2032
  %432 = getelementptr inbounds double, double* %415, i64 %429, !dbg !2040
  %433 = load double, double* %432, align 8, !dbg !2040, !tbaa !2020
  %434 = fadd double %433, %430, !dbg !2041
  %435 = add nuw nsw i64 %429, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %435, metadata !275, metadata !DIExpression()), !dbg !2032
  %436 = add i64 %431, -1, !dbg !2036
  %437 = icmp eq i64 %436, 0, !dbg !2036
  br i1 %437, label %438, label %428, !dbg !2036, !llvm.loop !2043

438:                                              ; preds = %428, %423
  %439 = phi double [ %424, %423 ], [ %434, %428 ], !dbg !2041
  store double %439, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8, !dbg !2041, !tbaa !2020
  br label %440, !dbg !2036

440:                                              ; preds = %412, %438
  %441 = phi i8* [ %413, %412 ], [ %417, %438 ], !dbg !2037
  tail call void @free(i8* %441) #15, !dbg !2044
  br label %480, !dbg !2045

442:                                              ; preds = %442, %421
  %443 = phi i64 [ 0, %421 ], [ %477, %442 ], !dbg !2032
  %444 = phi double [ %409, %421 ], [ %476, %442 ], !dbg !2032
  %445 = phi i64 [ %422, %421 ], [ %478, %442 ]
  call void @llvm.dbg.value(metadata i64 %443, metadata !275, metadata !DIExpression()), !dbg !2032
  %446 = getelementptr inbounds double, double* %415, i64 %443, !dbg !2040
  %447 = load double, double* %446, align 8, !dbg !2040, !tbaa !2020
  %448 = fadd double %447, %444, !dbg !2041
  %449 = or i64 %443, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %449, metadata !275, metadata !DIExpression()), !dbg !2032
  %450 = getelementptr inbounds double, double* %415, i64 %449, !dbg !2040
  %451 = load double, double* %450, align 8, !dbg !2040, !tbaa !2020
  %452 = fadd double %451, %448, !dbg !2041
  %453 = or i64 %443, 2, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %453, metadata !275, metadata !DIExpression()), !dbg !2032
  %454 = getelementptr inbounds double, double* %415, i64 %453, !dbg !2040
  %455 = load double, double* %454, align 8, !dbg !2040, !tbaa !2020
  %456 = fadd double %455, %452, !dbg !2041
  %457 = or i64 %443, 3, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %457, metadata !275, metadata !DIExpression()), !dbg !2032
  %458 = getelementptr inbounds double, double* %415, i64 %457, !dbg !2040
  %459 = load double, double* %458, align 8, !dbg !2040, !tbaa !2020
  %460 = fadd double %459, %456, !dbg !2041
  %461 = or i64 %443, 4, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %461, metadata !275, metadata !DIExpression()), !dbg !2032
  %462 = getelementptr inbounds double, double* %415, i64 %461, !dbg !2040
  %463 = load double, double* %462, align 8, !dbg !2040, !tbaa !2020
  %464 = fadd double %463, %460, !dbg !2041
  %465 = or i64 %443, 5, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %465, metadata !275, metadata !DIExpression()), !dbg !2032
  %466 = getelementptr inbounds double, double* %415, i64 %465, !dbg !2040
  %467 = load double, double* %466, align 8, !dbg !2040, !tbaa !2020
  %468 = fadd double %467, %464, !dbg !2041
  %469 = or i64 %443, 6, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %469, metadata !275, metadata !DIExpression()), !dbg !2032
  %470 = getelementptr inbounds double, double* %415, i64 %469, !dbg !2040
  %471 = load double, double* %470, align 8, !dbg !2040, !tbaa !2020
  %472 = fadd double %471, %468, !dbg !2041
  %473 = or i64 %443, 7, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %473, metadata !275, metadata !DIExpression()), !dbg !2032
  %474 = getelementptr inbounds double, double* %415, i64 %473, !dbg !2040
  %475 = load double, double* %474, align 8, !dbg !2040, !tbaa !2020
  %476 = fadd double %475, %472, !dbg !2041
  %477 = add nuw nsw i64 %443, 8, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %477, metadata !275, metadata !DIExpression()), !dbg !2032
  %478 = add i64 %445, -8, !dbg !2036
  %479 = icmp eq i64 %478, 0, !dbg !2036
  br i1 %479, label %423, label %442, !dbg !2036, !llvm.loop !2046

480:                                              ; preds = %440, %376
  %481 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %4) #15, !dbg !2048
  %482 = load double, double* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 8, !dbg !2049, !tbaa !2020
  %483 = fptrunc double %482 to float, !dbg !2050
  ret float %483, !dbg !2051
}

; Function Attrs: nounwind
declare !dbg !27 dso_local i32 @pthread_barrier_wait(%union.pthread_barrier_t*) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !42 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) local_unnamed_addr #5

declare !dbg !74 dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !116 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !118 dso_local i32 @pthread_cond_broadcast(%union.pthread_cond_t*) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !121 dso_local void @free(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local double @_Z5pgainlP6PointsdPliP17pthread_barrier_t(i64 %0, %struct.Points* nocapture readonly %1, double %2, i64* nocapture %3, i32 %4, %union.pthread_barrier_t* %5) local_unnamed_addr #0 !dbg !293 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !297, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata %struct.Points* %1, metadata !298, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double %2, metadata !299, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64* %3, metadata !300, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 %4, metadata !301, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata %union.pthread_barrier_t* %5, metadata !302, metadata !DIExpression()), !dbg !2052
  %7 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2053
  %8 = getelementptr inbounds %struct.Points, %struct.Points* %1, i64 0, i32 0, !dbg !2054
  %9 = load i64, i64* %8, align 8, !dbg !2054, !tbaa !1750
  %10 = load i32, i32* @_ZL5nproc, align 4, !dbg !2055, !tbaa !1801
  %11 = sext i32 %10 to i64, !dbg !2055
  %12 = sdiv i64 %9, %11, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %12, metadata !303, metadata !DIExpression()), !dbg !2052
  %13 = sext i32 %4 to i64, !dbg !2057
  %14 = mul nsw i64 %12, %13, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %14, metadata !304, metadata !DIExpression()), !dbg !2052
  %15 = add nsw i64 %14, %12, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %15, metadata !305, metadata !DIExpression()), !dbg !2052
  %16 = add nsw i32 %10, -1, !dbg !2060
  %17 = icmp eq i32 %16, %4, !dbg !2062
  %18 = select i1 %17, i64 %9, i64 %15, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %18, metadata !305, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 0, metadata !307, metadata !DIExpression()), !dbg !2052
  %19 = load i64, i64* %3, align 8, !dbg !2064, !tbaa !1769
  %20 = trunc i64 %19 to i32, !dbg !2064
  %21 = add i32 %20, 2, !dbg !2064
  call void @llvm.dbg.value(metadata i32 %21, metadata !308, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 64, metadata !309, metadata !DIExpression()), !dbg !2052
  %22 = and i32 %21, 63, !dbg !2065
  %23 = icmp eq i32 %22, 0, !dbg !2065
  br i1 %23, label %28, label %24, !dbg !2067

24:                                               ; preds = %6
  %25 = sdiv i32 %21, 64, !dbg !2068
  %26 = shl nsw i32 %25, 6, !dbg !2070
  %27 = add i32 %26, 64, !dbg !2070
  call void @llvm.dbg.value(metadata i32 %27, metadata !308, metadata !DIExpression()), !dbg !2052
  br label %28, !dbg !2071

28:                                               ; preds = %6, %24
  %29 = phi i32 [ %27, %24 ], [ %21, %6 ], !dbg !2052
  call void @llvm.dbg.value(metadata i32 %29, metadata !308, metadata !DIExpression()), !dbg !2052
  %30 = add nsw i32 %29, -2, !dbg !2072
  call void @llvm.dbg.value(metadata i32 %30, metadata !310, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !311, metadata !DIExpression()), !dbg !2052
  %31 = icmp eq i32 %4, 0, !dbg !2073
  br i1 %31, label %32, label %38, !dbg !2075

32:                                               ; preds = %28
  %33 = add nsw i32 %10, 1, !dbg !2076
  %34 = mul nsw i32 %29, %33, !dbg !2078
  %35 = sext i32 %34 to i64, !dbg !2079
  %36 = shl nsw i64 %35, 3, !dbg !2080
  %37 = tail call noalias i8* @malloc(i64 %36) #15, !dbg !2081
  store i8* %37, i8** bitcast (double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem to i8**), align 8, !dbg !2082, !tbaa !1768
  store double 0.000000e+00, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8, !dbg !2083, !tbaa !2020
  store i32 0, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4, !dbg !2084, !tbaa !1801
  br label %38, !dbg !2085

38:                                               ; preds = %32, %28
  %39 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2086
  call void @llvm.dbg.value(metadata i32 0, metadata !312, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %14, metadata !313, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2087
  call void @llvm.dbg.value(metadata i32 0, metadata !312, metadata !DIExpression()), !dbg !2052
  %40 = shl i64 %14, 32, !dbg !2088
  %41 = ashr exact i64 %40, 32, !dbg !2088
  %42 = icmp sgt i64 %18, %41, !dbg !2090
  br i1 %42, label %43, label %69, !dbg !2091

43:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 %14, metadata !313, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2087
  %44 = load i8*, i8** @_ZL9is_center, align 8, !dbg !2092, !tbaa !1768
  %45 = load i32*, i32** @_ZL12center_table, align 8, !dbg !2095
  %46 = shl i64 %14, 32, !dbg !2091
  %47 = ashr exact i64 %46, 32, !dbg !2091
  %48 = trunc i64 %12 to i32, !dbg !2091
  %49 = mul i32 %48, %4, !dbg !2091
  %50 = sext i32 %49 to i64, !dbg !2091
  %51 = sub i64 %18, %50, !dbg !2091
  %52 = and i64 %51, 1, !dbg !2091
  %53 = add nsw i64 %50, 1, !dbg !2091
  %54 = icmp eq i64 %18, %53, !dbg !2091
  br i1 %54, label %57, label %55, !dbg !2091

55:                                               ; preds = %43
  %56 = sub i64 %51, %52, !dbg !2091
  br label %88, !dbg !2091

57:                                               ; preds = %685, %43
  %58 = phi i32 [ undef, %43 ], [ %686, %685 ]
  %59 = phi i64 [ %47, %43 ], [ %687, %685 ]
  %60 = phi i32 [ 0, %43 ], [ %686, %685 ]
  %61 = icmp eq i64 %52, 0, !dbg !2097
  br i1 %61, label %69, label %62, !dbg !2097

62:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i32 %60, metadata !312, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %59, metadata !313, metadata !DIExpression()), !dbg !2087
  %63 = getelementptr inbounds i8, i8* %44, i64 %59, !dbg !2098
  %64 = load i8, i8* %63, align 1, !dbg !2098, !tbaa !2099, !range !2101
  %65 = icmp eq i8 %64, 0, !dbg !2098
  br i1 %65, label %69, label %66, !dbg !2097

66:                                               ; preds = %62
  %67 = add nsw i32 %60, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %67, metadata !312, metadata !DIExpression()), !dbg !2052
  %68 = getelementptr inbounds i32, i32* %45, i64 %59, !dbg !2103
  store i32 %60, i32* %68, align 4, !dbg !2104, !tbaa !1801
  br label %69, !dbg !2105

69:                                               ; preds = %57, %62, %66, %38
  %70 = phi i32 [ 0, %38 ], [ %58, %57 ], [ %67, %66 ], [ %60, %62 ], !dbg !2052
  call void @llvm.dbg.value(metadata i32 %70, metadata !312, metadata !DIExpression()), !dbg !2052
  %71 = sitofp i32 %70 to double, !dbg !2106
  %72 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8, !dbg !2107, !tbaa !1768
  %73 = mul nsw i32 %29, %4, !dbg !2108
  %74 = sext i32 %73 to i64, !dbg !2107
  %75 = getelementptr inbounds double, double* %72, i64 %74, !dbg !2107
  store double %71, double* %75, align 8, !dbg !2109, !tbaa !2020
  %76 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2110
  %77 = load i32, i32* @_ZL5nproc, align 4, !dbg !2111
  %78 = icmp sgt i32 %77, 0, !dbg !2112
  %79 = and i1 %31, %78, !dbg !2113
  call void @llvm.dbg.value(metadata i32 0, metadata !318, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 0, metadata !315, metadata !DIExpression()), !dbg !2115
  br i1 %79, label %80, label %132, !dbg !2113

80:                                               ; preds = %69
  %81 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8, !dbg !2116, !tbaa !1768
  %82 = sext i32 %29 to i64, !dbg !2117
  %83 = zext i32 %77 to i64, !dbg !2117
  %84 = and i64 %83, 1, !dbg !2117
  %85 = icmp eq i32 %77, 1, !dbg !2117
  br i1 %85, label %124, label %86, !dbg !2117

86:                                               ; preds = %80
  %87 = sub nsw i64 %83, %84, !dbg !2117
  br label %104, !dbg !2117

88:                                               ; preds = %685, %55
  %89 = phi i64 [ %47, %55 ], [ %687, %685 ]
  %90 = phi i32 [ 0, %55 ], [ %686, %685 ]
  %91 = phi i64 [ %56, %55 ], [ %688, %685 ]
  call void @llvm.dbg.value(metadata i32 %90, metadata !312, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %89, metadata !313, metadata !DIExpression()), !dbg !2087
  %92 = getelementptr inbounds i8, i8* %44, i64 %89, !dbg !2098
  %93 = load i8, i8* %92, align 1, !dbg !2098, !tbaa !2099, !range !2101
  %94 = icmp eq i8 %93, 0, !dbg !2098
  br i1 %94, label %98, label %95, !dbg !2097

95:                                               ; preds = %88
  %96 = add nsw i32 %90, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %96, metadata !312, metadata !DIExpression()), !dbg !2052
  %97 = getelementptr inbounds i32, i32* %45, i64 %89, !dbg !2103
  store i32 %90, i32* %97, align 4, !dbg !2104, !tbaa !1801
  br label %98, !dbg !2105

98:                                               ; preds = %88, %95
  %99 = phi i32 [ %96, %95 ], [ %90, %88 ], !dbg !2052
  call void @llvm.dbg.value(metadata i32 %99, metadata !312, metadata !DIExpression()), !dbg !2052
  %100 = add nsw i64 %89, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %100, metadata !313, metadata !DIExpression()), !dbg !2087
  %101 = getelementptr inbounds i8, i8* %44, i64 %100, !dbg !2098
  %102 = load i8, i8* %101, align 1, !dbg !2098, !tbaa !2099, !range !2101
  %103 = icmp eq i8 %102, 0, !dbg !2098
  br i1 %103, label %685, label %682, !dbg !2097

104:                                              ; preds = %104, %86
  %105 = phi i64 [ 0, %86 ], [ %121, %104 ]
  %106 = phi i32 [ 0, %86 ], [ %120, %104 ]
  %107 = phi i64 [ %87, %86 ], [ %122, %104 ]
  call void @llvm.dbg.value(metadata i64 %105, metadata !318, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %106, metadata !315, metadata !DIExpression()), !dbg !2115
  %108 = mul nsw i64 %105, %82, !dbg !2119
  %109 = getelementptr inbounds double, double* %81, i64 %108, !dbg !2120
  %110 = load double, double* %109, align 8, !dbg !2120, !tbaa !2020
  %111 = fptosi double %110 to i32, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %111, metadata !320, metadata !DIExpression()), !dbg !2116
  %112 = sitofp i32 %106 to double, !dbg !2121
  store double %112, double* %109, align 8, !dbg !2122, !tbaa !2020
  %113 = add nsw i32 %106, %111, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %113, metadata !315, metadata !DIExpression()), !dbg !2115
  %114 = or i64 %105, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %114, metadata !318, metadata !DIExpression()), !dbg !2114
  %115 = mul nsw i64 %114, %82, !dbg !2119
  %116 = getelementptr inbounds double, double* %81, i64 %115, !dbg !2120
  %117 = load double, double* %116, align 8, !dbg !2120, !tbaa !2020
  %118 = fptosi double %117 to i32, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %118, metadata !320, metadata !DIExpression()), !dbg !2116
  %119 = sitofp i32 %113 to double, !dbg !2121
  store double %119, double* %116, align 8, !dbg !2122, !tbaa !2020
  %120 = add nsw i32 %113, %118, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %120, metadata !315, metadata !DIExpression()), !dbg !2115
  %121 = add nuw nsw i64 %105, 2, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %121, metadata !318, metadata !DIExpression()), !dbg !2114
  %122 = add i64 %107, -2, !dbg !2117
  %123 = icmp eq i64 %122, 0, !dbg !2117
  br i1 %123, label %124, label %104, !dbg !2117, !llvm.loop !2125

124:                                              ; preds = %104, %80
  %125 = phi i64 [ 0, %80 ], [ %121, %104 ]
  %126 = phi i32 [ 0, %80 ], [ %120, %104 ]
  %127 = icmp eq i64 %84, 0, !dbg !2117
  br i1 %127, label %132, label %128, !dbg !2117

128:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 %125, metadata !318, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %126, metadata !315, metadata !DIExpression()), !dbg !2115
  %129 = mul nsw i64 %125, %82, !dbg !2119
  %130 = getelementptr inbounds double, double* %81, i64 %129, !dbg !2120
  call void @llvm.dbg.value(metadata i32 undef, metadata !320, metadata !DIExpression()), !dbg !2116
  %131 = sitofp i32 %126 to double, !dbg !2121
  store double %131, double* %130, align 8, !dbg !2122, !tbaa !2020
  call void @llvm.dbg.value(metadata i32 undef, metadata !315, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %125, metadata !318, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2114
  br label %132, !dbg !2127

132:                                              ; preds = %128, %124, %69
  %133 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %14, metadata !323, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2128
  br i1 %42, label %136, label %134, !dbg !2129

134:                                              ; preds = %132
  %135 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8, !dbg !2130, !tbaa !1768
  br label %165, !dbg !2129

136:                                              ; preds = %132
  %137 = load i8*, i8** @_ZL9is_center, align 8, !dbg !2131, !tbaa !1768
  %138 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8, !dbg !2135
  %139 = getelementptr inbounds double, double* %138, i64 %74, !dbg !2135
  %140 = load i32*, i32** @_ZL12center_table, align 8, !dbg !2135
  %141 = shl i64 %14, 32, !dbg !2129
  %142 = ashr exact i64 %141, 32, !dbg !2129
  %143 = trunc i64 %12 to i32, !dbg !2129
  %144 = mul i32 %143, %4, !dbg !2129
  %145 = sext i32 %144 to i64, !dbg !2129
  %146 = sub i64 %18, %145, !dbg !2129
  %147 = and i64 %146, 1, !dbg !2129
  %148 = icmp eq i64 %147, 0, !dbg !2129
  br i1 %148, label %161, label %149, !dbg !2129

149:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i64 %142, metadata !323, metadata !DIExpression()), !dbg !2128
  %150 = getelementptr inbounds i8, i8* %137, i64 %142, !dbg !2137
  %151 = load i8, i8* %150, align 1, !dbg !2137, !tbaa !2099, !range !2101
  %152 = icmp eq i8 %151, 0, !dbg !2137
  br i1 %152, label %159, label %153, !dbg !2138

153:                                              ; preds = %149
  %154 = load double, double* %139, align 8, !dbg !2139, !tbaa !2020
  %155 = fptosi double %154 to i32, !dbg !2139
  %156 = getelementptr inbounds i32, i32* %140, i64 %142, !dbg !2140
  %157 = load i32, i32* %156, align 4, !dbg !2141, !tbaa !1801
  %158 = add nsw i32 %157, %155, !dbg !2141
  store i32 %158, i32* %156, align 4, !dbg !2141, !tbaa !1801
  br label %159, !dbg !2142

159:                                              ; preds = %153, %149
  %160 = add nsw i64 %142, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %160, metadata !323, metadata !DIExpression()), !dbg !2128
  br label %161, !dbg !2129

161:                                              ; preds = %136, %159
  %162 = phi i64 [ %142, %136 ], [ %160, %159 ]
  %163 = add nsw i64 %145, 1, !dbg !2129
  %164 = icmp eq i64 %18, %163, !dbg !2129
  br i1 %164, label %165, label %174, !dbg !2129

165:                                              ; preds = %161, %679, %134
  %166 = phi double* [ %135, %134 ], [ %138, %679 ], [ %138, %161 ], !dbg !2130
  %167 = load i8*, i8** @_ZL17switch_membership, align 8, !dbg !2144, !tbaa !1768
  %168 = getelementptr inbounds i8, i8* %167, i64 %14, !dbg !2145
  %169 = sub nsw i64 %18, %14, !dbg !2146
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %168, i8 0, i64 %169, i1 false), !dbg !2147
  %170 = getelementptr inbounds double, double* %166, i64 %74, !dbg !2148
  %171 = bitcast double* %170 to i8*, !dbg !2149
  %172 = sext i32 %29 to i64, !dbg !2150
  %173 = shl nsw i64 %172, 3, !dbg !2151
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %171, i8 0, i64 %173, i1 false), !dbg !2149
  br i1 %31, label %190, label %196, !dbg !2152

174:                                              ; preds = %161, %679
  %175 = phi i64 [ %680, %679 ], [ %162, %161 ]
  call void @llvm.dbg.value(metadata i64 %175, metadata !323, metadata !DIExpression()), !dbg !2128
  %176 = getelementptr inbounds i8, i8* %137, i64 %175, !dbg !2137
  %177 = load i8, i8* %176, align 1, !dbg !2137, !tbaa !2099, !range !2101
  %178 = icmp eq i8 %177, 0, !dbg !2137
  br i1 %178, label %185, label %179, !dbg !2138

179:                                              ; preds = %174
  %180 = load double, double* %139, align 8, !dbg !2139, !tbaa !2020
  %181 = fptosi double %180 to i32, !dbg !2139
  %182 = getelementptr inbounds i32, i32* %140, i64 %175, !dbg !2140
  %183 = load i32, i32* %182, align 4, !dbg !2141, !tbaa !1801
  %184 = add nsw i32 %183, %181, !dbg !2141
  store i32 %184, i32* %182, align 4, !dbg !2141, !tbaa !1801
  br label %185, !dbg !2142

185:                                              ; preds = %174, %179
  %186 = add nsw i64 %175, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %186, metadata !323, metadata !DIExpression()), !dbg !2128
  %187 = getelementptr inbounds i8, i8* %137, i64 %186, !dbg !2137
  %188 = load i8, i8* %187, align 1, !dbg !2137, !tbaa !2099, !range !2101
  %189 = icmp eq i8 %188, 0, !dbg !2137
  br i1 %189, label %679, label %673, !dbg !2138

190:                                              ; preds = %165
  %191 = load i32, i32* @_ZL5nproc, align 4, !dbg !2153, !tbaa !1801
  %192 = mul nsw i32 %191, %29, !dbg !2155
  %193 = sext i32 %192 to i64, !dbg !2156
  %194 = getelementptr inbounds double, double* %166, i64 %193, !dbg !2156
  %195 = bitcast double* %194 to i8*, !dbg !2157
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %195, i8 0, i64 %173, i1 false), !dbg !2157
  br label %196, !dbg !2157

196:                                              ; preds = %190, %165
  %197 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2158
  %198 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8, !dbg !2159, !tbaa !1768
  %199 = getelementptr inbounds double, double* %198, i64 %74, !dbg !2159
  call void @llvm.dbg.value(metadata double* %199, metadata !325, metadata !DIExpression()), !dbg !2052
  %200 = load i32, i32* @_ZL5nproc, align 4, !dbg !2160, !tbaa !1801
  %201 = mul nsw i32 %200, %29, !dbg !2161
  %202 = sext i32 %201 to i64, !dbg !2162
  %203 = getelementptr inbounds double, double* %198, i64 %202, !dbg !2162
  call void @llvm.dbg.value(metadata double* %203, metadata !326, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %14, metadata !306, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2052
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !311, metadata !DIExpression()), !dbg !2052
  br i1 %42, label %206, label %204, !dbg !2163

204:                                              ; preds = %196
  call void @llvm.dbg.value(metadata double %313, metadata !311, metadata !DIExpression()), !dbg !2052
  %205 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %14, metadata !335, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2165
  call void @llvm.dbg.value(metadata i32 0, metadata !307, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double %313, metadata !311, metadata !DIExpression()), !dbg !2052
  br label %318, !dbg !2166

206:                                              ; preds = %196
  %207 = getelementptr inbounds %struct.Points, %struct.Points* %1, i64 0, i32 2, !dbg !2167
  %208 = load %struct.Point*, %struct.Point** %207, align 8, !dbg !2167, !tbaa !1764
  %209 = getelementptr inbounds %struct.Point, %struct.Point* %208, i64 %0, i32 1, !dbg !2167
  %210 = getelementptr inbounds %struct.Points, %struct.Points* %1, i64 0, i32 1, !dbg !2167
  %211 = load i32, i32* %210, align 8, !dbg !2167, !tbaa !1856
  %212 = icmp sgt i32 %211, 0, !dbg !2168
  %213 = zext i32 %211 to i64, !dbg !2168
  %214 = load i32*, i32** @_ZL12center_table, align 8, !dbg !2170
  %215 = load i8*, i8** @_ZL17switch_membership, align 8, !dbg !2171
  %216 = shl i64 %14, 32, !dbg !2163
  %217 = ashr exact i64 %216, 32, !dbg !2163
  %218 = add nsw i64 %213, -1, !dbg !2163
  %219 = and i64 %213, 3, !dbg !2173
  %220 = icmp ult i64 %218, 3, !dbg !2173
  %221 = sub nsw i64 %213, %219, !dbg !2173
  %222 = icmp eq i64 %219, 0, !dbg !2173
  br label %223, !dbg !2163

223:                                              ; preds = %206, %312
  %224 = phi i64 [ %217, %206 ], [ %314, %312 ]
  %225 = phi double [ 0.000000e+00, %206 ], [ %313, %312 ]
  call void @llvm.dbg.value(metadata i64 %224, metadata !306, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double %225, metadata !311, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 undef, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2174
  %226 = getelementptr inbounds %struct.Point, %struct.Point* %208, i64 %224, i32 1, !dbg !2175
  %227 = load float*, float** %226, align 8, !dbg !2175, !tbaa.struct !1767
  call void @llvm.dbg.value(metadata float* %227, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2174
  call void @llvm.dbg.value(metadata i64 undef, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2174
  %228 = load float*, float** %209, align 8, !dbg !2176, !tbaa.struct !1767
  call void @llvm.dbg.value(metadata float* %228, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2174
  call void @llvm.dbg.value(metadata i32 %211, metadata !1815, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1817, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !2174
  br i1 %212, label %229, label %286, !dbg !2177

229:                                              ; preds = %223
  br i1 %220, label %268, label %230, !dbg !2177

230:                                              ; preds = %229, %230
  %231 = phi i64 [ %265, %230 ], [ 0, %229 ]
  %232 = phi float [ %264, %230 ], [ 0.000000e+00, %229 ]
  %233 = phi i64 [ %266, %230 ], [ %221, %229 ]
  call void @llvm.dbg.value(metadata float %232, metadata !1817, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i64 %231, metadata !1816, metadata !DIExpression()), !dbg !2174
  %234 = getelementptr inbounds float, float* %227, i64 %231, !dbg !2178
  %235 = load float, float* %234, align 4, !dbg !2178, !tbaa !1725
  %236 = getelementptr inbounds float, float* %228, i64 %231, !dbg !2179
  %237 = load float, float* %236, align 4, !dbg !2179, !tbaa !1725
  %238 = fsub float %235, %237, !dbg !2180
  %239 = fmul float %238, %238, !dbg !2181
  %240 = fadd float %232, %239, !dbg !2182
  call void @llvm.dbg.value(metadata float %240, metadata !1817, metadata !DIExpression()), !dbg !2174
  %241 = or i64 %231, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %241, metadata !1816, metadata !DIExpression()), !dbg !2174
  %242 = getelementptr inbounds float, float* %227, i64 %241, !dbg !2178
  %243 = load float, float* %242, align 4, !dbg !2178, !tbaa !1725
  %244 = getelementptr inbounds float, float* %228, i64 %241, !dbg !2179
  %245 = load float, float* %244, align 4, !dbg !2179, !tbaa !1725
  %246 = fsub float %243, %245, !dbg !2180
  %247 = fmul float %246, %246, !dbg !2181
  %248 = fadd float %240, %247, !dbg !2182
  call void @llvm.dbg.value(metadata float %248, metadata !1817, metadata !DIExpression()), !dbg !2174
  %249 = or i64 %231, 2, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %249, metadata !1816, metadata !DIExpression()), !dbg !2174
  %250 = getelementptr inbounds float, float* %227, i64 %249, !dbg !2178
  %251 = load float, float* %250, align 4, !dbg !2178, !tbaa !1725
  %252 = getelementptr inbounds float, float* %228, i64 %249, !dbg !2179
  %253 = load float, float* %252, align 4, !dbg !2179, !tbaa !1725
  %254 = fsub float %251, %253, !dbg !2180
  %255 = fmul float %254, %254, !dbg !2181
  %256 = fadd float %248, %255, !dbg !2182
  call void @llvm.dbg.value(metadata float %256, metadata !1817, metadata !DIExpression()), !dbg !2174
  %257 = or i64 %231, 3, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %257, metadata !1816, metadata !DIExpression()), !dbg !2174
  %258 = getelementptr inbounds float, float* %227, i64 %257, !dbg !2178
  %259 = load float, float* %258, align 4, !dbg !2178, !tbaa !1725
  %260 = getelementptr inbounds float, float* %228, i64 %257, !dbg !2179
  %261 = load float, float* %260, align 4, !dbg !2179, !tbaa !1725
  %262 = fsub float %259, %261, !dbg !2180
  %263 = fmul float %262, %262, !dbg !2181
  %264 = fadd float %256, %263, !dbg !2182
  call void @llvm.dbg.value(metadata float %264, metadata !1817, metadata !DIExpression()), !dbg !2174
  %265 = add nuw nsw i64 %231, 4, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %265, metadata !1816, metadata !DIExpression()), !dbg !2174
  %266 = add i64 %233, -4, !dbg !2177
  %267 = icmp eq i64 %266, 0, !dbg !2177
  br i1 %267, label %268, label %230, !dbg !2177, !llvm.loop !2184

268:                                              ; preds = %230, %229
  %269 = phi float [ undef, %229 ], [ %264, %230 ]
  %270 = phi i64 [ 0, %229 ], [ %265, %230 ]
  %271 = phi float [ 0.000000e+00, %229 ], [ %264, %230 ]
  br i1 %222, label %286, label %272, !dbg !2177

272:                                              ; preds = %268, %272
  %273 = phi i64 [ %283, %272 ], [ %270, %268 ]
  %274 = phi float [ %282, %272 ], [ %271, %268 ]
  %275 = phi i64 [ %284, %272 ], [ %219, %268 ]
  call void @llvm.dbg.value(metadata float %274, metadata !1817, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i64 %273, metadata !1816, metadata !DIExpression()), !dbg !2174
  %276 = getelementptr inbounds float, float* %227, i64 %273, !dbg !2178
  %277 = load float, float* %276, align 4, !dbg !2178, !tbaa !1725
  %278 = getelementptr inbounds float, float* %228, i64 %273, !dbg !2179
  %279 = load float, float* %278, align 4, !dbg !2179, !tbaa !1725
  %280 = fsub float %277, %279, !dbg !2180
  %281 = fmul float %280, %280, !dbg !2181
  %282 = fadd float %274, %281, !dbg !2182
  call void @llvm.dbg.value(metadata float %282, metadata !1817, metadata !DIExpression()), !dbg !2174
  %283 = add nuw nsw i64 %273, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %283, metadata !1816, metadata !DIExpression()), !dbg !2174
  %284 = add i64 %275, -1, !dbg !2177
  %285 = icmp eq i64 %284, 0, !dbg !2177
  br i1 %285, label %286, label %272, !dbg !2177, !llvm.loop !2186

286:                                              ; preds = %268, %272, %223
  %287 = phi float [ 0.000000e+00, %223 ], [ %269, %268 ], [ %282, %272 ], !dbg !2174
  call void @llvm.dbg.value(metadata float %287, metadata !1817, metadata !DIExpression()), !dbg !2174
  %288 = getelementptr inbounds %struct.Point, %struct.Point* %208, i64 %224, i32 0, !dbg !2187
  %289 = load float, float* %288, align 8, !dbg !2187, !tbaa !1878
  %290 = fmul float %287, %289, !dbg !2188
  call void @llvm.dbg.value(metadata float %290, metadata !327, metadata !DIExpression()), !dbg !2167
  %291 = getelementptr inbounds %struct.Point, %struct.Point* %208, i64 %224, i32 3, !dbg !2189
  %292 = load float, float* %291, align 8, !dbg !2189, !tbaa !1882
  call void @llvm.dbg.value(metadata float %292, metadata !331, metadata !DIExpression()), !dbg !2167
  %293 = fcmp olt float %290, %292, !dbg !2190
  br i1 %293, label %294, label %299, !dbg !2191

294:                                              ; preds = %286
  %295 = getelementptr inbounds i8, i8* %215, i64 %224, !dbg !2192
  store i8 1, i8* %295, align 1, !dbg !2193, !tbaa !2099
  %296 = fsub float %290, %292, !dbg !2194
  %297 = fpext float %296 to double, !dbg !2195
  %298 = fadd double %225, %297, !dbg !2196
  call void @llvm.dbg.value(metadata double %298, metadata !311, metadata !DIExpression()), !dbg !2052
  br label %312, !dbg !2197

299:                                              ; preds = %286
  %300 = getelementptr inbounds %struct.Point, %struct.Point* %208, i64 %224, i32 2, !dbg !2198
  %301 = load i64, i64* %300, align 8, !dbg !2198, !tbaa !1885
  call void @llvm.dbg.value(metadata i64 %301, metadata !332, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2170
  %302 = fsub float %292, %290, !dbg !2199
  %303 = fpext float %302 to double, !dbg !2200
  %304 = shl i64 %301, 32, !dbg !2201
  %305 = ashr exact i64 %304, 32, !dbg !2201
  %306 = getelementptr inbounds i32, i32* %214, i64 %305, !dbg !2201
  %307 = load i32, i32* %306, align 4, !dbg !2201, !tbaa !1801
  %308 = sext i32 %307 to i64, !dbg !2202
  %309 = getelementptr inbounds double, double* %199, i64 %308, !dbg !2202
  %310 = load double, double* %309, align 8, !dbg !2203, !tbaa !2020
  %311 = fadd double %310, %303, !dbg !2203
  store double %311, double* %309, align 8, !dbg !2203, !tbaa !2020
  br label %312

312:                                              ; preds = %299, %294
  %313 = phi double [ %298, %294 ], [ %225, %299 ], !dbg !2052
  call void @llvm.dbg.value(metadata double %313, metadata !311, metadata !DIExpression()), !dbg !2052
  %314 = add i64 %224, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %314, metadata !306, metadata !DIExpression()), !dbg !2052
  %315 = icmp sgt i64 %18, %314, !dbg !2205
  br i1 %315, label %223, label %316, !dbg !2163, !llvm.loop !2206

316:                                              ; preds = %312
  call void @llvm.dbg.value(metadata double %313, metadata !311, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double %313, metadata !311, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double %313, metadata !311, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double %313, metadata !311, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double %313, metadata !311, metadata !DIExpression()), !dbg !2052
  %317 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %14, metadata !335, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2165
  call void @llvm.dbg.value(metadata i32 0, metadata !307, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double %313, metadata !311, metadata !DIExpression()), !dbg !2052
  br i1 %42, label %321, label %318, !dbg !2166

318:                                              ; preds = %204, %316
  %319 = phi double [ 0.000000e+00, %204 ], [ %313, %316 ]
  %320 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8, !dbg !2208, !tbaa !1768
  br label %335, !dbg !2166

321:                                              ; preds = %316
  %322 = load i8*, i8** @_ZL9is_center, align 8, !dbg !2209, !tbaa !1768
  %323 = load i32, i32* @_ZL5nproc, align 4, !dbg !2210
  %324 = icmp sgt i32 %323, 0, !dbg !2210
  %325 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8, !dbg !2212
  %326 = load i32*, i32** @_ZL12center_table, align 8, !dbg !2212
  %327 = shl i64 %14, 32, !dbg !2166
  %328 = ashr exact i64 %327, 32, !dbg !2166
  %329 = zext i32 %323 to i64, !dbg !2210
  %330 = add nsw i64 %329, -1, !dbg !2166
  %331 = and i64 %329, 3, !dbg !2214
  %332 = icmp ult i64 %330, 3, !dbg !2214
  %333 = sub nsw i64 %329, %331, !dbg !2214
  %334 = icmp eq i64 %331, 0, !dbg !2214
  br label %347, !dbg !2166

335:                                              ; preds = %413, %318
  %336 = phi double* [ %320, %318 ], [ %325, %413 ], !dbg !2208
  %337 = phi double [ %319, %318 ], [ %414, %413 ], !dbg !2052
  %338 = phi i32 [ 0, %318 ], [ %415, %413 ], !dbg !2052
  call void @llvm.dbg.value(metadata double %337, metadata !311, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 %338, metadata !307, metadata !DIExpression()), !dbg !2052
  %339 = sitofp i32 %338 to double, !dbg !2215
  %340 = add nsw i32 %73, %30, !dbg !2216
  %341 = sext i32 %340 to i64, !dbg !2208
  %342 = getelementptr inbounds double, double* %336, i64 %341, !dbg !2208
  store double %339, double* %342, align 8, !dbg !2217, !tbaa !2020
  %343 = add nsw i32 %340, 1, !dbg !2218
  %344 = sext i32 %343 to i64, !dbg !2219
  %345 = getelementptr inbounds double, double* %336, i64 %344, !dbg !2219
  store double %337, double* %345, align 8, !dbg !2220, !tbaa !2020
  %346 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2221
  br i1 %31, label %418, label %480, !dbg !2222

347:                                              ; preds = %321, %413
  %348 = phi i64 [ %328, %321 ], [ %416, %413 ]
  %349 = phi i32 [ 0, %321 ], [ %415, %413 ]
  %350 = phi double [ %313, %321 ], [ %414, %413 ]
  call void @llvm.dbg.value(metadata i64 %348, metadata !335, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 %349, metadata !307, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double %350, metadata !311, metadata !DIExpression()), !dbg !2052
  %351 = getelementptr inbounds i8, i8* %322, i64 %348, !dbg !2223
  %352 = load i8, i8* %351, align 1, !dbg !2223, !tbaa !2099, !range !2101
  %353 = icmp eq i8 %352, 0, !dbg !2223
  br i1 %353, label %413, label %354, !dbg !2224

354:                                              ; preds = %347
  call void @llvm.dbg.value(metadata i32 0, metadata !342, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata double %2, metadata !337, metadata !DIExpression()), !dbg !2225
  %355 = getelementptr inbounds i32, i32* %326, i64 %348, !dbg !2225
  %356 = load i32, i32* %355, align 4, !dbg !2225, !tbaa !1801
  %357 = sext i32 %356 to i64, !dbg !2225
  br i1 %324, label %358, label %375, !dbg !2226

358:                                              ; preds = %354
  br i1 %332, label %359, label %383, !dbg !2226

359:                                              ; preds = %383, %358
  %360 = phi double [ undef, %358 ], [ %409, %383 ]
  %361 = phi i64 [ 0, %358 ], [ %410, %383 ]
  %362 = phi double [ %2, %358 ], [ %409, %383 ]
  br i1 %334, label %375, label %363, !dbg !2226

363:                                              ; preds = %359, %363
  %364 = phi i64 [ %372, %363 ], [ %361, %359 ]
  %365 = phi double [ %371, %363 ], [ %362, %359 ]
  %366 = phi i64 [ %373, %363 ], [ %331, %359 ]
  call void @llvm.dbg.value(metadata i64 %364, metadata !342, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata double %365, metadata !337, metadata !DIExpression()), !dbg !2225
  %367 = mul nsw i64 %364, %172, !dbg !2227
  %368 = add nsw i64 %367, %357, !dbg !2228
  %369 = getelementptr inbounds double, double* %325, i64 %368, !dbg !2229
  %370 = load double, double* %369, align 8, !dbg !2229, !tbaa !2020
  %371 = fadd double %365, %370, !dbg !2230
  call void @llvm.dbg.value(metadata double %371, metadata !337, metadata !DIExpression()), !dbg !2225
  %372 = add nuw nsw i64 %364, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %372, metadata !342, metadata !DIExpression()), !dbg !2214
  %373 = add i64 %366, -1, !dbg !2226
  %374 = icmp eq i64 %373, 0, !dbg !2226
  br i1 %374, label %375, label %363, !dbg !2226, !llvm.loop !2232

375:                                              ; preds = %359, %363, %354
  %376 = phi double [ %2, %354 ], [ %360, %359 ], [ %371, %363 ], !dbg !2225
  call void @llvm.dbg.value(metadata double %376, metadata !337, metadata !DIExpression()), !dbg !2225
  %377 = getelementptr inbounds double, double* %203, i64 %357, !dbg !2233
  store double %376, double* %377, align 8, !dbg !2234, !tbaa !2020
  %378 = fcmp ogt double %376, 0.000000e+00, !dbg !2235
  %379 = fsub double %350, %376, !dbg !2237
  %380 = select i1 %378, double %379, double %350, !dbg !2237
  %381 = zext i1 %378 to i32, !dbg !2237
  %382 = add nsw i32 %349, %381, !dbg !2237
  br label %413, !dbg !2237

383:                                              ; preds = %358, %383
  %384 = phi i64 [ %410, %383 ], [ 0, %358 ]
  %385 = phi double [ %409, %383 ], [ %2, %358 ]
  %386 = phi i64 [ %411, %383 ], [ %333, %358 ]
  call void @llvm.dbg.value(metadata i64 %384, metadata !342, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata double %385, metadata !337, metadata !DIExpression()), !dbg !2225
  %387 = mul nsw i64 %384, %172, !dbg !2227
  %388 = add nsw i64 %387, %357, !dbg !2228
  %389 = getelementptr inbounds double, double* %325, i64 %388, !dbg !2229
  %390 = load double, double* %389, align 8, !dbg !2229, !tbaa !2020
  %391 = fadd double %385, %390, !dbg !2230
  call void @llvm.dbg.value(metadata double %391, metadata !337, metadata !DIExpression()), !dbg !2225
  %392 = or i64 %384, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %392, metadata !342, metadata !DIExpression()), !dbg !2214
  %393 = mul nsw i64 %392, %172, !dbg !2227
  %394 = add nsw i64 %393, %357, !dbg !2228
  %395 = getelementptr inbounds double, double* %325, i64 %394, !dbg !2229
  %396 = load double, double* %395, align 8, !dbg !2229, !tbaa !2020
  %397 = fadd double %391, %396, !dbg !2230
  call void @llvm.dbg.value(metadata double %397, metadata !337, metadata !DIExpression()), !dbg !2225
  %398 = or i64 %384, 2, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %398, metadata !342, metadata !DIExpression()), !dbg !2214
  %399 = mul nsw i64 %398, %172, !dbg !2227
  %400 = add nsw i64 %399, %357, !dbg !2228
  %401 = getelementptr inbounds double, double* %325, i64 %400, !dbg !2229
  %402 = load double, double* %401, align 8, !dbg !2229, !tbaa !2020
  %403 = fadd double %397, %402, !dbg !2230
  call void @llvm.dbg.value(metadata double %403, metadata !337, metadata !DIExpression()), !dbg !2225
  %404 = or i64 %384, 3, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %404, metadata !342, metadata !DIExpression()), !dbg !2214
  %405 = mul nsw i64 %404, %172, !dbg !2227
  %406 = add nsw i64 %405, %357, !dbg !2228
  %407 = getelementptr inbounds double, double* %325, i64 %406, !dbg !2229
  %408 = load double, double* %407, align 8, !dbg !2229, !tbaa !2020
  %409 = fadd double %403, %408, !dbg !2230
  call void @llvm.dbg.value(metadata double %409, metadata !337, metadata !DIExpression()), !dbg !2225
  %410 = add nuw nsw i64 %384, 4, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %410, metadata !342, metadata !DIExpression()), !dbg !2214
  %411 = add i64 %386, -4, !dbg !2226
  %412 = icmp eq i64 %411, 0, !dbg !2226
  br i1 %412, label %359, label %383, !dbg !2226, !llvm.loop !2238

413:                                              ; preds = %375, %347
  %414 = phi double [ %350, %347 ], [ %380, %375 ], !dbg !2052
  %415 = phi i32 [ %349, %347 ], [ %382, %375 ], !dbg !2052
  call void @llvm.dbg.value(metadata i32 %415, metadata !307, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata double %414, metadata !311, metadata !DIExpression()), !dbg !2052
  %416 = add i64 %348, 1, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %416, metadata !335, metadata !DIExpression()), !dbg !2165
  %417 = icmp sgt i64 %18, %416, !dbg !2241
  br i1 %417, label %347, label %335, !dbg !2166, !llvm.loop !2242

418:                                              ; preds = %335
  store double %2, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8, !dbg !2244, !tbaa !2020
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()), !dbg !2245
  %419 = load i32, i32* @_ZL5nproc, align 4, !dbg !2246, !tbaa !1801
  %420 = icmp sgt i32 %419, 0, !dbg !2248
  br i1 %420, label %421, label %480, !dbg !2249

421:                                              ; preds = %418
  %422 = load double*, double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem, align 8, !dbg !2250, !tbaa !1768
  %423 = load i32, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4, !dbg !2252, !tbaa !1801
  %424 = sext i32 %30 to i64, !dbg !2249
  %425 = zext i32 %419 to i64, !dbg !2249
  %426 = and i64 %425, 1, !dbg !2249
  %427 = icmp eq i32 %419, 1, !dbg !2249
  br i1 %427, label %459, label %428, !dbg !2249

428:                                              ; preds = %421
  %429 = sub nsw i64 %425, %426, !dbg !2249
  br label %430, !dbg !2249

430:                                              ; preds = %430, %428
  %431 = phi i64 [ 0, %428 ], [ %456, %430 ], !dbg !2245
  %432 = phi double [ %2, %428 ], [ %455, %430 ], !dbg !2245
  %433 = phi i32 [ %423, %428 ], [ %451, %430 ], !dbg !2245
  %434 = phi i64 [ %429, %428 ], [ %457, %430 ]
  call void @llvm.dbg.value(metadata i64 %431, metadata !344, metadata !DIExpression()), !dbg !2245
  %435 = mul nsw i64 %431, %172, !dbg !2253
  %436 = add nsw i64 %435, %424, !dbg !2254
  %437 = getelementptr inbounds double, double* %422, i64 %436, !dbg !2255
  %438 = load double, double* %437, align 8, !dbg !2255, !tbaa !2020
  %439 = fptosi double %438 to i32, !dbg !2255
  %440 = add nsw i32 %433, %439, !dbg !2252
  %441 = add nsw i64 %436, 1, !dbg !2256
  %442 = getelementptr inbounds double, double* %422, i64 %441, !dbg !2257
  %443 = load double, double* %442, align 8, !dbg !2257, !tbaa !2020
  %444 = fadd double %443, %432, !dbg !2258
  %445 = or i64 %431, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %445, metadata !344, metadata !DIExpression()), !dbg !2245
  %446 = mul nsw i64 %445, %172, !dbg !2253
  %447 = add nsw i64 %446, %424, !dbg !2254
  %448 = getelementptr inbounds double, double* %422, i64 %447, !dbg !2255
  %449 = load double, double* %448, align 8, !dbg !2255, !tbaa !2020
  %450 = fptosi double %449 to i32, !dbg !2255
  %451 = add nsw i32 %440, %450, !dbg !2252
  %452 = add nsw i64 %447, 1, !dbg !2256
  %453 = getelementptr inbounds double, double* %422, i64 %452, !dbg !2257
  %454 = load double, double* %453, align 8, !dbg !2257, !tbaa !2020
  %455 = fadd double %454, %444, !dbg !2258
  %456 = add nuw nsw i64 %431, 2, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %456, metadata !344, metadata !DIExpression()), !dbg !2245
  %457 = add i64 %434, -2, !dbg !2249
  %458 = icmp eq i64 %457, 0, !dbg !2249
  br i1 %458, label %459, label %430, !dbg !2249, !llvm.loop !2260

459:                                              ; preds = %430, %421
  %460 = phi i32 [ undef, %421 ], [ %451, %430 ]
  %461 = phi double [ undef, %421 ], [ %455, %430 ]
  %462 = phi i64 [ 0, %421 ], [ %456, %430 ]
  %463 = phi double [ %2, %421 ], [ %455, %430 ]
  %464 = phi i32 [ %423, %421 ], [ %451, %430 ]
  %465 = icmp eq i64 %426, 0, !dbg !2249
  br i1 %465, label %477, label %466, !dbg !2249

466:                                              ; preds = %459
  call void @llvm.dbg.value(metadata i64 %462, metadata !344, metadata !DIExpression()), !dbg !2245
  %467 = mul nsw i64 %462, %172, !dbg !2253
  %468 = add nsw i64 %467, %424, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %462, metadata !344, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2245
  %469 = add nsw i64 %468, 1, !dbg !2256
  %470 = getelementptr inbounds double, double* %422, i64 %469, !dbg !2257
  %471 = load double, double* %470, align 8, !dbg !2257, !tbaa !2020
  %472 = fadd double %471, %463, !dbg !2258
  %473 = getelementptr inbounds double, double* %422, i64 %468, !dbg !2255
  %474 = load double, double* %473, align 8, !dbg !2255, !tbaa !2020
  %475 = fptosi double %474 to i32, !dbg !2255
  %476 = add nsw i32 %464, %475, !dbg !2252
  br label %477, !dbg !2252

477:                                              ; preds = %459, %466
  %478 = phi i32 [ %460, %459 ], [ %476, %466 ], !dbg !2252
  %479 = phi double [ %461, %459 ], [ %472, %466 ], !dbg !2258
  store i32 %478, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4, !dbg !2252, !tbaa !1801
  store double %479, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8, !dbg !2258, !tbaa !2020
  br label %480, !dbg !2249

480:                                              ; preds = %418, %477, %335
  %481 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2262
  %482 = load double, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8, !dbg !2263, !tbaa !2020
  %483 = fcmp olt double %482, 0.000000e+00, !dbg !2264
  br i1 %483, label %484, label %650, !dbg !2265

484:                                              ; preds = %480
  call void @llvm.dbg.value(metadata i64 %14, metadata !348, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2266
  br i1 %42, label %485, label %618, !dbg !2267

485:                                              ; preds = %484
  %486 = getelementptr inbounds %struct.Points, %struct.Points* %1, i64 0, i32 2, !dbg !2268
  %487 = load i8*, i8** @_ZL17switch_membership, align 8, !dbg !2269, !tbaa !1768
  %488 = load i32*, i32** @_ZL12center_table, align 8, !dbg !2268
  %489 = getelementptr inbounds %struct.Points, %struct.Points* %1, i64 0, i32 1, !dbg !2271
  %490 = shl i64 %14, 32, !dbg !2267
  %491 = ashr exact i64 %490, 32, !dbg !2267
  %492 = load %struct.Point*, %struct.Point** %486, align 8, !dbg !2268, !tbaa !1764
  %493 = getelementptr inbounds %struct.Point, %struct.Point* %492, i64 %0, i32 1, !dbg !2271
  br label %524, !dbg !2267

494:                                              ; preds = %615
  call void @llvm.dbg.value(metadata i64 %14, metadata !355, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2273
  br i1 %42, label %495, label %618, !dbg !2274

495:                                              ; preds = %494
  %496 = load i8*, i8** @_ZL9is_center, align 8, !dbg !2275, !tbaa !1768
  %497 = load i32*, i32** @_ZL12center_table, align 8, !dbg !2275
  %498 = shl i64 %14, 32, !dbg !2274
  %499 = ashr exact i64 %498, 32, !dbg !2274
  %500 = trunc i64 %12 to i32, !dbg !2274
  %501 = mul i32 %500, %4, !dbg !2274
  %502 = sext i32 %501 to i64, !dbg !2274
  %503 = sub i64 %18, %502, !dbg !2274
  %504 = and i64 %503, 1, !dbg !2274
  %505 = icmp eq i64 %504, 0, !dbg !2274
  br i1 %505, label %520, label %506, !dbg !2274

506:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i64 %499, metadata !355, metadata !DIExpression()), !dbg !2273
  %507 = getelementptr inbounds i8, i8* %496, i64 %499, !dbg !2279
  %508 = load i8, i8* %507, align 1, !dbg !2279, !tbaa !2099, !range !2101
  %509 = icmp eq i8 %508, 0, !dbg !2279
  br i1 %509, label %518, label %510, !dbg !2280

510:                                              ; preds = %506
  %511 = getelementptr inbounds i32, i32* %497, i64 %499, !dbg !2281
  %512 = load i32, i32* %511, align 4, !dbg !2281, !tbaa !1801
  %513 = sext i32 %512 to i64, !dbg !2282
  %514 = getelementptr inbounds double, double* %203, i64 %513, !dbg !2282
  %515 = load double, double* %514, align 8, !dbg !2282, !tbaa !2020
  %516 = fcmp ogt double %515, 0.000000e+00, !dbg !2283
  br i1 %516, label %517, label %518, !dbg !2284

517:                                              ; preds = %510
  store i8 0, i8* %507, align 1, !dbg !2285, !tbaa !2099
  br label %518, !dbg !2287

518:                                              ; preds = %517, %510, %506
  %519 = add nsw i64 %499, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %519, metadata !355, metadata !DIExpression()), !dbg !2273
  br label %520, !dbg !2274

520:                                              ; preds = %495, %518
  %521 = phi i64 [ %499, %495 ], [ %519, %518 ]
  %522 = add nsw i64 %502, 1, !dbg !2274
  %523 = icmp eq i64 %18, %522, !dbg !2274
  br i1 %523, label %618, label %622, !dbg !2274

524:                                              ; preds = %485, %615
  %525 = phi i64 [ %491, %485 ], [ %616, %615 ]
  call void @llvm.dbg.value(metadata i64 %525, metadata !348, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i1 undef, metadata !352, metadata !DIExpression()), !dbg !2268
  %526 = getelementptr inbounds i8, i8* %487, i64 %525, !dbg !2289
  %527 = load i8, i8* %526, align 1, !dbg !2289, !tbaa !2099, !range !2101
  %528 = icmp eq i8 %527, 0, !dbg !2289
  br i1 %528, label %529, label %538, !dbg !2290

529:                                              ; preds = %524
  %530 = getelementptr inbounds %struct.Point, %struct.Point* %492, i64 %525, i32 2, !dbg !2291
  %531 = load i64, i64* %530, align 8, !dbg !2291, !tbaa !1885
  %532 = getelementptr inbounds i32, i32* %488, i64 %531, !dbg !2292
  %533 = load i32, i32* %532, align 4, !dbg !2292, !tbaa !1801
  %534 = sext i32 %533 to i64, !dbg !2293
  %535 = getelementptr inbounds double, double* %203, i64 %534, !dbg !2293
  %536 = load double, double* %535, align 8, !dbg !2293, !tbaa !2020
  %537 = fcmp ogt double %536, 0.000000e+00, !dbg !2294
  call void @llvm.dbg.value(metadata i1 %537, metadata !352, metadata !DIExpression()), !dbg !2268
  br i1 %537, label %538, label %615, !dbg !2295

538:                                              ; preds = %524, %529
  %539 = getelementptr inbounds %struct.Point, %struct.Point* %492, i64 %525, i32 0, !dbg !2296
  %540 = load float, float* %539, align 8, !dbg !2296, !tbaa !1878
  call void @llvm.dbg.value(metadata i64 undef, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2297
  %541 = getelementptr inbounds %struct.Point, %struct.Point* %492, i64 %525, i32 1, !dbg !2299
  %542 = load float*, float** %541, align 8, !dbg !2299, !tbaa.struct !1767
  call void @llvm.dbg.value(metadata float* %542, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2297
  call void @llvm.dbg.value(metadata i64 undef, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2297
  %543 = load float*, float** %493, align 8, !dbg !2300, !tbaa.struct !1767
  call void @llvm.dbg.value(metadata float* %543, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2297
  %544 = load i32, i32* %489, align 8, !dbg !2301, !tbaa !1856
  call void @llvm.dbg.value(metadata i32 %544, metadata !1815, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1817, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !2297
  %545 = icmp sgt i32 %544, 0, !dbg !2302
  br i1 %545, label %546, label %610, !dbg !2303

546:                                              ; preds = %538
  %547 = zext i32 %544 to i64, !dbg !2302
  %548 = add nsw i64 %547, -1, !dbg !2303
  %549 = and i64 %547, 3, !dbg !2303
  %550 = icmp ult i64 %548, 3, !dbg !2303
  br i1 %550, label %591, label %551, !dbg !2303

551:                                              ; preds = %546
  %552 = sub nsw i64 %547, %549, !dbg !2303
  br label %553, !dbg !2303

553:                                              ; preds = %553, %551
  %554 = phi i64 [ 0, %551 ], [ %588, %553 ]
  %555 = phi float [ 0.000000e+00, %551 ], [ %587, %553 ]
  %556 = phi i64 [ %552, %551 ], [ %589, %553 ]
  call void @llvm.dbg.value(metadata float %555, metadata !1817, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i64 %554, metadata !1816, metadata !DIExpression()), !dbg !2297
  %557 = getelementptr inbounds float, float* %542, i64 %554, !dbg !2304
  %558 = load float, float* %557, align 4, !dbg !2304, !tbaa !1725
  %559 = getelementptr inbounds float, float* %543, i64 %554, !dbg !2305
  %560 = load float, float* %559, align 4, !dbg !2305, !tbaa !1725
  %561 = fsub float %558, %560, !dbg !2306
  %562 = fmul float %561, %561, !dbg !2307
  %563 = fadd float %555, %562, !dbg !2308
  call void @llvm.dbg.value(metadata float %563, metadata !1817, metadata !DIExpression()), !dbg !2297
  %564 = or i64 %554, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %564, metadata !1816, metadata !DIExpression()), !dbg !2297
  %565 = getelementptr inbounds float, float* %542, i64 %564, !dbg !2304
  %566 = load float, float* %565, align 4, !dbg !2304, !tbaa !1725
  %567 = getelementptr inbounds float, float* %543, i64 %564, !dbg !2305
  %568 = load float, float* %567, align 4, !dbg !2305, !tbaa !1725
  %569 = fsub float %566, %568, !dbg !2306
  %570 = fmul float %569, %569, !dbg !2307
  %571 = fadd float %563, %570, !dbg !2308
  call void @llvm.dbg.value(metadata float %571, metadata !1817, metadata !DIExpression()), !dbg !2297
  %572 = or i64 %554, 2, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %572, metadata !1816, metadata !DIExpression()), !dbg !2297
  %573 = getelementptr inbounds float, float* %542, i64 %572, !dbg !2304
  %574 = load float, float* %573, align 4, !dbg !2304, !tbaa !1725
  %575 = getelementptr inbounds float, float* %543, i64 %572, !dbg !2305
  %576 = load float, float* %575, align 4, !dbg !2305, !tbaa !1725
  %577 = fsub float %574, %576, !dbg !2306
  %578 = fmul float %577, %577, !dbg !2307
  %579 = fadd float %571, %578, !dbg !2308
  call void @llvm.dbg.value(metadata float %579, metadata !1817, metadata !DIExpression()), !dbg !2297
  %580 = or i64 %554, 3, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %580, metadata !1816, metadata !DIExpression()), !dbg !2297
  %581 = getelementptr inbounds float, float* %542, i64 %580, !dbg !2304
  %582 = load float, float* %581, align 4, !dbg !2304, !tbaa !1725
  %583 = getelementptr inbounds float, float* %543, i64 %580, !dbg !2305
  %584 = load float, float* %583, align 4, !dbg !2305, !tbaa !1725
  %585 = fsub float %582, %584, !dbg !2306
  %586 = fmul float %585, %585, !dbg !2307
  %587 = fadd float %579, %586, !dbg !2308
  call void @llvm.dbg.value(metadata float %587, metadata !1817, metadata !DIExpression()), !dbg !2297
  %588 = add nuw nsw i64 %554, 4, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %588, metadata !1816, metadata !DIExpression()), !dbg !2297
  %589 = add i64 %556, -4, !dbg !2303
  %590 = icmp eq i64 %589, 0, !dbg !2303
  br i1 %590, label %591, label %553, !dbg !2303, !llvm.loop !2310

591:                                              ; preds = %553, %546
  %592 = phi float [ undef, %546 ], [ %587, %553 ]
  %593 = phi i64 [ 0, %546 ], [ %588, %553 ]
  %594 = phi float [ 0.000000e+00, %546 ], [ %587, %553 ]
  %595 = icmp eq i64 %549, 0, !dbg !2303
  br i1 %595, label %610, label %596, !dbg !2303

596:                                              ; preds = %591, %596
  %597 = phi i64 [ %607, %596 ], [ %593, %591 ]
  %598 = phi float [ %606, %596 ], [ %594, %591 ]
  %599 = phi i64 [ %608, %596 ], [ %549, %591 ]
  call void @llvm.dbg.value(metadata float %598, metadata !1817, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i64 %597, metadata !1816, metadata !DIExpression()), !dbg !2297
  %600 = getelementptr inbounds float, float* %542, i64 %597, !dbg !2304
  %601 = load float, float* %600, align 4, !dbg !2304, !tbaa !1725
  %602 = getelementptr inbounds float, float* %543, i64 %597, !dbg !2305
  %603 = load float, float* %602, align 4, !dbg !2305, !tbaa !1725
  %604 = fsub float %601, %603, !dbg !2306
  %605 = fmul float %604, %604, !dbg !2307
  %606 = fadd float %598, %605, !dbg !2308
  call void @llvm.dbg.value(metadata float %606, metadata !1817, metadata !DIExpression()), !dbg !2297
  %607 = add nuw nsw i64 %597, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %607, metadata !1816, metadata !DIExpression()), !dbg !2297
  %608 = add i64 %599, -1, !dbg !2303
  %609 = icmp eq i64 %608, 0, !dbg !2303
  br i1 %609, label %610, label %596, !dbg !2303, !llvm.loop !2312

610:                                              ; preds = %591, %596, %538
  %611 = phi float [ 0.000000e+00, %538 ], [ %592, %591 ], [ %606, %596 ], !dbg !2297
  call void @llvm.dbg.value(metadata float %611, metadata !1817, metadata !DIExpression()), !dbg !2297
  %612 = fmul float %540, %611, !dbg !2313
  %613 = getelementptr inbounds %struct.Point, %struct.Point* %492, i64 %525, i32 3, !dbg !2314
  store float %612, float* %613, align 8, !dbg !2315, !tbaa !1882
  %614 = getelementptr inbounds %struct.Point, %struct.Point* %492, i64 %525, i32 2, !dbg !2316
  store i64 %0, i64* %614, align 8, !dbg !2317, !tbaa !1885
  br label %615, !dbg !2318

615:                                              ; preds = %610, %529
  %616 = add i64 %525, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %616, metadata !348, metadata !DIExpression()), !dbg !2266
  %617 = icmp sgt i64 %18, %616, !dbg !2320
  br i1 %617, label %524, label %494, !dbg !2267, !llvm.loop !2321

618:                                              ; preds = %520, %670, %484, %494
  %619 = icmp sle i64 %14, %0, !dbg !2323
  %620 = icmp sgt i64 %18, %0, !dbg !2325
  %621 = and i1 %619, %620, !dbg !2326
  br i1 %621, label %640, label %643, !dbg !2326

622:                                              ; preds = %520, %670
  %623 = phi i64 [ %671, %670 ], [ %521, %520 ]
  call void @llvm.dbg.value(metadata i64 %623, metadata !355, metadata !DIExpression()), !dbg !2273
  %624 = getelementptr inbounds i8, i8* %496, i64 %623, !dbg !2279
  %625 = load i8, i8* %624, align 1, !dbg !2279, !tbaa !2099, !range !2101
  %626 = icmp eq i8 %625, 0, !dbg !2279
  br i1 %626, label %635, label %627, !dbg !2280

627:                                              ; preds = %622
  %628 = getelementptr inbounds i32, i32* %497, i64 %623, !dbg !2281
  %629 = load i32, i32* %628, align 4, !dbg !2281, !tbaa !1801
  %630 = sext i32 %629 to i64, !dbg !2282
  %631 = getelementptr inbounds double, double* %203, i64 %630, !dbg !2282
  %632 = load double, double* %631, align 8, !dbg !2282, !tbaa !2020
  %633 = fcmp ogt double %632, 0.000000e+00, !dbg !2283
  br i1 %633, label %634, label %635, !dbg !2284

634:                                              ; preds = %627
  store i8 0, i8* %624, align 1, !dbg !2285, !tbaa !2099
  br label %635, !dbg !2287

635:                                              ; preds = %622, %627, %634
  %636 = add nsw i64 %623, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %636, metadata !355, metadata !DIExpression()), !dbg !2273
  %637 = getelementptr inbounds i8, i8* %496, i64 %636, !dbg !2279
  %638 = load i8, i8* %637, align 1, !dbg !2279, !tbaa !2099, !range !2101
  %639 = icmp eq i8 %638, 0, !dbg !2279
  br i1 %639, label %670, label %662, !dbg !2280

640:                                              ; preds = %618
  %641 = load i8*, i8** @_ZL9is_center, align 8, !dbg !2327, !tbaa !1768
  %642 = getelementptr inbounds i8, i8* %641, i64 %0, !dbg !2327
  store i8 1, i8* %642, align 1, !dbg !2329, !tbaa !2099
  br label %643, !dbg !2330

643:                                              ; preds = %618, %640
  br i1 %31, label %644, label %657, !dbg !2331

644:                                              ; preds = %643
  %645 = load i64, i64* %3, align 8, !dbg !2332, !tbaa !1769
  %646 = add nsw i64 %645, 1, !dbg !2335
  %647 = load i32, i32* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE29gl_number_of_centers_to_close, align 4, !dbg !2336, !tbaa !1801
  %648 = sext i32 %647 to i64, !dbg !2336
  %649 = sub i64 %646, %648, !dbg !2337
  store i64 %649, i64* %3, align 8, !dbg !2338, !tbaa !1769
  br label %652, !dbg !2339

650:                                              ; preds = %480
  br i1 %31, label %651, label %655, !dbg !2340

651:                                              ; preds = %650
  store double 0.000000e+00, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8, !dbg !2342, !tbaa !2020
  br label %652, !dbg !2344

652:                                              ; preds = %644, %651
  %653 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2345
  %654 = load i8*, i8** bitcast (double** @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE8work_mem to i8**), align 8, !dbg !2346, !tbaa !1768
  tail call void @free(i8* %654) #15, !dbg !2349
  br label %659, !dbg !2350

655:                                              ; preds = %650
  %656 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2345
  br label %659, !dbg !2351

657:                                              ; preds = %643
  %658 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2345
  br label %659, !dbg !2351

659:                                              ; preds = %657, %655, %652
  %660 = load double, double* @_ZZ5pgainlP6PointsdPliP17pthread_barrier_tE20gl_cost_of_opening_x, align 8, !dbg !2352, !tbaa !2020
  %661 = fneg double %660, !dbg !2353
  ret double %661, !dbg !2354

662:                                              ; preds = %635
  %663 = getelementptr inbounds i32, i32* %497, i64 %636, !dbg !2281
  %664 = load i32, i32* %663, align 4, !dbg !2281, !tbaa !1801
  %665 = sext i32 %664 to i64, !dbg !2282
  %666 = getelementptr inbounds double, double* %203, i64 %665, !dbg !2282
  %667 = load double, double* %666, align 8, !dbg !2282, !tbaa !2020
  %668 = fcmp ogt double %667, 0.000000e+00, !dbg !2283
  br i1 %668, label %669, label %670, !dbg !2284

669:                                              ; preds = %662
  store i8 0, i8* %637, align 1, !dbg !2285, !tbaa !2099
  br label %670, !dbg !2287

670:                                              ; preds = %669, %662, %635
  %671 = add nsw i64 %623, 2, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %671, metadata !355, metadata !DIExpression()), !dbg !2273
  %672 = icmp sgt i64 %18, %671, !dbg !2355
  br i1 %672, label %622, label %618, !dbg !2274, !llvm.loop !2356

673:                                              ; preds = %185
  %674 = load double, double* %139, align 8, !dbg !2139, !tbaa !2020
  %675 = fptosi double %674 to i32, !dbg !2139
  %676 = getelementptr inbounds i32, i32* %140, i64 %186, !dbg !2140
  %677 = load i32, i32* %676, align 4, !dbg !2141, !tbaa !1801
  %678 = add nsw i32 %677, %675, !dbg !2141
  store i32 %678, i32* %676, align 4, !dbg !2141, !tbaa !1801
  br label %679, !dbg !2142

679:                                              ; preds = %673, %185
  %680 = add nsw i64 %175, 2, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %680, metadata !323, metadata !DIExpression()), !dbg !2128
  %681 = icmp sgt i64 %18, %680, !dbg !2358
  br i1 %681, label %174, label %165, !dbg !2129, !llvm.loop !2359

682:                                              ; preds = %98
  %683 = add nsw i32 %99, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %683, metadata !312, metadata !DIExpression()), !dbg !2052
  %684 = getelementptr inbounds i32, i32* %45, i64 %100, !dbg !2103
  store i32 %99, i32* %684, align 4, !dbg !2104, !tbaa !1801
  br label %685, !dbg !2105

685:                                              ; preds = %682, %98
  %686 = phi i32 [ %683, %682 ], [ %99, %98 ], !dbg !2052
  call void @llvm.dbg.value(metadata i32 %686, metadata !312, metadata !DIExpression()), !dbg !2052
  %687 = add nsw i64 %89, 2, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %687, metadata !313, metadata !DIExpression()), !dbg !2087
  %688 = add i64 %91, -2, !dbg !2091
  %689 = icmp eq i64 %688, 0, !dbg !2091
  br i1 %689, label %57, label %88, !dbg !2091, !llvm.loop !2361
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local float @_Z3pFLP6PointsPiifPldlfiP17pthread_barrier_t(%struct.Points* nocapture readonly %0, i32* nocapture %1, i32 %2, float %3, i64* nocapture %4, double %5, i64 %6, float %7, i32 %8, %union.pthread_barrier_t* %9) local_unnamed_addr #0 !dbg !2363 {
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !2367, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32* %1, metadata !2368, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %2, metadata !2369, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata float %3, metadata !2370, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64* %4, metadata !2371, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata double %5, metadata !2372, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %6, metadata !2373, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata float %7, metadata !2374, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %8, metadata !2375, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata %union.pthread_barrier_t* %9, metadata !2376, metadata !DIExpression()), !dbg !2381
  %11 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %9) #15, !dbg !2382
  call void @llvm.dbg.value(metadata double %5, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata double %5, metadata !2372, metadata !DIExpression()), !dbg !2381
  %12 = fdiv double %5, %5, !dbg !2383
  %13 = fpext float %7 to double, !dbg !2384
  %14 = fcmp ogt double %12, %13, !dbg !2385
  br i1 %14, label %15, label %55, !dbg !2386

15:                                               ; preds = %10
  %16 = icmp ne i32 %8, 0, !dbg !2387
  %17 = sext i32 %2 to i64, !dbg !2390
  %18 = icmp slt i32 %2, 1, !dbg !2390
  %19 = icmp sgt i64 %6, 0, !dbg !2393
  %20 = fpext float %3 to double, !dbg !2396
  %21 = or i1 %16, %18, !dbg !2398
  br label %22, !dbg !2386

22:                                               ; preds = %15, %49
  %23 = phi double [ %5, %15 ], [ %51, %49 ]
  call void @llvm.dbg.value(metadata double %23, metadata !2372, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 undef, metadata !2380, metadata !DIExpression()), !dbg !2381
  br i1 %21, label %36, label %24, !dbg !2399

24:                                               ; preds = %22, %24
  %25 = phi i64 [ %34, %24 ], [ 0, %22 ]
  call void @llvm.dbg.value(metadata i64 %25, metadata !1786, metadata !DIExpression()) #15, !dbg !2400
  %26 = tail call i64 @lrand48() #15, !dbg !2401
  %27 = sub nsw i64 %17, %25, !dbg !2402
  %28 = srem i64 %26, %27, !dbg !2403
  %29 = add nsw i64 %28, %25, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %29, metadata !1787, metadata !DIExpression()) #15, !dbg !2400
  %30 = getelementptr inbounds i32, i32* %1, i64 %25, !dbg !2405
  %31 = load i32, i32* %30, align 4, !dbg !2405, !tbaa !1801
  call void @llvm.dbg.value(metadata i32 %31, metadata !1788, metadata !DIExpression()) #15, !dbg !2400
  %32 = getelementptr inbounds i32, i32* %1, i64 %29, !dbg !2406
  %33 = load i32, i32* %32, align 4, !dbg !2406, !tbaa !1801
  store i32 %33, i32* %30, align 4, !dbg !2407, !tbaa !1801
  store i32 %31, i32* %32, align 4, !dbg !2408, !tbaa !1801
  %34 = add nuw nsw i64 %25, 1, !dbg !2409
  call void @llvm.dbg.value(metadata i64 %34, metadata !1786, metadata !DIExpression()) #15, !dbg !2400
  %35 = icmp eq i64 %34, %17, !dbg !2410
  br i1 %35, label %36, label %24, !dbg !2411, !llvm.loop !2412

36:                                               ; preds = %24, %22
  %37 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %9) #15, !dbg !2414
  call void @llvm.dbg.value(metadata i64 0, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2379, metadata !DIExpression()), !dbg !2381
  br i1 %19, label %38, label %49, !dbg !2415

38:                                               ; preds = %36, %38
  %39 = phi double [ %46, %38 ], [ 0.000000e+00, %36 ]
  %40 = phi i64 [ %47, %38 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata double %39, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %40, metadata !2377, metadata !DIExpression()), !dbg !2381
  %41 = srem i64 %40, %17, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %41, metadata !2378, metadata !DIExpression()), !dbg !2381
  %42 = getelementptr inbounds i32, i32* %1, i64 %41, !dbg !2417
  %43 = load i32, i32* %42, align 4, !dbg !2417, !tbaa !1801
  %44 = sext i32 %43 to i64, !dbg !2417
  %45 = tail call double @_Z5pgainlP6PointsdPliP17pthread_barrier_t(i64 %44, %struct.Points* %0, double %20, i64* %4, i32 %8, %union.pthread_barrier_t* %9), !dbg !2418
  %46 = fadd double %39, %45, !dbg !2419
  call void @llvm.dbg.value(metadata double %46, metadata !2379, metadata !DIExpression()), !dbg !2381
  %47 = add nuw nsw i64 %40, 1, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %47, metadata !2377, metadata !DIExpression()), !dbg !2381
  %48 = icmp eq i64 %47, %6, !dbg !2421
  br i1 %48, label %49, label %38, !dbg !2415, !llvm.loop !2422

49:                                               ; preds = %38, %36
  %50 = phi double [ 0.000000e+00, %36 ], [ %46, %38 ], !dbg !2398
  call void @llvm.dbg.value(metadata double %50, metadata !2379, metadata !DIExpression()), !dbg !2381
  %51 = fsub double %23, %50, !dbg !2424
  call void @llvm.dbg.value(metadata double %51, metadata !2372, metadata !DIExpression()), !dbg !2381
  %52 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %9) #15, !dbg !2425
  %53 = fdiv double %50, %51, !dbg !2383
  %54 = fcmp ogt double %53, %13, !dbg !2385
  br i1 %54, label %22, label %55, !dbg !2386, !llvm.loop !2426

55:                                               ; preds = %49, %10
  %56 = phi double [ %5, %10 ], [ %51, %49 ]
  call void @llvm.dbg.value(metadata double %56, metadata !2372, metadata !DIExpression()), !dbg !2381
  %57 = fptrunc double %56 to float, !dbg !2428
  ret float %57, !dbg !2429
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_Z19selectfeasible_fastP6PointsPPiiiP17pthread_barrier_t(%struct.Points* nocapture readonly %0, i32** nocapture %1, i32 %2, i32 %3, %union.pthread_barrier_t* nocapture readnone %4) local_unnamed_addr #0 !dbg !2430 {
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !2435, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32** %1, metadata !2436, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %2, metadata !2437, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 undef, metadata !2438, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata %union.pthread_barrier_t* undef, metadata !2439, metadata !DIExpression()), !dbg !2457
  %6 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 0, !dbg !2458
  %7 = load i64, i64* %6, align 8, !dbg !2458, !tbaa !1750
  %8 = trunc i64 %7 to i32, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %8, metadata !2440, metadata !DIExpression()), !dbg !2457
  %9 = sitofp i32 %8 to double, !dbg !2460
  %10 = mul nsw i32 %2, 3, !dbg !2462
  %11 = sitofp i32 %10 to double, !dbg !2463
  %12 = sitofp i32 %2 to double, !dbg !2464
  %13 = tail call double @log(double %12) #15, !dbg !2465
  %14 = fmul double %13, %11, !dbg !2466
  %15 = fcmp olt double %14, %9, !dbg !2467
  br i1 %15, label %16, label %20, !dbg !2468

16:                                               ; preds = %5
  %17 = tail call double @log(double %12) #15, !dbg !2469
  %18 = fmul double %17, %11, !dbg !2470
  %19 = fptosi double %18 to i32, !dbg !2471
  call void @llvm.dbg.value(metadata i32 %19, metadata !2440, metadata !DIExpression()), !dbg !2457
  br label %20, !dbg !2472

20:                                               ; preds = %16, %5
  %21 = phi i32 [ %19, %16 ], [ %8, %5 ], !dbg !2457
  call void @llvm.dbg.value(metadata i32 %21, metadata !2440, metadata !DIExpression()), !dbg !2457
  %22 = sext i32 %21 to i64, !dbg !2473
  %23 = shl nsw i64 %22, 2, !dbg !2474
  %24 = tail call noalias i8* @malloc(i64 %23) #15, !dbg !2475
  %25 = bitcast i32** %1 to i8**, !dbg !2476
  store i8* %24, i8** %25, align 8, !dbg !2476, !tbaa !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !2443, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %22, metadata !2444, metadata !DIExpression()), !dbg !2457
  %26 = load i64, i64* %6, align 8, !dbg !2477, !tbaa !1750
  %27 = icmp eq i64 %26, %22, !dbg !2478
  %28 = bitcast i8* %24 to i32*, !dbg !2479
  br i1 %27, label %29, label %103, !dbg !2479

29:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()), !dbg !2480
  %30 = icmp sgt i32 %21, 0, !dbg !2481
  br i1 %30, label %31, label %201, !dbg !2483

31:                                               ; preds = %29
  %32 = icmp ult i32 %21, 8, !dbg !2483
  br i1 %32, label %95, label %33, !dbg !2483

33:                                               ; preds = %31
  %34 = and i64 %22, -8, !dbg !2483
  %35 = add nsw i64 %34, -8, !dbg !2483
  %36 = lshr exact i64 %35, 3, !dbg !2483
  %37 = add nuw nsw i64 %36, 1, !dbg !2483
  %38 = and i64 %37, 3, !dbg !2483
  %39 = icmp ult i64 %35, 24, !dbg !2483
  br i1 %39, label %76, label %40, !dbg !2483

40:                                               ; preds = %33
  %41 = sub nsw i64 %37, %38, !dbg !2483
  br label %42, !dbg !2483

42:                                               ; preds = %42, %40
  %43 = phi i64 [ 0, %40 ], [ %72, %42 ], !dbg !2484
  %44 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %40 ], [ %73, %42 ], !dbg !2485
  %45 = phi i64 [ %41, %40 ], [ %74, %42 ]
  %46 = getelementptr inbounds i32, i32* %28, i64 %43, !dbg !2486
  %47 = add <4 x i32> %44, <i32 4, i32 4, i32 4, i32 4>, !dbg !2485
  %48 = bitcast i32* %46 to <4 x i32>*, !dbg !2485
  store <4 x i32> %44, <4 x i32>* %48, align 4, !dbg !2485, !tbaa !1801
  %49 = getelementptr inbounds i32, i32* %46, i64 4, !dbg !2485
  %50 = bitcast i32* %49 to <4 x i32>*, !dbg !2485
  store <4 x i32> %47, <4 x i32>* %50, align 4, !dbg !2485, !tbaa !1801
  %51 = or i64 %43, 8, !dbg !2484
  %52 = add <4 x i32> %44, <i32 8, i32 8, i32 8, i32 8>, !dbg !2485
  %53 = getelementptr inbounds i32, i32* %28, i64 %51, !dbg !2486
  %54 = add <4 x i32> %44, <i32 12, i32 12, i32 12, i32 12>, !dbg !2485
  %55 = bitcast i32* %53 to <4 x i32>*, !dbg !2485
  store <4 x i32> %52, <4 x i32>* %55, align 4, !dbg !2485, !tbaa !1801
  %56 = getelementptr inbounds i32, i32* %53, i64 4, !dbg !2485
  %57 = bitcast i32* %56 to <4 x i32>*, !dbg !2485
  store <4 x i32> %54, <4 x i32>* %57, align 4, !dbg !2485, !tbaa !1801
  %58 = or i64 %43, 16, !dbg !2484
  %59 = add <4 x i32> %44, <i32 16, i32 16, i32 16, i32 16>, !dbg !2485
  %60 = getelementptr inbounds i32, i32* %28, i64 %58, !dbg !2486
  %61 = add <4 x i32> %44, <i32 20, i32 20, i32 20, i32 20>, !dbg !2485
  %62 = bitcast i32* %60 to <4 x i32>*, !dbg !2485
  store <4 x i32> %59, <4 x i32>* %62, align 4, !dbg !2485, !tbaa !1801
  %63 = getelementptr inbounds i32, i32* %60, i64 4, !dbg !2485
  %64 = bitcast i32* %63 to <4 x i32>*, !dbg !2485
  store <4 x i32> %61, <4 x i32>* %64, align 4, !dbg !2485, !tbaa !1801
  %65 = or i64 %43, 24, !dbg !2484
  %66 = add <4 x i32> %44, <i32 24, i32 24, i32 24, i32 24>, !dbg !2485
  %67 = getelementptr inbounds i32, i32* %28, i64 %65, !dbg !2486
  %68 = add <4 x i32> %44, <i32 28, i32 28, i32 28, i32 28>, !dbg !2485
  %69 = bitcast i32* %67 to <4 x i32>*, !dbg !2485
  store <4 x i32> %66, <4 x i32>* %69, align 4, !dbg !2485, !tbaa !1801
  %70 = getelementptr inbounds i32, i32* %67, i64 4, !dbg !2485
  %71 = bitcast i32* %70 to <4 x i32>*, !dbg !2485
  store <4 x i32> %68, <4 x i32>* %71, align 4, !dbg !2485, !tbaa !1801
  %72 = add i64 %43, 32, !dbg !2484
  %73 = add <4 x i32> %44, <i32 32, i32 32, i32 32, i32 32>, !dbg !2485
  %74 = add i64 %45, -4, !dbg !2484
  %75 = icmp eq i64 %74, 0, !dbg !2484
  br i1 %75, label %76, label %42, !dbg !2484, !llvm.loop !2487

76:                                               ; preds = %42, %33
  %77 = phi i64 [ 0, %33 ], [ %72, %42 ]
  %78 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %33 ], [ %73, %42 ]
  %79 = icmp eq i64 %38, 0, !dbg !2484
  br i1 %79, label %93, label %80, !dbg !2484

80:                                               ; preds = %76, %80
  %81 = phi i64 [ %89, %80 ], [ %77, %76 ], !dbg !2484
  %82 = phi <4 x i32> [ %90, %80 ], [ %78, %76 ], !dbg !2485
  %83 = phi i64 [ %91, %80 ], [ %38, %76 ]
  %84 = getelementptr inbounds i32, i32* %28, i64 %81, !dbg !2486
  %85 = add <4 x i32> %82, <i32 4, i32 4, i32 4, i32 4>, !dbg !2485
  %86 = bitcast i32* %84 to <4 x i32>*, !dbg !2485
  store <4 x i32> %82, <4 x i32>* %86, align 4, !dbg !2485, !tbaa !1801
  %87 = getelementptr inbounds i32, i32* %84, i64 4, !dbg !2485
  %88 = bitcast i32* %87 to <4 x i32>*, !dbg !2485
  store <4 x i32> %85, <4 x i32>* %88, align 4, !dbg !2485, !tbaa !1801
  %89 = add i64 %81, 8, !dbg !2484
  %90 = add <4 x i32> %82, <i32 8, i32 8, i32 8, i32 8>, !dbg !2485
  %91 = add i64 %83, -1, !dbg !2484
  %92 = icmp eq i64 %91, 0, !dbg !2484
  br i1 %92, label %93, label %80, !dbg !2484, !llvm.loop !2490

93:                                               ; preds = %80, %76
  %94 = icmp eq i64 %34, %22, !dbg !2483
  br i1 %94, label %201, label %95, !dbg !2483

95:                                               ; preds = %93, %31
  %96 = phi i64 [ 0, %31 ], [ %34, %93 ]
  br label %97, !dbg !2483

97:                                               ; preds = %95, %97
  %98 = phi i64 [ %101, %97 ], [ %96, %95 ]
  call void @llvm.dbg.value(metadata i64 %98, metadata !2449, metadata !DIExpression()), !dbg !2480
  %99 = getelementptr inbounds i32, i32* %28, i64 %98, !dbg !2486
  %100 = trunc i64 %98 to i32, !dbg !2485
  store i32 %100, i32* %99, align 4, !dbg !2485, !tbaa !1801
  %101 = add nuw nsw i64 %98, 1, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %101, metadata !2449, metadata !DIExpression()), !dbg !2480
  %102 = icmp eq i64 %101, %22, !dbg !2481
  br i1 %102, label %201, label %97, !dbg !2483, !llvm.loop !2491

103:                                              ; preds = %20
  %104 = shl i64 %26, 2, !dbg !2493
  %105 = tail call noalias i8* @malloc(i64 %104) #15, !dbg !2494
  %106 = bitcast i8* %105 to float*, !dbg !2495
  call void @llvm.dbg.value(metadata float* %106, metadata !2441, metadata !DIExpression()), !dbg !2457
  %107 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !2496
  %108 = bitcast %struct.Point** %107 to i32**, !dbg !2496
  %109 = load i32*, i32** %108, align 8, !dbg !2496, !tbaa !1764
  %110 = load i32, i32* %109, align 8, !dbg !2497, !tbaa !1878
  %111 = bitcast i8* %105 to i32*, !dbg !2498
  store i32 %110, i32* %111, align 4, !dbg !2498, !tbaa !1725
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2442, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 1, metadata !2453, metadata !DIExpression()), !dbg !2499
  %112 = icmp sgt i64 %26, 1, !dbg !2500
  %113 = bitcast i32* %109 to %struct.Point*, !dbg !2502
  br i1 %112, label %114, label %137, !dbg !2502

114:                                              ; preds = %103
  %115 = bitcast i32 %110 to float, !dbg !2502
  %116 = add i64 %26, -1, !dbg !2502
  %117 = add i64 %26, -2, !dbg !2502
  %118 = and i64 %116, 3, !dbg !2502
  %119 = icmp ult i64 %117, 3, !dbg !2502
  br i1 %119, label %122, label %120, !dbg !2502

120:                                              ; preds = %114
  %121 = sub i64 %116, %118, !dbg !2502
  br label %142, !dbg !2502

122:                                              ; preds = %142, %114
  %123 = phi float [ %115, %114 ], [ %163, %142 ]
  %124 = phi i64 [ 1, %114 ], [ %165, %142 ]
  %125 = icmp eq i64 %118, 0, !dbg !2502
  br i1 %125, label %137, label %126, !dbg !2502

126:                                              ; preds = %122, %126
  %127 = phi float [ %132, %126 ], [ %123, %122 ], !dbg !2503
  %128 = phi i64 [ %134, %126 ], [ %124, %122 ]
  %129 = phi i64 [ %135, %126 ], [ %118, %122 ]
  call void @llvm.dbg.value(metadata i64 %128, metadata !2453, metadata !DIExpression()), !dbg !2499
  %130 = getelementptr inbounds %struct.Point, %struct.Point* %113, i64 %128, i32 0, !dbg !2505
  %131 = load float, float* %130, align 8, !dbg !2505, !tbaa !1878
  %132 = fadd float %127, %131, !dbg !2506
  %133 = getelementptr inbounds float, float* %106, i64 %128, !dbg !2507
  store float %132, float* %133, align 4, !dbg !2508, !tbaa !1725
  %134 = add nuw nsw i64 %128, 1, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %134, metadata !2453, metadata !DIExpression()), !dbg !2499
  %135 = add i64 %129, -1, !dbg !2502
  %136 = icmp eq i64 %135, 0, !dbg !2502
  br i1 %136, label %137, label %126, !dbg !2502, !llvm.loop !2510

137:                                              ; preds = %122, %126, %103
  %138 = add nsw i64 %26, -1, !dbg !2511
  %139 = getelementptr inbounds float, float* %106, i64 %138, !dbg !2512
  %140 = load float, float* %139, align 4, !dbg !2512, !tbaa !1725
  call void @llvm.dbg.value(metadata float %140, metadata !2442, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2455, metadata !DIExpression()), !dbg !2513
  %141 = icmp sgt i32 %21, 0, !dbg !2514
  br i1 %141, label %169, label %168, !dbg !2516

142:                                              ; preds = %142, %120
  %143 = phi float [ %115, %120 ], [ %163, %142 ], !dbg !2503
  %144 = phi i64 [ 1, %120 ], [ %165, %142 ]
  %145 = phi i64 [ %121, %120 ], [ %166, %142 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2453, metadata !DIExpression()), !dbg !2499
  %146 = getelementptr inbounds %struct.Point, %struct.Point* %113, i64 %144, i32 0, !dbg !2505
  %147 = load float, float* %146, align 8, !dbg !2505, !tbaa !1878
  %148 = fadd float %143, %147, !dbg !2506
  %149 = getelementptr inbounds float, float* %106, i64 %144, !dbg !2507
  store float %148, float* %149, align 4, !dbg !2508, !tbaa !1725
  %150 = add nuw nsw i64 %144, 1, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %150, metadata !2453, metadata !DIExpression()), !dbg !2499
  %151 = getelementptr inbounds %struct.Point, %struct.Point* %113, i64 %150, i32 0, !dbg !2505
  %152 = load float, float* %151, align 8, !dbg !2505, !tbaa !1878
  %153 = fadd float %148, %152, !dbg !2506
  %154 = getelementptr inbounds float, float* %106, i64 %150, !dbg !2507
  store float %153, float* %154, align 4, !dbg !2508, !tbaa !1725
  %155 = add nuw nsw i64 %144, 2, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %155, metadata !2453, metadata !DIExpression()), !dbg !2499
  %156 = getelementptr inbounds %struct.Point, %struct.Point* %113, i64 %155, i32 0, !dbg !2505
  %157 = load float, float* %156, align 8, !dbg !2505, !tbaa !1878
  %158 = fadd float %153, %157, !dbg !2506
  %159 = getelementptr inbounds float, float* %106, i64 %155, !dbg !2507
  store float %158, float* %159, align 4, !dbg !2508, !tbaa !1725
  %160 = add nuw nsw i64 %144, 3, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %160, metadata !2453, metadata !DIExpression()), !dbg !2499
  %161 = getelementptr inbounds %struct.Point, %struct.Point* %113, i64 %160, i32 0, !dbg !2505
  %162 = load float, float* %161, align 8, !dbg !2505, !tbaa !1878
  %163 = fadd float %158, %162, !dbg !2506
  %164 = getelementptr inbounds float, float* %106, i64 %160, !dbg !2507
  store float %163, float* %164, align 4, !dbg !2508, !tbaa !1725
  %165 = add nuw nsw i64 %144, 4, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %165, metadata !2453, metadata !DIExpression()), !dbg !2499
  %166 = add i64 %145, -4, !dbg !2502
  %167 = icmp eq i64 %166, 0, !dbg !2502
  br i1 %167, label %122, label %142, !dbg !2502, !llvm.loop !2517

168:                                              ; preds = %195, %137
  tail call void @free(i8* nonnull %105) #15, !dbg !2519
  br label %201, !dbg !2520

169:                                              ; preds = %137, %195
  %170 = phi i64 [ %199, %195 ], [ 0, %137 ]
  call void @llvm.dbg.value(metadata i64 %170, metadata !2455, metadata !DIExpression()), !dbg !2513
  %171 = tail call i64 @lrand48() #15, !dbg !2521
  %172 = sitofp i64 %171 to float, !dbg !2521
  %173 = fmul float %172, 0x3E00000000000000, !dbg !2523
  %174 = fmul float %140, %173, !dbg !2524
  call void @llvm.dbg.value(metadata float %174, metadata !2445, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2446, metadata !DIExpression()), !dbg !2457
  %175 = load i64, i64* %6, align 8, !dbg !2525, !tbaa !1750
  %176 = trunc i64 %175 to i32, !dbg !2526
  %177 = add i32 %176, -1, !dbg !2526
  call void @llvm.dbg.value(metadata i32 %177, metadata !2447, metadata !DIExpression()), !dbg !2457
  %178 = load float, float* %106, align 4, !dbg !2527, !tbaa !1725
  %179 = fcmp ogt float %178, %174, !dbg !2529
  br i1 %179, label %195, label %180, !dbg !2530

180:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i32 %177, metadata !2447, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2446, metadata !DIExpression()), !dbg !2457
  %181 = icmp sgt i32 %177, 1, !dbg !2531
  br i1 %181, label %182, label %195, !dbg !2532

182:                                              ; preds = %180, %182
  %183 = phi i32 [ %192, %182 ], [ %177, %180 ]
  %184 = phi i32 [ %191, %182 ], [ 0, %180 ]
  call void @llvm.dbg.value(metadata i32 %183, metadata !2447, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %184, metadata !2446, metadata !DIExpression()), !dbg !2457
  %185 = add nsw i32 %183, %184, !dbg !2533
  %186 = sdiv i32 %185, 2, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %186, metadata !2448, metadata !DIExpression()), !dbg !2457
  %187 = sext i32 %186 to i64, !dbg !2536
  %188 = getelementptr inbounds float, float* %106, i64 %187, !dbg !2536
  %189 = load float, float* %188, align 4, !dbg !2536, !tbaa !1725
  %190 = fcmp ogt float %189, %174, !dbg !2538
  %191 = select i1 %190, i32 %184, i32 %186
  %192 = select i1 %190, i32 %186, i32 %183
  call void @llvm.dbg.value(metadata i32 %192, metadata !2447, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %191, metadata !2446, metadata !DIExpression()), !dbg !2457
  %193 = add nsw i32 %191, 1, !dbg !2539
  %194 = icmp slt i32 %193, %192, !dbg !2531
  br i1 %194, label %182, label %195, !dbg !2532, !llvm.loop !2540

195:                                              ; preds = %182, %180, %169
  %196 = phi i32 [ 0, %169 ], [ %177, %180 ], [ %192, %182 ]
  %197 = load i32*, i32** %1, align 8, !dbg !2542, !tbaa !1768
  %198 = getelementptr inbounds i32, i32* %197, i64 %170, !dbg !2542
  store i32 %196, i32* %198, align 4, !dbg !2542, !tbaa !1801
  %199 = add nuw nsw i64 %170, 1, !dbg !2543
  call void @llvm.dbg.value(metadata i64 %199, metadata !2455, metadata !DIExpression()), !dbg !2513
  %200 = icmp eq i64 %199, %22, !dbg !2514
  br i1 %200, label %168, label %169, !dbg !2516, !llvm.loop !2544

201:                                              ; preds = %97, %93, %29, %168
  ret i32 %21, !dbg !2546
}

; Function Attrs: nofree nounwind
declare dso_local double @log(double) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local float @_Z8pkmedianP6PointsllPliP17pthread_barrier_t(%struct.Points* nocapture readonly %0, i64 %1, i64 %2, i64* nocapture %3, i32 %4, %union.pthread_barrier_t* %5) local_unnamed_addr #6 !dbg !363 {
  %7 = alloca %struct.Point, align 8
  call void @llvm.dbg.declare(metadata %struct.Point* %7, metadata !1743, metadata !DIExpression()), !dbg !2547
  %8 = alloca %struct.Point, align 8
  call void @llvm.dbg.declare(metadata %struct.Point* %8, metadata !1743, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !367, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 %1, metadata !368, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 %2, metadata !369, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64* %3, metadata !370, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %4, metadata !371, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata %union.pthread_barrier_t* %5, metadata !372, metadata !DIExpression()), !dbg !2554
  %9 = icmp eq i32 %4, 0, !dbg !2555
  %10 = load i32, i32* @_ZL5nproc, align 4, !dbg !2554, !tbaa !1801
  %11 = sext i32 %10 to i64, !dbg !2554
  br i1 %9, label %12, label %14, !dbg !2557

12:                                               ; preds = %6
  %13 = tail call noalias i8* @calloc(i64 %11, i64 8) #15, !dbg !2558
  store i8* %13, i8** bitcast (double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs to i8**), align 8, !dbg !2559, !tbaa !1768
  br label %14, !dbg !2560

14:                                               ; preds = %6, %12
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !377, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !376, metadata !DIExpression()), !dbg !2554
  %15 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 0, !dbg !2561
  call void @llvm.dbg.value(metadata i64 undef, metadata !379, metadata !DIExpression()), !dbg !2554
  %16 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 1, !dbg !2562
  %17 = load i32, i32* %16, align 8, !dbg !2562, !tbaa !1856
  call void @llvm.dbg.value(metadata i32 %17, metadata !380, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !2554
  %18 = load i64, i64* %15, align 8, !dbg !2563, !tbaa !1750
  %19 = sdiv i64 %18, %11, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %19, metadata !381, metadata !DIExpression()), !dbg !2554
  %20 = sext i32 %4 to i64, !dbg !2565
  %21 = mul nsw i64 %19, %20, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %21, metadata !382, metadata !DIExpression()), !dbg !2554
  %22 = add nsw i64 %21, %19, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %22, metadata !383, metadata !DIExpression()), !dbg !2554
  %23 = add nsw i32 %10, -1, !dbg !2568
  %24 = icmp eq i32 %23, %4, !dbg !2570
  %25 = select i1 %24, i64 %18, i64 %22, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %25, metadata !383, metadata !DIExpression()), !dbg !2554
  %26 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2572
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !384, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 %21, metadata !385, metadata !DIExpression()), !dbg !2573
  %27 = icmp slt i64 %21, %25, !dbg !2574
  br i1 %27, label %28, label %40, !dbg !2576

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !2577
  %30 = load %struct.Point*, %struct.Point** %29, align 8, !dbg !2577, !tbaa !1764
  %31 = getelementptr inbounds %struct.Point, %struct.Point* %30, i64 0, i32 1, !dbg !2577
  %32 = load float*, float** %31, align 8, !dbg !2577, !tbaa.struct !1767
  %33 = icmp sgt i32 %17, 0, !dbg !2579
  %34 = zext i32 %17 to i64, !dbg !2579
  %35 = add nsw i64 %34, -1, !dbg !2576
  %36 = and i64 %34, 3, !dbg !2581
  %37 = icmp ult i64 %35, 3, !dbg !2581
  %38 = sub nsw i64 %34, %36, !dbg !2581
  %39 = icmp eq i64 %36, 0, !dbg !2581
  br label %55, !dbg !2576

40:                                               ; preds = %117, %14
  %41 = phi double [ 0.000000e+00, %14 ], [ %123, %117 ], !dbg !2554
  call void @llvm.dbg.value(metadata double %41, metadata !384, metadata !DIExpression()), !dbg !2554
  %42 = load double*, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8, !dbg !2582, !tbaa !1768
  %43 = getelementptr inbounds double, double* %42, i64 %20, !dbg !2582
  store double %41, double* %43, align 8, !dbg !2583, !tbaa !2020
  %44 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2584
  call void @llvm.dbg.value(metadata i32 0, metadata !387, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !376, metadata !DIExpression()), !dbg !2554
  %45 = load i32, i32* @_ZL5nproc, align 4, !dbg !2586, !tbaa !1801
  %46 = icmp sgt i32 %45, 0, !dbg !2588
  br i1 %46, label %47, label %141, !dbg !2589

47:                                               ; preds = %40
  %48 = load double*, double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8, !dbg !2590, !tbaa !1768
  %49 = zext i32 %45 to i64, !dbg !2589
  %50 = add nsw i64 %49, -1, !dbg !2589
  %51 = and i64 %49, 7, !dbg !2589
  %52 = icmp ult i64 %50, 7, !dbg !2589
  br i1 %52, label %126, label %53, !dbg !2589

53:                                               ; preds = %47
  %54 = sub nsw i64 %49, %51, !dbg !2589
  br label %163, !dbg !2589

55:                                               ; preds = %117, %28
  %56 = phi i64 [ %21, %28 ], [ %124, %117 ]
  %57 = phi double [ 0.000000e+00, %28 ], [ %123, %117 ]
  call void @llvm.dbg.value(metadata i64 %56, metadata !385, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata double %57, metadata !384, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 undef, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2592
  %58 = getelementptr inbounds %struct.Point, %struct.Point* %30, i64 %56, i32 1, !dbg !2593
  %59 = load float*, float** %58, align 8, !dbg !2593, !tbaa.struct !1767
  call void @llvm.dbg.value(metadata float* %59, metadata !1813, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2592
  call void @llvm.dbg.value(metadata i64 undef, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2592
  call void @llvm.dbg.value(metadata float* %32, metadata !1814, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2592
  call void @llvm.dbg.value(metadata i32 %17, metadata !1815, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1817, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !2592
  br i1 %33, label %60, label %117, !dbg !2594

60:                                               ; preds = %55
  br i1 %37, label %99, label %61, !dbg !2594

61:                                               ; preds = %60, %61
  %62 = phi i64 [ %96, %61 ], [ 0, %60 ]
  %63 = phi float [ %95, %61 ], [ 0.000000e+00, %60 ]
  %64 = phi i64 [ %97, %61 ], [ %38, %60 ]
  call void @llvm.dbg.value(metadata float %63, metadata !1817, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %62, metadata !1816, metadata !DIExpression()), !dbg !2592
  %65 = getelementptr inbounds float, float* %59, i64 %62, !dbg !2595
  %66 = load float, float* %65, align 4, !dbg !2595, !tbaa !1725
  %67 = getelementptr inbounds float, float* %32, i64 %62, !dbg !2596
  %68 = load float, float* %67, align 4, !dbg !2596, !tbaa !1725
  %69 = fsub float %66, %68, !dbg !2597
  %70 = fmul float %69, %69, !dbg !2598
  %71 = fadd float %63, %70, !dbg !2599
  call void @llvm.dbg.value(metadata float %71, metadata !1817, metadata !DIExpression()), !dbg !2592
  %72 = or i64 %62, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %72, metadata !1816, metadata !DIExpression()), !dbg !2592
  %73 = getelementptr inbounds float, float* %59, i64 %72, !dbg !2595
  %74 = load float, float* %73, align 4, !dbg !2595, !tbaa !1725
  %75 = getelementptr inbounds float, float* %32, i64 %72, !dbg !2596
  %76 = load float, float* %75, align 4, !dbg !2596, !tbaa !1725
  %77 = fsub float %74, %76, !dbg !2597
  %78 = fmul float %77, %77, !dbg !2598
  %79 = fadd float %71, %78, !dbg !2599
  call void @llvm.dbg.value(metadata float %79, metadata !1817, metadata !DIExpression()), !dbg !2592
  %80 = or i64 %62, 2, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %80, metadata !1816, metadata !DIExpression()), !dbg !2592
  %81 = getelementptr inbounds float, float* %59, i64 %80, !dbg !2595
  %82 = load float, float* %81, align 4, !dbg !2595, !tbaa !1725
  %83 = getelementptr inbounds float, float* %32, i64 %80, !dbg !2596
  %84 = load float, float* %83, align 4, !dbg !2596, !tbaa !1725
  %85 = fsub float %82, %84, !dbg !2597
  %86 = fmul float %85, %85, !dbg !2598
  %87 = fadd float %79, %86, !dbg !2599
  call void @llvm.dbg.value(metadata float %87, metadata !1817, metadata !DIExpression()), !dbg !2592
  %88 = or i64 %62, 3, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %88, metadata !1816, metadata !DIExpression()), !dbg !2592
  %89 = getelementptr inbounds float, float* %59, i64 %88, !dbg !2595
  %90 = load float, float* %89, align 4, !dbg !2595, !tbaa !1725
  %91 = getelementptr inbounds float, float* %32, i64 %88, !dbg !2596
  %92 = load float, float* %91, align 4, !dbg !2596, !tbaa !1725
  %93 = fsub float %90, %92, !dbg !2597
  %94 = fmul float %93, %93, !dbg !2598
  %95 = fadd float %87, %94, !dbg !2599
  call void @llvm.dbg.value(metadata float %95, metadata !1817, metadata !DIExpression()), !dbg !2592
  %96 = add nuw nsw i64 %62, 4, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %96, metadata !1816, metadata !DIExpression()), !dbg !2592
  %97 = add i64 %64, -4, !dbg !2594
  %98 = icmp eq i64 %97, 0, !dbg !2594
  br i1 %98, label %99, label %61, !dbg !2594, !llvm.loop !2601

99:                                               ; preds = %61, %60
  %100 = phi float [ undef, %60 ], [ %95, %61 ]
  %101 = phi i64 [ 0, %60 ], [ %96, %61 ]
  %102 = phi float [ 0.000000e+00, %60 ], [ %95, %61 ]
  br i1 %39, label %117, label %103, !dbg !2594

103:                                              ; preds = %99, %103
  %104 = phi i64 [ %114, %103 ], [ %101, %99 ]
  %105 = phi float [ %113, %103 ], [ %102, %99 ]
  %106 = phi i64 [ %115, %103 ], [ %36, %99 ]
  call void @llvm.dbg.value(metadata float %105, metadata !1817, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %104, metadata !1816, metadata !DIExpression()), !dbg !2592
  %107 = getelementptr inbounds float, float* %59, i64 %104, !dbg !2595
  %108 = load float, float* %107, align 4, !dbg !2595, !tbaa !1725
  %109 = getelementptr inbounds float, float* %32, i64 %104, !dbg !2596
  %110 = load float, float* %109, align 4, !dbg !2596, !tbaa !1725
  %111 = fsub float %108, %110, !dbg !2597
  %112 = fmul float %111, %111, !dbg !2598
  %113 = fadd float %105, %112, !dbg !2599
  call void @llvm.dbg.value(metadata float %113, metadata !1817, metadata !DIExpression()), !dbg !2592
  %114 = add nuw nsw i64 %104, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %114, metadata !1816, metadata !DIExpression()), !dbg !2592
  %115 = add i64 %106, -1, !dbg !2594
  %116 = icmp eq i64 %115, 0, !dbg !2594
  br i1 %116, label %117, label %103, !dbg !2594, !llvm.loop !2603

117:                                              ; preds = %99, %103, %55
  %118 = phi float [ 0.000000e+00, %55 ], [ %100, %99 ], [ %113, %103 ], !dbg !2592
  call void @llvm.dbg.value(metadata float %118, metadata !1817, metadata !DIExpression()), !dbg !2592
  %119 = getelementptr inbounds %struct.Point, %struct.Point* %30, i64 %56, i32 0, !dbg !2604
  %120 = load float, float* %119, align 8, !dbg !2604, !tbaa !1878
  %121 = fmul float %118, %120, !dbg !2605
  %122 = fpext float %121 to double, !dbg !2606
  %123 = fadd double %57, %122, !dbg !2607
  call void @llvm.dbg.value(metadata double %123, metadata !384, metadata !DIExpression()), !dbg !2554
  %124 = add nsw i64 %56, 1, !dbg !2608
  call void @llvm.dbg.value(metadata i64 %124, metadata !385, metadata !DIExpression()), !dbg !2573
  %125 = icmp eq i64 %124, %25, !dbg !2574
  br i1 %125, label %40, label %55, !dbg !2576, !llvm.loop !2609

126:                                              ; preds = %163, %47
  %127 = phi double [ undef, %47 ], [ %197, %163 ]
  %128 = phi i64 [ 0, %47 ], [ %198, %163 ]
  %129 = phi double [ 0.000000e+00, %47 ], [ %197, %163 ]
  %130 = icmp eq i64 %51, 0, !dbg !2589
  br i1 %130, label %141, label %131, !dbg !2589

131:                                              ; preds = %126, %131
  %132 = phi i64 [ %138, %131 ], [ %128, %126 ]
  %133 = phi double [ %137, %131 ], [ %129, %126 ]
  %134 = phi i64 [ %139, %131 ], [ %51, %126 ]
  call void @llvm.dbg.value(metadata i64 %132, metadata !387, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata double %133, metadata !376, metadata !DIExpression()), !dbg !2554
  %135 = getelementptr inbounds double, double* %48, i64 %132, !dbg !2611
  %136 = load double, double* %135, align 8, !dbg !2611, !tbaa !2020
  %137 = fadd double %133, %136, !dbg !2612
  call void @llvm.dbg.value(metadata double %137, metadata !376, metadata !DIExpression()), !dbg !2554
  %138 = add nuw nsw i64 %132, 1, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %138, metadata !387, metadata !DIExpression()), !dbg !2585
  %139 = add i64 %134, -1, !dbg !2589
  %140 = icmp eq i64 %139, 0, !dbg !2589
  br i1 %140, label %141, label %131, !dbg !2589, !llvm.loop !2614

141:                                              ; preds = %126, %131, %40
  %142 = phi double [ 0.000000e+00, %40 ], [ %127, %126 ], [ %137, %131 ], !dbg !2554
  call void @llvm.dbg.value(metadata double %142, metadata !376, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !377, metadata !DIExpression()), !dbg !2554
  %143 = fadd double %142, 0.000000e+00, !dbg !2615
  %144 = fmul double %143, 5.000000e-01, !dbg !2616
  call void @llvm.dbg.value(metadata double %144, metadata !378, metadata !DIExpression()), !dbg !2554
  %145 = load i64, i64* %15, align 8, !dbg !2617, !tbaa !1750
  %146 = icmp sgt i64 %145, %2, !dbg !2618
  br i1 %146, label %214, label %147, !dbg !2619

147:                                              ; preds = %141
  call void @llvm.dbg.value(metadata i64 %21, metadata !389, metadata !DIExpression()), !dbg !2620
  br i1 %27, label %148, label %201, !dbg !2621

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !2622
  %150 = load %struct.Point*, %struct.Point** %149, align 8, !dbg !2622, !tbaa !1764
  %151 = mul i64 %19, %20, !dbg !2621
  %152 = sub i64 %25, %151, !dbg !2621
  %153 = and i64 %152, 1, !dbg !2621
  %154 = icmp eq i64 %153, 0, !dbg !2621
  br i1 %154, label %159, label %155, !dbg !2621

155:                                              ; preds = %148
  call void @llvm.dbg.value(metadata i64 %21, metadata !389, metadata !DIExpression()), !dbg !2620
  %156 = getelementptr inbounds %struct.Point, %struct.Point* %150, i64 %21, i32 2, !dbg !2625
  store i64 %21, i64* %156, align 8, !dbg !2626, !tbaa !1885
  %157 = getelementptr inbounds %struct.Point, %struct.Point* %150, i64 %21, i32 3, !dbg !2627
  store float 0.000000e+00, float* %157, align 8, !dbg !2628, !tbaa !1882
  %158 = add nsw i64 %21, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %158, metadata !389, metadata !DIExpression()), !dbg !2620
  br label %159, !dbg !2621

159:                                              ; preds = %148, %155
  %160 = phi i64 [ %21, %148 ], [ %158, %155 ]
  %161 = add i64 %151, 1, !dbg !2621
  %162 = icmp eq i64 %25, %161, !dbg !2621
  br i1 %162, label %201, label %202, !dbg !2621

163:                                              ; preds = %163, %53
  %164 = phi i64 [ 0, %53 ], [ %198, %163 ]
  %165 = phi double [ 0.000000e+00, %53 ], [ %197, %163 ]
  %166 = phi i64 [ %54, %53 ], [ %199, %163 ]
  call void @llvm.dbg.value(metadata i64 %164, metadata !387, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata double %165, metadata !376, metadata !DIExpression()), !dbg !2554
  %167 = getelementptr inbounds double, double* %48, i64 %164, !dbg !2611
  %168 = load double, double* %167, align 8, !dbg !2611, !tbaa !2020
  %169 = fadd double %165, %168, !dbg !2612
  call void @llvm.dbg.value(metadata double %169, metadata !376, metadata !DIExpression()), !dbg !2554
  %170 = or i64 %164, 1, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %170, metadata !387, metadata !DIExpression()), !dbg !2585
  %171 = getelementptr inbounds double, double* %48, i64 %170, !dbg !2611
  %172 = load double, double* %171, align 8, !dbg !2611, !tbaa !2020
  %173 = fadd double %169, %172, !dbg !2612
  call void @llvm.dbg.value(metadata double %173, metadata !376, metadata !DIExpression()), !dbg !2554
  %174 = or i64 %164, 2, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %174, metadata !387, metadata !DIExpression()), !dbg !2585
  %175 = getelementptr inbounds double, double* %48, i64 %174, !dbg !2611
  %176 = load double, double* %175, align 8, !dbg !2611, !tbaa !2020
  %177 = fadd double %173, %176, !dbg !2612
  call void @llvm.dbg.value(metadata double %177, metadata !376, metadata !DIExpression()), !dbg !2554
  %178 = or i64 %164, 3, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %178, metadata !387, metadata !DIExpression()), !dbg !2585
  %179 = getelementptr inbounds double, double* %48, i64 %178, !dbg !2611
  %180 = load double, double* %179, align 8, !dbg !2611, !tbaa !2020
  %181 = fadd double %177, %180, !dbg !2612
  call void @llvm.dbg.value(metadata double %181, metadata !376, metadata !DIExpression()), !dbg !2554
  %182 = or i64 %164, 4, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %182, metadata !387, metadata !DIExpression()), !dbg !2585
  %183 = getelementptr inbounds double, double* %48, i64 %182, !dbg !2611
  %184 = load double, double* %183, align 8, !dbg !2611, !tbaa !2020
  %185 = fadd double %181, %184, !dbg !2612
  call void @llvm.dbg.value(metadata double %185, metadata !376, metadata !DIExpression()), !dbg !2554
  %186 = or i64 %164, 5, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %186, metadata !387, metadata !DIExpression()), !dbg !2585
  %187 = getelementptr inbounds double, double* %48, i64 %186, !dbg !2611
  %188 = load double, double* %187, align 8, !dbg !2611, !tbaa !2020
  %189 = fadd double %185, %188, !dbg !2612
  call void @llvm.dbg.value(metadata double %189, metadata !376, metadata !DIExpression()), !dbg !2554
  %190 = or i64 %164, 6, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %190, metadata !387, metadata !DIExpression()), !dbg !2585
  %191 = getelementptr inbounds double, double* %48, i64 %190, !dbg !2611
  %192 = load double, double* %191, align 8, !dbg !2611, !tbaa !2020
  %193 = fadd double %189, %192, !dbg !2612
  call void @llvm.dbg.value(metadata double %193, metadata !376, metadata !DIExpression()), !dbg !2554
  %194 = or i64 %164, 7, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %194, metadata !387, metadata !DIExpression()), !dbg !2585
  %195 = getelementptr inbounds double, double* %48, i64 %194, !dbg !2611
  %196 = load double, double* %195, align 8, !dbg !2611, !tbaa !2020
  %197 = fadd double %193, %196, !dbg !2612
  call void @llvm.dbg.value(metadata double %197, metadata !376, metadata !DIExpression()), !dbg !2554
  %198 = add nuw nsw i64 %164, 8, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %198, metadata !387, metadata !DIExpression()), !dbg !2585
  %199 = add i64 %166, -8, !dbg !2589
  %200 = icmp eq i64 %199, 0, !dbg !2589
  br i1 %200, label %126, label %163, !dbg !2589, !llvm.loop !2630

201:                                              ; preds = %159, %202, %147
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !374, metadata !DIExpression()), !dbg !2554
  br i1 %9, label %211, label %428, !dbg !2632

202:                                              ; preds = %159, %202
  %203 = phi i64 [ %209, %202 ], [ %160, %159 ]
  call void @llvm.dbg.value(metadata i64 %203, metadata !389, metadata !DIExpression()), !dbg !2620
  %204 = getelementptr inbounds %struct.Point, %struct.Point* %150, i64 %203, i32 2, !dbg !2625
  store i64 %203, i64* %204, align 8, !dbg !2626, !tbaa !1885
  %205 = getelementptr inbounds %struct.Point, %struct.Point* %150, i64 %203, i32 3, !dbg !2627
  store float 0.000000e+00, float* %205, align 8, !dbg !2628, !tbaa !1882
  %206 = add nsw i64 %203, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %206, metadata !389, metadata !DIExpression()), !dbg !2620
  %207 = getelementptr inbounds %struct.Point, %struct.Point* %150, i64 %206, i32 2, !dbg !2625
  store i64 %206, i64* %207, align 8, !dbg !2626, !tbaa !1885
  %208 = getelementptr inbounds %struct.Point, %struct.Point* %150, i64 %206, i32 3, !dbg !2627
  store float 0.000000e+00, float* %208, align 8, !dbg !2628, !tbaa !1882
  %209 = add nsw i64 %203, 2, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %209, metadata !389, metadata !DIExpression()), !dbg !2620
  %210 = icmp eq i64 %209, %25, !dbg !2633
  br i1 %210, label %201, label %202, !dbg !2621, !llvm.loop !2634

211:                                              ; preds = %201
  %212 = load i8*, i8** bitcast (double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs to i8**), align 8, !dbg !2636, !tbaa !1768
  tail call void @free(i8* %212) #15, !dbg !2639
  %213 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8, !dbg !2640, !tbaa !1769
  store i64 %213, i64* %3, align 8, !dbg !2641, !tbaa !1769
  br label %428, !dbg !2642

214:                                              ; preds = %141
  br i1 %9, label %215, label %240, !dbg !2643

215:                                              ; preds = %214
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !1740, metadata !DIExpression()) #15, !dbg !2644
  %216 = bitcast %struct.Point* %8 to i8*, !dbg !2645
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %216), !dbg !2645
  call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()) #15, !dbg !2644
  %217 = icmp sgt i64 %145, 1, !dbg !2646
  br i1 %217, label %218, label %239, !dbg !2647

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !2648
  br label %220, !dbg !2647

220:                                              ; preds = %220, %218
  %221 = phi i64 [ 0, %218 ], [ %235, %220 ]
  call void @llvm.dbg.value(metadata i64 %221, metadata !1741, metadata !DIExpression()) #15, !dbg !2644
  %222 = tail call i64 @lrand48() #15, !dbg !2649
  %223 = load i64, i64* %15, align 8, !dbg !2650, !tbaa !1750
  %224 = sub nsw i64 %223, %221, !dbg !2651
  %225 = srem i64 %222, %224, !dbg !2652
  %226 = add nsw i64 %225, %221, !dbg !2653
  call void @llvm.dbg.value(metadata i64 %226, metadata !1742, metadata !DIExpression()) #15, !dbg !2644
  %227 = load %struct.Point*, %struct.Point** %219, align 8, !dbg !2654, !tbaa !1764
  %228 = getelementptr inbounds %struct.Point, %struct.Point* %227, i64 %221, !dbg !2655
  %229 = bitcast %struct.Point* %228 to i8*, !dbg !2656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %216, i8* nonnull align 8 dereferenceable(32) %229, i64 32, i1 false) #15, !dbg !2656, !tbaa.struct !1767
  %230 = getelementptr inbounds %struct.Point, %struct.Point* %227, i64 %226, !dbg !2657
  %231 = bitcast %struct.Point* %230 to i8*, !dbg !2658
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %229, i8* nonnull align 8 dereferenceable(32) %231, i64 32, i1 false) #15, !dbg !2658, !tbaa.struct !1767
  %232 = load %struct.Point*, %struct.Point** %219, align 8, !dbg !2659, !tbaa !1764
  %233 = getelementptr inbounds %struct.Point, %struct.Point* %232, i64 %226, !dbg !2660
  %234 = bitcast %struct.Point* %233 to i8*, !dbg !2661
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %234, i8* nonnull align 8 dereferenceable(32) %216, i64 32, i1 false) #15, !dbg !2661, !tbaa.struct !1767
  %235 = add nuw nsw i64 %221, 1, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %235, metadata !1741, metadata !DIExpression()) #15, !dbg !2644
  %236 = load i64, i64* %15, align 8, !dbg !2663, !tbaa !1750
  %237 = add nsw i64 %236, -1, !dbg !2664
  %238 = icmp slt i64 %235, %237, !dbg !2646
  br i1 %238, label %220, label %239, !dbg !2647, !llvm.loop !2665

239:                                              ; preds = %220, %215
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %216), !dbg !2667
  br label %240, !dbg !2668

240:                                              ; preds = %239, %214
  %241 = fptrunc double %144 to float, !dbg !2669
  %242 = tail call float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* nonnull %0, float %241, i64* nonnull @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 %4, %union.pthread_barrier_t* %5), !dbg !2670
  call void @llvm.dbg.value(metadata double undef, metadata !374, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !2554
  %243 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8, !dbg !2671, !tbaa !1769
  %244 = icmp slt i64 %243, %1, !dbg !2672
  br i1 %244, label %245, label %248, !dbg !2673

245:                                              ; preds = %240
  %246 = tail call float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* nonnull %0, float %241, i64* nonnull @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 %4, %union.pthread_barrier_t* %5), !dbg !2674
  call void @llvm.dbg.value(metadata i32 1, metadata !373, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double undef, metadata !374, metadata !DIExpression()), !dbg !2554
  %247 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8, !dbg !2676, !tbaa !1769
  br label %248, !dbg !2676

248:                                              ; preds = %245, %240
  %249 = phi i64 [ %243, %240 ], [ %247, %245 ], !dbg !2676
  %250 = phi float [ %242, %240 ], [ %246, %245 ]
  %251 = phi i32 [ 0, %240 ], [ 1, %245 ], !dbg !2554
  call void @llvm.dbg.value(metadata i32 %251, metadata !373, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double undef, metadata !374, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %142, metadata !376, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %144, metadata !378, metadata !DIExpression()), !dbg !2554
  %252 = icmp slt i64 %249, %1, !dbg !2677
  br i1 %252, label %253, label %295, !dbg !2678

253:                                              ; preds = %248
  %254 = bitcast %struct.Point* %7 to i8*, !dbg !2679
  %255 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !2680
  br label %256, !dbg !2678

256:                                              ; preds = %253, %288
  %257 = phi i32 [ %251, %253 ], [ %292, %288 ]
  %258 = phi double [ %142, %253 ], [ %264, %288 ]
  %259 = phi double [ %144, %253 ], [ %263, %288 ]
  call void @llvm.dbg.value(metadata i32 %257, metadata !373, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %258, metadata !376, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %259, metadata !378, metadata !DIExpression()), !dbg !2554
  %260 = icmp sgt i32 %257, 0, !dbg !2681
  %261 = fadd double %259, 0.000000e+00, !dbg !2683
  %262 = fmul double %261, 5.000000e-01, !dbg !2683
  %263 = select i1 %260, double %262, double %259, !dbg !2683
  %264 = select i1 %260, double %259, double %258, !dbg !2683
  call void @llvm.dbg.value(metadata i32 undef, metadata !373, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %264, metadata !376, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %263, metadata !378, metadata !DIExpression()), !dbg !2554
  br i1 %9, label %265, label %288, !dbg !2684

265:                                              ; preds = %256
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !1740, metadata !DIExpression()) #15, !dbg !2679
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %254), !dbg !2685
  call void @llvm.dbg.value(metadata i64 0, metadata !1741, metadata !DIExpression()) #15, !dbg !2679
  %266 = load i64, i64* %15, align 8, !dbg !2686, !tbaa !1750
  %267 = icmp sgt i64 %266, 1, !dbg !2687
  br i1 %267, label %268, label %287, !dbg !2688

268:                                              ; preds = %265, %268
  %269 = phi i64 [ %283, %268 ], [ 0, %265 ]
  call void @llvm.dbg.value(metadata i64 %269, metadata !1741, metadata !DIExpression()) #15, !dbg !2679
  %270 = tail call i64 @lrand48() #15, !dbg !2689
  %271 = load i64, i64* %15, align 8, !dbg !2690, !tbaa !1750
  %272 = sub nsw i64 %271, %269, !dbg !2691
  %273 = srem i64 %270, %272, !dbg !2692
  %274 = add nsw i64 %273, %269, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %274, metadata !1742, metadata !DIExpression()) #15, !dbg !2679
  %275 = load %struct.Point*, %struct.Point** %255, align 8, !dbg !2694, !tbaa !1764
  %276 = getelementptr inbounds %struct.Point, %struct.Point* %275, i64 %269, !dbg !2695
  %277 = bitcast %struct.Point* %276 to i8*, !dbg !2696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %254, i8* nonnull align 8 dereferenceable(32) %277, i64 32, i1 false) #15, !dbg !2696, !tbaa.struct !1767
  %278 = getelementptr inbounds %struct.Point, %struct.Point* %275, i64 %274, !dbg !2697
  %279 = bitcast %struct.Point* %278 to i8*, !dbg !2698
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %277, i8* nonnull align 8 dereferenceable(32) %279, i64 32, i1 false) #15, !dbg !2698, !tbaa.struct !1767
  %280 = load %struct.Point*, %struct.Point** %255, align 8, !dbg !2699, !tbaa !1764
  %281 = getelementptr inbounds %struct.Point, %struct.Point* %280, i64 %274, !dbg !2700
  %282 = bitcast %struct.Point* %281 to i8*, !dbg !2701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %282, i8* nonnull align 8 dereferenceable(32) %254, i64 32, i1 false) #15, !dbg !2701, !tbaa.struct !1767
  %283 = add nuw nsw i64 %269, 1, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %283, metadata !1741, metadata !DIExpression()) #15, !dbg !2679
  %284 = load i64, i64* %15, align 8, !dbg !2686, !tbaa !1750
  %285 = add nsw i64 %284, -1, !dbg !2703
  %286 = icmp slt i64 %283, %285, !dbg !2687
  br i1 %286, label %268, label %287, !dbg !2688, !llvm.loop !2704

287:                                              ; preds = %268, %265
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %254), !dbg !2706
  br label %288, !dbg !2707

288:                                              ; preds = %287, %256
  %289 = fptrunc double %263 to float, !dbg !2708
  %290 = tail call float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* %0, float %289, i64* nonnull @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 %4, %union.pthread_barrier_t* %5), !dbg !2709
  call void @llvm.dbg.value(metadata double undef, metadata !374, metadata !DIExpression()), !dbg !2554
  %291 = add nsw i32 %257, 1, !dbg !2710
  %292 = select i1 %260, i32 1, i32 %291, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %292, metadata !373, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %264, metadata !376, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %263, metadata !378, metadata !DIExpression()), !dbg !2554
  %293 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8, !dbg !2676, !tbaa !1769
  %294 = icmp slt i64 %293, %1, !dbg !2677
  br i1 %294, label %256, label %295, !dbg !2678, !llvm.loop !2711

295:                                              ; preds = %288, %248
  %296 = phi double [ %144, %248 ], [ %263, %288 ], !dbg !2554
  %297 = phi double [ %142, %248 ], [ %264, %288 ], !dbg !2554
  %298 = phi float [ %250, %248 ], [ %290, %288 ]
  %299 = fpext float %298 to double, !dbg !2554
  call void @llvm.dbg.value(metadata double %296, metadata !378, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %297, metadata !376, metadata !DIExpression()), !dbg !2554
  br i1 %9, label %300, label %347, !dbg !2713

300:                                              ; preds = %295
  %301 = trunc i64 %1 to i32, !dbg !2714
  %302 = tail call i32 @_Z19selectfeasible_fastP6PointsPPiiiP17pthread_barrier_t(%struct.Points* %0, i32** nonnull @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, i32 %301, i32 undef, %union.pthread_barrier_t* undef), !dbg !2715
  store i32 %302, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4, !dbg !2716, !tbaa !1801
  call void @llvm.dbg.value(metadata i32 0, metadata !393, metadata !DIExpression()), !dbg !2717
  %303 = load i64, i64* %15, align 8, !dbg !2718, !tbaa !1750
  %304 = icmp sgt i64 %303, 0, !dbg !2720
  br i1 %304, label %305, label %347, !dbg !2721

305:                                              ; preds = %300
  %306 = load i8*, i8** @_ZL9is_center, align 8, !dbg !2722, !tbaa !1768
  %307 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !2722
  %308 = load %struct.Point*, %struct.Point** %307, align 8, !dbg !2722, !tbaa !1764
  %309 = add i64 %303, -1, !dbg !2721
  %310 = and i64 %303, 3, !dbg !2721
  %311 = icmp ult i64 %309, 3, !dbg !2721
  br i1 %311, label %335, label %312, !dbg !2721

312:                                              ; preds = %305
  %313 = sub i64 %303, %310, !dbg !2721
  br label %314, !dbg !2721

314:                                              ; preds = %314, %312
  %315 = phi i64 [ 0, %312 ], [ %332, %314 ]
  %316 = phi i64 [ %313, %312 ], [ %333, %314 ]
  call void @llvm.dbg.value(metadata i64 %315, metadata !393, metadata !DIExpression()), !dbg !2717
  %317 = getelementptr inbounds %struct.Point, %struct.Point* %308, i64 %315, i32 2, !dbg !2724
  %318 = load i64, i64* %317, align 8, !dbg !2724, !tbaa !1885
  %319 = getelementptr inbounds i8, i8* %306, i64 %318, !dbg !2725
  store i8 1, i8* %319, align 1, !dbg !2726, !tbaa !2099
  %320 = or i64 %315, 1, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %320, metadata !393, metadata !DIExpression()), !dbg !2717
  %321 = getelementptr inbounds %struct.Point, %struct.Point* %308, i64 %320, i32 2, !dbg !2724
  %322 = load i64, i64* %321, align 8, !dbg !2724, !tbaa !1885
  %323 = getelementptr inbounds i8, i8* %306, i64 %322, !dbg !2725
  store i8 1, i8* %323, align 1, !dbg !2726, !tbaa !2099
  %324 = or i64 %315, 2, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %324, metadata !393, metadata !DIExpression()), !dbg !2717
  %325 = getelementptr inbounds %struct.Point, %struct.Point* %308, i64 %324, i32 2, !dbg !2724
  %326 = load i64, i64* %325, align 8, !dbg !2724, !tbaa !1885
  %327 = getelementptr inbounds i8, i8* %306, i64 %326, !dbg !2725
  store i8 1, i8* %327, align 1, !dbg !2726, !tbaa !2099
  %328 = or i64 %315, 3, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %328, metadata !393, metadata !DIExpression()), !dbg !2717
  %329 = getelementptr inbounds %struct.Point, %struct.Point* %308, i64 %328, i32 2, !dbg !2724
  %330 = load i64, i64* %329, align 8, !dbg !2724, !tbaa !1885
  %331 = getelementptr inbounds i8, i8* %306, i64 %330, !dbg !2725
  store i8 1, i8* %331, align 1, !dbg !2726, !tbaa !2099
  %332 = add nuw nsw i64 %315, 4, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %332, metadata !393, metadata !DIExpression()), !dbg !2717
  %333 = add i64 %316, -4, !dbg !2721
  %334 = icmp eq i64 %333, 0, !dbg !2721
  br i1 %334, label %335, label %314, !dbg !2721, !llvm.loop !2728

335:                                              ; preds = %314, %305
  %336 = phi i64 [ 0, %305 ], [ %332, %314 ]
  %337 = icmp eq i64 %310, 0, !dbg !2721
  br i1 %337, label %347, label %338, !dbg !2721

338:                                              ; preds = %335, %338
  %339 = phi i64 [ %344, %338 ], [ %336, %335 ]
  %340 = phi i64 [ %345, %338 ], [ %310, %335 ]
  call void @llvm.dbg.value(metadata i64 %339, metadata !393, metadata !DIExpression()), !dbg !2717
  %341 = getelementptr inbounds %struct.Point, %struct.Point* %308, i64 %339, i32 2, !dbg !2724
  %342 = load i64, i64* %341, align 8, !dbg !2724, !tbaa !1885
  %343 = getelementptr inbounds i8, i8* %306, i64 %342, !dbg !2725
  store i8 1, i8* %343, align 1, !dbg !2726, !tbaa !2099
  %344 = add nuw nsw i64 %339, 1, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %344, metadata !393, metadata !DIExpression()), !dbg !2717
  %345 = add i64 %340, -1, !dbg !2721
  %346 = icmp eq i64 %345, 0, !dbg !2721
  br i1 %346, label %347, label %338, !dbg !2721, !llvm.loop !2730

347:                                              ; preds = %335, %338, %300, %295
  %348 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2731
  %349 = mul nsw i64 %2, 3, !dbg !2732
  %350 = sitofp i64 %349 to double, !dbg !2732
  %351 = sitofp i64 %2 to double, !dbg !2732
  %352 = fmul double %351, 1.100000e+00, !dbg !2734
  %353 = sitofp i64 %1 to double, !dbg !2734
  %354 = fmul double %353, 9.000000e-01, !dbg !2734
  %355 = add nsw i64 %2, 2, !dbg !2734
  %356 = add nsw i64 %1, -2, !dbg !2734
  br label %357, !dbg !2736

357:                                              ; preds = %419, %347
  %358 = phi double [ 0.000000e+00, %347 ], [ %400, %419 ], !dbg !2554
  %359 = phi double [ %296, %347 ], [ %412, %419 ], !dbg !2554
  %360 = phi double [ %297, %347 ], [ %413, %419 ], !dbg !2554
  %361 = phi double [ %299, %347 ], [ %414, %419 ], !dbg !2554
  call void @llvm.dbg.value(metadata double %361, metadata !374, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %360, metadata !376, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %359, metadata !378, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %358, metadata !377, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %361, metadata !375, metadata !DIExpression()), !dbg !2554
  %362 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8, !dbg !2737, !tbaa !1768
  %363 = load i32, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4, !dbg !2738, !tbaa !1801
  %364 = fptrunc double %359 to float, !dbg !2739
  %365 = tail call double @log(double %351) #15, !dbg !2740
  %366 = fmul double %365, %350, !dbg !2741
  %367 = fptosi double %366 to i64, !dbg !2742
  %368 = tail call float @_Z3pFLP6PointsPiifPldlfiP17pthread_barrier_t(%struct.Points* %0, i32* %362, i32 %363, float %364, i64* nonnull @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, double %361, i64 %367, float 0x3FB99999A0000000, i32 %4, %union.pthread_barrier_t* %5), !dbg !2743
  %369 = fpext float %368 to double, !dbg !2743
  call void @llvm.dbg.value(metadata double %369, metadata !374, metadata !DIExpression()), !dbg !2554
  %370 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8, !dbg !2744, !tbaa !1769
  %371 = sitofp i64 %370 to double, !dbg !2744
  %372 = fcmp ult double %352, %371, !dbg !2745
  %373 = fcmp ugt double %354, %371, !dbg !2746
  %374 = or i1 %372, %373, !dbg !2747
  br i1 %374, label %375, label %379, !dbg !2747

375:                                              ; preds = %357
  %376 = icmp sgt i64 %370, %355, !dbg !2748
  %377 = icmp slt i64 %370, %356, !dbg !2749
  %378 = or i1 %376, %377, !dbg !2750
  br i1 %378, label %388, label %379, !dbg !2750

379:                                              ; preds = %357, %375
  %380 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8, !dbg !2751, !tbaa !1768
  %381 = load i32, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4, !dbg !2753, !tbaa !1801
  %382 = tail call double @log(double %351) #15, !dbg !2754
  %383 = fmul double %382, %350, !dbg !2755
  %384 = fptosi double %383 to i64, !dbg !2756
  %385 = tail call float @_Z3pFLP6PointsPiifPldlfiP17pthread_barrier_t(%struct.Points* %0, i32* %380, i32 %381, float %364, i64* nonnull @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, double %369, i64 %384, float 0x3F50624DE0000000, i32 %4, %union.pthread_barrier_t* %5), !dbg !2757
  %386 = fpext float %385 to double, !dbg !2757
  call void @llvm.dbg.value(metadata double %386, metadata !374, metadata !DIExpression()), !dbg !2554
  %387 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8, !dbg !2758, !tbaa !1769
  br label %388, !dbg !2760

388:                                              ; preds = %375, %379
  %389 = phi i64 [ %387, %379 ], [ %370, %375 ], !dbg !2758
  %390 = phi double [ %386, %379 ], [ %369, %375 ], !dbg !2732
  call void @llvm.dbg.value(metadata double %390, metadata !374, metadata !DIExpression()), !dbg !2554
  %391 = icmp sgt i64 %389, %2, !dbg !2761
  br i1 %391, label %392, label %399, !dbg !2762

392:                                              ; preds = %388
  call void @llvm.dbg.value(metadata double %359, metadata !377, metadata !DIExpression()), !dbg !2554
  %393 = fadd double %359, %360, !dbg !2763
  %394 = fmul double %393, 5.000000e-01, !dbg !2765
  call void @llvm.dbg.value(metadata double %394, metadata !378, metadata !DIExpression()), !dbg !2554
  %395 = fsub double %394, %359, !dbg !2766
  %396 = sitofp i64 %389 to double, !dbg !2767
  %397 = fmul double %395, %396, !dbg !2768
  %398 = fadd double %390, %397, !dbg !2769
  call void @llvm.dbg.value(metadata double %398, metadata !374, metadata !DIExpression()), !dbg !2554
  br label %399, !dbg !2770

399:                                              ; preds = %392, %388
  %400 = phi double [ %359, %392 ], [ %358, %388 ], !dbg !2554
  %401 = phi double [ %394, %392 ], [ %359, %388 ], !dbg !2554
  %402 = phi double [ %398, %392 ], [ %390, %388 ], !dbg !2732
  call void @llvm.dbg.value(metadata double %402, metadata !374, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %401, metadata !378, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %400, metadata !377, metadata !DIExpression()), !dbg !2554
  %403 = icmp slt i64 %389, %1, !dbg !2771
  br i1 %403, label %404, label %411, !dbg !2773

404:                                              ; preds = %399
  call void @llvm.dbg.value(metadata double %401, metadata !376, metadata !DIExpression()), !dbg !2554
  %405 = fadd double %400, %401, !dbg !2774
  %406 = fmul double %405, 5.000000e-01, !dbg !2776
  call void @llvm.dbg.value(metadata double %406, metadata !378, metadata !DIExpression()), !dbg !2554
  %407 = fsub double %406, %401, !dbg !2777
  %408 = sitofp i64 %389 to double, !dbg !2778
  %409 = fmul double %407, %408, !dbg !2779
  %410 = fadd double %402, %409, !dbg !2780
  call void @llvm.dbg.value(metadata double %410, metadata !374, metadata !DIExpression()), !dbg !2554
  br label %411, !dbg !2781

411:                                              ; preds = %404, %399
  %412 = phi double [ %406, %404 ], [ %401, %399 ], !dbg !2732
  %413 = phi double [ %401, %404 ], [ %360, %399 ], !dbg !2554
  %414 = phi double [ %410, %404 ], [ %402, %399 ], !dbg !2732
  call void @llvm.dbg.value(metadata double %414, metadata !374, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %413, metadata !376, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %412, metadata !378, metadata !DIExpression()), !dbg !2554
  %415 = or i1 %391, %403, !dbg !2782
  %416 = fmul double %413, 0x3FEFF7CED916872B, !dbg !2784
  %417 = fcmp ult double %400, %416, !dbg !2785
  %418 = and i1 %415, %417, !dbg !2782
  br i1 %418, label %419, label %421, !dbg !2782

419:                                              ; preds = %411
  %420 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %5) #15, !dbg !2786
  br label %357, !dbg !2736, !llvm.loop !2787

421:                                              ; preds = %411
  call void @llvm.dbg.value(metadata double %414, metadata !374, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %414, metadata !374, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %414, metadata !374, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %414, metadata !374, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %414, metadata !374, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata double %414, metadata !374, metadata !DIExpression()), !dbg !2554
  br i1 %9, label %422, label %426, !dbg !2789

422:                                              ; preds = %421
  %423 = load i8*, i8** bitcast (i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible to i8**), align 8, !dbg !2790, !tbaa !1768
  tail call void @free(i8* %423) #15, !dbg !2793
  %424 = load i8*, i8** bitcast (double** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs to i8**), align 8, !dbg !2794, !tbaa !1768
  tail call void @free(i8* %424) #15, !dbg !2795
  %425 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8, !dbg !2796, !tbaa !1769
  store i64 %425, i64* %3, align 8, !dbg !2797, !tbaa !1769
  br label %426, !dbg !2798

426:                                              ; preds = %422, %421
  %427 = fptrunc double %414 to float, !dbg !2799
  br label %428, !dbg !2800

428:                                              ; preds = %201, %211, %426
  %429 = phi float [ %427, %426 ], [ 0.000000e+00, %211 ], [ 0.000000e+00, %201 ], !dbg !2554
  ret float %429, !dbg !2801
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @_Z11contcentersP6Points(%struct.Points* nocapture readonly %0) local_unnamed_addr #8 !dbg !2802 {
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !2806, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 0, metadata !2807, metadata !DIExpression()), !dbg !2810
  %2 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 0, !dbg !2811
  %3 = load i64, i64* %2, align 8, !dbg !2811, !tbaa !1750
  %4 = icmp sgt i64 %3, 0, !dbg !2814
  br i1 %4, label %5, label %127, !dbg !2815

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !2816
  %7 = load %struct.Point*, %struct.Point** %6, align 8, !dbg !2816, !tbaa !1764
  %8 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 1, !dbg !2819
  br label %9, !dbg !2815

9:                                                ; preds = %5, %124
  %10 = phi i64 [ 0, %5 ], [ %125, %124 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !2807, metadata !DIExpression()), !dbg !2810
  %11 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 %10, i32 2, !dbg !2823
  %12 = load i64, i64* %11, align 8, !dbg !2823, !tbaa !1885
  %13 = icmp eq i64 %12, %10, !dbg !2824
  br i1 %13, label %124, label %14, !dbg !2825

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 %12, i32 0, !dbg !2826
  %16 = load float, float* %15, align 8, !dbg !2826, !tbaa !1878
  %17 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 %10, i32 0, !dbg !2827
  %18 = load float, float* %17, align 8, !dbg !2827, !tbaa !1878
  %19 = fadd float %16, %18, !dbg !2828
  call void @llvm.dbg.value(metadata float %19, metadata !2809, metadata !DIExpression()), !dbg !2810
  %20 = fdiv float %18, %19, !dbg !2829
  call void @llvm.dbg.value(metadata float %20, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 0, metadata !2808, metadata !DIExpression()), !dbg !2810
  %21 = load i32, i32* %8, align 8, !dbg !2830, !tbaa !1856
  %22 = icmp sgt i32 %21, 0, !dbg !2831
  br i1 %22, label %23, label %122, !dbg !2832

23:                                               ; preds = %14
  %24 = fpext float %20 to double, !dbg !2833
  %25 = fsub double 1.000000e+00, %24, !dbg !2833
  %26 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 %12, i32 1, !dbg !2833
  %27 = load float*, float** %26, align 8, !dbg !2833, !tbaa !1826
  %28 = getelementptr inbounds %struct.Point, %struct.Point* %7, i64 %10, i32 1, !dbg !2833
  %29 = load float*, float** %28, align 8, !dbg !2833, !tbaa !1826
  %30 = zext i32 %21 to i64, !dbg !2819
  %31 = icmp ult i32 %21, 4, !dbg !2832
  br i1 %31, label %103, label %32, !dbg !2832

32:                                               ; preds = %23
  %33 = getelementptr float, float* %27, i64 %30, !dbg !2832
  %34 = getelementptr float, float* %29, i64 %30, !dbg !2832
  %35 = icmp ult float* %27, %34, !dbg !2832
  %36 = icmp ult float* %29, %33, !dbg !2832
  %37 = and i1 %35, %36, !dbg !2832
  br i1 %37, label %103, label %38, !dbg !2832

38:                                               ; preds = %32
  %39 = and i64 %30, 4294967292, !dbg !2832
  %40 = insertelement <4 x double> undef, double %25, i32 0, !dbg !2832
  %41 = shufflevector <4 x double> %40, <4 x double> undef, <4 x i32> zeroinitializer, !dbg !2832
  %42 = insertelement <4 x float> undef, float %20, i32 0, !dbg !2832
  %43 = shufflevector <4 x float> %42, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !2832
  %44 = add nsw i64 %39, -4, !dbg !2832
  %45 = lshr exact i64 %44, 2, !dbg !2832
  %46 = add nuw nsw i64 %45, 1, !dbg !2832
  %47 = and i64 %46, 1, !dbg !2832
  %48 = icmp eq i64 %44, 0, !dbg !2832
  br i1 %48, label %84, label %49, !dbg !2832

49:                                               ; preds = %38
  %50 = sub nuw nsw i64 %46, %47, !dbg !2832
  br label %51, !dbg !2832

51:                                               ; preds = %51, %49
  %52 = phi i64 [ 0, %49 ], [ %81, %51 ], !dbg !2835
  %53 = phi i64 [ %50, %49 ], [ %82, %51 ]
  %54 = getelementptr inbounds float, float* %27, i64 %52, !dbg !2836
  %55 = bitcast float* %54 to <4 x float>*, !dbg !2837
  %56 = load <4 x float>, <4 x float>* %55, align 4, !dbg !2837, !tbaa !1725, !alias.scope !2838, !noalias !2841
  %57 = fpext <4 x float> %56 to <4 x double>, !dbg !2837
  %58 = fmul <4 x double> %41, %57, !dbg !2837
  %59 = fptrunc <4 x double> %58 to <4 x float>, !dbg !2837
  %60 = bitcast float* %54 to <4 x float>*, !dbg !2837
  store <4 x float> %59, <4 x float>* %60, align 4, !dbg !2837, !tbaa !1725, !alias.scope !2838, !noalias !2841
  %61 = getelementptr inbounds float, float* %29, i64 %52, !dbg !2843
  %62 = bitcast float* %61 to <4 x float>*, !dbg !2843
  %63 = load <4 x float>, <4 x float>* %62, align 4, !dbg !2843, !tbaa !1725, !alias.scope !2841
  %64 = fmul <4 x float> %43, %63, !dbg !2844
  %65 = fadd <4 x float> %64, %59, !dbg !2845
  %66 = bitcast float* %54 to <4 x float>*, !dbg !2845
  store <4 x float> %65, <4 x float>* %66, align 4, !dbg !2845, !tbaa !1725, !alias.scope !2838, !noalias !2841
  %67 = or i64 %52, 4, !dbg !2835
  %68 = getelementptr inbounds float, float* %27, i64 %67, !dbg !2836
  %69 = bitcast float* %68 to <4 x float>*, !dbg !2837
  %70 = load <4 x float>, <4 x float>* %69, align 4, !dbg !2837, !tbaa !1725, !alias.scope !2838, !noalias !2841
  %71 = fpext <4 x float> %70 to <4 x double>, !dbg !2837
  %72 = fmul <4 x double> %41, %71, !dbg !2837
  %73 = fptrunc <4 x double> %72 to <4 x float>, !dbg !2837
  %74 = bitcast float* %68 to <4 x float>*, !dbg !2837
  store <4 x float> %73, <4 x float>* %74, align 4, !dbg !2837, !tbaa !1725, !alias.scope !2838, !noalias !2841
  %75 = getelementptr inbounds float, float* %29, i64 %67, !dbg !2843
  %76 = bitcast float* %75 to <4 x float>*, !dbg !2843
  %77 = load <4 x float>, <4 x float>* %76, align 4, !dbg !2843, !tbaa !1725, !alias.scope !2841
  %78 = fmul <4 x float> %43, %77, !dbg !2844
  %79 = fadd <4 x float> %78, %73, !dbg !2845
  %80 = bitcast float* %68 to <4 x float>*, !dbg !2845
  store <4 x float> %79, <4 x float>* %80, align 4, !dbg !2845, !tbaa !1725, !alias.scope !2838, !noalias !2841
  %81 = add i64 %52, 8, !dbg !2835
  %82 = add i64 %53, -2, !dbg !2835
  %83 = icmp eq i64 %82, 0, !dbg !2835
  br i1 %83, label %84, label %51, !dbg !2835, !llvm.loop !2846

84:                                               ; preds = %51, %38
  %85 = phi i64 [ 0, %38 ], [ %81, %51 ]
  %86 = icmp eq i64 %47, 0, !dbg !2835
  br i1 %86, label %101, label %87, !dbg !2835

87:                                               ; preds = %84
  %88 = getelementptr inbounds float, float* %27, i64 %85, !dbg !2836
  %89 = bitcast float* %88 to <4 x float>*, !dbg !2837
  %90 = load <4 x float>, <4 x float>* %89, align 4, !dbg !2837, !tbaa !1725, !alias.scope !2838, !noalias !2841
  %91 = fpext <4 x float> %90 to <4 x double>, !dbg !2837
  %92 = fmul <4 x double> %41, %91, !dbg !2837
  %93 = fptrunc <4 x double> %92 to <4 x float>, !dbg !2837
  %94 = bitcast float* %88 to <4 x float>*, !dbg !2837
  store <4 x float> %93, <4 x float>* %94, align 4, !dbg !2837, !tbaa !1725, !alias.scope !2838, !noalias !2841
  %95 = getelementptr inbounds float, float* %29, i64 %85, !dbg !2843
  %96 = bitcast float* %95 to <4 x float>*, !dbg !2843
  %97 = load <4 x float>, <4 x float>* %96, align 4, !dbg !2843, !tbaa !1725, !alias.scope !2841
  %98 = fmul <4 x float> %43, %97, !dbg !2844
  %99 = fadd <4 x float> %98, %93, !dbg !2845
  %100 = bitcast float* %88 to <4 x float>*, !dbg !2845
  store <4 x float> %99, <4 x float>* %100, align 4, !dbg !2845, !tbaa !1725, !alias.scope !2838, !noalias !2841
  br label %101, !dbg !2832

101:                                              ; preds = %84, %87
  %102 = icmp eq i64 %39, %30, !dbg !2832
  br i1 %102, label %118, label %103, !dbg !2832

103:                                              ; preds = %101, %32, %23
  %104 = phi i64 [ 0, %32 ], [ 0, %23 ], [ %39, %101 ]
  br label %105, !dbg !2832

105:                                              ; preds = %103, %105
  %106 = phi i64 [ %116, %105 ], [ %104, %103 ]
  call void @llvm.dbg.value(metadata i64 %106, metadata !2808, metadata !DIExpression()), !dbg !2810
  %107 = getelementptr inbounds float, float* %27, i64 %106, !dbg !2836
  %108 = load float, float* %107, align 4, !dbg !2837, !tbaa !1725
  %109 = fpext float %108 to double, !dbg !2837
  %110 = fmul double %25, %109, !dbg !2837
  %111 = fptrunc double %110 to float, !dbg !2837
  store float %111, float* %107, align 4, !dbg !2837, !tbaa !1725
  %112 = getelementptr inbounds float, float* %29, i64 %106, !dbg !2843
  %113 = load float, float* %112, align 4, !dbg !2843, !tbaa !1725
  %114 = fmul float %20, %113, !dbg !2844
  %115 = fadd float %114, %111, !dbg !2845
  store float %115, float* %107, align 4, !dbg !2845, !tbaa !1725
  %116 = add nuw nsw i64 %106, 1, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %116, metadata !2808, metadata !DIExpression()), !dbg !2810
  %117 = icmp ult i64 %116, %30, !dbg !2831
  br i1 %117, label %105, label %118, !dbg !2832, !llvm.loop !2848

118:                                              ; preds = %105, %101
  %119 = load float, float* %17, align 8, !dbg !2849, !tbaa !1878
  %120 = load float, float* %15, align 8, !dbg !2850, !tbaa !1878
  %121 = fadd float %119, %120, !dbg !2850
  br label %122, !dbg !2849

122:                                              ; preds = %118, %14
  %123 = phi float [ %121, %118 ], [ %19, %14 ], !dbg !2850
  store float %123, float* %15, align 8, !dbg !2850, !tbaa !1878
  br label %124, !dbg !2851

124:                                              ; preds = %9, %122
  %125 = add nuw nsw i64 %10, 1, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %125, metadata !2807, metadata !DIExpression()), !dbg !2810
  %126 = icmp slt i64 %125, %3, !dbg !2814
  br i1 %126, label %9, label %127, !dbg !2815, !llvm.loop !2853

127:                                              ; preds = %124, %1
  ret i32 0, !dbg !2855
}

; Function Attrs: nounwind uwtable
define dso_local void @_Z11copycentersP6PointsS0_Pll(%struct.Points* nocapture readonly %0, %struct.Points* nocapture %1, i64* nocapture %2, i64 %3) local_unnamed_addr #0 !dbg !2856 {
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !2860, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata %struct.Points* %1, metadata !2861, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64* %2, metadata !2862, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %3, metadata !2863, metadata !DIExpression()), !dbg !2867
  %5 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 0, !dbg !2868
  %6 = load i64, i64* %5, align 8, !dbg !2868, !tbaa !1750
  %7 = tail call noalias i8* @calloc(i64 %6, i64 1) #15, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %7, metadata !2866, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 0, metadata !2864, metadata !DIExpression()), !dbg !2867
  %8 = icmp sgt i64 %6, 0, !dbg !2870
  br i1 %8, label %12, label %9, !dbg !2873

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Points, %struct.Points* %1, i64 0, i32 0, !dbg !2874
  %11 = load i64, i64* %10, align 8, !dbg !2874, !tbaa !1750
  call void @llvm.dbg.value(metadata i64 %55, metadata !2865, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 0, metadata !2864, metadata !DIExpression()), !dbg !2867
  br label %95, !dbg !2875

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !2877
  %14 = load %struct.Point*, %struct.Point** %13, align 8, !dbg !2877, !tbaa !1764
  %15 = add i64 %6, -1, !dbg !2873
  %16 = and i64 %6, 3, !dbg !2873
  %17 = icmp ult i64 %15, 3, !dbg !2873
  br i1 %17, label %41, label %18, !dbg !2873

18:                                               ; preds = %12
  %19 = sub i64 %6, %16, !dbg !2873
  br label %20, !dbg !2873

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 0, %18 ], [ %38, %20 ]
  %22 = phi i64 [ %19, %18 ], [ %39, %20 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !2864, metadata !DIExpression()), !dbg !2867
  %23 = getelementptr inbounds %struct.Point, %struct.Point* %14, i64 %21, i32 2, !dbg !2879
  %24 = load i64, i64* %23, align 8, !dbg !2879, !tbaa !1885
  %25 = getelementptr inbounds i8, i8* %7, i64 %24, !dbg !2880
  store i8 1, i8* %25, align 1, !dbg !2881, !tbaa !2099
  %26 = or i64 %21, 1, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %26, metadata !2864, metadata !DIExpression()), !dbg !2867
  %27 = getelementptr inbounds %struct.Point, %struct.Point* %14, i64 %26, i32 2, !dbg !2879
  %28 = load i64, i64* %27, align 8, !dbg !2879, !tbaa !1885
  %29 = getelementptr inbounds i8, i8* %7, i64 %28, !dbg !2880
  store i8 1, i8* %29, align 1, !dbg !2881, !tbaa !2099
  %30 = or i64 %21, 2, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %30, metadata !2864, metadata !DIExpression()), !dbg !2867
  %31 = getelementptr inbounds %struct.Point, %struct.Point* %14, i64 %30, i32 2, !dbg !2879
  %32 = load i64, i64* %31, align 8, !dbg !2879, !tbaa !1885
  %33 = getelementptr inbounds i8, i8* %7, i64 %32, !dbg !2880
  store i8 1, i8* %33, align 1, !dbg !2881, !tbaa !2099
  %34 = or i64 %21, 3, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %34, metadata !2864, metadata !DIExpression()), !dbg !2867
  %35 = getelementptr inbounds %struct.Point, %struct.Point* %14, i64 %34, i32 2, !dbg !2879
  %36 = load i64, i64* %35, align 8, !dbg !2879, !tbaa !1885
  %37 = getelementptr inbounds i8, i8* %7, i64 %36, !dbg !2880
  store i8 1, i8* %37, align 1, !dbg !2881, !tbaa !2099
  %38 = add nuw nsw i64 %21, 4, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %38, metadata !2864, metadata !DIExpression()), !dbg !2867
  %39 = add i64 %22, -4, !dbg !2873
  %40 = icmp eq i64 %39, 0, !dbg !2873
  br i1 %40, label %41, label %20, !dbg !2873, !llvm.loop !2883

41:                                               ; preds = %20, %12
  %42 = phi i64 [ 0, %12 ], [ %38, %20 ]
  %43 = icmp eq i64 %16, 0, !dbg !2873
  br i1 %43, label %53, label %44, !dbg !2873

44:                                               ; preds = %41, %44
  %45 = phi i64 [ %50, %44 ], [ %42, %41 ]
  %46 = phi i64 [ %51, %44 ], [ %16, %41 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !2864, metadata !DIExpression()), !dbg !2867
  %47 = getelementptr inbounds %struct.Point, %struct.Point* %14, i64 %45, i32 2, !dbg !2879
  %48 = load i64, i64* %47, align 8, !dbg !2879, !tbaa !1885
  %49 = getelementptr inbounds i8, i8* %7, i64 %48, !dbg !2880
  store i8 1, i8* %49, align 1, !dbg !2881, !tbaa !2099
  %50 = add nuw nsw i64 %45, 1, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %50, metadata !2864, metadata !DIExpression()), !dbg !2867
  %51 = add i64 %46, -1, !dbg !2873
  %52 = icmp eq i64 %51, 0, !dbg !2873
  br i1 %52, label %53, label %44, !dbg !2873, !llvm.loop !2885

53:                                               ; preds = %44, %41
  %54 = getelementptr inbounds %struct.Points, %struct.Points* %1, i64 0, i32 0, !dbg !2874
  %55 = load i64, i64* %54, align 8, !dbg !2874, !tbaa !1750
  call void @llvm.dbg.value(metadata i64 %55, metadata !2865, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 0, metadata !2864, metadata !DIExpression()), !dbg !2867
  br i1 %8, label %56, label %95, !dbg !2875

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.Points, %struct.Points* %1, i64 0, i32 2, !dbg !2886
  %58 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !2886
  %59 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 1, !dbg !2886
  br label %60, !dbg !2875

60:                                               ; preds = %56, %90
  %61 = phi i64 [ %6, %56 ], [ %91, %90 ]
  %62 = phi i64 [ 0, %56 ], [ %93, %90 ]
  %63 = phi i64 [ %55, %56 ], [ %92, %90 ]
  call void @llvm.dbg.value(metadata i64 %62, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %63, metadata !2865, metadata !DIExpression()), !dbg !2867
  %64 = getelementptr inbounds i8, i8* %7, i64 %62, !dbg !2891
  %65 = load i8, i8* %64, align 1, !dbg !2891, !tbaa !2099, !range !2101
  %66 = icmp eq i8 %65, 0, !dbg !2891
  br i1 %66, label %90, label %67, !dbg !2892

67:                                               ; preds = %60
  %68 = load %struct.Point*, %struct.Point** %57, align 8, !dbg !2893, !tbaa !1764
  %69 = getelementptr inbounds %struct.Point, %struct.Point* %68, i64 %63, i32 1, !dbg !2894
  %70 = bitcast float** %69 to i8**, !dbg !2894
  %71 = load i8*, i8** %70, align 8, !dbg !2894, !tbaa !1826
  %72 = load %struct.Point*, %struct.Point** %58, align 8, !dbg !2895, !tbaa !1764
  %73 = getelementptr inbounds %struct.Point, %struct.Point* %72, i64 %62, i32 1, !dbg !2896
  %74 = bitcast float** %73 to i8**, !dbg !2896
  %75 = load i8*, i8** %74, align 8, !dbg !2896, !tbaa !1826
  %76 = load i32, i32* %59, align 8, !dbg !2897, !tbaa !1856
  %77 = sext i32 %76 to i64, !dbg !2898
  %78 = shl nsw i64 %77, 2, !dbg !2899
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %75, i64 %78, i1 false), !dbg !2900
  %79 = load %struct.Point*, %struct.Point** %58, align 8, !dbg !2901, !tbaa !1764
  %80 = getelementptr inbounds %struct.Point, %struct.Point* %79, i64 %62, i32 0, !dbg !2902
  %81 = bitcast float* %80 to i32*, !dbg !2902
  %82 = load i32, i32* %81, align 8, !dbg !2902, !tbaa !1878
  %83 = load %struct.Point*, %struct.Point** %57, align 8, !dbg !2903, !tbaa !1764
  %84 = getelementptr inbounds %struct.Point, %struct.Point* %83, i64 %63, !dbg !2904
  %85 = bitcast %struct.Point* %84 to i32*, !dbg !2905
  store i32 %82, i32* %85, align 8, !dbg !2905, !tbaa !1878
  %86 = add nsw i64 %62, %3, !dbg !2906
  %87 = getelementptr inbounds i64, i64* %2, i64 %63, !dbg !2907
  store i64 %86, i64* %87, align 8, !dbg !2908, !tbaa !1769
  %88 = add nsw i64 %63, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %88, metadata !2865, metadata !DIExpression()), !dbg !2867
  %89 = load i64, i64* %5, align 8, !dbg !2910, !tbaa !1750
  br label %90, !dbg !2911

90:                                               ; preds = %60, %67
  %91 = phi i64 [ %89, %67 ], [ %61, %60 ], !dbg !2910
  %92 = phi i64 [ %88, %67 ], [ %63, %60 ], !dbg !2867
  call void @llvm.dbg.value(metadata i64 %92, metadata !2865, metadata !DIExpression()), !dbg !2867
  %93 = add nuw nsw i64 %62, 1, !dbg !2912
  call void @llvm.dbg.value(metadata i64 %93, metadata !2864, metadata !DIExpression()), !dbg !2867
  %94 = icmp slt i64 %93, %91, !dbg !2913
  br i1 %94, label %60, label %95, !dbg !2875, !llvm.loop !2914

95:                                               ; preds = %90, %9, %53
  %96 = phi i64* [ %54, %53 ], [ %10, %9 ], [ %54, %90 ]
  %97 = phi i64 [ %55, %53 ], [ %11, %9 ], [ %92, %90 ], !dbg !2867
  call void @llvm.dbg.value(metadata i64 %97, metadata !2865, metadata !DIExpression()), !dbg !2867
  store i64 %97, i64* %96, align 8, !dbg !2916, !tbaa !1750
  tail call void @free(i8* %7) #15, !dbg !2917
  ret void, !dbg !2918
}

; Function Attrs: uwtable
define dso_local noalias i8* @_Z14localSearchSubPv(i8* nocapture readonly %0) #6 !dbg !2919 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2923, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()), !dbg !2925
  %2 = bitcast i8* %0 to %struct.Points**, !dbg !2926
  %3 = load %struct.Points*, %struct.Points** %2, align 8, !dbg !2926, !tbaa !2927
  %4 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2929
  %5 = bitcast i8* %4 to i64*, !dbg !2929
  %6 = load i64, i64* %5, align 8, !dbg !2929, !tbaa !2930
  %7 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2931
  %8 = bitcast i8* %7 to i64*, !dbg !2931
  %9 = load i64, i64* %8, align 8, !dbg !2931, !tbaa !2932
  %10 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !2933
  %11 = bitcast i8* %10 to i64**, !dbg !2933
  %12 = load i64*, i64** %11, align 8, !dbg !2933, !tbaa !2934
  %13 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !2935
  %14 = bitcast i8* %13 to i32*, !dbg !2935
  %15 = load i32, i32* %14, align 8, !dbg !2935, !tbaa !2936
  %16 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !2937
  %17 = bitcast i8* %16 to %union.pthread_barrier_t**, !dbg !2937
  %18 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %17, align 8, !dbg !2937, !tbaa !2938
  %19 = tail call float @_Z8pkmedianP6PointsllPliP17pthread_barrier_t(%struct.Points* %3, i64 %6, i64 %9, i64* %12, i32 %15, %union.pthread_barrier_t* %18), !dbg !2939
  ret i8* null, !dbg !2940
}

; Function Attrs: uwtable
define dso_local void @_Z11localSearchP6PointsllPl(%struct.Points* %0, i64 %1, i64 %2, i64* %3) local_unnamed_addr #6 !dbg !2941 {
  %5 = alloca %union.pthread_barrier_t, align 8
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !2945, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %2, metadata !2947, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64* %3, metadata !2948, metadata !DIExpression()), !dbg !2958
  %6 = bitcast %union.pthread_barrier_t* %5 to i8*, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #15, !dbg !2959
  call void @llvm.dbg.declare(metadata %union.pthread_barrier_t* %5, metadata !2949, metadata !DIExpression()), !dbg !2960
  %7 = load i32, i32* @_ZL5nproc, align 4, !dbg !2961, !tbaa !1801
  %8 = call i32 @pthread_barrier_init(%union.pthread_barrier_t* nonnull %5, %union.pthread_barrierattr_t* null, i32 %7) #15, !dbg !2962
  %9 = load i32, i32* @_ZL5nproc, align 4, !dbg !2963, !tbaa !1801
  %10 = sext i32 %9 to i64, !dbg !2963
  %11 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 8), !dbg !2964
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2964
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2964
  %14 = select i1 %12, i64 -1, i64 %13, !dbg !2964
  %15 = call i8* @_Znam(i64 %14) #16, !dbg !2964
  %16 = bitcast i8* %15 to i64*, !dbg !2964
  call void @llvm.dbg.value(metadata i64* %16, metadata !2950, metadata !DIExpression()), !dbg !2958
  %17 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 48), !dbg !2965
  %18 = extractvalue { i64, i1 } %17, 1, !dbg !2965
  %19 = extractvalue { i64, i1 } %17, 0, !dbg !2965
  %20 = select i1 %18, i64 -1, i64 %19, !dbg !2965
  %21 = call i8* @_Znam(i64 %20) #16, !dbg !2965
  %22 = bitcast i8* %21 to %struct.pkmedian_arg_t*, !dbg !2965
  call void @llvm.dbg.value(metadata %struct.pkmedian_arg_t* %22, metadata !2953, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i32 0, metadata !2954, metadata !DIExpression()), !dbg !2966
  %23 = icmp sgt i32 %9, 0, !dbg !2967
  br i1 %23, label %26, label %52, !dbg !2969

24:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 0, metadata !2956, metadata !DIExpression()), !dbg !2970
  %25 = icmp sgt i32 %40, 0, !dbg !2971
  br i1 %25, label %43, label %52, !dbg !2973

26:                                               ; preds = %4, %26
  %27 = phi i64 [ %39, %26 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !2954, metadata !DIExpression()), !dbg !2966
  %28 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %22, i64 %27, !dbg !2974
  %29 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %28, i64 0, i32 0, !dbg !2976
  store %struct.Points* %0, %struct.Points** %29, align 8, !dbg !2977, !tbaa !2927
  %30 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %22, i64 %27, i32 1, !dbg !2978
  store i64 %1, i64* %30, align 8, !dbg !2979, !tbaa !2930
  %31 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %22, i64 %27, i32 2, !dbg !2980
  store i64 %2, i64* %31, align 8, !dbg !2981, !tbaa !2932
  %32 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %22, i64 %27, i32 4, !dbg !2982
  %33 = trunc i64 %27 to i32, !dbg !2983
  store i32 %33, i32* %32, align 8, !dbg !2983, !tbaa !2936
  %34 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %22, i64 %27, i32 3, !dbg !2984
  store i64* %3, i64** %34, align 8, !dbg !2985, !tbaa !2934
  %35 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %22, i64 %27, i32 5, !dbg !2986
  store %union.pthread_barrier_t* %5, %union.pthread_barrier_t** %35, align 8, !dbg !2987, !tbaa !2938
  %36 = getelementptr inbounds i64, i64* %16, i64 %27, !dbg !2988
  %37 = bitcast %struct.pkmedian_arg_t* %28 to i8*, !dbg !2989
  %38 = call i32 @pthread_create(i64* nonnull %36, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_Z14localSearchSubPv, i8* nonnull %37) #15, !dbg !2990
  %39 = add nuw nsw i64 %27, 1, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %39, metadata !2954, metadata !DIExpression()), !dbg !2966
  %40 = load i32, i32* @_ZL5nproc, align 4, !dbg !2992, !tbaa !1801
  %41 = sext i32 %40 to i64, !dbg !2967
  %42 = icmp slt i64 %39, %41, !dbg !2967
  br i1 %42, label %26, label %24, !dbg !2969, !llvm.loop !2993

43:                                               ; preds = %24, %43
  %44 = phi i64 [ %48, %43 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !2956, metadata !DIExpression()), !dbg !2970
  %45 = getelementptr inbounds i64, i64* %16, i64 %44, !dbg !2995
  %46 = load i64, i64* %45, align 8, !dbg !2995, !tbaa !1769
  %47 = call i32 @pthread_join(i64 %46, i8** null), !dbg !2997
  %48 = add nuw nsw i64 %44, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %48, metadata !2956, metadata !DIExpression()), !dbg !2970
  %49 = load i32, i32* @_ZL5nproc, align 4, !dbg !2999, !tbaa !1801
  %50 = sext i32 %49 to i64, !dbg !2971
  %51 = icmp slt i64 %48, %50, !dbg !2971
  br i1 %51, label %43, label %52, !dbg !2973, !llvm.loop !3000

52:                                               ; preds = %43, %4, %24
  call void @_ZdaPv(i8* nonnull %15) #17, !dbg !3002
  call void @_ZdaPv(i8* nonnull %21) #17, !dbg !3003
  %53 = call i32 @pthread_barrier_destroy(%union.pthread_barrier_t* nonnull %5) #15, !dbg !3004
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #15, !dbg !3005
  ret void, !dbg !3005
}

; Function Attrs: nounwind
declare !dbg !155 dso_local i32 @pthread_barrier_init(%union.pthread_barrier_t*, %union.pthread_barrierattr_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nobuiltin nofree
declare dso_local noalias nonnull i8* @_Znam(i64) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !3006 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #5

declare !dbg !161 dso_local i32 @pthread_join(i64, i8**) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !166 dso_local i32 @pthread_barrier_destroy(%union.pthread_barrier_t*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_Z12outcenterIDsP6PointsPlPc(%struct.Points* nocapture readonly %0, i64* nocapture readonly %1, i8* %2) local_unnamed_addr #0 !dbg !3008 {
  call void @llvm.dbg.value(metadata %struct.Points* %0, metadata !3012, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64* %1, metadata !3013, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8* %2, metadata !3014, metadata !DIExpression()), !dbg !3027
  %4 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !3028
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, metadata !3015, metadata !DIExpression()), !dbg !3027
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3029
  br i1 %5, label %6, label %9, !dbg !3031

6:                                                ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3032, !tbaa !1768
  %8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %2) #18, !dbg !3034
  tail call void @exit(i32 1) #19, !dbg !3035
  unreachable, !dbg !3035

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 0, !dbg !3036
  %11 = load i64, i64* %10, align 8, !dbg !3036, !tbaa !1750
  %12 = tail call noalias i8* @calloc(i64 4, i64 %11) #15, !dbg !3037
  %13 = bitcast i8* %12 to i32*, !dbg !3038
  call void @llvm.dbg.value(metadata i32* %13, metadata !3016, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 0, metadata !3017, metadata !DIExpression()), !dbg !3039
  %14 = icmp sgt i64 %11, 0, !dbg !3040
  br i1 %14, label %15, label %60, !dbg !3042

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !3043
  %17 = load %struct.Point*, %struct.Point** %16, align 8, !dbg !3043, !tbaa !1764
  %18 = add i64 %11, -1, !dbg !3042
  %19 = and i64 %11, 3, !dbg !3042
  %20 = icmp ult i64 %18, 3, !dbg !3042
  br i1 %20, label %23, label %21, !dbg !3042

21:                                               ; preds = %15
  %22 = sub i64 %11, %19, !dbg !3042
  br label %39, !dbg !3042

23:                                               ; preds = %39, %15
  %24 = phi i64 [ 0, %15 ], [ %57, %39 ]
  %25 = icmp eq i64 %19, 0, !dbg !3042
  br i1 %25, label %35, label %26, !dbg !3042

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %32, %26 ], [ %24, %23 ]
  %28 = phi i64 [ %33, %26 ], [ %19, %23 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !3017, metadata !DIExpression()), !dbg !3039
  %29 = getelementptr inbounds %struct.Point, %struct.Point* %17, i64 %27, i32 2, !dbg !3045
  %30 = load i64, i64* %29, align 8, !dbg !3045, !tbaa !1885
  %31 = getelementptr inbounds i32, i32* %13, i64 %30, !dbg !3046
  store i32 1, i32* %31, align 4, !dbg !3047, !tbaa !1801
  %32 = add nuw nsw i64 %27, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %32, metadata !3017, metadata !DIExpression()), !dbg !3039
  %33 = add i64 %28, -1, !dbg !3042
  %34 = icmp eq i64 %33, 0, !dbg !3042
  br i1 %34, label %35, label %26, !dbg !3042, !llvm.loop !3049

35:                                               ; preds = %26, %23
  call void @llvm.dbg.value(metadata i32 0, metadata !3019, metadata !DIExpression()), !dbg !3050
  br i1 %14, label %36, label %60, !dbg !3051

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 2, !dbg !3052
  %38 = getelementptr inbounds %struct.Points, %struct.Points* %0, i64 0, i32 1, !dbg !3053
  br label %62, !dbg !3051

39:                                               ; preds = %39, %21
  %40 = phi i64 [ 0, %21 ], [ %57, %39 ]
  %41 = phi i64 [ %22, %21 ], [ %58, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !3017, metadata !DIExpression()), !dbg !3039
  %42 = getelementptr inbounds %struct.Point, %struct.Point* %17, i64 %40, i32 2, !dbg !3045
  %43 = load i64, i64* %42, align 8, !dbg !3045, !tbaa !1885
  %44 = getelementptr inbounds i32, i32* %13, i64 %43, !dbg !3046
  store i32 1, i32* %44, align 4, !dbg !3047, !tbaa !1801
  %45 = or i64 %40, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %45, metadata !3017, metadata !DIExpression()), !dbg !3039
  %46 = getelementptr inbounds %struct.Point, %struct.Point* %17, i64 %45, i32 2, !dbg !3045
  %47 = load i64, i64* %46, align 8, !dbg !3045, !tbaa !1885
  %48 = getelementptr inbounds i32, i32* %13, i64 %47, !dbg !3046
  store i32 1, i32* %48, align 4, !dbg !3047, !tbaa !1801
  %49 = or i64 %40, 2, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %49, metadata !3017, metadata !DIExpression()), !dbg !3039
  %50 = getelementptr inbounds %struct.Point, %struct.Point* %17, i64 %49, i32 2, !dbg !3045
  %51 = load i64, i64* %50, align 8, !dbg !3045, !tbaa !1885
  %52 = getelementptr inbounds i32, i32* %13, i64 %51, !dbg !3046
  store i32 1, i32* %52, align 4, !dbg !3047, !tbaa !1801
  %53 = or i64 %40, 3, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %53, metadata !3017, metadata !DIExpression()), !dbg !3039
  %54 = getelementptr inbounds %struct.Point, %struct.Point* %17, i64 %53, i32 2, !dbg !3045
  %55 = load i64, i64* %54, align 8, !dbg !3045, !tbaa !1885
  %56 = getelementptr inbounds i32, i32* %13, i64 %55, !dbg !3046
  store i32 1, i32* %56, align 4, !dbg !3047, !tbaa !1801
  %57 = add nuw nsw i64 %40, 4, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %57, metadata !3017, metadata !DIExpression()), !dbg !3039
  %58 = add i64 %41, -4, !dbg !3042
  %59 = icmp eq i64 %58, 0, !dbg !3042
  br i1 %59, label %23, label %39, !dbg !3042, !llvm.loop !3055

60:                                               ; preds = %95, %9, %35
  %61 = tail call i32 @fclose(%struct._IO_FILE* nonnull %4), !dbg !3057
  ret void, !dbg !3058

62:                                               ; preds = %36, %95
  %63 = phi i64 [ %11, %36 ], [ %96, %95 ]
  %64 = phi i64 [ 0, %36 ], [ %97, %95 ]
  call void @llvm.dbg.value(metadata i64 %64, metadata !3019, metadata !DIExpression()), !dbg !3050
  %65 = getelementptr inbounds i32, i32* %13, i64 %64, !dbg !3059
  %66 = load i32, i32* %65, align 4, !dbg !3059, !tbaa !1801
  %67 = icmp eq i32 %66, 0, !dbg !3059
  br i1 %67, label %95, label %68, !dbg !3060

68:                                               ; preds = %62
  %69 = getelementptr inbounds i64, i64* %1, i64 %64, !dbg !3061
  %70 = load i64, i64* %69, align 8, !dbg !3061, !tbaa !1769
  %71 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %70), !dbg !3062
  %72 = load %struct.Point*, %struct.Point** %37, align 8, !dbg !3063, !tbaa !1764
  %73 = getelementptr inbounds %struct.Point, %struct.Point* %72, i64 %64, i32 0, !dbg !3064
  %74 = load float, float* %73, align 8, !dbg !3064, !tbaa !1878
  %75 = fpext float %74 to double, !dbg !3065
  %76 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %75), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !3021, metadata !DIExpression()), !dbg !3067
  %77 = load i32, i32* %38, align 8, !dbg !3068, !tbaa !1856
  %78 = icmp sgt i32 %77, 0, !dbg !3069
  br i1 %78, label %82, label %79, !dbg !3070

79:                                               ; preds = %82, %68
  %80 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* nonnull %4), !dbg !3071
  %81 = load i64, i64* %10, align 8, !dbg !3072, !tbaa !1750
  br label %95, !dbg !3073

82:                                               ; preds = %68, %82
  %83 = phi i64 [ %91, %82 ], [ 0, %68 ]
  call void @llvm.dbg.value(metadata i64 %83, metadata !3021, metadata !DIExpression()), !dbg !3067
  %84 = load %struct.Point*, %struct.Point** %37, align 8, !dbg !3074, !tbaa !1764
  %85 = getelementptr inbounds %struct.Point, %struct.Point* %84, i64 %64, i32 1, !dbg !3076
  %86 = load float*, float** %85, align 8, !dbg !3076, !tbaa !1826
  %87 = getelementptr inbounds float, float* %86, i64 %83, !dbg !3077
  %88 = load float, float* %87, align 4, !dbg !3077, !tbaa !1725
  %89 = fpext float %88 to double, !dbg !3077
  %90 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %89), !dbg !3078
  %91 = add nuw nsw i64 %83, 1, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %91, metadata !3021, metadata !DIExpression()), !dbg !3067
  %92 = load i32, i32* %38, align 8, !dbg !3068, !tbaa !1856
  %93 = sext i32 %92 to i64, !dbg !3069
  %94 = icmp slt i64 %91, %93, !dbg !3069
  br i1 %94, label %82, label %79, !dbg !3070, !llvm.loop !3080

95:                                               ; preds = %62, %79
  %96 = phi i64 [ %63, %62 ], [ %81, %79 ], !dbg !3072
  %97 = add nuw nsw i64 %64, 1, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %97, metadata !3019, metadata !DIExpression()), !dbg !3050
  %98 = icmp sgt i64 %96, %97, !dbg !3083
  br i1 %98, label %62, label %60, !dbg !3051, !llvm.loop !3084
}

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !167 dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_Z13streamClusterP7PStreamllillPc(%class.PStream* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5, i8* %6) local_unnamed_addr #6 !dbg !3086 {
  %8 = alloca %struct.Points, align 8
  %9 = alloca %struct.Points, align 8
  %10 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %class.PStream* %0, metadata !3107, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %2, metadata !3109, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i32 %3, metadata !3110, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %4, metadata !3111, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %5, metadata !3112, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8* %6, metadata !3113, metadata !DIExpression()), !dbg !3129
  %11 = sext i32 %3 to i64, !dbg !3130
  %12 = shl i64 %4, 2, !dbg !3131
  %13 = mul i64 %12, %11, !dbg !3132
  %14 = tail call noalias i8* @malloc(i64 %13) #15, !dbg !3133
  %15 = bitcast i8* %14 to float*, !dbg !3134
  call void @llvm.dbg.value(metadata float* %15, metadata !3114, metadata !DIExpression()), !dbg !3129
  %16 = mul nsw i64 %11, %5, !dbg !3135
  %17 = shl i64 %16, 2, !dbg !3136
  %18 = tail call noalias i8* @malloc(i64 %17) #15, !dbg !3137
  %19 = bitcast i8* %18 to float*, !dbg !3138
  call void @llvm.dbg.value(metadata float* %19, metadata !3115, metadata !DIExpression()), !dbg !3129
  %20 = shl i64 %16, 3, !dbg !3139
  %21 = tail call noalias i8* @malloc(i64 %20) #15, !dbg !3140
  %22 = bitcast i8* %21 to i64*, !dbg !3141
  call void @llvm.dbg.value(metadata i64* %22, metadata !3116, metadata !DIExpression()), !dbg !3129
  %23 = icmp eq i8* %14, null, !dbg !3142
  br i1 %23, label %24, label %27, !dbg !3144

24:                                               ; preds = %7
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3145, !tbaa !1768
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %25) #18, !dbg !3147
  tail call void @exit(i32 1) #19, !dbg !3148
  unreachable, !dbg !3148

27:                                               ; preds = %7
  %28 = bitcast %struct.Points* %8 to i8*, !dbg !3149
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28) #15, !dbg !3149
  call void @llvm.dbg.declare(metadata %struct.Points* %8, metadata !3117, metadata !DIExpression()), !dbg !3150
  %29 = getelementptr inbounds %struct.Points, %struct.Points* %8, i64 0, i32 1, !dbg !3151
  store i32 %3, i32* %29, align 8, !dbg !3152, !tbaa !1856
  %30 = getelementptr inbounds %struct.Points, %struct.Points* %8, i64 0, i32 0, !dbg !3153
  store i64 %4, i64* %30, align 8, !dbg !3154, !tbaa !1750
  %31 = shl i64 %4, 5, !dbg !3155
  %32 = tail call noalias i8* @malloc(i64 %31) #15, !dbg !3156
  %33 = getelementptr inbounds %struct.Points, %struct.Points* %8, i64 0, i32 2, !dbg !3157
  %34 = bitcast %struct.Point** %33 to i8**, !dbg !3158
  store i8* %32, i8** %34, align 8, !dbg !3158, !tbaa !1764
  call void @llvm.dbg.value(metadata i32 0, metadata !3118, metadata !DIExpression()), !dbg !3159
  %35 = icmp sgt i64 %4, 0, !dbg !3160
  %36 = bitcast i8* %32 to %struct.Point*, !dbg !3162
  br i1 %35, label %37, label %55, !dbg !3162

37:                                               ; preds = %27
  %38 = add i64 %4, -1, !dbg !3162
  %39 = and i64 %4, 3, !dbg !3162
  %40 = icmp ult i64 %38, 3, !dbg !3162
  br i1 %40, label %43, label %41, !dbg !3162

41:                                               ; preds = %37
  %42 = sub i64 %4, %39, !dbg !3162
  br label %70, !dbg !3162

43:                                               ; preds = %70, %37
  %44 = phi i64 [ 0, %37 ], [ %88, %70 ]
  %45 = icmp eq i64 %39, 0, !dbg !3162
  br i1 %45, label %55, label %46, !dbg !3162

46:                                               ; preds = %43, %46
  %47 = phi i64 [ %52, %46 ], [ %44, %43 ]
  %48 = phi i64 [ %53, %46 ], [ %39, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !3118, metadata !DIExpression()), !dbg !3159
  %49 = mul nsw i64 %47, %11, !dbg !3163
  %50 = getelementptr inbounds float, float* %15, i64 %49, !dbg !3165
  %51 = getelementptr inbounds %struct.Point, %struct.Point* %36, i64 %47, i32 1, !dbg !3166
  store float* %50, float** %51, align 8, !dbg !3167, !tbaa !1826
  %52 = add nuw nsw i64 %47, 1, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %52, metadata !3118, metadata !DIExpression()), !dbg !3159
  %53 = add i64 %48, -1, !dbg !3162
  %54 = icmp eq i64 %53, 0, !dbg !3162
  br i1 %54, label %55, label %46, !dbg !3162, !llvm.loop !3169

55:                                               ; preds = %43, %46, %27
  %56 = bitcast %struct.Points* %9 to i8*, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %56) #15, !dbg !3170
  call void @llvm.dbg.declare(metadata %struct.Points* %9, metadata !3120, metadata !DIExpression()), !dbg !3171
  %57 = getelementptr inbounds %struct.Points, %struct.Points* %9, i64 0, i32 1, !dbg !3172
  store i32 %3, i32* %57, align 8, !dbg !3173, !tbaa !1856
  %58 = shl i64 %5, 5, !dbg !3174
  %59 = tail call noalias i8* @malloc(i64 %58) #15, !dbg !3175
  %60 = getelementptr inbounds %struct.Points, %struct.Points* %9, i64 0, i32 2, !dbg !3176
  %61 = bitcast %struct.Point** %60 to i8**, !dbg !3177
  store i8* %59, i8** %61, align 8, !dbg !3177, !tbaa !1764
  %62 = getelementptr inbounds %struct.Points, %struct.Points* %9, i64 0, i32 0, !dbg !3178
  store i64 0, i64* %62, align 8, !dbg !3179, !tbaa !1750
  call void @llvm.dbg.value(metadata i32 0, metadata !3121, metadata !DIExpression()), !dbg !3180
  %63 = icmp sgt i64 %5, 0, !dbg !3181
  %64 = bitcast i8* %59 to %struct.Point*, !dbg !3183
  br i1 %63, label %65, label %99, !dbg !3183

65:                                               ; preds = %55
  %66 = and i64 %5, 1, !dbg !3183
  %67 = icmp eq i64 %5, 1, !dbg !3183
  br i1 %67, label %91, label %68, !dbg !3183

68:                                               ; preds = %65
  %69 = sub i64 %5, %66, !dbg !3183
  br label %105, !dbg !3183

70:                                               ; preds = %70, %41
  %71 = phi i64 [ 0, %41 ], [ %88, %70 ]
  %72 = phi i64 [ %42, %41 ], [ %89, %70 ]
  call void @llvm.dbg.value(metadata i64 %71, metadata !3118, metadata !DIExpression()), !dbg !3159
  %73 = mul nsw i64 %71, %11, !dbg !3163
  %74 = getelementptr inbounds float, float* %15, i64 %73, !dbg !3165
  %75 = getelementptr inbounds %struct.Point, %struct.Point* %36, i64 %71, i32 1, !dbg !3166
  store float* %74, float** %75, align 8, !dbg !3167, !tbaa !1826
  %76 = or i64 %71, 1, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %76, metadata !3118, metadata !DIExpression()), !dbg !3159
  %77 = mul nsw i64 %76, %11, !dbg !3163
  %78 = getelementptr inbounds float, float* %15, i64 %77, !dbg !3165
  %79 = getelementptr inbounds %struct.Point, %struct.Point* %36, i64 %76, i32 1, !dbg !3166
  store float* %78, float** %79, align 8, !dbg !3167, !tbaa !1826
  %80 = or i64 %71, 2, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %80, metadata !3118, metadata !DIExpression()), !dbg !3159
  %81 = mul nsw i64 %80, %11, !dbg !3163
  %82 = getelementptr inbounds float, float* %15, i64 %81, !dbg !3165
  %83 = getelementptr inbounds %struct.Point, %struct.Point* %36, i64 %80, i32 1, !dbg !3166
  store float* %82, float** %83, align 8, !dbg !3167, !tbaa !1826
  %84 = or i64 %71, 3, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %84, metadata !3118, metadata !DIExpression()), !dbg !3159
  %85 = mul nsw i64 %84, %11, !dbg !3163
  %86 = getelementptr inbounds float, float* %15, i64 %85, !dbg !3165
  %87 = getelementptr inbounds %struct.Point, %struct.Point* %36, i64 %84, i32 1, !dbg !3166
  store float* %86, float** %87, align 8, !dbg !3167, !tbaa !1826
  %88 = add nuw nsw i64 %71, 4, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %88, metadata !3118, metadata !DIExpression()), !dbg !3159
  %89 = add i64 %72, -4, !dbg !3162
  %90 = icmp eq i64 %89, 0, !dbg !3162
  br i1 %90, label %43, label %70, !dbg !3162, !llvm.loop !3184

91:                                               ; preds = %105, %65
  %92 = phi i64 [ 0, %65 ], [ %117, %105 ]
  %93 = icmp eq i64 %66, 0, !dbg !3183
  br i1 %93, label %99, label %94, !dbg !3183

94:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 %92, metadata !3121, metadata !DIExpression()), !dbg !3180
  %95 = mul nsw i64 %92, %11, !dbg !3186
  %96 = getelementptr inbounds float, float* %19, i64 %95, !dbg !3188
  %97 = getelementptr inbounds %struct.Point, %struct.Point* %64, i64 %92, i32 1, !dbg !3189
  store float* %96, float** %97, align 8, !dbg !3190, !tbaa !1826
  %98 = getelementptr inbounds %struct.Point, %struct.Point* %64, i64 %92, i32 0, !dbg !3191
  store float 1.000000e+00, float* %98, align 8, !dbg !3192, !tbaa !1878
  call void @llvm.dbg.value(metadata i64 %92, metadata !3121, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3180
  br label %99, !dbg !3193

99:                                               ; preds = %94, %91, %55
  call void @llvm.dbg.value(metadata i64 0, metadata !3123, metadata !DIExpression()), !dbg !3129
  %100 = bitcast i64* %10 to i8*, !dbg !3193
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %100) #15, !dbg !3193
  %101 = trunc i64 %4 to i32, !dbg !3194
  %102 = bitcast %class.PStream* %0 to i64 (%class.PStream*, float*, i32, i32)***, !dbg !3194
  %103 = bitcast %class.PStream* %0 to i32 (%class.PStream*)***, !dbg !3195
  %104 = and i64 %4, 4294967295, !dbg !3195
  br label %120, !dbg !3197

105:                                              ; preds = %105, %68
  %106 = phi i64 [ 0, %68 ], [ %117, %105 ]
  %107 = phi i64 [ %69, %68 ], [ %118, %105 ]
  call void @llvm.dbg.value(metadata i64 %106, metadata !3121, metadata !DIExpression()), !dbg !3180
  %108 = mul nsw i64 %106, %11, !dbg !3186
  %109 = getelementptr inbounds float, float* %19, i64 %108, !dbg !3188
  %110 = getelementptr inbounds %struct.Point, %struct.Point* %64, i64 %106, i32 1, !dbg !3189
  store float* %109, float** %110, align 8, !dbg !3190, !tbaa !1826
  %111 = getelementptr inbounds %struct.Point, %struct.Point* %64, i64 %106, i32 0, !dbg !3191
  store float 1.000000e+00, float* %111, align 8, !dbg !3192, !tbaa !1878
  %112 = or i64 %106, 1, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %112, metadata !3121, metadata !DIExpression()), !dbg !3180
  %113 = mul nsw i64 %112, %11, !dbg !3186
  %114 = getelementptr inbounds float, float* %19, i64 %113, !dbg !3188
  %115 = getelementptr inbounds %struct.Point, %struct.Point* %64, i64 %112, i32 1, !dbg !3189
  store float* %114, float** %115, align 8, !dbg !3190, !tbaa !1826
  %116 = getelementptr inbounds %struct.Point, %struct.Point* %64, i64 %112, i32 0, !dbg !3191
  store float 1.000000e+00, float* %116, align 8, !dbg !3192, !tbaa !1878
  %117 = add nuw nsw i64 %106, 2, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %117, metadata !3121, metadata !DIExpression()), !dbg !3180
  %118 = add i64 %107, -2, !dbg !3183
  %119 = icmp eq i64 %118, 0, !dbg !3183
  br i1 %119, label %91, label %105, !dbg !3183, !llvm.loop !3199

120:                                              ; preds = %419, %99
  %121 = phi i64 [ 0, %99 ], [ %421, %419 ], !dbg !3129
  call void @llvm.dbg.value(metadata i64 %121, metadata !3123, metadata !DIExpression()), !dbg !3129
  %122 = load i64 (%class.PStream*, float*, i32, i32)**, i64 (%class.PStream*, float*, i32, i32)*** %102, align 8, !dbg !3201, !tbaa !3202
  %123 = load i64 (%class.PStream*, float*, i32, i32)*, i64 (%class.PStream*, float*, i32, i32)** %122, align 8, !dbg !3201
  %124 = call i64 %123(%class.PStream* %0, float* nonnull %15, i32 %3, i32 %101), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %124, metadata !3125, metadata !DIExpression()), !dbg !3194
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3204, !tbaa !1768
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 %124) #18, !dbg !3205
  %127 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %103, align 8, !dbg !3206, !tbaa !3202
  %128 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %127, i64 1, !dbg !3206
  %129 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %128, align 8, !dbg !3206
  %130 = call i32 %129(%class.PStream* %0), !dbg !3206
  %131 = icmp eq i32 %130, 0, !dbg !3207
  br i1 %131, label %132, label %140, !dbg !3208

132:                                              ; preds = %120
  %133 = icmp ult i64 %124, %104, !dbg !3209
  br i1 %133, label %134, label %143, !dbg !3210

134:                                              ; preds = %132
  %135 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %103, align 8, !dbg !3211, !tbaa !3202
  %136 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %135, i64 2, !dbg !3211
  %137 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %136, align 8, !dbg !3211
  %138 = call i32 %137(%class.PStream* nonnull %0), !dbg !3211
  %139 = icmp eq i32 %138, 0, !dbg !3212
  br i1 %139, label %140, label %143, !dbg !3213

140:                                              ; preds = %134, %120
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3214, !tbaa !1768
  %142 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %141) #18, !dbg !3216
  call void @exit(i32 1) #19, !dbg !3217
  unreachable, !dbg !3217

143:                                              ; preds = %134, %132
  store i64 %124, i64* %30, align 8, !dbg !3218, !tbaa !1750
  call void @llvm.dbg.value(metadata i32 0, metadata !3127, metadata !DIExpression()), !dbg !3219
  %144 = icmp sgt i64 %124, 0, !dbg !3220
  br i1 %144, label %145, label %162, !dbg !3222

145:                                              ; preds = %143
  %146 = load %struct.Point*, %struct.Point** %33, align 8, !dbg !3223, !tbaa !1764
  %147 = add i64 %124, -1, !dbg !3222
  %148 = and i64 %124, 3, !dbg !3222
  %149 = icmp ult i64 %147, 3, !dbg !3222
  br i1 %149, label %152, label %150, !dbg !3222

150:                                              ; preds = %145
  %151 = sub i64 %124, %148, !dbg !3222
  br label %324, !dbg !3222

152:                                              ; preds = %324, %145
  %153 = phi i64 [ 0, %145 ], [ %334, %324 ]
  %154 = icmp eq i64 %148, 0, !dbg !3222
  br i1 %154, label %162, label %155, !dbg !3222

155:                                              ; preds = %152, %155
  %156 = phi i64 [ %159, %155 ], [ %153, %152 ]
  %157 = phi i64 [ %160, %155 ], [ %148, %152 ]
  call void @llvm.dbg.value(metadata i64 %156, metadata !3127, metadata !DIExpression()), !dbg !3219
  %158 = getelementptr inbounds %struct.Point, %struct.Point* %146, i64 %156, i32 0, !dbg !3225
  store float 1.000000e+00, float* %158, align 8, !dbg !3226, !tbaa !1878
  %159 = add nuw nsw i64 %156, 1, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %159, metadata !3127, metadata !DIExpression()), !dbg !3219
  %160 = add i64 %157, -1, !dbg !3222
  %161 = icmp eq i64 %160, 0, !dbg !3222
  br i1 %161, label %162, label %155, !dbg !3222, !llvm.loop !3228

162:                                              ; preds = %152, %155, %143
  %163 = call noalias i8* @malloc(i64 %124) #15, !dbg !3229
  store i8* %163, i8** @_ZL17switch_membership, align 8, !dbg !3230, !tbaa !1768
  %164 = call noalias i8* @calloc(i64 %124, i64 1) #15, !dbg !3231
  store i8* %164, i8** @_ZL9is_center, align 8, !dbg !3232, !tbaa !1768
  %165 = shl i64 %124, 2, !dbg !3233
  %166 = call noalias i8* @malloc(i64 %165) #15, !dbg !3234
  store i8* %166, i8** bitcast (i32** @_ZL12center_table to i8**), align 8, !dbg !3235, !tbaa !1768
  call void @llvm.dbg.value(metadata i64* %10, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3129
  call void @_Z11localSearchP6PointsllPl(%struct.Points* nonnull %8, i64 %1, i64 %2, i64* nonnull %10), !dbg !3236
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3237, !tbaa !1768
  %168 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %167) #18, !dbg !3238
  call void @llvm.dbg.value(metadata %struct.Points* %8, metadata !2806, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 0, metadata !2807, metadata !DIExpression()), !dbg !3239
  %169 = load i64, i64* %30, align 8, !dbg !3241, !tbaa !1750
  %170 = icmp sgt i64 %169, 0, !dbg !3242
  br i1 %170, label %171, label %319, !dbg !3243

171:                                              ; preds = %162
  %172 = load %struct.Point*, %struct.Point** %33, align 8, !dbg !3244, !tbaa !1764
  %173 = load i32, i32* %29, align 8, !dbg !3245
  %174 = icmp sgt i32 %173, 0, !dbg !3245
  %175 = zext i32 %173 to i64, !dbg !3245
  %176 = and i64 %175, 4294967292, !dbg !3243
  %177 = add nsw i64 %176, -4, !dbg !3243
  %178 = lshr exact i64 %177, 2, !dbg !3243
  %179 = add nuw nsw i64 %178, 1, !dbg !3243
  %180 = icmp ult i32 %173, 4, !dbg !3246
  %181 = and i64 %175, 4294967292, !dbg !3246
  %182 = and i64 %179, 1, !dbg !3246
  %183 = icmp eq i64 %177, 0, !dbg !3246
  %184 = sub nuw nsw i64 %179, %182, !dbg !3246
  %185 = icmp eq i64 %182, 0, !dbg !3245
  %186 = icmp eq i64 %181, %175, !dbg !3246
  %187 = and i64 %175, 1, !dbg !3246
  %188 = icmp eq i64 %187, 0, !dbg !3246
  %189 = sub nsw i64 0, %175, !dbg !3246
  br label %190, !dbg !3243

190:                                              ; preds = %316, %171
  %191 = phi i64 [ 0, %171 ], [ %317, %316 ]
  call void @llvm.dbg.value(metadata i64 %191, metadata !2807, metadata !DIExpression()), !dbg !3239
  %192 = getelementptr inbounds %struct.Point, %struct.Point* %172, i64 %191, i32 2, !dbg !3247
  %193 = load i64, i64* %192, align 8, !dbg !3247, !tbaa !1885
  %194 = icmp eq i64 %193, %191, !dbg !3248
  br i1 %194, label %316, label %195, !dbg !3249

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.Point, %struct.Point* %172, i64 %193, i32 0, !dbg !3250
  %197 = load float, float* %196, align 8, !dbg !3250, !tbaa !1878
  %198 = getelementptr inbounds %struct.Point, %struct.Point* %172, i64 %191, i32 0, !dbg !3251
  %199 = load float, float* %198, align 8, !dbg !3251, !tbaa !1878
  %200 = fadd float %197, %199, !dbg !3252
  call void @llvm.dbg.value(metadata float %200, metadata !2809, metadata !DIExpression()), !dbg !3239
  %201 = fdiv float %199, %200, !dbg !3253
  call void @llvm.dbg.value(metadata float %201, metadata !2809, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 0, metadata !2808, metadata !DIExpression()), !dbg !3239
  br i1 %174, label %202, label %314, !dbg !3254

202:                                              ; preds = %195
  %203 = fpext float %201 to double, !dbg !3255
  %204 = fsub double 1.000000e+00, %203, !dbg !3255
  %205 = getelementptr inbounds %struct.Point, %struct.Point* %172, i64 %193, i32 1, !dbg !3255
  %206 = load float*, float** %205, align 8, !dbg !3255, !tbaa !1826
  %207 = getelementptr inbounds %struct.Point, %struct.Point* %172, i64 %191, i32 1, !dbg !3255
  %208 = load float*, float** %207, align 8, !dbg !3255, !tbaa !1826
  br i1 %180, label %270, label %209, !dbg !3254

209:                                              ; preds = %202
  %210 = getelementptr float, float* %206, i64 %175, !dbg !3254
  %211 = getelementptr float, float* %208, i64 %175, !dbg !3254
  %212 = icmp ult float* %206, %211, !dbg !3254
  %213 = icmp ult float* %208, %210, !dbg !3254
  %214 = and i1 %212, %213, !dbg !3254
  br i1 %214, label %270, label %215, !dbg !3254

215:                                              ; preds = %209
  %216 = insertelement <4 x double> undef, double %204, i32 0, !dbg !3254
  %217 = shufflevector <4 x double> %216, <4 x double> undef, <4 x i32> zeroinitializer, !dbg !3254
  %218 = insertelement <4 x float> undef, float %201, i32 0, !dbg !3254
  %219 = shufflevector <4 x float> %218, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !3254
  br i1 %183, label %253, label %220, !dbg !3254

220:                                              ; preds = %215, %220
  %221 = phi i64 [ %250, %220 ], [ 0, %215 ], !dbg !3256
  %222 = phi i64 [ %251, %220 ], [ %184, %215 ]
  %223 = getelementptr inbounds float, float* %206, i64 %221, !dbg !3257
  %224 = bitcast float* %223 to <4 x float>*, !dbg !3258
  %225 = load <4 x float>, <4 x float>* %224, align 4, !dbg !3258, !tbaa !1725, !alias.scope !3259, !noalias !3262
  %226 = fpext <4 x float> %225 to <4 x double>, !dbg !3258
  %227 = fmul <4 x double> %217, %226, !dbg !3258
  %228 = fptrunc <4 x double> %227 to <4 x float>, !dbg !3258
  %229 = bitcast float* %223 to <4 x float>*, !dbg !3258
  store <4 x float> %228, <4 x float>* %229, align 4, !dbg !3258, !tbaa !1725, !alias.scope !3259, !noalias !3262
  %230 = getelementptr inbounds float, float* %208, i64 %221, !dbg !3264
  %231 = bitcast float* %230 to <4 x float>*, !dbg !3264
  %232 = load <4 x float>, <4 x float>* %231, align 4, !dbg !3264, !tbaa !1725, !alias.scope !3262
  %233 = fmul <4 x float> %219, %232, !dbg !3265
  %234 = fadd <4 x float> %233, %228, !dbg !3266
  %235 = bitcast float* %223 to <4 x float>*, !dbg !3266
  store <4 x float> %234, <4 x float>* %235, align 4, !dbg !3266, !tbaa !1725, !alias.scope !3259, !noalias !3262
  %236 = or i64 %221, 4, !dbg !3256
  %237 = getelementptr inbounds float, float* %206, i64 %236, !dbg !3257
  %238 = bitcast float* %237 to <4 x float>*, !dbg !3258
  %239 = load <4 x float>, <4 x float>* %238, align 4, !dbg !3258, !tbaa !1725, !alias.scope !3259, !noalias !3262
  %240 = fpext <4 x float> %239 to <4 x double>, !dbg !3258
  %241 = fmul <4 x double> %217, %240, !dbg !3258
  %242 = fptrunc <4 x double> %241 to <4 x float>, !dbg !3258
  %243 = bitcast float* %237 to <4 x float>*, !dbg !3258
  store <4 x float> %242, <4 x float>* %243, align 4, !dbg !3258, !tbaa !1725, !alias.scope !3259, !noalias !3262
  %244 = getelementptr inbounds float, float* %208, i64 %236, !dbg !3264
  %245 = bitcast float* %244 to <4 x float>*, !dbg !3264
  %246 = load <4 x float>, <4 x float>* %245, align 4, !dbg !3264, !tbaa !1725, !alias.scope !3262
  %247 = fmul <4 x float> %219, %246, !dbg !3265
  %248 = fadd <4 x float> %247, %242, !dbg !3266
  %249 = bitcast float* %237 to <4 x float>*, !dbg !3266
  store <4 x float> %248, <4 x float>* %249, align 4, !dbg !3266, !tbaa !1725, !alias.scope !3259, !noalias !3262
  %250 = add i64 %221, 8, !dbg !3256
  %251 = add i64 %222, -2, !dbg !3256
  %252 = icmp eq i64 %251, 0, !dbg !3256
  br i1 %252, label %253, label %220, !dbg !3256, !llvm.loop !3267

253:                                              ; preds = %220, %215
  %254 = phi i64 [ 0, %215 ], [ %250, %220 ]
  br i1 %185, label %269, label %255, !dbg !3256

255:                                              ; preds = %253
  %256 = getelementptr inbounds float, float* %206, i64 %254, !dbg !3257
  %257 = bitcast float* %256 to <4 x float>*, !dbg !3258
  %258 = load <4 x float>, <4 x float>* %257, align 4, !dbg !3258, !tbaa !1725, !alias.scope !3259, !noalias !3262
  %259 = fpext <4 x float> %258 to <4 x double>, !dbg !3258
  %260 = fmul <4 x double> %217, %259, !dbg !3258
  %261 = fptrunc <4 x double> %260 to <4 x float>, !dbg !3258
  %262 = bitcast float* %256 to <4 x float>*, !dbg !3258
  store <4 x float> %261, <4 x float>* %262, align 4, !dbg !3258, !tbaa !1725, !alias.scope !3259, !noalias !3262
  %263 = getelementptr inbounds float, float* %208, i64 %254, !dbg !3264
  %264 = bitcast float* %263 to <4 x float>*, !dbg !3264
  %265 = load <4 x float>, <4 x float>* %264, align 4, !dbg !3264, !tbaa !1725, !alias.scope !3262
  %266 = fmul <4 x float> %219, %265, !dbg !3265
  %267 = fadd <4 x float> %266, %261, !dbg !3266
  %268 = bitcast float* %256 to <4 x float>*, !dbg !3266
  store <4 x float> %267, <4 x float>* %268, align 4, !dbg !3266, !tbaa !1725, !alias.scope !3259, !noalias !3262
  br label %269, !dbg !3254

269:                                              ; preds = %253, %255
  br i1 %186, label %310, label %270, !dbg !3254

270:                                              ; preds = %269, %209, %202
  %271 = phi i64 [ 0, %209 ], [ 0, %202 ], [ %181, %269 ]
  %272 = xor i64 %271, -1, !dbg !3254
  br i1 %188, label %284, label %273, !dbg !3254

273:                                              ; preds = %270
  call void @llvm.dbg.value(metadata i64 %271, metadata !2808, metadata !DIExpression()), !dbg !3239
  %274 = getelementptr inbounds float, float* %206, i64 %271, !dbg !3257
  %275 = load float, float* %274, align 4, !dbg !3258, !tbaa !1725
  %276 = fpext float %275 to double, !dbg !3258
  %277 = fmul double %204, %276, !dbg !3258
  %278 = fptrunc double %277 to float, !dbg !3258
  store float %278, float* %274, align 4, !dbg !3258, !tbaa !1725
  %279 = getelementptr inbounds float, float* %208, i64 %271, !dbg !3264
  %280 = load float, float* %279, align 4, !dbg !3264, !tbaa !1725
  %281 = fmul float %201, %280, !dbg !3265
  %282 = fadd float %281, %278, !dbg !3266
  store float %282, float* %274, align 4, !dbg !3266, !tbaa !1725
  %283 = or i64 %271, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %283, metadata !2808, metadata !DIExpression()), !dbg !3239
  br label %284, !dbg !3254

284:                                              ; preds = %273, %270
  %285 = phi i64 [ %283, %273 ], [ %271, %270 ]
  %286 = icmp eq i64 %272, %189, !dbg !3254
  br i1 %286, label %310, label %287, !dbg !3254

287:                                              ; preds = %284, %287
  %288 = phi i64 [ %308, %287 ], [ %285, %284 ]
  call void @llvm.dbg.value(metadata i64 %288, metadata !2808, metadata !DIExpression()), !dbg !3239
  %289 = getelementptr inbounds float, float* %206, i64 %288, !dbg !3257
  %290 = load float, float* %289, align 4, !dbg !3258, !tbaa !1725
  %291 = fpext float %290 to double, !dbg !3258
  %292 = fmul double %204, %291, !dbg !3258
  %293 = fptrunc double %292 to float, !dbg !3258
  store float %293, float* %289, align 4, !dbg !3258, !tbaa !1725
  %294 = getelementptr inbounds float, float* %208, i64 %288, !dbg !3264
  %295 = load float, float* %294, align 4, !dbg !3264, !tbaa !1725
  %296 = fmul float %201, %295, !dbg !3265
  %297 = fadd float %296, %293, !dbg !3266
  store float %297, float* %289, align 4, !dbg !3266, !tbaa !1725
  %298 = add nuw nsw i64 %288, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %298, metadata !2808, metadata !DIExpression()), !dbg !3239
  %299 = getelementptr inbounds float, float* %206, i64 %298, !dbg !3257
  %300 = load float, float* %299, align 4, !dbg !3258, !tbaa !1725
  %301 = fpext float %300 to double, !dbg !3258
  %302 = fmul double %204, %301, !dbg !3258
  %303 = fptrunc double %302 to float, !dbg !3258
  store float %303, float* %299, align 4, !dbg !3258, !tbaa !1725
  %304 = getelementptr inbounds float, float* %208, i64 %298, !dbg !3264
  %305 = load float, float* %304, align 4, !dbg !3264, !tbaa !1725
  %306 = fmul float %201, %305, !dbg !3265
  %307 = fadd float %306, %303, !dbg !3266
  store float %307, float* %299, align 4, !dbg !3266, !tbaa !1725
  %308 = add nuw nsw i64 %288, 2, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %308, metadata !2808, metadata !DIExpression()), !dbg !3239
  %309 = icmp eq i64 %308, %175, !dbg !3269
  br i1 %309, label %310, label %287, !dbg !3254, !llvm.loop !3270

310:                                              ; preds = %284, %287, %269
  %311 = load float, float* %198, align 8, !dbg !3271, !tbaa !1878
  %312 = load float, float* %196, align 8, !dbg !3272, !tbaa !1878
  %313 = fadd float %311, %312, !dbg !3272
  br label %314, !dbg !3271

314:                                              ; preds = %310, %195
  %315 = phi float [ %313, %310 ], [ %200, %195 ], !dbg !3272
  store float %315, float* %196, align 8, !dbg !3272, !tbaa !1878
  br label %316, !dbg !3273

316:                                              ; preds = %314, %190
  %317 = add nuw nsw i64 %191, 1, !dbg !3274
  call void @llvm.dbg.value(metadata i64 %317, metadata !2807, metadata !DIExpression()), !dbg !3239
  %318 = icmp eq i64 %317, %169, !dbg !3242
  br i1 %318, label %319, label %190, !dbg !3243, !llvm.loop !3275

319:                                              ; preds = %316, %162
  %320 = load i64, i64* %10, align 8, !dbg !3277, !tbaa !1769
  call void @llvm.dbg.value(metadata i64 %320, metadata !3124, metadata !DIExpression()), !dbg !3129
  %321 = load i64, i64* %62, align 8, !dbg !3279, !tbaa !1750
  %322 = add nsw i64 %321, %320, !dbg !3280
  %323 = icmp sgt i64 %322, %5, !dbg !3281
  br i1 %323, label %337, label %340, !dbg !3282

324:                                              ; preds = %324, %150
  %325 = phi i64 [ 0, %150 ], [ %334, %324 ]
  %326 = phi i64 [ %151, %150 ], [ %335, %324 ]
  call void @llvm.dbg.value(metadata i64 %325, metadata !3127, metadata !DIExpression()), !dbg !3219
  %327 = getelementptr inbounds %struct.Point, %struct.Point* %146, i64 %325, i32 0, !dbg !3225
  store float 1.000000e+00, float* %327, align 8, !dbg !3226, !tbaa !1878
  %328 = or i64 %325, 1, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %328, metadata !3127, metadata !DIExpression()), !dbg !3219
  %329 = getelementptr inbounds %struct.Point, %struct.Point* %146, i64 %328, i32 0, !dbg !3225
  store float 1.000000e+00, float* %329, align 8, !dbg !3226, !tbaa !1878
  %330 = or i64 %325, 2, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %330, metadata !3127, metadata !DIExpression()), !dbg !3219
  %331 = getelementptr inbounds %struct.Point, %struct.Point* %146, i64 %330, i32 0, !dbg !3225
  store float 1.000000e+00, float* %331, align 8, !dbg !3226, !tbaa !1878
  %332 = or i64 %325, 3, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %332, metadata !3127, metadata !DIExpression()), !dbg !3219
  %333 = getelementptr inbounds %struct.Point, %struct.Point* %146, i64 %332, i32 0, !dbg !3225
  store float 1.000000e+00, float* %333, align 8, !dbg !3226, !tbaa !1878
  %334 = add nuw nsw i64 %325, 4, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %334, metadata !3127, metadata !DIExpression()), !dbg !3219
  %335 = add i64 %326, -4, !dbg !3222
  %336 = icmp eq i64 %335, 0, !dbg !3222
  br i1 %336, label %152, label %324, !dbg !3222, !llvm.loop !3283

337:                                              ; preds = %319
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3285, !tbaa !1768
  %339 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %338) #18, !dbg !3287
  call void @exit(i32 1) #19, !dbg !3288
  unreachable, !dbg !3288

340:                                              ; preds = %319
  call void @llvm.dbg.value(metadata %struct.Points* %8, metadata !2860, metadata !DIExpression()) #15, !dbg !3289
  call void @llvm.dbg.value(metadata %struct.Points* %9, metadata !2861, metadata !DIExpression()) #15, !dbg !3289
  call void @llvm.dbg.value(metadata i64* %22, metadata !2862, metadata !DIExpression()) #15, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %121, metadata !2863, metadata !DIExpression()) #15, !dbg !3289
  %341 = call noalias i8* @calloc(i64 %169, i64 1) #15, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %341, metadata !2866, metadata !DIExpression()) #15, !dbg !3289
  call void @llvm.dbg.value(metadata i64 0, metadata !2864, metadata !DIExpression()) #15, !dbg !3289
  br i1 %170, label %342, label %419, !dbg !3292

342:                                              ; preds = %340
  %343 = load %struct.Point*, %struct.Point** %33, align 8, !dbg !3293, !tbaa !1764
  %344 = add i64 %169, -1, !dbg !3292
  %345 = and i64 %169, 3, !dbg !3292
  %346 = icmp ult i64 %344, 3, !dbg !3292
  br i1 %346, label %370, label %347, !dbg !3292

347:                                              ; preds = %342
  %348 = sub i64 %169, %345, !dbg !3292
  br label %349, !dbg !3292

349:                                              ; preds = %349, %347
  %350 = phi i64 [ 0, %347 ], [ %367, %349 ]
  %351 = phi i64 [ %348, %347 ], [ %368, %349 ]
  call void @llvm.dbg.value(metadata i64 %350, metadata !2864, metadata !DIExpression()) #15, !dbg !3289
  %352 = getelementptr inbounds %struct.Point, %struct.Point* %343, i64 %350, i32 2, !dbg !3294
  %353 = load i64, i64* %352, align 8, !dbg !3294, !tbaa !1885
  %354 = getelementptr inbounds i8, i8* %341, i64 %353, !dbg !3295
  store i8 1, i8* %354, align 1, !dbg !3296, !tbaa !2099
  %355 = or i64 %350, 1, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %355, metadata !2864, metadata !DIExpression()) #15, !dbg !3289
  %356 = getelementptr inbounds %struct.Point, %struct.Point* %343, i64 %355, i32 2, !dbg !3294
  %357 = load i64, i64* %356, align 8, !dbg !3294, !tbaa !1885
  %358 = getelementptr inbounds i8, i8* %341, i64 %357, !dbg !3295
  store i8 1, i8* %358, align 1, !dbg !3296, !tbaa !2099
  %359 = or i64 %350, 2, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %359, metadata !2864, metadata !DIExpression()) #15, !dbg !3289
  %360 = getelementptr inbounds %struct.Point, %struct.Point* %343, i64 %359, i32 2, !dbg !3294
  %361 = load i64, i64* %360, align 8, !dbg !3294, !tbaa !1885
  %362 = getelementptr inbounds i8, i8* %341, i64 %361, !dbg !3295
  store i8 1, i8* %362, align 1, !dbg !3296, !tbaa !2099
  %363 = or i64 %350, 3, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %363, metadata !2864, metadata !DIExpression()) #15, !dbg !3289
  %364 = getelementptr inbounds %struct.Point, %struct.Point* %343, i64 %363, i32 2, !dbg !3294
  %365 = load i64, i64* %364, align 8, !dbg !3294, !tbaa !1885
  %366 = getelementptr inbounds i8, i8* %341, i64 %365, !dbg !3295
  store i8 1, i8* %366, align 1, !dbg !3296, !tbaa !2099
  %367 = add nuw nsw i64 %350, 4, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %367, metadata !2864, metadata !DIExpression()) #15, !dbg !3289
  %368 = add i64 %351, -4, !dbg !3292
  %369 = icmp eq i64 %368, 0, !dbg !3292
  br i1 %369, label %370, label %349, !dbg !3292, !llvm.loop !3298

370:                                              ; preds = %349, %342
  %371 = phi i64 [ 0, %342 ], [ %367, %349 ]
  %372 = icmp eq i64 %345, 0, !dbg !3292
  br i1 %372, label %382, label %373, !dbg !3292

373:                                              ; preds = %370, %373
  %374 = phi i64 [ %379, %373 ], [ %371, %370 ]
  %375 = phi i64 [ %380, %373 ], [ %345, %370 ]
  call void @llvm.dbg.value(metadata i64 %374, metadata !2864, metadata !DIExpression()) #15, !dbg !3289
  %376 = getelementptr inbounds %struct.Point, %struct.Point* %343, i64 %374, i32 2, !dbg !3294
  %377 = load i64, i64* %376, align 8, !dbg !3294, !tbaa !1885
  %378 = getelementptr inbounds i8, i8* %341, i64 %377, !dbg !3295
  store i8 1, i8* %378, align 1, !dbg !3296, !tbaa !2099
  %379 = add nuw nsw i64 %374, 1, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %379, metadata !2864, metadata !DIExpression()) #15, !dbg !3289
  %380 = add i64 %375, -1, !dbg !3292
  %381 = icmp eq i64 %380, 0, !dbg !3292
  br i1 %381, label %382, label %373, !dbg !3292, !llvm.loop !3300

382:                                              ; preds = %373, %370
  br label %383, !dbg !3301

383:                                              ; preds = %382, %413
  %384 = phi %struct.Point* [ %414, %413 ], [ %343, %382 ]
  %385 = phi i64 [ %415, %413 ], [ %169, %382 ]
  %386 = phi i64 [ %417, %413 ], [ 0, %382 ]
  %387 = phi i64 [ %416, %413 ], [ %321, %382 ]
  call void @llvm.dbg.value(metadata i64 %386, metadata !2864, metadata !DIExpression()) #15, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %387, metadata !2865, metadata !DIExpression()) #15, !dbg !3289
  %388 = getelementptr inbounds i8, i8* %341, i64 %386, !dbg !3302
  %389 = load i8, i8* %388, align 1, !dbg !3302, !tbaa !2099, !range !2101
  %390 = icmp eq i8 %389, 0, !dbg !3302
  br i1 %390, label %413, label %391, !dbg !3303

391:                                              ; preds = %383
  %392 = load %struct.Point*, %struct.Point** %60, align 8, !dbg !3304, !tbaa !1764
  %393 = getelementptr inbounds %struct.Point, %struct.Point* %392, i64 %387, i32 1, !dbg !3305
  %394 = bitcast float** %393 to i8**, !dbg !3305
  %395 = load i8*, i8** %394, align 8, !dbg !3305, !tbaa !1826
  %396 = getelementptr inbounds %struct.Point, %struct.Point* %384, i64 %386, i32 1, !dbg !3306
  %397 = bitcast float** %396 to i8**, !dbg !3306
  %398 = load i8*, i8** %397, align 8, !dbg !3306, !tbaa !1826
  %399 = load i32, i32* %29, align 8, !dbg !3307, !tbaa !1856
  %400 = sext i32 %399 to i64, !dbg !3308
  %401 = shl nsw i64 %400, 2, !dbg !3309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %395, i8* align 4 %398, i64 %401, i1 false) #15, !dbg !3310
  %402 = load %struct.Point*, %struct.Point** %33, align 8, !dbg !3311, !tbaa !1764
  %403 = getelementptr inbounds %struct.Point, %struct.Point* %402, i64 %386, i32 0, !dbg !3312
  %404 = bitcast float* %403 to i32*, !dbg !3312
  %405 = load i32, i32* %404, align 8, !dbg !3312, !tbaa !1878
  %406 = load %struct.Point*, %struct.Point** %60, align 8, !dbg !3313, !tbaa !1764
  %407 = getelementptr inbounds %struct.Point, %struct.Point* %406, i64 %387, !dbg !3314
  %408 = bitcast %struct.Point* %407 to i32*, !dbg !3315
  store i32 %405, i32* %408, align 8, !dbg !3315, !tbaa !1878
  %409 = add nsw i64 %386, %121, !dbg !3316
  %410 = getelementptr inbounds i64, i64* %22, i64 %387, !dbg !3317
  store i64 %409, i64* %410, align 8, !dbg !3318, !tbaa !1769
  %411 = add nsw i64 %387, 1, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %411, metadata !2865, metadata !DIExpression()) #15, !dbg !3289
  %412 = load i64, i64* %30, align 8, !dbg !3320, !tbaa !1750
  br label %413, !dbg !3321

413:                                              ; preds = %391, %383
  %414 = phi %struct.Point* [ %402, %391 ], [ %384, %383 ]
  %415 = phi i64 [ %412, %391 ], [ %385, %383 ], !dbg !3320
  %416 = phi i64 [ %411, %391 ], [ %387, %383 ], !dbg !3289
  call void @llvm.dbg.value(metadata i64 %416, metadata !2865, metadata !DIExpression()) #15, !dbg !3289
  %417 = add nuw nsw i64 %386, 1, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %417, metadata !2864, metadata !DIExpression()) #15, !dbg !3289
  %418 = icmp slt i64 %417, %415, !dbg !3323
  br i1 %418, label %383, label %419, !dbg !3301, !llvm.loop !3324

419:                                              ; preds = %413, %340
  %420 = phi i64 [ %321, %340 ], [ %416, %413 ], !dbg !3289
  call void @llvm.dbg.value(metadata i64 %420, metadata !2865, metadata !DIExpression()) #15, !dbg !3289
  store i64 %420, i64* %62, align 8, !dbg !3326, !tbaa !1750
  call void @free(i8* %341) #15, !dbg !3327
  %421 = add i64 %124, %121, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %421, metadata !3123, metadata !DIExpression()), !dbg !3129
  %422 = load i8*, i8** @_ZL9is_center, align 8, !dbg !3329, !tbaa !1768
  call void @free(i8* %422) #15, !dbg !3330
  %423 = load i8*, i8** @_ZL17switch_membership, align 8, !dbg !3331, !tbaa !1768
  call void @free(i8* %423) #15, !dbg !3332
  %424 = load i8*, i8** bitcast (i32** @_ZL12center_table to i8**), align 8, !dbg !3333, !tbaa !1768
  call void @free(i8* %424) #15, !dbg !3334
  %425 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %103, align 8, !dbg !3335, !tbaa !3202
  %426 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %425, i64 2, !dbg !3335
  %427 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %426, align 8, !dbg !3335
  %428 = call i32 %427(%class.PStream* %0), !dbg !3335
  %429 = icmp eq i32 %428, 0, !dbg !3337
  br i1 %429, label %120, label %430, !llvm.loop !3338

430:                                              ; preds = %419
  %431 = load i64, i64* %62, align 8, !dbg !3340, !tbaa !1750
  %432 = call noalias i8* @malloc(i64 %431) #15, !dbg !3341
  store i8* %432, i8** @_ZL17switch_membership, align 8, !dbg !3342, !tbaa !1768
  %433 = call noalias i8* @calloc(i64 %431, i64 1) #15, !dbg !3343
  store i8* %433, i8** @_ZL9is_center, align 8, !dbg !3344, !tbaa !1768
  %434 = shl i64 %431, 2, !dbg !3345
  %435 = call noalias i8* @malloc(i64 %434) #15, !dbg !3346
  store i8* %435, i8** bitcast (i32** @_ZL12center_table to i8**), align 8, !dbg !3347, !tbaa !1768
  call void @llvm.dbg.value(metadata i64* %10, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3129
  call void @_Z11localSearchP6PointsllPl(%struct.Points* nonnull %9, i64 %1, i64 %2, i64* nonnull %10), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.Points* %9, metadata !2806, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 0, metadata !2807, metadata !DIExpression()), !dbg !3349
  %436 = load i64, i64* %62, align 8, !dbg !3351, !tbaa !1750
  %437 = icmp sgt i64 %436, 0, !dbg !3352
  br i1 %437, label %438, label %586, !dbg !3353

438:                                              ; preds = %430
  %439 = load %struct.Point*, %struct.Point** %60, align 8, !dbg !3354, !tbaa !1764
  %440 = load i32, i32* %57, align 8, !dbg !3355
  %441 = icmp sgt i32 %440, 0, !dbg !3355
  %442 = zext i32 %440 to i64, !dbg !3355
  %443 = and i64 %442, 4294967292, !dbg !3353
  %444 = add nsw i64 %443, -4, !dbg !3353
  %445 = lshr exact i64 %444, 2, !dbg !3353
  %446 = add nuw nsw i64 %445, 1, !dbg !3353
  %447 = icmp ult i32 %440, 4, !dbg !3356
  %448 = and i64 %442, 4294967292, !dbg !3356
  %449 = and i64 %446, 1, !dbg !3356
  %450 = icmp eq i64 %444, 0, !dbg !3356
  %451 = sub nuw nsw i64 %446, %449, !dbg !3356
  %452 = icmp eq i64 %449, 0, !dbg !3355
  %453 = icmp eq i64 %448, %442, !dbg !3356
  %454 = and i64 %442, 1, !dbg !3356
  %455 = icmp eq i64 %454, 0, !dbg !3356
  %456 = sub nsw i64 0, %442, !dbg !3356
  br label %457, !dbg !3353

457:                                              ; preds = %583, %438
  %458 = phi i64 [ 0, %438 ], [ %584, %583 ]
  call void @llvm.dbg.value(metadata i64 %458, metadata !2807, metadata !DIExpression()), !dbg !3349
  %459 = getelementptr inbounds %struct.Point, %struct.Point* %439, i64 %458, i32 2, !dbg !3357
  %460 = load i64, i64* %459, align 8, !dbg !3357, !tbaa !1885
  %461 = icmp eq i64 %460, %458, !dbg !3358
  br i1 %461, label %583, label %462, !dbg !3359

462:                                              ; preds = %457
  %463 = getelementptr inbounds %struct.Point, %struct.Point* %439, i64 %460, i32 0, !dbg !3360
  %464 = load float, float* %463, align 8, !dbg !3360, !tbaa !1878
  %465 = getelementptr inbounds %struct.Point, %struct.Point* %439, i64 %458, i32 0, !dbg !3361
  %466 = load float, float* %465, align 8, !dbg !3361, !tbaa !1878
  %467 = fadd float %464, %466, !dbg !3362
  call void @llvm.dbg.value(metadata float %467, metadata !2809, metadata !DIExpression()), !dbg !3349
  %468 = fdiv float %466, %467, !dbg !3363
  call void @llvm.dbg.value(metadata float %468, metadata !2809, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 0, metadata !2808, metadata !DIExpression()), !dbg !3349
  br i1 %441, label %469, label %581, !dbg !3364

469:                                              ; preds = %462
  %470 = fpext float %468 to double, !dbg !3365
  %471 = fsub double 1.000000e+00, %470, !dbg !3365
  %472 = getelementptr inbounds %struct.Point, %struct.Point* %439, i64 %460, i32 1, !dbg !3365
  %473 = load float*, float** %472, align 8, !dbg !3365, !tbaa !1826
  %474 = getelementptr inbounds %struct.Point, %struct.Point* %439, i64 %458, i32 1, !dbg !3365
  %475 = load float*, float** %474, align 8, !dbg !3365, !tbaa !1826
  br i1 %447, label %537, label %476, !dbg !3364

476:                                              ; preds = %469
  %477 = getelementptr float, float* %473, i64 %442, !dbg !3364
  %478 = getelementptr float, float* %475, i64 %442, !dbg !3364
  %479 = icmp ult float* %473, %478, !dbg !3364
  %480 = icmp ult float* %475, %477, !dbg !3364
  %481 = and i1 %479, %480, !dbg !3364
  br i1 %481, label %537, label %482, !dbg !3364

482:                                              ; preds = %476
  %483 = insertelement <4 x double> undef, double %471, i32 0, !dbg !3364
  %484 = shufflevector <4 x double> %483, <4 x double> undef, <4 x i32> zeroinitializer, !dbg !3364
  %485 = insertelement <4 x float> undef, float %468, i32 0, !dbg !3364
  %486 = shufflevector <4 x float> %485, <4 x float> undef, <4 x i32> zeroinitializer, !dbg !3364
  br i1 %450, label %520, label %487, !dbg !3364

487:                                              ; preds = %482, %487
  %488 = phi i64 [ %517, %487 ], [ 0, %482 ], !dbg !3366
  %489 = phi i64 [ %518, %487 ], [ %451, %482 ]
  %490 = getelementptr inbounds float, float* %473, i64 %488, !dbg !3367
  %491 = bitcast float* %490 to <4 x float>*, !dbg !3368
  %492 = load <4 x float>, <4 x float>* %491, align 4, !dbg !3368, !tbaa !1725, !alias.scope !3369, !noalias !3372
  %493 = fpext <4 x float> %492 to <4 x double>, !dbg !3368
  %494 = fmul <4 x double> %484, %493, !dbg !3368
  %495 = fptrunc <4 x double> %494 to <4 x float>, !dbg !3368
  %496 = bitcast float* %490 to <4 x float>*, !dbg !3368
  store <4 x float> %495, <4 x float>* %496, align 4, !dbg !3368, !tbaa !1725, !alias.scope !3369, !noalias !3372
  %497 = getelementptr inbounds float, float* %475, i64 %488, !dbg !3374
  %498 = bitcast float* %497 to <4 x float>*, !dbg !3374
  %499 = load <4 x float>, <4 x float>* %498, align 4, !dbg !3374, !tbaa !1725, !alias.scope !3372
  %500 = fmul <4 x float> %486, %499, !dbg !3375
  %501 = fadd <4 x float> %500, %495, !dbg !3376
  %502 = bitcast float* %490 to <4 x float>*, !dbg !3376
  store <4 x float> %501, <4 x float>* %502, align 4, !dbg !3376, !tbaa !1725, !alias.scope !3369, !noalias !3372
  %503 = or i64 %488, 4, !dbg !3366
  %504 = getelementptr inbounds float, float* %473, i64 %503, !dbg !3367
  %505 = bitcast float* %504 to <4 x float>*, !dbg !3368
  %506 = load <4 x float>, <4 x float>* %505, align 4, !dbg !3368, !tbaa !1725, !alias.scope !3369, !noalias !3372
  %507 = fpext <4 x float> %506 to <4 x double>, !dbg !3368
  %508 = fmul <4 x double> %484, %507, !dbg !3368
  %509 = fptrunc <4 x double> %508 to <4 x float>, !dbg !3368
  %510 = bitcast float* %504 to <4 x float>*, !dbg !3368
  store <4 x float> %509, <4 x float>* %510, align 4, !dbg !3368, !tbaa !1725, !alias.scope !3369, !noalias !3372
  %511 = getelementptr inbounds float, float* %475, i64 %503, !dbg !3374
  %512 = bitcast float* %511 to <4 x float>*, !dbg !3374
  %513 = load <4 x float>, <4 x float>* %512, align 4, !dbg !3374, !tbaa !1725, !alias.scope !3372
  %514 = fmul <4 x float> %486, %513, !dbg !3375
  %515 = fadd <4 x float> %514, %509, !dbg !3376
  %516 = bitcast float* %504 to <4 x float>*, !dbg !3376
  store <4 x float> %515, <4 x float>* %516, align 4, !dbg !3376, !tbaa !1725, !alias.scope !3369, !noalias !3372
  %517 = add i64 %488, 8, !dbg !3366
  %518 = add i64 %489, -2, !dbg !3366
  %519 = icmp eq i64 %518, 0, !dbg !3366
  br i1 %519, label %520, label %487, !dbg !3366, !llvm.loop !3377

520:                                              ; preds = %487, %482
  %521 = phi i64 [ 0, %482 ], [ %517, %487 ]
  br i1 %452, label %536, label %522, !dbg !3366

522:                                              ; preds = %520
  %523 = getelementptr inbounds float, float* %473, i64 %521, !dbg !3367
  %524 = bitcast float* %523 to <4 x float>*, !dbg !3368
  %525 = load <4 x float>, <4 x float>* %524, align 4, !dbg !3368, !tbaa !1725, !alias.scope !3369, !noalias !3372
  %526 = fpext <4 x float> %525 to <4 x double>, !dbg !3368
  %527 = fmul <4 x double> %484, %526, !dbg !3368
  %528 = fptrunc <4 x double> %527 to <4 x float>, !dbg !3368
  %529 = bitcast float* %523 to <4 x float>*, !dbg !3368
  store <4 x float> %528, <4 x float>* %529, align 4, !dbg !3368, !tbaa !1725, !alias.scope !3369, !noalias !3372
  %530 = getelementptr inbounds float, float* %475, i64 %521, !dbg !3374
  %531 = bitcast float* %530 to <4 x float>*, !dbg !3374
  %532 = load <4 x float>, <4 x float>* %531, align 4, !dbg !3374, !tbaa !1725, !alias.scope !3372
  %533 = fmul <4 x float> %486, %532, !dbg !3375
  %534 = fadd <4 x float> %533, %528, !dbg !3376
  %535 = bitcast float* %523 to <4 x float>*, !dbg !3376
  store <4 x float> %534, <4 x float>* %535, align 4, !dbg !3376, !tbaa !1725, !alias.scope !3369, !noalias !3372
  br label %536, !dbg !3364

536:                                              ; preds = %520, %522
  br i1 %453, label %577, label %537, !dbg !3364

537:                                              ; preds = %536, %476, %469
  %538 = phi i64 [ 0, %476 ], [ 0, %469 ], [ %448, %536 ]
  %539 = xor i64 %538, -1, !dbg !3364
  br i1 %455, label %551, label %540, !dbg !3364

540:                                              ; preds = %537
  call void @llvm.dbg.value(metadata i64 %538, metadata !2808, metadata !DIExpression()), !dbg !3349
  %541 = getelementptr inbounds float, float* %473, i64 %538, !dbg !3367
  %542 = load float, float* %541, align 4, !dbg !3368, !tbaa !1725
  %543 = fpext float %542 to double, !dbg !3368
  %544 = fmul double %471, %543, !dbg !3368
  %545 = fptrunc double %544 to float, !dbg !3368
  store float %545, float* %541, align 4, !dbg !3368, !tbaa !1725
  %546 = getelementptr inbounds float, float* %475, i64 %538, !dbg !3374
  %547 = load float, float* %546, align 4, !dbg !3374, !tbaa !1725
  %548 = fmul float %468, %547, !dbg !3375
  %549 = fadd float %548, %545, !dbg !3376
  store float %549, float* %541, align 4, !dbg !3376, !tbaa !1725
  %550 = or i64 %538, 1, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %550, metadata !2808, metadata !DIExpression()), !dbg !3349
  br label %551, !dbg !3364

551:                                              ; preds = %540, %537
  %552 = phi i64 [ %550, %540 ], [ %538, %537 ]
  %553 = icmp eq i64 %539, %456, !dbg !3364
  br i1 %553, label %577, label %554, !dbg !3364

554:                                              ; preds = %551, %554
  %555 = phi i64 [ %575, %554 ], [ %552, %551 ]
  call void @llvm.dbg.value(metadata i64 %555, metadata !2808, metadata !DIExpression()), !dbg !3349
  %556 = getelementptr inbounds float, float* %473, i64 %555, !dbg !3367
  %557 = load float, float* %556, align 4, !dbg !3368, !tbaa !1725
  %558 = fpext float %557 to double, !dbg !3368
  %559 = fmul double %471, %558, !dbg !3368
  %560 = fptrunc double %559 to float, !dbg !3368
  store float %560, float* %556, align 4, !dbg !3368, !tbaa !1725
  %561 = getelementptr inbounds float, float* %475, i64 %555, !dbg !3374
  %562 = load float, float* %561, align 4, !dbg !3374, !tbaa !1725
  %563 = fmul float %468, %562, !dbg !3375
  %564 = fadd float %563, %560, !dbg !3376
  store float %564, float* %556, align 4, !dbg !3376, !tbaa !1725
  %565 = add nuw nsw i64 %555, 1, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %565, metadata !2808, metadata !DIExpression()), !dbg !3349
  %566 = getelementptr inbounds float, float* %473, i64 %565, !dbg !3367
  %567 = load float, float* %566, align 4, !dbg !3368, !tbaa !1725
  %568 = fpext float %567 to double, !dbg !3368
  %569 = fmul double %471, %568, !dbg !3368
  %570 = fptrunc double %569 to float, !dbg !3368
  store float %570, float* %566, align 4, !dbg !3368, !tbaa !1725
  %571 = getelementptr inbounds float, float* %475, i64 %565, !dbg !3374
  %572 = load float, float* %571, align 4, !dbg !3374, !tbaa !1725
  %573 = fmul float %468, %572, !dbg !3375
  %574 = fadd float %573, %570, !dbg !3376
  store float %574, float* %566, align 4, !dbg !3376, !tbaa !1725
  %575 = add nuw nsw i64 %555, 2, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %575, metadata !2808, metadata !DIExpression()), !dbg !3349
  %576 = icmp eq i64 %575, %442, !dbg !3379
  br i1 %576, label %577, label %554, !dbg !3364, !llvm.loop !3380

577:                                              ; preds = %551, %554, %536
  %578 = load float, float* %465, align 8, !dbg !3381, !tbaa !1878
  %579 = load float, float* %463, align 8, !dbg !3382, !tbaa !1878
  %580 = fadd float %578, %579, !dbg !3382
  br label %581, !dbg !3381

581:                                              ; preds = %577, %462
  %582 = phi float [ %580, %577 ], [ %467, %462 ], !dbg !3382
  store float %582, float* %463, align 8, !dbg !3382, !tbaa !1878
  br label %583, !dbg !3383

583:                                              ; preds = %581, %457
  %584 = add nuw nsw i64 %458, 1, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %584, metadata !2807, metadata !DIExpression()), !dbg !3349
  %585 = icmp eq i64 %584, %436, !dbg !3352
  br i1 %585, label %586, label %457, !dbg !3353, !llvm.loop !3385

586:                                              ; preds = %583, %430
  call void @_Z12outcenterIDsP6PointsPlPc(%struct.Points* nonnull %9, i64* %22, i8* %6), !dbg !3387
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %100) #15, !dbg !3388
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %56) #15, !dbg !3388
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #15, !dbg !3388
  ret void, !dbg !3388
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3389 {
  %3 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !1692, metadata !DIExpression()), !dbg !3406
  %4 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !1692, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 %0, metadata !3393, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i8** %1, metadata !3394, metadata !DIExpression()), !dbg !3410
  %5 = tail call dereferenceable(1024) i8* @_Znam(i64 1024) #16, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %5, metadata !3395, metadata !DIExpression()), !dbg !3410
  %6 = tail call dereferenceable(1024) i8* @_Znam(i64 1024) #16, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %6, metadata !3396, metadata !DIExpression()), !dbg !3410
  %7 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str, i64 0, i64 0)), !dbg !3413
  %8 = tail call i32 @fflush(%struct._IO_FILE* null), !dbg !3414
  %9 = icmp slt i32 %0, 10, !dbg !3415
  br i1 %9, label %10, label %36, !dbg !3417

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3418, !tbaa !1768
  %12 = load i8*, i8** %1, align 8, !dbg !3420, !tbaa !1768
  %13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0), i8* %12) #18, !dbg !3421
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3422, !tbaa !1768
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %14) #18, !dbg !3423
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3424, !tbaa !1768
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %16) #18, !dbg !3425
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3426, !tbaa !1768
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %18) #18, !dbg !3427
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3428, !tbaa !1768
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %20) #18, !dbg !3429
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3430, !tbaa !1768
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %22) #18, !dbg !3431
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3432, !tbaa !1768
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %24) #18, !dbg !3433
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3434, !tbaa !1768
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %26) #18, !dbg !3435
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3436, !tbaa !1768
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %28) #18, !dbg !3437
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3438, !tbaa !1768
  %31 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %30) #18, !dbg !3439
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3440, !tbaa !1768
  %33 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %32) #18, !dbg !3441
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3442, !tbaa !1768
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.23, i64 0, i64 0), i64 76, i64 1, %struct._IO_FILE* %34) #18, !dbg !3443
  tail call void @exit(i32 1) #19, !dbg !3444
  unreachable, !dbg !3444

36:                                               ; preds = %2
  %37 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !3445
  %38 = load i8*, i8** %37, align 8, !dbg !3445, !tbaa !1768
  call void @llvm.dbg.value(metadata i8* %38, metadata !938, metadata !DIExpression()) #15, !dbg !3446
  %39 = tail call i64 @strtol(i8* nocapture nonnull %38, i8** null, i32 10) #15, !dbg !3448
  %40 = shl i64 %39, 32, !dbg !3449
  %41 = ashr exact i64 %40, 32, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %41, metadata !3397, metadata !DIExpression()), !dbg !3410
  %42 = getelementptr inbounds i8*, i8** %1, i64 2, !dbg !3450
  %43 = load i8*, i8** %42, align 8, !dbg !3450, !tbaa !1768
  call void @llvm.dbg.value(metadata i8* %43, metadata !938, metadata !DIExpression()) #15, !dbg !3451
  %44 = tail call i64 @strtol(i8* nocapture nonnull %43, i8** null, i32 10) #15, !dbg !3453
  %45 = shl i64 %44, 32, !dbg !3454
  %46 = ashr exact i64 %45, 32, !dbg !3454
  call void @llvm.dbg.value(metadata i64 %46, metadata !3398, metadata !DIExpression()), !dbg !3410
  %47 = getelementptr inbounds i8*, i8** %1, i64 3, !dbg !3455
  %48 = load i8*, i8** %47, align 8, !dbg !3455, !tbaa !1768
  call void @llvm.dbg.value(metadata i8* %48, metadata !938, metadata !DIExpression()) #15, !dbg !3456
  %49 = tail call i64 @strtol(i8* nocapture nonnull %48, i8** null, i32 10) #15, !dbg !3458
  %50 = trunc i64 %49 to i32, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %50, metadata !3402, metadata !DIExpression()), !dbg !3410
  %51 = getelementptr inbounds i8*, i8** %1, i64 4, !dbg !3459
  %52 = load i8*, i8** %51, align 8, !dbg !3459, !tbaa !1768
  call void @llvm.dbg.value(metadata i8* %52, metadata !938, metadata !DIExpression()) #15, !dbg !3460
  %53 = tail call i64 @strtol(i8* nocapture nonnull %52, i8** null, i32 10) #15, !dbg !3462
  %54 = trunc i64 %53 to i32, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %54, metadata !3399, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !3410
  %55 = getelementptr inbounds i8*, i8** %1, i64 5, !dbg !3463
  %56 = load i8*, i8** %55, align 8, !dbg !3463, !tbaa !1768
  call void @llvm.dbg.value(metadata i8* %56, metadata !938, metadata !DIExpression()) #15, !dbg !3464
  %57 = tail call i64 @strtol(i8* nocapture nonnull %56, i8** null, i32 10) #15, !dbg !3466
  %58 = shl i64 %57, 32, !dbg !3467
  %59 = ashr exact i64 %58, 32, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %59, metadata !3400, metadata !DIExpression()), !dbg !3410
  %60 = getelementptr inbounds i8*, i8** %1, i64 6, !dbg !3468
  %61 = load i8*, i8** %60, align 8, !dbg !3468, !tbaa !1768
  call void @llvm.dbg.value(metadata i8* %61, metadata !938, metadata !DIExpression()) #15, !dbg !3469
  %62 = tail call i64 @strtol(i8* nocapture nonnull %61, i8** null, i32 10) #15, !dbg !3471
  %63 = shl i64 %62, 32, !dbg !3472
  %64 = ashr exact i64 %63, 32, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %64, metadata !3401, metadata !DIExpression()), !dbg !3410
  %65 = getelementptr inbounds i8*, i8** %1, i64 7, !dbg !3473
  %66 = load i8*, i8** %65, align 8, !dbg !3473, !tbaa !1768
  %67 = tail call i8* @strcpy(i8* nonnull %6, i8* nonnull dereferenceable(1) %66) #15, !dbg !3474
  %68 = getelementptr inbounds i8*, i8** %1, i64 8, !dbg !3475
  %69 = load i8*, i8** %68, align 8, !dbg !3475, !tbaa !1768
  %70 = tail call i8* @strcpy(i8* nonnull %5, i8* nonnull dereferenceable(1) %69) #15, !dbg !3476
  %71 = getelementptr inbounds i8*, i8** %1, i64 9, !dbg !3477
  %72 = load i8*, i8** %71, align 8, !dbg !3477, !tbaa !1768
  call void @llvm.dbg.value(metadata i8* %72, metadata !938, metadata !DIExpression()) #15, !dbg !3478
  %73 = tail call i64 @strtol(i8* nocapture nonnull %72, i8** null, i32 10) #15, !dbg !3480
  %74 = trunc i64 %73 to i32, !dbg !3480
  store i32 %74, i32* @_ZL5nproc, align 4, !dbg !3481, !tbaa !1801
  tail call void @srand48(i64 1) #15, !dbg !3482
  %75 = icmp sgt i32 %54, 0, !dbg !3483
  %76 = tail call dereferenceable(16) i8* @_Znwm(i64 16) #16, !dbg !3485
  br i1 %75, label %77, label %82, !dbg !3486

77:                                               ; preds = %36
  %78 = and i64 %53, 4294967295, !dbg !3487
  call void @llvm.dbg.value(metadata i64 %78, metadata !3399, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i8* %76, metadata !3488, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 %78, metadata !3509, metadata !DIExpression()), !dbg !3511
  %79 = bitcast i8* %76 to i32 (...)***, !dbg !3514
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV9SimStream, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %79, align 8, !dbg !3514, !tbaa !3202
  %80 = getelementptr inbounds i8, i8* %76, i64 8, !dbg !3515
  %81 = bitcast i8* %80 to i64*, !dbg !3515
  store i64 %78, i64* %81, align 8, !dbg !3517, !tbaa !3518
  call void @llvm.dbg.value(metadata i8* %76, metadata !3403, metadata !DIExpression()), !dbg !3410
  br label %91, !dbg !3520

82:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %76, metadata !3521, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8* %6, metadata !3542, metadata !DIExpression()), !dbg !3544
  %83 = bitcast i8* %76 to i32 (...)***, !dbg !3547
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10FileStream, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %83, align 8, !dbg !3547, !tbaa !3202
  %84 = tail call %struct._IO_FILE* @fopen(i8* nonnull %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)), !dbg !3548
  %85 = getelementptr inbounds i8, i8* %76, i64 8, !dbg !3550
  %86 = bitcast i8* %85 to %struct._IO_FILE**, !dbg !3550
  store %struct._IO_FILE* %84, %struct._IO_FILE** %86, align 8, !dbg !3551, !tbaa !3552
  %87 = icmp eq %struct._IO_FILE* %84, null, !dbg !3554
  br i1 %87, label %88, label %91, !dbg !3556

88:                                               ; preds = %82
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3557, !tbaa !1768
  %90 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i8* nonnull %6) #18, !dbg !3559
  tail call void @exit(i32 1) #19, !dbg !3560
  unreachable, !dbg !3560

91:                                               ; preds = %82, %77
  %92 = bitcast i8* %76 to %class.PStream*, !dbg !3485
  call void @llvm.dbg.value(metadata %class.PStream* %92, metadata !3403, metadata !DIExpression()), !dbg !3410
  %93 = bitcast %struct.timeval* %4 to i8*, !dbg !3561
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %93) #15, !dbg !3561
  %94 = call i32 @gettimeofday(%struct.timeval* nonnull %4, i8* null) #15, !dbg !3562
  %95 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0, !dbg !3563
  %96 = load i64, i64* %95, align 8, !dbg !3563, !tbaa !1697
  %97 = sitofp i64 %96 to double, !dbg !3564
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1, !dbg !3565
  %99 = load i64, i64* %98, align 8, !dbg !3565, !tbaa !1704
  %100 = sitofp i64 %99 to double, !dbg !3566
  %101 = fmul double %100, 0x3EB0C6F7A0B5ED8D, !dbg !3567
  %102 = fadd double %101, %97, !dbg !3568
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %93) #15, !dbg !3569
  call void @llvm.dbg.value(metadata double %102, metadata !3404, metadata !DIExpression()), !dbg !3410
  tail call void @_Z13streamClusterP7PStreamllillPc(%class.PStream* nonnull %92, i64 %41, i64 %46, i32 %50, i64 %59, i64 %64, i8* nonnull %5), !dbg !3570
  %103 = bitcast %struct.timeval* %3 to i8*, !dbg !3571
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %103) #15, !dbg !3571
  %104 = call i32 @gettimeofday(%struct.timeval* nonnull %3, i8* null) #15, !dbg !3572
  %105 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0, !dbg !3573
  %106 = load i64, i64* %105, align 8, !dbg !3573, !tbaa !1697
  %107 = sitofp i64 %106 to double, !dbg !3574
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1, !dbg !3575
  %109 = load i64, i64* %108, align 8, !dbg !3575, !tbaa !1704
  %110 = sitofp i64 %109 to double, !dbg !3576
  %111 = fmul double %110, 0x3EB0C6F7A0B5ED8D, !dbg !3577
  %112 = fadd double %111, %107, !dbg !3578
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %103) #15, !dbg !3579
  call void @llvm.dbg.value(metadata double %112, metadata !3405, metadata !DIExpression()), !dbg !3410
  %113 = fsub double %112, %102, !dbg !3580
  %114 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), double %113), !dbg !3581
  %115 = bitcast i8* %76 to void (%class.PStream*)***, !dbg !3582
  %116 = load void (%class.PStream*)**, void (%class.PStream*)*** %115, align 8, !dbg !3582, !tbaa !3202
  %117 = getelementptr inbounds void (%class.PStream*)*, void (%class.PStream*)** %116, i64 4, !dbg !3582
  %118 = load void (%class.PStream*)*, void (%class.PStream*)** %117, align 8, !dbg !3582
  tail call void %118(%class.PStream* nonnull %92) #15, !dbg !3582
  ret i32 0, !dbg !3583
}

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !225 dso_local i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !226 dso_local void @srand48(i64) local_unnamed_addr #5

; Function Attrs: nobuiltin nofree
declare dso_local noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #9

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #10

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #7

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZN9SimStream4readEPfii(%class.SimStream* %0, float* %1, i32 %2, i32 %3) unnamed_addr #0 comdat align 2 !dbg !3584 {
  call void @llvm.dbg.value(metadata %class.SimStream* %0, metadata !3586, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata float* %1, metadata !3587, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %2, metadata !3588, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %3, metadata !3589, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 0, metadata !3590, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 0, metadata !3591, metadata !DIExpression()), !dbg !3598
  %5 = getelementptr inbounds %class.SimStream, %class.SimStream* %0, i64 0, i32 1, !dbg !3599
  call void @llvm.dbg.value(metadata i32 0, metadata !3591, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 0, metadata !3590, metadata !DIExpression()), !dbg !3597
  %6 = icmp sgt i32 %3, 0, !dbg !3600
  br i1 %6, label %7, label %20, !dbg !3601

7:                                                ; preds = %4
  %8 = icmp sgt i32 %2, 0, !dbg !3602
  %9 = sext i32 %2 to i64, !dbg !3601
  %10 = zext i32 %3 to i64, !dbg !3600
  %11 = load i64, i64* %5, align 8, !dbg !3599, !tbaa !3518
  %12 = zext i32 %2 to i64, !dbg !3602
  br label %13, !dbg !3601

13:                                               ; preds = %24, %7
  %14 = phi i64 [ %11, %7 ], [ %26, %24 ], !dbg !3599
  %15 = phi i64 [ 0, %7 ], [ %27, %24 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !3591, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 %15, metadata !3590, metadata !DIExpression()), !dbg !3597
  %16 = icmp sgt i64 %14, 0, !dbg !3604
  br i1 %16, label %17, label %20, !dbg !3605

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 0, metadata !3593, metadata !DIExpression()), !dbg !3606
  br i1 %8, label %18, label %24, !dbg !3607

18:                                               ; preds = %17
  %19 = mul nsw i64 %15, %9, !dbg !3608
  br label %29, !dbg !3607

20:                                               ; preds = %13, %24, %4
  %21 = phi i64 [ 0, %4 ], [ %10, %24 ], [ %15, %13 ], !dbg !3597
  call void @llvm.dbg.value(metadata i64 %21, metadata !3590, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %21, metadata !3590, metadata !DIExpression()), !dbg !3597
  ret i64 %21, !dbg !3610

22:                                               ; preds = %29
  %23 = load i64, i64* %5, align 8, !dbg !3611, !tbaa !3518
  br label %24, !dbg !3611

24:                                               ; preds = %22, %17
  %25 = phi i64 [ %23, %22 ], [ %14, %17 ], !dbg !3611
  %26 = add nsw i64 %25, -1, !dbg !3611
  store i64 %26, i64* %5, align 8, !dbg !3611, !tbaa !3518
  %27 = add nuw nsw i64 %15, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i64 %27, metadata !3590, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %27, metadata !3591, metadata !DIExpression()), !dbg !3598
  %28 = icmp eq i64 %27, %10, !dbg !3600
  br i1 %28, label %20, label %13, !dbg !3601, !llvm.loop !3613

29:                                               ; preds = %29, %18
  %30 = phi i64 [ 0, %18 ], [ %36, %29 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !3593, metadata !DIExpression()), !dbg !3606
  %31 = tail call i64 @lrand48() #15, !dbg !3615
  %32 = sitofp i64 %31 to float, !dbg !3615
  %33 = fmul float %32, 0x3E00000000000000, !dbg !3616
  %34 = add nsw i64 %30, %19, !dbg !3617
  %35 = getelementptr inbounds float, float* %1, i64 %34, !dbg !3618
  store float %33, float* %35, align 4, !dbg !3619, !tbaa !1725
  %36 = add nuw nsw i64 %30, 1, !dbg !3620
  call void @llvm.dbg.value(metadata i64 %36, metadata !3593, metadata !DIExpression()), !dbg !3606
  %37 = icmp eq i64 %36, %12, !dbg !3621
  br i1 %37, label %22, label %29, !dbg !3607, !llvm.loop !3622
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN9SimStream6ferrorEv(%class.SimStream* %0) unnamed_addr #0 comdat align 2 !dbg !3624 {
  call void @llvm.dbg.value(metadata %class.SimStream* %0, metadata !3626, metadata !DIExpression()), !dbg !3627
  ret i32 0, !dbg !3628
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN9SimStream4feofEv(%class.SimStream* %0) unnamed_addr #0 comdat align 2 !dbg !3629 {
  call void @llvm.dbg.value(metadata %class.SimStream* %0, metadata !3631, metadata !DIExpression()), !dbg !3632
  %2 = getelementptr inbounds %class.SimStream, %class.SimStream* %0, i64 0, i32 1, !dbg !3633
  %3 = load i64, i64* %2, align 8, !dbg !3633, !tbaa !3518
  %4 = icmp slt i64 %3, 1, !dbg !3634
  %5 = zext i1 %4 to i32, !dbg !3633
  ret i32 %5, !dbg !3635
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9SimStreamD0Ev(%class.SimStream* %0) unnamed_addr #0 comdat align 2 !dbg !3636 {
  call void @llvm.dbg.value(metadata %class.SimStream* %0, metadata !3638, metadata !DIExpression()), !dbg !3639
  %2 = bitcast %class.SimStream* %0 to i8*, !dbg !3640
  tail call void @_ZdlPv(i8* %2) #17, !dbg !3640
  ret void, !dbg !3641
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN7PStreamD2Ev(%class.PStream* %0) unnamed_addr #0 comdat align 2 !dbg !3642 {
  call void @llvm.dbg.value(metadata %class.PStream* %0, metadata !3644, metadata !DIExpression()), !dbg !3645
  ret void, !dbg !3646
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64 @_ZN10FileStream4readEPfii(%class.FileStream* %0, float* %1, i32 %2, i32 %3) unnamed_addr #6 comdat align 2 !dbg !3647 {
  call void @llvm.dbg.value(metadata %class.FileStream* %0, metadata !3649, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata float* %1, metadata !3650, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 %2, metadata !3651, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 %3, metadata !3652, metadata !DIExpression()), !dbg !3653
  %5 = bitcast float* %1 to i8*, !dbg !3654
  %6 = sext i32 %2 to i64, !dbg !3655
  %7 = shl nsw i64 %6, 2, !dbg !3656
  %8 = sext i32 %3 to i64, !dbg !3657
  %9 = getelementptr inbounds %class.FileStream, %class.FileStream* %0, i64 0, i32 1, !dbg !3658
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !3658, !tbaa !3552
  %11 = tail call i64 @fread(i8* %5, i64 %7, i64 %8, %struct._IO_FILE* %10), !dbg !3659
  ret i64 %11, !dbg !3660
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN10FileStream6ferrorEv(%class.FileStream* %0) unnamed_addr #0 comdat align 2 !dbg !3661 {
  call void @llvm.dbg.value(metadata %class.FileStream* %0, metadata !3663, metadata !DIExpression()), !dbg !3664
  %2 = getelementptr inbounds %class.FileStream, %class.FileStream* %0, i64 0, i32 1, !dbg !3665
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3665, !tbaa !3552
  %4 = tail call i32 @ferror(%struct._IO_FILE* %3) #15, !dbg !3666
  ret i32 %4, !dbg !3667
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN10FileStream4feofEv(%class.FileStream* %0) unnamed_addr #0 comdat align 2 !dbg !3668 {
  call void @llvm.dbg.value(metadata %class.FileStream* %0, metadata !3670, metadata !DIExpression()), !dbg !3671
  %2 = getelementptr inbounds %class.FileStream, %class.FileStream* %0, i64 0, i32 1, !dbg !3672
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3672, !tbaa !3552
  %4 = tail call i32 @feof(%struct._IO_FILE* %3) #15, !dbg !3673
  ret i32 %4, !dbg !3674
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN10FileStreamD2Ev(%class.FileStream* %0) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3675 {
  call void @llvm.dbg.value(metadata %class.FileStream* %0, metadata !3677, metadata !DIExpression()), !dbg !3678
  %2 = getelementptr %class.FileStream, %class.FileStream* %0, i64 0, i32 0, i32 0, !dbg !3679
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10FileStream, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !dbg !3679, !tbaa !3202
  %3 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.28, i64 0, i64 0)), !dbg !3680
  %4 = getelementptr inbounds %class.FileStream, %class.FileStream* %0, i64 0, i32 1, !dbg !3682
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3682, !tbaa !3552
  %6 = tail call i32 @fclose(%struct._IO_FILE* %5), !dbg !3683
  ret void, !dbg !3684
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN10FileStreamD0Ev(%class.FileStream* %0) unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 !dbg !3685 {
  call void @llvm.dbg.value(metadata %class.FileStream* %0, metadata !3687, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata %class.FileStream* %0, metadata !3677, metadata !DIExpression()) #15, !dbg !3689
  %2 = getelementptr %class.FileStream, %class.FileStream* %0, i64 0, i32 0, i32 0, !dbg !3691
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10FileStream, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !dbg !3691, !tbaa !3202
  %3 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.28, i64 0, i64 0)) #15, !dbg !3692
  %4 = getelementptr inbounds %class.FileStream, %class.FileStream* %0, i64 0, i32 1, !dbg !3693
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3693, !tbaa !3552
  %6 = tail call i32 @fclose(%struct._IO_FILE* %5) #15, !dbg !3694
  %7 = bitcast %class.FileStream* %0 to i8*, !dbg !3695
  tail call void @_ZdlPv(i8* %7) #17, !dbg !3695
  ret void, !dbg !3696
}

; Function Attrs: nofree nounwind
declare dso_local i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare !dbg !230 dso_local i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare !dbg !231 dso_local i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_streamcluster_original.cpp() #6 section ".text.startup" !dbg !3697 {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit), !dbg !3699
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #15, !dbg !3699
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #13

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind }
attributes #16 = { builtin }
attributes #17 = { builtin nounwind }
attributes #18 = { cold }
attributes #19 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1684, !1685, !1686}
!llvm.ident = !{!1687}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nproc", linkageName: "_ZL5nproc", scope: !2, file: !3, line: 84, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !232, imports: !435, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "streamcluster_original.cpp", directory: "/mnt/d/RISC-V-PROJECT/rowan-riscv-rodinia-llvm/src/openmp/streamcluster")
!4 = !{}
!5 = !{!6, !22, !23, !27, !41, !42, !74, !116, !117, !118, !121, !10, !124, !125, !18, !126, !128, !155, !21, !161, !166, !167, !150, !139, !54, !225, !226, !229, !230, !231}
!6 = !DISubprogram(name: "gettimeofday", scope: !7, file: !7, line: 66, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !21}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !13, line: 8, size: 128, flags: DIFlagTypePassByValue, elements: !14, identifier: "_ZTS7timeval")
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!14 = !{!15, !19}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !12, file: !13, line: 10, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !17, line: 160, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!18 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !12, file: !13, line: 11, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !17, line: 162, baseType: !18)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DISubprogram(name: "lrand48", scope: !24, file: !24, line: 471, type: !25, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!24 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!25 = !DISubroutineType(types: !26)
!26 = !{!18}
!27 = !DISubprogram(name: "pthread_barrier_wait", scope: !28, file: !28, line: 1090, type: !29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!28 = !DIFile(filename: "/usr/include/pthread.h", directory: "")
!29 = !DISubroutineType(types: !30)
!30 = !{!10, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 108, size: 256, flags: DIFlagTypePassByValue, elements: !34, identifier: "_ZTS17pthread_barrier_t")
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "")
!34 = !{!35, !40}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !32, file: !33, line: 110, baseType: !36, size: 256)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !38)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !{!39}
!39 = !DISubrange(count: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !32, file: !33, line: 111, baseType: !18, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!42 = !DISubprogram(name: "pthread_mutex_lock", scope: !28, file: !28, line: 738, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!43 = !DISubroutineType(types: !44)
!44 = !{!10, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 67, size: 320, flags: DIFlagTypePassByValue, elements: !47, identifier: "_ZTS15pthread_mutex_t")
!47 = !{!48, !69, !73}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !46, file: !33, line: 69, baseType: !49, size: 320)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !50, line: 22, size: 320, flags: DIFlagTypePassByValue, elements: !51, identifier: "_ZTS17__pthread_mutex_s")
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "")
!51 = !{!52, !53, !55, !56, !57, !58, !60, !61}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !49, file: !50, line: 24, baseType: !10, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !49, file: !50, line: 25, baseType: !54, size: 32, offset: 32)
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !49, file: !50, line: 26, baseType: !10, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !49, file: !50, line: 28, baseType: !54, size: 32, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !49, file: !50, line: 32, baseType: !10, size: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !49, file: !50, line: 34, baseType: !59, size: 16, offset: 160)
!59 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !49, file: !50, line: 35, baseType: !59, size: 16, offset: 176)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !49, file: !50, line: 36, baseType: !62, size: 128, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !63, line: 53, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !63, line: 49, size: 128, flags: DIFlagTypePassByValue, elements: !65, identifier: "_ZTS23__pthread_internal_list")
!65 = !{!66, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !64, file: !63, line: 51, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !64, file: !63, line: 52, baseType: !67, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !46, file: !33, line: 70, baseType: !70, size: 320)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 320, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 40)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !46, file: !33, line: 71, baseType: !18, size: 64)
!74 = !DISubprogram(name: "pthread_cond_wait", scope: !28, file: !28, line: 986, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!75 = !DISubroutineType(types: !76)
!76 = !{!10, !77, !45}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 75, size: 384, flags: DIFlagTypePassByValue, elements: !79, identifier: "_ZTS14pthread_cond_t")
!79 = !{!80, !110, !114}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !78, file: !33, line: 77, baseType: !81, size: 384)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !63, line: 92, size: 384, flags: DIFlagTypePassByValue, elements: !82, identifier: "_ZTS16__pthread_cond_s")
!82 = !{!83, !93, !102, !106, !107, !108, !109}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !63, line: 94, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !63, line: 94, size: 64, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !85, identifier: "_ZTSN16__pthread_cond_sUt_E")
!85 = !{!86, !88}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !84, file: !63, line: 96, baseType: !87, size: 64)
!87 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !84, file: !63, line: 101, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !63, line: 97, size: 64, flags: DIFlagTypePassByValue, elements: !90, identifier: "_ZTSN16__pthread_cond_sUt_Ut_E")
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !89, file: !63, line: 99, baseType: !54, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !89, file: !63, line: 100, baseType: !54, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !63, line: 103, baseType: !94, size: 64, offset: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !63, line: 103, size: 64, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !95, identifier: "_ZTSN16__pthread_cond_sUt0_E")
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !94, file: !63, line: 105, baseType: !87, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !94, file: !63, line: 110, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !63, line: 106, size: 64, flags: DIFlagTypePassByValue, elements: !99, identifier: "_ZTSN16__pthread_cond_sUt0_Ut_E")
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !98, file: !63, line: 108, baseType: !54, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !98, file: !63, line: 109, baseType: !54, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !81, file: !63, line: 112, baseType: !103, size: 64, offset: 128)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 2)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !81, file: !63, line: 113, baseType: !103, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !81, file: !63, line: 114, baseType: !54, size: 32, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !81, file: !63, line: 115, baseType: !54, size: 32, offset: 288)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !81, file: !63, line: 116, baseType: !103, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !78, file: !33, line: 78, baseType: !111, size: 384)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 384, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 48)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !78, file: !33, line: 79, baseType: !115, size: 64)
!115 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!116 = !DISubprogram(name: "pthread_mutex_unlock", scope: !28, file: !28, line: 756, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!117 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!118 = !DISubprogram(name: "pthread_cond_broadcast", scope: !28, file: !28, line: 978, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!119 = !DISubroutineType(types: !120)
!120 = !{!10, !77}
!121 = !DISubprogram(name: "free", scope: !24, file: !24, line: 565, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !21}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkmedian_arg_t", file: !3, line: 954, size: 384, flags: DIFlagTypePassByValue, elements: !130, identifier: "_ZTS14pkmedian_arg_t")
!130 = !{!131, !147, !148, !149, !151, !152}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "points", scope: !129, file: !3, line: 956, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "Points", file: !3, line: 78, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 74, size: 192, flags: DIFlagTypePassByValue, elements: !135, identifier: "_ZTS6Points")
!135 = !{!136, !137, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !134, file: !3, line: 75, baseType: !18, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !134, file: !3, line: 76, baseType: !10, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !134, file: !3, line: 77, baseType: !139, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "Point", file: !3, line: 71, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 66, size: 256, flags: DIFlagTypePassByValue, elements: !142, identifier: "_ZTS5Point")
!142 = !{!143, !144, !145, !146}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !141, file: !3, line: 67, baseType: !117, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "coord", scope: !141, file: !3, line: 68, baseType: !125, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "assign", scope: !141, file: !3, line: 69, baseType: !18, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !141, file: !3, line: 70, baseType: !117, size: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "kmin", scope: !129, file: !3, line: 957, baseType: !18, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "kmax", scope: !129, file: !3, line: 958, baseType: !18, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "kfinal", scope: !129, file: !3, line: 959, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !129, file: !3, line: 960, baseType: !10, size: 32, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "barrier", scope: !129, file: !3, line: 961, baseType: !153, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_barrier_t", file: !33, line: 112, baseType: !32)
!155 = !DISubprogram(name: "pthread_barrier_init", scope: !28, file: !28, line: 1080, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!156 = !DISubroutineType(types: !157)
!157 = !{!10, !31, !158, !54}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 114, flags: DIFlagFwdDecl, identifier: "_ZTS21pthread_barrierattr_t")
!161 = !DISubprogram(name: "pthread_join", scope: !28, file: !28, line: 215, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!162 = !DISubroutineType(types: !163)
!163 = !{!10, !164, !165}
!164 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!166 = !DISubprogram(name: "pthread_barrier_destroy", scope: !28, file: !28, line: 1086, type: !29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!167 = !DISubprogram(name: "fclose", scope: !168, file: !168, line: 213, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!168 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!169 = !DISubroutineType(types: !170)
!170 = !{!10, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !174, identifier: "_ZTS8_IO_FILE")
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!174 = !{!175, !176, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !191, !192, !193, !194, !196, !198, !200, !204, !207, !209, !212, !215, !216, !217, !220, !221}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !172, file: !173, line: 51, baseType: !10, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !172, file: !173, line: 54, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !172, file: !173, line: 55, baseType: !177, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !172, file: !173, line: 56, baseType: !177, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !172, file: !173, line: 57, baseType: !177, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !172, file: !173, line: 58, baseType: !177, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !172, file: !173, line: 59, baseType: !177, size: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !172, file: !173, line: 60, baseType: !177, size: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !172, file: !173, line: 61, baseType: !177, size: 64, offset: 512)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !172, file: !173, line: 64, baseType: !177, size: 64, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !172, file: !173, line: 65, baseType: !177, size: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !172, file: !173, line: 66, baseType: !177, size: 64, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !172, file: !173, line: 68, baseType: !189, size: 64, offset: 768)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !173, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !172, file: !173, line: 70, baseType: !171, size: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !172, file: !173, line: 72, baseType: !10, size: 32, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !172, file: !173, line: 73, baseType: !10, size: 32, offset: 928)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !172, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !17, line: 152, baseType: !18)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !172, file: !173, line: 77, baseType: !197, size: 16, offset: 1024)
!197 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !172, file: !173, line: 78, baseType: !199, size: 8, offset: 1040)
!199 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !172, file: !173, line: 79, baseType: !201, size: 8, offset: 1048)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 1)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !172, file: !173, line: 81, baseType: !205, size: 64, offset: 1088)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !173, line: 43, baseType: null)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !172, file: !173, line: 89, baseType: !208, size: 64, offset: 1152)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !17, line: 153, baseType: !18)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !172, file: !173, line: 91, baseType: !210, size: 64, offset: 1216)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !173, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !172, file: !173, line: 92, baseType: !213, size: 64, offset: 1280)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !173, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !172, file: !173, line: 93, baseType: !171, size: 64, offset: 1344)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !172, file: !173, line: 94, baseType: !21, size: 64, offset: 1408)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !172, file: !173, line: 95, baseType: !218, size: 64, offset: 1472)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !219, line: 46, baseType: !164)
!219 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !172, file: !173, line: 96, baseType: !10, size: 32, offset: 1536)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !172, file: !173, line: 98, baseType: !222, size: 160, offset: 1568)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 20)
!225 = !DISubprogram(name: "fflush", scope: !168, file: !168, line: 218, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!226 = !DISubprogram(name: "srand48", scope: !24, file: !24, line: 481, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !18}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!230 = !DISubprogram(name: "ferror", scope: !168, file: !168, line: 761, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!231 = !DISubprogram(name: "feof", scope: !168, file: !168, line: 759, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!232 = !{!233, !279, !281, !283, !285, !288, !291, !357, !359, !361, !397, !399, !401, !403, !0, !429, !431, !433}
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "totalcost", scope: !235, file: !3, line: 210, type: !22, isLocal: true, isDefinition: true)
!235 = distinct !DISubprogram(name: "pspeedy", linkageName: "_Z7pspeedyP6PointsfPliP17pthread_barrier_t", scope: !3, file: !3, line: 195, type: !236, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!117, !132, !117, !150, !10, !153}
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !249, !252, !257, !260, !265, !269, !272, !273, !275}
!239 = !DILocalVariable(name: "points", arg: 1, scope: !235, file: !3, line: 195, type: !132)
!240 = !DILocalVariable(name: "z", arg: 2, scope: !235, file: !3, line: 195, type: !117)
!241 = !DILocalVariable(name: "kcenter", arg: 3, scope: !235, file: !3, line: 195, type: !150)
!242 = !DILocalVariable(name: "pid", arg: 4, scope: !235, file: !3, line: 195, type: !10)
!243 = !DILocalVariable(name: "barrier", arg: 5, scope: !235, file: !3, line: 195, type: !153)
!244 = !DILocalVariable(name: "bsize", scope: !235, file: !3, line: 205, type: !18)
!245 = !DILocalVariable(name: "k1", scope: !235, file: !3, line: 206, type: !18)
!246 = !DILocalVariable(name: "k2", scope: !235, file: !3, line: 207, type: !18)
!247 = !DILocalVariable(name: "k", scope: !248, file: !3, line: 228, type: !10)
!248 = distinct !DILexicalBlock(scope: !235, file: !3, line: 228, column: 3)
!249 = !DILocalVariable(name: "distance", scope: !250, file: !3, line: 229, type: !117)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 228, column: 37)
!251 = distinct !DILexicalBlock(scope: !248, file: !3, line: 228, column: 3)
!252 = !DILocalVariable(name: "k", scope: !253, file: !3, line: 247, type: !10)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 247, column: 7)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 240, column: 14)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 239, column: 18)
!256 = distinct !DILexicalBlock(scope: !235, file: !3, line: 239, column: 7)
!257 = !DILocalVariable(name: "distance", scope: !258, file: !3, line: 249, type: !117)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 248, column: 2)
!259 = distinct !DILexicalBlock(scope: !253, file: !3, line: 247, column: 7)
!260 = !DILocalVariable(name: "to_open", scope: !261, file: !3, line: 264, type: !127)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 263, column: 40)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 263, column: 5)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 263, column: 5)
!264 = distinct !DILexicalBlock(scope: !256, file: !3, line: 262, column: 9)
!265 = !DILocalVariable(name: "k", scope: !266, file: !3, line: 275, type: !10)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 275, column: 2)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 265, column: 22)
!268 = distinct !DILexicalBlock(scope: !261, file: !3, line: 265, column: 11)
!269 = !DILocalVariable(name: "distance", scope: !270, file: !3, line: 276, type: !117)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 275, column: 34)
!271 = distinct !DILexicalBlock(scope: !266, file: !3, line: 275, column: 2)
!272 = !DILocalVariable(name: "mytotal", scope: !235, file: !3, line: 304, type: !22)
!273 = !DILocalVariable(name: "k", scope: !274, file: !3, line: 305, type: !10)
!274 = distinct !DILexicalBlock(scope: !235, file: !3, line: 305, column: 3)
!275 = !DILocalVariable(name: "i", scope: !276, file: !3, line: 316, type: !10)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 316, column: 7)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 314, column: 5)
!278 = distinct !DILexicalBlock(scope: !235, file: !3, line: 313, column: 7)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "open", scope: !235, file: !3, line: 212, type: !127, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "costs", scope: !235, file: !3, line: 213, type: !41, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "i", scope: !235, file: !3, line: 214, type: !10, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "mutex", scope: !235, file: !3, line: 217, type: !287, isLocal: true, isDefinition: true)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !33, line: 72, baseType: !46)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "cond", scope: !235, file: !3, line: 218, type: !290, isLocal: true, isDefinition: true)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !33, line: 80, baseType: !78)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "work_mem", scope: !293, file: !3, line: 380, type: !41, isLocal: true, isDefinition: true)
!293 = distinct !DISubprogram(name: "pgain", linkageName: "_Z5pgainlP6PointsdPliP17pthread_barrier_t", scope: !3, file: !3, line: 361, type: !294, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{!22, !18, !132, !22, !150, !10, !153}
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !315, !318, !320, !323, !325, !326, !327, !331, !332, !335, !337, !342, !344, !348, !352, !355}
!297 = !DILocalVariable(name: "x", arg: 1, scope: !293, file: !3, line: 361, type: !18)
!298 = !DILocalVariable(name: "points", arg: 2, scope: !293, file: !3, line: 361, type: !132)
!299 = !DILocalVariable(name: "z", arg: 3, scope: !293, file: !3, line: 361, type: !22)
!300 = !DILocalVariable(name: "numcenters", arg: 4, scope: !293, file: !3, line: 361, type: !150)
!301 = !DILocalVariable(name: "pid", arg: 5, scope: !293, file: !3, line: 361, type: !10)
!302 = !DILocalVariable(name: "barrier", arg: 6, scope: !293, file: !3, line: 361, type: !153)
!303 = !DILocalVariable(name: "bsize", scope: !293, file: !3, line: 372, type: !18)
!304 = !DILocalVariable(name: "k1", scope: !293, file: !3, line: 373, type: !18)
!305 = !DILocalVariable(name: "k2", scope: !293, file: !3, line: 374, type: !18)
!306 = !DILocalVariable(name: "i", scope: !293, file: !3, line: 377, type: !10)
!307 = !DILocalVariable(name: "number_of_centers_to_close", scope: !293, file: !3, line: 378, type: !10)
!308 = !DILocalVariable(name: "stride", scope: !293, file: !3, line: 385, type: !10)
!309 = !DILocalVariable(name: "cl", scope: !293, file: !3, line: 387, type: !10)
!310 = !DILocalVariable(name: "K", scope: !293, file: !3, line: 391, type: !10)
!311 = !DILocalVariable(name: "cost_of_opening_x", scope: !293, file: !3, line: 394, type: !22)
!312 = !DILocalVariable(name: "count", scope: !293, file: !3, line: 411, type: !10)
!313 = !DILocalVariable(name: "i", scope: !314, file: !3, line: 412, type: !10)
!314 = distinct !DILexicalBlock(scope: !293, file: !3, line: 412, column: 3)
!315 = !DILocalVariable(name: "accum", scope: !316, file: !3, line: 424, type: !10)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 423, column: 18)
!317 = distinct !DILexicalBlock(scope: !293, file: !3, line: 423, column: 7)
!318 = !DILocalVariable(name: "p", scope: !319, file: !3, line: 425, type: !10)
!319 = distinct !DILexicalBlock(scope: !316, file: !3, line: 425, column: 5)
!320 = !DILocalVariable(name: "tmp", scope: !321, file: !3, line: 426, type: !10)
!321 = distinct !DILexicalBlock(scope: !322, file: !3, line: 425, column: 38)
!322 = distinct !DILexicalBlock(scope: !319, file: !3, line: 425, column: 5)
!323 = !DILocalVariable(name: "i", scope: !324, file: !3, line: 436, type: !10)
!324 = distinct !DILexicalBlock(scope: !293, file: !3, line: 436, column: 3)
!325 = !DILocalVariable(name: "lower", scope: !293, file: !3, line: 455, type: !41)
!326 = !DILocalVariable(name: "gl_lower", scope: !293, file: !3, line: 457, type: !41)
!327 = !DILocalVariable(name: "x_cost", scope: !328, file: !3, line: 460, type: !117)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 459, column: 31)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 459, column: 3)
!330 = distinct !DILexicalBlock(scope: !293, file: !3, line: 459, column: 3)
!331 = !DILocalVariable(name: "current_cost", scope: !328, file: !3, line: 462, type: !117)
!332 = !DILocalVariable(name: "assign", scope: !333, file: !3, line: 482, type: !10)
!333 = distinct !DILexicalBlock(scope: !334, file: !3, line: 473, column: 12)
!334 = distinct !DILexicalBlock(scope: !328, file: !3, line: 464, column: 10)
!335 = !DILocalVariable(name: "i", scope: !336, file: !3, line: 501, type: !10)
!336 = distinct !DILexicalBlock(scope: !293, file: !3, line: 501, column: 3)
!337 = !DILocalVariable(name: "low", scope: !338, file: !3, line: 503, type: !22)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 502, column: 24)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 502, column: 9)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 501, column: 35)
!341 = distinct !DILexicalBlock(scope: !336, file: !3, line: 501, column: 3)
!342 = !DILocalVariable(name: "p", scope: !343, file: !3, line: 505, type: !10)
!343 = distinct !DILexicalBlock(scope: !338, file: !3, line: 505, column: 7)
!344 = !DILocalVariable(name: "p", scope: !345, file: !3, line: 531, type: !10)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 531, column: 5)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 528, column: 16)
!347 = distinct !DILexicalBlock(scope: !293, file: !3, line: 528, column: 7)
!348 = !DILocalVariable(name: "i", scope: !349, file: !3, line: 544, type: !10)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 544, column: 5)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 542, column: 35)
!351 = distinct !DILexicalBlock(scope: !293, file: !3, line: 542, column: 8)
!352 = !DILocalVariable(name: "close_center", scope: !353, file: !3, line: 545, type: !127)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 544, column: 37)
!354 = distinct !DILexicalBlock(scope: !349, file: !3, line: 544, column: 5)
!355 = !DILocalVariable(name: "i", scope: !356, file: !3, line: 554, type: !10)
!356 = distinct !DILexicalBlock(scope: !350, file: !3, line: 554, column: 5)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "gl_cost_of_opening_x", scope: !293, file: !3, line: 381, type: !22, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "gl_number_of_centers_to_close", scope: !293, file: !3, line: 382, type: !10, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "k", scope: !363, file: !3, line: 728, type: !18, isLocal: true, isDefinition: true)
!363 = distinct !DISubprogram(name: "pkmedian", linkageName: "_Z8pkmedianP6PointsllPliP17pthread_barrier_t", scope: !3, file: !3, line: 720, type: !364, scopeLine: 722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{!117, !132, !18, !18, !150, !10, !153}
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !387, !389, !393}
!367 = !DILocalVariable(name: "points", arg: 1, scope: !363, file: !3, line: 720, type: !132)
!368 = !DILocalVariable(name: "kmin", arg: 2, scope: !363, file: !3, line: 720, type: !18)
!369 = !DILocalVariable(name: "kmax", arg: 3, scope: !363, file: !3, line: 720, type: !18)
!370 = !DILocalVariable(name: "kfinal", arg: 4, scope: !363, file: !3, line: 720, type: !150)
!371 = !DILocalVariable(name: "pid", arg: 5, scope: !363, file: !3, line: 721, type: !10)
!372 = !DILocalVariable(name: "barrier", arg: 6, scope: !363, file: !3, line: 721, type: !153)
!373 = !DILocalVariable(name: "i", scope: !363, file: !3, line: 723, type: !10)
!374 = !DILocalVariable(name: "cost", scope: !363, file: !3, line: 724, type: !22)
!375 = !DILocalVariable(name: "lastcost", scope: !363, file: !3, line: 725, type: !22)
!376 = !DILocalVariable(name: "hiz", scope: !363, file: !3, line: 726, type: !22)
!377 = !DILocalVariable(name: "loz", scope: !363, file: !3, line: 726, type: !22)
!378 = !DILocalVariable(name: "z", scope: !363, file: !3, line: 726, type: !22)
!379 = !DILocalVariable(name: "numberOfPoints", scope: !363, file: !3, line: 735, type: !18)
!380 = !DILocalVariable(name: "ptDimension", scope: !363, file: !3, line: 736, type: !18)
!381 = !DILocalVariable(name: "bsize", scope: !363, file: !3, line: 739, type: !18)
!382 = !DILocalVariable(name: "k1", scope: !363, file: !3, line: 740, type: !18)
!383 = !DILocalVariable(name: "k2", scope: !363, file: !3, line: 741, type: !18)
!384 = !DILocalVariable(name: "myhiz", scope: !363, file: !3, line: 756, type: !22)
!385 = !DILocalVariable(name: "kk", scope: !386, file: !3, line: 757, type: !18)
!386 = distinct !DILexicalBlock(scope: !363, file: !3, line: 757, column: 3)
!387 = !DILocalVariable(name: "i", scope: !388, file: !3, line: 767, type: !10)
!388 = distinct !DILexicalBlock(scope: !363, file: !3, line: 767, column: 3)
!389 = !DILocalVariable(name: "kk", scope: !390, file: !3, line: 775, type: !18)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 775, column: 5)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 773, column: 28)
!392 = distinct !DILexicalBlock(scope: !363, file: !3, line: 773, column: 7)
!393 = !DILocalVariable(name: "i", scope: !394, file: !3, line: 827, type: !10)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 827, column: 7)
!395 = distinct !DILexicalBlock(scope: !396, file: !3, line: 825, column: 5)
!396 = distinct !DILexicalBlock(scope: !363, file: !3, line: 824, column: 7)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "feasible", scope: !363, file: !3, line: 729, type: !124, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "numfeasible", scope: !363, file: !3, line: 730, type: !10, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "hizs", scope: !363, file: !3, line: 731, type: !41, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !405, file: !406, line: 74, type: !407, isLocal: true, isDefinition: true)
!405 = !DINamespace(name: "std", scope: null)
!406 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/iostream", directory: "")
!407 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !409, file: !408, line: 603, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !410, identifier: "_ZTSNSt8ios_base4InitE")
!408 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/ios_base.h", directory: "")
!409 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !405, file: !408, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!410 = !{!411, !414, !415, !419, !420, !425}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !407, file: !408, line: 616, baseType: !412, flags: DIFlagStaticMember)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !413, line: 32, baseType: !10)
!413 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/atomic_word.h", directory: "")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !407, file: !408, line: 617, baseType: !127, flags: DIFlagStaticMember)
!415 = !DISubprogram(name: "Init", scope: !407, file: !408, line: 607, type: !416, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!419 = !DISubprogram(name: "~Init", scope: !407, file: !408, line: 608, type: !416, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DISubprogram(name: "Init", scope: !407, file: !408, line: 611, type: !421, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !418, !423}
!423 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!425 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !407, file: !408, line: 612, type: !426, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DISubroutineType(types: !427)
!427 = !{!428, !418, !423}
!428 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !407, size: 64)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "is_center", linkageName: "_ZL9is_center", scope: !2, file: !3, line: 81, type: !126, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "center_table", linkageName: "_ZL12center_table", scope: !2, file: !3, line: 82, type: !124, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "switch_membership", linkageName: "_ZL17switch_membership", scope: !2, file: !3, line: 80, type: !126, isLocal: true, isDefinition: true)
!435 = !{!436, !453, !456, !461, !468, !476, !480, !487, !491, !495, !497, !499, !503, !512, !516, !522, !528, !530, !534, !538, !542, !546, !557, !559, !563, !567, !571, !573, !578, !582, !586, !588, !590, !594, !602, !606, !610, !614, !616, !622, !624, !630, !634, !638, !642, !646, !650, !654, !656, !658, !662, !666, !670, !672, !676, !680, !682, !684, !688, !694, !698, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !767, !771, !775, !780, !783, !786, !789, !792, !794, !796, !798, !801, !804, !807, !810, !813, !815, !820, !823, !826, !829, !831, !833, !835, !837, !840, !843, !846, !849, !852, !854, !858, !862, !867, !873, !875, !877, !879, !881, !883, !885, !887, !889, !891, !893, !895, !897, !899, !902, !904, !907, !911, !917, !921, !926, !928, !933, !939, !943, !954, !958, !962, !966, !968, !972, !976, !980, !984, !988, !992, !996, !1000, !1002, !1006, !1010, !1014, !1019, !1023, !1027, !1029, !1033, !1037, !1043, !1045, !1049, !1053, !1057, !1061, !1065, !1069, !1073, !1074, !1075, !1076, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1088, !1093, !1098, !1102, !1104, !1106, !1108, !1110, !1117, !1121, !1125, !1129, !1133, !1137, !1142, !1146, !1148, !1152, !1158, !1162, !1167, !1169, !1172, !1176, !1180, !1182, !1184, !1186, !1188, !1192, !1194, !1196, !1200, !1204, !1208, !1212, !1216, !1220, !1222, !1226, !1230, !1234, !1238, !1240, !1242, !1246, !1250, !1251, !1252, !1253, !1254, !1255, !1261, !1264, !1265, !1267, !1269, !1271, !1273, !1277, !1279, !1281, !1283, !1285, !1287, !1289, !1291, !1293, !1297, !1301, !1303, !1307, !1311, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1354, !1356, !1358, !1362, !1364, !1366, !1368, !1370, !1372, !1374, !1376, !1380, !1384, !1386, !1388, !1392, !1394, !1396, !1398, !1400, !1402, !1404, !1407, !1409, !1411, !1415, !1419, !1421, !1423, !1425, !1427, !1429, !1431, !1433, !1435, !1437, !1439, !1443, !1447, !1449, !1451, !1453, !1455, !1457, !1459, !1461, !1463, !1465, !1467, !1469, !1471, !1473, !1475, !1477, !1481, !1485, !1489, !1491, !1493, !1495, !1497, !1499, !1501, !1503, !1505, !1507, !1511, !1515, !1519, !1521, !1523, !1525, !1529, !1533, !1537, !1539, !1541, !1543, !1545, !1547, !1549, !1551, !1553, !1555, !1557, !1559, !1561, !1565, !1569, !1573, !1575, !1577, !1579, !1581, !1585, !1589, !1591, !1593, !1595, !1597, !1599, !1601, !1605, !1609, !1611, !1613, !1615, !1617, !1621, !1625, !1629, !1631, !1633, !1635, !1637, !1639, !1641, !1645, !1649, !1653, !1655, !1659, !1663, !1665, !1667, !1669, !1671, !1673, !1675, !1677, !1682}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !437, file: !452, line: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !438, line: 6, baseType: !439)
!438 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "")
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !440, line: 21, baseType: !441)
!440 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !442, identifier: "_ZTS11__mbstate_t")
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !441, file: !440, line: 15, baseType: !10, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !441, file: !440, line: 20, baseType: !445, size: 32, offset: 32)
!445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !440, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !446, identifier: "_ZTSN11__mbstate_tUt_E")
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !445, file: !440, line: 18, baseType: !54, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !445, file: !440, line: 19, baseType: !449, size: 32)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 4)
!452 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwchar", directory: "")
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !454, file: !452, line: 141)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !455, line: 20, baseType: !54)
!455 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "")
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !457, file: !452, line: 143)
!457 = !DISubprogram(name: "btowc", scope: !458, file: !458, line: 318, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!459 = !DISubroutineType(types: !460)
!460 = !{!454, !10}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !462, file: !452, line: 144)
!462 = !DISubprogram(name: "fgetwc", scope: !458, file: !458, line: 726, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!463 = !DISubroutineType(types: !464)
!464 = !{!454, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !467, line: 5, baseType: !172)
!467 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "")
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !469, file: !452, line: 145)
!469 = !DISubprogram(name: "fgetws", scope: !458, file: !458, line: 755, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!470 = !DISubroutineType(types: !471)
!471 = !{!472, !474, !10, !475}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!474 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !472)
!475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !465)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !477, file: !452, line: 146)
!477 = !DISubprogram(name: "fputwc", scope: !458, file: !458, line: 740, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DISubroutineType(types: !479)
!479 = !{!454, !473, !465}
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !481, file: !452, line: 147)
!481 = !DISubprogram(name: "fputws", scope: !458, file: !458, line: 762, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DISubroutineType(types: !483)
!483 = !{!10, !484, !475}
!484 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !488, file: !452, line: 148)
!488 = !DISubprogram(name: "fwide", scope: !458, file: !458, line: 573, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!489 = !DISubroutineType(types: !490)
!490 = !{!10, !465, !10}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !492, file: !452, line: 149)
!492 = !DISubprogram(name: "fwprintf", scope: !458, file: !458, line: 580, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DISubroutineType(types: !494)
!494 = !{!10, !475, !484, null}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !496, file: !452, line: 150)
!496 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !458, file: !458, line: 640, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !498, file: !452, line: 151)
!498 = !DISubprogram(name: "getwc", scope: !458, file: !458, line: 727, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !500, file: !452, line: 152)
!500 = !DISubprogram(name: "getwchar", scope: !458, file: !458, line: 733, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DISubroutineType(types: !502)
!502 = !{!454}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !504, file: !452, line: 153)
!504 = !DISubprogram(name: "mbrlen", scope: !458, file: !458, line: 329, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!505 = !DISubroutineType(types: !506)
!506 = !{!218, !507, !218, !510}
!507 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!510 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !513, file: !452, line: 154)
!513 = !DISubprogram(name: "mbrtowc", scope: !458, file: !458, line: 296, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!514 = !DISubroutineType(types: !515)
!515 = !{!218, !474, !507, !218, !510}
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !517, file: !452, line: 155)
!517 = !DISubprogram(name: "mbsinit", scope: !458, file: !458, line: 292, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = !DISubroutineType(types: !519)
!519 = !{!10, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !523, file: !452, line: 156)
!523 = !DISubprogram(name: "mbsrtowcs", scope: !458, file: !458, line: 337, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!524 = !DISubroutineType(types: !525)
!525 = !{!218, !474, !526, !218, !510}
!526 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !529, file: !452, line: 157)
!529 = !DISubprogram(name: "putwc", scope: !458, file: !458, line: 741, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !531, file: !452, line: 158)
!531 = !DISubprogram(name: "putwchar", scope: !458, file: !458, line: 747, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DISubroutineType(types: !533)
!533 = !{!454, !473}
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !535, file: !452, line: 160)
!535 = !DISubprogram(name: "swprintf", scope: !458, file: !458, line: 590, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!536 = !DISubroutineType(types: !537)
!537 = !{!10, !474, !218, !484, null}
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !539, file: !452, line: 162)
!539 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !458, file: !458, line: 647, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!540 = !DISubroutineType(types: !541)
!541 = !{!10, !484, !484, null}
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !543, file: !452, line: 163)
!543 = !DISubprogram(name: "ungetwc", scope: !458, file: !458, line: 770, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = !DISubroutineType(types: !545)
!545 = !{!454, !454, !465}
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !547, file: !452, line: 164)
!547 = !DISubprogram(name: "vfwprintf", scope: !458, file: !458, line: 598, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!548 = !DISubroutineType(types: !549)
!549 = !{!10, !475, !484, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, flags: DIFlagTypePassByValue, elements: !552, identifier: "_ZTS13__va_list_tag")
!552 = !{!553, !554, !555, !556}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !551, file: !3, baseType: !54, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !551, file: !3, baseType: !54, size: 32, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !551, file: !3, baseType: !21, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !551, file: !3, baseType: !21, size: 64, offset: 128)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !558, file: !452, line: 166)
!558 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !458, file: !458, line: 693, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !560, file: !452, line: 169)
!560 = !DISubprogram(name: "vswprintf", scope: !458, file: !458, line: 611, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{!10, !474, !218, !484, !550}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !564, file: !452, line: 172)
!564 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !458, file: !458, line: 700, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubroutineType(types: !566)
!566 = !{!10, !484, !484, !550}
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !568, file: !452, line: 174)
!568 = !DISubprogram(name: "vwprintf", scope: !458, file: !458, line: 606, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubroutineType(types: !570)
!570 = !{!10, !484, !550}
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !572, file: !452, line: 176)
!572 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !458, file: !458, line: 697, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !574, file: !452, line: 178)
!574 = !DISubprogram(name: "wcrtomb", scope: !458, file: !458, line: 301, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!575 = !DISubroutineType(types: !576)
!576 = !{!218, !577, !473, !510}
!577 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !177)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !579, file: !452, line: 179)
!579 = !DISubprogram(name: "wcscat", scope: !458, file: !458, line: 97, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!580 = !DISubroutineType(types: !581)
!581 = !{!472, !474, !484}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !583, file: !452, line: 180)
!583 = !DISubprogram(name: "wcscmp", scope: !458, file: !458, line: 106, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DISubroutineType(types: !585)
!585 = !{!10, !485, !485}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !587, file: !452, line: 181)
!587 = !DISubprogram(name: "wcscoll", scope: !458, file: !458, line: 131, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !589, file: !452, line: 182)
!589 = !DISubprogram(name: "wcscpy", scope: !458, file: !458, line: 87, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !591, file: !452, line: 183)
!591 = !DISubprogram(name: "wcscspn", scope: !458, file: !458, line: 187, type: !592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!592 = !DISubroutineType(types: !593)
!593 = !{!218, !485, !485}
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !595, file: !452, line: 184)
!595 = !DISubprogram(name: "wcsftime", scope: !458, file: !458, line: 834, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!596 = !DISubroutineType(types: !597)
!597 = !{!218, !474, !218, !484, !598}
!598 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !458, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !603, file: !452, line: 185)
!603 = !DISubprogram(name: "wcslen", scope: !458, file: !458, line: 222, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DISubroutineType(types: !605)
!605 = !{!218, !485}
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !607, file: !452, line: 186)
!607 = !DISubprogram(name: "wcsncat", scope: !458, file: !458, line: 101, type: !608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!608 = !DISubroutineType(types: !609)
!609 = !{!472, !474, !484, !218}
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !611, file: !452, line: 187)
!611 = !DISubprogram(name: "wcsncmp", scope: !458, file: !458, line: 109, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DISubroutineType(types: !613)
!613 = !{!10, !485, !485, !218}
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !615, file: !452, line: 188)
!615 = !DISubprogram(name: "wcsncpy", scope: !458, file: !458, line: 92, type: !608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !617, file: !452, line: 189)
!617 = !DISubprogram(name: "wcsrtombs", scope: !458, file: !458, line: 343, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!618 = !DISubroutineType(types: !619)
!619 = !{!218, !577, !620, !218, !510}
!620 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !623, file: !452, line: 190)
!623 = !DISubprogram(name: "wcsspn", scope: !458, file: !458, line: 191, type: !592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !625, file: !452, line: 191)
!625 = !DISubprogram(name: "wcstod", scope: !458, file: !458, line: 377, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = !DISubroutineType(types: !627)
!627 = !{!22, !484, !628}
!628 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !631, file: !452, line: 193)
!631 = !DISubprogram(name: "wcstof", scope: !458, file: !458, line: 382, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!632 = !DISubroutineType(types: !633)
!633 = !{!117, !484, !628}
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !635, file: !452, line: 195)
!635 = !DISubprogram(name: "wcstok", scope: !458, file: !458, line: 217, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = !DISubroutineType(types: !637)
!637 = !{!472, !474, !484, !628}
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !639, file: !452, line: 196)
!639 = !DISubprogram(name: "wcstol", scope: !458, file: !458, line: 428, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = !DISubroutineType(types: !641)
!641 = !{!18, !484, !628, !10}
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !643, file: !452, line: 197)
!643 = !DISubprogram(name: "wcstoul", scope: !458, file: !458, line: 433, type: !644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DISubroutineType(types: !645)
!645 = !{!164, !484, !628, !10}
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !647, file: !452, line: 198)
!647 = !DISubprogram(name: "wcsxfrm", scope: !458, file: !458, line: 135, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!648 = !DISubroutineType(types: !649)
!649 = !{!218, !474, !484, !218}
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !651, file: !452, line: 199)
!651 = !DISubprogram(name: "wctob", scope: !458, file: !458, line: 324, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!652 = !DISubroutineType(types: !653)
!653 = !{!10, !454}
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !655, file: !452, line: 200)
!655 = !DISubprogram(name: "wmemcmp", scope: !458, file: !458, line: 258, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !657, file: !452, line: 201)
!657 = !DISubprogram(name: "wmemcpy", scope: !458, file: !458, line: 262, type: !608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !659, file: !452, line: 202)
!659 = !DISubprogram(name: "wmemmove", scope: !458, file: !458, line: 267, type: !660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!660 = !DISubroutineType(types: !661)
!661 = !{!472, !472, !485, !218}
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !663, file: !452, line: 203)
!663 = !DISubprogram(name: "wmemset", scope: !458, file: !458, line: 271, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!664 = !DISubroutineType(types: !665)
!665 = !{!472, !472, !473, !218}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !667, file: !452, line: 204)
!667 = !DISubprogram(name: "wprintf", scope: !458, file: !458, line: 587, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!668 = !DISubroutineType(types: !669)
!669 = !{!10, !484, null}
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !671, file: !452, line: 205)
!671 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !458, file: !458, line: 644, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !673, file: !452, line: 206)
!673 = !DISubprogram(name: "wcschr", scope: !458, file: !458, line: 164, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DISubroutineType(types: !675)
!675 = !{!472, !485, !473}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !677, file: !452, line: 207)
!677 = !DISubprogram(name: "wcspbrk", scope: !458, file: !458, line: 201, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!678 = !DISubroutineType(types: !679)
!679 = !{!472, !485, !485}
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !681, file: !452, line: 208)
!681 = !DISubprogram(name: "wcsrchr", scope: !458, file: !458, line: 174, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !683, file: !452, line: 209)
!683 = !DISubprogram(name: "wcsstr", scope: !458, file: !458, line: 212, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !685, file: !452, line: 210)
!685 = !DISubprogram(name: "wmemchr", scope: !458, file: !458, line: 253, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!686 = !DISubroutineType(types: !687)
!687 = !{!472, !485, !473, !218}
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !690, file: !452, line: 251)
!689 = !DINamespace(name: "__gnu_cxx", scope: null)
!690 = !DISubprogram(name: "wcstold", scope: !458, file: !458, line: 384, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!691 = !DISubroutineType(types: !692)
!692 = !{!693, !484, !628}
!693 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !695, file: !452, line: 260)
!695 = !DISubprogram(name: "wcstoll", scope: !458, file: !458, line: 441, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!696 = !DISubroutineType(types: !697)
!697 = !{!115, !484, !628, !10}
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !699, file: !452, line: 261)
!699 = !DISubprogram(name: "wcstoull", scope: !458, file: !458, line: 448, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!700 = !DISubroutineType(types: !701)
!701 = !{!87, !484, !628, !10}
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !690, file: !452, line: 267)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !695, file: !452, line: 268)
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !699, file: !452, line: 269)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !631, file: !452, line: 283)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !558, file: !452, line: 286)
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !564, file: !452, line: 289)
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !572, file: !452, line: 292)
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !690, file: !452, line: 296)
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !695, file: !452, line: 297)
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !699, file: !452, line: 298)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !713, file: !714, line: 57)
!713 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !715, file: !714, line: 79, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !716, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!714 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/exception_ptr.h", directory: "")
!715 = !DINamespace(name: "__exception_ptr", scope: !405)
!716 = !{!717, !718, !722, !725, !726, !731, !732, !736, !742, !746, !750, !753, !754, !757, !760}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !713, file: !714, line: 81, baseType: !21, size: 64)
!718 = !DISubprogram(name: "exception_ptr", scope: !713, file: !714, line: 83, type: !719, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !721, !21}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!722 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !713, file: !714, line: 85, type: !723, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !721}
!725 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !713, file: !714, line: 86, type: !723, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!726 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !713, file: !714, line: 88, type: !727, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DISubroutineType(types: !728)
!728 = !{!21, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!731 = !DISubprogram(name: "exception_ptr", scope: !713, file: !714, line: 96, type: !723, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!732 = !DISubprogram(name: "exception_ptr", scope: !713, file: !714, line: 98, type: !733, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !721, !735}
!735 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !730, size: 64)
!736 = !DISubprogram(name: "exception_ptr", scope: !713, file: !714, line: 101, type: !737, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !721, !739}
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !405, file: !740, line: 258, baseType: !741)
!740 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/c++config.h", directory: "")
!741 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!742 = !DISubprogram(name: "exception_ptr", scope: !713, file: !714, line: 105, type: !743, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !721, !745}
!745 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !713, size: 64)
!746 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !713, file: !714, line: 118, type: !747, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DISubroutineType(types: !748)
!748 = !{!749, !721, !735}
!749 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !713, size: 64)
!750 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !713, file: !714, line: 122, type: !751, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!751 = !DISubroutineType(types: !752)
!752 = !{!749, !721, !745}
!753 = !DISubprogram(name: "~exception_ptr", scope: !713, file: !714, line: 129, type: !723, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !713, file: !714, line: 132, type: !755, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !721, !749}
!757 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !713, file: !714, line: 144, type: !758, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubroutineType(types: !759)
!759 = !{!127, !729}
!760 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !713, file: !714, line: 153, type: !761, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = !DISubroutineType(types: !762)
!762 = !{!763, !729}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !405, file: !766, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!766 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/typeinfo", directory: "")
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !715, entity: !768, file: !714, line: 73)
!768 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !405, file: !714, line: 69, type: !769, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !713}
!771 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !772, entity: !773, file: !774, line: 58)
!772 = !DINamespace(name: "__gnu_debug", scope: null)
!773 = !DINamespace(name: "__debug", scope: !405)
!774 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/debug/debug.h", directory: "")
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !776, file: !779, line: 47)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !777, line: 24, baseType: !778)
!777 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !17, line: 37, baseType: !199)
!779 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdint", directory: "")
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !781, file: !779, line: 48)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !777, line: 25, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !17, line: 39, baseType: !59)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !784, file: !779, line: 49)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !777, line: 26, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !17, line: 41, baseType: !10)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !787, file: !779, line: 50)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !777, line: 27, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !17, line: 44, baseType: !18)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !790, file: !779, line: 52)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !791, line: 58, baseType: !199)
!791 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !793, file: !779, line: 53)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !791, line: 60, baseType: !18)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !795, file: !779, line: 54)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !791, line: 61, baseType: !18)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !797, file: !779, line: 55)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !791, line: 62, baseType: !18)
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !799, file: !779, line: 57)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !791, line: 43, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !17, line: 52, baseType: !778)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !802, file: !779, line: 58)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !791, line: 44, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !17, line: 54, baseType: !782)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !805, file: !779, line: 59)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !791, line: 45, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !17, line: 56, baseType: !785)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !808, file: !779, line: 60)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !791, line: 46, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !17, line: 58, baseType: !788)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !811, file: !779, line: 62)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !791, line: 101, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !17, line: 72, baseType: !18)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !814, file: !779, line: 63)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !791, line: 87, baseType: !18)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !816, file: !779, line: 65)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !817, line: 24, baseType: !818)
!817 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !17, line: 38, baseType: !819)
!819 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !821, file: !779, line: 66)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !817, line: 25, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !17, line: 40, baseType: !197)
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !824, file: !779, line: 67)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !817, line: 26, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 42, baseType: !54)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !827, file: !779, line: 68)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !817, line: 27, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !17, line: 45, baseType: !164)
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !830, file: !779, line: 70)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !791, line: 71, baseType: !819)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !832, file: !779, line: 71)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !791, line: 73, baseType: !164)
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !834, file: !779, line: 72)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !791, line: 74, baseType: !164)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !836, file: !779, line: 73)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !791, line: 75, baseType: !164)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !838, file: !779, line: 75)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !791, line: 49, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !17, line: 53, baseType: !818)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !841, file: !779, line: 76)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !791, line: 50, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !17, line: 55, baseType: !822)
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !844, file: !779, line: 77)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !791, line: 51, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !17, line: 57, baseType: !825)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !847, file: !779, line: 78)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !791, line: 52, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !17, line: 59, baseType: !828)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !850, file: !779, line: 80)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !791, line: 102, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !17, line: 73, baseType: !164)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !853, file: !779, line: 81)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !791, line: 90, baseType: !164)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !855, file: !857, line: 53)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !856, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!856 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!857 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/clocale", directory: "")
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !859, file: !857, line: 54)
!859 = !DISubprogram(name: "setlocale", scope: !856, file: !856, line: 122, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!860 = !DISubroutineType(types: !861)
!861 = !{!177, !10, !508}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !863, file: !857, line: 55)
!863 = !DISubprogram(name: "localeconv", scope: !856, file: !856, line: 125, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DISubroutineType(types: !865)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !868, file: !872, line: 64)
!868 = !DISubprogram(name: "isalnum", scope: !869, file: !869, line: 108, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!870 = !DISubroutineType(types: !871)
!871 = !{!10, !10}
!872 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cctype", directory: "")
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !874, file: !872, line: 65)
!874 = !DISubprogram(name: "isalpha", scope: !869, file: !869, line: 109, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !876, file: !872, line: 66)
!876 = !DISubprogram(name: "iscntrl", scope: !869, file: !869, line: 110, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !878, file: !872, line: 67)
!878 = !DISubprogram(name: "isdigit", scope: !869, file: !869, line: 111, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !880, file: !872, line: 68)
!880 = !DISubprogram(name: "isgraph", scope: !869, file: !869, line: 113, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !882, file: !872, line: 69)
!882 = !DISubprogram(name: "islower", scope: !869, file: !869, line: 112, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !884, file: !872, line: 70)
!884 = !DISubprogram(name: "isprint", scope: !869, file: !869, line: 114, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !886, file: !872, line: 71)
!886 = !DISubprogram(name: "ispunct", scope: !869, file: !869, line: 115, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !888, file: !872, line: 72)
!888 = !DISubprogram(name: "isspace", scope: !869, file: !869, line: 116, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !890, file: !872, line: 73)
!890 = !DISubprogram(name: "isupper", scope: !869, file: !869, line: 117, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !892, file: !872, line: 74)
!892 = !DISubprogram(name: "isxdigit", scope: !869, file: !869, line: 118, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !894, file: !872, line: 75)
!894 = !DISubprogram(name: "tolower", scope: !869, file: !869, line: 122, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !896, file: !872, line: 76)
!896 = !DISubprogram(name: "toupper", scope: !869, file: !869, line: 125, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !898, file: !872, line: 87)
!898 = !DISubprogram(name: "isblank", scope: !869, file: !869, line: 130, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !900, file: !901, line: 44)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !405, file: !740, line: 254, baseType: !164)
!901 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ext/new_allocator.h", directory: "")
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !903, file: !901, line: 45)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !405, file: !740, line: 255, baseType: !18)
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !905, file: !906, line: 52)
!905 = !DISubprogram(name: "abs", scope: !24, file: !24, line: 840, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!906 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/std_abs.h", directory: "")
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !908, file: !910, line: 127)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !24, line: 62, baseType: !909)
!909 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!910 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib", directory: "")
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !912, file: !910, line: 128)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !24, line: 70, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !914, identifier: "_ZTS6ldiv_t")
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !913, file: !24, line: 68, baseType: !18, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !913, file: !24, line: 69, baseType: !18, size: 64, offset: 64)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !918, file: !910, line: 130)
!918 = !DISubprogram(name: "abort", scope: !24, file: !24, line: 591, type: !919, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!919 = !DISubroutineType(types: !920)
!920 = !{null}
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !922, file: !910, line: 134)
!922 = !DISubprogram(name: "atexit", scope: !24, file: !24, line: 595, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubroutineType(types: !924)
!924 = !{!10, !925}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !927, file: !910, line: 137)
!927 = !DISubprogram(name: "at_quick_exit", scope: !24, file: !24, line: 600, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !929, file: !910, line: 140)
!929 = !DISubprogram(name: "atof", scope: !930, file: !930, line: 25, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!931 = !DISubroutineType(types: !932)
!932 = !{!22, !508}
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !934, file: !910, line: 141)
!934 = distinct !DISubprogram(name: "atoi", scope: !24, file: !24, line: 361, type: !935, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!10, !508}
!937 = !{!938}
!938 = !DILocalVariable(name: "__nptr", arg: 1, scope: !934, file: !24, line: 361, type: !508)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !940, file: !910, line: 142)
!940 = !DISubprogram(name: "atol", scope: !24, file: !24, line: 366, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!941 = !DISubroutineType(types: !942)
!942 = !{!18, !508}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !944, file: !910, line: 143)
!944 = !DISubprogram(name: "bsearch", scope: !945, file: !945, line: 20, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!946 = !DISubroutineType(types: !947)
!947 = !{!21, !948, !948, !218, !218, !950}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !24, line: 808, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!10, !948, !948}
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !955, file: !910, line: 144)
!955 = !DISubprogram(name: "calloc", scope: !24, file: !24, line: 542, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DISubroutineType(types: !957)
!957 = !{!21, !218, !218}
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !959, file: !910, line: 145)
!959 = !DISubprogram(name: "div", scope: !24, file: !24, line: 852, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DISubroutineType(types: !961)
!961 = !{!908, !10, !10}
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !963, file: !910, line: 146)
!963 = !DISubprogram(name: "exit", scope: !24, file: !24, line: 617, type: !964, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !10}
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !967, file: !910, line: 147)
!967 = !DISubprogram(name: "free", scope: !24, file: !24, line: 565, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !969, file: !910, line: 148)
!969 = !DISubprogram(name: "getenv", scope: !24, file: !24, line: 634, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubroutineType(types: !971)
!971 = !{!177, !508}
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !973, file: !910, line: 149)
!973 = !DISubprogram(name: "labs", scope: !24, file: !24, line: 841, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DISubroutineType(types: !975)
!975 = !{!18, !18}
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !977, file: !910, line: 150)
!977 = !DISubprogram(name: "ldiv", scope: !24, file: !24, line: 854, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DISubroutineType(types: !979)
!979 = !{!912, !18, !18}
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !981, file: !910, line: 151)
!981 = !DISubprogram(name: "malloc", scope: !24, file: !24, line: 539, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DISubroutineType(types: !983)
!983 = !{!21, !218}
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !985, file: !910, line: 153)
!985 = !DISubprogram(name: "mblen", scope: !24, file: !24, line: 922, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DISubroutineType(types: !987)
!987 = !{!10, !508, !218}
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !989, file: !910, line: 154)
!989 = !DISubprogram(name: "mbstowcs", scope: !24, file: !24, line: 933, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubroutineType(types: !991)
!991 = !{!218, !474, !507, !218}
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !993, file: !910, line: 155)
!993 = !DISubprogram(name: "mbtowc", scope: !24, file: !24, line: 925, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubroutineType(types: !995)
!995 = !{!10, !474, !507, !218}
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !997, file: !910, line: 157)
!997 = !DISubprogram(name: "qsort", scope: !24, file: !24, line: 830, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !21, !218, !218, !950}
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1001, file: !910, line: 160)
!1001 = !DISubprogram(name: "quick_exit", scope: !24, file: !24, line: 623, type: !964, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1003, file: !910, line: 163)
!1003 = !DISubprogram(name: "rand", scope: !24, file: !24, line: 453, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!10}
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1007, file: !910, line: 164)
!1007 = !DISubprogram(name: "realloc", scope: !24, file: !24, line: 550, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!21, !21, !218}
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1011, file: !910, line: 165)
!1011 = !DISubprogram(name: "srand", scope: !24, file: !24, line: 455, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !54}
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1015, file: !910, line: 166)
!1015 = !DISubprogram(name: "strtod", scope: !24, file: !24, line: 117, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!22, !507, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1020, file: !910, line: 167)
!1020 = !DISubprogram(name: "strtol", scope: !24, file: !24, line: 176, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!18, !507, !1018, !10}
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1024, file: !910, line: 168)
!1024 = !DISubprogram(name: "strtoul", scope: !24, file: !24, line: 180, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!164, !507, !1018, !10}
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1028, file: !910, line: 169)
!1028 = !DISubprogram(name: "system", scope: !24, file: !24, line: 784, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1030, file: !910, line: 171)
!1030 = !DISubprogram(name: "wcstombs", scope: !24, file: !24, line: 936, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!218, !577, !484, !218}
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1034, file: !910, line: 172)
!1034 = !DISubprogram(name: "wctomb", scope: !24, file: !24, line: 929, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!10, !177, !473}
!1037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1038, file: !910, line: 200)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !24, line: 80, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !1040, identifier: "_ZTS7lldiv_t")
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1039, file: !24, line: 78, baseType: !115, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1039, file: !24, line: 79, baseType: !115, size: 64, offset: 64)
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1044, file: !910, line: 206)
!1044 = !DISubprogram(name: "_Exit", scope: !24, file: !24, line: 629, type: !964, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1046, file: !910, line: 210)
!1046 = !DISubprogram(name: "llabs", scope: !24, file: !24, line: 844, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!115, !115}
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1050, file: !910, line: 216)
!1050 = !DISubprogram(name: "lldiv", scope: !24, file: !24, line: 858, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1038, !115, !115}
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1054, file: !910, line: 227)
!1054 = !DISubprogram(name: "atoll", scope: !24, file: !24, line: 373, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!115, !508}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1058, file: !910, line: 228)
!1058 = !DISubprogram(name: "strtoll", scope: !24, file: !24, line: 200, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!115, !507, !1018, !10}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1062, file: !910, line: 229)
!1062 = !DISubprogram(name: "strtoull", scope: !24, file: !24, line: 205, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!87, !507, !1018, !10}
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1066, file: !910, line: 231)
!1066 = !DISubprogram(name: "strtof", scope: !24, file: !24, line: 123, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!117, !507, !1018}
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1070, file: !910, line: 232)
!1070 = !DISubprogram(name: "strtold", scope: !24, file: !24, line: 126, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!693, !507, !1018}
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1038, file: !910, line: 240)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1044, file: !910, line: 242)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1046, file: !910, line: 244)
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1077, file: !910, line: 245)
!1077 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !689, file: !910, line: 213, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1050, file: !910, line: 246)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1054, file: !910, line: 248)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1066, file: !910, line: 249)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1058, file: !910, line: 250)
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1062, file: !910, line: 251)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1070, file: !910, line: 252)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1085, file: !1087, line: 98)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1086, line: 7, baseType: !172)
!1086 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1087 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdio", directory: "")
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1089, file: !1087, line: 99)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !168, line: 84, baseType: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1091, line: 14, baseType: !1092)
!1091 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "")
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1091, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1094, file: !1087, line: 101)
!1094 = !DISubprogram(name: "clearerr", scope: !168, file: !168, line: 757, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1099, file: !1087, line: 102)
!1099 = !DISubprogram(name: "fclose", scope: !168, file: !168, line: 213, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!10, !1097}
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1103, file: !1087, line: 103)
!1103 = !DISubprogram(name: "feof", scope: !168, file: !168, line: 759, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1105, file: !1087, line: 104)
!1105 = !DISubprogram(name: "ferror", scope: !168, file: !168, line: 761, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1107, file: !1087, line: 105)
!1107 = !DISubprogram(name: "fflush", scope: !168, file: !168, line: 218, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1109, file: !1087, line: 106)
!1109 = !DISubprogram(name: "fgetc", scope: !168, file: !168, line: 485, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1111, file: !1087, line: 107)
!1111 = !DISubprogram(name: "fgetpos", scope: !168, file: !168, line: 731, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!10, !1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1097)
!1115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1118, file: !1087, line: 108)
!1118 = !DISubprogram(name: "fgets", scope: !168, file: !168, line: 564, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!177, !577, !10, !1114}
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1122, file: !1087, line: 109)
!1122 = !DISubprogram(name: "fopen", scope: !168, file: !168, line: 246, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!1097, !507, !507}
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1126, file: !1087, line: 110)
!1126 = !DISubprogram(name: "fprintf", scope: !168, file: !168, line: 326, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!10, !1114, !507, null}
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1130, file: !1087, line: 111)
!1130 = !DISubprogram(name: "fputc", scope: !168, file: !168, line: 521, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!10, !10, !1097}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1134, file: !1087, line: 112)
!1134 = !DISubprogram(name: "fputs", scope: !168, file: !168, line: 626, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!10, !507, !1114}
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1138, file: !1087, line: 113)
!1138 = !DISubprogram(name: "fread", scope: !168, file: !168, line: 646, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!218, !1141, !218, !218, !1114}
!1141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1143, file: !1087, line: 114)
!1143 = !DISubprogram(name: "freopen", scope: !168, file: !168, line: 252, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!1097, !507, !507, !1114}
!1146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1147, file: !1087, line: 115)
!1147 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !168, file: !168, line: 407, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1149, file: !1087, line: 116)
!1149 = !DISubprogram(name: "fseek", scope: !168, file: !168, line: 684, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!10, !1097, !18, !10}
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1153, file: !1087, line: 117)
!1153 = !DISubprogram(name: "fsetpos", scope: !168, file: !168, line: 736, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!10, !1097, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1089)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1159, file: !1087, line: 118)
!1159 = !DISubprogram(name: "ftell", scope: !168, file: !168, line: 689, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!18, !1097}
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1163, file: !1087, line: 119)
!1163 = !DISubprogram(name: "fwrite", scope: !168, file: !168, line: 652, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!218, !1166, !218, !218, !1114}
!1166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !948)
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1168, file: !1087, line: 120)
!1168 = !DISubprogram(name: "getc", scope: !168, file: !168, line: 486, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1170, file: !1087, line: 121)
!1170 = !DISubprogram(name: "getchar", scope: !1171, file: !1171, line: 47, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1173, file: !1087, line: 126)
!1173 = !DISubprogram(name: "perror", scope: !168, file: !168, line: 775, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !508}
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1177, file: !1087, line: 127)
!1177 = !DISubprogram(name: "printf", scope: !168, file: !168, line: 332, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!10, !507, null}
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1181, file: !1087, line: 128)
!1181 = !DISubprogram(name: "putc", scope: !168, file: !168, line: 522, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1183, file: !1087, line: 129)
!1183 = !DISubprogram(name: "putchar", scope: !1171, file: !1171, line: 82, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1185, file: !1087, line: 130)
!1185 = !DISubprogram(name: "puts", scope: !168, file: !168, line: 632, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1187, file: !1087, line: 131)
!1187 = !DISubprogram(name: "remove", scope: !168, file: !168, line: 146, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1189, file: !1087, line: 132)
!1189 = !DISubprogram(name: "rename", scope: !168, file: !168, line: 148, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!10, !508, !508}
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1193, file: !1087, line: 133)
!1193 = !DISubprogram(name: "rewind", scope: !168, file: !168, line: 694, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1195, file: !1087, line: 134)
!1195 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !168, file: !168, line: 410, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1197, file: !1087, line: 135)
!1197 = !DISubprogram(name: "setbuf", scope: !168, file: !168, line: 304, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !1114, !577}
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1201, file: !1087, line: 136)
!1201 = !DISubprogram(name: "setvbuf", scope: !168, file: !168, line: 308, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!10, !1114, !577, !10, !218}
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1205, file: !1087, line: 137)
!1205 = !DISubprogram(name: "sprintf", scope: !168, file: !168, line: 334, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!10, !577, !507, null}
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1209, file: !1087, line: 138)
!1209 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !168, file: !168, line: 412, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!10, !507, !507, null}
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1213, file: !1087, line: 139)
!1213 = !DISubprogram(name: "tmpfile", scope: !168, file: !168, line: 173, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!1097}
!1216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1217, file: !1087, line: 141)
!1217 = !DISubprogram(name: "tmpnam", scope: !168, file: !168, line: 187, type: !1218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!177, !177}
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1221, file: !1087, line: 143)
!1221 = !DISubprogram(name: "ungetc", scope: !168, file: !168, line: 639, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1223, file: !1087, line: 144)
!1223 = !DISubprogram(name: "vfprintf", scope: !168, file: !168, line: 341, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!10, !1114, !507, !550}
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1227, file: !1087, line: 145)
!1227 = !DISubprogram(name: "vprintf", scope: !1171, file: !1171, line: 39, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!10, !507, !550}
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1231, file: !1087, line: 146)
!1231 = !DISubprogram(name: "vsprintf", scope: !168, file: !168, line: 349, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!10, !577, !507, !550}
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1235, file: !1087, line: 175)
!1235 = !DISubprogram(name: "snprintf", scope: !168, file: !168, line: 354, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!10, !577, !218, !507, null}
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1239, file: !1087, line: 176)
!1239 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !168, file: !168, line: 451, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1241, file: !1087, line: 177)
!1241 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !168, file: !168, line: 456, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1243, file: !1087, line: 178)
!1243 = !DISubprogram(name: "vsnprintf", scope: !168, file: !168, line: 358, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!10, !577, !218, !507, !550}
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !689, entity: !1247, file: !1087, line: 179)
!1247 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !168, file: !168, line: 459, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!10, !507, !507, !550}
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1235, file: !1087, line: 185)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1239, file: !1087, line: 186)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1241, file: !1087, line: 187)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1243, file: !1087, line: 188)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1247, file: !1087, line: 189)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1256, file: !1260, line: 82)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1257, line: 48, baseType: !1258)
!1257 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!1260 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwctype", directory: "")
!1261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1262, file: !1260, line: 83)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1263, line: 38, baseType: !164)
!1263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "")
!1264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !454, file: !1260, line: 84)
!1265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1266, file: !1260, line: 86)
!1266 = !DISubprogram(name: "iswalnum", scope: !1263, file: !1263, line: 95, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1268, file: !1260, line: 87)
!1268 = !DISubprogram(name: "iswalpha", scope: !1263, file: !1263, line: 101, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1270, file: !1260, line: 89)
!1270 = !DISubprogram(name: "iswblank", scope: !1263, file: !1263, line: 146, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1272, file: !1260, line: 91)
!1272 = !DISubprogram(name: "iswcntrl", scope: !1263, file: !1263, line: 104, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1274, file: !1260, line: 92)
!1274 = !DISubprogram(name: "iswctype", scope: !1263, file: !1263, line: 159, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!10, !454, !1262}
!1277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1278, file: !1260, line: 93)
!1278 = !DISubprogram(name: "iswdigit", scope: !1263, file: !1263, line: 108, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1280, file: !1260, line: 94)
!1280 = !DISubprogram(name: "iswgraph", scope: !1263, file: !1263, line: 112, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1282, file: !1260, line: 95)
!1282 = !DISubprogram(name: "iswlower", scope: !1263, file: !1263, line: 117, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1284, file: !1260, line: 96)
!1284 = !DISubprogram(name: "iswprint", scope: !1263, file: !1263, line: 120, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1286, file: !1260, line: 97)
!1286 = !DISubprogram(name: "iswpunct", scope: !1263, file: !1263, line: 125, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1288, file: !1260, line: 98)
!1288 = !DISubprogram(name: "iswspace", scope: !1263, file: !1263, line: 130, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1290, file: !1260, line: 99)
!1290 = !DISubprogram(name: "iswupper", scope: !1263, file: !1263, line: 135, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1292, file: !1260, line: 100)
!1292 = !DISubprogram(name: "iswxdigit", scope: !1263, file: !1263, line: 140, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1294, file: !1260, line: 101)
!1294 = !DISubprogram(name: "towctrans", scope: !1257, file: !1257, line: 55, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!454, !454, !1256}
!1297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1298, file: !1260, line: 102)
!1298 = !DISubprogram(name: "towlower", scope: !1263, file: !1263, line: 166, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!454, !454}
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1302, file: !1260, line: 103)
!1302 = !DISubprogram(name: "towupper", scope: !1263, file: !1263, line: 169, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1304, file: !1260, line: 104)
!1304 = !DISubprogram(name: "wctrans", scope: !1257, file: !1257, line: 52, type: !1305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1256, !508}
!1307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1308, file: !1260, line: 105)
!1308 = !DISubprogram(name: "wctype", scope: !1263, file: !1263, line: 155, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1262, !508}
!1311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !918, file: !1312, line: 38)
!1312 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/stdlib.h", directory: "")
!1313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !922, file: !1312, line: 39)
!1314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !963, file: !1312, line: 40)
!1315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !927, file: !1312, line: 43)
!1316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1001, file: !1312, line: 46)
!1317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !908, file: !1312, line: 51)
!1318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !912, file: !1312, line: 52)
!1319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1320, file: !1312, line: 54)
!1320 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !405, file: !906, line: 103, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!1323, !1323}
!1323 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !929, file: !1312, line: 55)
!1325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !934, file: !1312, line: 56)
!1326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !940, file: !1312, line: 57)
!1327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !944, file: !1312, line: 58)
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !955, file: !1312, line: 59)
!1329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1077, file: !1312, line: 60)
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !967, file: !1312, line: 61)
!1331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !969, file: !1312, line: 62)
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !973, file: !1312, line: 63)
!1333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !977, file: !1312, line: 64)
!1334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !981, file: !1312, line: 65)
!1335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !985, file: !1312, line: 67)
!1336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !989, file: !1312, line: 68)
!1337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !993, file: !1312, line: 69)
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !997, file: !1312, line: 71)
!1339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1003, file: !1312, line: 72)
!1340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1007, file: !1312, line: 73)
!1341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1011, file: !1312, line: 74)
!1342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1015, file: !1312, line: 75)
!1343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1020, file: !1312, line: 76)
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1024, file: !1312, line: 77)
!1345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1028, file: !1312, line: 78)
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1030, file: !1312, line: 80)
!1347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1034, file: !1312, line: 81)
!1348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1349, file: !1353, line: 83)
!1349 = !DISubprogram(name: "acos", scope: !1350, file: !1350, line: 53, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "")
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!22, !22}
!1353 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cmath", directory: "")
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1355, file: !1353, line: 102)
!1355 = !DISubprogram(name: "asin", scope: !1350, file: !1350, line: 55, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1357, file: !1353, line: 121)
!1357 = !DISubprogram(name: "atan", scope: !1350, file: !1350, line: 57, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1359, file: !1353, line: 140)
!1359 = !DISubprogram(name: "atan2", scope: !1350, file: !1350, line: 59, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!22, !22, !22}
!1362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1363, file: !1353, line: 161)
!1363 = !DISubprogram(name: "ceil", scope: !1350, file: !1350, line: 159, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1365, file: !1353, line: 180)
!1365 = !DISubprogram(name: "cos", scope: !1350, file: !1350, line: 62, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1367, file: !1353, line: 199)
!1367 = !DISubprogram(name: "cosh", scope: !1350, file: !1350, line: 71, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1369, file: !1353, line: 218)
!1369 = !DISubprogram(name: "exp", scope: !1350, file: !1350, line: 95, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1371, file: !1353, line: 237)
!1371 = !DISubprogram(name: "fabs", scope: !1350, file: !1350, line: 162, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1373, file: !1353, line: 256)
!1373 = !DISubprogram(name: "floor", scope: !1350, file: !1350, line: 165, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1375, file: !1353, line: 275)
!1375 = !DISubprogram(name: "fmod", scope: !1350, file: !1350, line: 168, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1377, file: !1353, line: 296)
!1377 = !DISubprogram(name: "frexp", scope: !1350, file: !1350, line: 98, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!22, !22, !124}
!1380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1381, file: !1353, line: 315)
!1381 = !DISubprogram(name: "ldexp", scope: !1350, file: !1350, line: 101, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!22, !22, !10}
!1384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1385, file: !1353, line: 334)
!1385 = !DISubprogram(name: "log", scope: !1350, file: !1350, line: 104, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1387, file: !1353, line: 353)
!1387 = !DISubprogram(name: "log10", scope: !1350, file: !1350, line: 107, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1389, file: !1353, line: 372)
!1389 = !DISubprogram(name: "modf", scope: !1350, file: !1350, line: 110, type: !1390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!22, !22, !41}
!1392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1393, file: !1353, line: 384)
!1393 = !DISubprogram(name: "pow", scope: !1350, file: !1350, line: 140, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1395, file: !1353, line: 421)
!1395 = !DISubprogram(name: "sin", scope: !1350, file: !1350, line: 64, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1397, file: !1353, line: 440)
!1397 = !DISubprogram(name: "sinh", scope: !1350, file: !1350, line: 73, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1399, file: !1353, line: 459)
!1399 = !DISubprogram(name: "sqrt", scope: !1350, file: !1350, line: 143, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1401, file: !1353, line: 478)
!1401 = !DISubprogram(name: "tan", scope: !1350, file: !1350, line: 66, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1403, file: !1353, line: 497)
!1403 = !DISubprogram(name: "tanh", scope: !1350, file: !1350, line: 75, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1405, file: !1353, line: 1065)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1406, line: 150, baseType: !22)
!1406 = !DIFile(filename: "/usr/include/math.h", directory: "")
!1407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1408, file: !1353, line: 1066)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1406, line: 149, baseType: !117)
!1409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1410, file: !1353, line: 1069)
!1410 = !DISubprogram(name: "acosh", scope: !1350, file: !1350, line: 85, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1412, file: !1353, line: 1070)
!1412 = !DISubprogram(name: "acoshf", scope: !1350, file: !1350, line: 85, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!117, !117}
!1415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1416, file: !1353, line: 1071)
!1416 = !DISubprogram(name: "acoshl", scope: !1350, file: !1350, line: 85, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!693, !693}
!1419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1420, file: !1353, line: 1073)
!1420 = !DISubprogram(name: "asinh", scope: !1350, file: !1350, line: 87, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1422, file: !1353, line: 1074)
!1422 = !DISubprogram(name: "asinhf", scope: !1350, file: !1350, line: 87, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1424, file: !1353, line: 1075)
!1424 = !DISubprogram(name: "asinhl", scope: !1350, file: !1350, line: 87, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1426, file: !1353, line: 1077)
!1426 = !DISubprogram(name: "atanh", scope: !1350, file: !1350, line: 89, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1428, file: !1353, line: 1078)
!1428 = !DISubprogram(name: "atanhf", scope: !1350, file: !1350, line: 89, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1430, file: !1353, line: 1079)
!1430 = !DISubprogram(name: "atanhl", scope: !1350, file: !1350, line: 89, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1432, file: !1353, line: 1081)
!1432 = !DISubprogram(name: "cbrt", scope: !1350, file: !1350, line: 152, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1434, file: !1353, line: 1082)
!1434 = !DISubprogram(name: "cbrtf", scope: !1350, file: !1350, line: 152, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1436, file: !1353, line: 1083)
!1436 = !DISubprogram(name: "cbrtl", scope: !1350, file: !1350, line: 152, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1438, file: !1353, line: 1085)
!1438 = !DISubprogram(name: "copysign", scope: !1350, file: !1350, line: 196, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1440, file: !1353, line: 1086)
!1440 = !DISubprogram(name: "copysignf", scope: !1350, file: !1350, line: 196, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!117, !117, !117}
!1443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1444, file: !1353, line: 1087)
!1444 = !DISubprogram(name: "copysignl", scope: !1350, file: !1350, line: 196, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!693, !693, !693}
!1447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1448, file: !1353, line: 1089)
!1448 = !DISubprogram(name: "erf", scope: !1350, file: !1350, line: 228, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1450, file: !1353, line: 1090)
!1450 = !DISubprogram(name: "erff", scope: !1350, file: !1350, line: 228, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1452, file: !1353, line: 1091)
!1452 = !DISubprogram(name: "erfl", scope: !1350, file: !1350, line: 228, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1454, file: !1353, line: 1093)
!1454 = !DISubprogram(name: "erfc", scope: !1350, file: !1350, line: 229, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1456, file: !1353, line: 1094)
!1456 = !DISubprogram(name: "erfcf", scope: !1350, file: !1350, line: 229, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1458, file: !1353, line: 1095)
!1458 = !DISubprogram(name: "erfcl", scope: !1350, file: !1350, line: 229, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1460, file: !1353, line: 1097)
!1460 = !DISubprogram(name: "exp2", scope: !1350, file: !1350, line: 130, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1462, file: !1353, line: 1098)
!1462 = !DISubprogram(name: "exp2f", scope: !1350, file: !1350, line: 130, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1464, file: !1353, line: 1099)
!1464 = !DISubprogram(name: "exp2l", scope: !1350, file: !1350, line: 130, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1466, file: !1353, line: 1101)
!1466 = !DISubprogram(name: "expm1", scope: !1350, file: !1350, line: 119, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1468, file: !1353, line: 1102)
!1468 = !DISubprogram(name: "expm1f", scope: !1350, file: !1350, line: 119, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1470, file: !1353, line: 1103)
!1470 = !DISubprogram(name: "expm1l", scope: !1350, file: !1350, line: 119, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1472, file: !1353, line: 1105)
!1472 = !DISubprogram(name: "fdim", scope: !1350, file: !1350, line: 326, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1474, file: !1353, line: 1106)
!1474 = !DISubprogram(name: "fdimf", scope: !1350, file: !1350, line: 326, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1476, file: !1353, line: 1107)
!1476 = !DISubprogram(name: "fdiml", scope: !1350, file: !1350, line: 326, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1478, file: !1353, line: 1109)
!1478 = !DISubprogram(name: "fma", scope: !1350, file: !1350, line: 335, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!22, !22, !22, !22}
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1482, file: !1353, line: 1110)
!1482 = !DISubprogram(name: "fmaf", scope: !1350, file: !1350, line: 335, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!117, !117, !117, !117}
!1485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1486, file: !1353, line: 1111)
!1486 = !DISubprogram(name: "fmal", scope: !1350, file: !1350, line: 335, type: !1487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!693, !693, !693, !693}
!1489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1490, file: !1353, line: 1113)
!1490 = !DISubprogram(name: "fmax", scope: !1350, file: !1350, line: 329, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1492, file: !1353, line: 1114)
!1492 = !DISubprogram(name: "fmaxf", scope: !1350, file: !1350, line: 329, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1494, file: !1353, line: 1115)
!1494 = !DISubprogram(name: "fmaxl", scope: !1350, file: !1350, line: 329, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1496, file: !1353, line: 1117)
!1496 = !DISubprogram(name: "fmin", scope: !1350, file: !1350, line: 332, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1498, file: !1353, line: 1118)
!1498 = !DISubprogram(name: "fminf", scope: !1350, file: !1350, line: 332, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1500, file: !1353, line: 1119)
!1500 = !DISubprogram(name: "fminl", scope: !1350, file: !1350, line: 332, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1502, file: !1353, line: 1121)
!1502 = !DISubprogram(name: "hypot", scope: !1350, file: !1350, line: 147, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1504, file: !1353, line: 1122)
!1504 = !DISubprogram(name: "hypotf", scope: !1350, file: !1350, line: 147, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1506, file: !1353, line: 1123)
!1506 = !DISubprogram(name: "hypotl", scope: !1350, file: !1350, line: 147, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1508, file: !1353, line: 1125)
!1508 = !DISubprogram(name: "ilogb", scope: !1350, file: !1350, line: 280, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!10, !22}
!1511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1512, file: !1353, line: 1126)
!1512 = !DISubprogram(name: "ilogbf", scope: !1350, file: !1350, line: 280, type: !1513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!10, !117}
!1515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1516, file: !1353, line: 1127)
!1516 = !DISubprogram(name: "ilogbl", scope: !1350, file: !1350, line: 280, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!10, !693}
!1519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1520, file: !1353, line: 1129)
!1520 = !DISubprogram(name: "lgamma", scope: !1350, file: !1350, line: 230, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1522, file: !1353, line: 1130)
!1522 = !DISubprogram(name: "lgammaf", scope: !1350, file: !1350, line: 230, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1524, file: !1353, line: 1131)
!1524 = !DISubprogram(name: "lgammal", scope: !1350, file: !1350, line: 230, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1526, file: !1353, line: 1134)
!1526 = !DISubprogram(name: "llrint", scope: !1350, file: !1350, line: 316, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!115, !22}
!1529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1530, file: !1353, line: 1135)
!1530 = !DISubprogram(name: "llrintf", scope: !1350, file: !1350, line: 316, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!115, !117}
!1533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1534, file: !1353, line: 1136)
!1534 = !DISubprogram(name: "llrintl", scope: !1350, file: !1350, line: 316, type: !1535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!115, !693}
!1537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1538, file: !1353, line: 1138)
!1538 = !DISubprogram(name: "llround", scope: !1350, file: !1350, line: 322, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1540, file: !1353, line: 1139)
!1540 = !DISubprogram(name: "llroundf", scope: !1350, file: !1350, line: 322, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1542, file: !1353, line: 1140)
!1542 = !DISubprogram(name: "llroundl", scope: !1350, file: !1350, line: 322, type: !1535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1544, file: !1353, line: 1143)
!1544 = !DISubprogram(name: "log1p", scope: !1350, file: !1350, line: 122, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1546, file: !1353, line: 1144)
!1546 = !DISubprogram(name: "log1pf", scope: !1350, file: !1350, line: 122, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1548, file: !1353, line: 1145)
!1548 = !DISubprogram(name: "log1pl", scope: !1350, file: !1350, line: 122, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1550, file: !1353, line: 1147)
!1550 = !DISubprogram(name: "log2", scope: !1350, file: !1350, line: 133, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1552, file: !1353, line: 1148)
!1552 = !DISubprogram(name: "log2f", scope: !1350, file: !1350, line: 133, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1554, file: !1353, line: 1149)
!1554 = !DISubprogram(name: "log2l", scope: !1350, file: !1350, line: 133, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1556, file: !1353, line: 1151)
!1556 = !DISubprogram(name: "logb", scope: !1350, file: !1350, line: 125, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1558, file: !1353, line: 1152)
!1558 = !DISubprogram(name: "logbf", scope: !1350, file: !1350, line: 125, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1560, file: !1353, line: 1153)
!1560 = !DISubprogram(name: "logbl", scope: !1350, file: !1350, line: 125, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1562, file: !1353, line: 1155)
!1562 = !DISubprogram(name: "lrint", scope: !1350, file: !1350, line: 314, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!18, !22}
!1565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1566, file: !1353, line: 1156)
!1566 = !DISubprogram(name: "lrintf", scope: !1350, file: !1350, line: 314, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!18, !117}
!1569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1570, file: !1353, line: 1157)
!1570 = !DISubprogram(name: "lrintl", scope: !1350, file: !1350, line: 314, type: !1571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!18, !693}
!1573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1574, file: !1353, line: 1159)
!1574 = !DISubprogram(name: "lround", scope: !1350, file: !1350, line: 320, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1576, file: !1353, line: 1160)
!1576 = !DISubprogram(name: "lroundf", scope: !1350, file: !1350, line: 320, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1578, file: !1353, line: 1161)
!1578 = !DISubprogram(name: "lroundl", scope: !1350, file: !1350, line: 320, type: !1571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1580, file: !1353, line: 1163)
!1580 = !DISubprogram(name: "nan", scope: !1350, file: !1350, line: 201, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1582, file: !1353, line: 1164)
!1582 = !DISubprogram(name: "nanf", scope: !1350, file: !1350, line: 201, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!117, !508}
!1585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1586, file: !1353, line: 1165)
!1586 = !DISubprogram(name: "nanl", scope: !1350, file: !1350, line: 201, type: !1587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!693, !508}
!1589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1590, file: !1353, line: 1167)
!1590 = !DISubprogram(name: "nearbyint", scope: !1350, file: !1350, line: 294, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1592, file: !1353, line: 1168)
!1592 = !DISubprogram(name: "nearbyintf", scope: !1350, file: !1350, line: 294, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1594, file: !1353, line: 1169)
!1594 = !DISubprogram(name: "nearbyintl", scope: !1350, file: !1350, line: 294, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1596, file: !1353, line: 1171)
!1596 = !DISubprogram(name: "nextafter", scope: !1350, file: !1350, line: 259, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1598, file: !1353, line: 1172)
!1598 = !DISubprogram(name: "nextafterf", scope: !1350, file: !1350, line: 259, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1600, file: !1353, line: 1173)
!1600 = !DISubprogram(name: "nextafterl", scope: !1350, file: !1350, line: 259, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1602, file: !1353, line: 1175)
!1602 = !DISubprogram(name: "nexttoward", scope: !1350, file: !1350, line: 261, type: !1603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!22, !22, !693}
!1605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1606, file: !1353, line: 1176)
!1606 = !DISubprogram(name: "nexttowardf", scope: !1350, file: !1350, line: 261, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!117, !117, !693}
!1609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1610, file: !1353, line: 1177)
!1610 = !DISubprogram(name: "nexttowardl", scope: !1350, file: !1350, line: 261, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1612, file: !1353, line: 1179)
!1612 = !DISubprogram(name: "remainder", scope: !1350, file: !1350, line: 272, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1614, file: !1353, line: 1180)
!1614 = !DISubprogram(name: "remainderf", scope: !1350, file: !1350, line: 272, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1616, file: !1353, line: 1181)
!1616 = !DISubprogram(name: "remainderl", scope: !1350, file: !1350, line: 272, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1618, file: !1353, line: 1183)
!1618 = !DISubprogram(name: "remquo", scope: !1350, file: !1350, line: 307, type: !1619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!22, !22, !22, !124}
!1621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1622, file: !1353, line: 1184)
!1622 = !DISubprogram(name: "remquof", scope: !1350, file: !1350, line: 307, type: !1623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!117, !117, !117, !124}
!1625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1626, file: !1353, line: 1185)
!1626 = !DISubprogram(name: "remquol", scope: !1350, file: !1350, line: 307, type: !1627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!693, !693, !693, !124}
!1629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1630, file: !1353, line: 1187)
!1630 = !DISubprogram(name: "rint", scope: !1350, file: !1350, line: 256, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1632, file: !1353, line: 1188)
!1632 = !DISubprogram(name: "rintf", scope: !1350, file: !1350, line: 256, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1634, file: !1353, line: 1189)
!1634 = !DISubprogram(name: "rintl", scope: !1350, file: !1350, line: 256, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1636, file: !1353, line: 1191)
!1636 = !DISubprogram(name: "round", scope: !1350, file: !1350, line: 298, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1638, file: !1353, line: 1192)
!1638 = !DISubprogram(name: "roundf", scope: !1350, file: !1350, line: 298, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1640, file: !1353, line: 1193)
!1640 = !DISubprogram(name: "roundl", scope: !1350, file: !1350, line: 298, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1642, file: !1353, line: 1195)
!1642 = !DISubprogram(name: "scalbln", scope: !1350, file: !1350, line: 290, type: !1643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!22, !22, !18}
!1645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1646, file: !1353, line: 1196)
!1646 = !DISubprogram(name: "scalblnf", scope: !1350, file: !1350, line: 290, type: !1647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!117, !117, !18}
!1649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1650, file: !1353, line: 1197)
!1650 = !DISubprogram(name: "scalblnl", scope: !1350, file: !1350, line: 290, type: !1651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!693, !693, !18}
!1653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1654, file: !1353, line: 1199)
!1654 = !DISubprogram(name: "scalbn", scope: !1350, file: !1350, line: 276, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1656, file: !1353, line: 1200)
!1656 = !DISubprogram(name: "scalbnf", scope: !1350, file: !1350, line: 276, type: !1657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!117, !117, !10}
!1659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1660, file: !1353, line: 1201)
!1660 = !DISubprogram(name: "scalbnl", scope: !1350, file: !1350, line: 276, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!693, !693, !10}
!1663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1664, file: !1353, line: 1203)
!1664 = !DISubprogram(name: "tgamma", scope: !1350, file: !1350, line: 235, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1666, file: !1353, line: 1204)
!1666 = !DISubprogram(name: "tgammaf", scope: !1350, file: !1350, line: 235, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1668, file: !1353, line: 1205)
!1668 = !DISubprogram(name: "tgammal", scope: !1350, file: !1350, line: 235, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1670, file: !1353, line: 1207)
!1670 = !DISubprogram(name: "trunc", scope: !1350, file: !1350, line: 302, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1672, file: !1353, line: 1208)
!1672 = !DISubprogram(name: "truncf", scope: !1350, file: !1350, line: 302, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !405, entity: !1674, file: !1353, line: 1209)
!1674 = !DISubprogram(name: "truncl", scope: !1350, file: !1350, line: 302, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1320, file: !1676, line: 38)
!1676 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/math.h", directory: "")
!1677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1678, file: !1676, line: 54)
!1678 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !405, file: !1353, line: 380, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!693, !693, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!1682 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !405, file: !3, line: 44)
!1683 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1684 = !{i32 7, !"Dwarf Version", i32 4}
!1685 = !{i32 2, !"Debug Info Version", i32 3}
!1686 = !{i32 1, !"wchar_size", i32 4}
!1687 = !{!"clang version 10.0.0-4ubuntu1 "}
!1688 = distinct !DISubprogram(name: "gettime", linkageName: "_Z7gettimev", scope: !3, file: !3, line: 97, type: !1689, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!22}
!1691 = !{!1692}
!1692 = !DILocalVariable(name: "t", scope: !1688, file: !3, line: 98, type: !12)
!1693 = !DILocation(line: 98, column: 3, scope: !1688)
!1694 = !DILocation(line: 98, column: 18, scope: !1688)
!1695 = !DILocation(line: 99, column: 3, scope: !1688)
!1696 = !DILocation(line: 100, column: 20, scope: !1688)
!1697 = !{!1698, !1699, i64 0}
!1698 = !{!"_ZTS7timeval", !1699, i64 0, !1699, i64 8}
!1699 = !{!"long", !1700, i64 0}
!1700 = !{!"omnipotent char", !1701, i64 0}
!1701 = !{!"Simple C++ TBAA"}
!1702 = !DILocation(line: 100, column: 18, scope: !1688)
!1703 = !DILocation(line: 100, column: 29, scope: !1688)
!1704 = !{!1698, !1699, i64 8}
!1705 = !DILocation(line: 100, column: 27, scope: !1688)
!1706 = !DILocation(line: 100, column: 36, scope: !1688)
!1707 = !DILocation(line: 100, column: 26, scope: !1688)
!1708 = !DILocation(line: 101, column: 1, scope: !1688)
!1709 = !DILocation(line: 100, column: 3, scope: !1688)
!1710 = distinct !DISubprogram(name: "isIdentical", linkageName: "_Z11isIdenticalPfS_i", scope: !3, file: !3, line: 103, type: !1711, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!10, !125, !125, !10}
!1713 = !{!1714, !1715, !1716, !1717, !1718}
!1714 = !DILocalVariable(name: "i", arg: 1, scope: !1710, file: !3, line: 103, type: !125)
!1715 = !DILocalVariable(name: "j", arg: 2, scope: !1710, file: !3, line: 103, type: !125)
!1716 = !DILocalVariable(name: "D", arg: 3, scope: !1710, file: !3, line: 103, type: !10)
!1717 = !DILocalVariable(name: "a", scope: !1710, file: !3, line: 106, type: !10)
!1718 = !DILocalVariable(name: "equal", scope: !1710, file: !3, line: 107, type: !10)
!1719 = !DILocation(line: 0, scope: !1710)
!1720 = !DILocation(line: 109, column: 16, scope: !1710)
!1721 = !DILocation(line: 109, column: 3, scope: !1710)
!1722 = !DILocation(line: 110, column: 9, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 110, column: 9)
!1724 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 109, column: 26)
!1725 = !{!1726, !1726, i64 0}
!1726 = !{!"float", !1700, i64 0}
!1727 = !DILocation(line: 110, column: 17, scope: !1723)
!1728 = !DILocation(line: 110, column: 14, scope: !1723)
!1729 = !DILocation(line: 110, column: 9, scope: !1724)
!1730 = !DILocation(line: 109, column: 10, scope: !1710)
!1731 = distinct !{!1731, !1721, !1732}
!1732 = !DILocation(line: 112, column: 3, scope: !1710)
!1733 = !DILocation(line: 0, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 113, column: 7)
!1735 = !DILocation(line: 116, column: 1, scope: !1710)
!1736 = distinct !DISubprogram(name: "shuffle", linkageName: "_Z7shuffleP6Points", scope: !3, file: !3, line: 130, type: !1737, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !132}
!1739 = !{!1740, !1741, !1742, !1743}
!1740 = !DILocalVariable(name: "points", arg: 1, scope: !1736, file: !3, line: 130, type: !132)
!1741 = !DILocalVariable(name: "i", scope: !1736, file: !3, line: 135, type: !18)
!1742 = !DILocalVariable(name: "j", scope: !1736, file: !3, line: 135, type: !18)
!1743 = !DILocalVariable(name: "temp", scope: !1736, file: !3, line: 136, type: !140)
!1744 = !DILocation(line: 0, scope: !1736)
!1745 = !DILocation(line: 136, column: 3, scope: !1736)
!1746 = !DILocation(line: 136, column: 9, scope: !1736)
!1747 = !DILocation(line: 137, column: 22, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 137, column: 3)
!1749 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 137, column: 3)
!1750 = !{!1751, !1699, i64 0}
!1751 = !{!"_ZTS6Points", !1699, i64 0, !1752, i64 8, !1753, i64 16}
!1752 = !{!"int", !1700, i64 0}
!1753 = !{!"any pointer", !1700, i64 0}
!1754 = !DILocation(line: 137, column: 13, scope: !1748)
!1755 = !DILocation(line: 137, column: 3, scope: !1749)
!1756 = !DILocation(line: 0, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 137, column: 33)
!1758 = !DILocation(line: 138, column: 8, scope: !1757)
!1759 = !DILocation(line: 138, column: 27, scope: !1757)
!1760 = !DILocation(line: 138, column: 31, scope: !1757)
!1761 = !DILocation(line: 138, column: 17, scope: !1757)
!1762 = !DILocation(line: 138, column: 37, scope: !1757)
!1763 = !DILocation(line: 139, column: 20, scope: !1757)
!1764 = !{!1751, !1753, i64 16}
!1765 = !DILocation(line: 139, column: 12, scope: !1757)
!1766 = !DILocation(line: 139, column: 10, scope: !1757)
!1767 = !{i64 0, i64 4, !1725, i64 8, i64 8, !1768, i64 16, i64 8, !1769, i64 24, i64 4, !1725}
!1768 = !{!1753, !1753, i64 0}
!1769 = !{!1699, !1699, i64 0}
!1770 = !DILocation(line: 140, column: 20, scope: !1757)
!1771 = !DILocation(line: 140, column: 18, scope: !1757)
!1772 = !DILocation(line: 141, column: 13, scope: !1757)
!1773 = !DILocation(line: 141, column: 5, scope: !1757)
!1774 = !DILocation(line: 141, column: 18, scope: !1757)
!1775 = !DILocation(line: 137, column: 29, scope: !1748)
!1776 = !DILocation(line: 137, column: 25, scope: !1748)
!1777 = distinct !{!1777, !1755, !1778}
!1778 = !DILocation(line: 142, column: 3, scope: !1749)
!1779 = !DILocation(line: 147, column: 1, scope: !1736)
!1780 = distinct !DISubprogram(name: "intshuffle", linkageName: "_Z10intshufflePii", scope: !3, file: !3, line: 150, type: !1781, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !124, !10}
!1783 = !{!1784, !1785, !1786, !1787, !1788}
!1784 = !DILocalVariable(name: "intarray", arg: 1, scope: !1780, file: !3, line: 150, type: !124)
!1785 = !DILocalVariable(name: "length", arg: 2, scope: !1780, file: !3, line: 150, type: !10)
!1786 = !DILocalVariable(name: "i", scope: !1780, file: !3, line: 155, type: !18)
!1787 = !DILocalVariable(name: "j", scope: !1780, file: !3, line: 155, type: !18)
!1788 = !DILocalVariable(name: "temp", scope: !1780, file: !3, line: 156, type: !10)
!1789 = !DILocation(line: 0, scope: !1780)
!1790 = !DILocation(line: 157, column: 14, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 157, column: 3)
!1792 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 157, column: 3)
!1793 = !DILocation(line: 157, column: 13, scope: !1791)
!1794 = !DILocation(line: 157, column: 3, scope: !1792)
!1795 = !DILocation(line: 158, column: 8, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 157, column: 26)
!1797 = !DILocation(line: 158, column: 26, scope: !1796)
!1798 = !DILocation(line: 158, column: 17, scope: !1796)
!1799 = !DILocation(line: 158, column: 31, scope: !1796)
!1800 = !DILocation(line: 159, column: 12, scope: !1796)
!1801 = !{!1752, !1752, i64 0}
!1802 = !DILocation(line: 160, column: 17, scope: !1796)
!1803 = !DILocation(line: 160, column: 16, scope: !1796)
!1804 = !DILocation(line: 161, column: 16, scope: !1796)
!1805 = !DILocation(line: 157, column: 22, scope: !1791)
!1806 = distinct !{!1806, !1794, !1807}
!1807 = !DILocation(line: 162, column: 3, scope: !1792)
!1808 = !DILocation(line: 167, column: 1, scope: !1780)
!1809 = distinct !DISubprogram(name: "dist", linkageName: "_Z4dist5PointS_i", scope: !3, file: !3, line: 180, type: !1810, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1812)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!117, !140, !140, !10}
!1812 = !{!1813, !1814, !1815, !1816, !1817}
!1813 = !DILocalVariable(name: "p1", arg: 1, scope: !1809, file: !3, line: 180, type: !140)
!1814 = !DILocalVariable(name: "p2", arg: 2, scope: !1809, file: !3, line: 180, type: !140)
!1815 = !DILocalVariable(name: "dim", arg: 3, scope: !1809, file: !3, line: 180, type: !10)
!1816 = !DILocalVariable(name: "i", scope: !1809, file: !3, line: 182, type: !10)
!1817 = !DILocalVariable(name: "result", scope: !1809, file: !3, line: 183, type: !117)
!1818 = !DILocation(line: 180, column: 18, scope: !1809)
!1819 = !DILocation(line: 180, column: 28, scope: !1809)
!1820 = !DILocation(line: 0, scope: !1809)
!1821 = !DILocation(line: 184, column: 13, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 184, column: 3)
!1823 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 184, column: 3)
!1824 = !DILocation(line: 184, column: 3, scope: !1823)
!1825 = !DILocation(line: 0, scope: !1822)
!1826 = !{!1827, !1753, i64 8}
!1827 = !{!"_ZTS5Point", !1726, i64 0, !1753, i64 8, !1699, i64 16, !1726, i64 24}
!1828 = !DILocation(line: 185, column: 16, scope: !1822)
!1829 = !DILocation(line: 185, column: 30, scope: !1822)
!1830 = !DILocation(line: 185, column: 28, scope: !1822)
!1831 = !DILocation(line: 185, column: 42, scope: !1822)
!1832 = !DILocation(line: 185, column: 12, scope: !1822)
!1833 = !DILocation(line: 184, column: 19, scope: !1822)
!1834 = distinct !{!1834, !1824, !1835}
!1835 = !DILocation(line: 185, column: 69, scope: !1823)
!1836 = distinct !{!1836, !1837}
!1837 = !{!"llvm.loop.unroll.disable"}
!1838 = !DILocation(line: 191, column: 3, scope: !1809)
!1839 = !DILocation(line: 0, scope: !235)
!1840 = !DILocation(line: 202, column: 3, scope: !235)
!1841 = !DILocation(line: 205, column: 24, scope: !235)
!1842 = !DILocation(line: 205, column: 28, scope: !235)
!1843 = !DILocation(line: 205, column: 27, scope: !235)
!1844 = !DILocation(line: 206, column: 21, scope: !235)
!1845 = !DILocation(line: 206, column: 19, scope: !235)
!1846 = !DILocation(line: 207, column: 16, scope: !235)
!1847 = !DILocation(line: 208, column: 19, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !235, file: !3, line: 208, column: 7)
!1849 = !DILocation(line: 208, column: 11, scope: !1848)
!1850 = !DILocation(line: 208, column: 7, scope: !235)
!1851 = !DILocation(line: 0, scope: !248)
!1852 = !DILocation(line: 228, column: 20, scope: !251)
!1853 = !DILocation(line: 228, column: 22, scope: !251)
!1854 = !DILocation(line: 228, column: 3, scope: !248)
!1855 = !DILocation(line: 0, scope: !250)
!1856 = !{!1751, !1752, i64 8}
!1857 = !DILocation(line: 0, scope: !1822, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 229, column: 22, scope: !250)
!1859 = !DILocation(line: 0, scope: !1823, inlinedAt: !1858)
!1860 = !DILocation(line: 234, column: 10, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !235, file: !3, line: 234, column: 7)
!1862 = !DILocation(line: 234, column: 7, scope: !235)
!1863 = !DILocation(line: 0, scope: !258)
!1864 = !DILocation(line: 240, column: 5, scope: !255)
!1865 = !DILocation(line: 0, scope: !1809, inlinedAt: !1858)
!1866 = !DILocation(line: 229, column: 27, scope: !250)
!1867 = !DILocation(line: 184, column: 3, scope: !1823, inlinedAt: !1858)
!1868 = !DILocation(line: 185, column: 16, scope: !1822, inlinedAt: !1858)
!1869 = !DILocation(line: 185, column: 30, scope: !1822, inlinedAt: !1858)
!1870 = !DILocation(line: 185, column: 28, scope: !1822, inlinedAt: !1858)
!1871 = !DILocation(line: 185, column: 42, scope: !1822, inlinedAt: !1858)
!1872 = !DILocation(line: 185, column: 12, scope: !1822, inlinedAt: !1858)
!1873 = !DILocation(line: 184, column: 19, scope: !1822, inlinedAt: !1858)
!1874 = distinct !{!1874, !1867, !1875}
!1875 = !DILocation(line: 185, column: 69, scope: !1823, inlinedAt: !1858)
!1876 = distinct !{!1876, !1837}
!1877 = !DILocation(line: 230, column: 49, scope: !250)
!1878 = !{!1827, !1726, i64 0}
!1879 = !DILocation(line: 230, column: 34, scope: !250)
!1880 = !DILocation(line: 230, column: 18, scope: !250)
!1881 = !DILocation(line: 230, column: 23, scope: !250)
!1882 = !{!1827, !1726, i64 24}
!1883 = !DILocation(line: 231, column: 18, scope: !250)
!1884 = !DILocation(line: 231, column: 24, scope: !250)
!1885 = !{!1827, !1699, i64 16}
!1886 = !DILocation(line: 228, column: 29, scope: !251)
!1887 = distinct !{!1887, !1854, !1888}
!1888 = !DILocation(line: 232, column: 3, scope: !248)
!1889 = !DILocation(line: 235, column: 14, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 234, column: 18)
!1891 = !DILocation(line: 236, column: 43, scope: !1890)
!1892 = !DILocation(line: 236, column: 22, scope: !1890)
!1893 = !DILocation(line: 236, column: 11, scope: !1890)
!1894 = !DILocation(line: 0, scope: !263)
!1895 = !DILocation(line: 263, column: 28, scope: !262)
!1896 = !DILocation(line: 263, column: 18, scope: !262)
!1897 = !DILocation(line: 263, column: 5, scope: !263)
!1898 = !DILocation(line: 0, scope: !261)
!1899 = !DILocation(line: 0, scope: !270)
!1900 = !DILocation(line: 242, column: 7, scope: !254)
!1901 = !DILocation(line: 243, column: 14, scope: !254)
!1902 = !DILocation(line: 243, column: 7, scope: !254)
!1903 = !DILocation(line: 243, column: 20, scope: !254)
!1904 = distinct !{!1904, !1902, !1905}
!1905 = !DILocation(line: 243, column: 50, scope: !254)
!1906 = !DILocation(line: 244, column: 7, scope: !254)
!1907 = !DILocation(line: 246, column: 11, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !254, file: !3, line: 246, column: 11)
!1909 = !DILocation(line: 246, column: 24, scope: !1908)
!1910 = !DILocation(line: 246, column: 13, scope: !1908)
!1911 = !DILocation(line: 246, column: 11, scope: !254)
!1912 = !DILocation(line: 0, scope: !253)
!1913 = !DILocation(line: 247, column: 7, scope: !253)
!1914 = !DILocation(line: 0, scope: !1822, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 249, column: 21, scope: !258)
!1916 = !DILocation(line: 0, scope: !1823, inlinedAt: !1915)
!1917 = !DILocation(line: 257, column: 7, scope: !254)
!1918 = !DILocation(line: 258, column: 7, scope: !254)
!1919 = distinct !{!1919, !1864, !1920}
!1920 = !DILocation(line: 260, column: 5, scope: !255)
!1921 = !DILocation(line: 0, scope: !1809, inlinedAt: !1915)
!1922 = !DILocation(line: 249, column: 39, scope: !258)
!1923 = !DILocation(line: 184, column: 3, scope: !1823, inlinedAt: !1915)
!1924 = !DILocation(line: 185, column: 16, scope: !1822, inlinedAt: !1915)
!1925 = !DILocation(line: 185, column: 30, scope: !1822, inlinedAt: !1915)
!1926 = !DILocation(line: 185, column: 28, scope: !1822, inlinedAt: !1915)
!1927 = !DILocation(line: 185, column: 42, scope: !1822, inlinedAt: !1915)
!1928 = !DILocation(line: 185, column: 12, scope: !1822, inlinedAt: !1915)
!1929 = !DILocation(line: 184, column: 19, scope: !1822, inlinedAt: !1915)
!1930 = distinct !{!1930, !1923, !1931}
!1931 = !DILocation(line: 185, column: 69, scope: !1823, inlinedAt: !1915)
!1932 = distinct !{!1932, !1837}
!1933 = !DILocation(line: 250, column: 30, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !258, file: !3, line: 250, column: 8)
!1935 = !DILocation(line: 250, column: 16, scope: !1934)
!1936 = !DILocation(line: 250, column: 52, scope: !1934)
!1937 = !DILocation(line: 250, column: 37, scope: !1934)
!1938 = !DILocation(line: 250, column: 8, scope: !258)
!1939 = !DILocation(line: 252, column: 26, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 251, column: 6)
!1941 = !DILocation(line: 253, column: 21, scope: !1940)
!1942 = !DILocation(line: 253, column: 27, scope: !1940)
!1943 = !DILocation(line: 254, column: 6, scope: !1940)
!1944 = !DILocation(line: 247, column: 33, scope: !259)
!1945 = !DILocation(line: 247, column: 26, scope: !259)
!1946 = distinct !{!1946, !1913, !1947}
!1947 = !DILocation(line: 255, column: 2, scope: !253)
!1948 = !DILocation(line: 264, column: 30, scope: !261)
!1949 = !DILocation(line: 264, column: 39, scope: !261)
!1950 = !DILocation(line: 264, column: 65, scope: !261)
!1951 = !DILocation(line: 264, column: 67, scope: !261)
!1952 = !DILocation(line: 264, column: 57, scope: !261)
!1953 = !DILocation(line: 264, column: 70, scope: !261)
!1954 = !DILocation(line: 264, column: 74, scope: !261)
!1955 = !DILocation(line: 264, column: 55, scope: !261)
!1956 = !DILocation(line: 265, column: 11, scope: !261)
!1957 = !DILocation(line: 266, column: 12, scope: !267)
!1958 = !DILocation(line: 268, column: 2, scope: !267)
!1959 = !DILocation(line: 270, column: 7, scope: !267)
!1960 = !DILocation(line: 272, column: 2, scope: !267)
!1961 = !DILocation(line: 273, column: 2, scope: !267)
!1962 = !DILocation(line: 0, scope: !266)
!1963 = !DILocation(line: 275, column: 2, scope: !266)
!1964 = !DILocation(line: 0, scope: !1822, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 276, column: 21, scope: !270)
!1966 = !DILocation(line: 0, scope: !1823, inlinedAt: !1965)
!1967 = !DILocation(line: 283, column: 2, scope: !267)
!1968 = !DILocation(line: 285, column: 7, scope: !267)
!1969 = !DILocation(line: 287, column: 2, scope: !267)
!1970 = !DILocation(line: 263, column: 34, scope: !262)
!1971 = !DILocation(line: 289, column: 7, scope: !267)
!1972 = !DILocation(line: 0, scope: !1809, inlinedAt: !1965)
!1973 = !DILocation(line: 276, column: 39, scope: !270)
!1974 = !DILocation(line: 184, column: 3, scope: !1823, inlinedAt: !1965)
!1975 = !DILocation(line: 185, column: 16, scope: !1822, inlinedAt: !1965)
!1976 = !DILocation(line: 185, column: 30, scope: !1822, inlinedAt: !1965)
!1977 = !DILocation(line: 185, column: 28, scope: !1822, inlinedAt: !1965)
!1978 = !DILocation(line: 185, column: 42, scope: !1822, inlinedAt: !1965)
!1979 = !DILocation(line: 185, column: 12, scope: !1822, inlinedAt: !1965)
!1980 = !DILocation(line: 184, column: 19, scope: !1822, inlinedAt: !1965)
!1981 = distinct !{!1981, !1974, !1982}
!1982 = !DILocation(line: 185, column: 69, scope: !1823, inlinedAt: !1965)
!1983 = distinct !{!1983, !1837}
!1984 = !DILocation(line: 277, column: 30, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !270, file: !3, line: 277, column: 8)
!1986 = !DILocation(line: 277, column: 16, scope: !1985)
!1987 = !DILocation(line: 277, column: 52, scope: !1985)
!1988 = !DILocation(line: 277, column: 37, scope: !1985)
!1989 = !DILocation(line: 277, column: 8, scope: !270)
!1990 = !DILocation(line: 278, column: 24, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 277, column: 60)
!1992 = !DILocation(line: 279, column: 19, scope: !1991)
!1993 = !DILocation(line: 279, column: 25, scope: !1991)
!1994 = !DILocation(line: 280, column: 4, scope: !1991)
!1995 = !DILocation(line: 275, column: 28, scope: !271)
!1996 = !DILocation(line: 275, column: 21, scope: !271)
!1997 = distinct !{!1997, !1963, !1998}
!1998 = !DILocation(line: 281, column: 2, scope: !266)
!1999 = !DILocation(line: 263, column: 16, scope: !262)
!2000 = distinct !{!2000, !1897, !2001}
!2001 = !DILocation(line: 290, column: 5, scope: !263)
!2002 = !DILocation(line: 292, column: 5, scope: !264)
!2003 = !DILocation(line: 294, column: 10, scope: !264)
!2004 = !DILocation(line: 296, column: 5, scope: !264)
!2005 = !DILocation(line: 297, column: 5, scope: !264)
!2006 = !DILocation(line: 301, column: 3, scope: !235)
!2007 = !DILocation(line: 303, column: 8, scope: !235)
!2008 = !DILocation(line: 0, scope: !274)
!2009 = !DILocation(line: 305, column: 3, scope: !274)
!2010 = !DILocation(line: 0, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 305, column: 35)
!2012 = distinct !DILexicalBlock(scope: !274, file: !3, line: 305, column: 3)
!2013 = !DILocation(line: 306, column: 29, scope: !2011)
!2014 = !DILocation(line: 306, column: 16, scope: !2011)
!2015 = !DILocation(line: 306, column: 13, scope: !2011)
!2016 = !DILocation(line: 305, column: 29, scope: !2012)
!2017 = distinct !{!2017, !1837}
!2018 = !DILocation(line: 308, column: 3, scope: !235)
!2019 = !DILocation(line: 308, column: 14, scope: !235)
!2020 = !{!2021, !2021, i64 0}
!2021 = !{!"double", !1700, i64 0}
!2022 = !DILocation(line: 310, column: 3, scope: !235)
!2023 = !DILocation(line: 313, column: 7, scope: !235)
!2024 = !DILocation(line: 305, column: 22, scope: !2012)
!2025 = distinct !{!2025, !2009, !2026}
!2026 = !DILocation(line: 307, column: 3, scope: !274)
!2027 = !DILocation(line: 315, column: 20, scope: !277)
!2028 = !DILocation(line: 315, column: 19, scope: !277)
!2029 = !DILocation(line: 315, column: 18, scope: !277)
!2030 = !DILocation(line: 315, column: 17, scope: !277)
!2031 = !DILocation(line: 315, column: 16, scope: !277)
!2032 = !DILocation(line: 0, scope: !276)
!2033 = !DILocation(line: 316, column: 27, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !276, file: !3, line: 316, column: 7)
!2035 = !DILocation(line: 316, column: 25, scope: !2034)
!2036 = !DILocation(line: 316, column: 7, scope: !276)
!2037 = !DILocation(line: 320, column: 12, scope: !277)
!2038 = !DILocation(line: 0, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 317, column: 2)
!2040 = !DILocation(line: 318, column: 17, scope: !2039)
!2041 = !DILocation(line: 318, column: 14, scope: !2039)
!2042 = !DILocation(line: 316, column: 35, scope: !2034)
!2043 = distinct !{!2043, !1837}
!2044 = !DILocation(line: 320, column: 7, scope: !277)
!2045 = !DILocation(line: 321, column: 5, scope: !277)
!2046 = distinct !{!2046, !2036, !2047}
!2047 = !DILocation(line: 319, column: 2, scope: !276)
!2048 = !DILocation(line: 323, column: 3, scope: !235)
!2049 = !DILocation(line: 341, column: 10, scope: !235)
!2050 = !DILocation(line: 341, column: 9, scope: !235)
!2051 = !DILocation(line: 341, column: 3, scope: !235)
!2052 = !DILocation(line: 0, scope: !293)
!2053 = !DILocation(line: 365, column: 3, scope: !293)
!2054 = !DILocation(line: 372, column: 24, scope: !293)
!2055 = !DILocation(line: 372, column: 28, scope: !293)
!2056 = !DILocation(line: 372, column: 27, scope: !293)
!2057 = !DILocation(line: 373, column: 21, scope: !293)
!2058 = !DILocation(line: 373, column: 19, scope: !293)
!2059 = !DILocation(line: 374, column: 16, scope: !293)
!2060 = !DILocation(line: 375, column: 19, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !293, file: !3, line: 375, column: 7)
!2062 = !DILocation(line: 375, column: 11, scope: !2061)
!2063 = !DILocation(line: 375, column: 7, scope: !293)
!2064 = !DILocation(line: 385, column: 16, scope: !293)
!2065 = !DILocation(line: 388, column: 19, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !293, file: !3, line: 388, column: 7)
!2067 = !DILocation(line: 388, column: 7, scope: !293)
!2068 = !DILocation(line: 389, column: 28, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 388, column: 26)
!2070 = !DILocation(line: 389, column: 17, scope: !2069)
!2071 = !DILocation(line: 390, column: 3, scope: !2069)
!2072 = !DILocation(line: 391, column: 18, scope: !293)
!2073 = !DILocation(line: 396, column: 10, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !293, file: !3, line: 396, column: 7)
!2075 = !DILocation(line: 396, column: 7, scope: !293)
!2076 = !DILocation(line: 397, column: 46, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 396, column: 19)
!2078 = !DILocation(line: 397, column: 39, scope: !2077)
!2079 = !DILocation(line: 397, column: 33, scope: !2077)
!2080 = !DILocation(line: 397, column: 49, scope: !2077)
!2081 = !DILocation(line: 397, column: 26, scope: !2077)
!2082 = !DILocation(line: 397, column: 14, scope: !2077)
!2083 = !DILocation(line: 398, column: 26, scope: !2077)
!2084 = !DILocation(line: 399, column: 35, scope: !2077)
!2085 = !DILocation(line: 400, column: 3, scope: !2077)
!2086 = !DILocation(line: 403, column: 3, scope: !293)
!2087 = !DILocation(line: 0, scope: !314)
!2088 = !DILocation(line: 412, column: 20, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !314, file: !3, line: 412, column: 3)
!2090 = !DILocation(line: 412, column: 22, scope: !2089)
!2091 = !DILocation(line: 412, column: 3, scope: !314)
!2092 = !DILocation(line: 0, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 413, column: 9)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 412, column: 34)
!2095 = !DILocation(line: 0, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 413, column: 24)
!2097 = !DILocation(line: 413, column: 9, scope: !2094)
!2098 = !DILocation(line: 413, column: 9, scope: !2093)
!2099 = !{!2100, !2100, i64 0}
!2100 = !{!"bool", !1700, i64 0}
!2101 = !{i8 0, i8 2}
!2102 = !DILocation(line: 414, column: 30, scope: !2096)
!2103 = !DILocation(line: 414, column: 7, scope: !2096)
!2104 = !DILocation(line: 414, column: 23, scope: !2096)
!2105 = !DILocation(line: 415, column: 5, scope: !2096)
!2106 = !DILocation(line: 417, column: 26, scope: !293)
!2107 = !DILocation(line: 417, column: 3, scope: !293)
!2108 = !DILocation(line: 417, column: 15, scope: !293)
!2109 = !DILocation(line: 417, column: 24, scope: !293)
!2110 = !DILocation(line: 420, column: 3, scope: !293)
!2111 = !DILocation(line: 425, column: 25, scope: !322)
!2112 = !DILocation(line: 425, column: 23, scope: !322)
!2113 = !DILocation(line: 423, column: 7, scope: !293)
!2114 = !DILocation(line: 0, scope: !319)
!2115 = !DILocation(line: 0, scope: !316)
!2116 = !DILocation(line: 0, scope: !321)
!2117 = !DILocation(line: 425, column: 5, scope: !319)
!2118 = !DILocation(line: 412, column: 29, scope: !2089)
!2119 = !DILocation(line: 426, column: 32, scope: !321)
!2120 = !DILocation(line: 426, column: 22, scope: !321)
!2121 = !DILocation(line: 427, column: 28, scope: !321)
!2122 = !DILocation(line: 427, column: 26, scope: !321)
!2123 = !DILocation(line: 428, column: 13, scope: !321)
!2124 = !DILocation(line: 425, column: 33, scope: !322)
!2125 = distinct !{!2125, !2117, !2126}
!2126 = !DILocation(line: 429, column: 5, scope: !319)
!2127 = !DILocation(line: 433, column: 3, scope: !293)
!2128 = !DILocation(line: 0, scope: !324)
!2129 = !DILocation(line: 436, column: 3, scope: !324)
!2130 = !DILocation(line: 444, column: 10, scope: !293)
!2131 = !DILocation(line: 0, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 437, column: 9)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 436, column: 34)
!2134 = distinct !DILexicalBlock(scope: !324, file: !3, line: 436, column: 3)
!2135 = !DILocation(line: 0, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 437, column: 24)
!2137 = !DILocation(line: 437, column: 9, scope: !2132)
!2138 = !DILocation(line: 437, column: 9, scope: !2133)
!2139 = !DILocation(line: 438, column: 31, scope: !2136)
!2140 = !DILocation(line: 438, column: 7, scope: !2136)
!2141 = !DILocation(line: 438, column: 23, scope: !2136)
!2142 = !DILocation(line: 439, column: 5, scope: !2136)
!2143 = !DILocation(line: 436, column: 29, scope: !2134)
!2144 = !DILocation(line: 443, column: 10, scope: !293)
!2145 = !DILocation(line: 443, column: 28, scope: !293)
!2146 = !DILocation(line: 443, column: 40, scope: !293)
!2147 = !DILocation(line: 443, column: 3, scope: !293)
!2148 = !DILocation(line: 444, column: 18, scope: !293)
!2149 = !DILocation(line: 444, column: 3, scope: !293)
!2150 = !DILocation(line: 444, column: 34, scope: !293)
!2151 = !DILocation(line: 444, column: 40, scope: !293)
!2152 = !DILocation(line: 445, column: 7, scope: !293)
!2153 = !DILocation(line: 445, column: 33, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !293, file: !3, line: 445, column: 7)
!2155 = !DILocation(line: 445, column: 38, scope: !2154)
!2156 = !DILocation(line: 445, column: 32, scope: !2154)
!2157 = !DILocation(line: 445, column: 17, scope: !2154)
!2158 = !DILocation(line: 448, column: 3, scope: !293)
!2159 = !DILocation(line: 455, column: 20, scope: !293)
!2160 = !DILocation(line: 457, column: 32, scope: !293)
!2161 = !DILocation(line: 457, column: 37, scope: !293)
!2162 = !DILocation(line: 457, column: 23, scope: !293)
!2163 = !DILocation(line: 459, column: 3, scope: !330)
!2164 = !DILocation(line: 488, column: 3, scope: !293)
!2165 = !DILocation(line: 0, scope: !336)
!2166 = !DILocation(line: 501, column: 3, scope: !336)
!2167 = !DILocation(line: 0, scope: !328)
!2168 = !DILocation(line: 0, scope: !1822, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 460, column: 20, scope: !328)
!2170 = !DILocation(line: 0, scope: !333)
!2171 = !DILocation(line: 0, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !334, file: !3, line: 464, column: 34)
!2173 = !DILocation(line: 0, scope: !1823, inlinedAt: !2169)
!2174 = !DILocation(line: 0, scope: !1809, inlinedAt: !2169)
!2175 = !DILocation(line: 460, column: 25, scope: !328)
!2176 = !DILocation(line: 460, column: 39, scope: !328)
!2177 = !DILocation(line: 184, column: 3, scope: !1823, inlinedAt: !2169)
!2178 = !DILocation(line: 185, column: 16, scope: !1822, inlinedAt: !2169)
!2179 = !DILocation(line: 185, column: 30, scope: !1822, inlinedAt: !2169)
!2180 = !DILocation(line: 185, column: 28, scope: !1822, inlinedAt: !2169)
!2181 = !DILocation(line: 185, column: 42, scope: !1822, inlinedAt: !2169)
!2182 = !DILocation(line: 185, column: 12, scope: !1822, inlinedAt: !2169)
!2183 = !DILocation(line: 184, column: 19, scope: !1822, inlinedAt: !2169)
!2184 = distinct !{!2184, !2177, !2185}
!2185 = !DILocation(line: 185, column: 69, scope: !1823, inlinedAt: !2169)
!2186 = distinct !{!2186, !1837}
!2187 = !DILocation(line: 461, column: 22, scope: !328)
!2188 = !DILocation(line: 461, column: 7, scope: !328)
!2189 = !DILocation(line: 462, column: 39, scope: !328)
!2190 = !DILocation(line: 464, column: 17, scope: !334)
!2191 = !DILocation(line: 464, column: 10, scope: !328)
!2192 = !DILocation(line: 470, column: 7, scope: !2172)
!2193 = !DILocation(line: 470, column: 28, scope: !2172)
!2194 = !DILocation(line: 471, column: 35, scope: !2172)
!2195 = !DILocation(line: 471, column: 28, scope: !2172)
!2196 = !DILocation(line: 471, column: 25, scope: !2172)
!2197 = !DILocation(line: 473, column: 5, scope: !2172)
!2198 = !DILocation(line: 482, column: 33, scope: !333)
!2199 = !DILocation(line: 483, column: 51, scope: !333)
!2200 = !DILocation(line: 483, column: 38, scope: !333)
!2201 = !DILocation(line: 483, column: 13, scope: !333)
!2202 = !DILocation(line: 483, column: 7, scope: !333)
!2203 = !DILocation(line: 483, column: 35, scope: !333)
!2204 = !DILocation(line: 459, column: 26, scope: !329)
!2205 = !DILocation(line: 459, column: 19, scope: !329)
!2206 = distinct !{!2206, !2163, !2207}
!2207 = !DILocation(line: 485, column: 3, scope: !330)
!2208 = !DILocation(line: 520, column: 3, scope: !293)
!2209 = !DILocation(line: 0, scope: !339)
!2210 = !DILocation(line: 0, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !343, file: !3, line: 505, column: 7)
!2212 = !DILocation(line: 0, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 505, column: 40)
!2214 = !DILocation(line: 0, scope: !343)
!2215 = !DILocation(line: 520, column: 30, scope: !293)
!2216 = !DILocation(line: 520, column: 23, scope: !293)
!2217 = !DILocation(line: 520, column: 28, scope: !293)
!2218 = !DILocation(line: 521, column: 26, scope: !293)
!2219 = !DILocation(line: 521, column: 3, scope: !293)
!2220 = !DILocation(line: 521, column: 30, scope: !293)
!2221 = !DILocation(line: 524, column: 3, scope: !293)
!2222 = !DILocation(line: 528, column: 7, scope: !293)
!2223 = !DILocation(line: 502, column: 9, scope: !339)
!2224 = !DILocation(line: 502, column: 9, scope: !340)
!2225 = !DILocation(line: 0, scope: !338)
!2226 = !DILocation(line: 505, column: 7, scope: !343)
!2227 = !DILocation(line: 506, column: 35, scope: !2213)
!2228 = !DILocation(line: 506, column: 33, scope: !2213)
!2229 = !DILocation(line: 506, column: 9, scope: !2213)
!2230 = !DILocation(line: 506, column: 6, scope: !2213)
!2231 = !DILocation(line: 505, column: 35, scope: !2211)
!2232 = distinct !{!2232, !1837}
!2233 = !DILocation(line: 508, column: 7, scope: !338)
!2234 = !DILocation(line: 508, column: 33, scope: !338)
!2235 = !DILocation(line: 509, column: 16, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !338, file: !3, line: 509, column: 12)
!2237 = !DILocation(line: 509, column: 12, scope: !338)
!2238 = distinct !{!2238, !2226, !2239}
!2239 = !DILocation(line: 507, column: 7, scope: !343)
!2240 = !DILocation(line: 501, column: 30, scope: !341)
!2241 = !DILocation(line: 501, column: 23, scope: !341)
!2242 = distinct !{!2242, !2166, !2243}
!2243 = !DILocation(line: 518, column: 3, scope: !336)
!2244 = !DILocation(line: 529, column: 26, scope: !346)
!2245 = !DILocation(line: 0, scope: !345)
!2246 = !DILocation(line: 531, column: 25, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !345, file: !3, line: 531, column: 5)
!2248 = !DILocation(line: 531, column: 23, scope: !2247)
!2249 = !DILocation(line: 531, column: 5, scope: !345)
!2250 = !DILocation(line: 0, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 531, column: 38)
!2252 = !DILocation(line: 532, column: 37, scope: !2251)
!2253 = !DILocation(line: 532, column: 55, scope: !2251)
!2254 = !DILocation(line: 532, column: 63, scope: !2251)
!2255 = !DILocation(line: 532, column: 45, scope: !2251)
!2256 = !DILocation(line: 533, column: 50, scope: !2251)
!2257 = !DILocation(line: 533, column: 31, scope: !2251)
!2258 = !DILocation(line: 533, column: 28, scope: !2251)
!2259 = !DILocation(line: 531, column: 33, scope: !2247)
!2260 = distinct !{!2260, !2249, !2261}
!2261 = !DILocation(line: 534, column: 5, scope: !345)
!2262 = !DILocation(line: 537, column: 3, scope: !293)
!2263 = !DILocation(line: 542, column: 8, scope: !351)
!2264 = !DILocation(line: 542, column: 29, scope: !351)
!2265 = !DILocation(line: 542, column: 8, scope: !293)
!2266 = !DILocation(line: 0, scope: !349)
!2267 = !DILocation(line: 544, column: 5, scope: !349)
!2268 = !DILocation(line: 0, scope: !353)
!2269 = !DILocation(line: 0, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !353, file: !3, line: 546, column: 12)
!2271 = !DILocation(line: 0, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 546, column: 51)
!2273 = !DILocation(line: 0, scope: !356)
!2274 = !DILocation(line: 554, column: 5, scope: !356)
!2275 = !DILocation(line: 0, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 555, column: 11)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 554, column: 36)
!2278 = distinct !DILexicalBlock(scope: !356, file: !3, line: 554, column: 5)
!2279 = !DILocation(line: 555, column: 11, scope: !2276)
!2280 = !DILocation(line: 555, column: 24, scope: !2276)
!2281 = !DILocation(line: 555, column: 36, scope: !2276)
!2282 = !DILocation(line: 555, column: 27, scope: !2276)
!2283 = !DILocation(line: 555, column: 53, scope: !2276)
!2284 = !DILocation(line: 555, column: 11, scope: !2277)
!2285 = !DILocation(line: 556, column: 15, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 555, column: 59)
!2287 = !DILocation(line: 557, column: 7, scope: !2286)
!2288 = !DILocation(line: 554, column: 31, scope: !2278)
!2289 = !DILocation(line: 546, column: 12, scope: !2270)
!2290 = !DILocation(line: 546, column: 33, scope: !2270)
!2291 = !DILocation(line: 545, column: 62, scope: !353)
!2292 = !DILocation(line: 545, column: 36, scope: !353)
!2293 = !DILocation(line: 545, column: 27, scope: !353)
!2294 = !DILocation(line: 545, column: 71, scope: !353)
!2295 = !DILocation(line: 546, column: 12, scope: !353)
!2296 = !DILocation(line: 549, column: 35, scope: !2272)
!2297 = !DILocation(line: 0, scope: !1809, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 550, column: 4, scope: !2272)
!2299 = !DILocation(line: 550, column: 9, scope: !2272)
!2300 = !DILocation(line: 550, column: 23, scope: !2272)
!2301 = !DILocation(line: 550, column: 45, scope: !2272)
!2302 = !DILocation(line: 184, column: 13, scope: !1822, inlinedAt: !2298)
!2303 = !DILocation(line: 184, column: 3, scope: !1823, inlinedAt: !2298)
!2304 = !DILocation(line: 185, column: 16, scope: !1822, inlinedAt: !2298)
!2305 = !DILocation(line: 185, column: 30, scope: !1822, inlinedAt: !2298)
!2306 = !DILocation(line: 185, column: 28, scope: !1822, inlinedAt: !2298)
!2307 = !DILocation(line: 185, column: 42, scope: !1822, inlinedAt: !2298)
!2308 = !DILocation(line: 185, column: 12, scope: !1822, inlinedAt: !2298)
!2309 = !DILocation(line: 184, column: 19, scope: !1822, inlinedAt: !2298)
!2310 = distinct !{!2310, !2303, !2311}
!2311 = !DILocation(line: 185, column: 69, scope: !1823, inlinedAt: !2298)
!2312 = distinct !{!2312, !1837}
!2313 = !DILocation(line: 549, column: 42, scope: !2272)
!2314 = !DILocation(line: 549, column: 15, scope: !2272)
!2315 = !DILocation(line: 549, column: 20, scope: !2272)
!2316 = !DILocation(line: 551, column: 15, scope: !2272)
!2317 = !DILocation(line: 551, column: 22, scope: !2272)
!2318 = !DILocation(line: 552, column: 7, scope: !2272)
!2319 = !DILocation(line: 544, column: 32, scope: !354)
!2320 = !DILocation(line: 544, column: 25, scope: !354)
!2321 = distinct !{!2321, !2267, !2322}
!2322 = !DILocation(line: 553, column: 5, scope: !349)
!2323 = !DILocation(line: 559, column: 11, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !350, file: !3, line: 559, column: 9)
!2325 = !DILocation(line: 559, column: 22, scope: !2324)
!2326 = !DILocation(line: 559, column: 17, scope: !2324)
!2327 = !DILocation(line: 560, column: 7, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 559, column: 29)
!2329 = !DILocation(line: 560, column: 20, scope: !2328)
!2330 = !DILocation(line: 561, column: 5, scope: !2328)
!2331 = !DILocation(line: 564, column: 9, scope: !350)
!2332 = !DILocation(line: 565, column: 21, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 564, column: 18)
!2334 = distinct !DILexicalBlock(scope: !350, file: !3, line: 564, column: 9)
!2335 = !DILocation(line: 565, column: 33, scope: !2333)
!2336 = !DILocation(line: 565, column: 39, scope: !2333)
!2337 = !DILocation(line: 565, column: 37, scope: !2333)
!2338 = !DILocation(line: 565, column: 19, scope: !2333)
!2339 = !DILocation(line: 566, column: 5, scope: !2333)
!2340 = !DILocation(line: 569, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !351, file: !3, line: 568, column: 8)
!2342 = !DILocation(line: 570, column: 28, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 569, column: 9)
!2344 = !DILocation(line: 570, column: 7, scope: !2343)
!2345 = !DILocation(line: 573, column: 3, scope: !293)
!2346 = !DILocation(line: 576, column: 10, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 575, column: 18)
!2348 = distinct !DILexicalBlock(scope: !293, file: !3, line: 575, column: 7)
!2349 = !DILocation(line: 576, column: 5, scope: !2347)
!2350 = !DILocation(line: 581, column: 3, scope: !2347)
!2351 = !DILocation(line: 575, column: 7, scope: !293)
!2352 = !DILocation(line: 588, column: 11, scope: !293)
!2353 = !DILocation(line: 588, column: 10, scope: !293)
!2354 = !DILocation(line: 588, column: 3, scope: !293)
!2355 = !DILocation(line: 554, column: 24, scope: !2278)
!2356 = distinct !{!2356, !2274, !2357}
!2357 = !DILocation(line: 558, column: 5, scope: !356)
!2358 = !DILocation(line: 436, column: 22, scope: !2134)
!2359 = distinct !{!2359, !2129, !2360}
!2360 = !DILocation(line: 440, column: 3, scope: !324)
!2361 = distinct !{!2361, !2091, !2362}
!2362 = !DILocation(line: 416, column: 3, scope: !314)
!2363 = distinct !DISubprogram(name: "pFL", linkageName: "_Z3pFLP6PointsPiifPldlfiP17pthread_barrier_t", scope: !3, file: !3, line: 599, type: !2364, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!117, !132, !124, !10, !117, !150, !22, !18, !117, !10, !153}
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380}
!2367 = !DILocalVariable(name: "points", arg: 1, scope: !2363, file: !3, line: 599, type: !132)
!2368 = !DILocalVariable(name: "feasible", arg: 2, scope: !2363, file: !3, line: 599, type: !124)
!2369 = !DILocalVariable(name: "numfeasible", arg: 3, scope: !2363, file: !3, line: 599, type: !10)
!2370 = !DILocalVariable(name: "z", arg: 4, scope: !2363, file: !3, line: 600, type: !117)
!2371 = !DILocalVariable(name: "k", arg: 5, scope: !2363, file: !3, line: 600, type: !150)
!2372 = !DILocalVariable(name: "cost", arg: 6, scope: !2363, file: !3, line: 600, type: !22)
!2373 = !DILocalVariable(name: "iter", arg: 7, scope: !2363, file: !3, line: 600, type: !18)
!2374 = !DILocalVariable(name: "e", arg: 8, scope: !2363, file: !3, line: 600, type: !117)
!2375 = !DILocalVariable(name: "pid", arg: 9, scope: !2363, file: !3, line: 601, type: !10)
!2376 = !DILocalVariable(name: "barrier", arg: 10, scope: !2363, file: !3, line: 601, type: !153)
!2377 = !DILocalVariable(name: "i", scope: !2363, file: !3, line: 606, type: !18)
!2378 = !DILocalVariable(name: "x", scope: !2363, file: !3, line: 607, type: !18)
!2379 = !DILocalVariable(name: "change", scope: !2363, file: !3, line: 608, type: !22)
!2380 = !DILocalVariable(name: "numberOfPoints", scope: !2363, file: !3, line: 609, type: !18)
!2381 = !DILocation(line: 0, scope: !2363)
!2382 = !DILocation(line: 604, column: 3, scope: !2363)
!2383 = !DILocation(line: 614, column: 16, scope: !2363)
!2384 = !DILocation(line: 614, column: 28, scope: !2363)
!2385 = !DILocation(line: 614, column: 22, scope: !2363)
!2386 = !DILocation(line: 614, column: 3, scope: !2363)
!2387 = !DILocation(line: 0, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 619, column: 9)
!2389 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 614, column: 31)
!2390 = !DILocation(line: 0, scope: !1791, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 620, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 619, column: 20)
!2393 = !DILocation(line: 0, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 625, column: 5)
!2395 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 625, column: 5)
!2396 = !DILocation(line: 0, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 625, column: 26)
!2398 = !DILocation(line: 0, scope: !2389)
!2399 = !DILocation(line: 619, column: 9, scope: !2389)
!2400 = !DILocation(line: 0, scope: !1780, inlinedAt: !2391)
!2401 = !DILocation(line: 158, column: 8, scope: !1796, inlinedAt: !2391)
!2402 = !DILocation(line: 158, column: 26, scope: !1796, inlinedAt: !2391)
!2403 = !DILocation(line: 158, column: 17, scope: !1796, inlinedAt: !2391)
!2404 = !DILocation(line: 158, column: 31, scope: !1796, inlinedAt: !2391)
!2405 = !DILocation(line: 159, column: 12, scope: !1796, inlinedAt: !2391)
!2406 = !DILocation(line: 160, column: 17, scope: !1796, inlinedAt: !2391)
!2407 = !DILocation(line: 160, column: 16, scope: !1796, inlinedAt: !2391)
!2408 = !DILocation(line: 161, column: 16, scope: !1796, inlinedAt: !2391)
!2409 = !DILocation(line: 157, column: 22, scope: !1791, inlinedAt: !2391)
!2410 = !DILocation(line: 157, column: 13, scope: !1791, inlinedAt: !2391)
!2411 = !DILocation(line: 157, column: 3, scope: !1792, inlinedAt: !2391)
!2412 = distinct !{!2412, !2411, !2413}
!2413 = !DILocation(line: 162, column: 3, scope: !1792, inlinedAt: !2391)
!2414 = !DILocation(line: 623, column: 5, scope: !2389)
!2415 = !DILocation(line: 625, column: 5, scope: !2395)
!2416 = !DILocation(line: 626, column: 12, scope: !2397)
!2417 = !DILocation(line: 627, column: 23, scope: !2397)
!2418 = !DILocation(line: 627, column: 17, scope: !2397)
!2419 = !DILocation(line: 627, column: 14, scope: !2397)
!2420 = !DILocation(line: 625, column: 22, scope: !2394)
!2421 = !DILocation(line: 625, column: 15, scope: !2394)
!2422 = distinct !{!2422, !2415, !2423}
!2423 = !DILocation(line: 628, column: 5, scope: !2395)
!2424 = !DILocation(line: 630, column: 10, scope: !2389)
!2425 = !DILocation(line: 638, column: 5, scope: !2389)
!2426 = distinct !{!2426, !2386, !2427}
!2427 = !DILocation(line: 640, column: 3, scope: !2363)
!2428 = !DILocation(line: 641, column: 9, scope: !2363)
!2429 = !DILocation(line: 641, column: 3, scope: !2363)
!2430 = distinct !DISubprogram(name: "selectfeasible_fast", linkageName: "_Z19selectfeasible_fastP6PointsPPiiiP17pthread_barrier_t", scope: !3, file: !3, line: 644, type: !2431, scopeLine: 645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2434)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!10, !132, !2433, !10, !10, !153}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2453, !2455}
!2435 = !DILocalVariable(name: "points", arg: 1, scope: !2430, file: !3, line: 644, type: !132)
!2436 = !DILocalVariable(name: "feasible", arg: 2, scope: !2430, file: !3, line: 644, type: !2433)
!2437 = !DILocalVariable(name: "kmin", arg: 3, scope: !2430, file: !3, line: 644, type: !10)
!2438 = !DILocalVariable(name: "pid", arg: 4, scope: !2430, file: !3, line: 644, type: !10)
!2439 = !DILocalVariable(name: "barrier", arg: 5, scope: !2430, file: !3, line: 644, type: !153)
!2440 = !DILocalVariable(name: "numfeasible", scope: !2430, file: !3, line: 650, type: !10)
!2441 = !DILocalVariable(name: "accumweight", scope: !2430, file: !3, line: 655, type: !125)
!2442 = !DILocalVariable(name: "totalweight", scope: !2430, file: !3, line: 656, type: !117)
!2443 = !DILocalVariable(name: "k1", scope: !2430, file: !3, line: 668, type: !18)
!2444 = !DILocalVariable(name: "k2", scope: !2430, file: !3, line: 669, type: !18)
!2445 = !DILocalVariable(name: "w", scope: !2430, file: !3, line: 671, type: !117)
!2446 = !DILocalVariable(name: "l", scope: !2430, file: !3, line: 672, type: !10)
!2447 = !DILocalVariable(name: "r", scope: !2430, file: !3, line: 672, type: !10)
!2448 = !DILocalVariable(name: "k", scope: !2430, file: !3, line: 672, type: !10)
!2449 = !DILocalVariable(name: "i", scope: !2450, file: !3, line: 676, type: !10)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 676, column: 5)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 675, column: 35)
!2452 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 675, column: 7)
!2453 = !DILocalVariable(name: "i", scope: !2454, file: !3, line: 684, type: !10)
!2454 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 684, column: 3)
!2455 = !DILocalVariable(name: "i", scope: !2456, file: !3, line: 689, type: !10)
!2456 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 689, column: 3)
!2457 = !DILocation(line: 0, scope: !2430)
!2458 = !DILocation(line: 650, column: 29, scope: !2430)
!2459 = !DILocation(line: 650, column: 21, scope: !2430)
!2460 = !DILocation(line: 651, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 651, column: 7)
!2462 = !DILocation(line: 651, column: 26, scope: !2461)
!2463 = !DILocation(line: 651, column: 22, scope: !2461)
!2464 = !DILocation(line: 651, column: 44, scope: !2461)
!2465 = !DILocation(line: 651, column: 32, scope: !2461)
!2466 = !DILocation(line: 651, column: 31, scope: !2461)
!2467 = !DILocation(line: 651, column: 19, scope: !2461)
!2468 = !DILocation(line: 651, column: 7, scope: !2430)
!2469 = !DILocation(line: 652, column: 35, scope: !2461)
!2470 = !DILocation(line: 652, column: 34, scope: !2461)
!2471 = !DILocation(line: 652, column: 24, scope: !2461)
!2472 = !DILocation(line: 652, column: 5, scope: !2461)
!2473 = !DILocation(line: 653, column: 29, scope: !2430)
!2474 = !DILocation(line: 653, column: 40, scope: !2430)
!2475 = !DILocation(line: 653, column: 22, scope: !2430)
!2476 = !DILocation(line: 653, column: 13, scope: !2430)
!2477 = !DILocation(line: 675, column: 30, scope: !2452)
!2478 = !DILocation(line: 675, column: 19, scope: !2452)
!2479 = !DILocation(line: 675, column: 7, scope: !2430)
!2480 = !DILocation(line: 0, scope: !2450)
!2481 = !DILocation(line: 676, column: 20, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 676, column: 5)
!2483 = !DILocation(line: 676, column: 5, scope: !2450)
!2484 = !DILocation(line: 676, column: 25, scope: !2482)
!2485 = !DILocation(line: 677, column: 22, scope: !2482)
!2486 = !DILocation(line: 677, column: 7, scope: !2482)
!2487 = distinct !{!2487, !2483, !2488, !2489}
!2488 = !DILocation(line: 677, column: 24, scope: !2450)
!2489 = !{!"llvm.loop.isvectorized", i32 1}
!2490 = distinct !{!2490, !1837}
!2491 = distinct !{!2491, !2483, !2488, !2492, !2489}
!2492 = !{!"llvm.loop.unroll.runtime.disable"}
!2493 = !DILocation(line: 681, column: 44, scope: !2430)
!2494 = !DILocation(line: 681, column: 24, scope: !2430)
!2495 = !DILocation(line: 681, column: 16, scope: !2430)
!2496 = !DILocation(line: 682, column: 28, scope: !2430)
!2497 = !DILocation(line: 682, column: 33, scope: !2430)
!2498 = !DILocation(line: 682, column: 18, scope: !2430)
!2499 = !DILocation(line: 0, scope: !2454)
!2500 = !DILocation(line: 684, column: 21, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 684, column: 3)
!2502 = !DILocation(line: 684, column: 3, scope: !2454)
!2503 = !DILocation(line: 685, column: 22, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 684, column: 42)
!2505 = !DILocation(line: 685, column: 54, scope: !2504)
!2506 = !DILocation(line: 685, column: 39, scope: !2504)
!2507 = !DILocation(line: 685, column: 5, scope: !2504)
!2508 = !DILocation(line: 685, column: 20, scope: !2504)
!2509 = !DILocation(line: 684, column: 37, scope: !2501)
!2510 = distinct !{!2510, !1837}
!2511 = !DILocation(line: 687, column: 38, scope: !2430)
!2512 = !DILocation(line: 687, column: 15, scope: !2430)
!2513 = !DILocation(line: 0, scope: !2456)
!2514 = !DILocation(line: 689, column: 18, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 689, column: 3)
!2516 = !DILocation(line: 689, column: 3, scope: !2456)
!2517 = distinct !{!2517, !2502, !2518}
!2518 = !DILocation(line: 686, column: 3, scope: !2454)
!2519 = !DILocation(line: 710, column: 3, scope: !2430)
!2520 = !DILocation(line: 716, column: 3, scope: !2430)
!2521 = !DILocation(line: 690, column: 10, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 689, column: 29)
!2523 = !DILocation(line: 690, column: 19, scope: !2522)
!2524 = !DILocation(line: 690, column: 35, scope: !2522)
!2525 = !DILocation(line: 693, column: 15, scope: !2522)
!2526 = !DILocation(line: 693, column: 7, scope: !2522)
!2527 = !DILocation(line: 694, column: 9, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 694, column: 9)
!2529 = !DILocation(line: 694, column: 24, scope: !2528)
!2530 = !DILocation(line: 694, column: 9, scope: !2522)
!2531 = !DILocation(line: 698, column: 16, scope: !2522)
!2532 = !DILocation(line: 698, column: 5, scope: !2522)
!2533 = !DILocation(line: 699, column: 13, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 698, column: 22)
!2535 = !DILocation(line: 699, column: 16, scope: !2534)
!2536 = !DILocation(line: 700, column: 11, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 700, column: 11)
!2538 = !DILocation(line: 700, column: 26, scope: !2537)
!2539 = !DILocation(line: 698, column: 13, scope: !2522)
!2540 = distinct !{!2540, !2532, !2541}
!2541 = !DILocation(line: 706, column: 5, scope: !2522)
!2542 = !DILocation(line: 0, scope: !2522)
!2543 = !DILocation(line: 689, column: 24, scope: !2515)
!2544 = distinct !{!2544, !2516, !2545}
!2545 = !DILocation(line: 708, column: 3, scope: !2456)
!2546 = !DILocation(line: 717, column: 1, scope: !2430)
!2547 = !DILocation(line: 136, column: 9, scope: !1736, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 814, column: 20, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 814, column: 9)
!2550 = distinct !DILexicalBlock(scope: !363, file: !3, line: 806, column: 20)
!2551 = !DILocation(line: 136, column: 9, scope: !1736, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 787, column: 18, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !363, file: !3, line: 787, column: 7)
!2554 = !DILocation(line: 0, scope: !363)
!2555 = !DILocation(line: 733, column: 10, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !363, file: !3, line: 733, column: 7)
!2557 = !DILocation(line: 733, column: 7, scope: !363)
!2558 = !DILocation(line: 733, column: 32, scope: !2556)
!2559 = !DILocation(line: 733, column: 21, scope: !2556)
!2560 = !DILocation(line: 733, column: 16, scope: !2556)
!2561 = !DILocation(line: 735, column: 33, scope: !363)
!2562 = !DILocation(line: 736, column: 30, scope: !363)
!2563 = !DILocation(line: 739, column: 24, scope: !363)
!2564 = !DILocation(line: 739, column: 27, scope: !363)
!2565 = !DILocation(line: 740, column: 21, scope: !363)
!2566 = !DILocation(line: 740, column: 19, scope: !363)
!2567 = !DILocation(line: 741, column: 16, scope: !363)
!2568 = !DILocation(line: 742, column: 19, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !363, file: !3, line: 742, column: 7)
!2570 = !DILocation(line: 742, column: 11, scope: !2569)
!2571 = !DILocation(line: 742, column: 7, scope: !363)
!2572 = !DILocation(line: 753, column: 3, scope: !363)
!2573 = !DILocation(line: 0, scope: !386)
!2574 = !DILocation(line: 757, column: 22, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !386, file: !3, line: 757, column: 3)
!2576 = !DILocation(line: 757, column: 3, scope: !386)
!2577 = !DILocation(line: 0, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 757, column: 35)
!2579 = !DILocation(line: 0, scope: !1822, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 758, column: 14, scope: !2578)
!2581 = !DILocation(line: 0, scope: !1823, inlinedAt: !2580)
!2582 = !DILocation(line: 761, column: 3, scope: !363)
!2583 = !DILocation(line: 761, column: 13, scope: !363)
!2584 = !DILocation(line: 764, column: 3, scope: !363)
!2585 = !DILocation(line: 0, scope: !388)
!2586 = !DILocation(line: 767, column: 23, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !388, file: !3, line: 767, column: 3)
!2588 = !DILocation(line: 767, column: 21, scope: !2587)
!2589 = !DILocation(line: 767, column: 3, scope: !388)
!2590 = !DILocation(line: 0, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 767, column: 38)
!2592 = !DILocation(line: 0, scope: !1809, inlinedAt: !2580)
!2593 = !DILocation(line: 758, column: 19, scope: !2578)
!2594 = !DILocation(line: 184, column: 3, scope: !1823, inlinedAt: !2580)
!2595 = !DILocation(line: 185, column: 16, scope: !1822, inlinedAt: !2580)
!2596 = !DILocation(line: 185, column: 30, scope: !1822, inlinedAt: !2580)
!2597 = !DILocation(line: 185, column: 28, scope: !1822, inlinedAt: !2580)
!2598 = !DILocation(line: 185, column: 42, scope: !1822, inlinedAt: !2580)
!2599 = !DILocation(line: 185, column: 12, scope: !1822, inlinedAt: !2580)
!2600 = !DILocation(line: 184, column: 19, scope: !1822, inlinedAt: !2580)
!2601 = distinct !{!2601, !2594, !2602}
!2602 = !DILocation(line: 185, column: 69, scope: !1823, inlinedAt: !2580)
!2603 = distinct !{!2603, !1837}
!2604 = !DILocation(line: 759, column: 36, scope: !2578)
!2605 = !DILocation(line: 759, column: 21, scope: !2578)
!2606 = !DILocation(line: 758, column: 14, scope: !2578)
!2607 = !DILocation(line: 758, column: 11, scope: !2578)
!2608 = !DILocation(line: 757, column: 30, scope: !2575)
!2609 = distinct !{!2609, !2576, !2610}
!2610 = !DILocation(line: 760, column: 3, scope: !386)
!2611 = !DILocation(line: 768, column: 12, scope: !2591)
!2612 = !DILocation(line: 768, column: 9, scope: !2591)
!2613 = !DILocation(line: 767, column: 31, scope: !2587)
!2614 = distinct !{!2614, !1837}
!2615 = !DILocation(line: 771, column: 20, scope: !363)
!2616 = !DILocation(line: 771, column: 25, scope: !363)
!2617 = !DILocation(line: 773, column: 15, scope: !392)
!2618 = !DILocation(line: 773, column: 19, scope: !392)
!2619 = !DILocation(line: 773, column: 7, scope: !363)
!2620 = !DILocation(line: 0, scope: !390)
!2621 = !DILocation(line: 775, column: 5, scope: !390)
!2622 = !DILocation(line: 0, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 775, column: 33)
!2624 = distinct !DILexicalBlock(scope: !390, file: !3, line: 775, column: 5)
!2625 = !DILocation(line: 776, column: 21, scope: !2623)
!2626 = !DILocation(line: 776, column: 28, scope: !2623)
!2627 = !DILocation(line: 777, column: 21, scope: !2623)
!2628 = !DILocation(line: 777, column: 26, scope: !2623)
!2629 = !DILocation(line: 775, column: 29, scope: !2624)
!2630 = distinct !{!2630, !2589, !2631}
!2631 = !DILocation(line: 769, column: 3, scope: !388)
!2632 = !DILocation(line: 780, column: 9, scope: !391)
!2633 = !DILocation(line: 775, column: 23, scope: !2624)
!2634 = distinct !{!2634, !2621, !2635}
!2635 = !DILocation(line: 778, column: 5, scope: !390)
!2636 = !DILocation(line: 781, column: 12, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 780, column: 19)
!2638 = distinct !DILexicalBlock(scope: !391, file: !3, line: 780, column: 9)
!2639 = !DILocation(line: 781, column: 7, scope: !2637)
!2640 = !DILocation(line: 782, column: 17, scope: !2637)
!2641 = !DILocation(line: 782, column: 15, scope: !2637)
!2642 = !DILocation(line: 783, column: 5, scope: !2637)
!2643 = !DILocation(line: 787, column: 7, scope: !363)
!2644 = !DILocation(line: 0, scope: !1736, inlinedAt: !2552)
!2645 = !DILocation(line: 136, column: 3, scope: !1736, inlinedAt: !2552)
!2646 = !DILocation(line: 137, column: 13, scope: !1748, inlinedAt: !2552)
!2647 = !DILocation(line: 137, column: 3, scope: !1749, inlinedAt: !2552)
!2648 = !DILocation(line: 0, scope: !1757, inlinedAt: !2552)
!2649 = !DILocation(line: 138, column: 8, scope: !1757, inlinedAt: !2552)
!2650 = !DILocation(line: 138, column: 27, scope: !1757, inlinedAt: !2552)
!2651 = !DILocation(line: 138, column: 31, scope: !1757, inlinedAt: !2552)
!2652 = !DILocation(line: 138, column: 17, scope: !1757, inlinedAt: !2552)
!2653 = !DILocation(line: 138, column: 37, scope: !1757, inlinedAt: !2552)
!2654 = !DILocation(line: 139, column: 20, scope: !1757, inlinedAt: !2552)
!2655 = !DILocation(line: 139, column: 12, scope: !1757, inlinedAt: !2552)
!2656 = !DILocation(line: 139, column: 10, scope: !1757, inlinedAt: !2552)
!2657 = !DILocation(line: 140, column: 20, scope: !1757, inlinedAt: !2552)
!2658 = !DILocation(line: 140, column: 18, scope: !1757, inlinedAt: !2552)
!2659 = !DILocation(line: 141, column: 13, scope: !1757, inlinedAt: !2552)
!2660 = !DILocation(line: 141, column: 5, scope: !1757, inlinedAt: !2552)
!2661 = !DILocation(line: 141, column: 18, scope: !1757, inlinedAt: !2552)
!2662 = !DILocation(line: 137, column: 29, scope: !1748, inlinedAt: !2552)
!2663 = !DILocation(line: 137, column: 22, scope: !1748, inlinedAt: !2552)
!2664 = !DILocation(line: 137, column: 25, scope: !1748, inlinedAt: !2552)
!2665 = distinct !{!2665, !2647, !2666}
!2666 = !DILocation(line: 142, column: 3, scope: !1749, inlinedAt: !2552)
!2667 = !DILocation(line: 147, column: 1, scope: !1736, inlinedAt: !2552)
!2668 = !DILocation(line: 787, column: 18, scope: !2553)
!2669 = !DILocation(line: 788, column: 26, scope: !363)
!2670 = !DILocation(line: 788, column: 10, scope: !363)
!2671 = !DILocation(line: 796, column: 11, scope: !363)
!2672 = !DILocation(line: 796, column: 13, scope: !363)
!2673 = !DILocation(line: 796, column: 3, scope: !363)
!2674 = !DILocation(line: 797, column: 12, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !363, file: !3, line: 796, column: 30)
!2676 = !DILocation(line: 806, column: 10, scope: !363)
!2677 = !DILocation(line: 806, column: 12, scope: !363)
!2678 = !DILocation(line: 806, column: 3, scope: !363)
!2679 = !DILocation(line: 0, scope: !1736, inlinedAt: !2548)
!2680 = !DILocation(line: 0, scope: !1757, inlinedAt: !2548)
!2681 = !DILocation(line: 813, column: 11, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 813, column: 9)
!2683 = !DILocation(line: 813, column: 9, scope: !2550)
!2684 = !DILocation(line: 814, column: 9, scope: !2550)
!2685 = !DILocation(line: 136, column: 3, scope: !1736, inlinedAt: !2548)
!2686 = !DILocation(line: 137, column: 22, scope: !1748, inlinedAt: !2548)
!2687 = !DILocation(line: 137, column: 13, scope: !1748, inlinedAt: !2548)
!2688 = !DILocation(line: 137, column: 3, scope: !1749, inlinedAt: !2548)
!2689 = !DILocation(line: 138, column: 8, scope: !1757, inlinedAt: !2548)
!2690 = !DILocation(line: 138, column: 27, scope: !1757, inlinedAt: !2548)
!2691 = !DILocation(line: 138, column: 31, scope: !1757, inlinedAt: !2548)
!2692 = !DILocation(line: 138, column: 17, scope: !1757, inlinedAt: !2548)
!2693 = !DILocation(line: 138, column: 37, scope: !1757, inlinedAt: !2548)
!2694 = !DILocation(line: 139, column: 20, scope: !1757, inlinedAt: !2548)
!2695 = !DILocation(line: 139, column: 12, scope: !1757, inlinedAt: !2548)
!2696 = !DILocation(line: 139, column: 10, scope: !1757, inlinedAt: !2548)
!2697 = !DILocation(line: 140, column: 20, scope: !1757, inlinedAt: !2548)
!2698 = !DILocation(line: 140, column: 18, scope: !1757, inlinedAt: !2548)
!2699 = !DILocation(line: 141, column: 13, scope: !1757, inlinedAt: !2548)
!2700 = !DILocation(line: 141, column: 5, scope: !1757, inlinedAt: !2548)
!2701 = !DILocation(line: 141, column: 18, scope: !1757, inlinedAt: !2548)
!2702 = !DILocation(line: 137, column: 29, scope: !1748, inlinedAt: !2548)
!2703 = !DILocation(line: 137, column: 25, scope: !1748, inlinedAt: !2548)
!2704 = distinct !{!2704, !2688, !2705}
!2705 = !DILocation(line: 142, column: 3, scope: !1749, inlinedAt: !2548)
!2706 = !DILocation(line: 147, column: 1, scope: !1736, inlinedAt: !2548)
!2707 = !DILocation(line: 814, column: 20, scope: !2549)
!2708 = !DILocation(line: 815, column: 28, scope: !2550)
!2709 = !DILocation(line: 815, column: 12, scope: !2550)
!2710 = !DILocation(line: 816, column: 6, scope: !2550)
!2711 = distinct !{!2711, !2678, !2712}
!2712 = !DILocation(line: 817, column: 3, scope: !363)
!2713 = !DILocation(line: 824, column: 7, scope: !363)
!2714 = !DILocation(line: 826, column: 58, scope: !395)
!2715 = !DILocation(line: 826, column: 21, scope: !395)
!2716 = !DILocation(line: 826, column: 19, scope: !395)
!2717 = !DILocation(line: 0, scope: !394)
!2718 = !DILocation(line: 827, column: 34, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !394, file: !3, line: 827, column: 7)
!2720 = !DILocation(line: 827, column: 24, scope: !2719)
!2721 = !DILocation(line: 827, column: 7, scope: !394)
!2722 = !DILocation(line: 0, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 827, column: 45)
!2724 = !DILocation(line: 828, column: 25, scope: !2723)
!2725 = !DILocation(line: 828, column: 2, scope: !2723)
!2726 = !DILocation(line: 828, column: 32, scope: !2723)
!2727 = !DILocation(line: 827, column: 40, scope: !2719)
!2728 = distinct !{!2728, !2721, !2729}
!2729 = !DILocation(line: 829, column: 7, scope: !394)
!2730 = distinct !{!2730, !1837}
!2731 = !DILocation(line: 833, column: 3, scope: !363)
!2732 = !DILocation(line: 0, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !363, file: !3, line: 836, column: 12)
!2734 = !DILocation(line: 0, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 852, column: 9)
!2736 = !DILocation(line: 836, column: 3, scope: !363)
!2737 = !DILocation(line: 848, column: 24, scope: !2733)
!2738 = !DILocation(line: 848, column: 34, scope: !2733)
!2739 = !DILocation(line: 849, column: 9, scope: !2733)
!2740 = !DILocation(line: 849, column: 39, scope: !2733)
!2741 = !DILocation(line: 849, column: 38, scope: !2733)
!2742 = !DILocation(line: 849, column: 28, scope: !2733)
!2743 = !DILocation(line: 848, column: 12, scope: !2733)
!2744 = !DILocation(line: 852, column: 11, scope: !2735)
!2745 = !DILocation(line: 852, column: 13, scope: !2735)
!2746 = !DILocation(line: 852, column: 32, scope: !2735)
!2747 = !DILocation(line: 852, column: 27, scope: !2735)
!2748 = !DILocation(line: 853, column: 6, scope: !2735)
!2749 = !DILocation(line: 853, column: 21, scope: !2735)
!2750 = !DILocation(line: 853, column: 16, scope: !2735)
!2751 = !DILocation(line: 863, column: 26, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 853, column: 34)
!2753 = !DILocation(line: 863, column: 36, scope: !2752)
!2754 = !DILocation(line: 864, column: 34, scope: !2752)
!2755 = !DILocation(line: 864, column: 33, scope: !2752)
!2756 = !DILocation(line: 864, column: 23, scope: !2752)
!2757 = !DILocation(line: 863, column: 14, scope: !2752)
!2758 = !DILocation(line: 867, column: 9, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 867, column: 9)
!2760 = !DILocation(line: 865, column: 5, scope: !2752)
!2761 = !DILocation(line: 867, column: 11, scope: !2759)
!2762 = !DILocation(line: 867, column: 9, scope: !2733)
!2763 = !DILocation(line: 870, column: 24, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 867, column: 19)
!2765 = !DILocation(line: 870, column: 29, scope: !2764)
!2766 = !DILocation(line: 871, column: 17, scope: !2764)
!2767 = !DILocation(line: 871, column: 23, scope: !2764)
!2768 = !DILocation(line: 871, column: 22, scope: !2764)
!2769 = !DILocation(line: 871, column: 12, scope: !2764)
!2770 = !DILocation(line: 872, column: 5, scope: !2764)
!2771 = !DILocation(line: 873, column: 11, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 873, column: 9)
!2773 = !DILocation(line: 873, column: 9, scope: !2733)
!2774 = !DILocation(line: 876, column: 24, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 873, column: 19)
!2776 = !DILocation(line: 876, column: 29, scope: !2775)
!2777 = !DILocation(line: 877, column: 17, scope: !2775)
!2778 = !DILocation(line: 877, column: 23, scope: !2775)
!2779 = !DILocation(line: 877, column: 22, scope: !2775)
!2780 = !DILocation(line: 877, column: 12, scope: !2775)
!2781 = !DILocation(line: 878, column: 5, scope: !2775)
!2782 = !DILocation(line: 882, column: 21, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 882, column: 9)
!2784 = !DILocation(line: 882, column: 53, scope: !2783)
!2785 = !DILocation(line: 882, column: 43, scope: !2783)
!2786 = !DILocation(line: 887, column: 5, scope: !2733)
!2787 = distinct !{!2787, !2736, !2788}
!2788 = !DILocation(line: 889, column: 3, scope: !363)
!2789 = !DILocation(line: 892, column: 7, scope: !363)
!2790 = !DILocation(line: 893, column: 10, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 892, column: 16)
!2792 = distinct !DILexicalBlock(scope: !363, file: !3, line: 892, column: 7)
!2793 = !DILocation(line: 893, column: 5, scope: !2791)
!2794 = !DILocation(line: 894, column: 10, scope: !2791)
!2795 = !DILocation(line: 894, column: 5, scope: !2791)
!2796 = !DILocation(line: 895, column: 15, scope: !2791)
!2797 = !DILocation(line: 895, column: 13, scope: !2791)
!2798 = !DILocation(line: 896, column: 3, scope: !2791)
!2799 = !DILocation(line: 898, column: 10, scope: !363)
!2800 = !DILocation(line: 898, column: 3, scope: !363)
!2801 = !DILocation(line: 899, column: 1, scope: !363)
!2802 = distinct !DISubprogram(name: "contcenters", linkageName: "_Z11contcentersP6Points", scope: !3, file: !3, line: 902, type: !2803, scopeLine: 903, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!10, !132}
!2805 = !{!2806, !2807, !2808, !2809}
!2806 = !DILocalVariable(name: "points", arg: 1, scope: !2802, file: !3, line: 902, type: !132)
!2807 = !DILocalVariable(name: "i", scope: !2802, file: !3, line: 904, type: !18)
!2808 = !DILocalVariable(name: "ii", scope: !2802, file: !3, line: 904, type: !18)
!2809 = !DILocalVariable(name: "relweight", scope: !2802, file: !3, line: 905, type: !117)
!2810 = !DILocation(line: 0, scope: !2802)
!2811 = !DILocation(line: 907, column: 22, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 907, column: 3)
!2813 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 907, column: 3)
!2814 = !DILocation(line: 907, column: 13, scope: !2812)
!2815 = !DILocation(line: 907, column: 3, scope: !2813)
!2816 = !DILocation(line: 0, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 909, column: 9)
!2818 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 907, column: 31)
!2819 = !DILocation(line: 0, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 912, column: 7)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 912, column: 7)
!2822 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 909, column: 35)
!2823 = !DILocation(line: 909, column: 22, scope: !2817)
!2824 = !DILocation(line: 909, column: 29, scope: !2817)
!2825 = !DILocation(line: 909, column: 9, scope: !2818)
!2826 = !DILocation(line: 910, column: 48, scope: !2822)
!2827 = !DILocation(line: 910, column: 70, scope: !2822)
!2828 = !DILocation(line: 910, column: 55, scope: !2822)
!2829 = !DILocation(line: 911, column: 38, scope: !2822)
!2830 = !DILocation(line: 912, column: 28, scope: !2820)
!2831 = !DILocation(line: 912, column: 19, scope: !2820)
!2832 = !DILocation(line: 912, column: 7, scope: !2821)
!2833 = !DILocation(line: 0, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 912, column: 38)
!2835 = !DILocation(line: 912, column: 34, scope: !2820)
!2836 = !DILocation(line: 913, column: 2, scope: !2834)
!2837 = !DILocation(line: 913, column: 42, scope: !2834)
!2838 = !{!2839}
!2839 = distinct !{!2839, !2840}
!2840 = distinct !{!2840, !"LVerDomain"}
!2841 = !{!2842}
!2842 = distinct !{!2842, !2840}
!2843 = !DILocation(line: 915, column: 4, scope: !2834)
!2844 = !DILocation(line: 915, column: 26, scope: !2834)
!2845 = !DILocation(line: 914, column: 42, scope: !2834)
!2846 = distinct !{!2846, !2832, !2847, !2489}
!2847 = !DILocation(line: 916, column: 7, scope: !2821)
!2848 = distinct !{!2848, !2832, !2847, !2489}
!2849 = !DILocation(line: 917, column: 61, scope: !2822)
!2850 = !DILocation(line: 917, column: 45, scope: !2822)
!2851 = !DILocation(line: 918, column: 5, scope: !2822)
!2852 = !DILocation(line: 907, column: 27, scope: !2812)
!2853 = distinct !{!2853, !2815, !2854}
!2854 = !DILocation(line: 919, column: 3, scope: !2813)
!2855 = !DILocation(line: 921, column: 3, scope: !2802)
!2856 = distinct !DISubprogram(name: "copycenters", linkageName: "_Z11copycentersP6PointsS0_Pll", scope: !3, file: !3, line: 925, type: !2857, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{null, !132, !132, !150, !18}
!2859 = !{!2860, !2861, !2862, !2863, !2864, !2865, !2866}
!2860 = !DILocalVariable(name: "points", arg: 1, scope: !2856, file: !3, line: 925, type: !132)
!2861 = !DILocalVariable(name: "centers", arg: 2, scope: !2856, file: !3, line: 925, type: !132)
!2862 = !DILocalVariable(name: "centerIDs", arg: 3, scope: !2856, file: !3, line: 925, type: !150)
!2863 = !DILocalVariable(name: "offset", arg: 4, scope: !2856, file: !3, line: 925, type: !18)
!2864 = !DILocalVariable(name: "i", scope: !2856, file: !3, line: 927, type: !18)
!2865 = !DILocalVariable(name: "k", scope: !2856, file: !3, line: 928, type: !18)
!2866 = !DILocalVariable(name: "is_a_median", scope: !2856, file: !3, line: 930, type: !126)
!2867 = !DILocation(line: 0, scope: !2856)
!2868 = !DILocation(line: 930, column: 47, scope: !2856)
!2869 = !DILocation(line: 930, column: 32, scope: !2856)
!2870 = !DILocation(line: 933, column: 18, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 933, column: 3)
!2872 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 933, column: 3)
!2873 = !DILocation(line: 933, column: 3, scope: !2872)
!2874 = !DILocation(line: 937, column: 14, scope: !2856)
!2875 = !DILocation(line: 940, column: 3, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 940, column: 3)
!2877 = !DILocation(line: 0, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 933, column: 39)
!2879 = !DILocation(line: 934, column: 30, scope: !2878)
!2880 = !DILocation(line: 934, column: 5, scope: !2878)
!2881 = !DILocation(line: 934, column: 38, scope: !2878)
!2882 = !DILocation(line: 933, column: 34, scope: !2871)
!2883 = distinct !{!2883, !2873, !2884}
!2884 = !DILocation(line: 935, column: 3, scope: !2872)
!2885 = distinct !{!2885, !1837}
!2886 = !DILocation(line: 0, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 941, column: 27)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 941, column: 10)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 940, column: 39)
!2890 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 940, column: 3)
!2891 = !DILocation(line: 941, column: 10, scope: !2888)
!2892 = !DILocation(line: 941, column: 10, scope: !2889)
!2893 = !DILocation(line: 942, column: 24, scope: !2887)
!2894 = !DILocation(line: 942, column: 29, scope: !2887)
!2895 = !DILocation(line: 942, column: 44, scope: !2887)
!2896 = !DILocation(line: 942, column: 49, scope: !2887)
!2897 = !DILocation(line: 942, column: 64, scope: !2887)
!2898 = !DILocation(line: 942, column: 56, scope: !2887)
!2899 = !DILocation(line: 942, column: 68, scope: !2887)
!2900 = !DILocation(line: 942, column: 7, scope: !2887)
!2901 = !DILocation(line: 943, column: 38, scope: !2887)
!2902 = !DILocation(line: 943, column: 43, scope: !2887)
!2903 = !DILocation(line: 943, column: 16, scope: !2887)
!2904 = !DILocation(line: 943, column: 7, scope: !2887)
!2905 = !DILocation(line: 943, column: 28, scope: !2887)
!2906 = !DILocation(line: 944, column: 24, scope: !2887)
!2907 = !DILocation(line: 944, column: 7, scope: !2887)
!2908 = !DILocation(line: 944, column: 20, scope: !2887)
!2909 = !DILocation(line: 945, column: 8, scope: !2887)
!2910 = !DILocation(line: 940, column: 28, scope: !2890)
!2911 = !DILocation(line: 946, column: 5, scope: !2887)
!2912 = !DILocation(line: 940, column: 34, scope: !2890)
!2913 = !DILocation(line: 940, column: 18, scope: !2890)
!2914 = distinct !{!2914, !2875, !2915}
!2915 = !DILocation(line: 947, column: 3, scope: !2876)
!2916 = !DILocation(line: 949, column: 16, scope: !2856)
!2917 = !DILocation(line: 951, column: 3, scope: !2856)
!2918 = !DILocation(line: 952, column: 1, scope: !2856)
!2919 = distinct !DISubprogram(name: "localSearchSub", linkageName: "_Z14localSearchSubPv", scope: !3, file: !3, line: 964, type: !2920, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!21, !21}
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "arg_", arg: 1, scope: !2919, file: !3, line: 964, type: !21)
!2924 = !DILocalVariable(name: "arg", scope: !2919, file: !3, line: 966, type: !128)
!2925 = !DILocation(line: 0, scope: !2919)
!2926 = !DILocation(line: 967, column: 17, scope: !2919)
!2927 = !{!2928, !1753, i64 0}
!2928 = !{!"_ZTS14pkmedian_arg_t", !1753, i64 0, !1699, i64 8, !1699, i64 16, !1753, i64 24, !1752, i64 32, !1753, i64 40}
!2929 = !DILocation(line: 967, column: 29, scope: !2919)
!2930 = !{!2928, !1699, i64 8}
!2931 = !DILocation(line: 967, column: 39, scope: !2919)
!2932 = !{!2928, !1699, i64 16}
!2933 = !DILocation(line: 967, column: 49, scope: !2919)
!2934 = !{!2928, !1753, i64 24}
!2935 = !DILocation(line: 967, column: 61, scope: !2919)
!2936 = !{!2928, !1752, i64 32}
!2937 = !DILocation(line: 967, column: 70, scope: !2919)
!2938 = !{!2928, !1753, i64 40}
!2939 = !DILocation(line: 967, column: 3, scope: !2919)
!2940 = !DILocation(line: 969, column: 3, scope: !2919)
!2941 = distinct !DISubprogram(name: "localSearch", linkageName: "_Z11localSearchP6PointsllPl", scope: !3, file: !3, line: 972, type: !2942, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !132, !18, !18, !150}
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2953, !2954, !2956}
!2945 = !DILocalVariable(name: "points", arg: 1, scope: !2941, file: !3, line: 972, type: !132)
!2946 = !DILocalVariable(name: "kmin", arg: 2, scope: !2941, file: !3, line: 972, type: !18)
!2947 = !DILocalVariable(name: "kmax", arg: 3, scope: !2941, file: !3, line: 972, type: !18)
!2948 = !DILocalVariable(name: "kfinal", arg: 4, scope: !2941, file: !3, line: 972, type: !150)
!2949 = !DILocalVariable(name: "barrier", scope: !2941, file: !3, line: 977, type: !154)
!2950 = !DILocalVariable(name: "threads", scope: !2941, file: !3, line: 981, type: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !33, line: 27, baseType: !164)
!2953 = !DILocalVariable(name: "arg", scope: !2941, file: !3, line: 982, type: !128)
!2954 = !DILocalVariable(name: "i", scope: !2955, file: !3, line: 985, type: !10)
!2955 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 985, column: 5)
!2956 = !DILocalVariable(name: "i", scope: !2957, file: !3, line: 1000, type: !10)
!2957 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1000, column: 5)
!2958 = !DILocation(line: 0, scope: !2941)
!2959 = !DILocation(line: 977, column: 5, scope: !2941)
!2960 = !DILocation(line: 977, column: 23, scope: !2941)
!2961 = !DILocation(line: 979, column: 40, scope: !2941)
!2962 = !DILocation(line: 979, column: 5, scope: !2941)
!2963 = !DILocation(line: 981, column: 40, scope: !2941)
!2964 = !DILocation(line: 981, column: 26, scope: !2941)
!2965 = !DILocation(line: 982, column: 27, scope: !2941)
!2966 = !DILocation(line: 0, scope: !2955)
!2967 = !DILocation(line: 985, column: 23, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 985, column: 5)
!2969 = !DILocation(line: 985, column: 5, scope: !2955)
!2970 = !DILocation(line: 0, scope: !2957)
!2971 = !DILocation(line: 1000, column: 24, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 1000, column: 5)
!2973 = !DILocation(line: 1000, column: 5, scope: !2957)
!2974 = !DILocation(line: 986, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 985, column: 38)
!2976 = !DILocation(line: 986, column: 14, scope: !2975)
!2977 = !DILocation(line: 986, column: 21, scope: !2975)
!2978 = !DILocation(line: 987, column: 14, scope: !2975)
!2979 = !DILocation(line: 987, column: 19, scope: !2975)
!2980 = !DILocation(line: 988, column: 14, scope: !2975)
!2981 = !DILocation(line: 988, column: 19, scope: !2975)
!2982 = !DILocation(line: 989, column: 14, scope: !2975)
!2983 = !DILocation(line: 989, column: 18, scope: !2975)
!2984 = !DILocation(line: 990, column: 14, scope: !2975)
!2985 = !DILocation(line: 990, column: 21, scope: !2975)
!2986 = !DILocation(line: 992, column: 14, scope: !2975)
!2987 = !DILocation(line: 992, column: 22, scope: !2975)
!2988 = !DILocation(line: 994, column: 29, scope: !2975)
!2989 = !DILocation(line: 994, column: 59, scope: !2975)
!2990 = !DILocation(line: 994, column: 7, scope: !2975)
!2991 = !DILocation(line: 985, column: 33, scope: !2968)
!2992 = !DILocation(line: 985, column: 25, scope: !2968)
!2993 = distinct !{!2993, !2969, !2994}
!2994 = !DILocation(line: 998, column: 5, scope: !2955)
!2995 = !DILocation(line: 1002, column: 20, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 1000, column: 38)
!2997 = !DILocation(line: 1002, column: 7, scope: !2996)
!2998 = !DILocation(line: 1000, column: 34, scope: !2972)
!2999 = !DILocation(line: 1000, column: 26, scope: !2972)
!3000 = distinct !{!3000, !2973, !3001}
!3001 = !DILocation(line: 1004, column: 5, scope: !2957)
!3002 = !DILocation(line: 1006, column: 5, scope: !2941)
!3003 = !DILocation(line: 1007, column: 5, scope: !2941)
!3004 = !DILocation(line: 1009, column: 5, scope: !2941)
!3005 = !DILocation(line: 1017, column: 1, scope: !2941)
!3006 = !{!3007}
!3007 = !{i64 2, i64 3, i1 false}
!3008 = distinct !DISubprogram(name: "outcenterIDs", linkageName: "_Z12outcenterIDsP6PointsPlPc", scope: !3, file: !3, line: 1083, type: !3009, scopeLine: 1083, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !132, !150, !177}
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017, !3019, !3021}
!3012 = !DILocalVariable(name: "centers", arg: 1, scope: !3008, file: !3, line: 1083, type: !132)
!3013 = !DILocalVariable(name: "centerIDs", arg: 2, scope: !3008, file: !3, line: 1083, type: !150)
!3014 = !DILocalVariable(name: "outfile", arg: 3, scope: !3008, file: !3, line: 1083, type: !177)
!3015 = !DILocalVariable(name: "fp", scope: !3008, file: !3, line: 1084, type: !1097)
!3016 = !DILocalVariable(name: "is_a_median", scope: !3008, file: !3, line: 1089, type: !124)
!3017 = !DILocalVariable(name: "i", scope: !3018, file: !3, line: 1090, type: !10)
!3018 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1090, column: 3)
!3019 = !DILocalVariable(name: "i", scope: !3020, file: !3, line: 1094, type: !10)
!3020 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1094, column: 3)
!3021 = !DILocalVariable(name: "k", scope: !3022, file: !3, line: 1098, type: !10)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 1098, column: 7)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1095, column: 26)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 1095, column: 9)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1094, column: 43)
!3026 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 1094, column: 3)
!3027 = !DILocation(line: 0, scope: !3008)
!3028 = !DILocation(line: 1084, column: 14, scope: !3008)
!3029 = !DILocation(line: 1085, column: 9, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1085, column: 7)
!3031 = !DILocation(line: 1085, column: 7, scope: !3008)
!3032 = !DILocation(line: 1086, column: 13, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 1085, column: 18)
!3034 = !DILocation(line: 1086, column: 5, scope: !3033)
!3035 = !DILocation(line: 1087, column: 5, scope: !3033)
!3036 = !DILocation(line: 1089, column: 58, scope: !3008)
!3037 = !DILocation(line: 1089, column: 28, scope: !3008)
!3038 = !DILocation(line: 1089, column: 22, scope: !3008)
!3039 = !DILocation(line: 0, scope: !3018)
!3040 = !DILocation(line: 1090, column: 20, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1090, column: 3)
!3042 = !DILocation(line: 1090, column: 3, scope: !3018)
!3043 = !DILocation(line: 0, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 1090, column: 42)
!3045 = !DILocation(line: 1091, column: 31, scope: !3044)
!3046 = !DILocation(line: 1091, column: 5, scope: !3044)
!3047 = !DILocation(line: 1091, column: 39, scope: !3044)
!3048 = !DILocation(line: 1090, column: 37, scope: !3041)
!3049 = distinct !{!3049, !1837}
!3050 = !DILocation(line: 0, scope: !3020)
!3051 = !DILocation(line: 1094, column: 3, scope: !3020)
!3052 = !DILocation(line: 0, scope: !3023)
!3053 = !DILocation(line: 0, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 1098, column: 7)
!3055 = distinct !{!3055, !3042, !3056}
!3056 = !DILocation(line: 1092, column: 3, scope: !3018)
!3057 = !DILocation(line: 1104, column: 3, scope: !3008)
!3058 = !DILocation(line: 1105, column: 1, scope: !3008)
!3059 = !DILocation(line: 1095, column: 9, scope: !3024)
!3060 = !DILocation(line: 1095, column: 9, scope: !3025)
!3061 = !DILocation(line: 1096, column: 27, scope: !3023)
!3062 = !DILocation(line: 1096, column: 7, scope: !3023)
!3063 = !DILocation(line: 1097, column: 37, scope: !3023)
!3064 = !DILocation(line: 1097, column: 42, scope: !3023)
!3065 = !DILocation(line: 1097, column: 28, scope: !3023)
!3066 = !DILocation(line: 1097, column: 7, scope: !3023)
!3067 = !DILocation(line: 0, scope: !3022)
!3068 = !DILocation(line: 1098, column: 36, scope: !3054)
!3069 = !DILocation(line: 1098, column: 25, scope: !3054)
!3070 = !DILocation(line: 1098, column: 7, scope: !3022)
!3071 = !DILocation(line: 1101, column: 7, scope: !3023)
!3072 = !DILocation(line: 1094, column: 32, scope: !3026)
!3073 = !DILocation(line: 1102, column: 5, scope: !3023)
!3074 = !DILocation(line: 1099, column: 31, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 1098, column: 47)
!3076 = !DILocation(line: 1099, column: 36, scope: !3075)
!3077 = !DILocation(line: 1099, column: 22, scope: !3075)
!3078 = !DILocation(line: 1099, column: 2, scope: !3075)
!3079 = !DILocation(line: 1098, column: 42, scope: !3054)
!3080 = distinct !{!3080, !3070, !3081}
!3081 = !DILocation(line: 1100, column: 7, scope: !3022)
!3082 = !DILocation(line: 1094, column: 38, scope: !3026)
!3083 = !DILocation(line: 1094, column: 21, scope: !3026)
!3084 = distinct !{!3084, !3051, !3085}
!3085 = !DILocation(line: 1103, column: 3, scope: !3020)
!3086 = distinct !DISubprogram(name: "streamCluster", linkageName: "_Z13streamClusterP7PStreamllillPc", scope: !3, file: !3, line: 1107, type: !3087, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3106)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{null, !3089, !18, !18, !10, !18, !18, !177}
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "PStream", file: !3, line: 1019, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3091, vtableHolder: !3090, identifier: "_ZTS7PStream")
!3091 = !{!3092, !3095, !3099, !3102, !3103}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$PStream", scope: !3, file: !3, baseType: !3093, size: 64, flags: DIFlagArtificial)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !1004, size: 64)
!3095 = !DISubprogram(name: "read", linkageName: "_ZN7PStream4readEPfii", scope: !3090, file: !3, line: 1021, type: !3096, scopeLine: 1021, containingType: !3090, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!218, !3098, !125, !10, !10}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3099 = !DISubprogram(name: "ferror", linkageName: "_ZN7PStream6ferrorEv", scope: !3090, file: !3, line: 1022, type: !3100, scopeLine: 1022, containingType: !3090, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!10, !3098}
!3102 = !DISubprogram(name: "feof", linkageName: "_ZN7PStream4feofEv", scope: !3090, file: !3, line: 1023, type: !3100, scopeLine: 1023, containingType: !3090, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!3103 = !DISubprogram(name: "~PStream", scope: !3090, file: !3, line: 1024, type: !3104, scopeLine: 1024, containingType: !3090, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{null, !3098}
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3120, !3121, !3123, !3124, !3125, !3127}
!3107 = !DILocalVariable(name: "stream", arg: 1, scope: !3086, file: !3, line: 1107, type: !3089)
!3108 = !DILocalVariable(name: "kmin", arg: 2, scope: !3086, file: !3, line: 1108, type: !18)
!3109 = !DILocalVariable(name: "kmax", arg: 3, scope: !3086, file: !3, line: 1108, type: !18)
!3110 = !DILocalVariable(name: "dim", arg: 4, scope: !3086, file: !3, line: 1108, type: !10)
!3111 = !DILocalVariable(name: "chunksize", arg: 5, scope: !3086, file: !3, line: 1109, type: !18)
!3112 = !DILocalVariable(name: "centersize", arg: 6, scope: !3086, file: !3, line: 1109, type: !18)
!3113 = !DILocalVariable(name: "outfile", arg: 7, scope: !3086, file: !3, line: 1109, type: !177)
!3114 = !DILocalVariable(name: "block", scope: !3086, file: !3, line: 1111, type: !125)
!3115 = !DILocalVariable(name: "centerBlock", scope: !3086, file: !3, line: 1112, type: !125)
!3116 = !DILocalVariable(name: "centerIDs", scope: !3086, file: !3, line: 1113, type: !150)
!3117 = !DILocalVariable(name: "points", scope: !3086, file: !3, line: 1120, type: !133)
!3118 = !DILocalVariable(name: "i", scope: !3119, file: !3, line: 1124, type: !10)
!3119 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1124, column: 3)
!3120 = !DILocalVariable(name: "centers", scope: !3086, file: !3, line: 1128, type: !133)
!3121 = !DILocalVariable(name: "i", scope: !3122, file: !3, line: 1133, type: !10)
!3122 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1133, column: 3)
!3123 = !DILocalVariable(name: "IDoffset", scope: !3086, file: !3, line: 1138, type: !18)
!3124 = !DILocalVariable(name: "kfinal", scope: !3086, file: !3, line: 1139, type: !18)
!3125 = !DILocalVariable(name: "numRead", scope: !3126, file: !3, line: 1142, type: !218)
!3126 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1140, column: 12)
!3127 = !DILocalVariable(name: "i", scope: !3128, file: !3, line: 1151, type: !10)
!3128 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 1151, column: 5)
!3129 = !DILocation(line: 0, scope: !3086)
!3130 = !DILocation(line: 1111, column: 44, scope: !3086)
!3131 = !DILocation(line: 1111, column: 43, scope: !3086)
!3132 = !DILocation(line: 1111, column: 47, scope: !3086)
!3133 = !DILocation(line: 1111, column: 26, scope: !3086)
!3134 = !DILocation(line: 1111, column: 18, scope: !3086)
!3135 = !DILocation(line: 1112, column: 49, scope: !3086)
!3136 = !DILocation(line: 1112, column: 53, scope: !3086)
!3137 = !DILocation(line: 1112, column: 32, scope: !3086)
!3138 = !DILocation(line: 1112, column: 24, scope: !3086)
!3139 = !DILocation(line: 1113, column: 49, scope: !3086)
!3140 = !DILocation(line: 1113, column: 28, scope: !3086)
!3141 = !DILocation(line: 1113, column: 21, scope: !3086)
!3142 = !DILocation(line: 1115, column: 13, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1115, column: 7)
!3144 = !DILocation(line: 1115, column: 7, scope: !3086)
!3145 = !DILocation(line: 1116, column: 13, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1115, column: 23)
!3147 = !DILocation(line: 1116, column: 5, scope: !3146)
!3148 = !DILocation(line: 1117, column: 5, scope: !3146)
!3149 = !DILocation(line: 1120, column: 3, scope: !3086)
!3150 = !DILocation(line: 1120, column: 10, scope: !3086)
!3151 = !DILocation(line: 1121, column: 10, scope: !3086)
!3152 = !DILocation(line: 1121, column: 14, scope: !3086)
!3153 = !DILocation(line: 1122, column: 10, scope: !3086)
!3154 = !DILocation(line: 1122, column: 14, scope: !3086)
!3155 = !DILocation(line: 1123, column: 39, scope: !3086)
!3156 = !DILocation(line: 1123, column: 23, scope: !3086)
!3157 = !DILocation(line: 1123, column: 10, scope: !3086)
!3158 = !DILocation(line: 1123, column: 12, scope: !3086)
!3159 = !DILocation(line: 0, scope: !3119)
!3160 = !DILocation(line: 1124, column: 21, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 1124, column: 3)
!3162 = !DILocation(line: 1124, column: 3, scope: !3119)
!3163 = !DILocation(line: 1125, column: 33, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 1124, column: 40)
!3165 = !DILocation(line: 1125, column: 26, scope: !3164)
!3166 = !DILocation(line: 1125, column: 17, scope: !3164)
!3167 = !DILocation(line: 1125, column: 23, scope: !3164)
!3168 = !DILocation(line: 1124, column: 35, scope: !3161)
!3169 = distinct !{!3169, !1837}
!3170 = !DILocation(line: 1128, column: 3, scope: !3086)
!3171 = !DILocation(line: 1128, column: 10, scope: !3086)
!3172 = !DILocation(line: 1129, column: 11, scope: !3086)
!3173 = !DILocation(line: 1129, column: 15, scope: !3086)
!3174 = !DILocation(line: 1130, column: 41, scope: !3086)
!3175 = !DILocation(line: 1130, column: 24, scope: !3086)
!3176 = !DILocation(line: 1130, column: 11, scope: !3086)
!3177 = !DILocation(line: 1130, column: 13, scope: !3086)
!3178 = !DILocation(line: 1131, column: 11, scope: !3086)
!3179 = !DILocation(line: 1131, column: 15, scope: !3086)
!3180 = !DILocation(line: 0, scope: !3122)
!3181 = !DILocation(line: 1133, column: 20, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1133, column: 3)
!3183 = !DILocation(line: 1133, column: 3, scope: !3122)
!3184 = distinct !{!3184, !3162, !3185}
!3185 = !DILocation(line: 1126, column: 3, scope: !3119)
!3186 = !DILocation(line: 1134, column: 40, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 1133, column: 40)
!3188 = !DILocation(line: 1134, column: 27, scope: !3187)
!3189 = !DILocation(line: 1134, column: 18, scope: !3187)
!3190 = !DILocation(line: 1134, column: 24, scope: !3187)
!3191 = !DILocation(line: 1135, column: 18, scope: !3187)
!3192 = !DILocation(line: 1135, column: 25, scope: !3187)
!3193 = !DILocation(line: 1139, column: 3, scope: !3086)
!3194 = !DILocation(line: 0, scope: !3126)
!3195 = !DILocation(line: 0, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 1145, column: 9)
!3197 = !DILocation(line: 1140, column: 3, scope: !3086)
!3198 = !DILocation(line: 1133, column: 35, scope: !3182)
!3199 = distinct !{!3199, !3183, !3200}
!3200 = !DILocation(line: 1136, column: 3, scope: !3122)
!3201 = !DILocation(line: 1142, column: 31, scope: !3126)
!3202 = !{!3203, !3203, i64 0}
!3203 = !{!"vtable pointer", !1701, i64 0}
!3204 = !DILocation(line: 1143, column: 13, scope: !3126)
!3205 = !DILocation(line: 1143, column: 5, scope: !3126)
!3206 = !DILocation(line: 1145, column: 17, scope: !3196)
!3207 = !DILocation(line: 1145, column: 9, scope: !3196)
!3208 = !DILocation(line: 1145, column: 26, scope: !3196)
!3209 = !DILocation(line: 1145, column: 37, scope: !3196)
!3210 = !DILocation(line: 1145, column: 63, scope: !3196)
!3211 = !DILocation(line: 1145, column: 75, scope: !3196)
!3212 = !DILocation(line: 1145, column: 67, scope: !3196)
!3213 = !DILocation(line: 1145, column: 9, scope: !3126)
!3214 = !DILocation(line: 1146, column: 15, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 1145, column: 84)
!3216 = !DILocation(line: 1146, column: 7, scope: !3215)
!3217 = !DILocation(line: 1147, column: 7, scope: !3215)
!3218 = !DILocation(line: 1150, column: 16, scope: !3126)
!3219 = !DILocation(line: 0, scope: !3128)
!3220 = !DILocation(line: 1151, column: 23, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1151, column: 5)
!3222 = !DILocation(line: 1151, column: 5, scope: !3128)
!3223 = !DILocation(line: 0, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 1151, column: 43)
!3225 = !DILocation(line: 1152, column: 19, scope: !3224)
!3226 = !DILocation(line: 1152, column: 26, scope: !3224)
!3227 = !DILocation(line: 1151, column: 38, scope: !3221)
!3228 = distinct !{!3228, !1837}
!3229 = !DILocation(line: 1155, column: 32, scope: !3126)
!3230 = !DILocation(line: 1155, column: 23, scope: !3126)
!3231 = !DILocation(line: 1156, column: 24, scope: !3126)
!3232 = !DILocation(line: 1156, column: 15, scope: !3126)
!3233 = !DILocation(line: 1157, column: 43, scope: !3126)
!3234 = !DILocation(line: 1157, column: 26, scope: !3126)
!3235 = !DILocation(line: 1157, column: 18, scope: !3126)
!3236 = !DILocation(line: 1159, column: 5, scope: !3126)
!3237 = !DILocation(line: 1161, column: 13, scope: !3126)
!3238 = !DILocation(line: 1161, column: 5, scope: !3126)
!3239 = !DILocation(line: 0, scope: !2802, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 1162, column: 5, scope: !3126)
!3241 = !DILocation(line: 907, column: 22, scope: !2812, inlinedAt: !3240)
!3242 = !DILocation(line: 907, column: 13, scope: !2812, inlinedAt: !3240)
!3243 = !DILocation(line: 907, column: 3, scope: !2813, inlinedAt: !3240)
!3244 = !DILocation(line: 0, scope: !2817, inlinedAt: !3240)
!3245 = !DILocation(line: 0, scope: !2820, inlinedAt: !3240)
!3246 = !DILocation(line: 0, scope: !2821, inlinedAt: !3240)
!3247 = !DILocation(line: 909, column: 22, scope: !2817, inlinedAt: !3240)
!3248 = !DILocation(line: 909, column: 29, scope: !2817, inlinedAt: !3240)
!3249 = !DILocation(line: 909, column: 9, scope: !2818, inlinedAt: !3240)
!3250 = !DILocation(line: 910, column: 48, scope: !2822, inlinedAt: !3240)
!3251 = !DILocation(line: 910, column: 70, scope: !2822, inlinedAt: !3240)
!3252 = !DILocation(line: 910, column: 55, scope: !2822, inlinedAt: !3240)
!3253 = !DILocation(line: 911, column: 38, scope: !2822, inlinedAt: !3240)
!3254 = !DILocation(line: 912, column: 7, scope: !2821, inlinedAt: !3240)
!3255 = !DILocation(line: 0, scope: !2834, inlinedAt: !3240)
!3256 = !DILocation(line: 912, column: 34, scope: !2820, inlinedAt: !3240)
!3257 = !DILocation(line: 913, column: 2, scope: !2834, inlinedAt: !3240)
!3258 = !DILocation(line: 913, column: 42, scope: !2834, inlinedAt: !3240)
!3259 = !{!3260}
!3260 = distinct !{!3260, !3261}
!3261 = distinct !{!3261, !"LVerDomain"}
!3262 = !{!3263}
!3263 = distinct !{!3263, !3261}
!3264 = !DILocation(line: 915, column: 4, scope: !2834, inlinedAt: !3240)
!3265 = !DILocation(line: 915, column: 26, scope: !2834, inlinedAt: !3240)
!3266 = !DILocation(line: 914, column: 42, scope: !2834, inlinedAt: !3240)
!3267 = distinct !{!3267, !3254, !3268, !2489}
!3268 = !DILocation(line: 916, column: 7, scope: !2821, inlinedAt: !3240)
!3269 = !DILocation(line: 912, column: 19, scope: !2820, inlinedAt: !3240)
!3270 = distinct !{!3270, !3254, !3268, !2489}
!3271 = !DILocation(line: 917, column: 61, scope: !2822, inlinedAt: !3240)
!3272 = !DILocation(line: 917, column: 45, scope: !2822, inlinedAt: !3240)
!3273 = !DILocation(line: 918, column: 5, scope: !2822, inlinedAt: !3240)
!3274 = !DILocation(line: 907, column: 27, scope: !2812, inlinedAt: !3240)
!3275 = distinct !{!3275, !3243, !3276}
!3276 = !DILocation(line: 919, column: 3, scope: !2813, inlinedAt: !3240)
!3277 = !DILocation(line: 1163, column: 9, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 1163, column: 9)
!3279 = !DILocation(line: 1163, column: 26, scope: !3278)
!3280 = !DILocation(line: 1163, column: 16, scope: !3278)
!3281 = !DILocation(line: 1163, column: 30, scope: !3278)
!3282 = !DILocation(line: 1163, column: 9, scope: !3126)
!3283 = distinct !{!3283, !3222, !3284}
!3284 = !DILocation(line: 1153, column: 5, scope: !3128)
!3285 = !DILocation(line: 1165, column: 15, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 1163, column: 45)
!3287 = !DILocation(line: 1165, column: 7, scope: !3286)
!3288 = !DILocation(line: 1166, column: 7, scope: !3286)
!3289 = !DILocation(line: 0, scope: !2856, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 1173, column: 5, scope: !3126)
!3291 = !DILocation(line: 930, column: 32, scope: !2856, inlinedAt: !3290)
!3292 = !DILocation(line: 933, column: 3, scope: !2872, inlinedAt: !3290)
!3293 = !DILocation(line: 0, scope: !2878, inlinedAt: !3290)
!3294 = !DILocation(line: 934, column: 30, scope: !2878, inlinedAt: !3290)
!3295 = !DILocation(line: 934, column: 5, scope: !2878, inlinedAt: !3290)
!3296 = !DILocation(line: 934, column: 38, scope: !2878, inlinedAt: !3290)
!3297 = !DILocation(line: 933, column: 34, scope: !2871, inlinedAt: !3290)
!3298 = distinct !{!3298, !3292, !3299}
!3299 = !DILocation(line: 935, column: 3, scope: !2872, inlinedAt: !3290)
!3300 = distinct !{!3300, !1837}
!3301 = !DILocation(line: 940, column: 3, scope: !2876, inlinedAt: !3290)
!3302 = !DILocation(line: 941, column: 10, scope: !2888, inlinedAt: !3290)
!3303 = !DILocation(line: 941, column: 10, scope: !2889, inlinedAt: !3290)
!3304 = !DILocation(line: 942, column: 24, scope: !2887, inlinedAt: !3290)
!3305 = !DILocation(line: 942, column: 29, scope: !2887, inlinedAt: !3290)
!3306 = !DILocation(line: 942, column: 49, scope: !2887, inlinedAt: !3290)
!3307 = !DILocation(line: 942, column: 64, scope: !2887, inlinedAt: !3290)
!3308 = !DILocation(line: 942, column: 56, scope: !2887, inlinedAt: !3290)
!3309 = !DILocation(line: 942, column: 68, scope: !2887, inlinedAt: !3290)
!3310 = !DILocation(line: 942, column: 7, scope: !2887, inlinedAt: !3290)
!3311 = !DILocation(line: 943, column: 38, scope: !2887, inlinedAt: !3290)
!3312 = !DILocation(line: 943, column: 43, scope: !2887, inlinedAt: !3290)
!3313 = !DILocation(line: 943, column: 16, scope: !2887, inlinedAt: !3290)
!3314 = !DILocation(line: 943, column: 7, scope: !2887, inlinedAt: !3290)
!3315 = !DILocation(line: 943, column: 28, scope: !2887, inlinedAt: !3290)
!3316 = !DILocation(line: 944, column: 24, scope: !2887, inlinedAt: !3290)
!3317 = !DILocation(line: 944, column: 7, scope: !2887, inlinedAt: !3290)
!3318 = !DILocation(line: 944, column: 20, scope: !2887, inlinedAt: !3290)
!3319 = !DILocation(line: 945, column: 8, scope: !2887, inlinedAt: !3290)
!3320 = !DILocation(line: 940, column: 28, scope: !2890, inlinedAt: !3290)
!3321 = !DILocation(line: 946, column: 5, scope: !2887, inlinedAt: !3290)
!3322 = !DILocation(line: 940, column: 34, scope: !2890, inlinedAt: !3290)
!3323 = !DILocation(line: 940, column: 18, scope: !2890, inlinedAt: !3290)
!3324 = distinct !{!3324, !3301, !3325}
!3325 = !DILocation(line: 947, column: 3, scope: !2876, inlinedAt: !3290)
!3326 = !DILocation(line: 949, column: 16, scope: !2856, inlinedAt: !3290)
!3327 = !DILocation(line: 951, column: 3, scope: !2856, inlinedAt: !3290)
!3328 = !DILocation(line: 1174, column: 14, scope: !3126)
!3329 = !DILocation(line: 1180, column: 10, scope: !3126)
!3330 = !DILocation(line: 1180, column: 5, scope: !3126)
!3331 = !DILocation(line: 1181, column: 10, scope: !3126)
!3332 = !DILocation(line: 1181, column: 5, scope: !3126)
!3333 = !DILocation(line: 1182, column: 10, scope: !3126)
!3334 = !DILocation(line: 1182, column: 5, scope: !3126)
!3335 = !DILocation(line: 1184, column: 17, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 1184, column: 9)
!3337 = !DILocation(line: 1184, column: 9, scope: !3336)
!3338 = distinct !{!3338, !3197, !3339}
!3339 = !DILocation(line: 1187, column: 3, scope: !3086)
!3340 = !DILocation(line: 1190, column: 45, scope: !3086)
!3341 = !DILocation(line: 1190, column: 30, scope: !3086)
!3342 = !DILocation(line: 1190, column: 21, scope: !3086)
!3343 = !DILocation(line: 1191, column: 22, scope: !3086)
!3344 = !DILocation(line: 1191, column: 13, scope: !3086)
!3345 = !DILocation(line: 1192, column: 42, scope: !3086)
!3346 = !DILocation(line: 1192, column: 24, scope: !3086)
!3347 = !DILocation(line: 1192, column: 16, scope: !3086)
!3348 = !DILocation(line: 1194, column: 3, scope: !3086)
!3349 = !DILocation(line: 0, scope: !2802, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 1195, column: 3, scope: !3086)
!3351 = !DILocation(line: 907, column: 22, scope: !2812, inlinedAt: !3350)
!3352 = !DILocation(line: 907, column: 13, scope: !2812, inlinedAt: !3350)
!3353 = !DILocation(line: 907, column: 3, scope: !2813, inlinedAt: !3350)
!3354 = !DILocation(line: 0, scope: !2817, inlinedAt: !3350)
!3355 = !DILocation(line: 0, scope: !2820, inlinedAt: !3350)
!3356 = !DILocation(line: 0, scope: !2821, inlinedAt: !3350)
!3357 = !DILocation(line: 909, column: 22, scope: !2817, inlinedAt: !3350)
!3358 = !DILocation(line: 909, column: 29, scope: !2817, inlinedAt: !3350)
!3359 = !DILocation(line: 909, column: 9, scope: !2818, inlinedAt: !3350)
!3360 = !DILocation(line: 910, column: 48, scope: !2822, inlinedAt: !3350)
!3361 = !DILocation(line: 910, column: 70, scope: !2822, inlinedAt: !3350)
!3362 = !DILocation(line: 910, column: 55, scope: !2822, inlinedAt: !3350)
!3363 = !DILocation(line: 911, column: 38, scope: !2822, inlinedAt: !3350)
!3364 = !DILocation(line: 912, column: 7, scope: !2821, inlinedAt: !3350)
!3365 = !DILocation(line: 0, scope: !2834, inlinedAt: !3350)
!3366 = !DILocation(line: 912, column: 34, scope: !2820, inlinedAt: !3350)
!3367 = !DILocation(line: 913, column: 2, scope: !2834, inlinedAt: !3350)
!3368 = !DILocation(line: 913, column: 42, scope: !2834, inlinedAt: !3350)
!3369 = !{!3370}
!3370 = distinct !{!3370, !3371}
!3371 = distinct !{!3371, !"LVerDomain"}
!3372 = !{!3373}
!3373 = distinct !{!3373, !3371}
!3374 = !DILocation(line: 915, column: 4, scope: !2834, inlinedAt: !3350)
!3375 = !DILocation(line: 915, column: 26, scope: !2834, inlinedAt: !3350)
!3376 = !DILocation(line: 914, column: 42, scope: !2834, inlinedAt: !3350)
!3377 = distinct !{!3377, !3364, !3378, !2489}
!3378 = !DILocation(line: 916, column: 7, scope: !2821, inlinedAt: !3350)
!3379 = !DILocation(line: 912, column: 19, scope: !2820, inlinedAt: !3350)
!3380 = distinct !{!3380, !3364, !3378, !2489}
!3381 = !DILocation(line: 917, column: 61, scope: !2822, inlinedAt: !3350)
!3382 = !DILocation(line: 917, column: 45, scope: !2822, inlinedAt: !3350)
!3383 = !DILocation(line: 918, column: 5, scope: !2822, inlinedAt: !3350)
!3384 = !DILocation(line: 907, column: 27, scope: !2812, inlinedAt: !3350)
!3385 = distinct !{!3385, !3353, !3386}
!3386 = !DILocation(line: 919, column: 3, scope: !2813, inlinedAt: !3350)
!3387 = !DILocation(line: 1196, column: 3, scope: !3086)
!3388 = !DILocation(line: 1197, column: 1, scope: !3086)
!3389 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1199, type: !3390, scopeLine: 1200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!10, !10, !229}
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405}
!3393 = !DILocalVariable(name: "argc", arg: 1, scope: !3389, file: !3, line: 1199, type: !10)
!3394 = !DILocalVariable(name: "argv", arg: 2, scope: !3389, file: !3, line: 1199, type: !229)
!3395 = !DILocalVariable(name: "outfilename", scope: !3389, file: !3, line: 1201, type: !177)
!3396 = !DILocalVariable(name: "infilename", scope: !3389, file: !3, line: 1202, type: !177)
!3397 = !DILocalVariable(name: "kmin", scope: !3389, file: !3, line: 1203, type: !18)
!3398 = !DILocalVariable(name: "kmax", scope: !3389, file: !3, line: 1203, type: !18)
!3399 = !DILocalVariable(name: "n", scope: !3389, file: !3, line: 1203, type: !18)
!3400 = !DILocalVariable(name: "chunksize", scope: !3389, file: !3, line: 1203, type: !18)
!3401 = !DILocalVariable(name: "clustersize", scope: !3389, file: !3, line: 1203, type: !18)
!3402 = !DILocalVariable(name: "dim", scope: !3389, file: !3, line: 1204, type: !10)
!3403 = !DILocalVariable(name: "stream", scope: !3389, file: !3, line: 1246, type: !3089)
!3404 = !DILocalVariable(name: "t1", scope: !3389, file: !3, line: 1254, type: !22)
!3405 = !DILocalVariable(name: "t2", scope: !3389, file: !3, line: 1264, type: !22)
!3406 = !DILocation(line: 98, column: 18, scope: !1688, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 1264, column: 15, scope: !3389)
!3408 = !DILocation(line: 98, column: 18, scope: !1688, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 1254, column: 15, scope: !3389)
!3410 = !DILocation(line: 0, scope: !3389)
!3411 = !DILocation(line: 1201, column: 23, scope: !3389)
!3412 = !DILocation(line: 1202, column: 22, scope: !3389)
!3413 = !DILocation(line: 1212, column: 9, scope: !3389)
!3414 = !DILocation(line: 1213, column: 2, scope: !3389)
!3415 = !DILocation(line: 1219, column: 11, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1219, column: 7)
!3417 = !DILocation(line: 1219, column: 7, scope: !3389)
!3418 = !DILocation(line: 1220, column: 13, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 1219, column: 16)
!3420 = !DILocation(line: 1221, column: 6, scope: !3419)
!3421 = !DILocation(line: 1220, column: 5, scope: !3419)
!3422 = !DILocation(line: 1222, column: 13, scope: !3419)
!3423 = !DILocation(line: 1222, column: 5, scope: !3419)
!3424 = !DILocation(line: 1223, column: 13, scope: !3419)
!3425 = !DILocation(line: 1223, column: 5, scope: !3419)
!3426 = !DILocation(line: 1224, column: 13, scope: !3419)
!3427 = !DILocation(line: 1224, column: 5, scope: !3419)
!3428 = !DILocation(line: 1225, column: 13, scope: !3419)
!3429 = !DILocation(line: 1225, column: 5, scope: !3419)
!3430 = !DILocation(line: 1226, column: 13, scope: !3419)
!3431 = !DILocation(line: 1226, column: 5, scope: !3419)
!3432 = !DILocation(line: 1227, column: 13, scope: !3419)
!3433 = !DILocation(line: 1227, column: 5, scope: !3419)
!3434 = !DILocation(line: 1228, column: 13, scope: !3419)
!3435 = !DILocation(line: 1228, column: 5, scope: !3419)
!3436 = !DILocation(line: 1229, column: 13, scope: !3419)
!3437 = !DILocation(line: 1229, column: 5, scope: !3419)
!3438 = !DILocation(line: 1230, column: 13, scope: !3419)
!3439 = !DILocation(line: 1230, column: 5, scope: !3419)
!3440 = !DILocation(line: 1231, column: 13, scope: !3419)
!3441 = !DILocation(line: 1231, column: 5, scope: !3419)
!3442 = !DILocation(line: 1232, column: 13, scope: !3419)
!3443 = !DILocation(line: 1232, column: 5, scope: !3419)
!3444 = !DILocation(line: 1233, column: 5, scope: !3419)
!3445 = !DILocation(line: 1235, column: 15, scope: !3389)
!3446 = !DILocation(line: 0, scope: !934, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 1235, column: 10, scope: !3389)
!3448 = !DILocation(line: 363, column: 16, scope: !934, inlinedAt: !3447)
!3449 = !DILocation(line: 1235, column: 10, scope: !3389)
!3450 = !DILocation(line: 1236, column: 15, scope: !3389)
!3451 = !DILocation(line: 0, scope: !934, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 1236, column: 10, scope: !3389)
!3453 = !DILocation(line: 363, column: 16, scope: !934, inlinedAt: !3452)
!3454 = !DILocation(line: 1236, column: 10, scope: !3389)
!3455 = !DILocation(line: 1237, column: 14, scope: !3389)
!3456 = !DILocation(line: 0, scope: !934, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 1237, column: 9, scope: !3389)
!3458 = !DILocation(line: 363, column: 16, scope: !934, inlinedAt: !3457)
!3459 = !DILocation(line: 1238, column: 12, scope: !3389)
!3460 = !DILocation(line: 0, scope: !934, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 1238, column: 7, scope: !3389)
!3462 = !DILocation(line: 363, column: 16, scope: !934, inlinedAt: !3461)
!3463 = !DILocation(line: 1239, column: 20, scope: !3389)
!3464 = !DILocation(line: 0, scope: !934, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 1239, column: 15, scope: !3389)
!3466 = !DILocation(line: 363, column: 16, scope: !934, inlinedAt: !3465)
!3467 = !DILocation(line: 1239, column: 15, scope: !3389)
!3468 = !DILocation(line: 1240, column: 22, scope: !3389)
!3469 = !DILocation(line: 0, scope: !934, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 1240, column: 17, scope: !3389)
!3471 = !DILocation(line: 363, column: 16, scope: !934, inlinedAt: !3470)
!3472 = !DILocation(line: 1240, column: 17, scope: !3389)
!3473 = !DILocation(line: 1241, column: 22, scope: !3389)
!3474 = !DILocation(line: 1241, column: 3, scope: !3389)
!3475 = !DILocation(line: 1242, column: 23, scope: !3389)
!3476 = !DILocation(line: 1242, column: 3, scope: !3389)
!3477 = !DILocation(line: 1243, column: 16, scope: !3389)
!3478 = !DILocation(line: 0, scope: !934, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 1243, column: 11, scope: !3389)
!3480 = !DILocation(line: 363, column: 16, scope: !934, inlinedAt: !3479)
!3481 = !DILocation(line: 1243, column: 9, scope: !3389)
!3482 = !DILocation(line: 1245, column: 3, scope: !3389)
!3483 = !DILocation(line: 1247, column: 9, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1247, column: 7)
!3485 = !DILocation(line: 0, scope: !3484)
!3486 = !DILocation(line: 1247, column: 7, scope: !3389)
!3487 = !DILocation(line: 1238, column: 7, scope: !3389)
!3488 = !DILocalVariable(name: "this", arg: 1, scope: !3489, type: !3510, flags: DIFlagArtificial | DIFlagObjectPointer)
!3489 = distinct !DISubprogram(name: "SimStream", linkageName: "_ZN9SimStreamC2El", scope: !3490, file: !3, line: 1031, type: !3495, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3494, retainedNodes: !3508)
!3490 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "SimStream", file: !3, line: 1029, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3491, vtableHolder: !3090, identifier: "_ZTS9SimStream")
!3491 = !{!3492, !3493, !3494, !3498, !3501, !3504, !3505}
!3492 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3490, baseType: !3090, flags: DIFlagPublic, extraData: i32 0)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3490, file: !3, line: 1054, baseType: !18, size: 64, offset: 64)
!3494 = !DISubprogram(name: "SimStream", scope: !3490, file: !3, line: 1031, type: !3495, scopeLine: 1031, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !3497, !18}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3498 = !DISubprogram(name: "read", linkageName: "_ZN9SimStream4readEPfii", scope: !3490, file: !3, line: 1034, type: !3499, scopeLine: 1034, containingType: !3490, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!218, !3497, !125, !10, !10}
!3501 = !DISubprogram(name: "ferror", linkageName: "_ZN9SimStream6ferrorEv", scope: !3490, file: !3, line: 1045, type: !3502, scopeLine: 1045, containingType: !3490, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!10, !3497}
!3504 = !DISubprogram(name: "feof", linkageName: "_ZN9SimStream4feofEv", scope: !3490, file: !3, line: 1048, type: !3502, scopeLine: 1048, containingType: !3490, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3505 = !DISubprogram(name: "~SimStream", scope: !3490, file: !3, line: 1051, type: !3506, scopeLine: 1051, containingType: !3490, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !3497}
!3508 = !{!3488, !3509}
!3509 = !DILocalVariable(name: "n_", arg: 2, scope: !3489, file: !3, line: 1031, type: !18)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3511 = !DILocation(line: 0, scope: !3489, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 1248, column: 18, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1247, column: 15)
!3514 = !DILocation(line: 1031, column: 23, scope: !3489, inlinedAt: !3512)
!3515 = !DILocation(line: 1032, column: 5, scope: !3516, inlinedAt: !3512)
!3516 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 1031, column: 23)
!3517 = !DILocation(line: 1032, column: 7, scope: !3516, inlinedAt: !3512)
!3518 = !{!3519, !1699, i64 8}
!3519 = !{!"_ZTS9SimStream", !1699, i64 8}
!3520 = !DILocation(line: 1249, column: 3, scope: !3513)
!3521 = !DILocalVariable(name: "this", arg: 1, scope: !3522, type: !3543, flags: DIFlagArtificial | DIFlagObjectPointer)
!3522 = distinct !DISubprogram(name: "FileStream", linkageName: "_ZN10FileStreamC2EPc", scope: !3523, file: !3, line: 1059, type: !3528, scopeLine: 1059, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3527, retainedNodes: !3541)
!3523 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "FileStream", file: !3, line: 1057, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3524, vtableHolder: !3090, identifier: "_ZTS10FileStream")
!3524 = !{!3525, !3526, !3527, !3531, !3534, !3537, !3538}
!3525 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3523, baseType: !3090, flags: DIFlagPublic, extraData: i32 0)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !3523, file: !3, line: 1080, baseType: !1097, size: 64, offset: 64)
!3527 = !DISubprogram(name: "FileStream", scope: !3523, file: !3, line: 1059, type: !3528, scopeLine: 1059, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{null, !3530, !177}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3531 = !DISubprogram(name: "read", linkageName: "_ZN10FileStream4readEPfii", scope: !3523, file: !3, line: 1066, type: !3532, scopeLine: 1066, containingType: !3523, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!218, !3530, !125, !10, !10}
!3534 = !DISubprogram(name: "ferror", linkageName: "_ZN10FileStream6ferrorEv", scope: !3523, file: !3, line: 1069, type: !3535, scopeLine: 1069, containingType: !3523, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!10, !3530}
!3537 = !DISubprogram(name: "feof", linkageName: "_ZN10FileStream4feofEv", scope: !3523, file: !3, line: 1072, type: !3535, scopeLine: 1072, containingType: !3523, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3538 = !DISubprogram(name: "~FileStream", scope: !3523, file: !3, line: 1075, type: !3539, scopeLine: 1075, containingType: !3523, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{null, !3530}
!3541 = !{!3521, !3542}
!3542 = !DILocalVariable(name: "filename", arg: 2, scope: !3522, file: !3, line: 1059, type: !177)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3544 = !DILocation(line: 0, scope: !3522, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 1251, column: 18, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1250, column: 8)
!3547 = !DILocation(line: 1059, column: 30, scope: !3522, inlinedAt: !3545)
!3548 = !DILocation(line: 1060, column: 10, scope: !3549, inlinedAt: !3545)
!3549 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 1059, column: 30)
!3550 = !DILocation(line: 1060, column: 5, scope: !3549, inlinedAt: !3545)
!3551 = !DILocation(line: 1060, column: 8, scope: !3549, inlinedAt: !3545)
!3552 = !{!3553, !1753, i64 8}
!3553 = !{!"_ZTS10FileStream", !1753, i64 8}
!3554 = !DILocation(line: 1061, column: 12, scope: !3555, inlinedAt: !3545)
!3555 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 1061, column: 9)
!3556 = !DILocation(line: 1061, column: 9, scope: !3549, inlinedAt: !3545)
!3557 = !DILocation(line: 1062, column: 15, scope: !3558, inlinedAt: !3545)
!3558 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1061, column: 22)
!3559 = !DILocation(line: 1062, column: 7, scope: !3558, inlinedAt: !3545)
!3560 = !DILocation(line: 1063, column: 7, scope: !3558, inlinedAt: !3545)
!3561 = !DILocation(line: 98, column: 3, scope: !1688, inlinedAt: !3409)
!3562 = !DILocation(line: 99, column: 3, scope: !1688, inlinedAt: !3409)
!3563 = !DILocation(line: 100, column: 20, scope: !1688, inlinedAt: !3409)
!3564 = !DILocation(line: 100, column: 18, scope: !1688, inlinedAt: !3409)
!3565 = !DILocation(line: 100, column: 29, scope: !1688, inlinedAt: !3409)
!3566 = !DILocation(line: 100, column: 27, scope: !1688, inlinedAt: !3409)
!3567 = !DILocation(line: 100, column: 36, scope: !1688, inlinedAt: !3409)
!3568 = !DILocation(line: 100, column: 26, scope: !1688, inlinedAt: !3409)
!3569 = !DILocation(line: 101, column: 1, scope: !1688, inlinedAt: !3409)
!3570 = !DILocation(line: 1259, column: 3, scope: !3389)
!3571 = !DILocation(line: 98, column: 3, scope: !1688, inlinedAt: !3407)
!3572 = !DILocation(line: 99, column: 3, scope: !1688, inlinedAt: !3407)
!3573 = !DILocation(line: 100, column: 20, scope: !1688, inlinedAt: !3407)
!3574 = !DILocation(line: 100, column: 18, scope: !1688, inlinedAt: !3407)
!3575 = !DILocation(line: 100, column: 29, scope: !1688, inlinedAt: !3407)
!3576 = !DILocation(line: 100, column: 27, scope: !1688, inlinedAt: !3407)
!3577 = !DILocation(line: 100, column: 36, scope: !1688, inlinedAt: !3407)
!3578 = !DILocation(line: 100, column: 26, scope: !1688, inlinedAt: !3407)
!3579 = !DILocation(line: 101, column: 1, scope: !1688, inlinedAt: !3407)
!3580 = !DILocation(line: 1266, column: 27, scope: !3389)
!3581 = !DILocation(line: 1266, column: 3, scope: !3389)
!3582 = !DILocation(line: 1268, column: 3, scope: !3389)
!3583 = !DILocation(line: 1283, column: 3, scope: !3389)
!3584 = distinct !DISubprogram(name: "read", linkageName: "_ZN9SimStream4readEPfii", scope: !3490, file: !3, line: 1034, type: !3499, scopeLine: 1034, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3498, retainedNodes: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3591, !3593}
!3586 = !DILocalVariable(name: "this", arg: 1, scope: !3584, type: !3510, flags: DIFlagArtificial | DIFlagObjectPointer)
!3587 = !DILocalVariable(name: "dest", arg: 2, scope: !3584, file: !3, line: 1034, type: !125)
!3588 = !DILocalVariable(name: "dim", arg: 3, scope: !3584, file: !3, line: 1034, type: !10)
!3589 = !DILocalVariable(name: "num", arg: 4, scope: !3584, file: !3, line: 1034, type: !10)
!3590 = !DILocalVariable(name: "count", scope: !3584, file: !3, line: 1035, type: !218)
!3591 = !DILocalVariable(name: "i", scope: !3592, file: !3, line: 1036, type: !10)
!3592 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 1036, column: 5)
!3593 = !DILocalVariable(name: "k", scope: !3594, file: !3, line: 1037, type: !10)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 1037, column: 7)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 1036, column: 45)
!3596 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 1036, column: 5)
!3597 = !DILocation(line: 0, scope: !3584)
!3598 = !DILocation(line: 0, scope: !3592)
!3599 = !DILocation(line: 1036, column: 32, scope: !3596)
!3600 = !DILocation(line: 1036, column: 23, scope: !3596)
!3601 = !DILocation(line: 1036, column: 29, scope: !3596)
!3602 = !DILocation(line: 0, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1037, column: 7)
!3604 = !DILocation(line: 1036, column: 34, scope: !3596)
!3605 = !DILocation(line: 1036, column: 5, scope: !3592)
!3606 = !DILocation(line: 0, scope: !3594)
!3607 = !DILocation(line: 1037, column: 7, scope: !3594)
!3608 = !DILocation(line: 0, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 1037, column: 38)
!3610 = !DILocation(line: 1043, column: 5, scope: !3584)
!3611 = !DILocation(line: 1040, column: 8, scope: !3595)
!3612 = !DILocation(line: 1036, column: 40, scope: !3596)
!3613 = distinct !{!3613, !3605, !3614}
!3614 = !DILocation(line: 1042, column: 5, scope: !3592)
!3615 = !DILocation(line: 1038, column: 20, scope: !3609)
!3616 = !DILocation(line: 1038, column: 29, scope: !3609)
!3617 = !DILocation(line: 1038, column: 13, scope: !3609)
!3618 = !DILocation(line: 1038, column: 2, scope: !3609)
!3619 = !DILocation(line: 1038, column: 18, scope: !3609)
!3620 = !DILocation(line: 1037, column: 33, scope: !3603)
!3621 = !DILocation(line: 1037, column: 25, scope: !3603)
!3622 = distinct !{!3622, !3607, !3623}
!3623 = !DILocation(line: 1039, column: 7, scope: !3594)
!3624 = distinct !DISubprogram(name: "ferror", linkageName: "_ZN9SimStream6ferrorEv", scope: !3490, file: !3, line: 1045, type: !3502, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3501, retainedNodes: !3625)
!3625 = !{!3626}
!3626 = !DILocalVariable(name: "this", arg: 1, scope: !3624, type: !3510, flags: DIFlagArtificial | DIFlagObjectPointer)
!3627 = !DILocation(line: 0, scope: !3624)
!3628 = !DILocation(line: 1046, column: 5, scope: !3624)
!3629 = distinct !DISubprogram(name: "feof", linkageName: "_ZN9SimStream4feofEv", scope: !3490, file: !3, line: 1048, type: !3502, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3504, retainedNodes: !3630)
!3630 = !{!3631}
!3631 = !DILocalVariable(name: "this", arg: 1, scope: !3629, type: !3510, flags: DIFlagArtificial | DIFlagObjectPointer)
!3632 = !DILocation(line: 0, scope: !3629)
!3633 = !DILocation(line: 1049, column: 12, scope: !3629)
!3634 = !DILocation(line: 1049, column: 14, scope: !3629)
!3635 = !DILocation(line: 1049, column: 5, scope: !3629)
!3636 = distinct !DISubprogram(name: "~SimStream", linkageName: "_ZN9SimStreamD0Ev", scope: !3490, file: !3, line: 1051, type: !3506, scopeLine: 1051, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3505, retainedNodes: !3637)
!3637 = !{!3638}
!3638 = !DILocalVariable(name: "this", arg: 1, scope: !3636, type: !3510, flags: DIFlagArtificial | DIFlagObjectPointer)
!3639 = !DILocation(line: 0, scope: !3636)
!3640 = !DILocation(line: 1051, column: 16, scope: !3636)
!3641 = !DILocation(line: 1052, column: 3, scope: !3636)
!3642 = distinct !DISubprogram(name: "~PStream", linkageName: "_ZN7PStreamD2Ev", scope: !3090, file: !3, line: 1024, type: !3104, scopeLine: 1024, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3103, retainedNodes: !3643)
!3643 = !{!3644}
!3644 = !DILocalVariable(name: "this", arg: 1, scope: !3642, type: !3089, flags: DIFlagArtificial | DIFlagObjectPointer)
!3645 = !DILocation(line: 0, scope: !3642)
!3646 = !DILocation(line: 1025, column: 3, scope: !3642)
!3647 = distinct !DISubprogram(name: "read", linkageName: "_ZN10FileStream4readEPfii", scope: !3523, file: !3, line: 1066, type: !3532, scopeLine: 1066, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3531, retainedNodes: !3648)
!3648 = !{!3649, !3650, !3651, !3652}
!3649 = !DILocalVariable(name: "this", arg: 1, scope: !3647, type: !3543, flags: DIFlagArtificial | DIFlagObjectPointer)
!3650 = !DILocalVariable(name: "dest", arg: 2, scope: !3647, file: !3, line: 1066, type: !125)
!3651 = !DILocalVariable(name: "dim", arg: 3, scope: !3647, file: !3, line: 1066, type: !10)
!3652 = !DILocalVariable(name: "num", arg: 4, scope: !3647, file: !3, line: 1066, type: !10)
!3653 = !DILocation(line: 0, scope: !3647)
!3654 = !DILocation(line: 1067, column: 23, scope: !3647)
!3655 = !DILocation(line: 1067, column: 43, scope: !3647)
!3656 = !DILocation(line: 1067, column: 42, scope: !3647)
!3657 = !DILocation(line: 1067, column: 48, scope: !3647)
!3658 = !DILocation(line: 1067, column: 53, scope: !3647)
!3659 = !DILocation(line: 1067, column: 12, scope: !3647)
!3660 = !DILocation(line: 1067, column: 5, scope: !3647)
!3661 = distinct !DISubprogram(name: "ferror", linkageName: "_ZN10FileStream6ferrorEv", scope: !3523, file: !3, line: 1069, type: !3535, scopeLine: 1069, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3534, retainedNodes: !3662)
!3662 = !{!3663}
!3663 = !DILocalVariable(name: "this", arg: 1, scope: !3661, type: !3543, flags: DIFlagArtificial | DIFlagObjectPointer)
!3664 = !DILocation(line: 0, scope: !3661)
!3665 = !DILocation(line: 1070, column: 24, scope: !3661)
!3666 = !DILocation(line: 1070, column: 12, scope: !3661)
!3667 = !DILocation(line: 1070, column: 5, scope: !3661)
!3668 = distinct !DISubprogram(name: "feof", linkageName: "_ZN10FileStream4feofEv", scope: !3523, file: !3, line: 1072, type: !3535, scopeLine: 1072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3537, retainedNodes: !3669)
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "this", arg: 1, scope: !3668, type: !3543, flags: DIFlagArtificial | DIFlagObjectPointer)
!3671 = !DILocation(line: 0, scope: !3668)
!3672 = !DILocation(line: 1073, column: 22, scope: !3668)
!3673 = !DILocation(line: 1073, column: 12, scope: !3668)
!3674 = !DILocation(line: 1073, column: 5, scope: !3668)
!3675 = distinct !DISubprogram(name: "~FileStream", linkageName: "_ZN10FileStreamD2Ev", scope: !3523, file: !3, line: 1075, type: !3539, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3538, retainedNodes: !3676)
!3676 = !{!3677}
!3677 = !DILocalVariable(name: "this", arg: 1, scope: !3675, type: !3543, flags: DIFlagArtificial | DIFlagObjectPointer)
!3678 = !DILocation(line: 0, scope: !3675)
!3679 = !DILocation(line: 1075, column: 17, scope: !3675)
!3680 = !DILocation(line: 1076, column: 5, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 1075, column: 17)
!3682 = !DILocation(line: 1077, column: 12, scope: !3681)
!3683 = !DILocation(line: 1077, column: 5, scope: !3681)
!3684 = !DILocation(line: 1078, column: 3, scope: !3675)
!3685 = distinct !DISubprogram(name: "~FileStream", linkageName: "_ZN10FileStreamD0Ev", scope: !3523, file: !3, line: 1075, type: !3539, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !3538, retainedNodes: !3686)
!3686 = !{!3687}
!3687 = !DILocalVariable(name: "this", arg: 1, scope: !3685, type: !3543, flags: DIFlagArtificial | DIFlagObjectPointer)
!3688 = !DILocation(line: 0, scope: !3685)
!3689 = !DILocation(line: 0, scope: !3675, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 1075, column: 17, scope: !3685)
!3691 = !DILocation(line: 1075, column: 17, scope: !3675, inlinedAt: !3690)
!3692 = !DILocation(line: 1076, column: 5, scope: !3681, inlinedAt: !3690)
!3693 = !DILocation(line: 1077, column: 12, scope: !3681, inlinedAt: !3690)
!3694 = !DILocation(line: 1077, column: 5, scope: !3681, inlinedAt: !3690)
!3695 = !DILocation(line: 1075, column: 17, scope: !3685)
!3696 = !DILocation(line: 1078, column: 3, scope: !3685)
!3697 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_streamcluster_original.cpp", scope: !3, file: !3, type: !3698, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3698 = !DISubroutineType(types: !4)
!3699 = !DILocation(line: 74, column: 25, scope: !3700, inlinedAt: !3701)
!3700 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !406, file: !406, line: 74, type: !919, scopeLine: 74, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3701 = distinct !DILocation(line: 0, scope: !3697)
