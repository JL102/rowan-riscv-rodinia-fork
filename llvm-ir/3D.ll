; ModuleID = '3D.c'
source_filename = "3D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.timeval = type { i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Error reading file\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"not enough lines in file\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid file format\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%d\09%g\0A\00", align 1
@amb_temp = dso_local local_unnamed_addr global float 8.000000e+01, align 4, !dbg !0
@.str.10 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [29 x i8] c";3D.c;computeTempOMP;156;1;;\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%d threads running\0A\00", align 1
@2 = private unnamed_addr constant [29 x i8] c";3D.c;computeTempOMP;161;1;;\00", align 1
@3 = private unnamed_addr constant [30 x i8] c";3D.c;computeTempOMP;161;17;;\00", align 1
@4 = private unnamed_addr constant [29 x i8] c";3D.c;computeTempOMP;150;1;;\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"Usage: %s <rows/cols> <layers> <iterations> <powerFile> <tempFile> <outputFile>\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"\09<rows/cols>  - number of rows/cols in the grid (positive integer)\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"\09<layers>  - number of layers in the grid (positive integer)\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"\09<iteration> - number of iterations\0A\00", align 1
@.str.16 = private unnamed_addr constant [83 x i8] c"\09<powerFile>  - name of the file containing the initial power values of each cell\0A\00", align 1
@.str.17 = private unnamed_addr constant [88 x i8] c"\09<tempFile>  - name of the file containing the initial temperature values of each cell\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\09<outputFile - output file\0A\00", align 1
@chip_height = dso_local local_unnamed_addr global float 0x3F90624DE0000000, align 4, !dbg !104
@chip_width = dso_local local_unnamed_addr global float 0x3F90624DE0000000, align 4, !dbg !106
@t_chip = dso_local local_unnamed_addr global float 0x3F40624DE0000000, align 4, !dbg !102
@.str.19 = private unnamed_addr constant [16 x i8] c"Time: %.3f (s)\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Accuracy: %e\0A\00", align 1
@str = private unnamed_addr constant [24 x i8] c"The file was not opened\00", align 1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @fatal(i8* %0) local_unnamed_addr #0 !dbg !114 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !118, metadata !DIExpression()), !dbg !119
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !120, !tbaa !121
  %3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %0) #12, !dbg !125
  ret void, !dbg !126
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @readinput(float* nocapture %0, i32 %1, i32 %2, i32 %3, i8* nocapture readonly %4) local_unnamed_addr #3 !dbg !127 {
  %6 = alloca [256 x i8], align 16
  %7 = alloca float, align 4
  call void @llvm.dbg.value(metadata float* %0, metadata !131, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 %1, metadata !132, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 %2, metadata !133, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 %3, metadata !134, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i8* %4, metadata !135, metadata !DIExpression()), !dbg !148
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !149
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #13, !dbg !149
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !143, metadata !DIExpression()), !dbg !150
  %9 = bitcast float* %7 to i8*, !dbg !151
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #13, !dbg !151
  %10 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !152
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !139, metadata !DIExpression()), !dbg !148
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !154
  br i1 %11, label %12, label %15, !dbg !155

12:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @str, i64 0, i64 0), metadata !118, metadata !DIExpression()) #13, !dbg !156
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !158, !tbaa !121
  %14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @str, i64 0, i64 0)) #14, !dbg !159
  br label %15, !dbg !160

15:                                               ; preds = %12, %5
  call void @llvm.dbg.value(metadata i32 0, metadata !136, metadata !DIExpression()), !dbg !148
  %16 = icmp sgt i32 %1, 0, !dbg !161
  br i1 %16, label %17, label %64, !dbg !164

17:                                               ; preds = %15
  %18 = icmp slt i32 %2, 1, !dbg !165
  %19 = icmp slt i32 %3, 1, !dbg !168
  %20 = bitcast float* %7 to i32*, !dbg !171
  %21 = zext i32 %3 to i64, !dbg !168
  %22 = or i1 %18, %19, !dbg !173
  br label %23, !dbg !164

23:                                               ; preds = %61, %17
  %24 = phi i32 [ 0, %17 ], [ %62, %61 ]
  call void @llvm.dbg.value(metadata i32 %24, metadata !136, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 0, metadata !137, metadata !DIExpression()), !dbg !148
  br i1 %22, label %61, label %25, !dbg !174

25:                                               ; preds = %23, %58
  %26 = phi i32 [ %59, %58 ], [ 0, %23 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !137, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 0, metadata !138, metadata !DIExpression()), !dbg !148
  br label %27, !dbg !175

27:                                               ; preds = %46, %25
  %28 = phi i64 [ 0, %25 ], [ %56, %46 ]
  call void @llvm.dbg.value(metadata i64 %28, metadata !138, metadata !DIExpression()), !dbg !148
  %29 = call i8* @fgets_unlocked(i8* nonnull %8, i32 256, %struct._IO_FILE* %10), !dbg !176
  %30 = icmp eq i8* %29, null, !dbg !178
  br i1 %30, label %31, label %34, !dbg !179

31:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), metadata !118, metadata !DIExpression()) #13, !dbg !180
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !182, !tbaa !121
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)) #14, !dbg !183
  br label %34, !dbg !184

34:                                               ; preds = %31, %27
  %35 = call i32 @feof(%struct._IO_FILE* %10) #13, !dbg !185
  %36 = icmp eq i32 %35, 0, !dbg !185
  br i1 %36, label %40, label %37, !dbg !187

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), metadata !118, metadata !DIExpression()) #13, !dbg !188
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !190, !tbaa !121
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)) #14, !dbg !191
  br label %40, !dbg !192

40:                                               ; preds = %37, %34
  call void @llvm.dbg.value(metadata float* %7, metadata !147, metadata !DIExpression(DW_OP_deref)), !dbg !148
  %41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), float* nonnull %7) #13, !dbg !193
  %42 = icmp eq i32 %41, 1, !dbg !195
  br i1 %42, label %46, label %43, !dbg !196

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), metadata !118, metadata !DIExpression()) #13, !dbg !197
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !199, !tbaa !121
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #14, !dbg !200
  br label %46, !dbg !201

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %20, align 4, !dbg !202, !tbaa !203
  call void @llvm.dbg.value(metadata float undef, metadata !147, metadata !DIExpression()), !dbg !148
  %48 = trunc i64 %28 to i32, !dbg !205
  %49 = mul i32 %48, %1, !dbg !205
  %50 = add i32 %49, %24
  %51 = mul i32 %50, %2
  %52 = add i32 %51, %26, !dbg !206
  %53 = sext i32 %52 to i64, !dbg !207
  %54 = getelementptr inbounds float, float* %0, i64 %53, !dbg !207
  %55 = bitcast float* %54 to i32*, !dbg !208
  store i32 %47, i32* %55, align 4, !dbg !208, !tbaa !203
  %56 = add nuw nsw i64 %28, 1, !dbg !209
  call void @llvm.dbg.value(metadata i64 %56, metadata !138, metadata !DIExpression()), !dbg !148
  %57 = icmp eq i64 %56, %21, !dbg !210
  br i1 %57, label %58, label %27, !dbg !175, !llvm.loop !211

58:                                               ; preds = %46
  %59 = add nuw nsw i32 %26, 1, !dbg !213
  call void @llvm.dbg.value(metadata i32 %59, metadata !137, metadata !DIExpression()), !dbg !148
  %60 = icmp eq i32 %59, %2, !dbg !214
  br i1 %60, label %61, label %25, !dbg !174, !llvm.loop !215

61:                                               ; preds = %58, %23
  %62 = add nuw nsw i32 %24, 1, !dbg !217
  call void @llvm.dbg.value(metadata i32 %62, metadata !136, metadata !DIExpression()), !dbg !148
  %63 = icmp eq i32 %62, %1, !dbg !161
  br i1 %63, label %64, label %23, !dbg !164, !llvm.loop !218

64:                                               ; preds = %61, %15
  %65 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !220
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #13, !dbg !221
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #13, !dbg !221
  ret void, !dbg !221
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !70 i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !73 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @writeoutput(float* nocapture readonly %0, i32 %1, i32 %2, i32 %3, i8* nocapture readonly %4) local_unnamed_addr #3 !dbg !222 {
  %6 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata float* %0, metadata !224, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %1, metadata !225, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %2, metadata !226, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %3, metadata !227, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i8* %4, metadata !228, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 0, metadata !232, metadata !DIExpression()), !dbg !235
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !236
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %7) #13, !dbg !236
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !234, metadata !DIExpression()), !dbg !237
  %8 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)), !dbg !238
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !233, metadata !DIExpression()), !dbg !235
  %9 = icmp eq %struct._IO_FILE* %8, null, !dbg !240
  br i1 %9, label %10, label %12, !dbg !241

10:                                               ; preds = %5
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str, i64 0, i64 0)), !dbg !242
  br label %12, !dbg !242

12:                                               ; preds = %10, %5
  call void @llvm.dbg.value(metadata i32 0, metadata !229, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 0, metadata !232, metadata !DIExpression()), !dbg !235
  %13 = icmp sgt i32 %1, 0, !dbg !243
  br i1 %13, label %14, label %49, !dbg !246

14:                                               ; preds = %12
  %15 = icmp sgt i32 %2, 0, !dbg !247
  %16 = icmp sgt i32 %3, 0, !dbg !250
  br i1 %15, label %17, label %49, !dbg !246

17:                                               ; preds = %14
  %18 = zext i32 %3 to i64, !dbg !250
  br label %19, !dbg !246

19:                                               ; preds = %22, %17
  %20 = phi i32 [ %24, %22 ], [ 0, %17 ]
  %21 = phi i32 [ %23, %22 ], [ 0, %17 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !229, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %21, metadata !232, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 0, metadata !230, metadata !DIExpression()), !dbg !235
  br i1 %16, label %26, label %22, !dbg !253

22:                                               ; preds = %29, %19
  %23 = phi i32 [ %21, %19 ], [ %46, %29 ]
  call void @llvm.dbg.value(metadata i32 %23, metadata !232, metadata !DIExpression()), !dbg !235
  %24 = add nuw nsw i32 %20, 1, !dbg !254
  call void @llvm.dbg.value(metadata i32 %24, metadata !229, metadata !DIExpression()), !dbg !235
  %25 = icmp eq i32 %24, %1, !dbg !243
  br i1 %25, label %49, label %19, !dbg !246, !llvm.loop !255

26:                                               ; preds = %19, %29
  %27 = phi i32 [ %46, %29 ], [ %21, %19 ]
  %28 = phi i32 [ %30, %29 ], [ 0, %19 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !230, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %27, metadata !232, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 0, metadata !231, metadata !DIExpression()), !dbg !235
  br label %32, !dbg !257

29:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %46, metadata !232, metadata !DIExpression()), !dbg !235
  %30 = add nuw nsw i32 %28, 1, !dbg !258
  call void @llvm.dbg.value(metadata i32 %30, metadata !230, metadata !DIExpression()), !dbg !235
  %31 = icmp eq i32 %30, %2, !dbg !259
  br i1 %31, label %22, label %26, !dbg !253, !llvm.loop !260

32:                                               ; preds = %32, %26
  %33 = phi i64 [ %47, %32 ], [ 0, %26 ]
  %34 = phi i32 [ %46, %32 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !232, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i64 %33, metadata !231, metadata !DIExpression()), !dbg !235
  %35 = trunc i64 %33 to i32, !dbg !262
  %36 = mul i32 %35, %1, !dbg !262
  %37 = add i32 %36, %20
  %38 = mul i32 %37, %2
  %39 = add i32 %38, %28, !dbg !264
  %40 = sext i32 %39 to i64, !dbg !265
  %41 = getelementptr inbounds float, float* %0, i64 %40, !dbg !265
  %42 = load float, float* %41, align 4, !dbg !265, !tbaa !203
  %43 = fpext float %42 to double, !dbg !265
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %7, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %34, double %43) #13, !dbg !266
  %45 = call i32 @fputs(i8* nonnull %7, %struct._IO_FILE* %8), !dbg !267
  %46 = add nsw i32 %34, 1, !dbg !268
  call void @llvm.dbg.value(metadata i32 %46, metadata !232, metadata !DIExpression()), !dbg !235
  %47 = add nuw nsw i64 %33, 1, !dbg !269
  call void @llvm.dbg.value(metadata i64 %47, metadata !231, metadata !DIExpression()), !dbg !235
  %48 = icmp eq i64 %47, %18, !dbg !270
  br i1 %48, label %29, label %32, !dbg !257, !llvm.loop !271

49:                                               ; preds = %22, %14, %12
  %50 = tail call i32 @fclose(%struct._IO_FILE* %8), !dbg !273
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %7) #13, !dbg !274
  ret void, !dbg !274
}

; Function Attrs: nofree nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !74 i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local void @computeTempCPU(float* nocapture readonly %0, float* nocapture %1, float* nocapture %2, i32 %3, i32 %4, i32 %5, float %6, float %7, float %8, float %9, float %10, i32 %11) local_unnamed_addr #5 !dbg !275 {
  call void @llvm.dbg.value(metadata float* %0, metadata !279, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float* %1, metadata !280, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float* %2, metadata !281, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 %3, metadata !282, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 %4, metadata !283, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 %5, metadata !284, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float %6, metadata !285, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float %7, metadata !286, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float %8, metadata !287, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float %9, metadata !288, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float %10, metadata !289, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 %11, metadata !290, metadata !DIExpression()), !dbg !312
  %13 = fdiv float %10, %6, !dbg !313
  call void @llvm.dbg.value(metadata float %13, metadata !298, metadata !DIExpression()), !dbg !312
  %14 = fdiv float %13, %7, !dbg !314
  call void @llvm.dbg.value(metadata float %14, metadata !292, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float %14, metadata !291, metadata !DIExpression()), !dbg !312
  %15 = fdiv float %13, %8, !dbg !315
  call void @llvm.dbg.value(metadata float %15, metadata !294, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float %15, metadata !293, metadata !DIExpression()), !dbg !312
  %16 = fdiv float %13, %9, !dbg !316
  call void @llvm.dbg.value(metadata float %16, metadata !296, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float %16, metadata !295, metadata !DIExpression()), !dbg !312
  %17 = fpext float %14 to double, !dbg !317
  %18 = fmul double %17, 2.000000e+00, !dbg !318
  %19 = fpext float %15 to double, !dbg !319
  %20 = fmul double %19, 2.000000e+00, !dbg !320
  %21 = fadd double %18, %20, !dbg !321
  %22 = fpext float %16 to double, !dbg !322
  %23 = fmul double %22, 3.000000e+00, !dbg !323
  %24 = fadd double %23, %21, !dbg !324
  %25 = fsub double 1.000000e+00, %24, !dbg !325
  %26 = fptrunc double %25 to float, !dbg !326
  call void @llvm.dbg.value(metadata float %26, metadata !297, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 0, metadata !309, metadata !DIExpression()), !dbg !312
  %27 = icmp sgt i32 %5, 0, !dbg !327
  %28 = icmp sgt i32 %4, 0, !dbg !330
  %29 = icmp sgt i32 %3, 0, !dbg !333
  %30 = add nsw i32 %3, -1, !dbg !336
  %31 = add nsw i32 %4, -1, !dbg !336
  %32 = mul nsw i32 %4, %3, !dbg !336
  %33 = add nsw i32 %5, -1, !dbg !336
  %34 = zext i32 %30 to i64, !dbg !338
  %35 = zext i32 %3 to i64, !dbg !333
  br label %36, !dbg !338

36:                                               ; preds = %120, %12
  %37 = phi float* [ %2, %12 ], [ %39, %120 ]
  %38 = phi i32 [ 0, %12 ], [ %121, %120 ], !dbg !312
  %39 = phi float* [ %1, %12 ], [ %37, %120 ]
  call void @llvm.dbg.value(metadata float* %39, metadata !280, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 %38, metadata !309, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float* %37, metadata !281, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 0, metadata !308, metadata !DIExpression()), !dbg !312
  br i1 %27, label %40, label %120, !dbg !339

40:                                               ; preds = %36, %117
  %41 = phi i32 [ %118, %117 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !308, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 0, metadata !307, metadata !DIExpression()), !dbg !312
  br i1 %28, label %42, label %117, !dbg !340

42:                                               ; preds = %40
  %43 = mul i32 %41, %4, !dbg !336
  %44 = icmp eq i32 %41, 0, !dbg !336
  %45 = select i1 %44, i32 0, i32 %32, !dbg !336
  %46 = icmp eq i32 %41, %33, !dbg !336
  %47 = select i1 %46, i32 0, i32 %32, !dbg !336
  br i1 %29, label %48, label %117, !dbg !340

48:                                               ; preds = %42, %114
  %49 = phi i32 [ %115, %114 ], [ 0, %42 ]
  call void @llvm.dbg.value(metadata i32 %49, metadata !307, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 0, metadata !306, metadata !DIExpression()), !dbg !312
  %50 = add i32 %49, %43
  %51 = mul i32 %50, %3
  %52 = icmp eq i32 %49, 0, !dbg !336
  %53 = select i1 %52, i32 0, i32 %3, !dbg !336
  %54 = icmp eq i32 %49, %31, !dbg !336
  %55 = select i1 %54, i32 0, i32 %3, !dbg !336
  br label %56, !dbg !341

56:                                               ; preds = %56, %48
  %57 = phi i64 [ 0, %48 ], [ %112, %56 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !306, metadata !DIExpression()), !dbg !312
  %58 = trunc i64 %57 to i32, !dbg !342
  %59 = add i32 %51, %58, !dbg !342
  call void @llvm.dbg.value(metadata i32 %59, metadata !299, metadata !DIExpression()), !dbg !312
  %60 = icmp ne i64 %57, 0, !dbg !343
  %61 = sext i1 %60 to i32, !dbg !344
  %62 = add nsw i32 %59, %61, !dbg !344
  call void @llvm.dbg.value(metadata i32 %62, metadata !300, metadata !DIExpression()), !dbg !312
  %63 = icmp ne i64 %57, %34, !dbg !345
  %64 = zext i1 %63 to i32, !dbg !346
  %65 = add nsw i32 %59, %64, !dbg !346
  call void @llvm.dbg.value(metadata i32 %65, metadata !301, metadata !DIExpression()), !dbg !312
  %66 = sub nsw i32 %59, %53, !dbg !347
  call void @llvm.dbg.value(metadata i32 %66, metadata !302, metadata !DIExpression()), !dbg !312
  %67 = add nsw i32 %59, %55, !dbg !348
  call void @llvm.dbg.value(metadata i32 %67, metadata !303, metadata !DIExpression()), !dbg !312
  %68 = sub nsw i32 %59, %45, !dbg !349
  call void @llvm.dbg.value(metadata i32 %68, metadata !304, metadata !DIExpression()), !dbg !312
  %69 = add nsw i32 %59, %47, !dbg !350
  call void @llvm.dbg.value(metadata i32 %69, metadata !305, metadata !DIExpression()), !dbg !312
  %70 = sext i32 %59 to i64, !dbg !351
  %71 = getelementptr inbounds float, float* %39, i64 %70, !dbg !351
  %72 = load float, float* %71, align 4, !dbg !351, !tbaa !203
  %73 = fmul float %72, %26, !dbg !352
  %74 = sext i32 %66 to i64, !dbg !353
  %75 = getelementptr inbounds float, float* %39, i64 %74, !dbg !353
  %76 = load float, float* %75, align 4, !dbg !353, !tbaa !203
  %77 = fmul float %15, %76, !dbg !354
  %78 = fadd float %73, %77, !dbg !355
  %79 = sext i32 %67 to i64, !dbg !356
  %80 = getelementptr inbounds float, float* %39, i64 %79, !dbg !356
  %81 = load float, float* %80, align 4, !dbg !356, !tbaa !203
  %82 = fmul float %15, %81, !dbg !357
  %83 = fadd float %78, %82, !dbg !358
  %84 = sext i32 %65 to i64, !dbg !359
  %85 = getelementptr inbounds float, float* %39, i64 %84, !dbg !359
  %86 = load float, float* %85, align 4, !dbg !359, !tbaa !203
  %87 = fmul float %14, %86, !dbg !360
  %88 = fadd float %83, %87, !dbg !361
  %89 = sext i32 %62 to i64, !dbg !362
  %90 = getelementptr inbounds float, float* %39, i64 %89, !dbg !362
  %91 = load float, float* %90, align 4, !dbg !362, !tbaa !203
  %92 = fmul float %14, %91, !dbg !363
  %93 = fadd float %88, %92, !dbg !364
  %94 = sext i32 %69 to i64, !dbg !365
  %95 = getelementptr inbounds float, float* %39, i64 %94, !dbg !365
  %96 = load float, float* %95, align 4, !dbg !365, !tbaa !203
  %97 = fmul float %16, %96, !dbg !366
  %98 = fadd float %93, %97, !dbg !367
  %99 = sext i32 %68 to i64, !dbg !368
  %100 = getelementptr inbounds float, float* %39, i64 %99, !dbg !368
  %101 = load float, float* %100, align 4, !dbg !368, !tbaa !203
  %102 = fmul float %16, %101, !dbg !369
  %103 = fadd float %98, %102, !dbg !370
  %104 = getelementptr inbounds float, float* %0, i64 %70, !dbg !371
  %105 = load float, float* %104, align 4, !dbg !371, !tbaa !203
  %106 = fmul float %13, %105, !dbg !372
  %107 = fadd float %103, %106, !dbg !373
  %108 = load float, float* @amb_temp, align 4, !dbg !374, !tbaa !203
  %109 = fmul float %16, %108, !dbg !375
  %110 = fadd float %107, %109, !dbg !376
  %111 = getelementptr inbounds float, float* %37, i64 %70, !dbg !377
  store float %110, float* %111, align 4, !dbg !378, !tbaa !203
  %112 = add nuw nsw i64 %57, 1, !dbg !379
  call void @llvm.dbg.value(metadata i64 %112, metadata !306, metadata !DIExpression()), !dbg !312
  %113 = icmp eq i64 %112, %35, !dbg !380
  br i1 %113, label %114, label %56, !dbg !341, !llvm.loop !381

114:                                              ; preds = %56
  %115 = add nuw nsw i32 %49, 1, !dbg !383
  call void @llvm.dbg.value(metadata i32 %115, metadata !307, metadata !DIExpression()), !dbg !312
  %116 = icmp eq i32 %115, %4, !dbg !384
  br i1 %116, label %117, label %48, !dbg !340, !llvm.loop !385

