; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"P2\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"../../../data/srad/image.pgm\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [21 x i8] c";main.c;main;253;3;;\00", align 1
@2 = private unnamed_addr constant [23 x i8] c";main.c;main;253;128;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [21 x i8] c";main.c;main;295;3;;\00", align 1
@5 = private unnamed_addr constant [22 x i8] c";main.c;main;295;96;;\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"image_out.pgm\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"%.12f s, %.12f % : SETUP VARIABLES\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"%.12f s, %.12f % : READ COMMAND LINE PARAMETERS\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"%.12f s, %.12f % : READ IMAGE FROM FILE\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"%.12f s, %.12f % : RESIZE IMAGE\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"%.12f s, %.12f % : SETUP, MEMORY ALLOCATION\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"%.12f s, %.12f % : EXTRACT IMAGE\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"%.12f s, %.12f % : COMPUTE\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"%.12f s, %.12f % : COMPRESS IMAGE\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"%.12f s, %.12f % : SAVE IMAGE INTO FILE\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"%.12f s, %.12f % : FREE MEMORY\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"%.12f s\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"The file was not created/opened for writing\00", align 1
@str.29 = private unnamed_addr constant [36 x i8] c"The file was not opened for reading\00", align 1
@str.30 = private unnamed_addr constant [51 x i8] c"Time spent in different stages of the application:\00", align 1
@str.31 = private unnamed_addr constant [12 x i8] c"Total time:\00", align 1
@str.32 = private unnamed_addr constant [33 x i8] c"ERROR: wrong number of arguments\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @write_graphics(i8* nocapture readonly %0, float* nocapture readonly %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #0 !dbg !96 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !101, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata float* %1, metadata !102, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %2, metadata !103, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %3, metadata !104, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %4, metadata !105, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %5, metadata !106, metadata !DIExpression()), !dbg !113
  %7 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !114
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !107, metadata !DIExpression()), !dbg !113
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !115
  br i1 %8, label %9, label %11, !dbg !117

9:                                                ; preds = %6
  %10 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str, i64 0, i64 0)), !dbg !118
  br label %64, !dbg !120

11:                                               ; preds = %6
  %12 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* nonnull %7), !dbg !121
  %13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %3, i32 %2), !dbg !122
  %14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %5), !dbg !123
  %15 = icmp eq i32 %4, 0, !dbg !124
  call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !113
  %16 = icmp sgt i32 %2, 0, !dbg !126
  br i1 %15, label %23, label %17, !dbg !127

17:                                               ; preds = %11
  br i1 %16, label %18, label %62, !dbg !128

18:                                               ; preds = %17
  %19 = icmp sgt i32 %3, 0, !dbg !131
  %20 = zext i32 %2 to i64, !dbg !128
  %21 = zext i32 %2 to i64, !dbg !136
  %22 = zext i32 %3 to i64, !dbg !131
  br label %46, !dbg !128

23:                                               ; preds = %11
  br i1 %16, label %24, label %62, !dbg !137

24:                                               ; preds = %23
  %25 = icmp sgt i32 %3, 0, !dbg !140
  %26 = sext i32 %3 to i64, !dbg !137
  %27 = zext i32 %2 to i64, !dbg !145
  %28 = zext i32 %3 to i64, !dbg !140
  br label %29, !dbg !137

29:                                               ; preds = %42, %24
  %30 = phi i64 [ 0, %24 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 0, metadata !112, metadata !DIExpression()), !dbg !113
  br i1 %25, label %31, label %42, !dbg !146

31:                                               ; preds = %29
  %32 = mul nsw i64 %30, %26, !dbg !147
  br label %33, !dbg !146

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %40, %33 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !112, metadata !DIExpression()), !dbg !113
  %35 = add nsw i64 %34, %32, !dbg !149
  %36 = getelementptr inbounds float, float* %1, i64 %35, !dbg !150
  %37 = load float, float* %36, align 4, !dbg !150, !tbaa !151
  %38 = fptosi float %37 to i32, !dbg !155
  %39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %38), !dbg !156
  %40 = add nuw nsw i64 %34, 1, !dbg !157
  call void @llvm.dbg.value(metadata i64 %40, metadata !112, metadata !DIExpression()), !dbg !113
  %41 = icmp eq i64 %40, %28, !dbg !158
  br i1 %41, label %42, label %33, !dbg !146, !llvm.loop !159

42:                                               ; preds = %33, %29
  %43 = tail call i32 @fputc_unlocked(i32 10, %struct._IO_FILE* nonnull %7), !dbg !161
  %44 = add nuw nsw i64 %30, 1, !dbg !162
  call void @llvm.dbg.value(metadata i64 %44, metadata !111, metadata !DIExpression()), !dbg !113
  %45 = icmp eq i64 %44, %27, !dbg !145
  br i1 %45, label %62, label %29, !dbg !137, !llvm.loop !163

46:                                               ; preds = %58, %18
  %47 = phi i64 [ 0, %18 ], [ %60, %58 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 0, metadata !112, metadata !DIExpression()), !dbg !113
  br i1 %19, label %48, label %58, !dbg !165

48:                                               ; preds = %46, %48
  %49 = phi i64 [ %56, %48 ], [ 0, %46 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !112, metadata !DIExpression()), !dbg !113
  %50 = mul nsw i64 %49, %20, !dbg !166
  %51 = add nuw nsw i64 %50, %47, !dbg !168
  %52 = getelementptr inbounds float, float* %1, i64 %51, !dbg !169
  %53 = load float, float* %52, align 4, !dbg !169, !tbaa !151
  %54 = fptosi float %53 to i32, !dbg !170
  %55 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %54), !dbg !171
  %56 = add nuw nsw i64 %49, 1, !dbg !172
  call void @llvm.dbg.value(metadata i64 %56, metadata !112, metadata !DIExpression()), !dbg !113
  %57 = icmp eq i64 %56, %22, !dbg !173
  br i1 %57, label %58, label %48, !dbg !165, !llvm.loop !174

58:                                               ; preds = %48, %46
  %59 = tail call i32 @fputc_unlocked(i32 10, %struct._IO_FILE* nonnull %7), !dbg !176
  %60 = add nuw nsw i64 %47, 1, !dbg !177
  call void @llvm.dbg.value(metadata i64 %60, metadata !111, metadata !DIExpression()), !dbg !113
  %61 = icmp eq i64 %60, %21, !dbg !136
  br i1 %61, label %62, label %46, !dbg !128, !llvm.loop !178

62:                                               ; preds = %58, %42, %17, %23
  %63 = tail call i32 @fclose(%struct._IO_FILE* nonnull %7), !dbg !180
  br label %64, !dbg !181

64:                                               ; preds = %62, %9
  ret void, !dbg !181
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !6 dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @read_graphics(i8* nocapture readonly %0, float* nocapture %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #4 !dbg !182 {
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !186, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata float* %1, metadata !187, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 %2, metadata !188, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 %3, metadata !189, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 %4, metadata !190, metadata !DIExpression()), !dbg !196
  %7 = bitcast i32* %6 to i8*, !dbg !197
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #10, !dbg !197
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)), !dbg !198
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !191, metadata !DIExpression()), !dbg !196
  %9 = icmp eq %struct._IO_FILE* %8, null, !dbg !199
  br i1 %9, label %10, label %12, !dbg !201

10:                                               ; preds = %5
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @str.29, i64 0, i64 0)), !dbg !202
  br label %68, !dbg !204

12:                                               ; preds = %5, %12
  %13 = phi i32 [ %18, %12 ], [ 0, %5 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !192, metadata !DIExpression()), !dbg !196
  %14 = tail call i32 @fgetc(%struct._IO_FILE* nonnull %8), !dbg !205
  call void @llvm.dbg.value(metadata i32 %14, metadata !194, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !196
  %15 = and i32 %14, 255, !dbg !207
  %16 = icmp eq i32 %15, 10, !dbg !207
  %17 = zext i1 %16 to i32
  %18 = add nuw nsw i32 %13, %17
  call void @llvm.dbg.value(metadata i32 %18, metadata !192, metadata !DIExpression()), !dbg !196
  %19 = icmp ult i32 %18, 3, !dbg !209
  br i1 %19, label %12, label %20, !dbg !210

20:                                               ; preds = %12
  %21 = icmp eq i32 %4, 0, !dbg !211
  call void @llvm.dbg.value(metadata i32 0, metadata !192, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 0, metadata !192, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 0, metadata !192, metadata !DIExpression()), !dbg !196
  %22 = icmp sgt i32 %2, 0, !dbg !213
  br i1 %21, label %29, label %23, !dbg !214

23:                                               ; preds = %20
  br i1 %22, label %24, label %66, !dbg !215

24:                                               ; preds = %23
  %25 = icmp sgt i32 %3, 0, !dbg !218
  %26 = zext i32 %2 to i64, !dbg !215
  %27 = zext i32 %2 to i64, !dbg !223
  %28 = zext i32 %3 to i64, !dbg !218
  br label %51, !dbg !215

29:                                               ; preds = %20
  br i1 %22, label %30, label %66, !dbg !224

30:                                               ; preds = %29
  %31 = icmp sgt i32 %3, 0, !dbg !227
  %32 = sext i32 %3 to i64, !dbg !224
  %33 = zext i32 %2 to i64, !dbg !232
  %34 = zext i32 %3 to i64, !dbg !227
  br label %35, !dbg !224

35:                                               ; preds = %48, %30
  %36 = phi i64 [ 0, %30 ], [ %49, %48 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !192, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression()), !dbg !196
  br i1 %31, label %37, label %48, !dbg !233

37:                                               ; preds = %35
  %38 = mul nsw i64 %36, %32, !dbg !234
  br label %39, !dbg !233

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %46, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !193, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32* %6, metadata !195, metadata !DIExpression(DW_OP_deref)), !dbg !196
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* nonnull %6) #10, !dbg !236
  %42 = load i32, i32* %6, align 4, !dbg !237, !tbaa !238
  call void @llvm.dbg.value(metadata i32 %42, metadata !195, metadata !DIExpression()), !dbg !196
  %43 = sitofp i32 %42 to float, !dbg !240
  %44 = add nsw i64 %40, %38, !dbg !241
  %45 = getelementptr inbounds float, float* %1, i64 %44, !dbg !242
  store float %43, float* %45, align 4, !dbg !243, !tbaa !151
  %46 = add nuw nsw i64 %40, 1, !dbg !244
  call void @llvm.dbg.value(metadata i64 %46, metadata !193, metadata !DIExpression()), !dbg !196
  %47 = icmp eq i64 %46, %34, !dbg !245
  br i1 %47, label %48, label %39, !dbg !233, !llvm.loop !246

48:                                               ; preds = %39, %35
  %49 = add nuw nsw i64 %36, 1, !dbg !248
  call void @llvm.dbg.value(metadata i64 %49, metadata !192, metadata !DIExpression()), !dbg !196
  %50 = icmp eq i64 %49, %33, !dbg !232
  br i1 %50, label %66, label %35, !dbg !224, !llvm.loop !249

51:                                               ; preds = %63, %24
  %52 = phi i64 [ 0, %24 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !192, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression()), !dbg !196
  br i1 %25, label %53, label %63, !dbg !251

53:                                               ; preds = %51, %53
  %54 = phi i64 [ %61, %53 ], [ 0, %51 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !193, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32* %6, metadata !195, metadata !DIExpression(DW_OP_deref)), !dbg !196
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* nonnull %6) #10, !dbg !252
  %56 = load i32, i32* %6, align 4, !dbg !254, !tbaa !238
  call void @llvm.dbg.value(metadata i32 %56, metadata !195, metadata !DIExpression()), !dbg !196
  %57 = sitofp i32 %56 to float, !dbg !255
  %58 = mul nsw i64 %54, %26, !dbg !256
  %59 = add nuw nsw i64 %58, %52, !dbg !257
  %60 = getelementptr inbounds float, float* %1, i64 %59, !dbg !258
  store float %57, float* %60, align 4, !dbg !259, !tbaa !151
  %61 = add nuw nsw i64 %54, 1, !dbg !260
  call void @llvm.dbg.value(metadata i64 %61, metadata !193, metadata !DIExpression()), !dbg !196
  %62 = icmp eq i64 %61, %28, !dbg !261
  br i1 %62, label %63, label %53, !dbg !251, !llvm.loop !262

63:                                               ; preds = %53, %51
  %64 = add nuw nsw i64 %52, 1, !dbg !264
  call void @llvm.dbg.value(metadata i64 %64, metadata !192, metadata !DIExpression()), !dbg !196
  %65 = icmp eq i64 %64, %27, !dbg !223
  br i1 %65, label %66, label %51, !dbg !215, !llvm.loop !265

66:                                               ; preds = %63, %48, %23, %29
  %67 = call i32 @fclose(%struct._IO_FILE* nonnull %8), !dbg !267
  br label %68, !dbg !268

68:                                               ; preds = %66, %10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #10, !dbg !268
  ret void, !dbg !268
}

; Function Attrs: nofree nounwind
declare !dbg !68 dso_local i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #3

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @resize(float* nocapture readonly %0, i32 %1, i32 %2, float* nocapture %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #6 !dbg !269 {
  call void @llvm.dbg.value(metadata float* %0, metadata !274, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %1, metadata !275, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %2, metadata !276, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata float* %3, metadata !277, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %4, metadata !278, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %5, metadata !279, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %6, metadata !280, metadata !DIExpression()), !dbg !285
  %8 = icmp eq i32 %6, 0, !dbg !286
  br i1 %8, label %20, label %9, !dbg !288

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !285
  %10 = icmp sgt i32 %5, 0, !dbg !289
  br i1 %10, label %11, label %151, !dbg !293

11:                                               ; preds = %9
  %12 = icmp sgt i32 %4, 0, !dbg !294
  %13 = sext i32 %4 to i64, !dbg !293
  %14 = zext i32 %5 to i64, !dbg !289
  %15 = zext i32 %4 to i64, !dbg !294
  %16 = and i64 %15, 1, !dbg !298
  %17 = icmp eq i32 %4, 1, !dbg !298
  %18 = sub nsw i64 %15, %16, !dbg !298
  %19 = icmp eq i64 %16, 0, !dbg !298
  br label %91, !dbg !293

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !281, metadata !DIExpression()), !dbg !285
  %21 = icmp sgt i32 %4, 0, !dbg !299
  br i1 %21, label %22, label %151, !dbg !303

22:                                               ; preds = %20
  %23 = icmp sgt i32 %5, 0, !dbg !304
  %24 = sext i32 %5 to i64, !dbg !303
  %25 = zext i32 %4 to i64, !dbg !299
  %26 = zext i32 %5 to i64, !dbg !304
  %27 = and i64 %26, 1, !dbg !308
  %28 = icmp eq i32 %5, 1, !dbg !308
  %29 = sub nsw i64 %26, %27, !dbg !308
  %30 = icmp eq i64 %27, 0, !dbg !308
  br label %31, !dbg !303

31:                                               ; preds = %87, %22
  %32 = phi i64 [ 0, %22 ], [ %88, %87 ]
  %33 = phi i32 [ 0, %22 ], [ %89, %87 ]
  call void @llvm.dbg.value(metadata i32 %33, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %32, metadata !281, metadata !DIExpression()), !dbg !285
  %34 = icmp slt i32 %33, %1, !dbg !309
  %35 = select i1 %34, i32 0, i32 %1, !dbg !311
  %36 = sub nsw i32 %33, %35, !dbg !311
  call void @llvm.dbg.value(metadata i32 %36, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !284, metadata !DIExpression()), !dbg !285
  br i1 %23, label %37, label %87, !dbg !312

37:                                               ; preds = %31
  %38 = mul nsw i32 %36, %2, !dbg !313
  %39 = mul nsw i64 %32, %24, !dbg !313
  br i1 %28, label %72, label %40, !dbg !312

40:                                               ; preds = %37, %40
  %41 = phi i64 [ %68, %40 ], [ 0, %37 ]
  %42 = phi i32 [ %69, %40 ], [ 0, %37 ]
  %43 = phi i64 [ %70, %40 ], [ %29, %37 ]
  call void @llvm.dbg.value(metadata i32 %42, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %41, metadata !282, metadata !DIExpression()), !dbg !285
  %44 = icmp slt i32 %42, %2, !dbg !315
  %45 = select i1 %44, i32 0, i32 %2, !dbg !317
  %46 = sub nsw i32 %42, %45, !dbg !317
  call void @llvm.dbg.value(metadata i32 %46, metadata !284, metadata !DIExpression()), !dbg !285
  %47 = add nsw i32 %46, %38, !dbg !318
  %48 = sext i32 %47 to i64, !dbg !319
  %49 = getelementptr inbounds float, float* %0, i64 %48, !dbg !319
  %50 = bitcast float* %49 to i32*, !dbg !319
  %51 = load i32, i32* %50, align 4, !dbg !319, !tbaa !151
  %52 = add nsw i64 %41, %39, !dbg !320
  %53 = getelementptr inbounds float, float* %3, i64 %52, !dbg !321
  %54 = bitcast float* %53 to i32*, !dbg !322
  store i32 %51, i32* %54, align 4, !dbg !322, !tbaa !151
  %55 = or i64 %41, 1, !dbg !323
  call void @llvm.dbg.value(metadata i64 %55, metadata !282, metadata !DIExpression()), !dbg !285
  %56 = add nsw i32 %46, 1, !dbg !324
  call void @llvm.dbg.value(metadata i32 %56, metadata !284, metadata !DIExpression()), !dbg !285
  %57 = icmp slt i32 %56, %2, !dbg !315
  %58 = select i1 %57, i32 0, i32 %2, !dbg !317
  %59 = sub nsw i32 %56, %58, !dbg !317
  call void @llvm.dbg.value(metadata i32 %59, metadata !284, metadata !DIExpression()), !dbg !285
  %60 = add nsw i32 %59, %38, !dbg !318
  %61 = sext i32 %60 to i64, !dbg !319
  %62 = getelementptr inbounds float, float* %0, i64 %61, !dbg !319
  %63 = bitcast float* %62 to i32*, !dbg !319
  %64 = load i32, i32* %63, align 4, !dbg !319, !tbaa !151
  %65 = add nsw i64 %55, %39, !dbg !320
  %66 = getelementptr inbounds float, float* %3, i64 %65, !dbg !321
  %67 = bitcast float* %66 to i32*, !dbg !322
  store i32 %64, i32* %67, align 4, !dbg !322, !tbaa !151
  %68 = add nuw nsw i64 %41, 2, !dbg !323
  call void @llvm.dbg.value(metadata i64 %68, metadata !282, metadata !DIExpression()), !dbg !285
  %69 = add nsw i32 %59, 1, !dbg !324
  call void @llvm.dbg.value(metadata i32 %69, metadata !284, metadata !DIExpression()), !dbg !285
  %70 = add i64 %43, -2, !dbg !312
  %71 = icmp eq i64 %70, 0, !dbg !312
  br i1 %71, label %72, label %40, !dbg !312, !llvm.loop !325