117:                                              ; preds = %114, %42, %40
  %118 = add nuw nsw i32 %41, 1, !dbg !387
  call void @llvm.dbg.value(metadata i32 %118, metadata !308, metadata !DIExpression()), !dbg !312
  %119 = icmp eq i32 %118, %5, !dbg !388
  br i1 %119, label %120, label %40, !dbg !339, !llvm.loop !389

120:                                              ; preds = %117, %36
  call void @llvm.dbg.value(metadata float* %39, metadata !310, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata float* %37, metadata !280, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata float* %39, metadata !281, metadata !DIExpression()), !dbg !312
  %121 = add nuw nsw i32 %38, 1, !dbg !392
  call void @llvm.dbg.value(metadata i32 %121, metadata !309, metadata !DIExpression()), !dbg !312
  %122 = icmp slt i32 %121, %11, !dbg !393
  br i1 %122, label %36, label %123, !dbg !394, !llvm.loop !395

123:                                              ; preds = %120
  ret void, !dbg !397
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local float @accuracy(float* nocapture readonly %0, float* nocapture readonly %1, i32 %2) local_unnamed_addr #3 !dbg !398 {
  call void @llvm.dbg.value(metadata float* %0, metadata !402, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata float* %1, metadata !403, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 %2, metadata !404, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !405, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !407
  %4 = icmp sgt i32 %2, 0, !dbg !408
  br i1 %4, label %5, label %69, !dbg !411

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64, !dbg !408
  %7 = add nsw i64 %6, -1, !dbg !411
  %8 = and i64 %6, 3, !dbg !411
  %9 = icmp ult i64 %7, 3, !dbg !411
  br i1 %9, label %50, label %10, !dbg !411

10:                                               ; preds = %5
  %11 = sub nsw i64 %6, %8, !dbg !411
  br label %12, !dbg !411

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %47, %12 ]
  %14 = phi float [ 0.000000e+00, %10 ], [ %46, %12 ]
  %15 = phi i64 [ %11, %10 ], [ %48, %12 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !406, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata float %14, metadata !405, metadata !DIExpression()), !dbg !407
  %16 = getelementptr inbounds float, float* %0, i64 %13, !dbg !412
  %17 = load float, float* %16, align 4, !dbg !412, !tbaa !203
  %18 = getelementptr inbounds float, float* %1, i64 %13, !dbg !414
  %19 = load float, float* %18, align 4, !dbg !414, !tbaa !203
  %20 = fsub float %17, %19, !dbg !415
  %21 = fmul float %20, %20, !dbg !416
  %22 = fadd float %14, %21, !dbg !417
  call void @llvm.dbg.value(metadata float %22, metadata !405, metadata !DIExpression()), !dbg !407
  %23 = or i64 %13, 1, !dbg !418
  call void @llvm.dbg.value(metadata i64 %23, metadata !406, metadata !DIExpression()), !dbg !407
  %24 = getelementptr inbounds float, float* %0, i64 %23, !dbg !412
  %25 = load float, float* %24, align 4, !dbg !412, !tbaa !203
  %26 = getelementptr inbounds float, float* %1, i64 %23, !dbg !414
  %27 = load float, float* %26, align 4, !dbg !414, !tbaa !203
  %28 = fsub float %25, %27, !dbg !415
  %29 = fmul float %28, %28, !dbg !416
  %30 = fadd float %22, %29, !dbg !417
  call void @llvm.dbg.value(metadata float %30, metadata !405, metadata !DIExpression()), !dbg !407
  %31 = or i64 %13, 2, !dbg !418
  call void @llvm.dbg.value(metadata i64 %31, metadata !406, metadata !DIExpression()), !dbg !407
  %32 = getelementptr inbounds float, float* %0, i64 %31, !dbg !412
  %33 = load float, float* %32, align 4, !dbg !412, !tbaa !203
  %34 = getelementptr inbounds float, float* %1, i64 %31, !dbg !414
  %35 = load float, float* %34, align 4, !dbg !414, !tbaa !203
  %36 = fsub float %33, %35, !dbg !415
  %37 = fmul float %36, %36, !dbg !416
  %38 = fadd float %30, %37, !dbg !417
  call void @llvm.dbg.value(metadata float %38, metadata !405, metadata !DIExpression()), !dbg !407
  %39 = or i64 %13, 3, !dbg !418
  call void @llvm.dbg.value(metadata i64 %39, metadata !406, metadata !DIExpression()), !dbg !407
  %40 = getelementptr inbounds float, float* %0, i64 %39, !dbg !412
  %41 = load float, float* %40, align 4, !dbg !412, !tbaa !203
  %42 = getelementptr inbounds float, float* %1, i64 %39, !dbg !414
  %43 = load float, float* %42, align 4, !dbg !414, !tbaa !203
  %44 = fsub float %41, %43, !dbg !415
  %45 = fmul float %44, %44, !dbg !416
  %46 = fadd float %38, %45, !dbg !417
  call void @llvm.dbg.value(metadata float %46, metadata !405, metadata !DIExpression()), !dbg !407
  %47 = add nuw nsw i64 %13, 4, !dbg !418
  call void @llvm.dbg.value(metadata i64 %47, metadata !406, metadata !DIExpression()), !dbg !407
  %48 = add i64 %15, -4, !dbg !411
  %49 = icmp eq i64 %48, 0, !dbg !411
  br i1 %49, label %50, label %12, !dbg !411, !llvm.loop !419

50:                                               ; preds = %12, %5
  %51 = phi float [ undef, %5 ], [ %46, %12 ]
  %52 = phi i64 [ 0, %5 ], [ %47, %12 ]
  %53 = phi float [ 0.000000e+00, %5 ], [ %46, %12 ]
  %54 = icmp eq i64 %8, 0, !dbg !411
  br i1 %54, label %69, label %55, !dbg !411

55:                                               ; preds = %50, %55
  %56 = phi i64 [ %66, %55 ], [ %52, %50 ]
  %57 = phi float [ %65, %55 ], [ %53, %50 ]
  %58 = phi i64 [ %67, %55 ], [ %8, %50 ]
  call void @llvm.dbg.value(metadata i64 %56, metadata !406, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata float %57, metadata !405, metadata !DIExpression()), !dbg !407
  %59 = getelementptr inbounds float, float* %0, i64 %56, !dbg !412
  %60 = load float, float* %59, align 4, !dbg !412, !tbaa !203
  %61 = getelementptr inbounds float, float* %1, i64 %56, !dbg !414
  %62 = load float, float* %61, align 4, !dbg !414, !tbaa !203
  %63 = fsub float %60, %62, !dbg !415
  %64 = fmul float %63, %63, !dbg !416
  %65 = fadd float %57, %64, !dbg !417
  call void @llvm.dbg.value(metadata float %65, metadata !405, metadata !DIExpression()), !dbg !407
  %66 = add nuw nsw i64 %56, 1, !dbg !418
  call void @llvm.dbg.value(metadata i64 %66, metadata !406, metadata !DIExpression()), !dbg !407
  %67 = add i64 %58, -1, !dbg !411
  %68 = icmp eq i64 %67, 0, !dbg !411
  br i1 %68, label %69, label %55, !dbg !411, !llvm.loop !421

69:                                               ; preds = %50, %55, %3
  %70 = phi float [ 0.000000e+00, %3 ], [ %51, %50 ], [ %65, %55 ], !dbg !407
  call void @llvm.dbg.value(metadata float %70, metadata !405, metadata !DIExpression()), !dbg !407
  %71 = sitofp i32 %2 to float, !dbg !423
  %72 = fdiv float %70, %71, !dbg !424
  %73 = tail call float @sqrtf(float %72) #2, !dbg !425
  ret float %73, !dbg !426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @computeTempOMP(float* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5, float %6, float %7, float %8, float %9, float %10, i32 %11) local_unnamed_addr #3 !dbg !427 {
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca %struct.ident_t, align 8
  %30 = bitcast %struct.ident_t* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %30, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata float* %0, metadata !429, metadata !DIExpression()), !dbg !449
  store float* %0, float** %13, align 8, !tbaa !121
  call void @llvm.dbg.value(metadata float* %1, metadata !430, metadata !DIExpression()), !dbg !449
  store float* %1, float** %14, align 8, !tbaa !121
  call void @llvm.dbg.value(metadata float* %2, metadata !431, metadata !DIExpression()), !dbg !449
  store float* %2, float** %15, align 8, !tbaa !121
  call void @llvm.dbg.value(metadata i32 %3, metadata !432, metadata !DIExpression()), !dbg !449
  store i32 %3, i32* %16, align 4, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %4, metadata !433, metadata !DIExpression()), !dbg !449
  store i32 %4, i32* %17, align 4, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %5, metadata !434, metadata !DIExpression()), !dbg !449
  store i32 %5, i32* %18, align 4, !tbaa !450
  call void @llvm.dbg.value(metadata float %6, metadata !435, metadata !DIExpression()), !dbg !449
  store float %6, float* %19, align 4, !tbaa !203
  call void @llvm.dbg.value(metadata float %7, metadata !436, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata float %8, metadata !437, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata float %9, metadata !438, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata float %10, metadata !439, metadata !DIExpression()), !dbg !449
  store float %10, float* %20, align 4, !tbaa !203
  call void @llvm.dbg.value(metadata i32 %11, metadata !440, metadata !DIExpression()), !dbg !449
  store i32 %11, i32* %21, align 4, !tbaa !450
  %31 = bitcast float* %22 to i8*, !dbg !452
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #13, !dbg !452
  %32 = bitcast float* %23 to i8*, !dbg !452
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #13, !dbg !452
  %33 = bitcast float* %24 to i8*, !dbg !452
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #13, !dbg !452
  %34 = bitcast float* %25 to i8*, !dbg !452
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34) #13, !dbg !452
  %35 = bitcast float* %26 to i8*, !dbg !452
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #13, !dbg !452
  %36 = bitcast float* %27 to i8*, !dbg !452
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #13, !dbg !452
  %37 = bitcast float* %28 to i8*, !dbg !452
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #13, !dbg !452
  call void @llvm.dbg.value(metadata float %10, metadata !439, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata float %6, metadata !435, metadata !DIExpression()), !dbg !449
  %38 = fdiv float %10, %6, !dbg !453
  call void @llvm.dbg.value(metadata float %38, metadata !448, metadata !DIExpression()), !dbg !449
  %39 = fdiv float %38, %7, !dbg !454
  call void @llvm.dbg.value(metadata float %39, metadata !442, metadata !DIExpression()), !dbg !449
  store float %39, float* %23, align 4, !dbg !455, !tbaa !203
  call void @llvm.dbg.value(metadata float %39, metadata !441, metadata !DIExpression()), !dbg !449
  store float %39, float* %22, align 4, !dbg !456, !tbaa !203
  %40 = fdiv float %38, %8, !dbg !457
  call void @llvm.dbg.value(metadata float %40, metadata !444, metadata !DIExpression()), !dbg !449
  store float %40, float* %25, align 4, !dbg !458, !tbaa !203
  call void @llvm.dbg.value(metadata float %40, metadata !443, metadata !DIExpression()), !dbg !449
  store float %40, float* %24, align 4, !dbg !459, !tbaa !203
  %41 = fdiv float %38, %9, !dbg !460
  call void @llvm.dbg.value(metadata float %41, metadata !446, metadata !DIExpression()), !dbg !449
  store float %41, float* %27, align 4, !dbg !461, !tbaa !203
  call void @llvm.dbg.value(metadata float %41, metadata !445, metadata !DIExpression()), !dbg !449
  store float %41, float* %26, align 4, !dbg !462, !tbaa !203
  call void @llvm.dbg.value(metadata float %39, metadata !441, metadata !DIExpression()), !dbg !449
  %42 = fpext float %39 to double, !dbg !463
  %43 = fmul double %42, 2.000000e+00, !dbg !464
  call void @llvm.dbg.value(metadata float %40, metadata !443, metadata !DIExpression()), !dbg !449
  %44 = fpext float %40 to double, !dbg !465
  %45 = fmul double %44, 2.000000e+00, !dbg !466
  %46 = fadd double %43, %45, !dbg !467
  %47 = fpext float %41 to double, !dbg !468
  %48 = fmul double %47, 3.000000e+00, !dbg !469
  %49 = fadd double %48, %46, !dbg !470
  %50 = fsub double 1.000000e+00, %49, !dbg !471
  %51 = fptrunc double %50 to float, !dbg !472
  call void @llvm.dbg.value(metadata float %51, metadata !447, metadata !DIExpression()), !dbg !449
  store float %51, float* %28, align 4, !dbg !473, !tbaa !203
  %52 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %29, i64 0, i32 4, !dbg !474
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @4, i64 0, i64 0), i8** %52, align 8, !dbg !474, !tbaa !475
  call void @llvm.dbg.value(metadata float** %13, metadata !429, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float** %14, metadata !430, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float** %15, metadata !431, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata i32* %16, metadata !432, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata i32* %17, metadata !433, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata i32* %18, metadata !434, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float* %19, metadata !435, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float* %20, metadata !439, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata i32* %21, metadata !440, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float* %22, metadata !441, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float* %23, metadata !442, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float* %24, metadata !443, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float* %25, metadata !444, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float* %26, metadata !445, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float* %27, metadata !446, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void @llvm.dbg.value(metadata float* %28, metadata !447, metadata !DIExpression(DW_OP_deref)), !dbg !449
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %29, i32 16, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, float**, float**, i32*, i32*, i32*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float**, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), float** nonnull %14, float** nonnull %15, i32* nonnull %18, i32* nonnull %17, i32* nonnull %16, float* nonnull %28, float* nonnull %23, float* nonnull %22, float* nonnull %25, float* nonnull %24, float* nonnull %27, float* nonnull %26, float* nonnull %20, float* nonnull %19, float** nonnull %13, i32* nonnull %21) #13, !dbg !474
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #13, !dbg !477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #13, !dbg !477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #13, !dbg !477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %34) #13, !dbg !477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #13, !dbg !477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #13, !dbg !477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #13, !dbg !477
  ret void, !dbg !477
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare void @__kmpc_end_master(%struct.ident_t*, i32) local_unnamed_addr

declare i32 @__kmpc_master(%struct.ident_t*, i32) local_unnamed_addr

declare !dbg !80 i32 @omp_get_num_threads(...) local_unnamed_addr #6

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind sspstrong uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, float** nocapture readonly dereferenceable(8) %2, float** nocapture readonly dereferenceable(8) %3, i32* nocapture readonly dereferenceable(4) %4, i32* nocapture readonly dereferenceable(4) %5, i32* nocapture readonly dereferenceable(4) %6, float* nocapture readonly dereferenceable(4) %7, float* nocapture readonly dereferenceable(4) %8, float* nocapture readonly dereferenceable(4) %9, float* nocapture readonly dereferenceable(4) %10, float* nocapture readonly dereferenceable(4) %11, float* nocapture readonly dereferenceable(4) %12, float* nocapture readonly dereferenceable(4) %13, float* nocapture readonly dereferenceable(4) %14, float* nocapture readonly dereferenceable(4) %15, float** nocapture readonly dereferenceable(8) %16, i32* nocapture readonly dereferenceable(4) %17) #7 !dbg !478 {
  %19 = alloca %struct.ident_t, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !489, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32* %1, metadata !490, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float** %2, metadata !491, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float** %3, metadata !492, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32* %4, metadata !493, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32* %5, metadata !494, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32* %6, metadata !495, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float* %7, metadata !496, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float* %8, metadata !497, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float* %9, metadata !498, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float* %10, metadata !499, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float* %11, metadata !500, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float* %12, metadata !501, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float* %13, metadata !502, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float* %14, metadata !503, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float* %15, metadata !504, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata float** %16, metadata !505, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32* %17, metadata !506, metadata !DIExpression()), !dbg !507
  %24 = load i32, i32* %0, align 4, !dbg !508, !tbaa !450
  %25 = load float*, float** %2, align 8, !dbg !508, !tbaa !121
  %26 = load float*, float** %3, align 8, !dbg !508, !tbaa !121
  %27 = bitcast %struct.ident_t* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %27)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %27, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 16, i1 false) #13
  call void @llvm.dbg.value(metadata i32* undef, metadata !509, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata i32* %4, metadata !515, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata i32* %5, metadata !516, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata i32* %6, metadata !517, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata float* %7, metadata !518, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata float* %8, metadata !519, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata float* %9, metadata !520, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata float* %10, metadata !521, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata float* %11, metadata !522, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata float* %12, metadata !523, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata float* %13, metadata !524, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata float* %14, metadata !525, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata float* %15, metadata !526, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata float** %16, metadata !527, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata i32* %17, metadata !528, metadata !DIExpression()) #13, !dbg !560
  call void @llvm.dbg.value(metadata i32 0, metadata !529, metadata !DIExpression()) #13, !dbg !562
  call void @llvm.dbg.value(metadata float* %25, metadata !531, metadata !DIExpression()) #13, !dbg !562
  call void @llvm.dbg.value(metadata float* %26, metadata !532, metadata !DIExpression()) #13, !dbg !562
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %19, i64 0, i32 4, !dbg !563
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1, i64 0, i64 0), i8** %28, align 8, !dbg !563, !tbaa !475
  %29 = call i32 @__kmpc_master(%struct.ident_t* nonnull %19, i32 %24) #13, !dbg !563
  %30 = icmp eq i32 %29, 0, !dbg !563
  br i1 %30, label %34, label %31, !dbg !563

31:                                               ; preds = %18
  %32 = call i32 (...) @omp_get_num_threads() #13, !dbg !564
  %33 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %32) #13, !dbg !566
  call void @__kmpc_end_master(%struct.ident_t* nonnull %19, i32 %24) #13, !dbg !566
  br label %34, !dbg !566

34:                                               ; preds = %31, %18
  %35 = bitcast i32* %20 to i8*, !dbg !567
  %36 = bitcast i32* %21 to i8*, !dbg !567
  %37 = bitcast i32* %22 to i8*, !dbg !567
  %38 = bitcast i32* %23 to i8*, !dbg !567
  br label %39, !dbg !568

39:                                               ; preds = %600, %34
  %40 = phi float* [ %26, %34 ], [ %41, %600 ], !dbg !562
  %41 = phi float* [ %25, %34 ], [ %40, %600 ], !dbg !562
  %42 = phi i32 [ 0, %34 ], [ %601, %600 ], !dbg !562
  call void @llvm.dbg.value(metadata i32 %42, metadata !529, metadata !DIExpression()) #13, !dbg !562
  call void @llvm.dbg.value(metadata float* %41, metadata !531, metadata !DIExpression()) #13, !dbg !562
  call void @llvm.dbg.value(metadata float* %40, metadata !532, metadata !DIExpression()) #13, !dbg !562
  %43 = load i32, i32* %4, align 4, !dbg !569, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %43, metadata !537, metadata !DIExpression()) #13, !dbg !570
  %44 = add nsw i32 %43, -1, !dbg !571
  call void @llvm.dbg.value(metadata i32 %44, metadata !537, metadata !DIExpression()) #13, !dbg !570
  call void @llvm.dbg.value(metadata i32 0, metadata !538, metadata !DIExpression()) #13, !dbg !570
  %45 = icmp sgt i32 %43, 0, !dbg !571
  br i1 %45, label %46, label %600, !dbg !572

46:                                               ; preds = %39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #13, !dbg !572
  call void @llvm.dbg.value(metadata i32 0, metadata !539, metadata !DIExpression()) #13, !dbg !570
  store i32 0, i32* %20, align 4, !dbg !573, !tbaa !450
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #13, !dbg !572
  call void @llvm.dbg.value(metadata i32 %44, metadata !540, metadata !DIExpression()) #13, !dbg !570
  store i32 %44, i32* %21, align 4, !dbg !573, !tbaa !450
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #13, !dbg !572
  call void @llvm.dbg.value(metadata i32 1, metadata !541, metadata !DIExpression()) #13, !dbg !570
  store i32 1, i32* %22, align 4, !dbg !573, !tbaa !450
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38) #13, !dbg !572
  call void @llvm.dbg.value(metadata i32 0, metadata !542, metadata !DIExpression()) #13, !dbg !570
  store i32 0, i32* %23, align 4, !dbg !573, !tbaa !450
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2, i64 0, i64 0), i8** %28, align 8, !dbg !572, !tbaa !475
  call void @llvm.dbg.value(metadata i32* %20, metadata !539, metadata !DIExpression(DW_OP_deref)) #13, !dbg !570
  call void @llvm.dbg.value(metadata i32* %21, metadata !540, metadata !DIExpression(DW_OP_deref)) #13, !dbg !570
  call void @llvm.dbg.value(metadata i32* %22, metadata !541, metadata !DIExpression(DW_OP_deref)) #13, !dbg !570
  call void @llvm.dbg.value(metadata i32* %23, metadata !542, metadata !DIExpression(DW_OP_deref)) #13, !dbg !570
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %19, i32 %24, i32 34, i32* nonnull %23, i32* nonnull %20, i32* nonnull %21, i32* nonnull %22, i32 1, i32 1) #13, !dbg !572
  %47 = load i32, i32* %21, align 4, !dbg !573, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %47, metadata !540, metadata !DIExpression()) #13, !dbg !570
  %48 = icmp slt i32 %47, %43, !dbg !573
  %49 = select i1 %48, i32 %47, i32 %44, !dbg !573
  call void @llvm.dbg.value(metadata i32 %49, metadata !540, metadata !DIExpression()) #13, !dbg !570
  store i32 %49, i32* %21, align 4, !dbg !573, !tbaa !450
  %50 = load i32, i32* %20, align 4, !dbg !573, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %50, metadata !539, metadata !DIExpression()) #13, !dbg !570
  call void @llvm.dbg.value(metadata i32 %50, metadata !535, metadata !DIExpression()) #13, !dbg !570
  call void @llvm.dbg.value(metadata i32 %49, metadata !540, metadata !DIExpression()) #13, !dbg !570
  %51 = icmp sgt i32 %50, %49, !dbg !571
  br i1 %51, label %599, label %52, !dbg !572

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4, !dbg !574
  %54 = icmp sgt i32 %53, 0, !dbg !574
  %55 = load i32, i32* %6, align 4, !dbg !575
  %56 = icmp sgt i32 %55, 0, !dbg !575
  %57 = add nsw i32 %53, -1, !dbg !576
  %58 = icmp ne i32 %55, 1, !dbg !576
  %59 = zext i1 %58 to i32, !dbg !576
  %60 = icmp ne i32 %55, 1, !dbg !576
  %61 = zext i1 %60 to i32, !dbg !576
  %62 = icmp ne i32 %55, 1, !dbg !576
  %63 = zext i1 %62 to i32, !dbg !576
  %64 = icmp ne i32 %55, 1, !dbg !576
  %65 = zext i1 %64 to i32, !dbg !576
  br label %66, !dbg !572

66:                                               ; preds = %596, %52
  %67 = phi i32 [ %50, %52 ], [ %597, %596 ]
  call void @llvm.dbg.value(metadata i32 %67, metadata !535, metadata !DIExpression()) #13, !dbg !570
  call void @llvm.dbg.value(metadata i32 0, metadata !543, metadata !DIExpression()) #13, !dbg !577
  br i1 %54, label %68, label %596, !dbg !578

68:                                               ; preds = %66
  %69 = icmp eq i32 %67, 0, !dbg !576
  %70 = load i32, i32* %4, align 4, !dbg !576
  %71 = add nsw i32 %70, -1, !dbg !576
  %72 = icmp eq i32 %67, %71, !dbg !576
  %73 = load float*, float** %16, align 8, !dbg !576
  %74 = load i32, i32* %6, align 4, !dbg !575
  %75 = mul i32 %67, %53, !dbg !576
  %76 = icmp sgt i32 %74, 1, !dbg !575
  %77 = add nsw i32 %74, -1, !dbg !576
  %78 = icmp sgt i32 %74, 1, !dbg !575
  %79 = add nsw i32 %74, -1, !dbg !576
  %80 = icmp sgt i32 %74, 1, !dbg !575
  %81 = add nsw i32 %74, -1, !dbg !576
  %82 = icmp sgt i32 %74, 1, !dbg !575
  %83 = add nsw i32 %74, -1, !dbg !576
  br label %84, !dbg !578

84:                                               ; preds = %593, %68
  %85 = phi i32 [ 0, %68 ], [ %594, %593 ]
  call void @llvm.dbg.value(metadata i32 %85, metadata !543, metadata !DIExpression()) #13, !dbg !577
  call void @llvm.dbg.value(metadata i32 0, metadata !545, metadata !DIExpression()) #13, !dbg !579
  br i1 %56, label %86, label %593, !dbg !580

86:                                               ; preds = %84
  %87 = add i32 %85, %75
  %88 = icmp eq i32 %85, 0, !dbg !576
  %89 = icmp eq i32 %85, %57, !dbg !576
  call void @llvm.dbg.value(metadata i32 0, metadata !545, metadata !DIExpression()) #13, !dbg !579
  call void @llvm.dbg.value(metadata i32 0, metadata !545, metadata !DIExpression()) #13, !dbg !579
  call void @llvm.dbg.value(metadata i32 0, metadata !545, metadata !DIExpression()) #13, !dbg !579
  call void @llvm.dbg.value(metadata i32 0, metadata !545, metadata !DIExpression()) #13, !dbg !579
  %90 = mul i32 %55, %87
  call void @llvm.dbg.value(metadata i32 %90, metadata !549, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !549, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !549, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !549, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !553, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !553, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !553, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !553, metadata !DIExpression()) #13, !dbg !576
  br i1 %88, label %281, label %91, !dbg !580

91:                                               ; preds = %86
  br i1 %89, label %156, label %92, !dbg !580

92:                                               ; preds = %91
  %93 = add nsw i32 %90, %59, !dbg !581
  call void @llvm.dbg.value(metadata i32 %93, metadata !554, metadata !DIExpression()) #13, !dbg !576
  %94 = sub nsw i32 %90, %55, !dbg !582
  call void @llvm.dbg.value(metadata i32 %94, metadata !555, metadata !DIExpression()) #13, !dbg !576
  %95 = add nsw i32 %90, %55, !dbg !583
  call void @llvm.dbg.value(metadata i32 %95, metadata !556, metadata !DIExpression()) #13, !dbg !576
  %96 = load i32, i32* %5, align 4, !dbg !584
  %97 = mul nsw i32 %96, %55, !dbg !584
  %98 = select i1 %69, i32 0, i32 %97, !dbg !584
  %99 = sub nsw i32 %90, %98, !dbg !584
  call void @llvm.dbg.value(metadata i32 %99, metadata !557, metadata !DIExpression()) #13, !dbg !576
  %100 = select i1 %72, i32 0, i32 %97, !dbg !585
  %101 = add nsw i32 %100, %90, !dbg !585
  call void @llvm.dbg.value(metadata i32 %101, metadata !558, metadata !DIExpression()) #13, !dbg !576
  %102 = load float, float* %7, align 4, !dbg !586, !tbaa !203
  %103 = sext i32 %90 to i64, !dbg !587
  %104 = getelementptr inbounds float, float* %41, i64 %103, !dbg !587
  %105 = load float, float* %104, align 4, !dbg !587, !tbaa !203
  %106 = fmul float %102, %105, !dbg !588
  %107 = load float, float* %8, align 4, !dbg !589, !tbaa !203
  %108 = sext i32 %90 to i64, !dbg !590
  %109 = getelementptr inbounds float, float* %41, i64 %108, !dbg !590
  %110 = load float, float* %109, align 4, !dbg !590, !tbaa !203
  %111 = fmul float %107, %110, !dbg !591
  %112 = fadd float %106, %111, !dbg !592
  %113 = load float, float* %9, align 4, !dbg !593, !tbaa !203
  %114 = sext i32 %93 to i64, !dbg !594
  %115 = getelementptr inbounds float, float* %41, i64 %114, !dbg !594
  %116 = load float, float* %115, align 4, !dbg !594, !tbaa !203
  %117 = fmul float %113, %116, !dbg !595
  %118 = fadd float %112, %117, !dbg !596
  %119 = load float, float* %10, align 4, !dbg !597, !tbaa !203
  %120 = sext i32 %95 to i64, !dbg !598
  %121 = getelementptr inbounds float, float* %41, i64 %120, !dbg !598
  %122 = load float, float* %121, align 4, !dbg !598, !tbaa !203
  %123 = fmul float %119, %122, !dbg !599
  %124 = fadd float %118, %123, !dbg !600
  %125 = load float, float* %11, align 4, !dbg !601, !tbaa !203
  %126 = sext i32 %94 to i64, !dbg !602
  %127 = getelementptr inbounds float, float* %41, i64 %126, !dbg !602
  %128 = load float, float* %127, align 4, !dbg !602, !tbaa !203
  %129 = fmul float %125, %128, !dbg !603
  %130 = fadd float %124, %129, !dbg !604
  %131 = load float, float* %12, align 4, !dbg !605, !tbaa !203
  %132 = sext i32 %99 to i64, !dbg !606
  %133 = getelementptr inbounds float, float* %41, i64 %132, !dbg !606
  %134 = load float, float* %133, align 4, !dbg !606, !tbaa !203
  %135 = fmul float %131, %134, !dbg !607
  %136 = fadd float %130, %135, !dbg !608
  %137 = load float, float* %13, align 4, !dbg !609, !tbaa !203
  %138 = sext i32 %101 to i64, !dbg !610
  %139 = getelementptr inbounds float, float* %41, i64 %138, !dbg !610
  %140 = load float, float* %139, align 4, !dbg !610, !tbaa !203
  %141 = fmul float %137, %140, !dbg !611
  %142 = fadd float %136, %141, !dbg !612
  %143 = load float, float* %14, align 4, !dbg !613, !tbaa !203
  %144 = load float, float* %15, align 4, !dbg !614, !tbaa !203
  %145 = fdiv float %143, %144, !dbg !615
  %146 = getelementptr inbounds float, float* %73, i64 %103, !dbg !616
  %147 = load float, float* %146, align 4, !dbg !616, !tbaa !203
  %148 = fmul float %145, %147, !dbg !617
  %149 = fadd float %142, %148, !dbg !618
  %150 = load float, float* @amb_temp, align 4, !dbg !619, !tbaa !203
  %151 = fmul float %137, %150, !dbg !620
  %152 = fadd float %149, %151, !dbg !621
  %153 = getelementptr inbounds float, float* %40, i64 %103, !dbg !622
  store float %152, float* %153, align 4, !dbg !623, !tbaa !203
  call void @llvm.dbg.value(metadata i32 1, metadata !545, metadata !DIExpression()) #13, !dbg !579
  br i1 %76, label %154, label %593, !dbg !580

154:                                              ; preds = %92
  %155 = mul i32 %74, %87
  br label %524, !dbg !580

156:                                              ; preds = %91
  %157 = add nsw i32 %90, %61, !dbg !581
  call void @llvm.dbg.value(metadata i32 %157, metadata !554, metadata !DIExpression()) #13, !dbg !576
  %158 = sub nsw i32 %90, %55, !dbg !582
  call void @llvm.dbg.value(metadata i32 %158, metadata !555, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !556, metadata !DIExpression()) #13, !dbg !576
  %159 = load i32, i32* %5, align 4, !dbg !584
  %160 = mul nsw i32 %159, %55, !dbg !584
  %161 = select i1 %69, i32 0, i32 %160, !dbg !584
  %162 = sub nsw i32 %90, %161, !dbg !584
  call void @llvm.dbg.value(metadata i32 %162, metadata !557, metadata !DIExpression()) #13, !dbg !576
  %163 = select i1 %72, i32 0, i32 %160, !dbg !585
  %164 = add nsw i32 %163, %90, !dbg !585
  call void @llvm.dbg.value(metadata i32 %164, metadata !558, metadata !DIExpression()) #13, !dbg !576
  %165 = load float, float* %7, align 4, !dbg !586, !tbaa !203
  %166 = sext i32 %90 to i64, !dbg !587
  %167 = getelementptr inbounds float, float* %41, i64 %166, !dbg !587
  %168 = load float, float* %167, align 4, !dbg !587, !tbaa !203
  %169 = fmul float %165, %168, !dbg !588
  %170 = load float, float* %8, align 4, !dbg !589, !tbaa !203
  %171 = sext i32 %90 to i64, !dbg !590
  %172 = getelementptr inbounds float, float* %41, i64 %171, !dbg !590
  %173 = load float, float* %172, align 4, !dbg !590, !tbaa !203
  %174 = fmul float %170, %173, !dbg !591
  %175 = fadd float %169, %174, !dbg !592
  %176 = load float, float* %9, align 4, !dbg !593, !tbaa !203
  %177 = sext i32 %157 to i64, !dbg !594
  %178 = getelementptr inbounds float, float* %41, i64 %177, !dbg !594
  %179 = load float, float* %178, align 4, !dbg !594, !tbaa !203
  %180 = fmul float %176, %179, !dbg !595
  %181 = fadd float %175, %180, !dbg !596
  %182 = load float, float* %10, align 4, !dbg !597, !tbaa !203
  %183 = fmul float %182, %168, !dbg !599
  %184 = fadd float %181, %183, !dbg !600
  %185 = load float, float* %11, align 4, !dbg !601, !tbaa !203
  %186 = sext i32 %158 to i64, !dbg !602
  %187 = getelementptr inbounds float, float* %41, i64 %186, !dbg !602
  %188 = load float, float* %187, align 4, !dbg !602, !tbaa !203
  %189 = fmul float %185, %188, !dbg !603
  %190 = fadd float %184, %189, !dbg !604
  %191 = load float, float* %12, align 4, !dbg !605, !tbaa !203
  %192 = sext i32 %162 to i64, !dbg !606
  %193 = getelementptr inbounds float, float* %41, i64 %192, !dbg !606
  %194 = load float, float* %193, align 4, !dbg !606, !tbaa !203
  %195 = fmul float %191, %194, !dbg !607
  %196 = fadd float %190, %195, !dbg !608
  %197 = load float, float* %13, align 4, !dbg !609, !tbaa !203
  %198 = sext i32 %164 to i64, !dbg !610
  %199 = getelementptr inbounds float, float* %41, i64 %198, !dbg !610
  %200 = load float, float* %199, align 4, !dbg !610, !tbaa !203
  %201 = fmul float %197, %200, !dbg !611
  %202 = fadd float %196, %201, !dbg !612
  %203 = load float, float* %14, align 4, !dbg !613, !tbaa !203
  %204 = load float, float* %15, align 4, !dbg !614, !tbaa !203
  %205 = fdiv float %203, %204, !dbg !615
  %206 = getelementptr inbounds float, float* %73, i64 %166, !dbg !616
  %207 = load float, float* %206, align 4, !dbg !616, !tbaa !203
  %208 = fmul float %205, %207, !dbg !617
  %209 = fadd float %202, %208, !dbg !618
  %210 = load float, float* @amb_temp, align 4, !dbg !619, !tbaa !203
  %211 = fmul float %197, %210, !dbg !620
  %212 = fadd float %209, %211, !dbg !621
  %213 = getelementptr inbounds float, float* %40, i64 %166, !dbg !622
  store float %212, float* %213, align 4, !dbg !623, !tbaa !203
  call void @llvm.dbg.value(metadata i32 1, metadata !545, metadata !DIExpression()) #13, !dbg !579
  br i1 %78, label %214, label %593, !dbg !580

214:                                              ; preds = %156
  %215 = mul i32 %74, %87
  br label %216, !dbg !580

216:                                              ; preds = %216, %214
  %217 = phi i32 [ %279, %216 ], [ 1, %214 ]
  call void @llvm.dbg.value(metadata i32 %217, metadata !545, metadata !DIExpression()) #13, !dbg !579
  %218 = add i32 %215, %217, !dbg !624
  call void @llvm.dbg.value(metadata i32 %218, metadata !549, metadata !DIExpression()) #13, !dbg !576
  %219 = add nsw i32 %218, -1, !dbg !625
  call void @llvm.dbg.value(metadata i32 %219, metadata !553, metadata !DIExpression()) #13, !dbg !576
  %220 = icmp ne i32 %217, %79, !dbg !626
  %221 = zext i1 %220 to i32, !dbg !581
  %222 = add nsw i32 %218, %221, !dbg !581
  call void @llvm.dbg.value(metadata i32 %222, metadata !554, metadata !DIExpression()) #13, !dbg !576
  %223 = sub nsw i32 %218, %74, !dbg !582
  call void @llvm.dbg.value(metadata i32 %223, metadata !555, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %218, metadata !556, metadata !DIExpression()) #13, !dbg !576
  %224 = load i32, i32* %5, align 4, !dbg !584
  %225 = mul nsw i32 %224, %74, !dbg !584
  %226 = select i1 %69, i32 0, i32 %225, !dbg !584
  %227 = sub nsw i32 %218, %226, !dbg !584
  call void @llvm.dbg.value(metadata i32 %227, metadata !557, metadata !DIExpression()) #13, !dbg !576
  %228 = select i1 %72, i32 0, i32 %225, !dbg !585
  %229 = add nsw i32 %228, %218, !dbg !585
  call void @llvm.dbg.value(metadata i32 %229, metadata !558, metadata !DIExpression()) #13, !dbg !576
  %230 = load float, float* %7, align 4, !dbg !586, !tbaa !203
  %231 = sext i32 %218 to i64, !dbg !587
  %232 = getelementptr inbounds float, float* %41, i64 %231, !dbg !587
  %233 = load float, float* %232, align 4, !dbg !587, !tbaa !203
  %234 = fmul float %230, %233, !dbg !588
  %235 = load float, float* %8, align 4, !dbg !589, !tbaa !203
  %236 = sext i32 %219 to i64, !dbg !590
  %237 = getelementptr inbounds float, float* %41, i64 %236, !dbg !590
  %238 = load float, float* %237, align 4, !dbg !590, !tbaa !203
  %239 = fmul float %235, %238, !dbg !591
  %240 = fadd float %234, %239, !dbg !592
  %241 = load float, float* %9, align 4, !dbg !593, !tbaa !203
  %242 = sext i32 %222 to i64, !dbg !594
  %243 = getelementptr inbounds float, float* %41, i64 %242, !dbg !594
  %244 = load float, float* %243, align 4, !dbg !594, !tbaa !203
  %245 = fmul float %241, %244, !dbg !595
  %246 = fadd float %240, %245, !dbg !596
  %247 = load float, float* %10, align 4, !dbg !597, !tbaa !203
  %248 = fmul float %247, %233, !dbg !599
  %249 = fadd float %246, %248, !dbg !600
  %250 = load float, float* %11, align 4, !dbg !601, !tbaa !203
  %251 = sext i32 %223 to i64, !dbg !602
  %252 = getelementptr inbounds float, float* %41, i64 %251, !dbg !602
  %253 = load float, float* %252, align 4, !dbg !602, !tbaa !203
  %254 = fmul float %250, %253, !dbg !603
  %255 = fadd float %249, %254, !dbg !604
  %256 = load float, float* %12, align 4, !dbg !605, !tbaa !203
  %257 = sext i32 %227 to i64, !dbg !606
  %258 = getelementptr inbounds float, float* %41, i64 %257, !dbg !606
  %259 = load float, float* %258, align 4, !dbg !606, !tbaa !203
  %260 = fmul float %256, %259, !dbg !607
  %261 = fadd float %255, %260, !dbg !608
  %262 = load float, float* %13, align 4, !dbg !609, !tbaa !203
  %263 = sext i32 %229 to i64, !dbg !610
  %264 = getelementptr inbounds float, float* %41, i64 %263, !dbg !610
  %265 = load float, float* %264, align 4, !dbg !610, !tbaa !203
  %266 = fmul float %262, %265, !dbg !611
  %267 = fadd float %261, %266, !dbg !612
  %268 = load float, float* %14, align 4, !dbg !613, !tbaa !203
  %269 = load float, float* %15, align 4, !dbg !614, !tbaa !203
  %270 = fdiv float %268, %269, !dbg !615
  %271 = getelementptr inbounds float, float* %73, i64 %231, !dbg !616
  %272 = load float, float* %271, align 4, !dbg !616, !tbaa !203
  %273 = fmul float %270, %272, !dbg !617
  %274 = fadd float %267, %273, !dbg !618
  %275 = load float, float* @amb_temp, align 4, !dbg !619, !tbaa !203
  %276 = fmul float %262, %275, !dbg !620
  %277 = fadd float %274, %276, !dbg !621
  %278 = getelementptr inbounds float, float* %40, i64 %231, !dbg !622
  store float %277, float* %278, align 4, !dbg !623, !tbaa !203
  %279 = add nuw nsw i32 %217, 1, !dbg !627
  call void @llvm.dbg.value(metadata i32 %279, metadata !545, metadata !DIExpression()) #13, !dbg !579
  %280 = icmp slt i32 %279, %74, !dbg !628
  br i1 %280, label %216, label %593, !dbg !580, !llvm.loop !629

281:                                              ; preds = %86
  br i1 %89, label %342, label %282, !dbg !580

282:                                              ; preds = %281
  %283 = add nsw i32 %90, %63, !dbg !581
  call void @llvm.dbg.value(metadata i32 %283, metadata !554, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !555, metadata !DIExpression()) #13, !dbg !576
  %284 = add nsw i32 %90, %55, !dbg !583
  call void @llvm.dbg.value(metadata i32 %284, metadata !556, metadata !DIExpression()) #13, !dbg !576
  %285 = load i32, i32* %5, align 4, !dbg !584
  %286 = mul nsw i32 %285, %55, !dbg !584
  %287 = select i1 %69, i32 0, i32 %286, !dbg !584
  %288 = sub nsw i32 %90, %287, !dbg !584
  call void @llvm.dbg.value(metadata i32 %288, metadata !557, metadata !DIExpression()) #13, !dbg !576
  %289 = select i1 %72, i32 0, i32 %286, !dbg !585
  %290 = add nsw i32 %289, %90, !dbg !585
  call void @llvm.dbg.value(metadata i32 %290, metadata !558, metadata !DIExpression()) #13, !dbg !576
  %291 = load float, float* %7, align 4, !dbg !586, !tbaa !203
  %292 = sext i32 %90 to i64, !dbg !587
  %293 = getelementptr inbounds float, float* %41, i64 %292, !dbg !587
  %294 = load float, float* %293, align 4, !dbg !587, !tbaa !203
  %295 = fmul float %291, %294, !dbg !588
  %296 = load float, float* %8, align 4, !dbg !589, !tbaa !203
  %297 = sext i32 %90 to i64, !dbg !590
  %298 = getelementptr inbounds float, float* %41, i64 %297, !dbg !590
  %299 = load float, float* %298, align 4, !dbg !590, !tbaa !203
  %300 = fmul float %296, %299, !dbg !591
  %301 = fadd float %295, %300, !dbg !592
  %302 = load float, float* %9, align 4, !dbg !593, !tbaa !203
  %303 = sext i32 %283 to i64, !dbg !594
  %304 = getelementptr inbounds float, float* %41, i64 %303, !dbg !594
  %305 = load float, float* %304, align 4, !dbg !594, !tbaa !203
  %306 = fmul float %302, %305, !dbg !595
  %307 = fadd float %301, %306, !dbg !596
  %308 = load float, float* %10, align 4, !dbg !597, !tbaa !203
  %309 = sext i32 %284 to i64, !dbg !598
  %310 = getelementptr inbounds float, float* %41, i64 %309, !dbg !598
  %311 = load float, float* %310, align 4, !dbg !598, !tbaa !203
  %312 = fmul float %308, %311, !dbg !599
  %313 = fadd float %307, %312, !dbg !600
  %314 = load float, float* %11, align 4, !dbg !601, !tbaa !203
  %315 = fmul float %294, %314, !dbg !603
  %316 = fadd float %313, %315, !dbg !604
  %317 = load float, float* %12, align 4, !dbg !605, !tbaa !203
  %318 = sext i32 %288 to i64, !dbg !606
  %319 = getelementptr inbounds float, float* %41, i64 %318, !dbg !606
  %320 = load float, float* %319, align 4, !dbg !606, !tbaa !203
  %321 = fmul float %317, %320, !dbg !607
  %322 = fadd float %316, %321, !dbg !608
  %323 = load float, float* %13, align 4, !dbg !609, !tbaa !203
  %324 = sext i32 %290 to i64, !dbg !610
  %325 = getelementptr inbounds float, float* %41, i64 %324, !dbg !610
  %326 = load float, float* %325, align 4, !dbg !610, !tbaa !203
  %327 = fmul float %323, %326, !dbg !611
  %328 = fadd float %322, %327, !dbg !612
  %329 = load float, float* %14, align 4, !dbg !613, !tbaa !203
  %330 = load float, float* %15, align 4, !dbg !614, !tbaa !203
  %331 = fdiv float %329, %330, !dbg !615
  %332 = getelementptr inbounds float, float* %73, i64 %292, !dbg !616
  %333 = load float, float* %332, align 4, !dbg !616, !tbaa !203
  %334 = fmul float %331, %333, !dbg !617
  %335 = fadd float %328, %334, !dbg !618
  %336 = load float, float* @amb_temp, align 4, !dbg !619, !tbaa !203
  %337 = fmul float %323, %336, !dbg !620
  %338 = fadd float %335, %337, !dbg !621
  %339 = getelementptr inbounds float, float* %40, i64 %292, !dbg !622
  store float %338, float* %339, align 4, !dbg !623, !tbaa !203
  call void @llvm.dbg.value(metadata i32 1, metadata !545, metadata !DIExpression()) #13, !dbg !579
  br i1 %80, label %340, label %593, !dbg !580