72:                                               ; preds = %40, %37
  %73 = phi i64 [ 0, %37 ], [ %68, %40 ]
  %74 = phi i32 [ 0, %37 ], [ %69, %40 ]
  br i1 %30, label %87, label %75, !dbg !312

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 %74, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %73, metadata !282, metadata !DIExpression()), !dbg !285
  %76 = icmp slt i32 %74, %2, !dbg !315
  %77 = select i1 %76, i32 0, i32 %2, !dbg !317
  %78 = sub nsw i32 %74, %77, !dbg !317
  call void @llvm.dbg.value(metadata i32 %78, metadata !284, metadata !DIExpression()), !dbg !285
  %79 = add nsw i32 %78, %38, !dbg !318
  %80 = sext i32 %79 to i64, !dbg !319
  %81 = getelementptr inbounds float, float* %0, i64 %80, !dbg !319
  %82 = bitcast float* %81 to i32*, !dbg !319
  %83 = load i32, i32* %82, align 4, !dbg !319, !tbaa !151
  %84 = add nsw i64 %73, %39, !dbg !320
  %85 = getelementptr inbounds float, float* %3, i64 %84, !dbg !321
  %86 = bitcast float* %85 to i32*, !dbg !322
  store i32 %83, i32* %86, align 4, !dbg !322, !tbaa !151
  call void @llvm.dbg.value(metadata i64 %73, metadata !282, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !285
  call void @llvm.dbg.value(metadata i32 %78, metadata !284, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !285
  br label %87, !dbg !327

87:                                               ; preds = %75, %72, %31
  %88 = add nuw nsw i64 %32, 1, !dbg !327
  call void @llvm.dbg.value(metadata i64 %88, metadata !281, metadata !DIExpression()), !dbg !285
  %89 = add nsw i32 %36, 1, !dbg !328
  call void @llvm.dbg.value(metadata i32 %89, metadata !283, metadata !DIExpression()), !dbg !285
  %90 = icmp eq i64 %88, %25, !dbg !299
  br i1 %90, label %151, label %31, !dbg !303, !llvm.loop !329

91:                                               ; preds = %147, %11
  %92 = phi i64 [ 0, %11 ], [ %148, %147 ]
  %93 = phi i32 [ 0, %11 ], [ %149, %147 ]
  call void @llvm.dbg.value(metadata i32 %93, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %92, metadata !282, metadata !DIExpression()), !dbg !285
  %94 = icmp slt i32 %93, %2, !dbg !331
  %95 = select i1 %94, i32 0, i32 %2, !dbg !333
  %96 = sub nsw i32 %93, %95, !dbg !333
  call void @llvm.dbg.value(metadata i32 %96, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !281, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !285
  br i1 %12, label %97, label %147, !dbg !334

97:                                               ; preds = %91
  %98 = mul nsw i32 %96, %1, !dbg !335
  %99 = mul nsw i64 %92, %13, !dbg !335
  br i1 %17, label %132, label %100, !dbg !334

100:                                              ; preds = %97, %100
  %101 = phi i64 [ %128, %100 ], [ 0, %97 ]
  %102 = phi i32 [ %129, %100 ], [ 0, %97 ]
  %103 = phi i64 [ %130, %100 ], [ %18, %97 ]
  call void @llvm.dbg.value(metadata i32 %102, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %101, metadata !281, metadata !DIExpression()), !dbg !285
  %104 = icmp slt i32 %102, %1, !dbg !337
  %105 = select i1 %104, i32 0, i32 %1, !dbg !339
  %106 = sub nsw i32 %102, %105, !dbg !339
  call void @llvm.dbg.value(metadata i32 %106, metadata !283, metadata !DIExpression()), !dbg !285
  %107 = add nsw i32 %106, %98, !dbg !340
  %108 = sext i32 %107 to i64, !dbg !341
  %109 = getelementptr inbounds float, float* %0, i64 %108, !dbg !341
  %110 = bitcast float* %109 to i32*, !dbg !341
  %111 = load i32, i32* %110, align 4, !dbg !341, !tbaa !151
  %112 = add nsw i64 %101, %99, !dbg !342
  %113 = getelementptr inbounds float, float* %3, i64 %112, !dbg !343
  %114 = bitcast float* %113 to i32*, !dbg !344
  store i32 %111, i32* %114, align 4, !dbg !344, !tbaa !151
  %115 = or i64 %101, 1, !dbg !345
  call void @llvm.dbg.value(metadata i64 %115, metadata !281, metadata !DIExpression()), !dbg !285
  %116 = add nsw i32 %106, 1, !dbg !346
  call void @llvm.dbg.value(metadata i32 %116, metadata !283, metadata !DIExpression()), !dbg !285
  %117 = icmp slt i32 %116, %1, !dbg !337
  %118 = select i1 %117, i32 0, i32 %1, !dbg !339
  %119 = sub nsw i32 %116, %118, !dbg !339
  call void @llvm.dbg.value(metadata i32 %119, metadata !283, metadata !DIExpression()), !dbg !285
  %120 = add nsw i32 %119, %98, !dbg !340
  %121 = sext i32 %120 to i64, !dbg !341
  %122 = getelementptr inbounds float, float* %0, i64 %121, !dbg !341
  %123 = bitcast float* %122 to i32*, !dbg !341
  %124 = load i32, i32* %123, align 4, !dbg !341, !tbaa !151
  %125 = add nsw i64 %115, %99, !dbg !342
  %126 = getelementptr inbounds float, float* %3, i64 %125, !dbg !343
  %127 = bitcast float* %126 to i32*, !dbg !344
  store i32 %124, i32* %127, align 4, !dbg !344, !tbaa !151
  %128 = add nuw nsw i64 %101, 2, !dbg !345
  call void @llvm.dbg.value(metadata i64 %128, metadata !281, metadata !DIExpression()), !dbg !285
  %129 = add nsw i32 %119, 1, !dbg !346
  call void @llvm.dbg.value(metadata i32 %129, metadata !283, metadata !DIExpression()), !dbg !285
  %130 = add i64 %103, -2, !dbg !334
  %131 = icmp eq i64 %130, 0, !dbg !334
  br i1 %131, label %132, label %100, !dbg !334, !llvm.loop !347

132:                                              ; preds = %100, %97
  %133 = phi i64 [ 0, %97 ], [ %128, %100 ]
  %134 = phi i32 [ 0, %97 ], [ %129, %100 ]
  br i1 %19, label %147, label %135, !dbg !334

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i32 %134, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %133, metadata !281, metadata !DIExpression()), !dbg !285
  %136 = icmp slt i32 %134, %1, !dbg !337
  %137 = select i1 %136, i32 0, i32 %1, !dbg !339
  %138 = sub nsw i32 %134, %137, !dbg !339
  call void @llvm.dbg.value(metadata i32 %138, metadata !283, metadata !DIExpression()), !dbg !285
  %139 = add nsw i32 %138, %98, !dbg !340
  %140 = sext i32 %139 to i64, !dbg !341
  %141 = getelementptr inbounds float, float* %0, i64 %140, !dbg !341
  %142 = bitcast float* %141 to i32*, !dbg !341
  %143 = load i32, i32* %142, align 4, !dbg !341, !tbaa !151
  %144 = add nsw i64 %133, %99, !dbg !342
  %145 = getelementptr inbounds float, float* %3, i64 %144, !dbg !343
  %146 = bitcast float* %145 to i32*, !dbg !344
  store i32 %143, i32* %146, align 4, !dbg !344, !tbaa !151
  call void @llvm.dbg.value(metadata i64 %133, metadata !281, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !285
  call void @llvm.dbg.value(metadata i32 %138, metadata !283, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !285
  br label %147, !dbg !349

147:                                              ; preds = %135, %132, %91
  %148 = add nuw nsw i64 %92, 1, !dbg !349
  call void @llvm.dbg.value(metadata i64 %148, metadata !282, metadata !DIExpression()), !dbg !285
  %149 = add nsw i32 %96, 1, !dbg !350
  call void @llvm.dbg.value(metadata i32 %149, metadata !284, metadata !DIExpression()), !dbg !285
  %150 = icmp eq i64 %148, %14, !dbg !289
  br i1 %150, label %151, label %91, !dbg !293, !llvm.loop !351

151:                                              ; preds = %147, %87, %9, %20
  ret void, !dbg !353
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_time() local_unnamed_addr #4 !dbg !354 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !361
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #10, !dbg !361
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !360, metadata !DIExpression()), !dbg !362
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, i8* null) #10, !dbg !363
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !364
  %5 = load i64, i64* %4, align 8, !dbg !364, !tbaa !365
  %6 = mul nsw i64 %5, 1000000, !dbg !368
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !369
  %8 = load i64, i64* %7, align 8, !dbg !369, !tbaa !370
  %9 = add nsw i64 %6, %8, !dbg !371
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #10, !dbg !372
  ret i64 %9, !dbg !373
}

; Function Attrs: nofree nounwind
declare !dbg !70 dso_local i32 @gettimeofday(%struct.timeval* nocapture, i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #4 !dbg !374 {
  %3 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !360, metadata !DIExpression()), !dbg !438
  %4 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !360, metadata !DIExpression()), !dbg !440
  %5 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %5, metadata !360, metadata !DIExpression()), !dbg !442
  %6 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %6, metadata !360, metadata !DIExpression()), !dbg !444
  %7 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %7, metadata !360, metadata !DIExpression()), !dbg !446
  %8 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %8, metadata !360, metadata !DIExpression()), !dbg !448
  %9 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %9, metadata !360, metadata !DIExpression()), !dbg !450
  %10 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %10, metadata !360, metadata !DIExpression()), !dbg !452
  %11 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %11, metadata !360, metadata !DIExpression()), !dbg !454
  %12 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %12, metadata !360, metadata !DIExpression()), !dbg !456
  %13 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %13, metadata !360, metadata !DIExpression()), !dbg !458
  %14 = alloca float*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca %struct.ident_t, align 8
  %29 = bitcast %struct.ident_t* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %29, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 24, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !378, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i8** %1, metadata !379, metadata !DIExpression()), !dbg !460
  %30 = bitcast %struct.timeval* %13 to i8*, !dbg !461
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #10, !dbg !461
  %31 = call i32 @gettimeofday(%struct.timeval* nonnull %13, i8* null) #10, !dbg !462
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i64 0, i32 0, !dbg !463
  %33 = load i64, i64* %32, align 8, !dbg !463, !tbaa !365
  %34 = mul nsw i64 %33, 1000000, !dbg !464
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i64 0, i32 1, !dbg !465
  %36 = load i64, i64* %35, align 8, !dbg !465, !tbaa !370
  %37 = add nsw i64 %34, %36, !dbg !466
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #10, !dbg !467
  call void @llvm.dbg.value(metadata i64 %37, metadata !380, metadata !DIExpression()), !dbg !460
  %38 = bitcast float** %14 to i8*, !dbg !468
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %38) #10, !dbg !468
  %39 = bitcast i64* %15 to i8*, !dbg !469
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #10, !dbg !469
  %40 = bitcast i64* %16 to i8*, !dbg !469
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #10, !dbg !469
  %41 = bitcast float* %17 to i8*, !dbg !470
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %41) #10, !dbg !470
  %42 = bitcast float* %18 to i8*, !dbg !471
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #10, !dbg !471
  %43 = bitcast i32** %19 to i8*, !dbg !472
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #10, !dbg !472
  %44 = bitcast i32** %20 to i8*, !dbg !472
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #10, !dbg !472
  %45 = bitcast i32** %21 to i8*, !dbg !472
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #10, !dbg !472
  %46 = bitcast i32** %22 to i8*, !dbg !472
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #10, !dbg !472
  %47 = bitcast float** %23 to i8*, !dbg !473
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #10, !dbg !473
  %48 = bitcast float** %24 to i8*, !dbg !473
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #10, !dbg !473
  %49 = bitcast float** %25 to i8*, !dbg !473
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #10, !dbg !473
  %50 = bitcast float** %26 to i8*, !dbg !473
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #10, !dbg !473
  %51 = bitcast float** %27 to i8*, !dbg !474
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #10, !dbg !474
  %52 = bitcast %struct.timeval* %12 to i8*, !dbg !475
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #10, !dbg !475
  %53 = call i32 @gettimeofday(%struct.timeval* nonnull %12, i8* null) #10, !dbg !476
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i64 0, i32 0, !dbg !477
  %55 = load i64, i64* %54, align 8, !dbg !477, !tbaa !365
  %56 = mul nsw i64 %55, 1000000, !dbg !478
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i64 0, i32 1, !dbg !479
  %58 = load i64, i64* %57, align 8, !dbg !479, !tbaa !370
  %59 = add nsw i64 %56, %58, !dbg !480
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #10, !dbg !481
  call void @llvm.dbg.value(metadata i64 %59, metadata !381, metadata !DIExpression()), !dbg !460
  %60 = icmp eq i32 %0, 6, !dbg !482
  br i1 %60, label %63, label %61, !dbg !484

61:                                               ; preds = %2
  %62 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str.32, i64 0, i64 0)), !dbg !485
  br label %621, !dbg !487

63:                                               ; preds = %2
  %64 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !488
  %65 = load i8*, i8** %64, align 8, !dbg !488, !tbaa !490
  call void @llvm.dbg.value(metadata i8* %65, metadata !492, metadata !DIExpression()) #10, !dbg !499
  %66 = tail call i64 @strtol(i8* nocapture nonnull %65, i8** null, i32 10) #10, !dbg !501
  %67 = trunc i64 %66 to i32, !dbg !502
  call void @llvm.dbg.value(metadata i32 %67, metadata !399, metadata !DIExpression()), !dbg !460
  %68 = getelementptr inbounds i8*, i8** %1, i64 2, !dbg !503
  %69 = load i8*, i8** %68, align 8, !dbg !503, !tbaa !490
  call void @llvm.dbg.value(metadata i8* %69, metadata !504, metadata !DIExpression()) #10, !dbg !511
  %70 = tail call double @strtod(i8* nocapture nonnull %69, i8** null) #10, !dbg !513
  %71 = fptrunc double %70 to float, !dbg !514
  call void @llvm.dbg.value(metadata float %71, metadata !400, metadata !DIExpression()), !dbg !460
  store float %71, float* %17, align 4, !dbg !515, !tbaa !151
  %72 = getelementptr inbounds i8*, i8** %1, i64 3, !dbg !516
  %73 = load i8*, i8** %72, align 8, !dbg !516, !tbaa !490
  call void @llvm.dbg.value(metadata i8* %73, metadata !492, metadata !DIExpression()) #10, !dbg !517
  %74 = tail call i64 @strtol(i8* nocapture nonnull %73, i8** null, i32 10) #10, !dbg !519
  %75 = shl i64 %74, 32, !dbg !520
  %76 = ashr exact i64 %75, 32, !dbg !520
  call void @llvm.dbg.value(metadata i64 %76, metadata !396, metadata !DIExpression()), !dbg !460
  store i64 %76, i64* %15, align 8, !dbg !521, !tbaa !522
  %77 = getelementptr inbounds i8*, i8** %1, i64 4, !dbg !523
  %78 = load i8*, i8** %77, align 8, !dbg !523, !tbaa !490
  call void @llvm.dbg.value(metadata i8* %78, metadata !492, metadata !DIExpression()) #10, !dbg !524
  %79 = tail call i64 @strtol(i8* nocapture nonnull %78, i8** null, i32 10) #10, !dbg !526
  %80 = shl i64 %79, 32, !dbg !527
  %81 = ashr exact i64 %80, 32, !dbg !527
  call void @llvm.dbg.value(metadata i64 %81, metadata !397, metadata !DIExpression()), !dbg !460
  store i64 %81, i64* %16, align 8, !dbg !528, !tbaa !522
  %82 = getelementptr inbounds i8*, i8** %1, i64 5, !dbg !529
  %83 = load i8*, i8** %82, align 8, !dbg !529, !tbaa !490
  call void @llvm.dbg.value(metadata i8* %83, metadata !492, metadata !DIExpression()) #10, !dbg !530
  %84 = tail call i64 @strtol(i8* nocapture nonnull %83, i8** null, i32 10) #10, !dbg !532
  %85 = trunc i64 %84 to i32, !dbg !533
  call void @llvm.dbg.value(metadata i32 %85, metadata !437, metadata !DIExpression()), !dbg !460
  tail call void @omp_set_num_threads(i32 %85) #10, !dbg !534
  %86 = bitcast %struct.timeval* %11 to i8*, !dbg !535
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86) #10, !dbg !535
  %87 = call i32 @gettimeofday(%struct.timeval* nonnull %11, i8* null) #10, !dbg !536
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i64 0, i32 0, !dbg !537
  %89 = load i64, i64* %88, align 8, !dbg !537, !tbaa !365
  %90 = mul nsw i64 %89, 1000000, !dbg !538
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i64 0, i32 1, !dbg !539
  %92 = load i64, i64* %91, align 8, !dbg !539, !tbaa !370
  %93 = add nsw i64 %90, %92, !dbg !540
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86) #10, !dbg !541
  call void @llvm.dbg.value(metadata i64 %93, metadata !382, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 502, metadata !392, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 458, metadata !393, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 229916, metadata !394, metadata !DIExpression()), !dbg !460
  %94 = tail call noalias dereferenceable_or_null(919664) i8* @malloc(i64 919664) #10, !dbg !542
  %95 = bitcast i8* %94 to float*, !dbg !543
  call void @llvm.dbg.value(metadata float* %95, metadata !391, metadata !DIExpression()), !dbg !460
  tail call void @read_graphics(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), float* %95, i32 502, i32 458, i32 1), !dbg !544
  %96 = bitcast %struct.timeval* %10 to i8*, !dbg !545
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %96) #10, !dbg !545
  %97 = call i32 @gettimeofday(%struct.timeval* nonnull %10, i8* null) #10, !dbg !546
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 0, !dbg !547
  %99 = load i64, i64* %98, align 8, !dbg !547, !tbaa !365
  %100 = mul nsw i64 %99, 1000000, !dbg !548
  %101 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 1, !dbg !549
  %102 = load i64, i64* %101, align 8, !dbg !549, !tbaa !370
  %103 = add nsw i64 %100, %102, !dbg !550
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %96) #10, !dbg !551
  call void @llvm.dbg.value(metadata i64 %103, metadata !383, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %76, metadata !396, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %81, metadata !397, metadata !DIExpression()), !dbg !460
  %104 = mul nsw i64 %81, %76, !dbg !552
  call void @llvm.dbg.value(metadata i64 %104, metadata !398, metadata !DIExpression()), !dbg !460
  %105 = shl i64 %104, 2, !dbg !553
  %106 = tail call noalias i8* @malloc(i64 %105) #10, !dbg !554
  %107 = bitcast i8* %106 to float*, !dbg !555
  call void @llvm.dbg.value(metadata float* %107, metadata !395, metadata !DIExpression()), !dbg !460
  %108 = bitcast float** %14 to i8**, !dbg !556
  store i8* %106, i8** %108, align 8, !dbg !556, !tbaa !490
  call void @llvm.dbg.value(metadata i64 %76, metadata !396, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %81, metadata !397, metadata !DIExpression()), !dbg !460
  %109 = trunc i64 %81 to i32, !dbg !557
  call void @llvm.dbg.value(metadata float* %95, metadata !274, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 502, metadata !275, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 458, metadata !276, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata float* %107, metadata !277, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %76, metadata !278, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !558
  call void @llvm.dbg.value(metadata i32 %109, metadata !279, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 1, metadata !280, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 0, metadata !284, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !558
  %110 = icmp sgt i32 %109, 0, !dbg !560
  br i1 %110, label %111, label %180, !dbg !561

111:                                              ; preds = %63
  %112 = trunc i64 %76 to i32, !dbg !562
  call void @llvm.dbg.value(metadata i32 %112, metadata !278, metadata !DIExpression()), !dbg !558
  %113 = icmp sgt i32 %112, 0, !dbg !563
  %114 = and i64 %81, 4294967295, !dbg !560
  %115 = and i64 %76, 4294967295, !dbg !563
  %116 = and i64 %76, 1, !dbg !564
  %117 = icmp eq i64 %115, 1, !dbg !564
  %118 = sub nsw i64 %115, %116, !dbg !564
  %119 = icmp eq i64 %116, 0, !dbg !564
  br label %120, !dbg !561

120:                                              ; preds = %176, %111
  %121 = phi i64 [ 0, %111 ], [ %177, %176 ]
  %122 = phi i32 [ 0, %111 ], [ %178, %176 ]
  call void @llvm.dbg.value(metadata i32 %122, metadata !284, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %121, metadata !282, metadata !DIExpression()), !dbg !558
  %123 = icmp slt i32 %122, 458, !dbg !565
  %124 = select i1 %123, i32 0, i32 458, !dbg !566
  %125 = sub nsw i32 %122, %124, !dbg !566
  call void @llvm.dbg.value(metadata i32 %125, metadata !284, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 0, metadata !281, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !558
  br i1 %113, label %126, label %176, !dbg !567

126:                                              ; preds = %120
  %127 = mul nsw i32 %125, 502, !dbg !568
  %128 = mul nsw i64 %121, %76, !dbg !568
  br i1 %117, label %161, label %129, !dbg !567

129:                                              ; preds = %126, %129
  %130 = phi i64 [ %157, %129 ], [ 0, %126 ]
  %131 = phi i32 [ %158, %129 ], [ 0, %126 ]
  %132 = phi i64 [ %159, %129 ], [ %118, %126 ]
  call void @llvm.dbg.value(metadata i32 %131, metadata !283, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %130, metadata !281, metadata !DIExpression()), !dbg !558
  %133 = icmp slt i32 %131, 502, !dbg !569
  %134 = select i1 %133, i32 0, i32 502, !dbg !570
  %135 = sub nsw i32 %131, %134, !dbg !570
  call void @llvm.dbg.value(metadata i32 %135, metadata !283, metadata !DIExpression()), !dbg !558
  %136 = add nsw i32 %135, %127, !dbg !571
  %137 = sext i32 %136 to i64, !dbg !572
  %138 = getelementptr inbounds float, float* %95, i64 %137, !dbg !572
  %139 = bitcast float* %138 to i32*, !dbg !572
  %140 = load i32, i32* %139, align 4, !dbg !572, !tbaa !151
  %141 = add nsw i64 %130, %128, !dbg !573
  %142 = getelementptr inbounds float, float* %107, i64 %141, !dbg !574
  %143 = bitcast float* %142 to i32*, !dbg !575
  store i32 %140, i32* %143, align 4, !dbg !575, !tbaa !151
  %144 = or i64 %130, 1, !dbg !576
  call void @llvm.dbg.value(metadata i64 %144, metadata !281, metadata !DIExpression()), !dbg !558
  %145 = add nsw i32 %135, 1, !dbg !577
  call void @llvm.dbg.value(metadata i32 %145, metadata !283, metadata !DIExpression()), !dbg !558
  %146 = icmp slt i32 %135, 501, !dbg !569
  %147 = select i1 %146, i32 0, i32 502, !dbg !570
  %148 = sub nsw i32 %145, %147, !dbg !570
  call void @llvm.dbg.value(metadata i32 %148, metadata !283, metadata !DIExpression()), !dbg !558
  %149 = add nsw i32 %148, %127, !dbg !571
  %150 = sext i32 %149 to i64, !dbg !572
  %151 = getelementptr inbounds float, float* %95, i64 %150, !dbg !572
  %152 = bitcast float* %151 to i32*, !dbg !572
  %153 = load i32, i32* %152, align 4, !dbg !572, !tbaa !151
  %154 = add nsw i64 %144, %128, !dbg !573
  %155 = getelementptr inbounds float, float* %107, i64 %154, !dbg !574
  %156 = bitcast float* %155 to i32*, !dbg !575
  store i32 %153, i32* %156, align 4, !dbg !575, !tbaa !151
  %157 = add nuw nsw i64 %130, 2, !dbg !576
  call void @llvm.dbg.value(metadata i64 %157, metadata !281, metadata !DIExpression()), !dbg !558
  %158 = add nsw i32 %148, 1, !dbg !577
  call void @llvm.dbg.value(metadata i32 %158, metadata !283, metadata !DIExpression()), !dbg !558
  %159 = add i64 %132, -2, !dbg !567
  %160 = icmp eq i64 %159, 0, !dbg !567
  br i1 %160, label %161, label %129, !dbg !567, !llvm.loop !578

161:                                              ; preds = %129, %126
  %162 = phi i64 [ 0, %126 ], [ %157, %129 ]
  %163 = phi i32 [ 0, %126 ], [ %158, %129 ]
  br i1 %119, label %176, label %164, !dbg !567

164:                                              ; preds = %161
  call void @llvm.dbg.value(metadata i32 %163, metadata !283, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %162, metadata !281, metadata !DIExpression()), !dbg !558
  %165 = icmp slt i32 %163, 502, !dbg !569
  %166 = select i1 %165, i32 0, i32 502, !dbg !570
  %167 = sub nsw i32 %163, %166, !dbg !570
  call void @llvm.dbg.value(metadata i32 %167, metadata !283, metadata !DIExpression()), !dbg !558
  %168 = add nsw i32 %167, %127, !dbg !571
  %169 = sext i32 %168 to i64, !dbg !572
  %170 = getelementptr inbounds float, float* %95, i64 %169, !dbg !572
  %171 = bitcast float* %170 to i32*, !dbg !572
  %172 = load i32, i32* %171, align 4, !dbg !572, !tbaa !151
  %173 = add nsw i64 %162, %128, !dbg !573
  %174 = getelementptr inbounds float, float* %107, i64 %173, !dbg !574
  %175 = bitcast float* %174 to i32*, !dbg !575
  store i32 %172, i32* %175, align 4, !dbg !575, !tbaa !151
  call void @llvm.dbg.value(metadata i64 %162, metadata !281, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !558
  call void @llvm.dbg.value(metadata i32 %167, metadata !283, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !558
  br label %176, !dbg !580

176:                                              ; preds = %164, %161, %120
  %177 = add nuw nsw i64 %121, 1, !dbg !580
  call void @llvm.dbg.value(metadata i64 %177, metadata !282, metadata !DIExpression()), !dbg !558
  %178 = add nsw i32 %125, 1, !dbg !581
  call void @llvm.dbg.value(metadata i32 %178, metadata !284, metadata !DIExpression()), !dbg !558
  %179 = icmp eq i64 %177, %114, !dbg !560
  br i1 %179, label %180, label %120, !dbg !561, !llvm.loop !582

180:                                              ; preds = %176, %63
  %181 = bitcast %struct.timeval* %8 to i8*, !dbg !584
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %181) #10, !dbg !584
  %182 = call i32 @gettimeofday(%struct.timeval* nonnull %8, i8* null) #10, !dbg !585
  %183 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0, !dbg !586
  %184 = load i64, i64* %183, align 8, !dbg !586, !tbaa !365
  %185 = mul nsw i64 %184, 1000000, !dbg !587
  %186 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1, !dbg !588
  %187 = load i64, i64* %186, align 8, !dbg !588, !tbaa !370
  %188 = add nsw i64 %185, %187, !dbg !589
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %181) #10, !dbg !590
  call void @llvm.dbg.value(metadata i64 %188, metadata !384, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 0, metadata !401, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %76, metadata !396, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %76, metadata !402, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !460
  call void @llvm.dbg.value(metadata i32 0, metadata !403, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %81, metadata !397, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %81, metadata !404, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !460
  %189 = mul i64 %75, %81, !dbg !591
  %190 = ashr exact i64 %189, 32, !dbg !591
  call void @llvm.dbg.value(metadata i64 %190, metadata !405, metadata !DIExpression()), !dbg !460
  %191 = ashr exact i64 %75, 29, !dbg !592
  %192 = tail call noalias i8* @malloc(i64 %191) #10, !dbg !593
  call void @llvm.dbg.value(metadata i8* %192, metadata !409, metadata !DIExpression()), !dbg !460
  %193 = bitcast i32** %19 to i8**, !dbg !594
  store i8* %192, i8** %193, align 8, !dbg !594, !tbaa !490
  call void @llvm.dbg.value(metadata i64 %76, metadata !396, metadata !DIExpression()), !dbg !460
  %194 = tail call noalias i8* @malloc(i64 %191) #10, !dbg !595
  call void @llvm.dbg.value(metadata i8* %194, metadata !411, metadata !DIExpression()), !dbg !460
  %195 = bitcast i32** %20 to i8**, !dbg !596
  store i8* %194, i8** %195, align 8, !dbg !596, !tbaa !490
  call void @llvm.dbg.value(metadata i64 %81, metadata !397, metadata !DIExpression()), !dbg !460
  %196 = ashr exact i64 %80, 29, !dbg !597
  %197 = tail call noalias i8* @malloc(i64 %196) #10, !dbg !598
  call void @llvm.dbg.value(metadata i8* %197, metadata !413, metadata !DIExpression()), !dbg !460
  %198 = bitcast i32** %22 to i8**, !dbg !599
  store i8* %197, i8** %198, align 8, !dbg !599, !tbaa !490
  call void @llvm.dbg.value(metadata i64 %81, metadata !397, metadata !DIExpression()), !dbg !460
  %199 = tail call noalias i8* @malloc(i64 %196) #10, !dbg !600
  call void @llvm.dbg.value(metadata i8* %199, metadata !412, metadata !DIExpression()), !dbg !460
  %200 = bitcast i32** %21 to i8**, !dbg !601
  store i8* %199, i8** %200, align 8, !dbg !601, !tbaa !490
  %201 = tail call noalias i8* @malloc(i64 %105) #10, !dbg !602
  call void @llvm.dbg.value(metadata i8* %201, metadata !415, metadata !DIExpression()), !dbg !460
  %202 = bitcast float** %23 to i8**, !dbg !603
  store i8* %201, i8** %202, align 8, !dbg !603, !tbaa !490
  %203 = tail call noalias i8* @malloc(i64 %105) #10, !dbg !604
  call void @llvm.dbg.value(metadata i8* %203, metadata !416, metadata !DIExpression()), !dbg !460
  %204 = bitcast float** %24 to i8**, !dbg !605
  store i8* %203, i8** %204, align 8, !dbg !605, !tbaa !490
  %205 = tail call noalias i8* @malloc(i64 %105) #10, !dbg !606
  call void @llvm.dbg.value(metadata i8* %205, metadata !417, metadata !DIExpression()), !dbg !460
  %206 = bitcast float** %25 to i8**, !dbg !607
  store i8* %205, i8** %206, align 8, !dbg !607, !tbaa !490
  %207 = tail call noalias i8* @malloc(i64 %105) #10, !dbg !608
  call void @llvm.dbg.value(metadata i8* %207, metadata !418, metadata !DIExpression()), !dbg !460
  %208 = bitcast float** %26 to i8**, !dbg !609
  store i8* %207, i8** %208, align 8, !dbg !609, !tbaa !490
  %209 = tail call noalias i8* @malloc(i64 %105) #10, !dbg !610
  call void @llvm.dbg.value(metadata i8* %209, metadata !428, metadata !DIExpression()), !dbg !460
  %210 = bitcast float** %27 to i8**, !dbg !611
  store i8* %209, i8** %210, align 8, !dbg !611, !tbaa !490
  call void @llvm.dbg.value(metadata i64 0, metadata !434, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %76, metadata !396, metadata !DIExpression()), !dbg !460
  %211 = icmp sgt i64 %75, 0, !dbg !612
  %212 = bitcast i8* %192 to i32*, !dbg !615
  %213 = bitcast i8* %194 to i32*, !dbg !615
  %214 = bitcast i8* %197 to i32*, !dbg !615
  %215 = bitcast i8* %199 to i32*, !dbg !615
  br i1 %211, label %216, label %293, !dbg !615

216:                                              ; preds = %180
  %217 = shl i64 %74, 32, !dbg !615
  %218 = ashr exact i64 %217, 32, !dbg !615
  %219 = icmp ult i64 %218, 8, !dbg !615
  br i1 %219, label %220, label %222, !dbg !615

220:                                              ; preds = %291, %216
  %221 = phi i64 [ 0, %216 ], [ %223, %291 ]
  br label %372, !dbg !615

222:                                              ; preds = %216
  %223 = and i64 %218, -8, !dbg !615
  %224 = add nsw i64 %223, -8, !dbg !615
  %225 = lshr exact i64 %224, 3, !dbg !615
  %226 = add nuw nsw i64 %225, 1, !dbg !615
  %227 = and i64 %226, 1, !dbg !615
  %228 = icmp eq i64 %224, 0, !dbg !615
  br i1 %228, label %271, label %229, !dbg !615

229:                                              ; preds = %222
  %230 = sub nuw nsw i64 %226, %227, !dbg !615
  br label %231, !dbg !615

231:                                              ; preds = %231, %229
  %232 = phi i64 [ 0, %229 ], [ %266, %231 ], !dbg !616
  %233 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %229 ], [ %267, %231 ]
  %234 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %229 ], [ %268, %231 ], !dbg !618
  %235 = phi i64 [ %230, %229 ], [ %269, %231 ]
  %236 = add <4 x i32> %234, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !618
  %237 = add <4 x i32> %234, <i32 3, i32 3, i32 3, i32 3>, !dbg !618
  %238 = getelementptr inbounds i32, i32* %212, i64 %232, !dbg !619
  %239 = bitcast i32* %238 to <4 x i32>*, !dbg !620
  store <4 x i32> %236, <4 x i32>* %239, align 4, !dbg !620, !tbaa !238
  %240 = getelementptr inbounds i32, i32* %238, i64 4, !dbg !620
  %241 = bitcast i32* %240 to <4 x i32>*, !dbg !620
  store <4 x i32> %237, <4 x i32>* %241, align 4, !dbg !620, !tbaa !238
  %242 = trunc <4 x i64> %233 to <4 x i32>, !dbg !621
  %243 = add <4 x i32> %242, <i32 1, i32 1, i32 1, i32 1>, !dbg !621
  %244 = trunc <4 x i64> %233 to <4 x i32>, !dbg !621
  %245 = add <4 x i32> %244, <i32 5, i32 5, i32 5, i32 5>, !dbg !621
  %246 = getelementptr inbounds i32, i32* %213, i64 %232, !dbg !622
  %247 = bitcast i32* %246 to <4 x i32>*, !dbg !623
  store <4 x i32> %243, <4 x i32>* %247, align 4, !dbg !623, !tbaa !238
  %248 = getelementptr inbounds i32, i32* %246, i64 4, !dbg !623
  %249 = bitcast i32* %248 to <4 x i32>*, !dbg !623
  store <4 x i32> %245, <4 x i32>* %249, align 4, !dbg !623, !tbaa !238
  %250 = or i64 %232, 8, !dbg !616
  %251 = add <4 x i64> %233, <i64 8, i64 8, i64 8, i64 8>
  %252 = add <4 x i32> %234, <i32 7, i32 7, i32 7, i32 7>, !dbg !618
  %253 = add <4 x i32> %234, <i32 11, i32 11, i32 11, i32 11>, !dbg !618
  %254 = getelementptr inbounds i32, i32* %212, i64 %250, !dbg !619
  %255 = bitcast i32* %254 to <4 x i32>*, !dbg !620
  store <4 x i32> %252, <4 x i32>* %255, align 4, !dbg !620, !tbaa !238
  %256 = getelementptr inbounds i32, i32* %254, i64 4, !dbg !620
  %257 = bitcast i32* %256 to <4 x i32>*, !dbg !620
  store <4 x i32> %253, <4 x i32>* %257, align 4, !dbg !620, !tbaa !238
  %258 = trunc <4 x i64> %251 to <4 x i32>, !dbg !621
  %259 = add <4 x i32> %258, <i32 1, i32 1, i32 1, i32 1>, !dbg !621
  %260 = trunc <4 x i64> %251 to <4 x i32>, !dbg !621
  %261 = add <4 x i32> %260, <i32 5, i32 5, i32 5, i32 5>, !dbg !621
  %262 = getelementptr inbounds i32, i32* %213, i64 %250, !dbg !622
  %263 = bitcast i32* %262 to <4 x i32>*, !dbg !623
  store <4 x i32> %259, <4 x i32>* %263, align 4, !dbg !623, !tbaa !238
  %264 = getelementptr inbounds i32, i32* %262, i64 4, !dbg !623
  %265 = bitcast i32* %264 to <4 x i32>*, !dbg !623
  store <4 x i32> %261, <4 x i32>* %265, align 4, !dbg !623, !tbaa !238
  %266 = add i64 %232, 16, !dbg !616
  %267 = add <4 x i64> %233, <i64 16, i64 16, i64 16, i64 16>
  %268 = add <4 x i32> %234, <i32 16, i32 16, i32 16, i32 16>, !dbg !618
  %269 = add i64 %235, -2, !dbg !616
  %270 = icmp eq i64 %269, 0, !dbg !616
  br i1 %270, label %271, label %231, !dbg !616, !llvm.loop !624

271:                                              ; preds = %231, %222
  %272 = phi i64 [ 0, %222 ], [ %266, %231 ]
  %273 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %222 ], [ %267, %231 ]
  %274 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %222 ], [ %268, %231 ]
  %275 = icmp eq i64 %227, 0, !dbg !616
  br i1 %275, label %291, label %276, !dbg !616

276:                                              ; preds = %271
  %277 = add <4 x i32> %274, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !618
  %278 = add <4 x i32> %274, <i32 3, i32 3, i32 3, i32 3>, !dbg !618
  %279 = getelementptr inbounds i32, i32* %212, i64 %272, !dbg !619
  %280 = bitcast i32* %279 to <4 x i32>*, !dbg !620
  store <4 x i32> %277, <4 x i32>* %280, align 4, !dbg !620, !tbaa !238
  %281 = getelementptr inbounds i32, i32* %279, i64 4, !dbg !620
  %282 = bitcast i32* %281 to <4 x i32>*, !dbg !620
  store <4 x i32> %278, <4 x i32>* %282, align 4, !dbg !620, !tbaa !238
  %283 = trunc <4 x i64> %273 to <4 x i32>, !dbg !621
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>, !dbg !621
  %285 = trunc <4 x i64> %273 to <4 x i32>, !dbg !621
  %286 = add <4 x i32> %285, <i32 5, i32 5, i32 5, i32 5>, !dbg !621
  %287 = getelementptr inbounds i32, i32* %213, i64 %272, !dbg !622
  %288 = bitcast i32* %287 to <4 x i32>*, !dbg !623
  store <4 x i32> %284, <4 x i32>* %288, align 4, !dbg !623, !tbaa !238
  %289 = getelementptr inbounds i32, i32* %287, i64 4, !dbg !623
  %290 = bitcast i32* %289 to <4 x i32>*, !dbg !623
  store <4 x i32> %286, <4 x i32>* %290, align 4, !dbg !623, !tbaa !238
  br label %291, !dbg !615

291:                                              ; preds = %271, %276
  %292 = icmp eq i64 %218, %223, !dbg !615
  br i1 %292, label %293, label %220, !dbg !615

293:                                              ; preds = %372, %291, %180
  call void @llvm.dbg.value(metadata i64 0, metadata !435, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %81, metadata !397, metadata !DIExpression()), !dbg !460
  %294 = icmp sgt i64 %80, 0, !dbg !627
  br i1 %294, label %295, label %390, !dbg !630

295:                                              ; preds = %293
  %296 = shl i64 %79, 32, !dbg !630
  %297 = ashr exact i64 %296, 32, !dbg !630
  %298 = icmp ult i64 %297, 8, !dbg !630
  br i1 %298, label %299, label %301, !dbg !630

299:                                              ; preds = %370, %295
  %300 = phi i64 [ 0, %295 ], [ %302, %370 ]
  br label %381, !dbg !630

301:                                              ; preds = %295
  %302 = and i64 %297, -8, !dbg !630
  %303 = add nsw i64 %302, -8, !dbg !630
  %304 = lshr exact i64 %303, 3, !dbg !630
  %305 = add nuw nsw i64 %304, 1, !dbg !630
  %306 = and i64 %305, 1, !dbg !630
  %307 = icmp eq i64 %303, 0, !dbg !630
  br i1 %307, label %352, label %308, !dbg !630

308:                                              ; preds = %301
  %309 = sub nuw nsw i64 %305, %306, !dbg !630
  br label %310, !dbg !630

310:                                              ; preds = %310, %308
  %311 = phi i64 [ 0, %308 ], [ %345, %310 ], !dbg !631
  %312 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %308 ], [ %346, %310 ]
  %313 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %308 ], [ %347, %310 ], !dbg !633
  %314 = phi i64 [ %309, %308 ], [ %348, %310 ]
  %315 = add <4 x i32> %313, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !633
  %316 = add <4 x i32> %313, <i32 3, i32 3, i32 3, i32 3>, !dbg !633
  %317 = getelementptr inbounds i32, i32* %214, i64 %311, !dbg !634
  %318 = bitcast i32* %317 to <4 x i32>*, !dbg !635
  store <4 x i32> %315, <4 x i32>* %318, align 4, !dbg !635, !tbaa !238
  %319 = getelementptr inbounds i32, i32* %317, i64 4, !dbg !635
  %320 = bitcast i32* %319 to <4 x i32>*, !dbg !635
  store <4 x i32> %316, <4 x i32>* %320, align 4, !dbg !635, !tbaa !238
  %321 = trunc <4 x i64> %312 to <4 x i32>, !dbg !636
  %322 = add <4 x i32> %321, <i32 1, i32 1, i32 1, i32 1>, !dbg !636
  %323 = trunc <4 x i64> %312 to <4 x i32>, !dbg !636
  %324 = add <4 x i32> %323, <i32 5, i32 5, i32 5, i32 5>, !dbg !636
  %325 = getelementptr inbounds i32, i32* %215, i64 %311, !dbg !637
  %326 = bitcast i32* %325 to <4 x i32>*, !dbg !638
  store <4 x i32> %322, <4 x i32>* %326, align 4, !dbg !638, !tbaa !238
  %327 = getelementptr inbounds i32, i32* %325, i64 4, !dbg !638
  %328 = bitcast i32* %327 to <4 x i32>*, !dbg !638
  store <4 x i32> %324, <4 x i32>* %328, align 4, !dbg !638, !tbaa !238
  %329 = or i64 %311, 8, !dbg !631
  %330 = add <4 x i64> %312, <i64 8, i64 8, i64 8, i64 8>
  %331 = add <4 x i32> %313, <i32 7, i32 7, i32 7, i32 7>, !dbg !633
  %332 = add <4 x i32> %313, <i32 11, i32 11, i32 11, i32 11>, !dbg !633
  %333 = getelementptr inbounds i32, i32* %214, i64 %329, !dbg !634
  %334 = bitcast i32* %333 to <4 x i32>*, !dbg !635
  store <4 x i32> %331, <4 x i32>* %334, align 4, !dbg !635, !tbaa !238
  %335 = getelementptr inbounds i32, i32* %333, i64 4, !dbg !635
  %336 = bitcast i32* %335 to <4 x i32>*, !dbg !635
  store <4 x i32> %332, <4 x i32>* %336, align 4, !dbg !635, !tbaa !238
  %337 = trunc <4 x i64> %330 to <4 x i32>, !dbg !636
  %338 = add <4 x i32> %337, <i32 1, i32 1, i32 1, i32 1>, !dbg !636
  %339 = trunc <4 x i64> %330 to <4 x i32>, !dbg !636
  %340 = add <4 x i32> %339, <i32 5, i32 5, i32 5, i32 5>, !dbg !636
  %341 = getelementptr inbounds i32, i32* %215, i64 %329, !dbg !637
  %342 = bitcast i32* %341 to <4 x i32>*, !dbg !638
  store <4 x i32> %338, <4 x i32>* %342, align 4, !dbg !638, !tbaa !238
  %343 = getelementptr inbounds i32, i32* %341, i64 4, !dbg !638
  %344 = bitcast i32* %343 to <4 x i32>*, !dbg !638
  store <4 x i32> %340, <4 x i32>* %344, align 4, !dbg !638, !tbaa !238
  %345 = add i64 %311, 16, !dbg !631
  %346 = add <4 x i64> %312, <i64 16, i64 16, i64 16, i64 16>
  %347 = add <4 x i32> %313, <i32 16, i32 16, i32 16, i32 16>, !dbg !633
  %348 = add i64 %314, -2, !dbg !631
  %349 = icmp eq i64 %348, 0, !dbg !631
  br i1 %349, label %350, label %310, !dbg !631, !llvm.loop !639

350:                                              ; preds = %310
  %351 = trunc <4 x i64> %346 to <4 x i32>, !dbg !631
  br label %352, !dbg !631

352:                                              ; preds = %350, %301
  %353 = phi i64 [ 0, %301 ], [ %345, %350 ]
  %354 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %301 ], [ %351, %350 ]
  %355 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %301 ], [ %347, %350 ]
  %356 = icmp eq i64 %306, 0, !dbg !631
  br i1 %356, label %370, label %357, !dbg !631

357:                                              ; preds = %352
  %358 = add <4 x i32> %355, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !633
  %359 = add <4 x i32> %355, <i32 3, i32 3, i32 3, i32 3>, !dbg !633
  %360 = getelementptr inbounds i32, i32* %214, i64 %353, !dbg !634
  %361 = bitcast i32* %360 to <4 x i32>*, !dbg !635
  store <4 x i32> %358, <4 x i32>* %361, align 4, !dbg !635, !tbaa !238
  %362 = getelementptr inbounds i32, i32* %360, i64 4, !dbg !635
  %363 = bitcast i32* %362 to <4 x i32>*, !dbg !635
  store <4 x i32> %359, <4 x i32>* %363, align 4, !dbg !635, !tbaa !238
  %364 = add <4 x i32> %354, <i32 1, i32 1, i32 1, i32 1>, !dbg !636
  %365 = add <4 x i32> %354, <i32 5, i32 5, i32 5, i32 5>, !dbg !636
  %366 = getelementptr inbounds i32, i32* %215, i64 %353, !dbg !637
  %367 = bitcast i32* %366 to <4 x i32>*, !dbg !638
  store <4 x i32> %364, <4 x i32>* %367, align 4, !dbg !638, !tbaa !238
  %368 = getelementptr inbounds i32, i32* %366, i64 4, !dbg !638
  %369 = bitcast i32* %368 to <4 x i32>*, !dbg !638
  store <4 x i32> %365, <4 x i32>* %369, align 4, !dbg !638, !tbaa !238
  br label %370, !dbg !630

370:                                              ; preds = %352, %357
  %371 = icmp eq i64 %297, %302, !dbg !630
  br i1 %371, label %390, label %299, !dbg !630

372:                                              ; preds = %220, %372
  %373 = phi i64 [ %377, %372 ], [ %221, %220 ]
  call void @llvm.dbg.value(metadata i64 %373, metadata !434, metadata !DIExpression()), !dbg !460
  %374 = trunc i64 %373 to i32, !dbg !618
  %375 = add i32 %374, -1, !dbg !618
  call void @llvm.dbg.value(metadata i32* %212, metadata !409, metadata !DIExpression()), !dbg !460
  %376 = getelementptr inbounds i32, i32* %212, i64 %373, !dbg !619
  store i32 %375, i32* %376, align 4, !dbg !620, !tbaa !238
  %377 = add nuw nsw i64 %373, 1, !dbg !616
  %378 = trunc i64 %377 to i32, !dbg !621
  call void @llvm.dbg.value(metadata i32* %213, metadata !411, metadata !DIExpression()), !dbg !460
  %379 = getelementptr inbounds i32, i32* %213, i64 %373, !dbg !622
  store i32 %378, i32* %379, align 4, !dbg !623, !tbaa !238
  call void @llvm.dbg.value(metadata i64 %377, metadata !434, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %76, metadata !396, metadata !DIExpression()), !dbg !460
  %380 = icmp eq i64 %377, %76, !dbg !612
  br i1 %380, label %293, label %372, !dbg !615, !llvm.loop !641

381:                                              ; preds = %299, %381
  %382 = phi i64 [ %386, %381 ], [ %300, %299 ]
  call void @llvm.dbg.value(metadata i64 %382, metadata !435, metadata !DIExpression()), !dbg !460
  %383 = trunc i64 %382 to i32, !dbg !633
  %384 = add i32 %383, -1, !dbg !633
  call void @llvm.dbg.value(metadata i32* %214, metadata !413, metadata !DIExpression()), !dbg !460
  %385 = getelementptr inbounds i32, i32* %214, i64 %382, !dbg !634
  store i32 %384, i32* %385, align 4, !dbg !635, !tbaa !238
  %386 = add nuw nsw i64 %382, 1, !dbg !631
  %387 = trunc i64 %386 to i32, !dbg !636
  call void @llvm.dbg.value(metadata i32* %215, metadata !412, metadata !DIExpression()), !dbg !460
  %388 = getelementptr inbounds i32, i32* %215, i64 %382, !dbg !637
  store i32 %387, i32* %388, align 4, !dbg !638, !tbaa !238
  call void @llvm.dbg.value(metadata i64 %386, metadata !435, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %81, metadata !397, metadata !DIExpression()), !dbg !460
  %389 = icmp eq i64 %386, %81, !dbg !627
  br i1 %389, label %390, label %381, !dbg !630, !llvm.loop !643

390:                                              ; preds = %381, %370, %293
  call void @llvm.dbg.value(metadata i32* %212, metadata !409, metadata !DIExpression()), !dbg !460
  store i32 0, i32* %212, align 4, !dbg !644, !tbaa !238
  call void @llvm.dbg.value(metadata i64 %76, metadata !396, metadata !DIExpression()), !dbg !460
  %391 = add nsw i64 %76, -1, !dbg !645
  %392 = trunc i64 %391 to i32, !dbg !646
  call void @llvm.dbg.value(metadata i32* %213, metadata !411, metadata !DIExpression()), !dbg !460
  %393 = getelementptr inbounds i32, i32* %213, i64 %391, !dbg !647
  store i32 %392, i32* %393, align 4, !dbg !648, !tbaa !238
  call void @llvm.dbg.value(metadata i32* %214, metadata !413, metadata !DIExpression()), !dbg !460
  store i32 0, i32* %214, align 4, !dbg !649, !tbaa !238
  call void @llvm.dbg.value(metadata i64 %81, metadata !397, metadata !DIExpression()), !dbg !460
  %394 = add nsw i64 %81, -1, !dbg !650
  %395 = trunc i64 %394 to i32, !dbg !651
  call void @llvm.dbg.value(metadata i32* %215, metadata !412, metadata !DIExpression()), !dbg !460
  %396 = getelementptr inbounds i32, i32* %215, i64 %394, !dbg !652
  store i32 %395, i32* %396, align 4, !dbg !653, !tbaa !238
  %397 = bitcast %struct.timeval* %7 to i8*, !dbg !654
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %397) #10, !dbg !654
  %398 = call i32 @gettimeofday(%struct.timeval* nonnull %7, i8* null) #10, !dbg !655
  %399 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0, !dbg !656
  %400 = load i64, i64* %399, align 8, !dbg !656, !tbaa !365
  %401 = mul nsw i64 %400, 1000000, !dbg !657
  %402 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1, !dbg !658
  %403 = load i64, i64* %402, align 8, !dbg !658, !tbaa !370
  %404 = add nsw i64 %401, %403, !dbg !659
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %397) #10, !dbg !660
  call void @llvm.dbg.value(metadata i64 %404, metadata !385, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 0, metadata !434, metadata !DIExpression()), !dbg !460
  %405 = icmp sgt i64 %104, 0, !dbg !661
  br i1 %405, label %406, label %416, !dbg !664

406:                                              ; preds = %390, %406
  %407 = phi i64 [ %414, %406 ], [ 0, %390 ]
  call void @llvm.dbg.value(metadata i64 %407, metadata !434, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata float* %107, metadata !395, metadata !DIExpression()), !dbg !460
  %408 = getelementptr inbounds float, float* %107, i64 %407, !dbg !665
  %409 = load float, float* %408, align 4, !dbg !665, !tbaa !151
  %410 = fdiv float %409, 2.550000e+02, !dbg !667
  %411 = fpext float %410 to double, !dbg !665
  %412 = tail call double @exp(double %411) #10, !dbg !668
  %413 = fptrunc double %412 to float, !dbg !668
  call void @llvm.dbg.value(metadata float* %107, metadata !395, metadata !DIExpression()), !dbg !460
  store float %413, float* %408, align 4, !dbg !669, !tbaa !151
  %414 = add nuw nsw i64 %407, 1, !dbg !670
  call void @llvm.dbg.value(metadata i64 %414, metadata !434, metadata !DIExpression()), !dbg !460
  %415 = icmp eq i64 %414, %104, !dbg !661
  br i1 %415, label %416, label %406, !dbg !664, !llvm.loop !671

416:                                              ; preds = %406, %390
  %417 = bitcast %struct.timeval* %6 to i8*, !dbg !673
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %417) #10, !dbg !673
  %418 = call i32 @gettimeofday(%struct.timeval* nonnull %6, i8* null) #10, !dbg !674
  %419 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0, !dbg !675
  %420 = load i64, i64* %419, align 8, !dbg !675, !tbaa !365
  %421 = mul nsw i64 %420, 1000000, !dbg !676
  %422 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1, !dbg !677
  %423 = load i64, i64* %422, align 8, !dbg !677, !tbaa !370
  %424 = add nsw i64 %421, %423, !dbg !678
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %417) #10, !dbg !679
  call void @llvm.dbg.value(metadata i64 %424, metadata !386, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 0, metadata !433, metadata !DIExpression()), !dbg !460
  %425 = icmp sgt i32 %67, 0, !dbg !680
  br i1 %425, label %426, label %472, !dbg !683

426:                                              ; preds = %416
  %427 = add i64 %75, -4294967296, !dbg !684
  %428 = ashr exact i64 %427, 32, !dbg !684
  %429 = icmp slt i64 %427, 0, !dbg !684
  %430 = add i64 %80, -4294967296, !dbg !688
  %431 = ashr exact i64 %430, 32, !dbg !688
  %432 = icmp slt i64 %430, 0, !dbg !688
  %433 = sitofp i64 %190 to float, !dbg !692
  %434 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %28, i64 0, i32 4, !dbg !692
  br label %435, !dbg !683

435:                                              ; preds = %462, %426
  %436 = phi i32 [ 0, %426 ], [ %470, %462 ]
  call void @llvm.dbg.value(metadata i32 %436, metadata !433, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !420, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 0, metadata !434, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !421, metadata !DIExpression()), !dbg !460
  br i1 %429, label %462, label %437, !dbg !693

437:                                              ; preds = %435
  %438 = load float*, float** %14, align 8, !dbg !694
  %439 = load i64, i64* %15, align 8, !dbg !694
  br label %440, !dbg !693

440:                                              ; preds = %457, %437
  %441 = phi float [ 0.000000e+00, %437 ], [ %459, %457 ]
  %442 = phi i64 [ 0, %437 ], [ %460, %457 ]
  %443 = phi float [ 0.000000e+00, %437 ], [ %458, %457 ]
  call void @llvm.dbg.value(metadata float %441, metadata !420, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %442, metadata !434, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata float %443, metadata !421, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata float %441, metadata !420, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 0, metadata !435, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata float %443, metadata !421, metadata !DIExpression()), !dbg !460
  br i1 %432, label %457, label %444, !dbg !696