340:                                              ; preds = %282
  %341 = mul i32 %74, %87
  br label %459, !dbg !580

342:                                              ; preds = %281
  %343 = add nsw i32 %90, %65, !dbg !581
  call void @llvm.dbg.value(metadata i32 %343, metadata !554, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !555, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %90, metadata !556, metadata !DIExpression()) #13, !dbg !576
  %344 = load i32, i32* %5, align 4, !dbg !584
  %345 = mul nsw i32 %344, %55, !dbg !584
  %346 = select i1 %69, i32 0, i32 %345, !dbg !584
  %347 = sub nsw i32 %90, %346, !dbg !584
  call void @llvm.dbg.value(metadata i32 %347, metadata !557, metadata !DIExpression()) #13, !dbg !576
  %348 = select i1 %72, i32 0, i32 %345, !dbg !585
  %349 = add nsw i32 %348, %90, !dbg !585
  call void @llvm.dbg.value(metadata i32 %349, metadata !558, metadata !DIExpression()) #13, !dbg !576
  %350 = load float, float* %7, align 4, !dbg !586, !tbaa !203
  %351 = sext i32 %90 to i64, !dbg !587
  %352 = getelementptr inbounds float, float* %41, i64 %351, !dbg !587
  %353 = load float, float* %352, align 4, !dbg !587, !tbaa !203
  %354 = fmul float %350, %353, !dbg !588
  %355 = load float, float* %8, align 4, !dbg !589, !tbaa !203
  %356 = sext i32 %90 to i64, !dbg !590
  %357 = getelementptr inbounds float, float* %41, i64 %356, !dbg !590
  %358 = load float, float* %357, align 4, !dbg !590, !tbaa !203
  %359 = fmul float %355, %358, !dbg !591
  %360 = fadd float %354, %359, !dbg !592
  %361 = load float, float* %9, align 4, !dbg !593, !tbaa !203
  %362 = sext i32 %343 to i64, !dbg !594
  %363 = getelementptr inbounds float, float* %41, i64 %362, !dbg !594
  %364 = load float, float* %363, align 4, !dbg !594, !tbaa !203
  %365 = fmul float %361, %364, !dbg !595
  %366 = fadd float %360, %365, !dbg !596
  %367 = load float, float* %10, align 4, !dbg !597, !tbaa !203
  %368 = fmul float %367, %353, !dbg !599
  %369 = fadd float %366, %368, !dbg !600
  %370 = load float, float* %11, align 4, !dbg !601, !tbaa !203
  %371 = fmul float %353, %370, !dbg !603
  %372 = fadd float %369, %371, !dbg !604
  %373 = load float, float* %12, align 4, !dbg !605, !tbaa !203
  %374 = sext i32 %347 to i64, !dbg !606
  %375 = getelementptr inbounds float, float* %41, i64 %374, !dbg !606
  %376 = load float, float* %375, align 4, !dbg !606, !tbaa !203
  %377 = fmul float %373, %376, !dbg !607
  %378 = fadd float %372, %377, !dbg !608
  %379 = load float, float* %13, align 4, !dbg !609, !tbaa !203
  %380 = sext i32 %349 to i64, !dbg !610
  %381 = getelementptr inbounds float, float* %41, i64 %380, !dbg !610
  %382 = load float, float* %381, align 4, !dbg !610, !tbaa !203
  %383 = fmul float %379, %382, !dbg !611
  %384 = fadd float %378, %383, !dbg !612
  %385 = load float, float* %14, align 4, !dbg !613, !tbaa !203
  %386 = load float, float* %15, align 4, !dbg !614, !tbaa !203
  %387 = fdiv float %385, %386, !dbg !615
  %388 = getelementptr inbounds float, float* %73, i64 %351, !dbg !616
  %389 = load float, float* %388, align 4, !dbg !616, !tbaa !203
  %390 = fmul float %387, %389, !dbg !617
  %391 = fadd float %384, %390, !dbg !618
  %392 = load float, float* @amb_temp, align 4, !dbg !619, !tbaa !203
  %393 = fmul float %379, %392, !dbg !620
  %394 = fadd float %391, %393, !dbg !621
  %395 = getelementptr inbounds float, float* %40, i64 %351, !dbg !622
  store float %394, float* %395, align 4, !dbg !623, !tbaa !203
  call void @llvm.dbg.value(metadata i32 1, metadata !545, metadata !DIExpression()) #13, !dbg !579
  br i1 %82, label %396, label %593, !dbg !580

396:                                              ; preds = %342
  %397 = mul i32 %74, %87
  br label %398, !dbg !580

398:                                              ; preds = %398, %396
  %399 = phi i32 [ %457, %398 ], [ 1, %396 ]
  call void @llvm.dbg.value(metadata i32 %399, metadata !545, metadata !DIExpression()) #13, !dbg !579
  %400 = add i32 %397, %399, !dbg !624
  call void @llvm.dbg.value(metadata i32 %400, metadata !549, metadata !DIExpression()) #13, !dbg !576
  %401 = add nsw i32 %400, -1, !dbg !625
  call void @llvm.dbg.value(metadata i32 %401, metadata !553, metadata !DIExpression()) #13, !dbg !576
  %402 = icmp ne i32 %399, %83, !dbg !626
  %403 = zext i1 %402 to i32, !dbg !581
  %404 = add nsw i32 %400, %403, !dbg !581
  call void @llvm.dbg.value(metadata i32 %404, metadata !554, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %400, metadata !555, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %400, metadata !556, metadata !DIExpression()) #13, !dbg !576
  %405 = load i32, i32* %5, align 4, !dbg !584
  %406 = mul nsw i32 %405, %74, !dbg !584
  %407 = select i1 %69, i32 0, i32 %406, !dbg !584
  %408 = sub nsw i32 %400, %407, !dbg !584
  call void @llvm.dbg.value(metadata i32 %408, metadata !557, metadata !DIExpression()) #13, !dbg !576
  %409 = select i1 %72, i32 0, i32 %406, !dbg !585
  %410 = add nsw i32 %409, %400, !dbg !585
  call void @llvm.dbg.value(metadata i32 %410, metadata !558, metadata !DIExpression()) #13, !dbg !576
  %411 = load float, float* %7, align 4, !dbg !586, !tbaa !203
  %412 = sext i32 %400 to i64, !dbg !587
  %413 = getelementptr inbounds float, float* %41, i64 %412, !dbg !587
  %414 = load float, float* %413, align 4, !dbg !587, !tbaa !203
  %415 = fmul float %411, %414, !dbg !588
  %416 = load float, float* %8, align 4, !dbg !589, !tbaa !203
  %417 = sext i32 %401 to i64, !dbg !590
  %418 = getelementptr inbounds float, float* %41, i64 %417, !dbg !590
  %419 = load float, float* %418, align 4, !dbg !590, !tbaa !203
  %420 = fmul float %416, %419, !dbg !591
  %421 = fadd float %415, %420, !dbg !592
  %422 = load float, float* %9, align 4, !dbg !593, !tbaa !203
  %423 = sext i32 %404 to i64, !dbg !594
  %424 = getelementptr inbounds float, float* %41, i64 %423, !dbg !594
  %425 = load float, float* %424, align 4, !dbg !594, !tbaa !203
  %426 = fmul float %422, %425, !dbg !595
  %427 = fadd float %421, %426, !dbg !596
  %428 = load float, float* %10, align 4, !dbg !597, !tbaa !203
  %429 = fmul float %428, %414, !dbg !599
  %430 = fadd float %427, %429, !dbg !600
  %431 = load float, float* %11, align 4, !dbg !601, !tbaa !203
  %432 = fmul float %414, %431, !dbg !603
  %433 = fadd float %430, %432, !dbg !604
  %434 = load float, float* %12, align 4, !dbg !605, !tbaa !203
  %435 = sext i32 %408 to i64, !dbg !606
  %436 = getelementptr inbounds float, float* %41, i64 %435, !dbg !606
  %437 = load float, float* %436, align 4, !dbg !606, !tbaa !203
  %438 = fmul float %434, %437, !dbg !607
  %439 = fadd float %433, %438, !dbg !608
  %440 = load float, float* %13, align 4, !dbg !609, !tbaa !203
  %441 = sext i32 %410 to i64, !dbg !610
  %442 = getelementptr inbounds float, float* %41, i64 %441, !dbg !610
  %443 = load float, float* %442, align 4, !dbg !610, !tbaa !203
  %444 = fmul float %440, %443, !dbg !611
  %445 = fadd float %439, %444, !dbg !612
  %446 = load float, float* %14, align 4, !dbg !613, !tbaa !203
  %447 = load float, float* %15, align 4, !dbg !614, !tbaa !203
  %448 = fdiv float %446, %447, !dbg !615
  %449 = getelementptr inbounds float, float* %73, i64 %412, !dbg !616
  %450 = load float, float* %449, align 4, !dbg !616, !tbaa !203
  %451 = fmul float %448, %450, !dbg !617
  %452 = fadd float %445, %451, !dbg !618
  %453 = load float, float* @amb_temp, align 4, !dbg !619, !tbaa !203
  %454 = fmul float %440, %453, !dbg !620
  %455 = fadd float %452, %454, !dbg !621
  %456 = getelementptr inbounds float, float* %40, i64 %412, !dbg !622
  store float %455, float* %456, align 4, !dbg !623, !tbaa !203
  %457 = add nuw nsw i32 %399, 1, !dbg !627
  call void @llvm.dbg.value(metadata i32 %457, metadata !545, metadata !DIExpression()) #13, !dbg !579
  %458 = icmp slt i32 %457, %74, !dbg !628
  br i1 %458, label %398, label %593, !dbg !580, !llvm.loop !632

459:                                              ; preds = %459, %340
  %460 = phi i32 [ %522, %459 ], [ 1, %340 ]
  call void @llvm.dbg.value(metadata i32 %460, metadata !545, metadata !DIExpression()) #13, !dbg !579
  %461 = add i32 %341, %460, !dbg !624
  call void @llvm.dbg.value(metadata i32 %461, metadata !549, metadata !DIExpression()) #13, !dbg !576
  %462 = add nsw i32 %461, -1, !dbg !625
  call void @llvm.dbg.value(metadata i32 %462, metadata !553, metadata !DIExpression()) #13, !dbg !576
  %463 = icmp ne i32 %460, %81, !dbg !626
  %464 = zext i1 %463 to i32, !dbg !581
  %465 = add nsw i32 %461, %464, !dbg !581
  call void @llvm.dbg.value(metadata i32 %465, metadata !554, metadata !DIExpression()) #13, !dbg !576
  call void @llvm.dbg.value(metadata i32 %461, metadata !555, metadata !DIExpression()) #13, !dbg !576
  %466 = add nsw i32 %461, %74, !dbg !583
  call void @llvm.dbg.value(metadata i32 %466, metadata !556, metadata !DIExpression()) #13, !dbg !576
  %467 = load i32, i32* %5, align 4, !dbg !584
  %468 = mul nsw i32 %467, %74, !dbg !584
  %469 = select i1 %69, i32 0, i32 %468, !dbg !584
  %470 = sub nsw i32 %461, %469, !dbg !584
  call void @llvm.dbg.value(metadata i32 %470, metadata !557, metadata !DIExpression()) #13, !dbg !576
  %471 = select i1 %72, i32 0, i32 %468, !dbg !585
  %472 = add nsw i32 %471, %461, !dbg !585
  call void @llvm.dbg.value(metadata i32 %472, metadata !558, metadata !DIExpression()) #13, !dbg !576
  %473 = load float, float* %7, align 4, !dbg !586, !tbaa !203
  %474 = sext i32 %461 to i64, !dbg !587
  %475 = getelementptr inbounds float, float* %41, i64 %474, !dbg !587
  %476 = load float, float* %475, align 4, !dbg !587, !tbaa !203
  %477 = fmul float %473, %476, !dbg !588
  %478 = load float, float* %8, align 4, !dbg !589, !tbaa !203
  %479 = sext i32 %462 to i64, !dbg !590
  %480 = getelementptr inbounds float, float* %41, i64 %479, !dbg !590
  %481 = load float, float* %480, align 4, !dbg !590, !tbaa !203
  %482 = fmul float %478, %481, !dbg !591
  %483 = fadd float %477, %482, !dbg !592
  %484 = load float, float* %9, align 4, !dbg !593, !tbaa !203
  %485 = sext i32 %465 to i64, !dbg !594
  %486 = getelementptr inbounds float, float* %41, i64 %485, !dbg !594
  %487 = load float, float* %486, align 4, !dbg !594, !tbaa !203
  %488 = fmul float %484, %487, !dbg !595
  %489 = fadd float %483, %488, !dbg !596
  %490 = load float, float* %10, align 4, !dbg !597, !tbaa !203
  %491 = sext i32 %466 to i64, !dbg !598
  %492 = getelementptr inbounds float, float* %41, i64 %491, !dbg !598
  %493 = load float, float* %492, align 4, !dbg !598, !tbaa !203
  %494 = fmul float %490, %493, !dbg !599
  %495 = fadd float %489, %494, !dbg !600
  %496 = load float, float* %11, align 4, !dbg !601, !tbaa !203
  %497 = fmul float %476, %496, !dbg !603
  %498 = fadd float %495, %497, !dbg !604
  %499 = load float, float* %12, align 4, !dbg !605, !tbaa !203
  %500 = sext i32 %470 to i64, !dbg !606
  %501 = getelementptr inbounds float, float* %41, i64 %500, !dbg !606
  %502 = load float, float* %501, align 4, !dbg !606, !tbaa !203
  %503 = fmul float %499, %502, !dbg !607
  %504 = fadd float %498, %503, !dbg !608
  %505 = load float, float* %13, align 4, !dbg !609, !tbaa !203
  %506 = sext i32 %472 to i64, !dbg !610
  %507 = getelementptr inbounds float, float* %41, i64 %506, !dbg !610
  %508 = load float, float* %507, align 4, !dbg !610, !tbaa !203
  %509 = fmul float %505, %508, !dbg !611
  %510 = fadd float %504, %509, !dbg !612
  %511 = load float, float* %14, align 4, !dbg !613, !tbaa !203
  %512 = load float, float* %15, align 4, !dbg !614, !tbaa !203
  %513 = fdiv float %511, %512, !dbg !615
  %514 = getelementptr inbounds float, float* %73, i64 %474, !dbg !616
  %515 = load float, float* %514, align 4, !dbg !616, !tbaa !203
  %516 = fmul float %513, %515, !dbg !617
  %517 = fadd float %510, %516, !dbg !618
  %518 = load float, float* @amb_temp, align 4, !dbg !619, !tbaa !203
  %519 = fmul float %505, %518, !dbg !620
  %520 = fadd float %517, %519, !dbg !621
  %521 = getelementptr inbounds float, float* %40, i64 %474, !dbg !622
  store float %520, float* %521, align 4, !dbg !623, !tbaa !203
  %522 = add nuw nsw i32 %460, 1, !dbg !627
  call void @llvm.dbg.value(metadata i32 %522, metadata !545, metadata !DIExpression()) #13, !dbg !579
  %523 = icmp slt i32 %522, %74, !dbg !628
  br i1 %523, label %459, label %593, !dbg !580, !llvm.loop !633

524:                                              ; preds = %524, %154
  %525 = phi i32 [ %591, %524 ], [ 1, %154 ]
  call void @llvm.dbg.value(metadata i32 %525, metadata !545, metadata !DIExpression()) #13, !dbg !579
  %526 = add i32 %155, %525, !dbg !624
  call void @llvm.dbg.value(metadata i32 %526, metadata !549, metadata !DIExpression()) #13, !dbg !576
  %527 = add nsw i32 %526, -1, !dbg !625
  call void @llvm.dbg.value(metadata i32 %527, metadata !553, metadata !DIExpression()) #13, !dbg !576
  %528 = icmp ne i32 %525, %77, !dbg !626
  %529 = zext i1 %528 to i32, !dbg !581
  %530 = add nsw i32 %526, %529, !dbg !581
  call void @llvm.dbg.value(metadata i32 %530, metadata !554, metadata !DIExpression()) #13, !dbg !576
  %531 = sub nsw i32 %526, %74, !dbg !582
  call void @llvm.dbg.value(metadata i32 %531, metadata !555, metadata !DIExpression()) #13, !dbg !576
  %532 = add nsw i32 %526, %74, !dbg !583
  call void @llvm.dbg.value(metadata i32 %532, metadata !556, metadata !DIExpression()) #13, !dbg !576
  %533 = load i32, i32* %5, align 4, !dbg !584
  %534 = mul nsw i32 %533, %74, !dbg !584
  %535 = select i1 %69, i32 0, i32 %534, !dbg !584
  %536 = sub nsw i32 %526, %535, !dbg !584
  call void @llvm.dbg.value(metadata i32 %536, metadata !557, metadata !DIExpression()) #13, !dbg !576
  %537 = select i1 %72, i32 0, i32 %534, !dbg !585
  %538 = add nsw i32 %537, %526, !dbg !585
  call void @llvm.dbg.value(metadata i32 %538, metadata !558, metadata !DIExpression()) #13, !dbg !576
  %539 = load float, float* %7, align 4, !dbg !586, !tbaa !203
  %540 = sext i32 %526 to i64, !dbg !587
  %541 = getelementptr inbounds float, float* %41, i64 %540, !dbg !587
  %542 = load float, float* %541, align 4, !dbg !587, !tbaa !203
  %543 = fmul float %539, %542, !dbg !588
  %544 = load float, float* %8, align 4, !dbg !589, !tbaa !203
  %545 = sext i32 %527 to i64, !dbg !590
  %546 = getelementptr inbounds float, float* %41, i64 %545, !dbg !590
  %547 = load float, float* %546, align 4, !dbg !590, !tbaa !203
  %548 = fmul float %544, %547, !dbg !591
  %549 = fadd float %543, %548, !dbg !592
  %550 = load float, float* %9, align 4, !dbg !593, !tbaa !203
  %551 = sext i32 %530 to i64, !dbg !594
  %552 = getelementptr inbounds float, float* %41, i64 %551, !dbg !594
  %553 = load float, float* %552, align 4, !dbg !594, !tbaa !203
  %554 = fmul float %550, %553, !dbg !595
  %555 = fadd float %549, %554, !dbg !596
  %556 = load float, float* %10, align 4, !dbg !597, !tbaa !203
  %557 = sext i32 %532 to i64, !dbg !598
  %558 = getelementptr inbounds float, float* %41, i64 %557, !dbg !598
  %559 = load float, float* %558, align 4, !dbg !598, !tbaa !203
  %560 = fmul float %556, %559, !dbg !599
  %561 = fadd float %555, %560, !dbg !600
  %562 = load float, float* %11, align 4, !dbg !601, !tbaa !203
  %563 = sext i32 %531 to i64, !dbg !602
  %564 = getelementptr inbounds float, float* %41, i64 %563, !dbg !602
  %565 = load float, float* %564, align 4, !dbg !602, !tbaa !203
  %566 = fmul float %562, %565, !dbg !603
  %567 = fadd float %561, %566, !dbg !604
  %568 = load float, float* %12, align 4, !dbg !605, !tbaa !203
  %569 = sext i32 %536 to i64, !dbg !606
  %570 = getelementptr inbounds float, float* %41, i64 %569, !dbg !606
  %571 = load float, float* %570, align 4, !dbg !606, !tbaa !203
  %572 = fmul float %568, %571, !dbg !607
  %573 = fadd float %567, %572, !dbg !608
  %574 = load float, float* %13, align 4, !dbg !609, !tbaa !203
  %575 = sext i32 %538 to i64, !dbg !610
  %576 = getelementptr inbounds float, float* %41, i64 %575, !dbg !610
  %577 = load float, float* %576, align 4, !dbg !610, !tbaa !203
  %578 = fmul float %574, %577, !dbg !611
  %579 = fadd float %573, %578, !dbg !612
  %580 = load float, float* %14, align 4, !dbg !613, !tbaa !203
  %581 = load float, float* %15, align 4, !dbg !614, !tbaa !203
  %582 = fdiv float %580, %581, !dbg !615
  %583 = getelementptr inbounds float, float* %73, i64 %540, !dbg !616
  %584 = load float, float* %583, align 4, !dbg !616, !tbaa !203
  %585 = fmul float %582, %584, !dbg !617
  %586 = fadd float %579, %585, !dbg !618
  %587 = load float, float* @amb_temp, align 4, !dbg !619, !tbaa !203
  %588 = fmul float %574, %587, !dbg !620
  %589 = fadd float %586, %588, !dbg !621
  %590 = getelementptr inbounds float, float* %40, i64 %540, !dbg !622
  store float %589, float* %590, align 4, !dbg !623, !tbaa !203
  %591 = add nuw nsw i32 %525, 1, !dbg !627
  call void @llvm.dbg.value(metadata i32 %591, metadata !545, metadata !DIExpression()) #13, !dbg !579
  %592 = icmp slt i32 %591, %74, !dbg !628
  br i1 %592, label %524, label %593, !dbg !580, !llvm.loop !634

593:                                              ; preds = %92, %524, %156, %216, %282, %459, %342, %398, %84
  %594 = add nuw nsw i32 %85, 1, !dbg !635
  call void @llvm.dbg.value(metadata i32 %594, metadata !543, metadata !DIExpression()) #13, !dbg !577
  %595 = icmp eq i32 %594, %53, !dbg !636
  br i1 %595, label %596, label %84, !dbg !578, !llvm.loop !637