444:                                              ; preds = %440, %444
  %445 = phi float [ %452, %444 ], [ %441, %440 ]
  %446 = phi i64 [ %455, %444 ], [ 0, %440 ]
  %447 = phi float [ %454, %444 ], [ %443, %440 ]
  call void @llvm.dbg.value(metadata float %445, metadata !420, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %446, metadata !435, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata float %447, metadata !421, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata float* %438, metadata !395, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 %439, metadata !396, metadata !DIExpression()), !dbg !460
  %448 = mul nsw i64 %439, %446, !dbg !697
  %449 = add nsw i64 %448, %442, !dbg !698
  %450 = getelementptr inbounds float, float* %438, i64 %449, !dbg !699
  %451 = load float, float* %450, align 4, !dbg !699, !tbaa !151
  call void @llvm.dbg.value(metadata float %451, metadata !419, metadata !DIExpression()), !dbg !460
  %452 = fadd float %445, %451, !dbg !700
  call void @llvm.dbg.value(metadata float %452, metadata !420, metadata !DIExpression()), !dbg !460
  %453 = fmul float %451, %451, !dbg !701
  %454 = fadd float %447, %453, !dbg !702
  call void @llvm.dbg.value(metadata float %454, metadata !421, metadata !DIExpression()), !dbg !460
  %455 = add nuw nsw i64 %446, 1, !dbg !703
  call void @llvm.dbg.value(metadata i64 %455, metadata !435, metadata !DIExpression()), !dbg !460
  %456 = icmp slt i64 %446, %431, !dbg !704
  br i1 %456, label %444, label %457, !dbg !696, !llvm.loop !705

457:                                              ; preds = %444, %440
  %458 = phi float [ %443, %440 ], [ %454, %444 ], !dbg !692
  %459 = phi float [ %441, %440 ], [ %452, %444 ], !dbg !692
  call void @llvm.dbg.value(metadata float %458, metadata !421, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata float %459, metadata !420, metadata !DIExpression()), !dbg !460
  %460 = add nuw nsw i64 %442, 1, !dbg !707
  call void @llvm.dbg.value(metadata i64 %460, metadata !434, metadata !DIExpression()), !dbg !460
  %461 = icmp slt i64 %442, %428, !dbg !708
  br i1 %461, label %440, label %462, !dbg !693, !llvm.loop !709

462:                                              ; preds = %457, %435
  %463 = phi float [ 0.000000e+00, %435 ], [ %458, %457 ], !dbg !711
  %464 = phi float [ 0.000000e+00, %435 ], [ %459, %457 ], !dbg !712
  call void @llvm.dbg.value(metadata float %463, metadata !421, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata float %464, metadata !420, metadata !DIExpression()), !dbg !460
  %465 = fdiv float %464, %433, !dbg !713
  call void @llvm.dbg.value(metadata float %465, metadata !406, metadata !DIExpression()), !dbg !460
  %466 = fdiv float %463, %433, !dbg !714
  %467 = fmul float %465, %465, !dbg !715
  %468 = fsub float %466, %467, !dbg !716
  call void @llvm.dbg.value(metadata float %468, metadata !407, metadata !DIExpression()), !dbg !460
  %469 = fdiv float %468, %467, !dbg !717
  call void @llvm.dbg.value(metadata float %469, metadata !408, metadata !DIExpression()), !dbg !460
  store float %469, float* %18, align 4, !dbg !718, !tbaa !151
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @1, i64 0, i64 0), i8** %434, align 8, !dbg !719, !tbaa !720
  call void @llvm.dbg.value(metadata float** %14, metadata !395, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata i64* %15, metadata !396, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata i64* %16, metadata !397, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata float* %18, metadata !408, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata i32** %19, metadata !409, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata i32** %20, metadata !411, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata i32** %21, metadata !412, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata i32** %22, metadata !413, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata float** %23, metadata !415, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata float** %24, metadata !416, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata float** %25, metadata !417, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata float** %26, metadata !418, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void @llvm.dbg.value(metadata float** %27, metadata !428, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %28, i32 13, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64*, i64*, float**, float**, i32**, float**, i32**, float**, i32**, float**, i32**, float*, float**)* @.omp_outlined. to void (i32*, i32*, ...)*), i64* nonnull %16, i64* nonnull %15, float** nonnull %14, float** nonnull %23, i32** nonnull %19, float** nonnull %24, i32** nonnull %20, float** nonnull %25, i32** nonnull %22, float** nonnull %26, i32** nonnull %21, float* nonnull %18, float** nonnull %27) #10, !dbg !719
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i64 0, i64 0), i8** %434, align 8, !dbg !722, !tbaa !720
  call void @llvm.dbg.value(metadata float* %17, metadata !400, metadata !DIExpression(DW_OP_deref)), !dbg !460
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %28, i32 11, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64*, i64*, float**, i32**, i32**, float**, float**, float**, float**, float**, float*)* @.omp_outlined..14 to void (i32*, i32*, ...)*), i64* nonnull %16, i64* nonnull %15, float** nonnull %27, i32** nonnull %20, i32** nonnull %21, float** nonnull %23, float** nonnull %24, float** nonnull %25, float** nonnull %26, float** nonnull %14, float* nonnull %17) #10, !dbg !722
  %470 = add nuw nsw i32 %436, 1, !dbg !723
  call void @llvm.dbg.value(metadata i32 %470, metadata !433, metadata !DIExpression()), !dbg !460
  %471 = icmp eq i32 %470, %67, !dbg !680
  br i1 %471, label %472, label %435, !dbg !683, !llvm.loop !724

472:                                              ; preds = %462, %416
  %473 = bitcast %struct.timeval* %5 to i8*, !dbg !726
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %473) #10, !dbg !726
  %474 = call i32 @gettimeofday(%struct.timeval* nonnull %5, i8* null) #10, !dbg !727
  %475 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0, !dbg !728
  %476 = load i64, i64* %475, align 8, !dbg !728, !tbaa !365
  %477 = mul nsw i64 %476, 1000000, !dbg !729
  %478 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1, !dbg !730
  %479 = load i64, i64* %478, align 8, !dbg !730, !tbaa !370
  %480 = add nsw i64 %477, %479, !dbg !731
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %473) #10, !dbg !732
  call void @llvm.dbg.value(metadata i64 %480, metadata !387, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 0, metadata !434, metadata !DIExpression()), !dbg !460
  br i1 %405, label %481, label %494, !dbg !733

481:                                              ; preds = %472, %481
  %482 = phi i64 [ %492, %481 ], [ 0, %472 ]
  call void @llvm.dbg.value(metadata i64 %482, metadata !434, metadata !DIExpression()), !dbg !460
  %483 = load float*, float** %14, align 8, !dbg !735, !tbaa !490
  call void @llvm.dbg.value(metadata float* %483, metadata !395, metadata !DIExpression()), !dbg !460
  %484 = getelementptr inbounds float, float* %483, i64 %482, !dbg !735
  %485 = load float, float* %484, align 4, !dbg !735, !tbaa !151
  %486 = fpext float %485 to double, !dbg !735
  %487 = call double @log(double %486) #10, !dbg !738
  %488 = fmul double %487, 2.550000e+02, !dbg !739
  %489 = fptrunc double %488 to float, !dbg !738
  %490 = load float*, float** %14, align 8, !dbg !740, !tbaa !490
  call void @llvm.dbg.value(metadata float* %490, metadata !395, metadata !DIExpression()), !dbg !460
  %491 = getelementptr inbounds float, float* %490, i64 %482, !dbg !740
  store float %489, float* %491, align 4, !dbg !741, !tbaa !151
  %492 = add nuw nsw i64 %482, 1, !dbg !742
  call void @llvm.dbg.value(metadata i64 %492, metadata !434, metadata !DIExpression()), !dbg !460
  %493 = icmp eq i64 %492, %104, !dbg !743
  br i1 %493, label %494, label %481, !dbg !733, !llvm.loop !744

494:                                              ; preds = %481, %472
  %495 = bitcast %struct.timeval* %4 to i8*, !dbg !746
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %495) #10, !dbg !746
  %496 = call i32 @gettimeofday(%struct.timeval* nonnull %4, i8* null) #10, !dbg !747
  %497 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0, !dbg !748
  %498 = load i64, i64* %497, align 8, !dbg !748, !tbaa !365
  %499 = mul nsw i64 %498, 1000000, !dbg !749
  %500 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1, !dbg !750
  %501 = load i64, i64* %500, align 8, !dbg !750, !tbaa !370
  %502 = add nsw i64 %499, %501, !dbg !751
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %495) #10, !dbg !752
  call void @llvm.dbg.value(metadata i64 %502, metadata !388, metadata !DIExpression()), !dbg !460
  %503 = load float*, float** %14, align 8, !dbg !753, !tbaa !490
  call void @llvm.dbg.value(metadata float* %503, metadata !395, metadata !DIExpression()), !dbg !460
  %504 = load i64, i64* %15, align 8, !dbg !754, !tbaa !522
  call void @llvm.dbg.value(metadata i64 %504, metadata !396, metadata !DIExpression()), !dbg !460
  %505 = trunc i64 %504 to i32, !dbg !754
  %506 = load i64, i64* %16, align 8, !dbg !755, !tbaa !522
  call void @llvm.dbg.value(metadata i64 %506, metadata !397, metadata !DIExpression()), !dbg !460
  %507 = trunc i64 %506 to i32, !dbg !755
  call void @write_graphics(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), float* %503, i32 %505, i32 %507, i32 1, i32 255), !dbg !756
  %508 = bitcast %struct.timeval* %3 to i8*, !dbg !757
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %508) #10, !dbg !757
  %509 = call i32 @gettimeofday(%struct.timeval* nonnull %3, i8* null) #10, !dbg !758
  %510 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0, !dbg !759
  %511 = load i64, i64* %510, align 8, !dbg !759, !tbaa !365
  %512 = mul nsw i64 %511, 1000000, !dbg !760
  %513 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1, !dbg !761
  %514 = load i64, i64* %513, align 8, !dbg !761, !tbaa !370
  %515 = add nsw i64 %512, %514, !dbg !762
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %508) #10, !dbg !763
  call void @llvm.dbg.value(metadata i64 %515, metadata !389, metadata !DIExpression()), !dbg !460
  call void @free(i8* %94) #10, !dbg !764
  %516 = load i8*, i8** %108, align 8, !dbg !765, !tbaa !490
  call void @llvm.dbg.value(metadata float* undef, metadata !395, metadata !DIExpression()), !dbg !460
  call void @free(i8* %516) #10, !dbg !766
  %517 = load i8*, i8** %193, align 8, !dbg !767, !tbaa !490
  call void @llvm.dbg.value(metadata i32* undef, metadata !409, metadata !DIExpression()), !dbg !460
  call void @free(i8* %517) #10, !dbg !768
  %518 = load i8*, i8** %195, align 8, !dbg !769, !tbaa !490
  call void @llvm.dbg.value(metadata i32* undef, metadata !411, metadata !DIExpression()), !dbg !460
  call void @free(i8* %518) #10, !dbg !770
  %519 = load i8*, i8** %198, align 8, !dbg !771, !tbaa !490
  call void @llvm.dbg.value(metadata i32* undef, metadata !413, metadata !DIExpression()), !dbg !460
  call void @free(i8* %519) #10, !dbg !772
  %520 = load i8*, i8** %200, align 8, !dbg !773, !tbaa !490
  call void @llvm.dbg.value(metadata i32* undef, metadata !412, metadata !DIExpression()), !dbg !460
  call void @free(i8* %520) #10, !dbg !774
  %521 = load i8*, i8** %202, align 8, !dbg !775, !tbaa !490
  call void @llvm.dbg.value(metadata float* undef, metadata !415, metadata !DIExpression()), !dbg !460
  call void @free(i8* %521) #10, !dbg !776
  %522 = load i8*, i8** %204, align 8, !dbg !777, !tbaa !490
  call void @llvm.dbg.value(metadata float* undef, metadata !416, metadata !DIExpression()), !dbg !460
  call void @free(i8* %522) #10, !dbg !778
  %523 = load i8*, i8** %206, align 8, !dbg !779, !tbaa !490
  call void @llvm.dbg.value(metadata float* undef, metadata !417, metadata !DIExpression()), !dbg !460
  call void @free(i8* %523) #10, !dbg !780
  %524 = load i8*, i8** %208, align 8, !dbg !781, !tbaa !490
  call void @llvm.dbg.value(metadata float* undef, metadata !418, metadata !DIExpression()), !dbg !460
  call void @free(i8* %524) #10, !dbg !782
  %525 = load i8*, i8** %210, align 8, !dbg !783, !tbaa !490
  call void @llvm.dbg.value(metadata float* undef, metadata !428, metadata !DIExpression()), !dbg !460
  call void @free(i8* %525) #10, !dbg !784
  %526 = bitcast %struct.timeval* %9 to i8*, !dbg !785
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %526) #10, !dbg !785
  %527 = call i32 @gettimeofday(%struct.timeval* nonnull %9, i8* null) #10, !dbg !786
  %528 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 0, !dbg !787
  %529 = load i64, i64* %528, align 8, !dbg !787, !tbaa !365
  %530 = mul nsw i64 %529, 1000000, !dbg !788
  %531 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 1, !dbg !789
  %532 = load i64, i64* %531, align 8, !dbg !789, !tbaa !370
  %533 = add nsw i64 %530, %532, !dbg !790
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %526) #10, !dbg !791
  call void @llvm.dbg.value(metadata i64 %533, metadata !390, metadata !DIExpression()), !dbg !460
  %534 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str.30, i64 0, i64 0)), !dbg !792
  %535 = sub nsw i64 %59, %37, !dbg !793
  %536 = sitofp i64 %535 to float, !dbg !794
  %537 = fdiv float %536, 1.000000e+06, !dbg !795
  %538 = fpext float %537 to double, !dbg !794
  %539 = sub nsw i64 %533, %37, !dbg !796
  %540 = sitofp i64 %539 to float, !dbg !797
  %541 = fdiv float %536, %540, !dbg !798
  %542 = fmul float %541, 1.000000e+02, !dbg !799
  %543 = fpext float %542 to double, !dbg !800
  %544 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), double %538, double %543), !dbg !801
  %545 = sub nsw i64 %93, %59, !dbg !802
  %546 = sitofp i64 %545 to float, !dbg !803
  %547 = fdiv float %546, 1.000000e+06, !dbg !804
  %548 = fpext float %547 to double, !dbg !803
  %549 = fdiv float %546, %540, !dbg !805
  %550 = fmul float %549, 1.000000e+02, !dbg !806
  %551 = fpext float %550 to double, !dbg !807
  %552 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0), double %548, double %551), !dbg !808
  %553 = sub nsw i64 %103, %93, !dbg !809
  %554 = sitofp i64 %553 to float, !dbg !810
  %555 = fdiv float %554, 1.000000e+06, !dbg !811
  %556 = fpext float %555 to double, !dbg !810
  %557 = fdiv float %554, %540, !dbg !812
  %558 = fmul float %557, 1.000000e+02, !dbg !813
  %559 = fpext float %558 to double, !dbg !814
  %560 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), double %556, double %559), !dbg !815
  %561 = sub nsw i64 %188, %103, !dbg !816
  %562 = sitofp i64 %561 to float, !dbg !817
  %563 = fdiv float %562, 1.000000e+06, !dbg !818
  %564 = fpext float %563 to double, !dbg !817
  %565 = fdiv float %562, %540, !dbg !819
  %566 = fmul float %565, 1.000000e+02, !dbg !820
  %567 = fpext float %566 to double, !dbg !821
  %568 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), double %564, double %567), !dbg !822
  %569 = sub nsw i64 %404, %188, !dbg !823
  %570 = sitofp i64 %569 to float, !dbg !824
  %571 = fdiv float %570, 1.000000e+06, !dbg !825
  %572 = fpext float %571 to double, !dbg !824
  %573 = fdiv float %570, %540, !dbg !826
  %574 = fmul float %573, 1.000000e+02, !dbg !827
  %575 = fpext float %574 to double, !dbg !828
  %576 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), double %572, double %575), !dbg !829
  %577 = sub nsw i64 %424, %404, !dbg !830
  %578 = sitofp i64 %577 to float, !dbg !831
  %579 = fdiv float %578, 1.000000e+06, !dbg !832
  %580 = fpext float %579 to double, !dbg !831
  %581 = fdiv float %578, %540, !dbg !833
  %582 = fmul float %581, 1.000000e+02, !dbg !834
  %583 = fpext float %582 to double, !dbg !835
  %584 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), double %580, double %583), !dbg !836
  %585 = sub nsw i64 %480, %424, !dbg !837
  %586 = sitofp i64 %585 to float, !dbg !838
  %587 = fdiv float %586, 1.000000e+06, !dbg !839
  %588 = fpext float %587 to double, !dbg !838
  %589 = fdiv float %586, %540, !dbg !840
  %590 = fmul float %589, 1.000000e+02, !dbg !841
  %591 = fpext float %590 to double, !dbg !842
  %592 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), double %588, double %591), !dbg !843
  %593 = sub nsw i64 %502, %480, !dbg !844
  %594 = sitofp i64 %593 to float, !dbg !845
  %595 = fdiv float %594, 1.000000e+06, !dbg !846
  %596 = fpext float %595 to double, !dbg !845
  %597 = fdiv float %594, %540, !dbg !847
  %598 = fmul float %597, 1.000000e+02, !dbg !848
  %599 = fpext float %598 to double, !dbg !849
  %600 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), double %596, double %599), !dbg !850
  %601 = sub nsw i64 %515, %502, !dbg !851
  %602 = sitofp i64 %601 to float, !dbg !852
  %603 = fdiv float %602, 1.000000e+06, !dbg !853
  %604 = fpext float %603 to double, !dbg !852
  %605 = fdiv float %602, %540, !dbg !854
  %606 = fmul float %605, 1.000000e+02, !dbg !855
  %607 = fpext float %606 to double, !dbg !856
  %608 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0), double %604, double %607), !dbg !857
  %609 = sub nsw i64 %533, %515, !dbg !858
  %610 = sitofp i64 %609 to float, !dbg !859
  %611 = fdiv float %610, 1.000000e+06, !dbg !860
  %612 = fpext float %611 to double, !dbg !859
  %613 = fdiv float %610, %540, !dbg !861
  %614 = fmul float %613, 1.000000e+02, !dbg !862
  %615 = fpext float %614 to double, !dbg !863
  %616 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0), double %612, double %615), !dbg !864
  %617 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.31, i64 0, i64 0)), !dbg !865
  %618 = fdiv float %540, 1.000000e+06, !dbg !866
  %619 = fpext float %618 to double, !dbg !867
  %620 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), double %619), !dbg !868
  br label %621, !dbg !869

621:                                              ; preds = %494, %61
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %41) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #10, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38) #10, !dbg !869
  ret i32 0, !dbg !869
}

declare !dbg !82 dso_local void @omp_set_num_threads(i32) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local double @exp(double) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_8(%struct.ident_t*, i32, i32, i32*, i64*, i64*, i64*, i64, i64) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i64* nocapture readonly dereferenceable(8) %2, i64* nocapture readonly dereferenceable(8) %3, float** nocapture readonly dereferenceable(8) %4, float** nocapture readonly dereferenceable(8) %5, i32** nocapture readonly dereferenceable(8) %6, float** nocapture readonly dereferenceable(8) %7, i32** nocapture readonly dereferenceable(8) %8, float** nocapture readonly dereferenceable(8) %9, i32** nocapture readonly dereferenceable(8) %10, float** nocapture readonly dereferenceable(8) %11, i32** nocapture readonly dereferenceable(8) %12, float* nocapture readonly dereferenceable(4) %13, float** nocapture readonly dereferenceable(8) %14) #7 !dbg !870 {
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !882, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i32* %1, metadata !883, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i64* %2, metadata !884, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i64* %3, metadata !885, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata float** %4, metadata !886, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata float** %5, metadata !887, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i32** %6, metadata !888, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata float** %7, metadata !889, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i32** %8, metadata !890, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata float** %9, metadata !891, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i32** %10, metadata !892, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata float** %11, metadata !893, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i32** %12, metadata !894, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata float* %13, metadata !895, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata float** %14, metadata !896, metadata !DIExpression()), !dbg !897
  %21 = bitcast %struct.ident_t* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %21)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %21, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #10, !noalias !898
  call void @llvm.dbg.value(metadata i32* %0, metadata !901, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32* undef, metadata !904, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i64* %2, metadata !905, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i64* %3, metadata !906, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata float** %4, metadata !907, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata float** %5, metadata !908, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32** %6, metadata !909, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata float** %7, metadata !910, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32** %8, metadata !911, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata float** %9, metadata !912, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32** %10, metadata !913, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata float** %11, metadata !914, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32** %12, metadata !915, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata float* %13, metadata !916, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata float** %14, metadata !917, metadata !DIExpression()) #10, !dbg !933
  %22 = load i64, i64* %2, align 8, !dbg !935, !tbaa !522, !noalias !898
  call void @llvm.dbg.value(metadata i64 %22, metadata !919, metadata !DIExpression()) #10, !dbg !933
  %23 = add nsw i64 %22, -1, !dbg !936
  call void @llvm.dbg.value(metadata i64 %23, metadata !919, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i64 0, metadata !920, metadata !DIExpression()) #10, !dbg !933
  %24 = icmp sgt i64 %22, 0, !dbg !936
  br i1 %24, label %25, label %144, !dbg !936

25:                                               ; preds = %15
  %26 = bitcast i64* %16 to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #10, !dbg !936, !noalias !898
  call void @llvm.dbg.value(metadata i64 0, metadata !921, metadata !DIExpression()) #10, !dbg !933
  store i64 0, i64* %16, align 8, !dbg !937, !tbaa !522, !noalias !898
  %27 = bitcast i64* %17 to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #10, !dbg !936, !noalias !898
  call void @llvm.dbg.value(metadata i64 %23, metadata !922, metadata !DIExpression()) #10, !dbg !933
  store i64 %23, i64* %17, align 8, !dbg !937, !tbaa !522, !noalias !898
  %28 = bitcast i64* %18 to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #10, !dbg !936, !noalias !898
  call void @llvm.dbg.value(metadata i64 1, metadata !923, metadata !DIExpression()) #10, !dbg !933
  store i64 1, i64* %18, align 8, !dbg !937, !tbaa !522, !noalias !898
  %29 = bitcast i32* %19 to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #10, !dbg !936, !noalias !898
  call void @llvm.dbg.value(metadata i32 0, metadata !924, metadata !DIExpression()) #10, !dbg !933
  store i32 0, i32* %19, align 4, !dbg !937, !tbaa !238, !noalias !898
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %20, i64 0, i32 4, !dbg !936
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @1, i64 0, i64 0), i8** %30, align 8, !dbg !936, !tbaa !720, !noalias !898
  %31 = load i32, i32* %0, align 4, !dbg !936, !tbaa !238, !alias.scope !898
  call void @llvm.dbg.value(metadata i64* %16, metadata !921, metadata !DIExpression(DW_OP_deref)) #10, !dbg !933
  call void @llvm.dbg.value(metadata i64* %17, metadata !922, metadata !DIExpression(DW_OP_deref)) #10, !dbg !933
  call void @llvm.dbg.value(metadata i64* %18, metadata !923, metadata !DIExpression(DW_OP_deref)) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32* %19, metadata !924, metadata !DIExpression(DW_OP_deref)) #10, !dbg !933
  call void @__kmpc_for_static_init_8(%struct.ident_t* nonnull %20, i32 %31, i32 34, i32* nonnull %19, i64* nonnull %16, i64* nonnull %17, i64* nonnull %18, i64 1, i64 1) #10, !dbg !936, !noalias !898
  %32 = load i64, i64* %17, align 8, !dbg !937, !tbaa !522, !noalias !898
  call void @llvm.dbg.value(metadata i64 %32, metadata !922, metadata !DIExpression()) #10, !dbg !933
  %33 = icmp slt i64 %32, %22, !dbg !937
  %34 = select i1 %33, i64 %32, i64 %23, !dbg !937
  call void @llvm.dbg.value(metadata i64 %34, metadata !922, metadata !DIExpression()) #10, !dbg !933
  store i64 %34, i64* %17, align 8, !dbg !937, !tbaa !522, !noalias !898
  %35 = load i64, i64* %16, align 8, !dbg !937, !tbaa !522, !noalias !898
  call void @llvm.dbg.value(metadata i64 %35, metadata !921, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i64 %35, metadata !918, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i64 %34, metadata !922, metadata !DIExpression()) #10, !dbg !933
  %36 = icmp sgt i64 %35, %34, !dbg !936
  br i1 %36, label %143, label %37, !dbg !936

37:                                               ; preds = %25
  %38 = load i64, i64* %3, align 8, !dbg !938, !noalias !898
  %39 = icmp sgt i64 %38, 0, !dbg !938
  %40 = load float*, float** %4, align 8, !dbg !942, !noalias !898
  %41 = load i32*, i32** %6, align 8, !dbg !942, !noalias !898
  %42 = load float*, float** %5, align 8, !dbg !942, !noalias !898
  %43 = load i32*, i32** %8, align 8, !dbg !942, !noalias !898
  %44 = load float*, float** %7, align 8, !dbg !942, !noalias !898
  %45 = load i32*, i32** %10, align 8, !dbg !942, !noalias !898
  %46 = load float*, float** %9, align 8, !dbg !942, !noalias !898
  %47 = load i32*, i32** %12, align 8, !dbg !942, !noalias !898
  %48 = load float*, float** %11, align 8, !dbg !942, !noalias !898
  %49 = load float*, float** %14, align 8, !dbg !942, !noalias !898
  br label %50, !dbg !936

50:                                               ; preds = %140, %37
  %51 = phi i64 [ %35, %37 ], [ %141, %140 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !918, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i64 0, metadata !925, metadata !DIExpression()) #10, !dbg !933
  br i1 %39, label %52, label %140, !dbg !944

52:                                               ; preds = %50
  %53 = getelementptr inbounds i32, i32* %45, i64 %51, !dbg !942
  %54 = load i32, i32* %53, align 4, !dbg !942, !tbaa !238, !noalias !898
  %55 = sext i32 %54 to i64, !dbg !942
  %56 = getelementptr inbounds i32, i32* %47, i64 %51, !dbg !942
  %57 = load i32, i32* %56, align 4, !dbg !942, !tbaa !238, !noalias !898
  %58 = sext i32 %57 to i64, !dbg !942
  %59 = mul nsw i64 %51, %38, !dbg !942
  %60 = mul nsw i64 %38, %55, !dbg !942
  %61 = mul nsw i64 %38, %58, !dbg !942
  br label %62, !dbg !944

62:                                               ; preds = %137, %52
  %63 = phi i64 [ 0, %52 ], [ %138, %137 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !925, metadata !DIExpression()) #10, !dbg !933
  %64 = add nsw i64 %63, %59, !dbg !945
  call void @llvm.dbg.value(metadata i64 %64, metadata !926, metadata !DIExpression()) #10, !dbg !933
  %65 = getelementptr inbounds float, float* %40, i64 %64, !dbg !946
  %66 = load float, float* %65, align 4, !dbg !946, !tbaa !151, !noalias !898
  call void @llvm.dbg.value(metadata float %66, metadata !927, metadata !DIExpression()) #10, !dbg !933
  %67 = getelementptr inbounds i32, i32* %41, i64 %63, !dbg !947
  %68 = load i32, i32* %67, align 4, !dbg !947, !tbaa !238, !noalias !898
  %69 = sext i32 %68 to i64, !dbg !947
  %70 = add nsw i64 %59, %69, !dbg !948
  %71 = getelementptr inbounds float, float* %40, i64 %70, !dbg !949
  %72 = load float, float* %71, align 4, !dbg !949, !tbaa !151, !noalias !898
  %73 = fsub float %72, %66, !dbg !950
  %74 = getelementptr inbounds float, float* %42, i64 %64, !dbg !951
  store float %73, float* %74, align 4, !dbg !952, !tbaa !151, !noalias !898
  %75 = getelementptr inbounds i32, i32* %43, i64 %63, !dbg !953
  %76 = load i32, i32* %75, align 4, !dbg !953, !tbaa !238, !noalias !898
  %77 = sext i32 %76 to i64, !dbg !953
  %78 = add nsw i64 %59, %77, !dbg !954
  %79 = getelementptr inbounds float, float* %40, i64 %78, !dbg !955
  %80 = load float, float* %79, align 4, !dbg !955, !tbaa !151, !noalias !898
  %81 = fsub float %80, %66, !dbg !956
  %82 = getelementptr inbounds float, float* %44, i64 %64, !dbg !957
  store float %81, float* %82, align 4, !dbg !958, !tbaa !151, !noalias !898
  %83 = add nsw i64 %63, %60, !dbg !959
  %84 = getelementptr inbounds float, float* %40, i64 %83, !dbg !960
  %85 = load float, float* %84, align 4, !dbg !960, !tbaa !151, !noalias !898
  %86 = fsub float %85, %66, !dbg !961
  %87 = getelementptr inbounds float, float* %46, i64 %64, !dbg !962
  store float %86, float* %87, align 4, !dbg !963, !tbaa !151, !noalias !898
  %88 = add nsw i64 %63, %61, !dbg !964
  %89 = getelementptr inbounds float, float* %40, i64 %88, !dbg !965
  %90 = load float, float* %89, align 4, !dbg !965, !tbaa !151, !noalias !898
  %91 = fsub float %90, %66, !dbg !966
  %92 = getelementptr inbounds float, float* %48, i64 %64, !dbg !967
  store float %91, float* %92, align 4, !dbg !968, !tbaa !151, !noalias !898
  %93 = load float, float* %74, align 4, !dbg !969, !tbaa !151, !noalias !898
  %94 = fmul float %93, %93, !dbg !970
  %95 = load float, float* %82, align 4, !dbg !971, !tbaa !151, !noalias !898
  %96 = fmul float %95, %95, !dbg !972
  %97 = fadd float %94, %96, !dbg !973
  %98 = load float, float* %87, align 4, !dbg !974, !tbaa !151, !noalias !898
  %99 = fmul float %98, %98, !dbg !975
  %100 = fadd float %97, %99, !dbg !976
  %101 = fmul float %91, %91, !dbg !977
  %102 = fadd float %101, %100, !dbg !978
  %103 = fmul float %66, %66, !dbg !979
  %104 = fdiv float %102, %103, !dbg !980
  call void @llvm.dbg.value(metadata float %104, metadata !928, metadata !DIExpression()) #10, !dbg !933
  %105 = fadd float %93, %95, !dbg !981
  %106 = fadd float %105, %98, !dbg !982
  %107 = fadd float %91, %106, !dbg !983
  %108 = fdiv float %107, %66, !dbg !984
  call void @llvm.dbg.value(metadata float %108, metadata !929, metadata !DIExpression()) #10, !dbg !933
  %109 = fpext float %104 to double, !dbg !985
  %110 = fmul double %109, 5.000000e-01, !dbg !986
  %111 = fmul float %108, %108, !dbg !987
  %112 = fpext float %111 to double, !dbg !988
  %113 = fmul double %112, 6.250000e-02, !dbg !989
  %114 = fsub double %110, %113, !dbg !990
  %115 = fptrunc double %114 to float, !dbg !991
  call void @llvm.dbg.value(metadata float %115, metadata !930, metadata !DIExpression()) #10, !dbg !933
  %116 = fpext float %108 to double, !dbg !992
  %117 = fmul double %116, 2.500000e-01, !dbg !993
  %118 = fadd double %117, 1.000000e+00, !dbg !994
  %119 = fptrunc double %118 to float, !dbg !995
  call void @llvm.dbg.value(metadata float %119, metadata !931, metadata !DIExpression()) #10, !dbg !933
  %120 = fmul float %119, %119, !dbg !996
  %121 = fdiv float %115, %120, !dbg !997
  call void @llvm.dbg.value(metadata float %121, metadata !932, metadata !DIExpression()) #10, !dbg !933
  %122 = load float, float* %13, align 4, !dbg !998, !tbaa !151, !noalias !898
  %123 = fsub float %121, %122, !dbg !999
  %124 = fadd float %122, 1.000000e+00, !dbg !1000
  %125 = fmul float %122, %124, !dbg !1001
  %126 = fdiv float %123, %125, !dbg !1002
  call void @llvm.dbg.value(metadata float %126, metadata !931, metadata !DIExpression()) #10, !dbg !933
  %127 = fpext float %126 to double, !dbg !1003
  %128 = fadd double %127, 1.000000e+00, !dbg !1004
  %129 = fdiv double 1.000000e+00, %128, !dbg !1005
  %130 = fptrunc double %129 to float, !dbg !1006
  %131 = getelementptr inbounds float, float* %49, i64 %64, !dbg !1007
  store float %130, float* %131, align 4, !dbg !1008, !tbaa !151, !noalias !898
  %132 = fcmp olt float %130, 0.000000e+00, !dbg !1009
  br i1 %132, label %135, label %133, !dbg !1011

133:                                              ; preds = %62
  %134 = fcmp ogt float %130, 1.000000e+00, !dbg !1012
  br i1 %134, label %135, label %137, !dbg !1014

135:                                              ; preds = %133, %62
  %136 = phi float [ 0.000000e+00, %62 ], [ 1.000000e+00, %133 ]
  store float %136, float* %131, align 4, !dbg !1015, !tbaa !151, !noalias !898
  br label %137, !dbg !1016

137:                                              ; preds = %135, %133
  %138 = add nuw nsw i64 %63, 1, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %138, metadata !925, metadata !DIExpression()) #10, !dbg !933
  %139 = icmp eq i64 %138, %38, !dbg !1017
  br i1 %139, label %140, label %62, !dbg !944, !llvm.loop !1018

140:                                              ; preds = %137, %50
  %141 = add nsw i64 %51, 1, !dbg !936
  call void @llvm.dbg.value(metadata i64 %141, metadata !918, metadata !DIExpression()) #10, !dbg !933
  call void @llvm.dbg.value(metadata i64 %34, metadata !922, metadata !DIExpression()) #10, !dbg !933
  %142 = icmp slt i64 %51, %34, !dbg !936
  br i1 %142, label %50, label %143, !dbg !936, !llvm.loop !1020

143:                                              ; preds = %140, %25
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i64 0, i64 0), i8** %30, align 8, !dbg !1021, !tbaa !720, !noalias !898
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %20, i32 %31) #10, !dbg !1021, !noalias !898
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #10, !dbg !1021, !noalias !898
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #10, !dbg !1021, !noalias !898
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #10, !dbg !1021, !noalias !898
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #10, !dbg !1021, !noalias !898
  br label %144, !dbg !1021

144:                                              ; preds = %15, %143
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21), !dbg !1023
  ret void, !dbg !1024
}

declare !callback !1025 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..14(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i64* nocapture readonly dereferenceable(8) %2, i64* nocapture readonly dereferenceable(8) %3, float** nocapture readonly dereferenceable(8) %4, i32** nocapture readonly dereferenceable(8) %5, i32** nocapture readonly dereferenceable(8) %6, float** nocapture readonly dereferenceable(8) %7, float** nocapture readonly dereferenceable(8) %8, float** nocapture readonly dereferenceable(8) %9, float** nocapture readonly dereferenceable(8) %10, float** nocapture readonly dereferenceable(8) %11, float* nocapture readonly dereferenceable(4) %12) #7 !dbg !1027 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !1031, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32* %1, metadata !1032, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64* %2, metadata !1033, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64* %3, metadata !1034, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata float** %4, metadata !1035, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32** %5, metadata !1036, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32** %6, metadata !1037, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata float** %7, metadata !1038, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata float** %8, metadata !1039, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata float** %9, metadata !1040, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata float** %10, metadata !1041, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata float** %11, metadata !1042, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata float* %12, metadata !1043, metadata !DIExpression()), !dbg !1044
  %19 = bitcast %struct.ident_t* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %19, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #10, !noalias !1045
  call void @llvm.dbg.value(metadata i32* %0, metadata !1048, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i32* undef, metadata !1051, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i64* %2, metadata !1052, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i64* %3, metadata !1053, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata float** %4, metadata !1054, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i32** %5, metadata !1055, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i32** %6, metadata !1056, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata float** %7, metadata !1057, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata float** %8, metadata !1058, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata float** %9, metadata !1059, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata float** %10, metadata !1060, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata float** %11, metadata !1061, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata float* %12, metadata !1062, metadata !DIExpression()) #10, !dbg !1077
  %20 = load i64, i64* %2, align 8, !dbg !1079, !tbaa !522, !noalias !1045
  call void @llvm.dbg.value(metadata i64 %20, metadata !1064, metadata !DIExpression()) #10, !dbg !1077
  %21 = add nsw i64 %20, -1, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %21, metadata !1064, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i64 0, metadata !1065, metadata !DIExpression()) #10, !dbg !1077
  %22 = icmp sgt i64 %20, 0, !dbg !1080
  br i1 %22, label %23, label %99, !dbg !1080

23:                                               ; preds = %13
  %24 = bitcast i64* %14 to i8*, !dbg !1080
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #10, !dbg !1080, !noalias !1045
  call void @llvm.dbg.value(metadata i64 0, metadata !1066, metadata !DIExpression()) #10, !dbg !1077
  store i64 0, i64* %14, align 8, !dbg !1081, !tbaa !522, !noalias !1045
  %25 = bitcast i64* %15 to i8*, !dbg !1080
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #10, !dbg !1080, !noalias !1045
  call void @llvm.dbg.value(metadata i64 %21, metadata !1067, metadata !DIExpression()) #10, !dbg !1077
  store i64 %21, i64* %15, align 8, !dbg !1081, !tbaa !522, !noalias !1045
  %26 = bitcast i64* %16 to i8*, !dbg !1080
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #10, !dbg !1080, !noalias !1045
  call void @llvm.dbg.value(metadata i64 1, metadata !1068, metadata !DIExpression()) #10, !dbg !1077
  store i64 1, i64* %16, align 8, !dbg !1081, !tbaa !522, !noalias !1045
  %27 = bitcast i32* %17 to i8*, !dbg !1080
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #10, !dbg !1080, !noalias !1045
  call void @llvm.dbg.value(metadata i32 0, metadata !1069, metadata !DIExpression()) #10, !dbg !1077
  store i32 0, i32* %17, align 4, !dbg !1081, !tbaa !238, !noalias !1045
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %18, i64 0, i32 4, !dbg !1080
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i64 0, i64 0), i8** %28, align 8, !dbg !1080, !tbaa !720, !noalias !1045
  %29 = load i32, i32* %0, align 4, !dbg !1080, !tbaa !238, !alias.scope !1045
  call void @llvm.dbg.value(metadata i64* %14, metadata !1066, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i64* %15, metadata !1067, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i64* %16, metadata !1068, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i32* %17, metadata !1069, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1077
  call void @__kmpc_for_static_init_8(%struct.ident_t* nonnull %18, i32 %29, i32 34, i32* nonnull %17, i64* nonnull %14, i64* nonnull %15, i64* nonnull %16, i64 1, i64 1) #10, !dbg !1080, !noalias !1045
  %30 = load i64, i64* %15, align 8, !dbg !1081, !tbaa !522, !noalias !1045
  call void @llvm.dbg.value(metadata i64 %30, metadata !1067, metadata !DIExpression()) #10, !dbg !1077
  %31 = icmp slt i64 %30, %20, !dbg !1081
  %32 = select i1 %31, i64 %30, i64 %21, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %32, metadata !1067, metadata !DIExpression()) #10, !dbg !1077
  store i64 %32, i64* %15, align 8, !dbg !1081, !tbaa !522, !noalias !1045
  %33 = load i64, i64* %14, align 8, !dbg !1081, !tbaa !522, !noalias !1045
  call void @llvm.dbg.value(metadata i64 %33, metadata !1066, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %33, metadata !1063, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %32, metadata !1067, metadata !DIExpression()) #10, !dbg !1077
  %34 = icmp sgt i64 %33, %32, !dbg !1080
  br i1 %34, label %98, label %35, !dbg !1080

35:                                               ; preds = %23
  %36 = load i64, i64* %3, align 8, !dbg !1082, !noalias !1045
  %37 = icmp sgt i64 %36, 0, !dbg !1082
  %38 = load float*, float** %4, align 8, !dbg !1086, !noalias !1045
  %39 = load i32*, i32** %5, align 8, !dbg !1086, !noalias !1045
  %40 = load i32*, i32** %6, align 8, !dbg !1086, !noalias !1045
  %41 = load float*, float** %7, align 8, !dbg !1086, !noalias !1045
  %42 = load float*, float** %8, align 8, !dbg !1086, !noalias !1045
  %43 = load float*, float** %9, align 8, !dbg !1086, !noalias !1045
  %44 = load float*, float** %10, align 8, !dbg !1086, !noalias !1045
  %45 = load float*, float** %11, align 8, !dbg !1086, !noalias !1045
  br label %46, !dbg !1080

46:                                               ; preds = %95, %35
  %47 = phi i64 [ %33, %35 ], [ %96, %95 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1063, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i64 0, metadata !1070, metadata !DIExpression()) #10, !dbg !1077
  br i1 %37, label %48, label %95, !dbg !1088

48:                                               ; preds = %46
  %49 = getelementptr inbounds i32, i32* %40, i64 %47, !dbg !1086
  %50 = load i32, i32* %49, align 4, !dbg !1086, !tbaa !238, !noalias !1045
  %51 = sext i32 %50 to i64, !dbg !1086
  %52 = mul nsw i64 %47, %36, !dbg !1086
  %53 = mul nsw i64 %36, %51, !dbg !1086
  br label %54, !dbg !1088

54:                                               ; preds = %54, %48
  %55 = phi i64 [ 0, %48 ], [ %93, %54 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !1070, metadata !DIExpression()) #10, !dbg !1077
  %56 = add nsw i64 %55, %52, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %56, metadata !1071, metadata !DIExpression()) #10, !dbg !1077
  %57 = getelementptr inbounds float, float* %38, i64 %56, !dbg !1090
  %58 = load float, float* %57, align 4, !dbg !1090, !tbaa !151, !noalias !1045
  call void @llvm.dbg.value(metadata float %58, metadata !1074, metadata !DIExpression()) #10, !dbg !1077
  %59 = getelementptr inbounds i32, i32* %39, i64 %55, !dbg !1091
  %60 = load i32, i32* %59, align 4, !dbg !1091, !tbaa !238, !noalias !1045
  %61 = sext i32 %60 to i64, !dbg !1091
  %62 = add nsw i64 %52, %61, !dbg !1092
  %63 = getelementptr inbounds float, float* %38, i64 %62, !dbg !1093
  %64 = load float, float* %63, align 4, !dbg !1093, !tbaa !151, !noalias !1045
  call void @llvm.dbg.value(metadata float %64, metadata !1073, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata float %58, metadata !1075, metadata !DIExpression()) #10, !dbg !1077
  %65 = add nsw i64 %55, %53, !dbg !1094
  %66 = getelementptr inbounds float, float* %38, i64 %65, !dbg !1095
  %67 = load float, float* %66, align 4, !dbg !1095, !tbaa !151, !noalias !1045
  call void @llvm.dbg.value(metadata float %67, metadata !1076, metadata !DIExpression()) #10, !dbg !1077
  %68 = getelementptr inbounds float, float* %41, i64 %56, !dbg !1096
  %69 = load float, float* %68, align 4, !dbg !1096, !tbaa !151, !noalias !1045
  %70 = fmul float %58, %69, !dbg !1097
  %71 = getelementptr inbounds float, float* %42, i64 %56, !dbg !1098
  %72 = load float, float* %71, align 4, !dbg !1098, !tbaa !151, !noalias !1045
  %73 = fmul float %64, %72, !dbg !1099
  %74 = fadd float %70, %73, !dbg !1100
  %75 = getelementptr inbounds float, float* %43, i64 %56, !dbg !1101
  %76 = load float, float* %75, align 4, !dbg !1101, !tbaa !151, !noalias !1045
  %77 = fmul float %58, %76, !dbg !1102
  %78 = fadd float %74, %77, !dbg !1103
  %79 = getelementptr inbounds float, float* %44, i64 %56, !dbg !1104
  %80 = load float, float* %79, align 4, !dbg !1104, !tbaa !151, !noalias !1045
  %81 = fmul float %67, %80, !dbg !1105
  %82 = fadd float %78, %81, !dbg !1106
  call void @llvm.dbg.value(metadata float %82, metadata !1072, metadata !DIExpression()) #10, !dbg !1077
  %83 = getelementptr inbounds float, float* %45, i64 %56, !dbg !1107
  %84 = load float, float* %83, align 4, !dbg !1107, !tbaa !151, !noalias !1045
  %85 = fpext float %84 to double, !dbg !1107
  %86 = load float, float* %12, align 4, !dbg !1108, !tbaa !151, !noalias !1045
  %87 = fpext float %86 to double, !dbg !1108
  %88 = fmul double %87, 2.500000e-01, !dbg !1109
  %89 = fpext float %82 to double, !dbg !1110
  %90 = fmul double %88, %89, !dbg !1111
  %91 = fadd double %90, %85, !dbg !1112
  %92 = fptrunc double %91 to float, !dbg !1107
  store float %92, float* %83, align 4, !dbg !1113, !tbaa !151, !noalias !1045
  %93 = add nuw nsw i64 %55, 1, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %93, metadata !1070, metadata !DIExpression()) #10, !dbg !1077
  %94 = icmp eq i64 %93, %36, !dbg !1115
  br i1 %94, label %95, label %54, !dbg !1088, !llvm.loop !1116

95:                                               ; preds = %54, %46
  %96 = add nsw i64 %47, 1, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %96, metadata !1063, metadata !DIExpression()) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %32, metadata !1067, metadata !DIExpression()) #10, !dbg !1077
  %97 = icmp slt i64 %47, %32, !dbg !1080
  br i1 %97, label %46, label %98, !dbg !1080, !llvm.loop !1118

98:                                               ; preds = %95, %23
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @5, i64 0, i64 0), i8** %28, align 8, !dbg !1119, !tbaa !720, !noalias !1045
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %18, i32 %29) #10, !dbg !1119, !noalias !1045
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #10, !dbg !1119, !noalias !1045
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #10, !dbg !1119, !noalias !1045
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #10, !dbg !1119, !noalias !1045
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #10, !dbg !1119, !noalias !1045
  br label %99, !dbg !1119

99:                                               ; preds = %13, %98
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19), !dbg !1121
  ret void, !dbg !1122
}