596:                                              ; preds = %593, %66
  %597 = add nsw i32 %67, 1, !dbg !571
  call void @llvm.dbg.value(metadata i32 %597, metadata !535, metadata !DIExpression()) #13, !dbg !570
  call void @llvm.dbg.value(metadata i32 %49, metadata !540, metadata !DIExpression()) #13, !dbg !570
  %598 = icmp slt i32 %67, %49, !dbg !571
  br i1 %598, label %66, label %599, !dbg !572, !llvm.loop !639

599:                                              ; preds = %596, %46
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3, i64 0, i64 0), i8** %28, align 8, !dbg !640, !tbaa !475
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %19, i32 %24) #13, !dbg !640
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #13, !dbg !640
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #13, !dbg !640
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #13, !dbg !640
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #13, !dbg !640
  br label %600, !dbg !640

600:                                              ; preds = %599, %39
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2, i64 0, i64 0), i8** %28, align 8, !dbg !641, !tbaa !475
  call void @__kmpc_barrier(%struct.ident_t* nonnull %19, i32 %24) #13, !dbg !641
  call void @llvm.dbg.value(metadata float* %41, metadata !559, metadata !DIExpression()) #13, !dbg !567
  call void @llvm.dbg.value(metadata float* %40, metadata !531, metadata !DIExpression()) #13, !dbg !562
  call void @llvm.dbg.value(metadata float* %41, metadata !532, metadata !DIExpression()) #13, !dbg !562
  %601 = add nuw nsw i32 %42, 1, !dbg !642
  call void @llvm.dbg.value(metadata i32 %601, metadata !529, metadata !DIExpression()) #13, !dbg !562
  %602 = load i32, i32* %17, align 4, !dbg !643, !tbaa !450
  %603 = icmp slt i32 %601, %602, !dbg !644
  br i1 %603, label %39, label %604, !dbg !645, !llvm.loop !646

604:                                              ; preds = %600
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %27), !dbg !648
  ret void, !dbg !508
}

declare !callback !649 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #8 !dbg !651 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !655, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i8** %1, metadata !656, metadata !DIExpression()), !dbg !657
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !658, !tbaa !121
  %4 = load i8*, i8** %1, align 8, !dbg !659, !tbaa !121
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i64 0, i64 0), i8* %4) #12, !dbg !660
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !661, !tbaa !121
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i64 67, i64 1, %struct._IO_FILE* %6) #12, !dbg !662
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !663, !tbaa !121
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %8) #12, !dbg !664
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !665, !tbaa !121
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %10) #12, !dbg !666
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !667, !tbaa !121
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.16, i64 0, i64 0), i64 82, i64 1, %struct._IO_FILE* %12) #12, !dbg !668
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !669, !tbaa !121
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.17, i64 0, i64 0), i64 87, i64 1, %struct._IO_FILE* %14) #12, !dbg !670
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !671, !tbaa !121
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %16) #12, !dbg !672
  tail call void @exit(i32 1) #15, !dbg !673
  unreachable, !dbg !673
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #3 !dbg !674 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.ident_t, align 8
  %20 = alloca %struct.timeval, align 8
  %21 = alloca %struct.timeval, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !678, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i8** %1, metadata !679, metadata !DIExpression()), !dbg !706
  %22 = icmp eq i32 %0, 7, !dbg !707
  br i1 %22, label %24, label %23, !dbg !709

23:                                               ; preds = %2
  tail call void @usage(i32 undef, i8** %1), !dbg !710
  unreachable

24:                                               ; preds = %2
  %25 = getelementptr inbounds i8*, i8** %1, i64 3, !dbg !712
  %26 = load i8*, i8** %25, align 8, !dbg !712, !tbaa !121
  call void @llvm.dbg.value(metadata i8* %26, metadata !713, metadata !DIExpression()) #13, !dbg !718
  %27 = tail call i64 @strtol(i8* nocapture nonnull %26, i8** null, i32 10) #13, !dbg !720
  %28 = trunc i64 %27 to i32, !dbg !721
  call void @llvm.dbg.value(metadata i32 %28, metadata !683, metadata !DIExpression()), !dbg !706
  %29 = getelementptr inbounds i8*, i8** %1, i64 4, !dbg !722
  %30 = load i8*, i8** %29, align 8, !dbg !722, !tbaa !121
  call void @llvm.dbg.value(metadata i8* %30, metadata !680, metadata !DIExpression()), !dbg !706
  %31 = getelementptr inbounds i8*, i8** %1, i64 5, !dbg !723
  %32 = load i8*, i8** %31, align 8, !dbg !723, !tbaa !121
  call void @llvm.dbg.value(metadata i8* %32, metadata !681, metadata !DIExpression()), !dbg !706
  %33 = getelementptr inbounds i8*, i8** %1, i64 6, !dbg !724
  %34 = load i8*, i8** %33, align 8, !dbg !724, !tbaa !121
  call void @llvm.dbg.value(metadata i8* %34, metadata !682, metadata !DIExpression()), !dbg !706
  %35 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !725
  %36 = load i8*, i8** %35, align 8, !dbg !725, !tbaa !121
  call void @llvm.dbg.value(metadata i8* %36, metadata !713, metadata !DIExpression()) #13, !dbg !726
  %37 = tail call i64 @strtol(i8* nocapture nonnull %36, i8** null, i32 10) #13, !dbg !728
  %38 = trunc i64 %37 to i32, !dbg !729
  call void @llvm.dbg.value(metadata i32 %38, metadata !684, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i32 %38, metadata !685, metadata !DIExpression()), !dbg !706
  %39 = getelementptr inbounds i8*, i8** %1, i64 2, !dbg !730
  %40 = load i8*, i8** %39, align 8, !dbg !730, !tbaa !121
  call void @llvm.dbg.value(metadata i8* %40, metadata !713, metadata !DIExpression()) #13, !dbg !731
  %41 = tail call i64 @strtol(i8* nocapture nonnull %40, i8** null, i32 10) #13, !dbg !733
  %42 = trunc i64 %41 to i32, !dbg !734
  call void @llvm.dbg.value(metadata i32 %42, metadata !686, metadata !DIExpression()), !dbg !706
  %43 = load float, float* @chip_height, align 4, !dbg !735, !tbaa !203
  %44 = sitofp i32 %38 to float, !dbg !736
  %45 = load float, float* @chip_width, align 4, !dbg !737, !tbaa !203
  %46 = insertelement <2 x float> undef, float %43, i32 0, !dbg !738
  %47 = insertelement <2 x float> %46, float %45, i32 1, !dbg !738
  %48 = insertelement <2 x float> undef, float %44, i32 0, !dbg !738
  %49 = shufflevector <2 x float> %48, <2 x float> undef, <2 x i32> zeroinitializer, !dbg !738
  %50 = fdiv <2 x float> %47, %49, !dbg !738
  %51 = load float, float* @t_chip, align 4, !dbg !739, !tbaa !203
  %52 = sitofp i32 %42 to float, !dbg !740
  %53 = fdiv float %51, %52, !dbg !741
  call void @llvm.dbg.value(metadata float %53, metadata !689, metadata !DIExpression()), !dbg !706
  %54 = fpext float %51 to double, !dbg !742
  %55 = fmul double %54, 8.750000e+05, !dbg !743
  %56 = extractelement <2 x float> %50, i32 0, !dbg !744
  %57 = fpext float %56 to double, !dbg !744
  %58 = fmul double %55, %57, !dbg !745
  %59 = extractelement <2 x float> %50, i32 1, !dbg !746
  %60 = fpext float %59 to double, !dbg !746
  %61 = fmul double %58, %60, !dbg !747
  %62 = fptrunc double %61 to float, !dbg !748
  call void @llvm.dbg.value(metadata float %62, metadata !690, metadata !DIExpression()), !dbg !706
  %63 = fmul double %54, 2.000000e+02, !dbg !749
  %64 = fmul double %63, %57, !dbg !750
  %65 = fdiv double %60, %64, !dbg !751
  %66 = fptrunc double %65 to float, !dbg !752
  call void @llvm.dbg.value(metadata float %66, metadata !691, metadata !DIExpression()), !dbg !706
  %67 = fmul double %63, %60, !dbg !753
  %68 = fdiv double %57, %67, !dbg !754
  %69 = fptrunc double %68 to float, !dbg !755
  call void @llvm.dbg.value(metadata float %69, metadata !692, metadata !DIExpression()), !dbg !706
  %70 = fmul float %56, 1.000000e+02, !dbg !756
  %71 = fmul float %70, %59, !dbg !757
  %72 = fdiv float %53, %71, !dbg !758
  call void @llvm.dbg.value(metadata float %72, metadata !693, metadata !DIExpression()), !dbg !706
  %73 = fmul double %54, 5.000000e-01, !dbg !759
  %74 = fmul double %73, 1.750000e+06, !dbg !760
  %75 = fdiv double 3.000000e+06, %74, !dbg !761
  %76 = fptrunc double %75 to float, !dbg !762
  call void @llvm.dbg.value(metadata float %76, metadata !694, metadata !DIExpression()), !dbg !706
  %77 = fpext float %76 to double, !dbg !763
  %78 = fdiv double 1.000000e-03, %77, !dbg !764
  %79 = fptrunc double %78 to float, !dbg !765
  call void @llvm.dbg.value(metadata float %79, metadata !695, metadata !DIExpression()), !dbg !706
  %80 = mul nsw i32 %38, %38, !dbg !766
  %81 = mul nsw i32 %80, %42, !dbg !767
  call void @llvm.dbg.value(metadata i32 %81, metadata !700, metadata !DIExpression()), !dbg !706
  %82 = sext i32 %81 to i64, !dbg !768
  %83 = tail call noalias i8* @calloc(i64 %82, i64 4) #13, !dbg !769
  %84 = bitcast i8* %83 to float*, !dbg !770
  call void @llvm.dbg.value(metadata float* %84, metadata !696, metadata !DIExpression()), !dbg !706
  %85 = shl nsw i64 %82, 2, !dbg !771
  %86 = tail call noalias i8* @malloc(i64 %85) #13, !dbg !772
  %87 = bitcast i8* %86 to float*, !dbg !773
  call void @llvm.dbg.value(metadata float* %87, metadata !699, metadata !DIExpression()), !dbg !706
  %88 = tail call noalias i8* @calloc(i64 %82, i64 4) #13, !dbg !774
  %89 = bitcast i8* %88 to float*, !dbg !775
  call void @llvm.dbg.value(metadata float* %89, metadata !698, metadata !DIExpression()), !dbg !706
  %90 = tail call noalias i8* @calloc(i64 %82, i64 4) #13, !dbg !776
  %91 = bitcast i8* %90 to float*, !dbg !777
  call void @llvm.dbg.value(metadata float* %91, metadata !697, metadata !DIExpression()), !dbg !706
  %92 = tail call noalias i8* @calloc(i64 %82, i64 4) #13, !dbg !778
  %93 = bitcast i8* %92 to float*, !dbg !779
  call void @llvm.dbg.value(metadata float* %93, metadata !701, metadata !DIExpression()), !dbg !706
  tail call void @readinput(float* %84, i32 %38, i32 %38, i32 %42, i8* %30), !dbg !780
  tail call void @readinput(float* %89, i32 %38, i32 %38, i32 %42, i8* %32), !dbg !781
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %88, i64 %85, i1 false), !dbg !782
  %94 = bitcast %struct.timeval* %20 to i8*, !dbg !783
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %94) #13, !dbg !783
  call void @llvm.dbg.declare(metadata %struct.timeval* %20, metadata !702, metadata !DIExpression()), !dbg !784
  %95 = bitcast %struct.timeval* %21 to i8*, !dbg !783
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %95) #13, !dbg !783
  call void @llvm.dbg.declare(metadata %struct.timeval* %21, metadata !703, metadata !DIExpression()), !dbg !785
  %96 = call i32 @gettimeofday(%struct.timeval* nonnull %20, i8* null) #13, !dbg !786
  %97 = bitcast float** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %97)
  %98 = bitcast float** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %98)
  %99 = bitcast float** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %99)
  %100 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %100)
  %101 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %101)
  %102 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %102)
  %103 = bitcast float* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %103)
  %104 = bitcast float* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %104)
  %105 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %105)
  %106 = bitcast %struct.ident_t* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %106)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %106, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 16, i1 false) #13
  call void @llvm.dbg.value(metadata float* %84, metadata !429, metadata !DIExpression()) #13, !dbg !787
  %107 = bitcast float** %3 to i8**
  store i8* %83, i8** %107, align 8, !tbaa !121
  call void @llvm.dbg.value(metadata float* %89, metadata !430, metadata !DIExpression()) #13, !dbg !787
  %108 = bitcast float** %4 to i8**
  store i8* %88, i8** %108, align 8, !tbaa !121
  call void @llvm.dbg.value(metadata float* %91, metadata !431, metadata !DIExpression()) #13, !dbg !787
  %109 = bitcast float** %5 to i8**
  store i8* %90, i8** %109, align 8, !tbaa !121
  call void @llvm.dbg.value(metadata i32 %38, metadata !432, metadata !DIExpression()) #13, !dbg !787
  store i32 %38, i32* %6, align 4, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %38, metadata !433, metadata !DIExpression()) #13, !dbg !787
  store i32 %38, i32* %7, align 4, !tbaa !450
  call void @llvm.dbg.value(metadata i32 %42, metadata !434, metadata !DIExpression()) #13, !dbg !787
  store i32 %42, i32* %8, align 4, !tbaa !450
  call void @llvm.dbg.value(metadata float %62, metadata !435, metadata !DIExpression()) #13, !dbg !787
  store float %62, float* %9, align 4, !tbaa !203
  call void @llvm.dbg.value(metadata float %66, metadata !436, metadata !DIExpression()) #13, !dbg !787
  call void @llvm.dbg.value(metadata float %69, metadata !437, metadata !DIExpression()) #13, !dbg !787
  call void @llvm.dbg.value(metadata float %72, metadata !438, metadata !DIExpression()) #13, !dbg !787
  call void @llvm.dbg.value(metadata float %79, metadata !439, metadata !DIExpression()) #13, !dbg !787
  store float %79, float* %10, align 4, !tbaa !203
  call void @llvm.dbg.value(metadata i32 %28, metadata !440, metadata !DIExpression()) #13, !dbg !787
  store i32 %28, i32* %11, align 4, !tbaa !450
  %110 = bitcast float* %12 to i8*, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %110) #13, !dbg !789
  %111 = bitcast float* %13 to i8*, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %111) #13, !dbg !789
  %112 = bitcast float* %14 to i8*, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %112) #13, !dbg !789
  %113 = bitcast float* %15 to i8*, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %113) #13, !dbg !789
  %114 = bitcast float* %16 to i8*, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #13, !dbg !789
  %115 = bitcast float* %17 to i8*, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115) #13, !dbg !789
  %116 = bitcast float* %18 to i8*, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %116) #13, !dbg !789
  call void @llvm.dbg.value(metadata float %79, metadata !439, metadata !DIExpression()) #13, !dbg !787
  call void @llvm.dbg.value(metadata float %62, metadata !435, metadata !DIExpression()) #13, !dbg !787
  %117 = fdiv float %79, %62, !dbg !790
  call void @llvm.dbg.value(metadata float %117, metadata !448, metadata !DIExpression()) #13, !dbg !787
  %118 = fdiv float %117, %66, !dbg !791
  call void @llvm.dbg.value(metadata float %118, metadata !442, metadata !DIExpression()) #13, !dbg !787
  store float %118, float* %13, align 4, !dbg !792, !tbaa !203
  call void @llvm.dbg.value(metadata float %118, metadata !441, metadata !DIExpression()) #13, !dbg !787
  store float %118, float* %12, align 4, !dbg !793, !tbaa !203
  %119 = fdiv float %117, %69, !dbg !794
  call void @llvm.dbg.value(metadata float %119, metadata !444, metadata !DIExpression()) #13, !dbg !787
  store float %119, float* %15, align 4, !dbg !795, !tbaa !203
  call void @llvm.dbg.value(metadata float %119, metadata !443, metadata !DIExpression()) #13, !dbg !787
  store float %119, float* %14, align 4, !dbg !796, !tbaa !203
  %120 = fdiv float %117, %72, !dbg !797
  call void @llvm.dbg.value(metadata float %120, metadata !446, metadata !DIExpression()) #13, !dbg !787
  store float %120, float* %17, align 4, !dbg !798, !tbaa !203
  call void @llvm.dbg.value(metadata float %120, metadata !445, metadata !DIExpression()) #13, !dbg !787
  store float %120, float* %16, align 4, !dbg !799, !tbaa !203
  call void @llvm.dbg.value(metadata float %118, metadata !441, metadata !DIExpression()) #13, !dbg !787
  %121 = fpext float %118 to double, !dbg !800
  %122 = fmul double %121, 2.000000e+00, !dbg !801
  call void @llvm.dbg.value(metadata float %119, metadata !443, metadata !DIExpression()) #13, !dbg !787
  %123 = fpext float %119 to double, !dbg !802
  %124 = fmul double %123, 2.000000e+00, !dbg !803
  %125 = fadd double %122, %124, !dbg !804
  %126 = fpext float %120 to double, !dbg !805
  %127 = fmul double %126, 3.000000e+00, !dbg !806
  %128 = fadd double %127, %125, !dbg !807
  %129 = fsub double 1.000000e+00, %128, !dbg !808
  %130 = fptrunc double %129 to float, !dbg !809
  call void @llvm.dbg.value(metadata float %130, metadata !447, metadata !DIExpression()) #13, !dbg !787
  store float %130, float* %18, align 4, !dbg !810, !tbaa !203
  %131 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %19, i64 0, i32 4, !dbg !811
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @4, i64 0, i64 0), i8** %131, align 8, !dbg !811, !tbaa !475
  call void @llvm.dbg.value(metadata float** %3, metadata !429, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float** %4, metadata !430, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float** %5, metadata !431, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata i32* %6, metadata !432, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata i32* %7, metadata !433, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata i32* %8, metadata !434, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float* %9, metadata !435, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float* %10, metadata !439, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata i32* %11, metadata !440, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float* %12, metadata !441, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float* %13, metadata !442, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float* %14, metadata !443, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float* %15, metadata !444, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float* %16, metadata !445, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float* %17, metadata !446, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void @llvm.dbg.value(metadata float* %18, metadata !447, metadata !DIExpression(DW_OP_deref)) #13, !dbg !787
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %19, i32 16, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, float**, float**, i32*, i32*, i32*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float**, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), float** nonnull %4, float** nonnull %5, i32* nonnull %8, i32* nonnull %7, i32* nonnull %6, float* nonnull %18, float* nonnull %13, float* nonnull %12, float* nonnull %15, float* nonnull %14, float* nonnull %17, float* nonnull %16, float* nonnull %10, float* nonnull %9, float** nonnull %3, i32* nonnull %11) #13, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %116) #13, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115) #13, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #13, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %113) #13, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %112) #13, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %111) #13, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %110) #13, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %97), !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %98), !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %99), !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %100), !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %101), !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %102), !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %103), !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %104), !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %105), !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %106), !dbg !812
  %132 = call i32 @gettimeofday(%struct.timeval* nonnull %21, i8* null) #13, !dbg !813
  %133 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i64 0, i32 1, !dbg !814
  %134 = load i64, i64* %133, align 8, !dbg !814, !tbaa !815
  %135 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i64 0, i32 1, !dbg !818
  %136 = load i64, i64* %135, align 8, !dbg !818, !tbaa !815
  %137 = sub nsw i64 %134, %136, !dbg !819
  %138 = sitofp i64 %137 to double, !dbg !820
  %139 = fmul double %138, 0x3EB0C6F7A0B5ED8D, !dbg !821
  %140 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i64 0, i32 0, !dbg !822
  %141 = load i64, i64* %140, align 8, !dbg !822, !tbaa !823
  %142 = sitofp i64 %141 to double, !dbg !824
  %143 = fadd double %139, %142, !dbg !825
  %144 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i64 0, i32 0, !dbg !826
  %145 = load i64, i64* %144, align 8, !dbg !826, !tbaa !823
  %146 = sitofp i64 %145 to double, !dbg !827
  %147 = fsub double %143, %146, !dbg !828
  %148 = fptrunc double %147 to float, !dbg !820
  call void @llvm.dbg.value(metadata float %148, metadata !704, metadata !DIExpression()), !dbg !706
  call void @computeTempCPU(float* %84, float* %87, float* %93, i32 %38, i32 %38, i32 %42, float %62, float %66, float %69, float %72, float %79, i32 %28), !dbg !829
  call void @llvm.dbg.value(metadata float* %91, metadata !402, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata float* %93, metadata !403, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata i32 %81, metadata !404, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !405, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()) #13, !dbg !830
  %149 = icmp sgt i32 %81, 0, !dbg !832
  br i1 %149, label %150, label %214, !dbg !833

150:                                              ; preds = %24
  %151 = zext i32 %81 to i64, !dbg !832
  %152 = add nsw i64 %151, -1, !dbg !833
  %153 = and i64 %151, 3, !dbg !833
  %154 = icmp ult i64 %152, 3, !dbg !833
  br i1 %154, label %195, label %155, !dbg !833

155:                                              ; preds = %150
  %156 = sub nsw i64 %151, %153, !dbg !833
  br label %157, !dbg !833