; Function Attrs: nofree nounwind
declare dso_local double @log(double) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !87 dso_local void @free(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @fputc_unlocked(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #9

attributes #0 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!92, !93, !94}
!llvm.ident = !{!95}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "main.c", directory: "/mnt/d/RISC-V-PROJECT/rowan-riscv-rodinia-llvm/src/openmp/srad/srad_v1")
!2 = !{}
!3 = !{!4, !5, !6, !68, !69, !70, !82, !86, !87, !91}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DISubprogram(name: "fclose", scope: !7, file: !7, line: 213, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!5, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !12, line: 49, size: 1728, elements: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!13 = !{!14, !15, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !31, !32, !33, !34, !38, !40, !42, !46, !49, !51, !54, !57, !58, !59, !63, !64}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !11, file: !12, line: 51, baseType: !5, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !11, file: !12, line: 54, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !11, file: !12, line: 55, baseType: !16, size: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !11, file: !12, line: 56, baseType: !16, size: 64, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !11, file: !12, line: 57, baseType: !16, size: 64, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !11, file: !12, line: 58, baseType: !16, size: 64, offset: 320)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !11, file: !12, line: 59, baseType: !16, size: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !11, file: !12, line: 60, baseType: !16, size: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !11, file: !12, line: 61, baseType: !16, size: 64, offset: 512)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !11, file: !12, line: 64, baseType: !16, size: 64, offset: 576)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !11, file: !12, line: 65, baseType: !16, size: 64, offset: 640)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !11, file: !12, line: 66, baseType: !16, size: 64, offset: 704)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !11, file: !12, line: 68, baseType: !29, size: 64, offset: 768)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !12, line: 36, flags: DIFlagFwdDecl)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !11, file: !12, line: 70, baseType: !10, size: 64, offset: 832)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !11, file: !12, line: 72, baseType: !5, size: 32, offset: 896)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !11, file: !12, line: 73, baseType: !5, size: 32, offset: 928)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !11, file: !12, line: 74, baseType: !35, size: 64, offset: 960)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !36, line: 152, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!37 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !11, file: !12, line: 77, baseType: !39, size: 16, offset: 1024)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !11, file: !12, line: 78, baseType: !41, size: 8, offset: 1040)
!41 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !11, file: !12, line: 79, baseType: !43, size: 8, offset: 1048)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 1)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !11, file: !12, line: 81, baseType: !47, size: 64, offset: 1088)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !12, line: 43, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !11, file: !12, line: 89, baseType: !50, size: 64, offset: 1152)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !36, line: 153, baseType: !37)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !11, file: !12, line: 91, baseType: !52, size: 64, offset: 1216)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !12, line: 37, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !11, file: !12, line: 92, baseType: !55, size: 64, offset: 1280)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !12, line: 38, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !11, file: !12, line: 93, baseType: !10, size: 64, offset: 1344)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !11, file: !12, line: 94, baseType: !4, size: 64, offset: 1408)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !11, file: !12, line: 95, baseType: !60, size: 64, offset: 1472)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!62 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !11, file: !12, line: 96, baseType: !5, size: 32, offset: 1536)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !11, file: !12, line: 98, baseType: !65, size: 160, offset: 1568)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 20)
!68 = !DISubprogram(name: "fgetc", scope: !7, file: !7, line: 485, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!69 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!70 = !DISubprogram(name: "gettimeofday", scope: !71, file: !71, line: 66, type: !72, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "")
!72 = !DISubroutineType(types: !73)
!73 = !{!5, !74, !4}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !76, line: 8, size: 128, elements: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!77 = !{!78, !80}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !75, file: !76, line: 10, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !36, line: 160, baseType: !37)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !75, file: !76, line: 11, baseType: !81, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !36, line: 162, baseType: !37)
!82 = !DISubprogram(name: "omp_set_num_threads", scope: !83, file: !83, line: 57, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!83 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/omp.h", directory: "")
!84 = !DISubroutineType(types: !85)
!85 = !{null, !5}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!87 = !DISubprogram(name: "free", scope: !88, file: !88, line: 565, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!88 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!89 = !DISubroutineType(types: !90)
!90 = !{null, !4}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!92 = !{i32 7, !"Dwarf Version", i32 4}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"wchar_size", i32 4}
!95 = !{!"clang version 10.0.0-4ubuntu1 "}
!96 = distinct !DISubprogram(name: "write_graphics", scope: !97, file: !97, line: 22, type: !98, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !100)
!97 = !DIFile(filename: "./graphics.c", directory: "/mnt/d/RISC-V-PROJECT/rowan-riscv-rodinia-llvm/src/openmp/srad/srad_v1")
!98 = !DISubroutineType(types: !99)
!99 = !{null, !16, !86, !5, !5, !5, !5}
!100 = !{!101, !102, !103, !104, !105, !106, !107, !111, !112}
!101 = !DILocalVariable(name: "filename", arg: 1, scope: !96, file: !97, line: 22, type: !16)
!102 = !DILocalVariable(name: "input", arg: 2, scope: !96, file: !97, line: 23, type: !86)
!103 = !DILocalVariable(name: "data_rows", arg: 3, scope: !96, file: !97, line: 24, type: !5)
!104 = !DILocalVariable(name: "data_cols", arg: 4, scope: !96, file: !97, line: 25, type: !5)
!105 = !DILocalVariable(name: "major", arg: 5, scope: !96, file: !97, line: 26, type: !5)
!106 = !DILocalVariable(name: "data_range", arg: 6, scope: !96, file: !97, line: 27, type: !5)
!107 = !DILocalVariable(name: "fid", scope: !96, file: !97, line: 33, type: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !110, line: 7, baseType: !11)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!111 = !DILocalVariable(name: "i", scope: !96, file: !97, line: 34, type: !5)
!112 = !DILocalVariable(name: "j", scope: !96, file: !97, line: 34, type: !5)
!113 = !DILocation(line: 0, scope: !96)
!114 = !DILocation(line: 40, column: 8, scope: !96)
!115 = !DILocation(line: 41, column: 10, scope: !116)
!116 = distinct !DILexicalBlock(scope: !96, file: !97, line: 41, column: 6)
!117 = !DILocation(line: 41, column: 6, scope: !96)
!118 = !DILocation(line: 42, column: 3, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !97, line: 41, column: 19)
!120 = !DILocation(line: 43, column: 3, scope: !119)
!121 = !DILocation(line: 50, column: 2, scope: !96)
!122 = !DILocation(line: 51, column: 2, scope: !96)
!123 = !DILocation(line: 52, column: 2, scope: !96)
!124 = !DILocation(line: 59, column: 10, scope: !125)
!125 = distinct !DILexicalBlock(scope: !96, file: !97, line: 59, column: 5)
!126 = !DILocation(line: 0, scope: !125)
!127 = !DILocation(line: 59, column: 5, scope: !96)
!128 = !DILocation(line: 69, column: 3, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !97, line: 69, column: 3)
!130 = distinct !DILexicalBlock(scope: !125, file: !97, line: 68, column: 6)
!131 = !DILocation(line: 0, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !97, line: 70, column: 4)
!133 = distinct !DILexicalBlock(scope: !134, file: !97, line: 70, column: 4)
!134 = distinct !DILexicalBlock(scope: !135, file: !97, line: 69, column: 29)
!135 = distinct !DILexicalBlock(scope: !129, file: !97, line: 69, column: 3)
!136 = !DILocation(line: 69, column: 13, scope: !135)
!137 = !DILocation(line: 60, column: 3, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !97, line: 60, column: 3)
!139 = distinct !DILexicalBlock(scope: !125, file: !97, line: 59, column: 14)
!140 = !DILocation(line: 0, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !97, line: 61, column: 4)
!142 = distinct !DILexicalBlock(scope: !143, file: !97, line: 61, column: 4)
!143 = distinct !DILexicalBlock(scope: !144, file: !97, line: 60, column: 29)
!144 = distinct !DILexicalBlock(scope: !138, file: !97, line: 60, column: 3)
!145 = !DILocation(line: 60, column: 13, scope: !144)
!146 = !DILocation(line: 61, column: 4, scope: !142)
!147 = !DILocation(line: 0, scope: !148)
!148 = distinct !DILexicalBlock(scope: !141, file: !97, line: 61, column: 30)
!149 = !DILocation(line: 62, column: 47, scope: !148)
!150 = !DILocation(line: 62, column: 30, scope: !148)
!151 = !{!152, !152, i64 0}
!152 = !{!"float", !153, i64 0}
!153 = !{!"omnipotent char", !154, i64 0}
!154 = !{!"Simple C/C++ TBAA"}
!155 = !DILocation(line: 62, column: 25, scope: !148)
!156 = !DILocation(line: 62, column: 5, scope: !148)
!157 = !DILocation(line: 61, column: 27, scope: !141)
!158 = !DILocation(line: 61, column: 14, scope: !141)
!159 = distinct !{!159, !146, !160}
!160 = !DILocation(line: 63, column: 4, scope: !142)
!161 = !DILocation(line: 64, column: 4, scope: !143)
!162 = !DILocation(line: 60, column: 26, scope: !144)
!163 = distinct !{!163, !137, !164}
!164 = !DILocation(line: 65, column: 3, scope: !138)
!165 = !DILocation(line: 70, column: 4, scope: !133)
!166 = !DILocation(line: 71, column: 37, scope: !167)
!167 = distinct !DILexicalBlock(scope: !132, file: !97, line: 70, column: 30)
!168 = !DILocation(line: 71, column: 47, scope: !167)
!169 = !DILocation(line: 71, column: 30, scope: !167)
!170 = !DILocation(line: 71, column: 25, scope: !167)
!171 = !DILocation(line: 71, column: 5, scope: !167)
!172 = !DILocation(line: 70, column: 27, scope: !132)
!173 = !DILocation(line: 70, column: 14, scope: !132)
!174 = distinct !{!174, !165, !175}
!175 = !DILocation(line: 72, column: 4, scope: !133)
!176 = !DILocation(line: 73, column: 4, scope: !134)
!177 = !DILocation(line: 69, column: 26, scope: !135)
!178 = distinct !{!178, !128, !179}
!179 = !DILocation(line: 74, column: 3, scope: !129)
!180 = !DILocation(line: 81, column: 2, scope: !96)
!181 = !DILocation(line: 83, column: 1, scope: !96)
!182 = distinct !DISubprogram(name: "read_graphics", scope: !97, file: !97, line: 91, type: !183, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !16, !86, !5, !5, !5}
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!186 = !DILocalVariable(name: "filename", arg: 1, scope: !182, file: !97, line: 91, type: !16)
!187 = !DILocalVariable(name: "input", arg: 2, scope: !182, file: !97, line: 92, type: !86)
!188 = !DILocalVariable(name: "data_rows", arg: 3, scope: !182, file: !97, line: 93, type: !5)
!189 = !DILocalVariable(name: "data_cols", arg: 4, scope: !182, file: !97, line: 94, type: !5)
!190 = !DILocalVariable(name: "major", arg: 5, scope: !182, file: !97, line: 95, type: !5)
!191 = !DILocalVariable(name: "fid", scope: !182, file: !97, line: 101, type: !108)
!192 = !DILocalVariable(name: "i", scope: !182, file: !97, line: 102, type: !5)
!193 = !DILocalVariable(name: "j", scope: !182, file: !97, line: 102, type: !5)
!194 = !DILocalVariable(name: "c", scope: !182, file: !97, line: 103, type: !17)
!195 = !DILocalVariable(name: "temp", scope: !182, file: !97, line: 104, type: !5)
!196 = !DILocation(line: 0, scope: !182)
!197 = !DILocation(line: 104, column: 2, scope: !182)
!198 = !DILocation(line: 110, column: 8, scope: !182)
!199 = !DILocation(line: 111, column: 10, scope: !200)
!200 = distinct !DILexicalBlock(scope: !182, file: !97, line: 111, column: 6)
!201 = !DILocation(line: 111, column: 6, scope: !182)
!202 = !DILocation(line: 112, column: 3, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !97, line: 111, column: 19)
!204 = !DILocation(line: 113, column: 3, scope: !203)
!205 = !DILocation(line: 122, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !182, file: !97, line: 121, column: 12)
!207 = !DILocation(line: 123, column: 8, scope: !208)
!208 = distinct !DILexicalBlock(scope: !206, file: !97, line: 123, column: 6)
!209 = !DILocation(line: 121, column: 9, scope: !182)
!210 = !DILocation(line: 121, column: 2, scope: !182)
!211 = !DILocation(line: 132, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !182, file: !97, line: 132, column: 5)
!213 = !DILocation(line: 0, scope: !212)
!214 = !DILocation(line: 132, column: 5, scope: !182)
!215 = !DILocation(line: 141, column: 3, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !97, line: 141, column: 3)
!217 = distinct !DILexicalBlock(scope: !212, file: !97, line: 140, column: 6)
!218 = !DILocation(line: 0, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !97, line: 142, column: 4)
!220 = distinct !DILexicalBlock(scope: !221, file: !97, line: 142, column: 4)
!221 = distinct !DILexicalBlock(scope: !222, file: !97, line: 141, column: 29)
!222 = distinct !DILexicalBlock(scope: !216, file: !97, line: 141, column: 3)
!223 = !DILocation(line: 141, column: 13, scope: !222)
!224 = !DILocation(line: 133, column: 3, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !97, line: 133, column: 3)
!226 = distinct !DILexicalBlock(scope: !212, file: !97, line: 132, column: 14)
!227 = !DILocation(line: 0, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !97, line: 134, column: 4)
!229 = distinct !DILexicalBlock(scope: !230, file: !97, line: 134, column: 4)
!230 = distinct !DILexicalBlock(scope: !231, file: !97, line: 133, column: 29)
!231 = distinct !DILexicalBlock(scope: !225, file: !97, line: 133, column: 3)
!232 = !DILocation(line: 133, column: 13, scope: !231)
!233 = !DILocation(line: 134, column: 4, scope: !229)
!234 = !DILocation(line: 0, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !97, line: 134, column: 30)
!236 = !DILocation(line: 135, column: 5, scope: !235)
!237 = !DILocation(line: 136, column: 32, scope: !235)
!238 = !{!239, !239, i64 0}
!239 = !{!"int", !153, i64 0}
!240 = !DILocation(line: 136, column: 28, scope: !235)
!241 = !DILocation(line: 136, column: 22, scope: !235)
!242 = !DILocation(line: 136, column: 5, scope: !235)
!243 = !DILocation(line: 136, column: 26, scope: !235)
!244 = !DILocation(line: 134, column: 27, scope: !228)
!245 = !DILocation(line: 134, column: 14, scope: !228)
!246 = distinct !{!246, !233, !247}
!247 = !DILocation(line: 137, column: 4, scope: !229)
!248 = !DILocation(line: 133, column: 26, scope: !231)
!249 = distinct !{!249, !224, !250}
!250 = !DILocation(line: 138, column: 3, scope: !225)
!251 = !DILocation(line: 142, column: 4, scope: !220)
!252 = !DILocation(line: 143, column: 5, scope: !253)
!253 = distinct !DILexicalBlock(scope: !219, file: !97, line: 142, column: 30)
!254 = !DILocation(line: 144, column: 32, scope: !253)
!255 = !DILocation(line: 144, column: 28, scope: !253)
!256 = !DILocation(line: 144, column: 12, scope: !253)
!257 = !DILocation(line: 144, column: 22, scope: !253)
!258 = !DILocation(line: 144, column: 5, scope: !253)
!259 = !DILocation(line: 144, column: 26, scope: !253)
!260 = !DILocation(line: 142, column: 27, scope: !219)
!261 = !DILocation(line: 142, column: 14, scope: !219)
!262 = distinct !{!262, !251, !263}
!263 = !DILocation(line: 145, column: 4, scope: !220)
!264 = !DILocation(line: 141, column: 26, scope: !222)
!265 = distinct !{!265, !215, !266}
!266 = !DILocation(line: 146, column: 3, scope: !216)
!267 = !DILocation(line: 153, column: 2, scope: !182)
!268 = !DILocation(line: 155, column: 1, scope: !182)
!269 = distinct !DISubprogram(name: "resize", scope: !270, file: !270, line: 7, type: !271, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!270 = !DIFile(filename: "./resize.c", directory: "/mnt/d/RISC-V-PROJECT/rowan-riscv-rodinia-llvm/src/openmp/srad/srad_v1")
!271 = !DISubroutineType(types: !272)
!272 = !{null, !86, !5, !5, !86, !5, !5, !5}
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!274 = !DILocalVariable(name: "input", arg: 1, scope: !269, file: !270, line: 7, type: !86)
!275 = !DILocalVariable(name: "input_rows", arg: 2, scope: !269, file: !270, line: 8, type: !5)
!276 = !DILocalVariable(name: "input_cols", arg: 3, scope: !269, file: !270, line: 9, type: !5)
!277 = !DILocalVariable(name: "output", arg: 4, scope: !269, file: !270, line: 10, type: !86)
!278 = !DILocalVariable(name: "output_rows", arg: 5, scope: !269, file: !270, line: 11, type: !5)
!279 = !DILocalVariable(name: "output_cols", arg: 6, scope: !269, file: !270, line: 12, type: !5)
!280 = !DILocalVariable(name: "major", arg: 7, scope: !269, file: !270, line: 13, type: !5)
!281 = !DILocalVariable(name: "i", scope: !269, file: !270, line: 19, type: !5)
!282 = !DILocalVariable(name: "j", scope: !269, file: !270, line: 19, type: !5)
!283 = !DILocalVariable(name: "i2", scope: !269, file: !270, line: 20, type: !5)
!284 = !DILocalVariable(name: "j2", scope: !269, file: !270, line: 20, type: !5)
!285 = !DILocation(line: 0, scope: !269)
!286 = !DILocation(line: 30, column: 11, scope: !287)
!287 = distinct !DILexicalBlock(scope: !269, file: !270, line: 30, column: 5)
!288 = !DILocation(line: 30, column: 5, scope: !269)
!289 = !DILocation(line: 52, column: 19, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !270, line: 52, column: 3)
!291 = distinct !DILexicalBlock(scope: !292, file: !270, line: 52, column: 3)
!292 = distinct !DILexicalBlock(scope: !287, file: !270, line: 50, column: 6)
!293 = !DILocation(line: 52, column: 3, scope: !291)
!294 = !DILocation(line: 0, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !270, line: 56, column: 4)
!296 = distinct !DILexicalBlock(scope: !297, file: !270, line: 56, column: 4)
!297 = distinct !DILexicalBlock(scope: !290, file: !270, line: 52, column: 43)
!298 = !DILocation(line: 0, scope: !296)
!299 = !DILocation(line: 32, column: 19, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !270, line: 32, column: 3)
!301 = distinct !DILexicalBlock(scope: !302, file: !270, line: 32, column: 3)
!302 = distinct !DILexicalBlock(scope: !287, file: !270, line: 30, column: 16)
!303 = !DILocation(line: 32, column: 3, scope: !301)
!304 = !DILocation(line: 0, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !270, line: 36, column: 4)
!306 = distinct !DILexicalBlock(scope: !307, file: !270, line: 36, column: 4)
!307 = distinct !DILexicalBlock(scope: !300, file: !270, line: 32, column: 43)
!308 = !DILocation(line: 0, scope: !306)
!309 = !DILocation(line: 33, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !270, line: 33, column: 7)
!311 = !DILocation(line: 33, column: 7, scope: !307)
!312 = !DILocation(line: 36, column: 4, scope: !306)
!313 = !DILocation(line: 0, scope: !314)
!314 = distinct !DILexicalBlock(scope: !305, file: !270, line: 36, column: 44)
!315 = !DILocation(line: 37, column: 10, scope: !316)
!316 = distinct !DILexicalBlock(scope: !314, file: !270, line: 37, column: 8)
!317 = !DILocation(line: 37, column: 8, scope: !314)
!318 = !DILocation(line: 40, column: 50, scope: !314)
!319 = !DILocation(line: 40, column: 31, scope: !314)
!320 = !DILocation(line: 40, column: 25, scope: !314)
!321 = !DILocation(line: 40, column: 5, scope: !314)
!322 = !DILocation(line: 40, column: 29, scope: !314)
!323 = !DILocation(line: 36, column: 35, scope: !305)
!324 = !DILocation(line: 36, column: 41, scope: !305)
!325 = distinct !{!325, !312, !326}
!326 = !DILocation(line: 41, column: 4, scope: !306)
!327 = !DILocation(line: 32, column: 34, scope: !300)
!328 = !DILocation(line: 32, column: 40, scope: !300)
!329 = distinct !{!329, !303, !330}
!330 = !DILocation(line: 42, column: 3, scope: !301)
!331 = !DILocation(line: 53, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !297, file: !270, line: 53, column: 7)
!333 = !DILocation(line: 53, column: 7, scope: !297)
!334 = !DILocation(line: 56, column: 4, scope: !296)
!335 = !DILocation(line: 0, scope: !336)
!336 = distinct !DILexicalBlock(scope: !295, file: !270, line: 56, column: 44)
!337 = !DILocation(line: 57, column: 10, scope: !338)
!338 = distinct !DILexicalBlock(scope: !336, file: !270, line: 57, column: 8)
!339 = !DILocation(line: 57, column: 8, scope: !336)
!340 = !DILocation(line: 60, column: 50, scope: !336)
!341 = !DILocation(line: 60, column: 31, scope: !336)
!342 = !DILocation(line: 60, column: 25, scope: !336)
!343 = !DILocation(line: 60, column: 5, scope: !336)
!344 = !DILocation(line: 60, column: 29, scope: !336)
!345 = !DILocation(line: 56, column: 35, scope: !295)
!346 = !DILocation(line: 56, column: 41, scope: !295)
!347 = distinct !{!347, !334, !348}
!348 = !DILocation(line: 61, column: 4, scope: !296)
!349 = !DILocation(line: 52, column: 34, scope: !290)
!350 = !DILocation(line: 52, column: 40, scope: !290)
!351 = distinct !{!351, !293, !352}
!352 = !DILocation(line: 62, column: 3, scope: !291)
!353 = !DILocation(line: 66, column: 1, scope: !269)
!354 = distinct !DISubprogram(name: "get_time", scope: !355, file: !355, line: 5, type: !356, scopeLine: 5, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !359)
!355 = !DIFile(filename: "./timer.c", directory: "/mnt/d/RISC-V-PROJECT/rowan-riscv-rodinia-llvm/src/openmp/srad/srad_v1")
!356 = !DISubroutineType(types: !357)
!357 = !{!358}
!358 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!359 = !{!360}
!360 = !DILocalVariable(name: "tv", scope: !354, file: !355, line: 6, type: !75)
!361 = !DILocation(line: 6, column: 2, scope: !354)
!362 = !DILocation(line: 6, column: 17, scope: !354)
!363 = !DILocation(line: 7, column: 2, scope: !354)
!364 = !DILocation(line: 8, column: 13, scope: !354)
!365 = !{!366, !367, i64 0}
!366 = !{!"timeval", !367, i64 0, !367, i64 8}
!367 = !{!"long", !153, i64 0}
!368 = !DILocation(line: 8, column: 20, scope: !354)
!369 = !DILocation(line: 8, column: 36, scope: !354)
!370 = !{!366, !367, i64 8}
!371 = !DILocation(line: 8, column: 31, scope: !354)
!372 = !DILocation(line: 9, column: 1, scope: !354)
!373 = !DILocation(line: 8, column: 2, scope: !354)
!374 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 40, type: !375, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!5, !5, !91}
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437}
!378 = !DILocalVariable(name: "argc", arg: 1, scope: !374, file: !1, line: 40, type: !5)
!379 = !DILocalVariable(name: "argv", arg: 2, scope: !374, file: !1, line: 40, type: !91)
!380 = !DILocalVariable(name: "time0", scope: !374, file: !1, line: 47, type: !358)
!381 = !DILocalVariable(name: "time1", scope: !374, file: !1, line: 48, type: !358)
!382 = !DILocalVariable(name: "time2", scope: !374, file: !1, line: 49, type: !358)
!383 = !DILocalVariable(name: "time3", scope: !374, file: !1, line: 50, type: !358)
!384 = !DILocalVariable(name: "time4", scope: !374, file: !1, line: 51, type: !358)
!385 = !DILocalVariable(name: "time5", scope: !374, file: !1, line: 52, type: !358)
!386 = !DILocalVariable(name: "time6", scope: !374, file: !1, line: 53, type: !358)
!387 = !DILocalVariable(name: "time7", scope: !374, file: !1, line: 54, type: !358)
!388 = !DILocalVariable(name: "time8", scope: !374, file: !1, line: 55, type: !358)
!389 = !DILocalVariable(name: "time9", scope: !374, file: !1, line: 56, type: !358)
!390 = !DILocalVariable(name: "time10", scope: !374, file: !1, line: 57, type: !358)
!391 = !DILocalVariable(name: "image_ori", scope: !374, file: !1, line: 62, type: !86)
!392 = !DILocalVariable(name: "image_ori_rows", scope: !374, file: !1, line: 63, type: !5)
!393 = !DILocalVariable(name: "image_ori_cols", scope: !374, file: !1, line: 64, type: !5)
!394 = !DILocalVariable(name: "image_ori_elem", scope: !374, file: !1, line: 65, type: !37)
!395 = !DILocalVariable(name: "image", scope: !374, file: !1, line: 68, type: !86)
!396 = !DILocalVariable(name: "Nr", scope: !374, file: !1, line: 69, type: !37)
!397 = !DILocalVariable(name: "Nc", scope: !374, file: !1, line: 69, type: !37)
!398 = !DILocalVariable(name: "Ne", scope: !374, file: !1, line: 70, type: !37)
!399 = !DILocalVariable(name: "niter", scope: !374, file: !1, line: 73, type: !5)
!400 = !DILocalVariable(name: "lambda", scope: !374, file: !1, line: 74, type: !69)
!401 = !DILocalVariable(name: "r1", scope: !374, file: !1, line: 77, type: !5)
!402 = !DILocalVariable(name: "r2", scope: !374, file: !1, line: 77, type: !5)
!403 = !DILocalVariable(name: "c1", scope: !374, file: !1, line: 77, type: !5)
!404 = !DILocalVariable(name: "c2", scope: !374, file: !1, line: 77, type: !5)
!405 = !DILocalVariable(name: "NeROI", scope: !374, file: !1, line: 78, type: !37)
!406 = !DILocalVariable(name: "meanROI", scope: !374, file: !1, line: 81, type: !69)
!407 = !DILocalVariable(name: "varROI", scope: !374, file: !1, line: 81, type: !69)
!408 = !DILocalVariable(name: "q0sqr", scope: !374, file: !1, line: 81, type: !69)
!409 = !DILocalVariable(name: "iN", scope: !374, file: !1, line: 84, type: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!411 = !DILocalVariable(name: "iS", scope: !374, file: !1, line: 84, type: !410)
!412 = !DILocalVariable(name: "jE", scope: !374, file: !1, line: 84, type: !410)
!413 = !DILocalVariable(name: "jW", scope: !374, file: !1, line: 84, type: !410)
!414 = !DILocalVariable(name: "Jc", scope: !374, file: !1, line: 87, type: !69)
!415 = !DILocalVariable(name: "dN", scope: !374, file: !1, line: 90, type: !86)
!416 = !DILocalVariable(name: "dS", scope: !374, file: !1, line: 90, type: !86)
!417 = !DILocalVariable(name: "dW", scope: !374, file: !1, line: 90, type: !86)
!418 = !DILocalVariable(name: "dE", scope: !374, file: !1, line: 90, type: !86)
!419 = !DILocalVariable(name: "tmp", scope: !374, file: !1, line: 93, type: !69)
!420 = !DILocalVariable(name: "sum", scope: !374, file: !1, line: 93, type: !69)
!421 = !DILocalVariable(name: "sum2", scope: !374, file: !1, line: 93, type: !69)
!422 = !DILocalVariable(name: "G2", scope: !374, file: !1, line: 94, type: !69)
!423 = !DILocalVariable(name: "L", scope: !374, file: !1, line: 94, type: !69)
!424 = !DILocalVariable(name: "num", scope: !374, file: !1, line: 94, type: !69)
!425 = !DILocalVariable(name: "den", scope: !374, file: !1, line: 94, type: !69)
!426 = !DILocalVariable(name: "qsqr", scope: !374, file: !1, line: 94, type: !69)
!427 = !DILocalVariable(name: "D", scope: !374, file: !1, line: 94, type: !69)
!428 = !DILocalVariable(name: "c", scope: !374, file: !1, line: 97, type: !86)
!429 = !DILocalVariable(name: "cN", scope: !374, file: !1, line: 98, type: !69)
!430 = !DILocalVariable(name: "cS", scope: !374, file: !1, line: 98, type: !69)
!431 = !DILocalVariable(name: "cW", scope: !374, file: !1, line: 98, type: !69)
!432 = !DILocalVariable(name: "cE", scope: !374, file: !1, line: 98, type: !69)
!433 = !DILocalVariable(name: "iter", scope: !374, file: !1, line: 101, type: !5)
!434 = !DILocalVariable(name: "i", scope: !374, file: !1, line: 102, type: !37)
!435 = !DILocalVariable(name: "j", scope: !374, file: !1, line: 102, type: !37)
!436 = !DILocalVariable(name: "k", scope: !374, file: !1, line: 103, type: !37)
!437 = !DILocalVariable(name: "threads", scope: !374, file: !1, line: 106, type: !5)
!438 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !439)
!439 = distinct !DILocation(line: 349, column: 10, scope: !374)
!440 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !441)
!441 = distinct !DILocation(line: 336, column: 10, scope: !374)
!442 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !443)
!443 = distinct !DILocation(line: 325, column: 10, scope: !374)
!444 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !445)
!445 = distinct !DILocation(line: 224, column: 10, scope: !374)
!446 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !447)
!447 = distinct !DILocation(line: 213, column: 10, scope: !374)
!448 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !449)
!449 = distinct !DILocation(line: 167, column: 10, scope: !374)
!450 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !451)
!451 = distinct !DILocation(line: 362, column: 11, scope: !374)
!452 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !453)
!453 = distinct !DILocation(line: 149, column: 10, scope: !374)
!454 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !455)
!455 = distinct !DILocation(line: 130, column: 10, scope: !374)
!456 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !457)
!457 = distinct !DILocation(line: 108, column: 10, scope: !374)
!458 = !DILocation(line: 6, column: 17, scope: !354, inlinedAt: !459)
!459 = distinct !DILocation(line: 59, column: 10, scope: !374)
!460 = !DILocation(line: 0, scope: !374)
!461 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !459)
!462 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !459)
!463 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !459)
!464 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !459)
!465 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !459)
!466 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !459)
!467 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !459)
!468 = !DILocation(line: 68, column: 5, scope: !374)
!469 = !DILocation(line: 69, column: 5, scope: !374)
!470 = !DILocation(line: 74, column: 5, scope: !374)
!471 = !DILocation(line: 81, column: 5, scope: !374)
!472 = !DILocation(line: 84, column: 5, scope: !374)
!473 = !DILocation(line: 90, column: 2, scope: !374)
!474 = !DILocation(line: 97, column: 5, scope: !374)
!475 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !457)
!476 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !457)
!477 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !457)
!478 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !457)
!479 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !457)
!480 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !457)
!481 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !457)
!482 = !DILocation(line: 114, column: 10, scope: !483)
!483 = distinct !DILexicalBlock(scope: !374, file: !1, line: 114, column: 5)
!484 = !DILocation(line: 114, column: 5, scope: !374)
!485 = !DILocation(line: 115, column: 3, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !1, line: 114, column: 15)
!487 = !DILocation(line: 116, column: 3, scope: !486)
!488 = !DILocation(line: 119, column: 16, scope: !489)
!489 = distinct !DILexicalBlock(scope: !483, file: !1, line: 118, column: 6)
!490 = !{!491, !491, i64 0}
!491 = !{!"any pointer", !153, i64 0}
!492 = !DILocalVariable(name: "__nptr", arg: 1, scope: !493, file: !88, line: 361, type: !496)
!493 = distinct !DISubprogram(name: "atoi", scope: !88, file: !88, line: 361, type: !494, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!494 = !DISubroutineType(types: !495)
!495 = !{!5, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!498 = !{!492}
!499 = !DILocation(line: 0, scope: !493, inlinedAt: !500)
!500 = distinct !DILocation(line: 119, column: 11, scope: !489)
!501 = !DILocation(line: 363, column: 16, scope: !493, inlinedAt: !500)
!502 = !DILocation(line: 363, column: 10, scope: !493, inlinedAt: !500)
!503 = !DILocation(line: 120, column: 17, scope: !489)
!504 = !DILocalVariable(name: "__nptr", arg: 1, scope: !505, file: !506, line: 25, type: !496)
!505 = distinct !DISubprogram(name: "atof", scope: !506, file: !506, line: 25, type: !507, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !510)
!506 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!507 = !DISubroutineType(types: !508)
!508 = !{!509, !496}
!509 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!510 = !{!504}
!511 = !DILocation(line: 0, scope: !505, inlinedAt: !512)
!512 = distinct !DILocation(line: 120, column: 12, scope: !489)
!513 = !DILocation(line: 27, column: 10, scope: !505, inlinedAt: !512)
!514 = !DILocation(line: 120, column: 12, scope: !489)
!515 = !DILocation(line: 120, column: 10, scope: !489)
!516 = !DILocation(line: 121, column: 13, scope: !489)
!517 = !DILocation(line: 0, scope: !493, inlinedAt: !518)
!518 = distinct !DILocation(line: 121, column: 8, scope: !489)
!519 = !DILocation(line: 363, column: 16, scope: !493, inlinedAt: !518)
!520 = !DILocation(line: 121, column: 8, scope: !489)
!521 = !DILocation(line: 121, column: 6, scope: !489)
!522 = !{!367, !367, i64 0}
!523 = !DILocation(line: 122, column: 13, scope: !489)
!524 = !DILocation(line: 0, scope: !493, inlinedAt: !525)
!525 = distinct !DILocation(line: 122, column: 8, scope: !489)
!526 = !DILocation(line: 363, column: 16, scope: !493, inlinedAt: !525)
!527 = !DILocation(line: 122, column: 8, scope: !489)
!528 = !DILocation(line: 122, column: 6, scope: !489)
!529 = !DILocation(line: 123, column: 18, scope: !489)
!530 = !DILocation(line: 0, scope: !493, inlinedAt: !531)
!531 = distinct !DILocation(line: 123, column: 13, scope: !489)
!532 = !DILocation(line: 363, column: 16, scope: !493, inlinedAt: !531)
!533 = !DILocation(line: 363, column: 10, scope: !493, inlinedAt: !531)
!534 = !DILocation(line: 126, column: 2, scope: !374)
!535 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !455)
!536 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !455)
!537 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !455)
!538 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !455)
!539 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !455)
!540 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !455)
!541 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !455)
!542 = !DILocation(line: 141, column: 19, scope: !374)
!543 = !DILocation(line: 141, column: 14, scope: !374)
!544 = !DILocation(line: 143, column: 2, scope: !374)
!545 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !453)
!546 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !453)
!547 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !453)
!548 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !453)
!549 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !453)
!550 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !453)
!551 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !453)
!552 = !DILocation(line: 155, column: 9, scope: !374)
!553 = !DILocation(line: 157, column: 33, scope: !374)
!554 = !DILocation(line: 157, column: 15, scope: !374)
!555 = !DILocation(line: 157, column: 10, scope: !374)
!556 = !DILocation(line: 157, column: 8, scope: !374)
!557 = !DILocation(line: 164, column: 5, scope: !374)
!558 = !DILocation(line: 0, scope: !269, inlinedAt: !559)
!559 = distinct !DILocation(line: 159, column: 2, scope: !374)
!560 = !DILocation(line: 52, column: 19, scope: !290, inlinedAt: !559)
!561 = !DILocation(line: 52, column: 3, scope: !291, inlinedAt: !559)
!562 = !DILocation(line: 163, column: 5, scope: !374)
!563 = !DILocation(line: 0, scope: !295, inlinedAt: !559)
!564 = !DILocation(line: 0, scope: !296, inlinedAt: !559)
!565 = !DILocation(line: 53, column: 9, scope: !332, inlinedAt: !559)
!566 = !DILocation(line: 53, column: 7, scope: !297, inlinedAt: !559)
!567 = !DILocation(line: 56, column: 4, scope: !296, inlinedAt: !559)
!568 = !DILocation(line: 0, scope: !336, inlinedAt: !559)
!569 = !DILocation(line: 57, column: 10, scope: !338, inlinedAt: !559)
!570 = !DILocation(line: 57, column: 8, scope: !336, inlinedAt: !559)
!571 = !DILocation(line: 60, column: 50, scope: !336, inlinedAt: !559)
!572 = !DILocation(line: 60, column: 31, scope: !336, inlinedAt: !559)
!573 = !DILocation(line: 60, column: 25, scope: !336, inlinedAt: !559)
!574 = !DILocation(line: 60, column: 5, scope: !336, inlinedAt: !559)
!575 = !DILocation(line: 60, column: 29, scope: !336, inlinedAt: !559)
!576 = !DILocation(line: 56, column: 35, scope: !295, inlinedAt: !559)
!577 = !DILocation(line: 56, column: 41, scope: !295, inlinedAt: !559)
!578 = distinct !{!578, !567, !579}
!579 = !DILocation(line: 61, column: 4, scope: !296, inlinedAt: !559)
!580 = !DILocation(line: 52, column: 34, scope: !290, inlinedAt: !559)
!581 = !DILocation(line: 52, column: 40, scope: !290, inlinedAt: !559)
!582 = distinct !{!582, !561, !583}
!583 = !DILocation(line: 62, column: 3, scope: !291, inlinedAt: !559)
!584 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !449)
!585 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !449)
!586 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !449)
!587 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !449)
!588 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !449)
!589 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !449)
!590 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !449)
!591 = !DILocation(line: 179, column: 13, scope: !374)
!592 = !DILocation(line: 182, column: 29, scope: !374)
!593 = !DILocation(line: 182, column: 10, scope: !374)
!594 = !DILocation(line: 182, column: 8, scope: !374)
!595 = !DILocation(line: 183, column: 10, scope: !374)
!596 = !DILocation(line: 183, column: 8, scope: !374)
!597 = !DILocation(line: 184, column: 29, scope: !374)
!598 = !DILocation(line: 184, column: 10, scope: !374)
!599 = !DILocation(line: 184, column: 8, scope: !374)
!600 = !DILocation(line: 185, column: 10, scope: !374)
!601 = !DILocation(line: 185, column: 8, scope: !374)
!602 = !DILocation(line: 188, column: 7, scope: !374)
!603 = !DILocation(line: 188, column: 5, scope: !374)
!604 = !DILocation(line: 189, column: 10, scope: !374)
!605 = !DILocation(line: 189, column: 8, scope: !374)
!606 = !DILocation(line: 190, column: 10, scope: !374)
!607 = !DILocation(line: 190, column: 8, scope: !374)
!608 = !DILocation(line: 191, column: 10, scope: !374)
!609 = !DILocation(line: 191, column: 8, scope: !374)
!610 = !DILocation(line: 194, column: 10, scope: !374)
!611 = !DILocation(line: 194, column: 8, scope: !374)
!612 = !DILocation(line: 198, column: 16, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 198, column: 5)
!614 = distinct !DILexicalBlock(scope: !374, file: !1, line: 198, column: 5)
!615 = !DILocation(line: 198, column: 5, scope: !614)
!616 = !DILocation(line: 200, column: 18, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !1, line: 198, column: 26)
!618 = !DILocation(line: 199, column: 17, scope: !617)
!619 = !DILocation(line: 199, column: 9, scope: !617)
!620 = !DILocation(line: 199, column: 15, scope: !617)
!621 = !DILocation(line: 200, column: 17, scope: !617)
!622 = !DILocation(line: 200, column: 9, scope: !617)
!623 = !DILocation(line: 200, column: 15, scope: !617)
!624 = distinct !{!624, !615, !625, !626}
!625 = !DILocation(line: 201, column: 5, scope: !614)
!626 = !{!"llvm.loop.isvectorized", i32 1}
!627 = !DILocation(line: 203, column: 16, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !1, line: 203, column: 5)
!629 = distinct !DILexicalBlock(scope: !374, file: !1, line: 203, column: 5)
!630 = !DILocation(line: 203, column: 5, scope: !629)
!631 = !DILocation(line: 205, column: 18, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !1, line: 203, column: 26)
!633 = !DILocation(line: 204, column: 17, scope: !632)
!634 = !DILocation(line: 204, column: 9, scope: !632)
!635 = !DILocation(line: 204, column: 15, scope: !632)
!636 = !DILocation(line: 205, column: 17, scope: !632)
!637 = !DILocation(line: 205, column: 9, scope: !632)
!638 = !DILocation(line: 205, column: 15, scope: !632)
!639 = distinct !{!639, !630, !640, !626}
!640 = !DILocation(line: 206, column: 5, scope: !629)
!641 = distinct !{!641, !615, !625, !642, !626}
!642 = !{!"llvm.loop.unroll.runtime.disable"}
!643 = distinct !{!643, !630, !640, !642, !626}
!644 = !DILocation(line: 208, column: 14, scope: !374)
!645 = !DILocation(line: 209, column: 18, scope: !374)
!646 = !DILocation(line: 209, column: 16, scope: !374)
!647 = !DILocation(line: 209, column: 5, scope: !374)
!648 = !DILocation(line: 209, column: 14, scope: !374)
!649 = !DILocation(line: 210, column: 14, scope: !374)
!650 = !DILocation(line: 211, column: 18, scope: !374)
!651 = !DILocation(line: 211, column: 16, scope: !374)
!652 = !DILocation(line: 211, column: 5, scope: !374)
!653 = !DILocation(line: 211, column: 14, scope: !374)
!654 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !447)
!655 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !447)
!656 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !447)
!657 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !447)
!658 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !447)
!659 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !447)
!660 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !447)
!661 = !DILocation(line: 220, column: 13, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 220, column: 2)
!663 = distinct !DILexicalBlock(scope: !374, file: !1, line: 220, column: 2)
!664 = !DILocation(line: 220, column: 2, scope: !663)
!665 = !DILocation(line: 221, column: 18, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !1, line: 220, column: 23)
!667 = !DILocation(line: 221, column: 26, scope: !666)
!668 = !DILocation(line: 221, column: 14, scope: !666)
!669 = !DILocation(line: 221, column: 12, scope: !666)
!670 = !DILocation(line: 220, column: 19, scope: !662)
!671 = distinct !{!671, !664, !672}
!672 = !DILocation(line: 222, column: 5, scope: !663)
!673 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !445)
!674 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !445)
!675 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !445)
!676 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !445)
!677 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !445)
!678 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !445)
!679 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !445)
!680 = !DILocation(line: 233, column: 22, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !1, line: 233, column: 5)
!682 = distinct !DILexicalBlock(scope: !374, file: !1, line: 233, column: 5)
!683 = !DILocation(line: 233, column: 5, scope: !682)
!684 = !DILocation(line: 0, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 241, column: 9)
!686 = distinct !DILexicalBlock(scope: !687, file: !1, line: 241, column: 9)
!687 = distinct !DILexicalBlock(scope: !681, file: !1, line: 233, column: 37)
!688 = !DILocation(line: 0, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !1, line: 242, column: 13)
!690 = distinct !DILexicalBlock(scope: !691, file: !1, line: 242, column: 13)
!691 = distinct !DILexicalBlock(scope: !685, file: !1, line: 241, column: 32)
!692 = !DILocation(line: 0, scope: !687)
!693 = !DILocation(line: 241, column: 9, scope: !686)
!694 = !DILocation(line: 0, scope: !695)
!695 = distinct !DILexicalBlock(scope: !689, file: !1, line: 242, column: 36)
!696 = !DILocation(line: 242, column: 13, scope: !690)
!697 = !DILocation(line: 243, column: 37, scope: !695)
!698 = !DILocation(line: 243, column: 33, scope: !695)
!699 = !DILocation(line: 243, column: 25, scope: !695)
!700 = !DILocation(line: 244, column: 22, scope: !695)
!701 = !DILocation(line: 245, column: 28, scope: !695)
!702 = !DILocation(line: 245, column: 22, scope: !695)
!703 = !DILocation(line: 242, column: 32, scope: !689)
!704 = !DILocation(line: 242, column: 25, scope: !689)
!705 = distinct !{!705, !696, !706}
!706 = !DILocation(line: 246, column: 13, scope: !690)
!707 = !DILocation(line: 241, column: 28, scope: !685)
!708 = !DILocation(line: 241, column: 21, scope: !685)
!709 = distinct !{!709, !693, !710}
!710 = !DILocation(line: 247, column: 9, scope: !686)
!711 = !DILocation(line: 240, column: 7, scope: !687)
!712 = !DILocation(line: 239, column: 12, scope: !687)
!713 = !DILocation(line: 248, column: 23, scope: !687)
!714 = !DILocation(line: 249, column: 25, scope: !687)
!715 = !DILocation(line: 249, column: 43, scope: !687)
!716 = !DILocation(line: 249, column: 34, scope: !687)
!717 = !DILocation(line: 250, column: 26, scope: !687)
!718 = !DILocation(line: 250, column: 17, scope: !687)
!719 = !DILocation(line: 253, column: 3, scope: !687)
!720 = !{!721, !491, i64 16}
!721 = !{!"ident_t", !239, i64 0, !239, i64 4, !239, i64 8, !239, i64 12, !491, i64 16}
!722 = !DILocation(line: 295, column: 3, scope: !687)
!723 = !DILocation(line: 233, column: 34, scope: !681)
!724 = distinct !{!724, !683, !725}
!725 = !DILocation(line: 321, column: 2, scope: !682)
!726 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !443)
!727 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !443)
!728 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !443)
!729 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !443)
!730 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !443)
!731 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !443)
!732 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !443)
!733 = !DILocation(line: 332, column: 2, scope: !734)
!734 = distinct !DILexicalBlock(scope: !374, file: !1, line: 332, column: 2)
!735 = !DILocation(line: 333, column: 18, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 332, column: 23)
!737 = distinct !DILexicalBlock(scope: !734, file: !1, line: 332, column: 2)
!738 = !DILocation(line: 333, column: 14, scope: !736)
!739 = !DILocation(line: 333, column: 27, scope: !736)
!740 = !DILocation(line: 333, column: 3, scope: !736)
!741 = !DILocation(line: 333, column: 12, scope: !736)
!742 = !DILocation(line: 332, column: 19, scope: !737)
!743 = !DILocation(line: 332, column: 13, scope: !737)
!744 = distinct !{!744, !733, !745}
!745 = !DILocation(line: 334, column: 2, scope: !734)
!746 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !441)
!747 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !441)
!748 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !441)
!749 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !441)
!750 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !441)
!751 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !441)
!752 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !441)
!753 = !DILocation(line: 343, column: 9, scope: !374)
!754 = !DILocation(line: 344, column: 9, scope: !374)
!755 = !DILocation(line: 345, column: 9, scope: !374)
!756 = !DILocation(line: 342, column: 2, scope: !374)
!757 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !439)
!758 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !439)
!759 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !439)
!760 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !439)
!761 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !439)
!762 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !439)
!763 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !439)
!764 = !DILocation(line: 355, column: 2, scope: !374)
!765 = !DILocation(line: 356, column: 7, scope: !374)
!766 = !DILocation(line: 356, column: 2, scope: !374)
!767 = !DILocation(line: 358, column: 10, scope: !374)
!768 = !DILocation(line: 358, column: 5, scope: !374)
!769 = !DILocation(line: 358, column: 20, scope: !374)
!770 = !DILocation(line: 358, column: 15, scope: !374)
!771 = !DILocation(line: 358, column: 30, scope: !374)
!772 = !DILocation(line: 358, column: 25, scope: !374)
!773 = !DILocation(line: 358, column: 40, scope: !374)
!774 = !DILocation(line: 358, column: 35, scope: !374)
!775 = !DILocation(line: 359, column: 10, scope: !374)
!776 = !DILocation(line: 359, column: 5, scope: !374)
!777 = !DILocation(line: 359, column: 20, scope: !374)
!778 = !DILocation(line: 359, column: 15, scope: !374)
!779 = !DILocation(line: 359, column: 30, scope: !374)
!780 = !DILocation(line: 359, column: 25, scope: !374)
!781 = !DILocation(line: 359, column: 40, scope: !374)
!782 = !DILocation(line: 359, column: 35, scope: !374)
!783 = !DILocation(line: 360, column: 10, scope: !374)
!784 = !DILocation(line: 360, column: 5, scope: !374)
!785 = !DILocation(line: 6, column: 2, scope: !354, inlinedAt: !451)
!786 = !DILocation(line: 7, column: 2, scope: !354, inlinedAt: !451)
!787 = !DILocation(line: 8, column: 13, scope: !354, inlinedAt: !451)
!788 = !DILocation(line: 8, column: 20, scope: !354, inlinedAt: !451)
!789 = !DILocation(line: 8, column: 36, scope: !354, inlinedAt: !451)
!790 = !DILocation(line: 8, column: 31, scope: !354, inlinedAt: !451)
!791 = !DILocation(line: 9, column: 1, scope: !354, inlinedAt: !451)
!792 = !DILocation(line: 368, column: 2, scope: !374)
!793 = !DILocation(line: 369, column: 72, scope: !374)
!794 = !DILocation(line: 369, column: 58, scope: !374)
!795 = !DILocation(line: 369, column: 80, scope: !374)
!796 = !DILocation(line: 369, column: 130, scope: !374)
!797 = !DILocation(line: 369, column: 115, scope: !374)
!798 = !DILocation(line: 369, column: 113, scope: !374)
!799 = !DILocation(line: 369, column: 138, scope: !374)
!800 = !DILocation(line: 369, column: 91, scope: !374)
!801 = !DILocation(line: 369, column: 2, scope: !374)
!802 = !DILocation(line: 370, column: 77, scope: !374)
!803 = !DILocation(line: 370, column: 63, scope: !374)
!804 = !DILocation(line: 370, column: 85, scope: !374)
!805 = !DILocation(line: 370, column: 118, scope: !374)
!806 = !DILocation(line: 370, column: 143, scope: !374)
!807 = !DILocation(line: 370, column: 96, scope: !374)
!808 = !DILocation(line: 370, column: 2, scope: !374)
!809 = !DILocation(line: 371, column: 74, scope: !374)
!810 = !DILocation(line: 371, column: 60, scope: !374)
!811 = !DILocation(line: 371, column: 82, scope: !374)
!812 = !DILocation(line: 371, column: 115, scope: !374)
!813 = !DILocation(line: 371, column: 140, scope: !374)
!814 = !DILocation(line: 371, column: 93, scope: !374)
!815 = !DILocation(line: 371, column: 2, scope: !374)
!816 = !DILocation(line: 372, column: 70, scope: !374)
!817 = !DILocation(line: 372, column: 56, scope: !374)
!818 = !DILocation(line: 372, column: 78, scope: !374)
!819 = !DILocation(line: 372, column: 111, scope: !374)
!820 = !DILocation(line: 372, column: 136, scope: !374)
!821 = !DILocation(line: 372, column: 89, scope: !374)
!822 = !DILocation(line: 372, column: 2, scope: !374)
!823 = !DILocation(line: 373, column: 76, scope: !374)
!824 = !DILocation(line: 373, column: 62, scope: !374)
!825 = !DILocation(line: 373, column: 84, scope: !374)
!826 = !DILocation(line: 373, column: 117, scope: !374)
!827 = !DILocation(line: 373, column: 142, scope: !374)
!828 = !DILocation(line: 373, column: 95, scope: !374)
!829 = !DILocation(line: 373, column: 2, scope: !374)
!830 = !DILocation(line: 374, column: 70, scope: !374)
!831 = !DILocation(line: 374, column: 56, scope: !374)
!832 = !DILocation(line: 374, column: 78, scope: !374)
!833 = !DILocation(line: 374, column: 111, scope: !374)
!834 = !DILocation(line: 374, column: 136, scope: !374)
!835 = !DILocation(line: 374, column: 89, scope: !374)
!836 = !DILocation(line: 374, column: 2, scope: !374)
!837 = !DILocation(line: 375, column: 67, scope: !374)
!838 = !DILocation(line: 375, column: 53, scope: !374)
!839 = !DILocation(line: 375, column: 75, scope: !374)
!840 = !DILocation(line: 375, column: 108, scope: !374)
!841 = !DILocation(line: 375, column: 133, scope: !374)
!842 = !DILocation(line: 375, column: 86, scope: !374)
!843 = !DILocation(line: 375, column: 2, scope: !374)
!844 = !DILocation(line: 376, column: 71, scope: !374)
!845 = !DILocation(line: 376, column: 57, scope: !374)
!846 = !DILocation(line: 376, column: 79, scope: !374)
!847 = !DILocation(line: 376, column: 112, scope: !374)
!848 = !DILocation(line: 376, column: 137, scope: !374)
!849 = !DILocation(line: 376, column: 90, scope: !374)
!850 = !DILocation(line: 376, column: 2, scope: !374)
!851 = !DILocation(line: 377, column: 75, scope: !374)
!852 = !DILocation(line: 377, column: 61, scope: !374)
!853 = !DILocation(line: 377, column: 83, scope: !374)
!854 = !DILocation(line: 377, column: 116, scope: !374)
!855 = !DILocation(line: 377, column: 141, scope: !374)
!856 = !DILocation(line: 377, column: 94, scope: !374)
!857 = !DILocation(line: 377, column: 2, scope: !374)
!858 = !DILocation(line: 378, column: 70, scope: !374)
!859 = !DILocation(line: 378, column: 55, scope: !374)
!860 = !DILocation(line: 378, column: 78, scope: !374)
!861 = !DILocation(line: 378, column: 112, scope: !374)
!862 = !DILocation(line: 378, column: 137, scope: !374)
!863 = !DILocation(line: 378, column: 89, scope: !374)
!864 = !DILocation(line: 378, column: 2, scope: !374)
!865 = !DILocation(line: 379, column: 2, scope: !374)
!866 = !DILocation(line: 380, column: 66, scope: !374)
!867 = !DILocation(line: 380, column: 43, scope: !374)
!868 = !DILocation(line: 380, column: 2, scope: !374)
!869 = !DILocation(line: 386, column: 1, scope: !374)
!870 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 254, type: !871, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !881)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !873, !873, !877, !877, !878, !878, !879, !878, !879, !878, !879, !878, !879, !880, !878}
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!877 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !37, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !86, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !410, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !69, size: 64)
!881 = !{!882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896}
!882 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !870, type: !873, flags: DIFlagArtificial)
!883 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !870, type: !873, flags: DIFlagArtificial)
!884 = !DILocalVariable(name: "Nc", arg: 3, scope: !870, type: !877, flags: DIFlagArtificial)
!885 = !DILocalVariable(name: "Nr", arg: 4, scope: !870, type: !877, flags: DIFlagArtificial)
!886 = !DILocalVariable(name: "image", arg: 5, scope: !870, type: !878, flags: DIFlagArtificial)
!887 = !DILocalVariable(name: "dN", arg: 6, scope: !870, type: !878, flags: DIFlagArtificial)
!888 = !DILocalVariable(name: "iN", arg: 7, scope: !870, type: !879, flags: DIFlagArtificial)
!889 = !DILocalVariable(name: "dS", arg: 8, scope: !870, type: !878, flags: DIFlagArtificial)
!890 = !DILocalVariable(name: "iS", arg: 9, scope: !870, type: !879, flags: DIFlagArtificial)
!891 = !DILocalVariable(name: "dW", arg: 10, scope: !870, type: !878, flags: DIFlagArtificial)
!892 = !DILocalVariable(name: "jW", arg: 11, scope: !870, type: !879, flags: DIFlagArtificial)
!893 = !DILocalVariable(name: "dE", arg: 12, scope: !870, type: !878, flags: DIFlagArtificial)
!894 = !DILocalVariable(name: "jE", arg: 13, scope: !870, type: !879, flags: DIFlagArtificial)
!895 = !DILocalVariable(name: "q0sqr", arg: 14, scope: !870, type: !880, flags: DIFlagArtificial)
!896 = !DILocalVariable(name: "c", arg: 15, scope: !870, type: !878, flags: DIFlagArtificial)
!897 = !DILocation(line: 0, scope: !870)
!898 = !{!899}
!899 = distinct !{!899, !900, !".omp_outlined._debug__: argument 0"}
!900 = distinct !{!900, !".omp_outlined._debug__"}
!901 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !902, type: !873, flags: DIFlagArtificial)
!902 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 254, type: !871, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !903)
!903 = !{!901, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !919, !920, !921, !922, !923, !924, !925, !920, !926, !927, !928, !929, !930, !931, !932, !920}
!904 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !902, type: !873, flags: DIFlagArtificial)
!905 = !DILocalVariable(name: "Nc", arg: 3, scope: !902, file: !1, line: 69, type: !877)
!906 = !DILocalVariable(name: "Nr", arg: 4, scope: !902, file: !1, line: 69, type: !877)
!907 = !DILocalVariable(name: "image", arg: 5, scope: !902, file: !1, line: 68, type: !878)
!908 = !DILocalVariable(name: "dN", arg: 6, scope: !902, file: !1, line: 90, type: !878)
!909 = !DILocalVariable(name: "iN", arg: 7, scope: !902, file: !1, line: 84, type: !879)
!910 = !DILocalVariable(name: "dS", arg: 8, scope: !902, file: !1, line: 90, type: !878)
!911 = !DILocalVariable(name: "iS", arg: 9, scope: !902, file: !1, line: 84, type: !879)
!912 = !DILocalVariable(name: "dW", arg: 10, scope: !902, file: !1, line: 90, type: !878)
!913 = !DILocalVariable(name: "jW", arg: 11, scope: !902, file: !1, line: 84, type: !879)
!914 = !DILocalVariable(name: "dE", arg: 12, scope: !902, file: !1, line: 90, type: !878)
!915 = !DILocalVariable(name: "jE", arg: 13, scope: !902, file: !1, line: 84, type: !879)
!916 = !DILocalVariable(name: "q0sqr", arg: 14, scope: !902, file: !1, line: 81, type: !880)
!917 = !DILocalVariable(name: "c", arg: 15, scope: !902, file: !1, line: 97, type: !878)
!918 = !DILocalVariable(name: ".omp.iv", scope: !902, type: !37, flags: DIFlagArtificial)
!919 = !DILocalVariable(name: ".capture_expr.", scope: !902, type: !37, flags: DIFlagArtificial)
!920 = !DILocalVariable(name: "j", scope: !902, type: !37, flags: DIFlagArtificial)
!921 = !DILocalVariable(name: ".omp.lb", scope: !902, type: !37, flags: DIFlagArtificial)
!922 = !DILocalVariable(name: ".omp.ub", scope: !902, type: !37, flags: DIFlagArtificial)
!923 = !DILocalVariable(name: ".omp.stride", scope: !902, type: !37, flags: DIFlagArtificial)
!924 = !DILocalVariable(name: ".omp.is_last", scope: !902, type: !5, flags: DIFlagArtificial)
!925 = !DILocalVariable(name: "i", scope: !902, type: !37, flags: DIFlagArtificial)
!926 = !DILocalVariable(name: "k", scope: !902, type: !37, flags: DIFlagArtificial)
!927 = !DILocalVariable(name: "Jc", scope: !902, type: !69, flags: DIFlagArtificial)
!928 = !DILocalVariable(name: "G2", scope: !902, type: !69, flags: DIFlagArtificial)
!929 = !DILocalVariable(name: "L", scope: !902, type: !69, flags: DIFlagArtificial)
!930 = !DILocalVariable(name: "num", scope: !902, type: !69, flags: DIFlagArtificial)
!931 = !DILocalVariable(name: "den", scope: !902, type: !69, flags: DIFlagArtificial)
!932 = !DILocalVariable(name: "qsqr", scope: !902, type: !69, flags: DIFlagArtificial)
!933 = !DILocation(line: 0, scope: !902, inlinedAt: !934)
!934 = distinct !DILocation(line: 254, column: 3, scope: !870)
!935 = !DILocation(line: 254, column: 15, scope: !902, inlinedAt: !934)
!936 = !DILocation(line: 254, column: 3, scope: !902, inlinedAt: !934)
!937 = !DILocation(line: 254, column: 8, scope: !902, inlinedAt: !934)
!938 = !DILocation(line: 0, scope: !939, inlinedAt: !934)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 256, column: 13)
!940 = distinct !DILexicalBlock(scope: !941, file: !1, line: 256, column: 13)
!941 = distinct !DILexicalBlock(scope: !902, file: !1, line: 254, column: 24)
!942 = !DILocation(line: 0, scope: !943, inlinedAt: !934)
!943 = distinct !DILexicalBlock(scope: !939, file: !1, line: 256, column: 34)
!944 = !DILocation(line: 256, column: 13, scope: !940, inlinedAt: !934)
!945 = !DILocation(line: 259, column: 23, scope: !943, inlinedAt: !934)
!946 = !DILocation(line: 260, column: 22, scope: !943, inlinedAt: !934)
!947 = !DILocation(line: 263, column: 31, scope: !943, inlinedAt: !934)
!948 = !DILocation(line: 263, column: 37, scope: !943, inlinedAt: !934)
!949 = !DILocation(line: 263, column: 25, scope: !943, inlinedAt: !934)
!950 = !DILocation(line: 263, column: 45, scope: !943, inlinedAt: !934)
!951 = !DILocation(line: 263, column: 17, scope: !943, inlinedAt: !934)
!952 = !DILocation(line: 263, column: 23, scope: !943, inlinedAt: !934)
!953 = !DILocation(line: 264, column: 31, scope: !943, inlinedAt: !934)
!954 = !DILocation(line: 264, column: 37, scope: !943, inlinedAt: !934)
!955 = !DILocation(line: 264, column: 25, scope: !943, inlinedAt: !934)
!956 = !DILocation(line: 264, column: 45, scope: !943, inlinedAt: !934)
!957 = !DILocation(line: 264, column: 17, scope: !943, inlinedAt: !934)
!958 = !DILocation(line: 264, column: 23, scope: !943, inlinedAt: !934)
!959 = !DILocation(line: 265, column: 33, scope: !943, inlinedAt: !934)
!960 = !DILocation(line: 265, column: 25, scope: !943, inlinedAt: !934)
!961 = !DILocation(line: 265, column: 45, scope: !943, inlinedAt: !934)
!962 = !DILocation(line: 265, column: 17, scope: !943, inlinedAt: !934)
!963 = !DILocation(line: 265, column: 23, scope: !943, inlinedAt: !934)
!964 = !DILocation(line: 266, column: 33, scope: !943, inlinedAt: !934)
!965 = !DILocation(line: 266, column: 25, scope: !943, inlinedAt: !934)
!966 = !DILocation(line: 266, column: 45, scope: !943, inlinedAt: !934)
!967 = !DILocation(line: 266, column: 17, scope: !943, inlinedAt: !934)
!968 = !DILocation(line: 266, column: 23, scope: !943, inlinedAt: !934)
!969 = !DILocation(line: 269, column: 23, scope: !943, inlinedAt: !934)
!970 = !DILocation(line: 269, column: 28, scope: !943, inlinedAt: !934)
!971 = !DILocation(line: 269, column: 37, scope: !943, inlinedAt: !934)
!972 = !DILocation(line: 269, column: 42, scope: !943, inlinedAt: !934)
!973 = !DILocation(line: 269, column: 35, scope: !943, inlinedAt: !934)
!974 = !DILocation(line: 270, column: 23, scope: !943, inlinedAt: !934)
!975 = !DILocation(line: 270, column: 28, scope: !943, inlinedAt: !934)
!976 = !DILocation(line: 270, column: 21, scope: !943, inlinedAt: !934)
!977 = !DILocation(line: 270, column: 42, scope: !943, inlinedAt: !934)
!978 = !DILocation(line: 270, column: 35, scope: !943, inlinedAt: !934)
!979 = !DILocation(line: 270, column: 55, scope: !943, inlinedAt: !934)
!980 = !DILocation(line: 270, column: 50, scope: !943, inlinedAt: !934)
!981 = !DILocation(line: 273, column: 28, scope: !943, inlinedAt: !934)
!982 = !DILocation(line: 273, column: 36, scope: !943, inlinedAt: !934)
!983 = !DILocation(line: 273, column: 44, scope: !943, inlinedAt: !934)
!984 = !DILocation(line: 273, column: 53, scope: !943, inlinedAt: !934)
!985 = !DILocation(line: 276, column: 29, scope: !943, inlinedAt: !934)
!986 = !DILocation(line: 276, column: 28, scope: !943, inlinedAt: !934)
!987 = !DILocation(line: 276, column: 49, scope: !943, inlinedAt: !934)
!988 = !DILocation(line: 276, column: 47, scope: !943, inlinedAt: !934)
!989 = !DILocation(line: 276, column: 46, scope: !943, inlinedAt: !934)
!990 = !DILocation(line: 276, column: 33, scope: !943, inlinedAt: !934)
!991 = !DILocation(line: 276, column: 24, scope: !943, inlinedAt: !934)
!992 = !DILocation(line: 277, column: 33, scope: !943, inlinedAt: !934)
!993 = !DILocation(line: 277, column: 32, scope: !943, inlinedAt: !934)
!994 = !DILocation(line: 277, column: 26, scope: !943, inlinedAt: !934)
!995 = !DILocation(line: 277, column: 24, scope: !943, inlinedAt: !934)
!996 = !DILocation(line: 278, column: 32, scope: !943, inlinedAt: !934)
!997 = !DILocation(line: 278, column: 27, scope: !943, inlinedAt: !934)
!998 = !DILocation(line: 281, column: 29, scope: !943, inlinedAt: !934)
!999 = !DILocation(line: 281, column: 28, scope: !943, inlinedAt: !934)
!1000 = !DILocation(line: 281, column: 49, scope: !943, inlinedAt: !934)
!1001 = !DILocation(line: 281, column: 45, scope: !943, inlinedAt: !934)
!1002 = !DILocation(line: 281, column: 36, scope: !943, inlinedAt: !934)
!1003 = !DILocation(line: 282, column: 35, scope: !943, inlinedAt: !934)
!1004 = !DILocation(line: 282, column: 34, scope: !943, inlinedAt: !934)
!1005 = !DILocation(line: 282, column: 28, scope: !943, inlinedAt: !934)
!1006 = !DILocation(line: 282, column: 24, scope: !943, inlinedAt: !934)
!1007 = !DILocation(line: 282, column: 17, scope: !943, inlinedAt: !934)
!1008 = !DILocation(line: 282, column: 22, scope: !943, inlinedAt: !934)
!1009 = !DILocation(line: 285, column: 26, scope: !1010, inlinedAt: !934)
!1010 = distinct !DILexicalBlock(scope: !943, file: !1, line: 285, column: 21)
!1011 = !DILocation(line: 285, column: 21, scope: !943, inlinedAt: !934)
!1012 = !DILocation(line: 287, column: 31, scope: !1013, inlinedAt: !934)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 287, column: 26)
!1014 = !DILocation(line: 287, column: 26, scope: !1010, inlinedAt: !934)
!1015 = !DILocation(line: 0, scope: !1010, inlinedAt: !934)
!1016 = !DILocation(line: 256, column: 30, scope: !939, inlinedAt: !934)
!1017 = !DILocation(line: 256, column: 24, scope: !939, inlinedAt: !934)
!1018 = distinct !{!1018, !944, !1019}
!1019 = !DILocation(line: 290, column: 13, scope: !940, inlinedAt: !934)
!1020 = distinct !{!1020, !1021, !1022}
!1021 = !DILocation(line: 253, column: 3, scope: !902, inlinedAt: !934)
!1022 = !DILocation(line: 253, column: 128, scope: !902, inlinedAt: !934)
!1023 = !DILocation(line: 292, column: 9, scope: !902, inlinedAt: !934)
!1024 = !DILocation(line: 254, column: 3, scope: !870)
!1025 = !{!1026}
!1026 = !{i64 2, i64 -1, i64 -1, i1 true}
!1027 = distinct !DISubprogram(name: ".omp_outlined..14", scope: !1, file: !1, line: 296, type: !1028, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !873, !873, !877, !877, !878, !879, !879, !878, !878, !878, !878, !878, !880}
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043}
!1031 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !1027, type: !873, flags: DIFlagArtificial)
!1032 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !1027, type: !873, flags: DIFlagArtificial)
!1033 = !DILocalVariable(name: "Nc", arg: 3, scope: !1027, type: !877, flags: DIFlagArtificial)
!1034 = !DILocalVariable(name: "Nr", arg: 4, scope: !1027, type: !877, flags: DIFlagArtificial)
!1035 = !DILocalVariable(name: "c", arg: 5, scope: !1027, type: !878, flags: DIFlagArtificial)
!1036 = !DILocalVariable(name: "iS", arg: 6, scope: !1027, type: !879, flags: DIFlagArtificial)
!1037 = !DILocalVariable(name: "jE", arg: 7, scope: !1027, type: !879, flags: DIFlagArtificial)
!1038 = !DILocalVariable(name: "dN", arg: 8, scope: !1027, type: !878, flags: DIFlagArtificial)
!1039 = !DILocalVariable(name: "dS", arg: 9, scope: !1027, type: !878, flags: DIFlagArtificial)
!1040 = !DILocalVariable(name: "dW", arg: 10, scope: !1027, type: !878, flags: DIFlagArtificial)
!1041 = !DILocalVariable(name: "dE", arg: 11, scope: !1027, type: !878, flags: DIFlagArtificial)
!1042 = !DILocalVariable(name: "image", arg: 12, scope: !1027, type: !878, flags: DIFlagArtificial)
!1043 = !DILocalVariable(name: "lambda", arg: 13, scope: !1027, type: !880, flags: DIFlagArtificial)
!1044 = !DILocation(line: 0, scope: !1027)
!1045 = !{!1046}
!1046 = distinct !{!1046, !1047, !".omp_outlined._debug__.13: argument 0"}
!1047 = distinct !{!1047, !".omp_outlined._debug__.13"}
!1048 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !1049, type: !873, flags: DIFlagArtificial)
!1049 = distinct !DISubprogram(name: ".omp_outlined._debug__.13", scope: !1, file: !1, line: 296, type: !1028, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1050)
!1050 = !{!1048, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1065, !1071, !1072, !1073, !1074, !1075, !1076, !1065}
!1051 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !1049, type: !873, flags: DIFlagArtificial)
!1052 = !DILocalVariable(name: "Nc", arg: 3, scope: !1049, file: !1, line: 69, type: !877)
!1053 = !DILocalVariable(name: "Nr", arg: 4, scope: !1049, file: !1, line: 69, type: !877)
!1054 = !DILocalVariable(name: "c", arg: 5, scope: !1049, file: !1, line: 97, type: !878)
!1055 = !DILocalVariable(name: "iS", arg: 6, scope: !1049, file: !1, line: 84, type: !879)
!1056 = !DILocalVariable(name: "jE", arg: 7, scope: !1049, file: !1, line: 84, type: !879)
!1057 = !DILocalVariable(name: "dN", arg: 8, scope: !1049, file: !1, line: 90, type: !878)
!1058 = !DILocalVariable(name: "dS", arg: 9, scope: !1049, file: !1, line: 90, type: !878)
!1059 = !DILocalVariable(name: "dW", arg: 10, scope: !1049, file: !1, line: 90, type: !878)
!1060 = !DILocalVariable(name: "dE", arg: 11, scope: !1049, file: !1, line: 90, type: !878)
!1061 = !DILocalVariable(name: "image", arg: 12, scope: !1049, file: !1, line: 68, type: !878)
!1062 = !DILocalVariable(name: "lambda", arg: 13, scope: !1049, file: !1, line: 74, type: !880)
!1063 = !DILocalVariable(name: ".omp.iv", scope: !1049, type: !37, flags: DIFlagArtificial)
!1064 = !DILocalVariable(name: ".capture_expr.", scope: !1049, type: !37, flags: DIFlagArtificial)
!1065 = !DILocalVariable(name: "j", scope: !1049, type: !37, flags: DIFlagArtificial)
!1066 = !DILocalVariable(name: ".omp.lb", scope: !1049, type: !37, flags: DIFlagArtificial)
!1067 = !DILocalVariable(name: ".omp.ub", scope: !1049, type: !37, flags: DIFlagArtificial)
!1068 = !DILocalVariable(name: ".omp.stride", scope: !1049, type: !37, flags: DIFlagArtificial)
!1069 = !DILocalVariable(name: ".omp.is_last", scope: !1049, type: !5, flags: DIFlagArtificial)
!1070 = !DILocalVariable(name: "i", scope: !1049, type: !37, flags: DIFlagArtificial)
!1071 = !DILocalVariable(name: "k", scope: !1049, type: !37, flags: DIFlagArtificial)
!1072 = !DILocalVariable(name: "D", scope: !1049, type: !69, flags: DIFlagArtificial)
!1073 = !DILocalVariable(name: "cS", scope: !1049, type: !69, flags: DIFlagArtificial)
!1074 = !DILocalVariable(name: "cN", scope: !1049, type: !69, flags: DIFlagArtificial)
!1075 = !DILocalVariable(name: "cW", scope: !1049, type: !69, flags: DIFlagArtificial)
!1076 = !DILocalVariable(name: "cE", scope: !1049, type: !69, flags: DIFlagArtificial)
!1077 = !DILocation(line: 0, scope: !1049, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 296, column: 9, scope: !1027)
!1079 = !DILocation(line: 296, column: 21, scope: !1049, inlinedAt: !1078)
!1080 = !DILocation(line: 296, column: 9, scope: !1049, inlinedAt: !1078)
!1081 = !DILocation(line: 296, column: 14, scope: !1049, inlinedAt: !1078)
!1082 = !DILocation(line: 0, scope: !1083, inlinedAt: !1078)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 300, column: 13)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 300, column: 13)
!1085 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 296, column: 30)
!1086 = !DILocation(line: 0, scope: !1087, inlinedAt: !1078)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 300, column: 34)
!1088 = !DILocation(line: 300, column: 13, scope: !1084, inlinedAt: !1078)
!1089 = !DILocation(line: 303, column: 23, scope: !1087, inlinedAt: !1078)
!1090 = !DILocation(line: 306, column: 22, scope: !1087, inlinedAt: !1078)
!1091 = !DILocation(line: 307, column: 24, scope: !1087, inlinedAt: !1078)
!1092 = !DILocation(line: 307, column: 30, scope: !1087, inlinedAt: !1078)
!1093 = !DILocation(line: 307, column: 22, scope: !1087, inlinedAt: !1078)
!1094 = !DILocation(line: 309, column: 26, scope: !1087, inlinedAt: !1078)
!1095 = !DILocation(line: 309, column: 22, scope: !1087, inlinedAt: !1078)
!1096 = !DILocation(line: 312, column: 24, scope: !1087, inlinedAt: !1078)
!1097 = !DILocation(line: 312, column: 23, scope: !1087, inlinedAt: !1078)
!1098 = !DILocation(line: 312, column: 35, scope: !1087, inlinedAt: !1078)
!1099 = !DILocation(line: 312, column: 34, scope: !1087, inlinedAt: !1078)
!1100 = !DILocation(line: 312, column: 30, scope: !1087, inlinedAt: !1078)
!1101 = !DILocation(line: 312, column: 46, scope: !1087, inlinedAt: !1078)
!1102 = !DILocation(line: 312, column: 45, scope: !1087, inlinedAt: !1078)
!1103 = !DILocation(line: 312, column: 41, scope: !1087, inlinedAt: !1078)
!1104 = !DILocation(line: 312, column: 57, scope: !1087, inlinedAt: !1078)
!1105 = !DILocation(line: 312, column: 56, scope: !1087, inlinedAt: !1078)
!1106 = !DILocation(line: 312, column: 52, scope: !1087, inlinedAt: !1078)
!1107 = !DILocation(line: 315, column: 28, scope: !1087, inlinedAt: !1078)
!1108 = !DILocation(line: 315, column: 44, scope: !1087, inlinedAt: !1078)
!1109 = !DILocation(line: 315, column: 43, scope: !1087, inlinedAt: !1078)
!1110 = !DILocation(line: 315, column: 51, scope: !1087, inlinedAt: !1078)
!1111 = !DILocation(line: 315, column: 50, scope: !1087, inlinedAt: !1078)
!1112 = !DILocation(line: 315, column: 37, scope: !1087, inlinedAt: !1078)
!1113 = !DILocation(line: 315, column: 26, scope: !1087, inlinedAt: !1078)
!1114 = !DILocation(line: 300, column: 30, scope: !1083, inlinedAt: !1078)
!1115 = !DILocation(line: 300, column: 24, scope: !1083, inlinedAt: !1078)
!1116 = distinct !{!1116, !1088, !1117}
!1117 = !DILocation(line: 317, column: 13, scope: !1084, inlinedAt: !1078)
!1118 = distinct !{!1118, !1119, !1120}
!1119 = !DILocation(line: 295, column: 3, scope: !1049, inlinedAt: !1078)
!1120 = !DILocation(line: 295, column: 96, scope: !1049, inlinedAt: !1078)
!1121 = !DILocation(line: 319, column: 9, scope: !1049, inlinedAt: !1078)
!1122 = !DILocation(line: 296, column: 9, scope: !1027)