157:                                              ; preds = %157, %155
  %158 = phi i64 [ 0, %155 ], [ %192, %157 ]
  %159 = phi float [ 0.000000e+00, %155 ], [ %191, %157 ]
  %160 = phi i64 [ %156, %155 ], [ %193, %157 ]
  call void @llvm.dbg.value(metadata i64 %158, metadata !406, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata float %159, metadata !405, metadata !DIExpression()) #13, !dbg !830
  %161 = getelementptr inbounds float, float* %91, i64 %158, !dbg !834
  %162 = load float, float* %161, align 4, !dbg !834, !tbaa !203
  %163 = getelementptr inbounds float, float* %93, i64 %158, !dbg !835
  %164 = load float, float* %163, align 4, !dbg !835, !tbaa !203
  %165 = fsub float %162, %164, !dbg !836
  %166 = fmul float %165, %165, !dbg !837
  %167 = fadd float %159, %166, !dbg !838
  call void @llvm.dbg.value(metadata float %167, metadata !405, metadata !DIExpression()) #13, !dbg !830
  %168 = or i64 %158, 1, !dbg !839
  call void @llvm.dbg.value(metadata i64 %168, metadata !406, metadata !DIExpression()) #13, !dbg !830
  %169 = getelementptr inbounds float, float* %91, i64 %168, !dbg !834
  %170 = load float, float* %169, align 4, !dbg !834, !tbaa !203
  %171 = getelementptr inbounds float, float* %93, i64 %168, !dbg !835
  %172 = load float, float* %171, align 4, !dbg !835, !tbaa !203
  %173 = fsub float %170, %172, !dbg !836
  %174 = fmul float %173, %173, !dbg !837
  %175 = fadd float %167, %174, !dbg !838
  call void @llvm.dbg.value(metadata float %175, metadata !405, metadata !DIExpression()) #13, !dbg !830
  %176 = or i64 %158, 2, !dbg !839
  call void @llvm.dbg.value(metadata i64 %176, metadata !406, metadata !DIExpression()) #13, !dbg !830
  %177 = getelementptr inbounds float, float* %91, i64 %176, !dbg !834
  %178 = load float, float* %177, align 4, !dbg !834, !tbaa !203
  %179 = getelementptr inbounds float, float* %93, i64 %176, !dbg !835
  %180 = load float, float* %179, align 4, !dbg !835, !tbaa !203
  %181 = fsub float %178, %180, !dbg !836
  %182 = fmul float %181, %181, !dbg !837
  %183 = fadd float %175, %182, !dbg !838
  call void @llvm.dbg.value(metadata float %183, metadata !405, metadata !DIExpression()) #13, !dbg !830
  %184 = or i64 %158, 3, !dbg !839
  call void @llvm.dbg.value(metadata i64 %184, metadata !406, metadata !DIExpression()) #13, !dbg !830
  %185 = getelementptr inbounds float, float* %91, i64 %184, !dbg !834
  %186 = load float, float* %185, align 4, !dbg !834, !tbaa !203
  %187 = getelementptr inbounds float, float* %93, i64 %184, !dbg !835
  %188 = load float, float* %187, align 4, !dbg !835, !tbaa !203
  %189 = fsub float %186, %188, !dbg !836
  %190 = fmul float %189, %189, !dbg !837
  %191 = fadd float %183, %190, !dbg !838
  call void @llvm.dbg.value(metadata float %191, metadata !405, metadata !DIExpression()) #13, !dbg !830
  %192 = add nuw nsw i64 %158, 4, !dbg !839
  call void @llvm.dbg.value(metadata i64 %192, metadata !406, metadata !DIExpression()) #13, !dbg !830
  %193 = add i64 %160, -4, !dbg !833
  %194 = icmp eq i64 %193, 0, !dbg !833
  br i1 %194, label %195, label %157, !dbg !833, !llvm.loop !840

195:                                              ; preds = %157, %150
  %196 = phi float [ undef, %150 ], [ %191, %157 ]
  %197 = phi i64 [ 0, %150 ], [ %192, %157 ]
  %198 = phi float [ 0.000000e+00, %150 ], [ %191, %157 ]
  %199 = icmp eq i64 %153, 0, !dbg !833
  br i1 %199, label %214, label %200, !dbg !833

200:                                              ; preds = %195, %200
  %201 = phi i64 [ %211, %200 ], [ %197, %195 ]
  %202 = phi float [ %210, %200 ], [ %198, %195 ]
  %203 = phi i64 [ %212, %200 ], [ %153, %195 ]
  call void @llvm.dbg.value(metadata i64 %201, metadata !406, metadata !DIExpression()) #13, !dbg !830
  call void @llvm.dbg.value(metadata float %202, metadata !405, metadata !DIExpression()) #13, !dbg !830
  %204 = getelementptr inbounds float, float* %91, i64 %201, !dbg !834
  %205 = load float, float* %204, align 4, !dbg !834, !tbaa !203
  %206 = getelementptr inbounds float, float* %93, i64 %201, !dbg !835
  %207 = load float, float* %206, align 4, !dbg !835, !tbaa !203
  %208 = fsub float %205, %207, !dbg !836
  %209 = fmul float %208, %208, !dbg !837
  %210 = fadd float %202, %209, !dbg !838
  call void @llvm.dbg.value(metadata float %210, metadata !405, metadata !DIExpression()) #13, !dbg !830
  %211 = add nuw nsw i64 %201, 1, !dbg !839
  call void @llvm.dbg.value(metadata i64 %211, metadata !406, metadata !DIExpression()) #13, !dbg !830
  %212 = add i64 %203, -1, !dbg !833
  %213 = icmp eq i64 %212, 0, !dbg !833
  br i1 %213, label %214, label %200, !dbg !833, !llvm.loop !842

214:                                              ; preds = %195, %200, %24
  %215 = phi float [ 0.000000e+00, %24 ], [ %196, %195 ], [ %210, %200 ], !dbg !830
  call void @llvm.dbg.value(metadata float %215, metadata !405, metadata !DIExpression()) #13, !dbg !830
  %216 = sitofp i32 %81 to float, !dbg !843
  %217 = fdiv float %215, %216, !dbg !844
  %218 = call float @sqrtf(float %217) #2, !dbg !845
  call void @llvm.dbg.value(metadata float %218, metadata !705, metadata !DIExpression()), !dbg !706
  %219 = fpext float %148 to double, !dbg !846
  %220 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), double %219), !dbg !847
  %221 = fpext float %218 to double, !dbg !848
  %222 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), double %221), !dbg !849
  call void @writeoutput(float* %91, i32 %38, i32 %38, i32 %42, i8* %34), !dbg !850
  call void @free(i8* %88) #13, !dbg !851
  call void @free(i8* %90) #13, !dbg !852
  call void @free(i8* %83) #13, !dbg !853
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %95) #13, !dbg !854
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %94) #13, !dbg !854
  ret i32 0, !dbg !855
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !84 i32 @gettimeofday(%struct.timeval* nocapture, i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !96 void @free(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare i8* @fgets_unlocked(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #11

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

attributes #0 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "amb_temp", scope: !2, file: !3, line: 23, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !101, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "3D.c", directory: "/home/andrew/class/clinic-hardware-accelerator/rodinia_3.1/openmp/hotspot3D")
!4 = !{}
!5 = !{!6, !60, !70, !73, !74, !79, !80, !83, !84, !96, !12, !100}
!6 = !DISubprogram(name: "fgets", scope: !7, file: !7, line: 568, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !15, line: 49, size: 1728, elements: !16)
!15 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !32, !33, !34, !35, !39, !41, !43, !47, !50, !52, !55, !58, !59, !61, !65, !66}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !14, file: !15, line: 51, baseType: !12, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !14, file: !15, line: 54, baseType: !10, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !14, file: !15, line: 55, baseType: !10, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !14, file: !15, line: 56, baseType: !10, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !14, file: !15, line: 57, baseType: !10, size: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !14, file: !15, line: 58, baseType: !10, size: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !14, file: !15, line: 59, baseType: !10, size: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !14, file: !15, line: 60, baseType: !10, size: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !14, file: !15, line: 61, baseType: !10, size: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !14, file: !15, line: 64, baseType: !10, size: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !14, file: !15, line: 65, baseType: !10, size: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !14, file: !15, line: 66, baseType: !10, size: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !14, file: !15, line: 68, baseType: !30, size: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !15, line: 36, flags: DIFlagFwdDecl)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !14, file: !15, line: 70, baseType: !13, size: 64, offset: 832)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !14, file: !15, line: 72, baseType: !12, size: 32, offset: 896)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !14, file: !15, line: 73, baseType: !12, size: 32, offset: 928)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !14, file: !15, line: 74, baseType: !36, size: 64, offset: 960)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 152, baseType: !38)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !14, file: !15, line: 77, baseType: !40, size: 16, offset: 1024)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !14, file: !15, line: 78, baseType: !42, size: 8, offset: 1040)
!42 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !14, file: !15, line: 79, baseType: !44, size: 8, offset: 1048)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !14, file: !15, line: 81, baseType: !48, size: 64, offset: 1088)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !15, line: 43, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !14, file: !15, line: 89, baseType: !51, size: 64, offset: 1152)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 153, baseType: !38)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !14, file: !15, line: 91, baseType: !53, size: 64, offset: 1216)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !15, line: 37, flags: DIFlagFwdDecl)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !14, file: !15, line: 92, baseType: !56, size: 64, offset: 1280)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !15, line: 38, flags: DIFlagFwdDecl)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !14, file: !15, line: 93, baseType: !13, size: 64, offset: 1344)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !14, file: !15, line: 94, baseType: !60, size: 64, offset: 1408)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !14, file: !15, line: 95, baseType: !62, size: 64, offset: 1472)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 46, baseType: !64)
!63 = !DIFile(filename: "/usr/lib/clang/10.0.1/include/stddef.h", directory: "")
!64 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !14, file: !15, line: 96, baseType: !12, size: 32, offset: 1536)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !14, file: !15, line: 98, baseType: !67, size: 160, offset: 1568)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 20)
!70 = !DISubprogram(name: "feof", scope: !7, file: !7, line: 764, type: !71, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!71 = !DISubroutineType(types: !72)
!72 = !{!12, !13}
!73 = !DISubprogram(name: "fclose", scope: !7, file: !7, line: 213, type: !71, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!74 = !DISubprogram(name: "fputs", scope: !7, file: !7, line: 631, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!75 = !DISubroutineType(types: !76)
!76 = !{!12, !77, !13}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!79 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!80 = !DISubprogram(name: "omp_get_num_threads", scope: !3, file: !3, line: 157, type: !81, flags: DIFlagArtificial, spFlags: DISPFlagOptimized, retainedNodes: !4)
!81 = !DISubroutineType(types: !82)
!82 = !{!12, null}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!84 = !DISubprogram(name: "gettimeofday", scope: !85, file: !85, line: 66, type: !86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!85 = !DIFile(filename: "/usr/include/sys/time.h", directory: "")
!86 = !DISubroutineType(types: !87)
!87 = !{!12, !88, !60}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !90, line: 8, size: 128, elements: !91)
!90 = !DIFile(filename: "/usr/include/bits/types/struct_timeval.h", directory: "")
!91 = !{!92, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !89, file: !90, line: 10, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !37, line: 160, baseType: !38)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !89, file: !90, line: 11, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !37, line: 162, baseType: !38)
!96 = !DISubprogram(name: "free", scope: !97, file: !97, line: 565, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!97 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!98 = !DISubroutineType(types: !99)
!99 = !{null, !60}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!101 = !{!102, !104, !106, !0}
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "t_chip", scope: !2, file: !3, line: 20, type: !79, isLocal: false, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "chip_height", scope: !2, file: !3, line: 21, type: !79, isLocal: false, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "chip_width", scope: !2, file: !3, line: 21, type: !79, isLocal: false, isDefinition: true)
!108 = !{i32 7, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 4}
!111 = !{i32 7, !"PIC Level", i32 2}
!112 = !{i32 7, !"PIE Level", i32 2}
!113 = !{!"clang version 10.0.1 "}
!114 = distinct !DISubprogram(name: "fatal", scope: !3, file: !3, line: 25, type: !115, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !10}
!117 = !{!118}
!118 = !DILocalVariable(name: "s", arg: 1, scope: !114, file: !3, line: 25, type: !10)
!119 = !DILocation(line: 0, scope: !114)
!120 = !DILocation(line: 27, column: 13, scope: !114)
!121 = !{!122, !122, i64 0}
!122 = !{!"any pointer", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C/C++ TBAA"}
!125 = !DILocation(line: 27, column: 5, scope: !114)
!126 = !DILocation(line: 28, column: 1, scope: !114)
!127 = distinct !DISubprogram(name: "readinput", scope: !3, file: !3, line: 30, type: !128, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !83, !12, !12, !12, !10}
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !143, !147}
!131 = !DILocalVariable(name: "vect", arg: 1, scope: !127, file: !3, line: 30, type: !83)
!132 = !DILocalVariable(name: "grid_rows", arg: 2, scope: !127, file: !3, line: 30, type: !12)
!133 = !DILocalVariable(name: "grid_cols", arg: 3, scope: !127, file: !3, line: 30, type: !12)
!134 = !DILocalVariable(name: "layers", arg: 4, scope: !127, file: !3, line: 30, type: !12)
!135 = !DILocalVariable(name: "file", arg: 5, scope: !127, file: !3, line: 30, type: !10)
!136 = !DILocalVariable(name: "i", scope: !127, file: !3, line: 31, type: !12)
!137 = !DILocalVariable(name: "j", scope: !127, file: !3, line: 31, type: !12)
!138 = !DILocalVariable(name: "k", scope: !127, file: !3, line: 31, type: !12)
!139 = !DILocalVariable(name: "fp", scope: !127, file: !3, line: 32, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !142, line: 7, baseType: !14)
!142 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!143 = !DILocalVariable(name: "str", scope: !127, file: !3, line: 33, type: !144)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 256)
!147 = !DILocalVariable(name: "val", scope: !127, file: !3, line: 34, type: !79)
!148 = !DILocation(line: 0, scope: !127)
!149 = !DILocation(line: 33, column: 5, scope: !127)
!150 = !DILocation(line: 33, column: 10, scope: !127)
!151 = !DILocation(line: 34, column: 5, scope: !127)
!152 = !DILocation(line: 36, column: 16, scope: !153)
!153 = distinct !DILexicalBlock(scope: !127, file: !3, line: 36, column: 9)
!154 = !DILocation(line: 36, column: 35, scope: !153)
!155 = !DILocation(line: 36, column: 9, scope: !127)
!156 = !DILocation(line: 0, scope: !114, inlinedAt: !157)
!157 = distinct !DILocation(line: 37, column: 7, scope: !153)
!158 = !DILocation(line: 27, column: 13, scope: !114, inlinedAt: !157)
!159 = !DILocation(line: 27, column: 5, scope: !114, inlinedAt: !157)
!160 = !DILocation(line: 37, column: 7, scope: !153)
!161 = !DILocation(line: 40, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 40, column: 5)
!163 = distinct !DILexicalBlock(scope: !127, file: !3, line: 40, column: 5)
!164 = !DILocation(line: 40, column: 5, scope: !163)
!165 = !DILocation(line: 0, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !3, line: 41, column: 7)
!167 = distinct !DILexicalBlock(scope: !162, file: !3, line: 41, column: 7)
!168 = !DILocation(line: 0, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 42, column: 9)
!170 = distinct !DILexicalBlock(scope: !166, file: !3, line: 42, column: 9)
!171 = !DILocation(line: 0, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !3, line: 43, column: 11)
!173 = !DILocation(line: 0, scope: !167)
!174 = !DILocation(line: 41, column: 7, scope: !167)
!175 = !DILocation(line: 42, column: 9, scope: !170)
!176 = !DILocation(line: 44, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !3, line: 44, column: 17)
!178 = !DILocation(line: 44, column: 42, scope: !177)
!179 = !DILocation(line: 44, column: 17, scope: !172)
!180 = !DILocation(line: 0, scope: !114, inlinedAt: !181)
!181 = distinct !DILocation(line: 44, column: 51, scope: !177)
!182 = !DILocation(line: 27, column: 13, scope: !114, inlinedAt: !181)
!183 = !DILocation(line: 27, column: 5, scope: !114, inlinedAt: !181)
!184 = !DILocation(line: 44, column: 51, scope: !177)
!185 = !DILocation(line: 45, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !172, file: !3, line: 45, column: 17)
!187 = !DILocation(line: 45, column: 17, scope: !172)
!188 = !DILocation(line: 0, scope: !114, inlinedAt: !189)
!189 = distinct !DILocation(line: 46, column: 15, scope: !186)
!190 = !DILocation(line: 27, column: 13, scope: !114, inlinedAt: !189)
!191 = !DILocation(line: 27, column: 5, scope: !114, inlinedAt: !189)
!192 = !DILocation(line: 46, column: 15, scope: !186)
!193 = !DILocation(line: 47, column: 18, scope: !194)
!194 = distinct !DILexicalBlock(scope: !172, file: !3, line: 47, column: 17)
!195 = !DILocation(line: 47, column: 42, scope: !194)
!196 = !DILocation(line: 47, column: 17, scope: !172)
!197 = !DILocation(line: 0, scope: !114, inlinedAt: !198)
!198 = distinct !DILocation(line: 48, column: 15, scope: !194)
!199 = !DILocation(line: 27, column: 13, scope: !114, inlinedAt: !198)
!200 = !DILocation(line: 27, column: 5, scope: !114, inlinedAt: !198)
!201 = !DILocation(line: 48, column: 15, scope: !194)
!202 = !DILocation(line: 49, column: 57, scope: !172)
!203 = !{!204, !204, i64 0}
!204 = !{!"float", !123, i64 0}
!205 = !DILocation(line: 49, column: 43, scope: !172)
!206 = !DILocation(line: 49, column: 31, scope: !172)
!207 = !DILocation(line: 49, column: 13, scope: !172)
!208 = !DILocation(line: 49, column: 55, scope: !172)
!209 = !DILocation(line: 42, column: 35, scope: !169)
!210 = !DILocation(line: 42, column: 21, scope: !169)
!211 = distinct !{!211, !175, !212}
!212 = !DILocation(line: 50, column: 11, scope: !170)
!213 = !DILocation(line: 41, column: 36, scope: !166)
!214 = !DILocation(line: 41, column: 19, scope: !166)
!215 = distinct !{!215, !174, !216}
!216 = !DILocation(line: 50, column: 11, scope: !167)
!217 = !DILocation(line: 40, column: 34, scope: !162)
!218 = distinct !{!218, !164, !219}
!219 = !DILocation(line: 50, column: 11, scope: !163)
!220 = !DILocation(line: 52, column: 5, scope: !127)
!221 = !DILocation(line: 54, column: 1, scope: !127)
!222 = distinct !DISubprogram(name: "writeoutput", scope: !3, file: !3, line: 57, type: !128, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!224 = !DILocalVariable(name: "vect", arg: 1, scope: !222, file: !3, line: 57, type: !83)
!225 = !DILocalVariable(name: "grid_rows", arg: 2, scope: !222, file: !3, line: 57, type: !12)
!226 = !DILocalVariable(name: "grid_cols", arg: 3, scope: !222, file: !3, line: 57, type: !12)
!227 = !DILocalVariable(name: "layers", arg: 4, scope: !222, file: !3, line: 57, type: !12)
!228 = !DILocalVariable(name: "file", arg: 5, scope: !222, file: !3, line: 57, type: !10)
!229 = !DILocalVariable(name: "i", scope: !222, file: !3, line: 59, type: !12)
!230 = !DILocalVariable(name: "j", scope: !222, file: !3, line: 59, type: !12)
!231 = !DILocalVariable(name: "k", scope: !222, file: !3, line: 59, type: !12)
!232 = !DILocalVariable(name: "index", scope: !222, file: !3, line: 59, type: !12)
!233 = !DILocalVariable(name: "fp", scope: !222, file: !3, line: 60, type: !140)
!234 = !DILocalVariable(name: "str", scope: !222, file: !3, line: 61, type: !144)
!235 = !DILocation(line: 0, scope: !222)
!236 = !DILocation(line: 61, column: 5, scope: !222)
!237 = !DILocation(line: 61, column: 10, scope: !222)
!238 = !DILocation(line: 63, column: 15, scope: !239)
!239 = distinct !DILexicalBlock(scope: !222, file: !3, line: 63, column: 9)
!240 = !DILocation(line: 63, column: 34, scope: !239)
!241 = !DILocation(line: 63, column: 9, scope: !222)
!242 = !DILocation(line: 64, column: 7, scope: !239)
!243 = !DILocation(line: 66, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 66, column: 5)
!245 = distinct !DILexicalBlock(scope: !222, file: !3, line: 66, column: 5)
!246 = !DILocation(line: 66, column: 5, scope: !245)
!247 = !DILocation(line: 0, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 67, column: 7)
!249 = distinct !DILexicalBlock(scope: !244, file: !3, line: 67, column: 7)
!250 = !DILocation(line: 0, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 68, column: 9)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 68, column: 9)
!253 = !DILocation(line: 67, column: 7, scope: !249)
!254 = !DILocation(line: 66, column: 31, scope: !244)
!255 = distinct !{!255, !246, !256}
!256 = !DILocation(line: 73, column: 11, scope: !245)
!257 = !DILocation(line: 68, column: 9, scope: !252)
!258 = !DILocation(line: 67, column: 33, scope: !248)
!259 = !DILocation(line: 67, column: 19, scope: !248)
!260 = distinct !{!260, !253, !261}
!261 = !DILocation(line: 73, column: 11, scope: !249)
!262 = !DILocation(line: 70, column: 75, scope: !263)
!263 = distinct !DILexicalBlock(scope: !251, file: !3, line: 69, column: 11)
!264 = !DILocation(line: 70, column: 63, scope: !263)
!265 = !DILocation(line: 70, column: 45, scope: !263)
!266 = !DILocation(line: 70, column: 13, scope: !263)
!267 = !DILocation(line: 71, column: 13, scope: !263)
!268 = !DILocation(line: 72, column: 18, scope: !263)
!269 = !DILocation(line: 68, column: 32, scope: !251)
!270 = !DILocation(line: 68, column: 21, scope: !251)
!271 = distinct !{!271, !257, !272}
!272 = !DILocation(line: 73, column: 11, scope: !252)
!273 = !DILocation(line: 75, column: 5, scope: !222)
!274 = !DILocation(line: 76, column: 1, scope: !222)
!275 = distinct !DISubprogram(name: "computeTempCPU", scope: !3, file: !3, line: 80, type: !276, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !83, !83, !83, !12, !12, !12, !79, !79, !79, !79, !79, !12}
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!279 = !DILocalVariable(name: "pIn", arg: 1, scope: !275, file: !3, line: 80, type: !83)
!280 = !DILocalVariable(name: "tIn", arg: 2, scope: !275, file: !3, line: 80, type: !83)
!281 = !DILocalVariable(name: "tOut", arg: 3, scope: !275, file: !3, line: 80, type: !83)
!282 = !DILocalVariable(name: "nx", arg: 4, scope: !275, file: !3, line: 81, type: !12)
!283 = !DILocalVariable(name: "ny", arg: 5, scope: !275, file: !3, line: 81, type: !12)
!284 = !DILocalVariable(name: "nz", arg: 6, scope: !275, file: !3, line: 81, type: !12)
!285 = !DILocalVariable(name: "Cap", arg: 7, scope: !275, file: !3, line: 81, type: !79)
!286 = !DILocalVariable(name: "Rx", arg: 8, scope: !275, file: !3, line: 82, type: !79)
!287 = !DILocalVariable(name: "Ry", arg: 9, scope: !275, file: !3, line: 82, type: !79)
!288 = !DILocalVariable(name: "Rz", arg: 10, scope: !275, file: !3, line: 82, type: !79)
!289 = !DILocalVariable(name: "dt", arg: 11, scope: !275, file: !3, line: 83, type: !79)
!290 = !DILocalVariable(name: "numiter", arg: 12, scope: !275, file: !3, line: 83, type: !12)
!291 = !DILocalVariable(name: "ce", scope: !275, file: !3, line: 84, type: !79)
!292 = !DILocalVariable(name: "cw", scope: !275, file: !3, line: 84, type: !79)
!293 = !DILocalVariable(name: "cn", scope: !275, file: !3, line: 84, type: !79)
!294 = !DILocalVariable(name: "cs", scope: !275, file: !3, line: 84, type: !79)
!295 = !DILocalVariable(name: "ct", scope: !275, file: !3, line: 84, type: !79)
!296 = !DILocalVariable(name: "cb", scope: !275, file: !3, line: 84, type: !79)
!297 = !DILocalVariable(name: "cc", scope: !275, file: !3, line: 84, type: !79)
!298 = !DILocalVariable(name: "stepDivCap", scope: !275, file: !3, line: 85, type: !79)
!299 = !DILocalVariable(name: "c", scope: !275, file: !3, line: 92, type: !12)
!300 = !DILocalVariable(name: "w", scope: !275, file: !3, line: 92, type: !12)
!301 = !DILocalVariable(name: "e", scope: !275, file: !3, line: 92, type: !12)
!302 = !DILocalVariable(name: "n", scope: !275, file: !3, line: 92, type: !12)
!303 = !DILocalVariable(name: "s", scope: !275, file: !3, line: 92, type: !12)
!304 = !DILocalVariable(name: "b", scope: !275, file: !3, line: 92, type: !12)
!305 = !DILocalVariable(name: "t", scope: !275, file: !3, line: 92, type: !12)
!306 = !DILocalVariable(name: "x", scope: !275, file: !3, line: 93, type: !12)
!307 = !DILocalVariable(name: "y", scope: !275, file: !3, line: 93, type: !12)
!308 = !DILocalVariable(name: "z", scope: !275, file: !3, line: 93, type: !12)
!309 = !DILocalVariable(name: "i", scope: !275, file: !3, line: 94, type: !12)
!310 = !DILocalVariable(name: "temp", scope: !311, file: !3, line: 112, type: !83)
!311 = distinct !DILexicalBlock(scope: !275, file: !3, line: 95, column: 7)
!312 = !DILocation(line: 0, scope: !275)
!313 = !DILocation(line: 85, column: 27, scope: !275)
!314 = !DILocation(line: 86, column: 24, scope: !275)
!315 = !DILocation(line: 87, column: 24, scope: !275)
!316 = !DILocation(line: 88, column: 24, scope: !275)
!317 = !DILocation(line: 90, column: 21, scope: !275)
!318 = !DILocation(line: 90, column: 20, scope: !275)
!319 = !DILocation(line: 90, column: 30, scope: !275)
!320 = !DILocation(line: 90, column: 29, scope: !275)
!321 = !DILocation(line: 90, column: 24, scope: !275)
!322 = !DILocation(line: 90, column: 39, scope: !275)
!323 = !DILocation(line: 90, column: 38, scope: !275)
!324 = !DILocation(line: 90, column: 33, scope: !275)
!325 = !DILocation(line: 90, column: 14, scope: !275)
!326 = !DILocation(line: 90, column: 10, scope: !275)
!327 = !DILocation(line: 0, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 96, column: 9)
!329 = distinct !DILexicalBlock(scope: !311, file: !3, line: 96, column: 9)
!330 = !DILocation(line: 0, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !3, line: 97, column: 13)
!332 = distinct !DILexicalBlock(scope: !328, file: !3, line: 97, column: 13)
!333 = !DILocation(line: 0, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 98, column: 17)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 98, column: 17)
!336 = !DILocation(line: 0, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !3, line: 99, column: 17)
!338 = !DILocation(line: 95, column: 5, scope: !275)
!339 = !DILocation(line: 96, column: 9, scope: !329)
!340 = !DILocation(line: 97, column: 13, scope: !332)
!341 = !DILocation(line: 98, column: 17, scope: !335)
!342 = !DILocation(line: 100, column: 36, scope: !337)
!343 = !DILocation(line: 102, column: 28, scope: !337)
!344 = !DILocation(line: 102, column: 25, scope: !337)
!345 = !DILocation(line: 103, column: 28, scope: !337)
!346 = !DILocation(line: 103, column: 25, scope: !337)
!347 = !DILocation(line: 104, column: 25, scope: !337)
!348 = !DILocation(line: 105, column: 25, scope: !337)
!349 = !DILocation(line: 106, column: 25, scope: !337)
!350 = !DILocation(line: 107, column: 25, scope: !337)
!351 = !DILocation(line: 110, column: 31, scope: !337)
!352 = !DILocation(line: 110, column: 37, scope: !337)
!353 = !DILocation(line: 110, column: 43, scope: !337)
!354 = !DILocation(line: 110, column: 49, scope: !337)
!355 = !DILocation(line: 110, column: 41, scope: !337)
!356 = !DILocation(line: 110, column: 55, scope: !337)
!357 = !DILocation(line: 110, column: 61, scope: !337)
!358 = !DILocation(line: 110, column: 53, scope: !337)
!359 = !DILocation(line: 110, column: 67, scope: !337)
!360 = !DILocation(line: 110, column: 73, scope: !337)
!361 = !DILocation(line: 110, column: 65, scope: !337)
!362 = !DILocation(line: 110, column: 79, scope: !337)
!363 = !DILocation(line: 110, column: 85, scope: !337)
!364 = !DILocation(line: 110, column: 77, scope: !337)
!365 = !DILocation(line: 110, column: 91, scope: !337)
!366 = !DILocation(line: 110, column: 97, scope: !337)
!367 = !DILocation(line: 110, column: 89, scope: !337)
!368 = !DILocation(line: 110, column: 103, scope: !337)
!369 = !DILocation(line: 110, column: 109, scope: !337)
!370 = !DILocation(line: 110, column: 101, scope: !337)
!371 = !DILocation(line: 110, column: 126, scope: !337)
!372 = !DILocation(line: 110, column: 124, scope: !337)
!373 = !DILocation(line: 110, column: 113, scope: !337)
!374 = !DILocation(line: 110, column: 138, scope: !337)
!375 = !DILocation(line: 110, column: 137, scope: !337)
!376 = !DILocation(line: 110, column: 133, scope: !337)
!377 = !DILocation(line: 110, column: 21, scope: !337)
!378 = !DILocation(line: 110, column: 29, scope: !337)
!379 = !DILocation(line: 98, column: 37, scope: !334)
!380 = !DILocation(line: 98, column: 30, scope: !334)
!381 = distinct !{!381, !341, !382}
!382 = !DILocation(line: 111, column: 17, scope: !335)
!383 = !DILocation(line: 97, column: 33, scope: !331)
!384 = !DILocation(line: 97, column: 26, scope: !331)
!385 = distinct !{!385, !340, !386}
!386 = !DILocation(line: 111, column: 17, scope: !332)
!387 = !DILocation(line: 96, column: 29, scope: !328)
!388 = !DILocation(line: 96, column: 22, scope: !328)
!389 = distinct !{!389, !339, !390}
!390 = !DILocation(line: 111, column: 17, scope: !329)
!391 = !DILocation(line: 0, scope: !311)
!392 = !DILocation(line: 115, column: 10, scope: !311)
!393 = !DILocation(line: 117, column: 13, scope: !275)
!394 = !DILocation(line: 116, column: 5, scope: !311)
!395 = distinct !{!395, !338, !396}
!396 = !DILocation(line: 117, column: 22, scope: !275)
!397 = !DILocation(line: 119, column: 1, scope: !275)
!398 = distinct !DISubprogram(name: "accuracy", scope: !3, file: !3, line: 121, type: !399, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!79, !83, !83, !12}
!401 = !{!402, !403, !404, !405, !406}
!402 = !DILocalVariable(name: "arr1", arg: 1, scope: !398, file: !3, line: 121, type: !83)
!403 = !DILocalVariable(name: "arr2", arg: 2, scope: !398, file: !3, line: 121, type: !83)
!404 = !DILocalVariable(name: "len", arg: 3, scope: !398, file: !3, line: 121, type: !12)
!405 = !DILocalVariable(name: "err", scope: !398, file: !3, line: 123, type: !79)
!406 = !DILocalVariable(name: "i", scope: !398, file: !3, line: 124, type: !12)
!407 = !DILocation(line: 0, scope: !398)
!408 = !DILocation(line: 125, column: 18, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 125, column: 5)
!410 = distinct !DILexicalBlock(scope: !398, file: !3, line: 125, column: 5)
!411 = !DILocation(line: 125, column: 5, scope: !410)
!412 = !DILocation(line: 127, column: 17, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !3, line: 126, column: 5)
!414 = !DILocation(line: 127, column: 25, scope: !413)
!415 = !DILocation(line: 127, column: 24, scope: !413)
!416 = !DILocation(line: 127, column: 34, scope: !413)
!417 = !DILocation(line: 127, column: 13, scope: !413)
!418 = !DILocation(line: 125, column: 26, scope: !409)
!419 = distinct !{!419, !411, !420}
!420 = !DILocation(line: 128, column: 5, scope: !410)
!421 = distinct !{!421, !422}
!422 = !{!"llvm.loop.unroll.disable"}
!423 = !DILocation(line: 130, column: 28, scope: !398)
!424 = !DILocation(line: 130, column: 27, scope: !398)
!425 = !DILocation(line: 130, column: 19, scope: !398)
!426 = !DILocation(line: 130, column: 5, scope: !398)
!427 = distinct !DISubprogram(name: "computeTempOMP", scope: !3, file: !3, line: 134, type: !276, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!429 = !DILocalVariable(name: "pIn", arg: 1, scope: !427, file: !3, line: 134, type: !83)
!430 = !DILocalVariable(name: "tIn", arg: 2, scope: !427, file: !3, line: 134, type: !83)
!431 = !DILocalVariable(name: "tOut", arg: 3, scope: !427, file: !3, line: 134, type: !83)
!432 = !DILocalVariable(name: "nx", arg: 4, scope: !427, file: !3, line: 135, type: !12)
!433 = !DILocalVariable(name: "ny", arg: 5, scope: !427, file: !3, line: 135, type: !12)
!434 = !DILocalVariable(name: "nz", arg: 6, scope: !427, file: !3, line: 135, type: !12)
!435 = !DILocalVariable(name: "Cap", arg: 7, scope: !427, file: !3, line: 135, type: !79)
!436 = !DILocalVariable(name: "Rx", arg: 8, scope: !427, file: !3, line: 136, type: !79)
!437 = !DILocalVariable(name: "Ry", arg: 9, scope: !427, file: !3, line: 136, type: !79)
!438 = !DILocalVariable(name: "Rz", arg: 10, scope: !427, file: !3, line: 136, type: !79)
!439 = !DILocalVariable(name: "dt", arg: 11, scope: !427, file: !3, line: 137, type: !79)
!440 = !DILocalVariable(name: "numiter", arg: 12, scope: !427, file: !3, line: 137, type: !12)
!441 = !DILocalVariable(name: "ce", scope: !427, file: !3, line: 140, type: !79)
!442 = !DILocalVariable(name: "cw", scope: !427, file: !3, line: 140, type: !79)
!443 = !DILocalVariable(name: "cn", scope: !427, file: !3, line: 140, type: !79)
!444 = !DILocalVariable(name: "cs", scope: !427, file: !3, line: 140, type: !79)
!445 = !DILocalVariable(name: "ct", scope: !427, file: !3, line: 140, type: !79)
!446 = !DILocalVariable(name: "cb", scope: !427, file: !3, line: 140, type: !79)
!447 = !DILocalVariable(name: "cc", scope: !427, file: !3, line: 140, type: !79)
!448 = !DILocalVariable(name: "stepDivCap", scope: !427, file: !3, line: 142, type: !79)
!449 = !DILocation(line: 0, scope: !427)
!450 = !{!451, !451, i64 0}
!451 = !{!"int", !123, i64 0}
!452 = !DILocation(line: 140, column: 5, scope: !427)
!453 = !DILocation(line: 142, column: 27, scope: !427)
!454 = !DILocation(line: 143, column: 24, scope: !427)
!455 = !DILocation(line: 143, column: 13, scope: !427)
!456 = !DILocation(line: 143, column: 8, scope: !427)
!457 = !DILocation(line: 144, column: 24, scope: !427)
!458 = !DILocation(line: 144, column: 13, scope: !427)
!459 = !DILocation(line: 144, column: 8, scope: !427)
!460 = !DILocation(line: 145, column: 24, scope: !427)
!461 = !DILocation(line: 145, column: 13, scope: !427)
!462 = !DILocation(line: 145, column: 8, scope: !427)
!463 = !DILocation(line: 147, column: 21, scope: !427)
!464 = !DILocation(line: 147, column: 20, scope: !427)
!465 = !DILocation(line: 147, column: 30, scope: !427)
!466 = !DILocation(line: 147, column: 29, scope: !427)
!467 = !DILocation(line: 147, column: 24, scope: !427)
!468 = !DILocation(line: 147, column: 39, scope: !427)
!469 = !DILocation(line: 147, column: 38, scope: !427)
!470 = !DILocation(line: 147, column: 33, scope: !427)
!471 = !DILocation(line: 147, column: 14, scope: !427)
!472 = !DILocation(line: 147, column: 10, scope: !427)
!473 = !DILocation(line: 147, column: 8, scope: !427)
!474 = !DILocation(line: 150, column: 1, scope: !427)
!475 = !{!476, !122, i64 16}
!476 = !{!"ident_t", !451, i64 0, !451, i64 4, !451, i64 8, !451, i64 12, !122, i64 16}
!477 = !DILocation(line: 187, column: 1, scope: !427)
!478 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 151, type: !479, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !481, !481, !485, !485, !486, !486, !486, !487, !487, !487, !487, !487, !487, !487, !487, !487, !485, !486}
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!485 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !83, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !79, size: 64)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!489 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !478, type: !481, flags: DIFlagArtificial)
!490 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !478, type: !481, flags: DIFlagArtificial)
!491 = !DILocalVariable(name: "tIn", arg: 3, scope: !478, type: !485, flags: DIFlagArtificial)
!492 = !DILocalVariable(name: "tOut", arg: 4, scope: !478, type: !485, flags: DIFlagArtificial)
!493 = !DILocalVariable(name: "nz", arg: 5, scope: !478, type: !486, flags: DIFlagArtificial)
!494 = !DILocalVariable(name: "ny", arg: 6, scope: !478, type: !486, flags: DIFlagArtificial)
!495 = !DILocalVariable(name: "nx", arg: 7, scope: !478, type: !486, flags: DIFlagArtificial)
!496 = !DILocalVariable(name: "cc", arg: 8, scope: !478, type: !487, flags: DIFlagArtificial)
!497 = !DILocalVariable(name: "cw", arg: 9, scope: !478, type: !487, flags: DIFlagArtificial)
!498 = !DILocalVariable(name: "ce", arg: 10, scope: !478, type: !487, flags: DIFlagArtificial)
!499 = !DILocalVariable(name: "cs", arg: 11, scope: !478, type: !487, flags: DIFlagArtificial)
!500 = !DILocalVariable(name: "cn", arg: 12, scope: !478, type: !487, flags: DIFlagArtificial)
!501 = !DILocalVariable(name: "cb", arg: 13, scope: !478, type: !487, flags: DIFlagArtificial)
!502 = !DILocalVariable(name: "ct", arg: 14, scope: !478, type: !487, flags: DIFlagArtificial)
!503 = !DILocalVariable(name: "dt", arg: 15, scope: !478, type: !487, flags: DIFlagArtificial)
!504 = !DILocalVariable(name: "Cap", arg: 16, scope: !478, type: !487, flags: DIFlagArtificial)
!505 = !DILocalVariable(name: "pIn", arg: 17, scope: !478, type: !485, flags: DIFlagArtificial)
!506 = !DILocalVariable(name: "numiter", arg: 18, scope: !478, type: !486, flags: DIFlagArtificial)
!507 = !DILocation(line: 0, scope: !478)
!508 = !DILocation(line: 151, column: 5, scope: !478)
!509 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !510, type: !481, flags: DIFlagArtificial)
!510 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 151, type: !479, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !511)
!511 = !{!512, !509, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !531, !532, !533, !535, !537, !537, !538, !539, !540, !541, !542, !538, !543, !545, !549, !553, !554, !555, !556, !557, !558, !559}
!512 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !510, type: !481, flags: DIFlagArtificial)
!513 = !DILocalVariable(name: "tIn", arg: 3, scope: !510, file: !3, line: 134, type: !485)
!514 = !DILocalVariable(name: "tOut", arg: 4, scope: !510, file: !3, line: 134, type: !485)
!515 = !DILocalVariable(name: "nz", arg: 5, scope: !510, file: !3, line: 135, type: !486)
!516 = !DILocalVariable(name: "ny", arg: 6, scope: !510, file: !3, line: 135, type: !486)
!517 = !DILocalVariable(name: "nx", arg: 7, scope: !510, file: !3, line: 135, type: !486)
!518 = !DILocalVariable(name: "cc", arg: 8, scope: !510, file: !3, line: 140, type: !487)
!519 = !DILocalVariable(name: "cw", arg: 9, scope: !510, file: !3, line: 140, type: !487)
!520 = !DILocalVariable(name: "ce", arg: 10, scope: !510, file: !3, line: 140, type: !487)
!521 = !DILocalVariable(name: "cs", arg: 11, scope: !510, file: !3, line: 140, type: !487)
!522 = !DILocalVariable(name: "cn", arg: 12, scope: !510, file: !3, line: 140, type: !487)
!523 = !DILocalVariable(name: "cb", arg: 13, scope: !510, file: !3, line: 140, type: !487)
!524 = !DILocalVariable(name: "ct", arg: 14, scope: !510, file: !3, line: 140, type: !487)
!525 = !DILocalVariable(name: "dt", arg: 15, scope: !510, file: !3, line: 137, type: !487)
!526 = !DILocalVariable(name: "Cap", arg: 16, scope: !510, file: !3, line: 135, type: !487)
!527 = !DILocalVariable(name: "pIn", arg: 17, scope: !510, file: !3, line: 134, type: !485)
!528 = !DILocalVariable(name: "numiter", arg: 18, scope: !510, file: !3, line: 137, type: !486)
!529 = !DILocalVariable(name: "count", scope: !530, file: !3, line: 152, type: !12)
!530 = distinct !DILexicalBlock(scope: !510, file: !3, line: 151, column: 5)
!531 = !DILocalVariable(name: "tIn_t", scope: !530, file: !3, line: 153, type: !83)
!532 = !DILocalVariable(name: "tOut_t", scope: !530, file: !3, line: 154, type: !83)
!533 = !DILocalVariable(name: "z", scope: !534, file: !3, line: 160, type: !12)
!534 = distinct !DILexicalBlock(scope: !530, file: !3, line: 159, column: 12)
!535 = !DILocalVariable(name: ".omp.iv", scope: !536, type: !12, flags: DIFlagArtificial)
!536 = distinct !DILexicalBlock(scope: !534, file: !3, line: 161, column: 1)
!537 = !DILocalVariable(name: ".capture_expr.", scope: !536, type: !12, flags: DIFlagArtificial)
!538 = !DILocalVariable(name: "z", scope: !536, type: !12, flags: DIFlagArtificial)
!539 = !DILocalVariable(name: ".omp.lb", scope: !536, type: !12, flags: DIFlagArtificial)
!540 = !DILocalVariable(name: ".omp.ub", scope: !536, type: !12, flags: DIFlagArtificial)
!541 = !DILocalVariable(name: ".omp.stride", scope: !536, type: !12, flags: DIFlagArtificial)
!542 = !DILocalVariable(name: ".omp.is_last", scope: !536, type: !12, flags: DIFlagArtificial)
!543 = !DILocalVariable(name: "y", scope: !544, file: !3, line: 163, type: !12)
!544 = distinct !DILexicalBlock(scope: !536, file: !3, line: 162, column: 38)
!545 = !DILocalVariable(name: "x", scope: !546, file: !3, line: 165, type: !12)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 164, column: 42)
!547 = distinct !DILexicalBlock(scope: !548, file: !3, line: 164, column: 17)
!548 = distinct !DILexicalBlock(scope: !544, file: !3, line: 164, column: 17)
!549 = !DILocalVariable(name: "c", scope: !550, file: !3, line: 167, type: !12)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 166, column: 46)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 166, column: 21)
!552 = distinct !DILexicalBlock(scope: !546, file: !3, line: 166, column: 21)
!553 = !DILocalVariable(name: "w", scope: !550, file: !3, line: 167, type: !12)
!554 = !DILocalVariable(name: "e", scope: !550, file: !3, line: 167, type: !12)
!555 = !DILocalVariable(name: "n", scope: !550, file: !3, line: 167, type: !12)
!556 = !DILocalVariable(name: "s", scope: !550, file: !3, line: 167, type: !12)
!557 = !DILocalVariable(name: "b", scope: !550, file: !3, line: 167, type: !12)
!558 = !DILocalVariable(name: "t", scope: !550, file: !3, line: 167, type: !12)
!559 = !DILocalVariable(name: "t", scope: !534, file: !3, line: 180, type: !83)
!560 = !DILocation(line: 0, scope: !510, inlinedAt: !561)
!561 = distinct !DILocation(line: 151, column: 5, scope: !478)
!562 = !DILocation(line: 0, scope: !530, inlinedAt: !561)
!563 = !DILocation(line: 156, column: 1, scope: !530, inlinedAt: !561)
!564 = !DILocation(line: 157, column: 40, scope: !565, inlinedAt: !561)
!565 = distinct !DILexicalBlock(scope: !530, file: !3, line: 156, column: 1)
!566 = !DILocation(line: 157, column: 9, scope: !565, inlinedAt: !561)
!567 = !DILocation(line: 0, scope: !534, inlinedAt: !561)
!568 = !DILocation(line: 159, column: 9, scope: !530, inlinedAt: !561)
!569 = !DILocation(line: 162, column: 29, scope: !536, inlinedAt: !561)
!570 = !DILocation(line: 0, scope: !536, inlinedAt: !561)
!571 = !DILocation(line: 162, column: 13, scope: !536, inlinedAt: !561)
!572 = !DILocation(line: 161, column: 1, scope: !534, inlinedAt: !561)
!573 = !DILocation(line: 162, column: 18, scope: !536, inlinedAt: !561)
!574 = !DILocation(line: 0, scope: !547, inlinedAt: !561)
!575 = !DILocation(line: 0, scope: !551, inlinedAt: !561)
!576 = !DILocation(line: 0, scope: !550, inlinedAt: !561)
!577 = !DILocation(line: 0, scope: !544, inlinedAt: !561)
!578 = !DILocation(line: 164, column: 17, scope: !548, inlinedAt: !561)
!579 = !DILocation(line: 0, scope: !546, inlinedAt: !561)
!580 = !DILocation(line: 166, column: 21, scope: !552, inlinedAt: !561)
!581 = !DILocation(line: 170, column: 29, scope: !550, inlinedAt: !561)
!582 = !DILocation(line: 171, column: 29, scope: !550, inlinedAt: !561)
!583 = !DILocation(line: 172, column: 29, scope: !550, inlinedAt: !561)
!584 = !DILocation(line: 173, column: 29, scope: !550, inlinedAt: !561)
!585 = !DILocation(line: 174, column: 29, scope: !550, inlinedAt: !561)
!586 = !DILocation(line: 175, column: 37, scope: !550, inlinedAt: !561)
!587 = !DILocation(line: 175, column: 42, scope: !550, inlinedAt: !561)
!588 = !DILocation(line: 175, column: 40, scope: !550, inlinedAt: !561)
!589 = !DILocation(line: 175, column: 53, scope: !550, inlinedAt: !561)
!590 = !DILocation(line: 175, column: 58, scope: !550, inlinedAt: !561)
!591 = !DILocation(line: 175, column: 56, scope: !550, inlinedAt: !561)
!592 = !DILocation(line: 175, column: 51, scope: !550, inlinedAt: !561)
!593 = !DILocation(line: 175, column: 69, scope: !550, inlinedAt: !561)
!594 = !DILocation(line: 175, column: 74, scope: !550, inlinedAt: !561)
!595 = !DILocation(line: 175, column: 72, scope: !550, inlinedAt: !561)
!596 = !DILocation(line: 175, column: 67, scope: !550, inlinedAt: !561)
!597 = !DILocation(line: 176, column: 31, scope: !550, inlinedAt: !561)
!598 = !DILocation(line: 176, column: 36, scope: !550, inlinedAt: !561)
!599 = !DILocation(line: 176, column: 34, scope: !550, inlinedAt: !561)
!600 = !DILocation(line: 176, column: 29, scope: !550, inlinedAt: !561)
!601 = !DILocation(line: 176, column: 47, scope: !550, inlinedAt: !561)
!602 = !DILocation(line: 176, column: 52, scope: !550, inlinedAt: !561)
!603 = !DILocation(line: 176, column: 50, scope: !550, inlinedAt: !561)
!604 = !DILocation(line: 176, column: 45, scope: !550, inlinedAt: !561)
!605 = !DILocation(line: 176, column: 63, scope: !550, inlinedAt: !561)
!606 = !DILocation(line: 176, column: 68, scope: !550, inlinedAt: !561)
!607 = !DILocation(line: 176, column: 66, scope: !550, inlinedAt: !561)
!608 = !DILocation(line: 176, column: 61, scope: !550, inlinedAt: !561)
!609 = !DILocation(line: 176, column: 79, scope: !550, inlinedAt: !561)
!610 = !DILocation(line: 176, column: 84, scope: !550, inlinedAt: !561)
!611 = !DILocation(line: 176, column: 82, scope: !550, inlinedAt: !561)
!612 = !DILocation(line: 176, column: 77, scope: !550, inlinedAt: !561)
!613 = !DILocation(line: 176, column: 94, scope: !550, inlinedAt: !561)
!614 = !DILocation(line: 176, column: 97, scope: !550, inlinedAt: !561)
!615 = !DILocation(line: 176, column: 96, scope: !550, inlinedAt: !561)
!616 = !DILocation(line: 176, column: 104, scope: !550, inlinedAt: !561)
!617 = !DILocation(line: 176, column: 102, scope: !550, inlinedAt: !561)
!618 = !DILocation(line: 176, column: 92, scope: !550, inlinedAt: !561)
!619 = !DILocation(line: 176, column: 116, scope: !550, inlinedAt: !561)
!620 = !DILocation(line: 176, column: 115, scope: !550, inlinedAt: !561)
!621 = !DILocation(line: 176, column: 111, scope: !550, inlinedAt: !561)
!622 = !DILocation(line: 175, column: 25, scope: !550, inlinedAt: !561)
!623 = !DILocation(line: 175, column: 35, scope: !550, inlinedAt: !561)
!624 = !DILocation(line: 168, column: 41, scope: !550, inlinedAt: !561)
!625 = !DILocation(line: 169, column: 29, scope: !550, inlinedAt: !561)
!626 = !DILocation(line: 170, column: 32, scope: !550, inlinedAt: !561)
!627 = !DILocation(line: 166, column: 42, scope: !551, inlinedAt: !561)
!628 = !DILocation(line: 166, column: 35, scope: !551, inlinedAt: !561)
!629 = distinct !{!629, !580, !630, !631}
!630 = !DILocation(line: 177, column: 21, scope: !552, inlinedAt: !561)
!631 = !{!"llvm.loop.peeled.count", i32 1}
!632 = distinct !{!632, !580, !630, !631}
!633 = distinct !{!633, !580, !630, !631}
!634 = distinct !{!634, !580, !630, !631}
!635 = !DILocation(line: 164, column: 38, scope: !547, inlinedAt: !561)
!636 = !DILocation(line: 164, column: 31, scope: !547, inlinedAt: !561)
!637 = distinct !{!637, !578, !638}
!638 = !DILocation(line: 178, column: 17, scope: !548, inlinedAt: !561)
!639 = distinct !{!639, !640, !641}
!640 = !DILocation(line: 161, column: 1, scope: !536, inlinedAt: !561)
!641 = !DILocation(line: 161, column: 17, scope: !536, inlinedAt: !561)
!642 = !DILocation(line: 183, column: 18, scope: !534, inlinedAt: !561)
!643 = !DILocation(line: 184, column: 26, scope: !530, inlinedAt: !561)
!644 = !DILocation(line: 184, column: 24, scope: !530, inlinedAt: !561)
!645 = !DILocation(line: 184, column: 9, scope: !534, inlinedAt: !561)
!646 = distinct !{!646, !568, !647}
!647 = !DILocation(line: 184, column: 33, scope: !530, inlinedAt: !561)
!648 = !DILocation(line: 185, column: 5, scope: !510, inlinedAt: !561)
!649 = !{!650}
!650 = !{i64 2, i64 -1, i64 -1, i1 true}
!651 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 189, type: !652, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !12, !100}
!654 = !{!655, !656}
!655 = !DILocalVariable(name: "argc", arg: 1, scope: !651, file: !3, line: 189, type: !12)
!656 = !DILocalVariable(name: "argv", arg: 2, scope: !651, file: !3, line: 189, type: !100)
!657 = !DILocation(line: 0, scope: !651)
!658 = !DILocation(line: 191, column: 13, scope: !651)
!659 = !DILocation(line: 191, column: 106, scope: !651)
!660 = !DILocation(line: 191, column: 5, scope: !651)
!661 = !DILocation(line: 192, column: 13, scope: !651)
!662 = !DILocation(line: 192, column: 5, scope: !651)
!663 = !DILocation(line: 193, column: 13, scope: !651)
!664 = !DILocation(line: 193, column: 5, scope: !651)
!665 = !DILocation(line: 195, column: 13, scope: !651)
!666 = !DILocation(line: 195, column: 5, scope: !651)
!667 = !DILocation(line: 196, column: 13, scope: !651)
!668 = !DILocation(line: 196, column: 5, scope: !651)
!669 = !DILocation(line: 197, column: 13, scope: !651)
!670 = !DILocation(line: 197, column: 5, scope: !651)
!671 = !DILocation(line: 198, column: 13, scope: !651)
!672 = !DILocation(line: 198, column: 5, scope: !651)
!673 = !DILocation(line: 199, column: 5, scope: !651)
!674 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 204, type: !675, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{!12, !12, !100}
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!678 = !DILocalVariable(name: "argc", arg: 1, scope: !674, file: !3, line: 204, type: !12)
!679 = !DILocalVariable(name: "argv", arg: 2, scope: !674, file: !3, line: 204, type: !100)
!680 = !DILocalVariable(name: "pfile", scope: !674, file: !3, line: 211, type: !10)
!681 = !DILocalVariable(name: "tfile", scope: !674, file: !3, line: 211, type: !10)
!682 = !DILocalVariable(name: "ofile", scope: !674, file: !3, line: 211, type: !10)
!683 = !DILocalVariable(name: "iterations", scope: !674, file: !3, line: 212, type: !12)
!684 = !DILocalVariable(name: "numCols", scope: !674, file: !3, line: 218, type: !12)
!685 = !DILocalVariable(name: "numRows", scope: !674, file: !3, line: 219, type: !12)
!686 = !DILocalVariable(name: "layers", scope: !674, file: !3, line: 220, type: !12)
!687 = !DILocalVariable(name: "dx", scope: !674, file: !3, line: 224, type: !79)
!688 = !DILocalVariable(name: "dy", scope: !674, file: !3, line: 225, type: !79)
!689 = !DILocalVariable(name: "dz", scope: !674, file: !3, line: 226, type: !79)
!690 = !DILocalVariable(name: "Cap", scope: !674, file: !3, line: 228, type: !79)
!691 = !DILocalVariable(name: "Rx", scope: !674, file: !3, line: 229, type: !79)
!692 = !DILocalVariable(name: "Ry", scope: !674, file: !3, line: 230, type: !79)
!693 = !DILocalVariable(name: "Rz", scope: !674, file: !3, line: 231, type: !79)
!694 = !DILocalVariable(name: "max_slope", scope: !674, file: !3, line: 234, type: !79)
!695 = !DILocalVariable(name: "dt", scope: !674, file: !3, line: 235, type: !79)
!696 = !DILocalVariable(name: "powerIn", scope: !674, file: !3, line: 238, type: !83)
!697 = !DILocalVariable(name: "tempOut", scope: !674, file: !3, line: 238, type: !83)
!698 = !DILocalVariable(name: "tempIn", scope: !674, file: !3, line: 238, type: !83)
!699 = !DILocalVariable(name: "tempCopy", scope: !674, file: !3, line: 238, type: !83)
!700 = !DILocalVariable(name: "size", scope: !674, file: !3, line: 240, type: !12)
!701 = !DILocalVariable(name: "answer", scope: !674, file: !3, line: 247, type: !83)
!702 = !DILocalVariable(name: "start", scope: !674, file: !3, line: 255, type: !89)
!703 = !DILocalVariable(name: "stop", scope: !674, file: !3, line: 255, type: !89)
!704 = !DILocalVariable(name: "time", scope: !674, file: !3, line: 256, type: !79)
!705 = !DILocalVariable(name: "acc", scope: !674, file: !3, line: 263, type: !79)
!706 = !DILocation(line: 0, scope: !674)
!707 = !DILocation(line: 206, column: 14, scope: !708)
!708 = distinct !DILexicalBlock(scope: !674, file: !3, line: 206, column: 9)
!709 = !DILocation(line: 206, column: 9, scope: !674)
!710 = !DILocation(line: 208, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !708, file: !3, line: 207, column: 5)
!712 = !DILocation(line: 212, column: 27, scope: !674)
!713 = !DILocalVariable(name: "__nptr", arg: 1, scope: !714, file: !97, line: 361, type: !77)
!714 = distinct !DISubprogram(name: "atoi", scope: !97, file: !97, line: 361, type: !715, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!12, !77}
!717 = !{!713}
!718 = !DILocation(line: 0, scope: !714, inlinedAt: !719)
!719 = distinct !DILocation(line: 212, column: 22, scope: !674)
!720 = !DILocation(line: 363, column: 16, scope: !714, inlinedAt: !719)
!721 = !DILocation(line: 363, column: 10, scope: !714, inlinedAt: !719)
!722 = !DILocation(line: 214, column: 13, scope: !674)
!723 = !DILocation(line: 215, column: 13, scope: !674)
!724 = !DILocation(line: 216, column: 13, scope: !674)
!725 = !DILocation(line: 218, column: 24, scope: !674)
!726 = !DILocation(line: 0, scope: !714, inlinedAt: !727)
!727 = distinct !DILocation(line: 218, column: 19, scope: !674)
!728 = !DILocation(line: 363, column: 16, scope: !714, inlinedAt: !727)
!729 = !DILocation(line: 363, column: 10, scope: !714, inlinedAt: !727)
!730 = !DILocation(line: 220, column: 23, scope: !674)
!731 = !DILocation(line: 0, scope: !714, inlinedAt: !732)
!732 = distinct !DILocation(line: 220, column: 18, scope: !674)
!733 = !DILocation(line: 363, column: 16, scope: !714, inlinedAt: !732)
!734 = !DILocation(line: 363, column: 10, scope: !714, inlinedAt: !732)
!735 = !DILocation(line: 224, column: 16, scope: !674)
!736 = !DILocation(line: 224, column: 28, scope: !674)
!737 = !DILocation(line: 225, column: 16, scope: !674)
!738 = !DILocation(line: 224, column: 27, scope: !674)
!739 = !DILocation(line: 226, column: 16, scope: !674)
!740 = !DILocation(line: 226, column: 23, scope: !674)
!741 = !DILocation(line: 226, column: 22, scope: !674)
!742 = !DILocation(line: 228, column: 46, scope: !674)
!743 = !DILocation(line: 228, column: 44, scope: !674)
!744 = !DILocation(line: 228, column: 55, scope: !674)
!745 = !DILocation(line: 228, column: 53, scope: !674)
!746 = !DILocation(line: 228, column: 60, scope: !674)
!747 = !DILocation(line: 228, column: 58, scope: !674)
!748 = !DILocation(line: 228, column: 17, scope: !674)
!749 = !DILocation(line: 229, column: 33, scope: !674)
!750 = !DILocation(line: 229, column: 42, scope: !674)
!751 = !DILocation(line: 229, column: 19, scope: !674)
!752 = !DILocation(line: 229, column: 16, scope: !674)
!753 = !DILocation(line: 230, column: 42, scope: !674)
!754 = !DILocation(line: 230, column: 19, scope: !674)
!755 = !DILocation(line: 230, column: 16, scope: !674)
!756 = !DILocation(line: 231, column: 27, scope: !674)
!757 = !DILocation(line: 231, column: 32, scope: !674)
!758 = !DILocation(line: 231, column: 19, scope: !674)
!759 = !DILocation(line: 234, column: 45, scope: !674)
!760 = !DILocation(line: 234, column: 54, scope: !674)
!761 = !DILocation(line: 234, column: 30, scope: !674)
!762 = !DILocation(line: 234, column: 23, scope: !674)
!763 = !DILocation(line: 235, column: 28, scope: !674)
!764 = !DILocation(line: 235, column: 26, scope: !674)
!765 = !DILocation(line: 235, column: 16, scope: !674)
!766 = !DILocation(line: 240, column: 24, scope: !674)
!767 = !DILocation(line: 240, column: 34, scope: !674)
!768 = !DILocation(line: 242, column: 30, scope: !674)
!769 = !DILocation(line: 242, column: 23, scope: !674)
!770 = !DILocation(line: 242, column: 15, scope: !674)
!771 = !DILocation(line: 243, column: 36, scope: !674)
!772 = !DILocation(line: 243, column: 24, scope: !674)
!773 = !DILocation(line: 243, column: 16, scope: !674)
!774 = !DILocation(line: 244, column: 22, scope: !674)
!775 = !DILocation(line: 244, column: 14, scope: !674)
!776 = !DILocation(line: 245, column: 23, scope: !674)
!777 = !DILocation(line: 245, column: 15, scope: !674)
!778 = !DILocation(line: 247, column: 29, scope: !674)
!779 = !DILocation(line: 247, column: 21, scope: !674)
!780 = !DILocation(line: 250, column: 5, scope: !674)
!781 = !DILocation(line: 251, column: 5, scope: !674)
!782 = !DILocation(line: 253, column: 5, scope: !674)
!783 = !DILocation(line: 255, column: 5, scope: !674)
!784 = !DILocation(line: 255, column: 20, scope: !674)
!785 = !DILocation(line: 255, column: 27, scope: !674)
!786 = !DILocation(line: 257, column: 5, scope: !674)
!787 = !DILocation(line: 0, scope: !427, inlinedAt: !788)
!788 = distinct !DILocation(line: 258, column: 5, scope: !674)
!789 = !DILocation(line: 140, column: 5, scope: !427, inlinedAt: !788)
!790 = !DILocation(line: 142, column: 27, scope: !427, inlinedAt: !788)
!791 = !DILocation(line: 143, column: 24, scope: !427, inlinedAt: !788)
!792 = !DILocation(line: 143, column: 13, scope: !427, inlinedAt: !788)
!793 = !DILocation(line: 143, column: 8, scope: !427, inlinedAt: !788)
!794 = !DILocation(line: 144, column: 24, scope: !427, inlinedAt: !788)
!795 = !DILocation(line: 144, column: 13, scope: !427, inlinedAt: !788)
!796 = !DILocation(line: 144, column: 8, scope: !427, inlinedAt: !788)
!797 = !DILocation(line: 145, column: 24, scope: !427, inlinedAt: !788)
!798 = !DILocation(line: 145, column: 13, scope: !427, inlinedAt: !788)
!799 = !DILocation(line: 145, column: 8, scope: !427, inlinedAt: !788)
!800 = !DILocation(line: 147, column: 21, scope: !427, inlinedAt: !788)
!801 = !DILocation(line: 147, column: 20, scope: !427, inlinedAt: !788)
!802 = !DILocation(line: 147, column: 30, scope: !427, inlinedAt: !788)
!803 = !DILocation(line: 147, column: 29, scope: !427, inlinedAt: !788)
!804 = !DILocation(line: 147, column: 24, scope: !427, inlinedAt: !788)
!805 = !DILocation(line: 147, column: 39, scope: !427, inlinedAt: !788)
!806 = !DILocation(line: 147, column: 38, scope: !427, inlinedAt: !788)
!807 = !DILocation(line: 147, column: 33, scope: !427, inlinedAt: !788)
!808 = !DILocation(line: 147, column: 14, scope: !427, inlinedAt: !788)
!809 = !DILocation(line: 147, column: 10, scope: !427, inlinedAt: !788)
!810 = !DILocation(line: 147, column: 8, scope: !427, inlinedAt: !788)
!811 = !DILocation(line: 150, column: 1, scope: !427, inlinedAt: !788)
!812 = !DILocation(line: 187, column: 1, scope: !427, inlinedAt: !788)
!813 = !DILocation(line: 259, column: 5, scope: !674)
!814 = !DILocation(line: 260, column: 18, scope: !674)
!815 = !{!816, !817, i64 8}
!816 = !{!"timeval", !817, i64 0, !817, i64 8}
!817 = !{!"long", !123, i64 0}
!818 = !DILocation(line: 260, column: 32, scope: !674)
!819 = !DILocation(line: 260, column: 25, scope: !674)
!820 = !DILocation(line: 260, column: 12, scope: !674)
!821 = !DILocation(line: 260, column: 40, scope: !674)
!822 = !DILocation(line: 260, column: 55, scope: !674)
!823 = !{!816, !817, i64 0}
!824 = !DILocation(line: 260, column: 50, scope: !674)
!825 = !DILocation(line: 260, column: 48, scope: !674)
!826 = !DILocation(line: 260, column: 70, scope: !674)
!827 = !DILocation(line: 260, column: 64, scope: !674)
!828 = !DILocation(line: 260, column: 62, scope: !674)
!829 = !DILocation(line: 261, column: 5, scope: !674)
!830 = !DILocation(line: 0, scope: !398, inlinedAt: !831)
!831 = distinct !DILocation(line: 263, column: 17, scope: !674)
!832 = !DILocation(line: 125, column: 18, scope: !409, inlinedAt: !831)
!833 = !DILocation(line: 125, column: 5, scope: !410, inlinedAt: !831)
!834 = !DILocation(line: 127, column: 17, scope: !413, inlinedAt: !831)
!835 = !DILocation(line: 127, column: 25, scope: !413, inlinedAt: !831)
!836 = !DILocation(line: 127, column: 24, scope: !413, inlinedAt: !831)
!837 = !DILocation(line: 127, column: 34, scope: !413, inlinedAt: !831)
!838 = !DILocation(line: 127, column: 13, scope: !413, inlinedAt: !831)
!839 = !DILocation(line: 125, column: 26, scope: !409, inlinedAt: !831)
!840 = distinct !{!840, !833, !841}
!841 = !DILocation(line: 128, column: 5, scope: !410, inlinedAt: !831)
!842 = distinct !{!842, !422}
!843 = !DILocation(line: 130, column: 28, scope: !398, inlinedAt: !831)
!844 = !DILocation(line: 130, column: 27, scope: !398, inlinedAt: !831)
!845 = !DILocation(line: 130, column: 19, scope: !398, inlinedAt: !831)
!846 = !DILocation(line: 264, column: 31, scope: !674)
!847 = !DILocation(line: 264, column: 5, scope: !674)
!848 = !DILocation(line: 265, column: 29, scope: !674)
!849 = !DILocation(line: 265, column: 5, scope: !674)
!850 = !DILocation(line: 266, column: 5, scope: !674)
!851 = !DILocation(line: 267, column: 5, scope: !674)
!852 = !DILocation(line: 268, column: 5, scope: !674)
!853 = !DILocation(line: 268, column: 20, scope: !674)
!854 = !DILocation(line: 270, column: 1, scope: !674)
!855 = !DILocation(line: 269, column: 5, scope: !674)
