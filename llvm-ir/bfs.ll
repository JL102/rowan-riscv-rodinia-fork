; ModuleID = 'bfs.cpp'
source_filename = "bfs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.Node = type { i32, i32 }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [38 x i8] c"Usage: %s <num_threads> <input_file>\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@fp = dso_local local_unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !0
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [26 x i8] c";bfs.cpp;BFSGraph;135;5;;\00", align 1
@2 = private unnamed_addr constant [27 x i8] c";bfs.cpp;BFSGraph;135;30;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [26 x i8] c";bfs.cpp;BFSGraph;157;5;;\00", align 1
@5 = private unnamed_addr constant [27 x i8] c";bfs.cpp;BFSGraph;157;29;;\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Compute time: %lf\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"result.txt\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@str = private unnamed_addr constant [13 x i8] c"Reading File\00", align 1
@str.15 = private unnamed_addr constant [25 x i8] c"Error Reading graph file\00", align 1
@str.16 = private unnamed_addr constant [26 x i8] c"Start traversing the tree\00", align 1
@str.17 = private unnamed_addr constant [28 x i8] c"Result stored in result.txt\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z5UsageiPPc(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !671 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !673, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i8** %1, metadata !674, metadata !DIExpression()), !dbg !675
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !676, !tbaa !677
  %4 = load i8*, i8** %1, align 8, !dbg !681, !tbaa !677
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %4) #11, !dbg !682
  ret void, !dbg !683
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #2 !dbg !684 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !688, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8** %1, metadata !689, metadata !DIExpression()), !dbg !690
  tail call void @_Z8BFSGraphiPPc(i32 %0, i8** %1), !dbg !691
  ret i32 0, !dbg !692
}

; Function Attrs: uwtable
define dso_local void @_Z8BFSGraphiPPc(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #3 !dbg !693 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8, align 1
  %17 = alloca %struct.ident_t, align 8
  %18 = bitcast %struct.ident_t* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %18, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 24, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !695, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8** %1, metadata !696, metadata !DIExpression()), !dbg !725
  %19 = bitcast i32* %3 to i8*, !dbg !726
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !726
  call void @llvm.dbg.value(metadata i32 0, metadata !697, metadata !DIExpression()), !dbg !725
  store i32 0, i32* %3, align 4, !dbg !727, !tbaa !728
  %20 = bitcast i32* %4 to i8*, !dbg !730
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #12, !dbg !730
  call void @llvm.dbg.value(metadata i32 0, metadata !698, metadata !DIExpression()), !dbg !725
  store i32 0, i32* %4, align 4, !dbg !731, !tbaa !728
  %21 = icmp eq i32 %0, 3, !dbg !732
  br i1 %21, label %23, label %22, !dbg !734

22:                                               ; preds = %2
  tail call void @_Z5UsageiPPc(i32 undef, i8** %1), !dbg !735
  tail call void @exit(i32 0) #13, !dbg !737
  unreachable, !dbg !737

23:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32 undef, metadata !700, metadata !DIExpression()), !dbg !725
  %24 = getelementptr inbounds i8*, i8** %1, i64 2, !dbg !738
  %25 = load i8*, i8** %24, align 8, !dbg !738, !tbaa !677
  call void @llvm.dbg.value(metadata i8* %25, metadata !699, metadata !DIExpression()), !dbg !725
  %26 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str, i64 0, i64 0)), !dbg !739
  %27 = tail call %struct._IO_FILE* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !740
  store %struct._IO_FILE* %27, %struct._IO_FILE** @fp, align 8, !dbg !741, !tbaa !677
  %28 = icmp eq %struct._IO_FILE* %27, null, !dbg !742
  br i1 %28, label %29, label %31, !dbg !744

29:                                               ; preds = %23
  %30 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.15, i64 0, i64 0)), !dbg !745
  br label %234, !dbg !747

31:                                               ; preds = %23
  %32 = bitcast i32* %5 to i8*, !dbg !748
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #12, !dbg !748
  call void @llvm.dbg.value(metadata i32 0, metadata !701, metadata !DIExpression()), !dbg !725
  store i32 0, i32* %5, align 4, !dbg !749, !tbaa !728
  call void @llvm.dbg.value(metadata i32* %3, metadata !697, metadata !DIExpression(DW_OP_deref)), !dbg !725
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* nonnull %3), !dbg !750
  %34 = bitcast %struct.Node** %6 to i8*, !dbg !751
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #12, !dbg !751
  %35 = load i32, i32* %3, align 4, !dbg !752, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %35, metadata !697, metadata !DIExpression()), !dbg !725
  %36 = sext i32 %35 to i64, !dbg !752
  %37 = shl nsw i64 %36, 3, !dbg !753
  %38 = call noalias i8* @malloc(i64 %37) #12, !dbg !754
  call void @llvm.dbg.value(metadata i8* %38, metadata !702, metadata !DIExpression()), !dbg !725
  %39 = bitcast %struct.Node** %6 to i8**, !dbg !755
  store i8* %38, i8** %39, align 8, !dbg !755, !tbaa !677
  %40 = bitcast i8** %7 to i8*, !dbg !756
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #12, !dbg !756
  call void @llvm.dbg.value(metadata i32 %35, metadata !697, metadata !DIExpression()), !dbg !725
  %41 = call noalias i8* @malloc(i64 %36) #12, !dbg !757
  call void @llvm.dbg.value(metadata i8* %41, metadata !703, metadata !DIExpression()), !dbg !725
  store i8* %41, i8** %7, align 8, !dbg !758, !tbaa !677
  %42 = bitcast i8** %8 to i8*, !dbg !759
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #12, !dbg !759
  call void @llvm.dbg.value(metadata i32 %35, metadata !697, metadata !DIExpression()), !dbg !725
  %43 = call noalias i8* @malloc(i64 %36) #12, !dbg !760
  call void @llvm.dbg.value(metadata i8* %43, metadata !704, metadata !DIExpression()), !dbg !725
  store i8* %43, i8** %8, align 8, !dbg !761, !tbaa !677
  %44 = bitcast i8** %9 to i8*, !dbg !762
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #12, !dbg !762
  call void @llvm.dbg.value(metadata i32 %35, metadata !697, metadata !DIExpression()), !dbg !725
  %45 = call noalias i8* @malloc(i64 %36) #12, !dbg !763
  call void @llvm.dbg.value(metadata i8* %45, metadata !705, metadata !DIExpression()), !dbg !725
  store i8* %45, i8** %9, align 8, !dbg !764, !tbaa !677
  %46 = bitcast i32* %10 to i8*, !dbg !765
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %46) #12, !dbg !765
  %47 = bitcast i32* %11 to i8*, !dbg !765
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47) #12, !dbg !765
  call void @llvm.dbg.value(metadata i32 0, metadata !708, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i32 %35, metadata !697, metadata !DIExpression()), !dbg !725
  %48 = icmp eq i32 %35, 0, !dbg !767
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !dbg !725, !tbaa !677
  br i1 %48, label %50, label %71, !dbg !769

50:                                               ; preds = %71, %31
  %51 = phi i8* [ %45, %31 ], [ %84, %71 ], !dbg !770
  %52 = phi i8* [ %41, %31 ], [ %80, %71 ], !dbg !771
  %53 = phi %struct._IO_FILE* [ %49, %31 ], [ %90, %71 ], !dbg !725
  call void @llvm.dbg.value(metadata i32* %5, metadata !701, metadata !DIExpression(DW_OP_deref)), !dbg !725
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* nonnull %5), !dbg !772
  call void @llvm.dbg.value(metadata i8* %52, metadata !703, metadata !DIExpression()), !dbg !725
  %55 = load i32, i32* %5, align 4, !dbg !773, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %55, metadata !701, metadata !DIExpression()), !dbg !725
  %56 = sext i32 %55 to i64, !dbg !771
  %57 = getelementptr inbounds i8, i8* %52, i64 %56, !dbg !771
  store i8 1, i8* %57, align 1, !dbg !774, !tbaa !775
  call void @llvm.dbg.value(metadata i8* %51, metadata !705, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 %55, metadata !701, metadata !DIExpression()), !dbg !725
  %58 = getelementptr inbounds i8, i8* %51, i64 %56, !dbg !770
  store i8 1, i8* %58, align 1, !dbg !777, !tbaa !775
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !dbg !778, !tbaa !677
  call void @llvm.dbg.value(metadata i32* %4, metadata !698, metadata !DIExpression(DW_OP_deref)), !dbg !725
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* nonnull %4), !dbg !779
  %61 = bitcast i32* %12 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %61) #12, !dbg !780
  %62 = bitcast i32* %13 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %62) #12, !dbg !780
  %63 = bitcast i32** %14 to i8*, !dbg !781
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #12, !dbg !781
  %64 = load i32, i32* %4, align 4, !dbg !782, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %64, metadata !698, metadata !DIExpression()), !dbg !725
  %65 = sext i32 %64 to i64, !dbg !782
  %66 = shl nsw i64 %65, 2, !dbg !783
  %67 = call noalias i8* @malloc(i64 %66) #12, !dbg !784
  call void @llvm.dbg.value(metadata i8* %67, metadata !712, metadata !DIExpression()), !dbg !725
  %68 = bitcast i32** %14 to i8**, !dbg !785
  store i8* %67, i8** %68, align 8, !dbg !785, !tbaa !677
  call void @llvm.dbg.value(metadata i32 0, metadata !713, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i32 %64, metadata !698, metadata !DIExpression()), !dbg !725
  %69 = icmp sgt i32 %64, 0, !dbg !787
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !dbg !725, !tbaa !677
  br i1 %69, label %94, label %91, !dbg !789

71:                                               ; preds = %31, %71
  %72 = phi i64 [ %86, %71 ], [ 0, %31 ]
  %73 = phi %struct._IO_FILE* [ %90, %71 ], [ %49, %31 ]
  call void @llvm.dbg.value(metadata i64 %72, metadata !708, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i32* %10, metadata !706, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata i32* %11, metadata !707, metadata !DIExpression(DW_OP_deref)), !dbg !725
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11), !dbg !790
  %75 = load i32, i32* %10, align 4, !dbg !792, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %75, metadata !706, metadata !DIExpression()), !dbg !725
  %76 = load %struct.Node*, %struct.Node** %6, align 8, !dbg !793, !tbaa !677
  call void @llvm.dbg.value(metadata %struct.Node* %76, metadata !702, metadata !DIExpression()), !dbg !725
  %77 = getelementptr inbounds %struct.Node, %struct.Node* %76, i64 %72, i32 0, !dbg !794
  store i32 %75, i32* %77, align 4, !dbg !795, !tbaa !796
  %78 = load i32, i32* %11, align 4, !dbg !798, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %78, metadata !707, metadata !DIExpression()), !dbg !725
  %79 = getelementptr inbounds %struct.Node, %struct.Node* %76, i64 %72, i32 1, !dbg !799
  store i32 %78, i32* %79, align 4, !dbg !800, !tbaa !801
  %80 = load i8*, i8** %7, align 8, !dbg !802, !tbaa !677
  call void @llvm.dbg.value(metadata i8* %80, metadata !703, metadata !DIExpression()), !dbg !725
  %81 = getelementptr inbounds i8, i8* %80, i64 %72, !dbg !802
  store i8 0, i8* %81, align 1, !dbg !803, !tbaa !775
  %82 = load i8*, i8** %8, align 8, !dbg !804, !tbaa !677
  call void @llvm.dbg.value(metadata i8* %82, metadata !704, metadata !DIExpression()), !dbg !725
  %83 = getelementptr inbounds i8, i8* %82, i64 %72, !dbg !804
  store i8 0, i8* %83, align 1, !dbg !805, !tbaa !775
  %84 = load i8*, i8** %9, align 8, !dbg !806, !tbaa !677
  call void @llvm.dbg.value(metadata i8* %84, metadata !705, metadata !DIExpression()), !dbg !725
  %85 = getelementptr inbounds i8, i8* %84, i64 %72, !dbg !806
  store i8 0, i8* %85, align 1, !dbg !807, !tbaa !775
  %86 = add nuw nsw i64 %72, 1, !dbg !808
  call void @llvm.dbg.value(metadata i64 %86, metadata !708, metadata !DIExpression()), !dbg !766
  %87 = load i32, i32* %3, align 4, !dbg !809, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %87, metadata !697, metadata !DIExpression()), !dbg !725
  %88 = zext i32 %87 to i64, !dbg !767
  %89 = icmp ult i64 %86, %88, !dbg !767
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !dbg !725, !tbaa !677
  br i1 %89, label %71, label %50, !dbg !769, !llvm.loop !810

91:                                               ; preds = %94, %50
  %92 = phi %struct._IO_FILE* [ %70, %50 ], [ %107, %94 ], !dbg !725
  %93 = icmp eq %struct._IO_FILE* %92, null, !dbg !812
  br i1 %93, label %110, label %108, !dbg !814

94:                                               ; preds = %50, %94
  %95 = phi i64 [ %103, %94 ], [ 0, %50 ]
  %96 = phi %struct._IO_FILE* [ %107, %94 ], [ %70, %50 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !713, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i32* %12, metadata !710, metadata !DIExpression(DW_OP_deref)), !dbg !725
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* nonnull %12), !dbg !815
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !dbg !817, !tbaa !677
  call void @llvm.dbg.value(metadata i32* %13, metadata !711, metadata !DIExpression(DW_OP_deref)), !dbg !725
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* nonnull %13), !dbg !818
  %100 = load i32, i32* %12, align 4, !dbg !819, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %100, metadata !710, metadata !DIExpression()), !dbg !725
  %101 = load i32*, i32** %14, align 8, !dbg !820, !tbaa !677
  call void @llvm.dbg.value(metadata i32* %101, metadata !712, metadata !DIExpression()), !dbg !725
  %102 = getelementptr inbounds i32, i32* %101, i64 %95, !dbg !820
  store i32 %100, i32* %102, align 4, !dbg !821, !tbaa !728
  %103 = add nuw nsw i64 %95, 1, !dbg !822
  call void @llvm.dbg.value(metadata i64 %103, metadata !713, metadata !DIExpression()), !dbg !786
  %104 = load i32, i32* %4, align 4, !dbg !823, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %104, metadata !698, metadata !DIExpression()), !dbg !725
  %105 = sext i32 %104 to i64, !dbg !787
  %106 = icmp slt i64 %103, %105, !dbg !787
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !dbg !725, !tbaa !677
  br i1 %106, label %94, label %91, !dbg !789, !llvm.loop !824

108:                                              ; preds = %91
  %109 = call i32 @fclose(%struct._IO_FILE* nonnull %92), !dbg !826
  br label %110, !dbg !826

110:                                              ; preds = %91, %108
  %111 = bitcast i32** %15 to i8*, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %111) #12, !dbg !827
  %112 = load i32, i32* %3, align 4, !dbg !828, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %112, metadata !697, metadata !DIExpression()), !dbg !725
  %113 = sext i32 %112 to i64, !dbg !828
  %114 = shl nsw i64 %113, 2, !dbg !829
  %115 = call noalias i8* @malloc(i64 %114) #12, !dbg !830
  call void @llvm.dbg.value(metadata i8* %115, metadata !715, metadata !DIExpression()), !dbg !725
  %116 = bitcast i32** %15 to i8**, !dbg !831
  store i8* %115, i8** %116, align 8, !dbg !831, !tbaa !677
  call void @llvm.dbg.value(metadata i32 0, metadata !716, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata i32 %112, metadata !697, metadata !DIExpression()), !dbg !725
  %117 = icmp sgt i32 %112, 0, !dbg !833
  %118 = bitcast i8* %115 to i32*, !dbg !725
  call void @llvm.dbg.value(metadata i32* %118, metadata !715, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32* %118, metadata !715, metadata !DIExpression()), !dbg !725
  br i1 %117, label %119, label %192, !dbg !835

119:                                              ; preds = %110
  %120 = icmp ult i32 %112, 8, !dbg !835
  br i1 %120, label %121, label %123, !dbg !835

121:                                              ; preds = %190, %119
  %122 = phi i64 [ 0, %119 ], [ %124, %190 ]
  br label %199, !dbg !835

123:                                              ; preds = %119
  %124 = and i64 %113, -8, !dbg !835
  %125 = add nsw i64 %124, -8, !dbg !835
  %126 = lshr exact i64 %125, 3, !dbg !835
  %127 = add nuw nsw i64 %126, 1, !dbg !835
  %128 = and i64 %127, 7, !dbg !835
  %129 = icmp ult i64 %125, 56, !dbg !835
  br i1 %129, label %177, label %130, !dbg !835

130:                                              ; preds = %123
  %131 = sub nsw i64 %127, %128, !dbg !835
  br label %132, !dbg !835

132:                                              ; preds = %132, %130
  %133 = phi i64 [ 0, %130 ], [ %174, %132 ], !dbg !836
  %134 = phi i64 [ %131, %130 ], [ %175, %132 ]
  %135 = getelementptr inbounds i32, i32* %118, i64 %133, !dbg !837
  %136 = bitcast i32* %135 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %136, align 4, !dbg !838, !tbaa !728
  %137 = getelementptr inbounds i32, i32* %135, i64 4, !dbg !838
  %138 = bitcast i32* %137 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %138, align 4, !dbg !838, !tbaa !728
  %139 = or i64 %133, 8, !dbg !836
  %140 = getelementptr inbounds i32, i32* %118, i64 %139, !dbg !837
  %141 = bitcast i32* %140 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %141, align 4, !dbg !838, !tbaa !728
  %142 = getelementptr inbounds i32, i32* %140, i64 4, !dbg !838
  %143 = bitcast i32* %142 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %143, align 4, !dbg !838, !tbaa !728
  %144 = or i64 %133, 16, !dbg !836
  %145 = getelementptr inbounds i32, i32* %118, i64 %144, !dbg !837
  %146 = bitcast i32* %145 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %146, align 4, !dbg !838, !tbaa !728
  %147 = getelementptr inbounds i32, i32* %145, i64 4, !dbg !838
  %148 = bitcast i32* %147 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %148, align 4, !dbg !838, !tbaa !728
  %149 = or i64 %133, 24, !dbg !836
  %150 = getelementptr inbounds i32, i32* %118, i64 %149, !dbg !837
  %151 = bitcast i32* %150 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %151, align 4, !dbg !838, !tbaa !728
  %152 = getelementptr inbounds i32, i32* %150, i64 4, !dbg !838
  %153 = bitcast i32* %152 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %153, align 4, !dbg !838, !tbaa !728
  %154 = or i64 %133, 32, !dbg !836
  %155 = getelementptr inbounds i32, i32* %118, i64 %154, !dbg !837
  %156 = bitcast i32* %155 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %156, align 4, !dbg !838, !tbaa !728
  %157 = getelementptr inbounds i32, i32* %155, i64 4, !dbg !838
  %158 = bitcast i32* %157 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %158, align 4, !dbg !838, !tbaa !728
  %159 = or i64 %133, 40, !dbg !836
  %160 = getelementptr inbounds i32, i32* %118, i64 %159, !dbg !837
  %161 = bitcast i32* %160 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %161, align 4, !dbg !838, !tbaa !728
  %162 = getelementptr inbounds i32, i32* %160, i64 4, !dbg !838
  %163 = bitcast i32* %162 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %163, align 4, !dbg !838, !tbaa !728
  %164 = or i64 %133, 48, !dbg !836
  %165 = getelementptr inbounds i32, i32* %118, i64 %164, !dbg !837
  %166 = bitcast i32* %165 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %166, align 4, !dbg !838, !tbaa !728
  %167 = getelementptr inbounds i32, i32* %165, i64 4, !dbg !838
  %168 = bitcast i32* %167 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %168, align 4, !dbg !838, !tbaa !728
  %169 = or i64 %133, 56, !dbg !836
  %170 = getelementptr inbounds i32, i32* %118, i64 %169, !dbg !837
  %171 = bitcast i32* %170 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %171, align 4, !dbg !838, !tbaa !728
  %172 = getelementptr inbounds i32, i32* %170, i64 4, !dbg !838
  %173 = bitcast i32* %172 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %173, align 4, !dbg !838, !tbaa !728
  %174 = add i64 %133, 64, !dbg !836
  %175 = add i64 %134, -8, !dbg !836
  %176 = icmp eq i64 %175, 0, !dbg !836
  br i1 %176, label %177, label %132, !dbg !836, !llvm.loop !839

177:                                              ; preds = %132, %123
  %178 = phi i64 [ 0, %123 ], [ %174, %132 ]
  %179 = icmp eq i64 %128, 0, !dbg !836
  br i1 %179, label %190, label %180, !dbg !836

180:                                              ; preds = %177, %180
  %181 = phi i64 [ %187, %180 ], [ %178, %177 ], !dbg !836
  %182 = phi i64 [ %188, %180 ], [ %128, %177 ]
  %183 = getelementptr inbounds i32, i32* %118, i64 %181, !dbg !837
  %184 = bitcast i32* %183 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %184, align 4, !dbg !838, !tbaa !728
  %185 = getelementptr inbounds i32, i32* %183, i64 4, !dbg !838
  %186 = bitcast i32* %185 to <4 x i32>*, !dbg !838
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, <4 x i32>* %186, align 4, !dbg !838, !tbaa !728
  %187 = add i64 %181, 8, !dbg !836
  %188 = add i64 %182, -1, !dbg !836
  %189 = icmp eq i64 %188, 0, !dbg !836
  br i1 %189, label %190, label %180, !dbg !836, !llvm.loop !842

190:                                              ; preds = %180, %177
  %191 = icmp eq i64 %124, %113, !dbg !835
  br i1 %191, label %192, label %121, !dbg !835

192:                                              ; preds = %199, %190, %110
  %193 = load i32, i32* %5, align 4, !dbg !844, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %193, metadata !701, metadata !DIExpression()), !dbg !725
  %194 = sext i32 %193 to i64, !dbg !845
  %195 = getelementptr inbounds i32, i32* %118, i64 %194, !dbg !845
  store i32 0, i32* %195, align 4, !dbg !846, !tbaa !728
  %196 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.16, i64 0, i64 0)), !dbg !847
  call void @llvm.dbg.value(metadata i32 0, metadata !718, metadata !DIExpression()), !dbg !725
  %197 = call double @omp_get_wtime(), !dbg !848
  call void @llvm.dbg.value(metadata double %197, metadata !719, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %16) #12, !dbg !849
  %198 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %17, i64 0, i32 4, !dbg !850
  br label %204, !dbg !852

199:                                              ; preds = %121, %199
  %200 = phi i64 [ %202, %199 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata i64 %200, metadata !716, metadata !DIExpression()), !dbg !832
  %201 = getelementptr inbounds i32, i32* %118, i64 %200, !dbg !837
  store i32 -1, i32* %201, align 4, !dbg !838, !tbaa !728
  %202 = add nuw nsw i64 %200, 1, !dbg !836
  call void @llvm.dbg.value(metadata i64 %202, metadata !716, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata i32 %112, metadata !697, metadata !DIExpression()), !dbg !725
  %203 = icmp slt i64 %202, %113, !dbg !833
  call void @llvm.dbg.value(metadata i32* %118, metadata !715, metadata !DIExpression()), !dbg !725
  br i1 %203, label %199, label %192, !dbg !835, !llvm.loop !853

204:                                              ; preds = %204, %192
  call void @llvm.dbg.value(metadata i32 undef, metadata !718, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 0, metadata !720, metadata !DIExpression()), !dbg !725
  store i8 0, i8* %16, align 1, !dbg !855, !tbaa !775
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1, i64 0, i64 0), i8** %198, align 8, !dbg !856, !tbaa !857
  call void @llvm.dbg.value(metadata i32* %3, metadata !697, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata %struct.Node** %6, metadata !702, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata i8** %7, metadata !703, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata i8** %8, metadata !704, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata i8** %9, metadata !705, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata i32** %14, metadata !712, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata i32** %15, metadata !715, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %17, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8**, %struct.Node**, i32**, i8**, i32**, i8**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, i8** nonnull %7, %struct.Node** nonnull %6, i32** nonnull %14, i8** nonnull %9, i32** nonnull %15, i8** nonnull %8), !dbg !856
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i64 0, i64 0), i8** %198, align 8, !dbg !859, !tbaa !857
  call void @llvm.dbg.value(metadata i32* %3, metadata !697, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata i8** %7, metadata !703, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata i8** %8, metadata !704, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata i8** %9, metadata !705, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void @llvm.dbg.value(metadata i8* %16, metadata !720, metadata !DIExpression(DW_OP_deref)), !dbg !725
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %17, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i8**, i8**, i8**, i8*)* @.omp_outlined..9 to void (i32*, i32*, ...)*), i32* nonnull %3, i8** nonnull %8, i8** nonnull %7, i8** nonnull %9, i8* nonnull %16), !dbg !859
  call void @llvm.dbg.value(metadata i32 undef, metadata !718, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !725
  %205 = load i8, i8* %16, align 1, !dbg !860, !tbaa !775, !range !861
  call void @llvm.dbg.value(metadata i8 %205, metadata !720, metadata !DIExpression()), !dbg !725
  %206 = icmp eq i8 %205, 0, !dbg !860
  br i1 %206, label %207, label %204, !dbg !862, !llvm.loop !863

207:                                              ; preds = %204
  %208 = call double @omp_get_wtime(), !dbg !865
  call void @llvm.dbg.value(metadata double %208, metadata !721, metadata !DIExpression()), !dbg !725
  %209 = fsub double %208, %197, !dbg !866
  %210 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), double %209), !dbg !867
  %211 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)), !dbg !868
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %211, metadata !722, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 0, metadata !723, metadata !DIExpression()), !dbg !869
  %212 = load i32, i32* %3, align 4, !dbg !870, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %212, metadata !697, metadata !DIExpression()), !dbg !725
  %213 = icmp sgt i32 %212, 0, !dbg !872
  br i1 %213, label %223, label %214, !dbg !873

214:                                              ; preds = %223, %207
  %215 = call i32 @fclose(%struct._IO_FILE* %211), !dbg !874
  %216 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.17, i64 0, i64 0)), !dbg !875
  %217 = load i8*, i8** %39, align 8, !dbg !876, !tbaa !677
  call void @llvm.dbg.value(metadata %struct.Node* undef, metadata !702, metadata !DIExpression()), !dbg !725
  call void @free(i8* %217) #12, !dbg !877
  %218 = load i8*, i8** %68, align 8, !dbg !878, !tbaa !677
  call void @llvm.dbg.value(metadata i32* undef, metadata !712, metadata !DIExpression()), !dbg !725
  call void @free(i8* %218) #12, !dbg !879
  %219 = load i8*, i8** %7, align 8, !dbg !880, !tbaa !677
  call void @llvm.dbg.value(metadata i8* %219, metadata !703, metadata !DIExpression()), !dbg !725
  call void @free(i8* %219) #12, !dbg !881
  %220 = load i8*, i8** %8, align 8, !dbg !882, !tbaa !677
  call void @llvm.dbg.value(metadata i8* %220, metadata !704, metadata !DIExpression()), !dbg !725
  call void @free(i8* %220) #12, !dbg !883
  %221 = load i8*, i8** %9, align 8, !dbg !884, !tbaa !677
  call void @llvm.dbg.value(metadata i8* %221, metadata !705, metadata !DIExpression()), !dbg !725
  call void @free(i8* %221) #12, !dbg !885
  %222 = load i8*, i8** %116, align 8, !dbg !886, !tbaa !677
  call void @llvm.dbg.value(metadata i32* undef, metadata !715, metadata !DIExpression()), !dbg !725
  call void @free(i8* %222) #12, !dbg !887
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %16) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %111) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %62) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %61) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #12, !dbg !888
  br label %234, !dbg !888

223:                                              ; preds = %207, %223
  %224 = phi i64 [ %230, %223 ], [ 0, %207 ]
  call void @llvm.dbg.value(metadata i64 %224, metadata !723, metadata !DIExpression()), !dbg !869
  %225 = load i32*, i32** %15, align 8, !dbg !889, !tbaa !677
  call void @llvm.dbg.value(metadata i32* %225, metadata !715, metadata !DIExpression()), !dbg !725
  %226 = getelementptr inbounds i32, i32* %225, i64 %224, !dbg !889
  %227 = load i32, i32* %226, align 4, !dbg !889, !tbaa !728
  %228 = trunc i64 %224 to i32, !dbg !890
  %229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %228, i32 %227), !dbg !890
  %230 = add nuw nsw i64 %224, 1, !dbg !891
  call void @llvm.dbg.value(metadata i64 %230, metadata !723, metadata !DIExpression()), !dbg !869
  %231 = load i32, i32* %3, align 4, !dbg !870, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %231, metadata !697, metadata !DIExpression()), !dbg !725
  %232 = sext i32 %231 to i64, !dbg !872
  %233 = icmp slt i64 %230, %232, !dbg !872
  br i1 %233, label %223, label %214, !dbg !873, !llvm.loop !892

234:                                              ; preds = %214, %29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #12, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !888
  ret void, !dbg !888
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nounwind
declare !dbg !21 dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #1

declare !dbg !82 dso_local double @omp_get_wtime() local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, i8** nocapture readonly dereferenceable(8) %3, %struct.Node** nocapture readonly dereferenceable(8) %4, i32** nocapture readonly dereferenceable(8) %5, i8** nocapture readonly dereferenceable(8) %6, i32** nocapture readonly dereferenceable(8) %7, i8** nocapture readonly dereferenceable(8) %8) #7 !dbg !894 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !906, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i32* %1, metadata !907, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i32* %2, metadata !908, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i8** %3, metadata !909, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata %struct.Node** %4, metadata !910, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i32** %5, metadata !911, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i8** %6, metadata !912, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i32** %7, metadata !913, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i8** %8, metadata !914, metadata !DIExpression()), !dbg !915
  %15 = bitcast %struct.ident_t* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %15, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #12, !noalias !916
  call void @llvm.dbg.value(metadata i32* %0, metadata !919, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32* undef, metadata !922, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32* %2, metadata !923, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i8** %3, metadata !924, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata %struct.Node** %4, metadata !925, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32** %5, metadata !926, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i8** %6, metadata !927, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32** %7, metadata !928, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i8** %8, metadata !929, metadata !DIExpression()) #12, !dbg !945
  %16 = load i32, i32* %2, align 4, !dbg !947, !tbaa !728, !noalias !916
  call void @llvm.dbg.value(metadata i32 %16, metadata !931, metadata !DIExpression()) #12, !dbg !945
  %17 = add nsw i32 %16, -1, !dbg !948
  call void @llvm.dbg.value(metadata i32 %17, metadata !931, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32 0, metadata !932, metadata !DIExpression()) #12, !dbg !945
  %18 = icmp sgt i32 %16, 0, !dbg !948
  br i1 %18, label %19, label %86, !dbg !948

19:                                               ; preds = %9
  %20 = bitcast i32* %10 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #12, !dbg !948, !noalias !916
  call void @llvm.dbg.value(metadata i32 0, metadata !933, metadata !DIExpression()) #12, !dbg !945
  store i32 0, i32* %10, align 4, !dbg !949, !tbaa !728, !noalias !916
  %21 = bitcast i32* %11 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #12, !dbg !948, !noalias !916
  call void @llvm.dbg.value(metadata i32 %17, metadata !934, metadata !DIExpression()) #12, !dbg !945
  store i32 %17, i32* %11, align 4, !dbg !949, !tbaa !728, !noalias !916
  %22 = bitcast i32* %12 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #12, !dbg !948, !noalias !916
  call void @llvm.dbg.value(metadata i32 1, metadata !935, metadata !DIExpression()) #12, !dbg !945
  store i32 1, i32* %12, align 4, !dbg !949, !tbaa !728, !noalias !916
  %23 = bitcast i32* %13 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #12, !dbg !948, !noalias !916
  call void @llvm.dbg.value(metadata i32 0, metadata !936, metadata !DIExpression()) #12, !dbg !945
  store i32 0, i32* %13, align 4, !dbg !949, !tbaa !728, !noalias !916
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %14, i64 0, i32 4, !dbg !948
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1, i64 0, i64 0), i8** %24, align 8, !dbg !948, !tbaa !857, !noalias !916
  %25 = load i32, i32* %0, align 4, !dbg !948, !tbaa !728, !alias.scope !916
  call void @llvm.dbg.value(metadata i32* %10, metadata !933, metadata !DIExpression(DW_OP_deref)) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32* %11, metadata !934, metadata !DIExpression(DW_OP_deref)) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32* %12, metadata !935, metadata !DIExpression(DW_OP_deref)) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32* %13, metadata !936, metadata !DIExpression(DW_OP_deref)) #12, !dbg !945
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %14, i32 %25, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1) #12, !dbg !948, !noalias !916
  %26 = load i32, i32* %11, align 4, !dbg !949, !tbaa !728, !noalias !916
  call void @llvm.dbg.value(metadata i32 %26, metadata !934, metadata !DIExpression()) #12, !dbg !945
  %27 = icmp slt i32 %26, %16, !dbg !949
  %28 = select i1 %27, i32 %26, i32 %17, !dbg !949
  call void @llvm.dbg.value(metadata i32 %28, metadata !934, metadata !DIExpression()) #12, !dbg !945
  store i32 %28, i32* %11, align 4, !dbg !949, !tbaa !728, !noalias !916
  %29 = load i32, i32* %10, align 4, !dbg !949, !tbaa !728, !noalias !916
  call void @llvm.dbg.value(metadata i32 %29, metadata !933, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32 %29, metadata !930, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32 %28, metadata !934, metadata !DIExpression()) #12, !dbg !945
  %30 = icmp sgt i32 %29, %28, !dbg !948
  br i1 %30, label %85, label %31, !dbg !948

31:                                               ; preds = %19
  %32 = load i8*, i8** %3, align 8, !dbg !950, !tbaa !677, !noalias !916
  %33 = load %struct.Node*, %struct.Node** %4, align 8, !dbg !951, !noalias !916
  %34 = load i32*, i32** %5, align 8, !dbg !952, !noalias !916
  %35 = load i8*, i8** %6, align 8, !dbg !953, !noalias !916
  %36 = sext i32 %29 to i64, !dbg !948
  br label %37, !dbg !948

37:                                               ; preds = %80, %31
  %38 = phi i32 [ %81, %80 ], [ %28, %31 ]
  %39 = phi i64 [ %82, %80 ], [ %36, %31 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !930, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i64 %39, metadata !932, metadata !DIExpression()) #12, !dbg !945
  %40 = getelementptr inbounds i8, i8* %32, i64 %39, !dbg !955
  %41 = load i8, i8* %40, align 1, !dbg !955, !tbaa !775, !range !861, !noalias !916
  %42 = icmp eq i8 %41, 0, !dbg !955
  br i1 %42, label %80, label %43, !dbg !956

43:                                               ; preds = %37
  store i8 0, i8* %40, align 1, !dbg !957, !tbaa !775, !noalias !916
  %44 = getelementptr inbounds %struct.Node, %struct.Node* %33, i64 %39, i32 0, !dbg !958
  call void @llvm.dbg.value(metadata i32 undef, metadata !937, metadata !DIExpression()) #12, !dbg !951
  %45 = getelementptr inbounds %struct.Node, %struct.Node* %33, i64 %39, i32 1, !dbg !959
  %46 = load i32, i32* %45, align 4, !dbg !959, !tbaa !801, !noalias !916
  %47 = icmp sgt i32 %46, 0, !dbg !960
  br i1 %47, label %48, label %80, !dbg !961

48:                                               ; preds = %43
  %49 = load i32, i32* %44, align 4, !dbg !958, !tbaa !796, !noalias !916
  call void @llvm.dbg.value(metadata i32 %49, metadata !937, metadata !DIExpression()) #12, !dbg !951
  %50 = load i32*, i32** %7, align 8, !dbg !962, !noalias !916
  %51 = getelementptr inbounds i32, i32* %50, i64 %39, !dbg !962
  %52 = load i8*, i8** %8, align 8, !dbg !962, !noalias !916
  %53 = sext i32 %49 to i64, !dbg !961
  br label %54, !dbg !961

54:                                               ; preds = %71, %48
  %55 = phi i32 [ %49, %48 ], [ %72, %71 ]
  %56 = phi i32 [ %46, %48 ], [ %73, %71 ]
  %57 = phi i64 [ %53, %48 ], [ %74, %71 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !937, metadata !DIExpression()) #12, !dbg !951
  %58 = getelementptr inbounds i32, i32* %34, i64 %57, !dbg !964
  %59 = load i32, i32* %58, align 4, !dbg !964, !tbaa !728, !noalias !916
  call void @llvm.dbg.value(metadata i32 %59, metadata !942, metadata !DIExpression()) #12, !dbg !952
  %60 = sext i32 %59 to i64, !dbg !965
  %61 = getelementptr inbounds i8, i8* %35, i64 %60, !dbg !965
  %62 = load i8, i8* %61, align 1, !dbg !965, !tbaa !775, !range !861, !noalias !916
  %63 = icmp eq i8 %62, 0, !dbg !965
  br i1 %63, label %64, label %71, !dbg !966

64:                                               ; preds = %54
  %65 = load i32, i32* %51, align 4, !dbg !967, !tbaa !728, !noalias !916
  %66 = add nsw i32 %65, 1, !dbg !968
  %67 = getelementptr inbounds i32, i32* %50, i64 %60, !dbg !969
  store i32 %66, i32* %67, align 4, !dbg !970, !tbaa !728, !noalias !916
  %68 = getelementptr inbounds i8, i8* %52, i64 %60, !dbg !971
  store i8 1, i8* %68, align 1, !dbg !972, !tbaa !775, !noalias !916
  %69 = load i32, i32* %45, align 4, !dbg !959, !tbaa !801, !noalias !916
  %70 = load i32, i32* %44, align 4, !dbg !973, !tbaa !796, !noalias !916
  br label %71, !dbg !974

71:                                               ; preds = %64, %54
  %72 = phi i32 [ %55, %54 ], [ %70, %64 ], !dbg !973
  %73 = phi i32 [ %56, %54 ], [ %69, %64 ], !dbg !959
  %74 = add nsw i64 %57, 1, !dbg !975
  call void @llvm.dbg.value(metadata i64 %74, metadata !937, metadata !DIExpression()) #12, !dbg !951
  %75 = add nsw i32 %73, %72, !dbg !976
  %76 = sext i32 %75 to i64, !dbg !960
  %77 = icmp slt i64 %74, %76, !dbg !960
  br i1 %77, label %54, label %78, !dbg !961, !llvm.loop !977

78:                                               ; preds = %71
  %79 = load i32, i32* %11, align 4, !dbg !949, !tbaa !728, !noalias !916
  br label %80, !dbg !948

80:                                               ; preds = %78, %43, %37
  %81 = phi i32 [ %79, %78 ], [ %38, %43 ], [ %38, %37 ], !dbg !949
  %82 = add nsw i64 %39, 1, !dbg !948
  call void @llvm.dbg.value(metadata i64 %82, metadata !930, metadata !DIExpression()) #12, !dbg !945
  call void @llvm.dbg.value(metadata i32 %81, metadata !934, metadata !DIExpression()) #12, !dbg !945
  %83 = sext i32 %81 to i64, !dbg !948
  %84 = icmp slt i64 %39, %83, !dbg !948
  br i1 %84, label %37, label %85, !dbg !948, !llvm.loop !979

85:                                               ; preds = %80, %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2, i64 0, i64 0), i8** %24, align 8, !dbg !980, !tbaa !857, !noalias !916
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %14, i32 %25) #12, !dbg !980, !noalias !916
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #12, !dbg !980, !noalias !916
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #12, !dbg !980, !noalias !916
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #12, !dbg !980, !noalias !916
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #12, !dbg !980, !noalias !916
  br label %86, !dbg !980

86:                                               ; preds = %9, %85
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15), !dbg !982
  ret void, !dbg !983
}

declare !callback !984 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..9(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, i8** nocapture readonly dereferenceable(8) %3, i8** nocapture readonly dereferenceable(8) %4, i8** nocapture readonly dereferenceable(8) %5, i8* nocapture dereferenceable(1) %6) #7 !dbg !986 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !991, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i32* %1, metadata !992, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i32* %2, metadata !993, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8** %3, metadata !994, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8** %4, metadata !995, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8** %5, metadata !996, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8* %6, metadata !997, metadata !DIExpression()), !dbg !998
  %13 = bitcast %struct.ident_t* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %13, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #12, !noalias !999
  call void @llvm.dbg.value(metadata i32* %0, metadata !1002, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i32* undef, metadata !1005, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i32* %2, metadata !1006, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i8** %3, metadata !1007, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i8** %4, metadata !1008, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i8** %5, metadata !1009, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i8* %6, metadata !1010, metadata !DIExpression()) #12, !dbg !1018
  %14 = load i32, i32* %2, align 4, !dbg !1020, !tbaa !728, !noalias !999
  call void @llvm.dbg.value(metadata i32 %14, metadata !1012, metadata !DIExpression()) #12, !dbg !1018
  %15 = add nsw i32 %14, -1, !dbg !1021
  call void @llvm.dbg.value(metadata i32 %15, metadata !1012, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()) #12, !dbg !1018
  %16 = icmp sgt i32 %14, 0, !dbg !1021
  br i1 %16, label %17, label %47, !dbg !1021

17:                                               ; preds = %7
  %18 = bitcast i32* %8 to i8*, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #12, !dbg !1021, !noalias !999
  call void @llvm.dbg.value(metadata i32 0, metadata !1014, metadata !DIExpression()) #12, !dbg !1018
  store i32 0, i32* %8, align 4, !dbg !1022, !tbaa !728, !noalias !999
  %19 = bitcast i32* %9 to i8*, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1021, !noalias !999
  call void @llvm.dbg.value(metadata i32 %15, metadata !1015, metadata !DIExpression()) #12, !dbg !1018
  store i32 %15, i32* %9, align 4, !dbg !1022, !tbaa !728, !noalias !999
  %20 = bitcast i32* %10 to i8*, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #12, !dbg !1021, !noalias !999
  call void @llvm.dbg.value(metadata i32 1, metadata !1016, metadata !DIExpression()) #12, !dbg !1018
  store i32 1, i32* %10, align 4, !dbg !1022, !tbaa !728, !noalias !999
  %21 = bitcast i32* %11 to i8*, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #12, !dbg !1021, !noalias !999
  call void @llvm.dbg.value(metadata i32 0, metadata !1017, metadata !DIExpression()) #12, !dbg !1018
  store i32 0, i32* %11, align 4, !dbg !1022, !tbaa !728, !noalias !999
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %12, i64 0, i32 4, !dbg !1021
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i64 0, i64 0), i8** %22, align 8, !dbg !1021, !tbaa !857, !noalias !999
  %23 = load i32, i32* %0, align 4, !dbg !1021, !tbaa !728, !alias.scope !999
  call void @llvm.dbg.value(metadata i32* %8, metadata !1014, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i32* %9, metadata !1015, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i32* %10, metadata !1016, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i32* %11, metadata !1017, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1018
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %12, i32 %23, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1) #12, !dbg !1021, !noalias !999
  %24 = load i32, i32* %9, align 4, !dbg !1022, !tbaa !728, !noalias !999
  call void @llvm.dbg.value(metadata i32 %24, metadata !1015, metadata !DIExpression()) #12, !dbg !1018
  %25 = icmp slt i32 %24, %14, !dbg !1022
  %26 = select i1 %25, i32 %24, i32 %15, !dbg !1022
  call void @llvm.dbg.value(metadata i32 %26, metadata !1015, metadata !DIExpression()) #12, !dbg !1018
  store i32 %26, i32* %9, align 4, !dbg !1022, !tbaa !728, !noalias !999
  %27 = load i32, i32* %8, align 4, !dbg !1022, !tbaa !728, !noalias !999
  call void @llvm.dbg.value(metadata i32 %27, metadata !1014, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %27, metadata !1011, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %26, metadata !1015, metadata !DIExpression()) #12, !dbg !1018
  %28 = icmp sgt i32 %27, %26, !dbg !1021
  br i1 %28, label %46, label %29, !dbg !1021

29:                                               ; preds = %17
  %30 = load i8*, i8** %3, align 8, !dbg !1023, !tbaa !677, !noalias !999
  %31 = load i8*, i8** %4, align 8, !dbg !1026, !noalias !999
  %32 = load i8*, i8** %5, align 8, !dbg !1026, !noalias !999
  %33 = sext i32 %27 to i64, !dbg !1021
  %34 = sext i32 %26 to i64, !dbg !1021
  br label %35, !dbg !1021

35:                                               ; preds = %43, %29
  %36 = phi i64 [ %44, %43 ], [ %33, %29 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !1011, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %36, metadata !1013, metadata !DIExpression()) #12, !dbg !1018
  %37 = getelementptr inbounds i8, i8* %30, i64 %36, !dbg !1028
  %38 = load i8, i8* %37, align 1, !dbg !1028, !tbaa !775, !range !861, !noalias !999
  %39 = icmp eq i8 %38, 0, !dbg !1028
  br i1 %39, label %43, label %40, !dbg !1029

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, i8* %31, i64 %36, !dbg !1030
  store i8 1, i8* %41, align 1, !dbg !1031, !tbaa !775, !noalias !999
  %42 = getelementptr inbounds i8, i8* %32, i64 %36, !dbg !1032
  store i8 1, i8* %42, align 1, !dbg !1033, !tbaa !775, !noalias !999
  store i8 1, i8* %6, align 1, !dbg !1034, !tbaa !775, !noalias !999
  store i8 0, i8* %37, align 1, !dbg !1035, !tbaa !775, !noalias !999
  br label %43, !dbg !1036

43:                                               ; preds = %40, %35
  %44 = add nsw i64 %36, 1, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %44, metadata !1011, metadata !DIExpression()) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %26, metadata !1015, metadata !DIExpression()) #12, !dbg !1018
  %45 = icmp slt i64 %36, %34, !dbg !1021
  br i1 %45, label %35, label %46, !dbg !1021, !llvm.loop !1037

46:                                               ; preds = %43, %17
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @5, i64 0, i64 0), i8** %22, align 8, !dbg !1038, !tbaa !857, !noalias !999
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %12, i32 %23) #12, !dbg !1038, !noalias !999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #12, !dbg !1038, !noalias !999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #12, !dbg !1038, !noalias !999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12, !dbg !1038, !noalias !999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #12, !dbg !1038, !noalias !999
  br label %47, !dbg !1038

47:                                               ; preds = %7, %46
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13), !dbg !1040
  ret void, !dbg !1041
}

; Function Attrs: nounwind
declare !dbg !87 dso_local void @free(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #10

attributes #0 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!667, !668, !669}
!llvm.ident = !{!670}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fp", scope: !2, file: !3, line: 10, type: !664, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !91, imports: !92, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "bfs.cpp", directory: "/mnt/d/CLINIC-PROJECT/rodinia/openmp/bfs")
!4 = !{}
!5 = !{!6, !13, !18, !20, !21, !82, !87, !9, !10}
!6 = !DISubprogram(name: "BFSGraph", linkageName: "_Z8BFSGraphiPPc", scope: !3, file: !3, line: 19, type: !7, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !10}
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !3, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !15, identifier: "_ZTS4Node")
!15 = !{!16, !17}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "starting", scope: !14, file: !3, line: 15, baseType: !9, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "no_of_edges", scope: !14, file: !3, line: 16, baseType: !9, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!21 = !DISubprogram(name: "fclose", scope: !22, file: !22, line: 213, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!22 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!23 = !DISubroutineType(types: !24)
!24 = !{!9, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !27, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !28, identifier: "_ZTS8_IO_FILE")
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !44, !45, !46, !47, !51, !53, !55, !59, !62, !64, !67, !70, !71, !73, !77, !78}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !26, file: !27, line: 51, baseType: !9, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !26, file: !27, line: 54, baseType: !11, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !26, file: !27, line: 55, baseType: !11, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !26, file: !27, line: 56, baseType: !11, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !26, file: !27, line: 57, baseType: !11, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !26, file: !27, line: 58, baseType: !11, size: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !26, file: !27, line: 59, baseType: !11, size: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !26, file: !27, line: 60, baseType: !11, size: 64, offset: 448)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !26, file: !27, line: 61, baseType: !11, size: 64, offset: 512)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !26, file: !27, line: 64, baseType: !11, size: 64, offset: 576)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !26, file: !27, line: 65, baseType: !11, size: 64, offset: 640)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !26, file: !27, line: 66, baseType: !11, size: 64, offset: 704)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !26, file: !27, line: 68, baseType: !42, size: 64, offset: 768)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !27, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !26, file: !27, line: 70, baseType: !25, size: 64, offset: 832)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !26, file: !27, line: 72, baseType: !9, size: 32, offset: 896)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !26, file: !27, line: 73, baseType: !9, size: 32, offset: 928)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !26, file: !27, line: 74, baseType: !48, size: 64, offset: 960)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !49, line: 152, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!50 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !26, file: !27, line: 77, baseType: !52, size: 16, offset: 1024)
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !26, file: !27, line: 78, baseType: !54, size: 8, offset: 1040)
!54 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !26, file: !27, line: 79, baseType: !56, size: 8, offset: 1048)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !26, file: !27, line: 81, baseType: !60, size: 64, offset: 1088)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !27, line: 43, baseType: null)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !26, file: !27, line: 89, baseType: !63, size: 64, offset: 1152)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !49, line: 153, baseType: !50)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !26, file: !27, line: 91, baseType: !65, size: 64, offset: 1216)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !27, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !26, file: !27, line: 92, baseType: !68, size: 64, offset: 1280)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !27, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !26, file: !27, line: 93, baseType: !25, size: 64, offset: 1344)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !26, file: !27, line: 94, baseType: !72, size: 64, offset: 1408)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !26, file: !27, line: 95, baseType: !74, size: 64, offset: 1472)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !26, file: !27, line: 96, baseType: !9, size: 32, offset: 1536)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !26, file: !27, line: 98, baseType: !79, size: 160, offset: 1568)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 20)
!82 = !DISubprogram(name: "omp_get_wtime", scope: !83, file: !83, line: 128, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!83 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/omp.h", directory: "")
!84 = !DISubroutineType(types: !85)
!85 = !{!86}
!86 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!87 = !DISubprogram(name: "free", scope: !88, file: !88, line: 565, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!88 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!89 = !DISubroutineType(types: !90)
!90 = !{null, !72}
!91 = !{!0}
!92 = !{!93, !99, !105, !107, !109, !113, !115, !117, !119, !121, !123, !125, !127, !131, !135, !137, !139, !144, !146, !148, !150, !152, !154, !156, !159, !162, !164, !168, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !197, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !235, !239, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !265, !269, !273, !275, !277, !279, !284, !288, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !320, !324, !328, !330, !332, !334, !340, !344, !348, !350, !352, !354, !356, !358, !360, !364, !368, !370, !372, !374, !376, !380, !384, !388, !390, !392, !394, !396, !398, !400, !404, !408, !412, !414, !418, !422, !424, !426, !428, !430, !432, !434, !440, !445, !449, !455, !459, !464, !466, !469, !475, !479, !490, !494, !498, !502, !504, !508, !512, !516, !520, !524, !532, !536, !540, !542, !546, !550, !555, !560, !564, !568, !570, !578, !582, !589, !591, !595, !599, !603, !607, !612, !616, !620, !621, !622, !623, !625, !626, !627, !628, !629, !630, !631, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !95, file: !98, line: 52)
!94 = !DINamespace(name: "std", scope: null)
!95 = !DISubprogram(name: "abs", scope: !88, file: !88, line: 840, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!96 = !DISubroutineType(types: !97)
!97 = !{!9, !9}
!98 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/std_abs.h", directory: "")
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !100, file: !104, line: 83)
!100 = !DISubprogram(name: "acos", scope: !101, file: !101, line: 53, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "")
!102 = !DISubroutineType(types: !103)
!103 = !{!86, !86}
!104 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cmath", directory: "")
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !106, file: !104, line: 102)
!106 = !DISubprogram(name: "asin", scope: !101, file: !101, line: 55, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !108, file: !104, line: 121)
!108 = !DISubprogram(name: "atan", scope: !101, file: !101, line: 57, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !110, file: !104, line: 140)
!110 = !DISubprogram(name: "atan2", scope: !101, file: !101, line: 59, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DISubroutineType(types: !112)
!112 = !{!86, !86, !86}
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !114, file: !104, line: 161)
!114 = !DISubprogram(name: "ceil", scope: !101, file: !101, line: 159, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !116, file: !104, line: 180)
!116 = !DISubprogram(name: "cos", scope: !101, file: !101, line: 62, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !118, file: !104, line: 199)
!118 = !DISubprogram(name: "cosh", scope: !101, file: !101, line: 71, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !120, file: !104, line: 218)
!120 = !DISubprogram(name: "exp", scope: !101, file: !101, line: 95, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !122, file: !104, line: 237)
!122 = !DISubprogram(name: "fabs", scope: !101, file: !101, line: 162, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !124, file: !104, line: 256)
!124 = !DISubprogram(name: "floor", scope: !101, file: !101, line: 165, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !126, file: !104, line: 275)
!126 = !DISubprogram(name: "fmod", scope: !101, file: !101, line: 168, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !128, file: !104, line: 296)
!128 = !DISubprogram(name: "frexp", scope: !101, file: !101, line: 98, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DISubroutineType(types: !130)
!130 = !{!86, !86, !20}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !132, file: !104, line: 315)
!132 = !DISubprogram(name: "ldexp", scope: !101, file: !101, line: 101, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{!86, !86, !9}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !136, file: !104, line: 334)
!136 = !DISubprogram(name: "log", scope: !101, file: !101, line: 104, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !138, file: !104, line: 353)
!138 = !DISubprogram(name: "log10", scope: !101, file: !101, line: 107, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !140, file: !104, line: 372)
!140 = !DISubprogram(name: "modf", scope: !101, file: !101, line: 110, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DISubroutineType(types: !142)
!142 = !{!86, !86, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !145, file: !104, line: 384)
!145 = !DISubprogram(name: "pow", scope: !101, file: !101, line: 140, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !147, file: !104, line: 421)
!147 = !DISubprogram(name: "sin", scope: !101, file: !101, line: 64, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !149, file: !104, line: 440)
!149 = !DISubprogram(name: "sinh", scope: !101, file: !101, line: 73, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !151, file: !104, line: 459)
!151 = !DISubprogram(name: "sqrt", scope: !101, file: !101, line: 143, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !153, file: !104, line: 478)
!153 = !DISubprogram(name: "tan", scope: !101, file: !101, line: 66, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !155, file: !104, line: 497)
!155 = !DISubprogram(name: "tanh", scope: !101, file: !101, line: 75, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !157, file: !104, line: 1065)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !158, line: 150, baseType: !86)
!158 = !DIFile(filename: "/usr/include/math.h", directory: "")
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !160, file: !104, line: 1066)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !158, line: 149, baseType: !161)
!161 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !163, file: !104, line: 1069)
!163 = !DISubprogram(name: "acosh", scope: !101, file: !101, line: 85, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !165, file: !104, line: 1070)
!165 = !DISubprogram(name: "acoshf", scope: !101, file: !101, line: 85, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubroutineType(types: !167)
!167 = !{!161, !161}
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !169, file: !104, line: 1071)
!169 = !DISubprogram(name: "acoshl", scope: !101, file: !101, line: 85, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !172}
!172 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !174, file: !104, line: 1073)
!174 = !DISubprogram(name: "asinh", scope: !101, file: !101, line: 87, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !176, file: !104, line: 1074)
!176 = !DISubprogram(name: "asinhf", scope: !101, file: !101, line: 87, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !178, file: !104, line: 1075)
!178 = !DISubprogram(name: "asinhl", scope: !101, file: !101, line: 87, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !180, file: !104, line: 1077)
!180 = !DISubprogram(name: "atanh", scope: !101, file: !101, line: 89, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !182, file: !104, line: 1078)
!182 = !DISubprogram(name: "atanhf", scope: !101, file: !101, line: 89, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !184, file: !104, line: 1079)
!184 = !DISubprogram(name: "atanhl", scope: !101, file: !101, line: 89, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !186, file: !104, line: 1081)
!186 = !DISubprogram(name: "cbrt", scope: !101, file: !101, line: 152, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !188, file: !104, line: 1082)
!188 = !DISubprogram(name: "cbrtf", scope: !101, file: !101, line: 152, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !190, file: !104, line: 1083)
!190 = !DISubprogram(name: "cbrtl", scope: !101, file: !101, line: 152, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !192, file: !104, line: 1085)
!192 = !DISubprogram(name: "copysign", scope: !101, file: !101, line: 196, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !194, file: !104, line: 1086)
!194 = !DISubprogram(name: "copysignf", scope: !101, file: !101, line: 196, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubroutineType(types: !196)
!196 = !{!161, !161, !161}
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !198, file: !104, line: 1087)
!198 = !DISubprogram(name: "copysignl", scope: !101, file: !101, line: 196, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubroutineType(types: !200)
!200 = !{!172, !172, !172}
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !202, file: !104, line: 1089)
!202 = !DISubprogram(name: "erf", scope: !101, file: !101, line: 228, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !204, file: !104, line: 1090)
!204 = !DISubprogram(name: "erff", scope: !101, file: !101, line: 228, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !206, file: !104, line: 1091)
!206 = !DISubprogram(name: "erfl", scope: !101, file: !101, line: 228, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !208, file: !104, line: 1093)
!208 = !DISubprogram(name: "erfc", scope: !101, file: !101, line: 229, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !210, file: !104, line: 1094)
!210 = !DISubprogram(name: "erfcf", scope: !101, file: !101, line: 229, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !212, file: !104, line: 1095)
!212 = !DISubprogram(name: "erfcl", scope: !101, file: !101, line: 229, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !214, file: !104, line: 1097)
!214 = !DISubprogram(name: "exp2", scope: !101, file: !101, line: 130, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !216, file: !104, line: 1098)
!216 = !DISubprogram(name: "exp2f", scope: !101, file: !101, line: 130, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !218, file: !104, line: 1099)
!218 = !DISubprogram(name: "exp2l", scope: !101, file: !101, line: 130, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !220, file: !104, line: 1101)
!220 = !DISubprogram(name: "expm1", scope: !101, file: !101, line: 119, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !222, file: !104, line: 1102)
!222 = !DISubprogram(name: "expm1f", scope: !101, file: !101, line: 119, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !224, file: !104, line: 1103)
!224 = !DISubprogram(name: "expm1l", scope: !101, file: !101, line: 119, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !226, file: !104, line: 1105)
!226 = !DISubprogram(name: "fdim", scope: !101, file: !101, line: 326, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !228, file: !104, line: 1106)
!228 = !DISubprogram(name: "fdimf", scope: !101, file: !101, line: 326, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !230, file: !104, line: 1107)
!230 = !DISubprogram(name: "fdiml", scope: !101, file: !101, line: 326, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !232, file: !104, line: 1109)
!232 = !DISubprogram(name: "fma", scope: !101, file: !101, line: 335, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubroutineType(types: !234)
!234 = !{!86, !86, !86, !86}
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !236, file: !104, line: 1110)
!236 = !DISubprogram(name: "fmaf", scope: !101, file: !101, line: 335, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubroutineType(types: !238)
!238 = !{!161, !161, !161, !161}
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !240, file: !104, line: 1111)
!240 = !DISubprogram(name: "fmal", scope: !101, file: !101, line: 335, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{!172, !172, !172, !172}
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !244, file: !104, line: 1113)
!244 = !DISubprogram(name: "fmax", scope: !101, file: !101, line: 329, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !246, file: !104, line: 1114)
!246 = !DISubprogram(name: "fmaxf", scope: !101, file: !101, line: 329, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !248, file: !104, line: 1115)
!248 = !DISubprogram(name: "fmaxl", scope: !101, file: !101, line: 329, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !250, file: !104, line: 1117)
!250 = !DISubprogram(name: "fmin", scope: !101, file: !101, line: 332, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !252, file: !104, line: 1118)
!252 = !DISubprogram(name: "fminf", scope: !101, file: !101, line: 332, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !254, file: !104, line: 1119)
!254 = !DISubprogram(name: "fminl", scope: !101, file: !101, line: 332, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !256, file: !104, line: 1121)
!256 = !DISubprogram(name: "hypot", scope: !101, file: !101, line: 147, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !258, file: !104, line: 1122)
!258 = !DISubprogram(name: "hypotf", scope: !101, file: !101, line: 147, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !260, file: !104, line: 1123)
!260 = !DISubprogram(name: "hypotl", scope: !101, file: !101, line: 147, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !262, file: !104, line: 1125)
!262 = !DISubprogram(name: "ilogb", scope: !101, file: !101, line: 280, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{!9, !86}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !266, file: !104, line: 1126)
!266 = !DISubprogram(name: "ilogbf", scope: !101, file: !101, line: 280, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!9, !161}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !270, file: !104, line: 1127)
!270 = !DISubprogram(name: "ilogbl", scope: !101, file: !101, line: 280, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!9, !172}
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !274, file: !104, line: 1129)
!274 = !DISubprogram(name: "lgamma", scope: !101, file: !101, line: 230, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !276, file: !104, line: 1130)
!276 = !DISubprogram(name: "lgammaf", scope: !101, file: !101, line: 230, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !278, file: !104, line: 1131)
!278 = !DISubprogram(name: "lgammal", scope: !101, file: !101, line: 230, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !280, file: !104, line: 1134)
!280 = !DISubprogram(name: "llrint", scope: !101, file: !101, line: 316, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !86}
!283 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !285, file: !104, line: 1135)
!285 = !DISubprogram(name: "llrintf", scope: !101, file: !101, line: 316, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubroutineType(types: !287)
!287 = !{!283, !161}
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !289, file: !104, line: 1136)
!289 = !DISubprogram(name: "llrintl", scope: !101, file: !101, line: 316, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!290 = !DISubroutineType(types: !291)
!291 = !{!283, !172}
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !293, file: !104, line: 1138)
!293 = !DISubprogram(name: "llround", scope: !101, file: !101, line: 322, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !295, file: !104, line: 1139)
!295 = !DISubprogram(name: "llroundf", scope: !101, file: !101, line: 322, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !297, file: !104, line: 1140)
!297 = !DISubprogram(name: "llroundl", scope: !101, file: !101, line: 322, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !299, file: !104, line: 1143)
!299 = !DISubprogram(name: "log1p", scope: !101, file: !101, line: 122, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !301, file: !104, line: 1144)
!301 = !DISubprogram(name: "log1pf", scope: !101, file: !101, line: 122, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !303, file: !104, line: 1145)
!303 = !DISubprogram(name: "log1pl", scope: !101, file: !101, line: 122, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !305, file: !104, line: 1147)
!305 = !DISubprogram(name: "log2", scope: !101, file: !101, line: 133, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !307, file: !104, line: 1148)
!307 = !DISubprogram(name: "log2f", scope: !101, file: !101, line: 133, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !309, file: !104, line: 1149)
!309 = !DISubprogram(name: "log2l", scope: !101, file: !101, line: 133, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !311, file: !104, line: 1151)
!311 = !DISubprogram(name: "logb", scope: !101, file: !101, line: 125, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !313, file: !104, line: 1152)
!313 = !DISubprogram(name: "logbf", scope: !101, file: !101, line: 125, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !315, file: !104, line: 1153)
!315 = !DISubprogram(name: "logbl", scope: !101, file: !101, line: 125, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !317, file: !104, line: 1155)
!317 = !DISubprogram(name: "lrint", scope: !101, file: !101, line: 314, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{!50, !86}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !321, file: !104, line: 1156)
!321 = !DISubprogram(name: "lrintf", scope: !101, file: !101, line: 314, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubroutineType(types: !323)
!323 = !{!50, !161}
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !325, file: !104, line: 1157)
!325 = !DISubprogram(name: "lrintl", scope: !101, file: !101, line: 314, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubroutineType(types: !327)
!327 = !{!50, !172}
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !329, file: !104, line: 1159)
!329 = !DISubprogram(name: "lround", scope: !101, file: !101, line: 320, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !331, file: !104, line: 1160)
!331 = !DISubprogram(name: "lroundf", scope: !101, file: !101, line: 320, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !333, file: !104, line: 1161)
!333 = !DISubprogram(name: "lroundl", scope: !101, file: !101, line: 320, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !335, file: !104, line: 1163)
!335 = !DISubprogram(name: "nan", scope: !101, file: !101, line: 201, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubroutineType(types: !337)
!337 = !{!86, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !341, file: !104, line: 1164)
!341 = !DISubprogram(name: "nanf", scope: !101, file: !101, line: 201, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DISubroutineType(types: !343)
!343 = !{!161, !338}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !345, file: !104, line: 1165)
!345 = !DISubprogram(name: "nanl", scope: !101, file: !101, line: 201, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DISubroutineType(types: !347)
!347 = !{!172, !338}
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !349, file: !104, line: 1167)
!349 = !DISubprogram(name: "nearbyint", scope: !101, file: !101, line: 294, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !351, file: !104, line: 1168)
!351 = !DISubprogram(name: "nearbyintf", scope: !101, file: !101, line: 294, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !353, file: !104, line: 1169)
!353 = !DISubprogram(name: "nearbyintl", scope: !101, file: !101, line: 294, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !355, file: !104, line: 1171)
!355 = !DISubprogram(name: "nextafter", scope: !101, file: !101, line: 259, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !357, file: !104, line: 1172)
!357 = !DISubprogram(name: "nextafterf", scope: !101, file: !101, line: 259, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !359, file: !104, line: 1173)
!359 = !DISubprogram(name: "nextafterl", scope: !101, file: !101, line: 259, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !361, file: !104, line: 1175)
!361 = !DISubprogram(name: "nexttoward", scope: !101, file: !101, line: 261, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubroutineType(types: !363)
!363 = !{!86, !86, !172}
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !365, file: !104, line: 1176)
!365 = !DISubprogram(name: "nexttowardf", scope: !101, file: !101, line: 261, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DISubroutineType(types: !367)
!367 = !{!161, !161, !172}
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !369, file: !104, line: 1177)
!369 = !DISubprogram(name: "nexttowardl", scope: !101, file: !101, line: 261, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !371, file: !104, line: 1179)
!371 = !DISubprogram(name: "remainder", scope: !101, file: !101, line: 272, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !373, file: !104, line: 1180)
!373 = !DISubprogram(name: "remainderf", scope: !101, file: !101, line: 272, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !375, file: !104, line: 1181)
!375 = !DISubprogram(name: "remainderl", scope: !101, file: !101, line: 272, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !377, file: !104, line: 1183)
!377 = !DISubprogram(name: "remquo", scope: !101, file: !101, line: 307, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubroutineType(types: !379)
!379 = !{!86, !86, !86, !20}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !381, file: !104, line: 1184)
!381 = !DISubprogram(name: "remquof", scope: !101, file: !101, line: 307, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubroutineType(types: !383)
!383 = !{!161, !161, !161, !20}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !385, file: !104, line: 1185)
!385 = !DISubprogram(name: "remquol", scope: !101, file: !101, line: 307, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!386 = !DISubroutineType(types: !387)
!387 = !{!172, !172, !172, !20}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !389, file: !104, line: 1187)
!389 = !DISubprogram(name: "rint", scope: !101, file: !101, line: 256, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !391, file: !104, line: 1188)
!391 = !DISubprogram(name: "rintf", scope: !101, file: !101, line: 256, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !393, file: !104, line: 1189)
!393 = !DISubprogram(name: "rintl", scope: !101, file: !101, line: 256, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !395, file: !104, line: 1191)
!395 = !DISubprogram(name: "round", scope: !101, file: !101, line: 298, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !397, file: !104, line: 1192)
!397 = !DISubprogram(name: "roundf", scope: !101, file: !101, line: 298, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !399, file: !104, line: 1193)
!399 = !DISubprogram(name: "roundl", scope: !101, file: !101, line: 298, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !401, file: !104, line: 1195)
!401 = !DISubprogram(name: "scalbln", scope: !101, file: !101, line: 290, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = !DISubroutineType(types: !403)
!403 = !{!86, !86, !50}
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !405, file: !104, line: 1196)
!405 = !DISubprogram(name: "scalblnf", scope: !101, file: !101, line: 290, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{!161, !161, !50}
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !409, file: !104, line: 1197)
!409 = !DISubprogram(name: "scalblnl", scope: !101, file: !101, line: 290, type: !410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!410 = !DISubroutineType(types: !411)
!411 = !{!172, !172, !50}
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !413, file: !104, line: 1199)
!413 = !DISubprogram(name: "scalbn", scope: !101, file: !101, line: 276, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !415, file: !104, line: 1200)
!415 = !DISubprogram(name: "scalbnf", scope: !101, file: !101, line: 276, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DISubroutineType(types: !417)
!417 = !{!161, !161, !9}
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !419, file: !104, line: 1201)
!419 = !DISubprogram(name: "scalbnl", scope: !101, file: !101, line: 276, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DISubroutineType(types: !421)
!421 = !{!172, !172, !9}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !423, file: !104, line: 1203)
!423 = !DISubprogram(name: "tgamma", scope: !101, file: !101, line: 235, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !425, file: !104, line: 1204)
!425 = !DISubprogram(name: "tgammaf", scope: !101, file: !101, line: 235, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !427, file: !104, line: 1205)
!427 = !DISubprogram(name: "tgammal", scope: !101, file: !101, line: 235, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !429, file: !104, line: 1207)
!429 = !DISubprogram(name: "trunc", scope: !101, file: !101, line: 302, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !431, file: !104, line: 1208)
!431 = !DISubprogram(name: "truncf", scope: !101, file: !101, line: 302, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !433, file: !104, line: 1209)
!433 = !DISubprogram(name: "truncl", scope: !101, file: !101, line: 302, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !435, file: !439, line: 38)
!435 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !94, file: !98, line: 103, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !438}
!438 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!439 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/math.h", directory: "")
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !441, file: !439, line: 54)
!441 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !94, file: !104, line: 380, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!172, !172, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !446, file: !448, line: 127)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !88, line: 62, baseType: !447)
!447 = !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!448 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib", directory: "")
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !450, file: !448, line: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !88, line: 70, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !452, identifier: "_ZTS6ldiv_t")
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !451, file: !88, line: 68, baseType: !50, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !451, file: !88, line: 69, baseType: !50, size: 64, offset: 64)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !456, file: !448, line: 130)
!456 = !DISubprogram(name: "abort", scope: !88, file: !88, line: 591, type: !457, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!457 = !DISubroutineType(types: !458)
!458 = !{null}
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !460, file: !448, line: 134)
!460 = !DISubprogram(name: "atexit", scope: !88, file: !88, line: 595, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!9, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !465, file: !448, line: 137)
!465 = !DISubprogram(name: "at_quick_exit", scope: !88, file: !88, line: 600, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !467, file: !448, line: 140)
!467 = !DISubprogram(name: "atof", scope: !468, file: !468, line: 25, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !470, file: !448, line: 141)
!470 = distinct !DISubprogram(name: "atoi", scope: !88, file: !88, line: 361, type: !471, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!9, !338}
!473 = !{!474}
!474 = !DILocalVariable(name: "__nptr", arg: 1, scope: !470, file: !88, line: 361, type: !338)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !476, file: !448, line: 142)
!476 = !DISubprogram(name: "atol", scope: !88, file: !88, line: 366, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !DISubroutineType(types: !478)
!478 = !{!50, !338}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !480, file: !448, line: 143)
!480 = !DISubprogram(name: "bsearch", scope: !481, file: !481, line: 20, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!481 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!482 = !DISubroutineType(types: !483)
!483 = !{!72, !484, !484, !74, !74, !486}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !88, line: 808, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!9, !484, !484}
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !491, file: !448, line: 144)
!491 = !DISubprogram(name: "calloc", scope: !88, file: !88, line: 542, type: !492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DISubroutineType(types: !493)
!493 = !{!72, !74, !74}
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !495, file: !448, line: 145)
!495 = !DISubprogram(name: "div", scope: !88, file: !88, line: 852, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DISubroutineType(types: !497)
!497 = !{!446, !9, !9}
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !499, file: !448, line: 146)
!499 = !DISubprogram(name: "exit", scope: !88, file: !88, line: 617, type: !500, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !9}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !503, file: !448, line: 147)
!503 = !DISubprogram(name: "free", scope: !88, file: !88, line: 565, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !505, file: !448, line: 148)
!505 = !DISubprogram(name: "getenv", scope: !88, file: !88, line: 634, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(types: !507)
!507 = !{!11, !338}
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !509, file: !448, line: 149)
!509 = !DISubprogram(name: "labs", scope: !88, file: !88, line: 841, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!50, !50}
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !513, file: !448, line: 150)
!513 = !DISubprogram(name: "ldiv", scope: !88, file: !88, line: 854, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!514 = !DISubroutineType(types: !515)
!515 = !{!450, !50, !50}
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !517, file: !448, line: 151)
!517 = !DISubprogram(name: "malloc", scope: !88, file: !88, line: 539, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = !DISubroutineType(types: !519)
!519 = !{!72, !74}
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !521, file: !448, line: 153)
!521 = !DISubprogram(name: "mblen", scope: !88, file: !88, line: 922, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!522 = !DISubroutineType(types: !523)
!523 = !{!9, !338, !74}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !525, file: !448, line: 154)
!525 = !DISubprogram(name: "mbstowcs", scope: !88, file: !88, line: 933, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubroutineType(types: !527)
!527 = !{!74, !528, !531, !74}
!528 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!531 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !338)
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !533, file: !448, line: 155)
!533 = !DISubprogram(name: "mbtowc", scope: !88, file: !88, line: 925, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!534 = !DISubroutineType(types: !535)
!535 = !{!9, !528, !531, !74}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !537, file: !448, line: 157)
!537 = !DISubprogram(name: "qsort", scope: !88, file: !88, line: 830, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !72, !74, !74, !486}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !541, file: !448, line: 160)
!541 = !DISubprogram(name: "quick_exit", scope: !88, file: !88, line: 623, type: !500, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !543, file: !448, line: 163)
!543 = !DISubprogram(name: "rand", scope: !88, file: !88, line: 453, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = !DISubroutineType(types: !545)
!545 = !{!9}
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !547, file: !448, line: 164)
!547 = !DISubprogram(name: "realloc", scope: !88, file: !88, line: 550, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!548 = !DISubroutineType(types: !549)
!549 = !{!72, !72, !74}
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !551, file: !448, line: 165)
!551 = !DISubprogram(name: "srand", scope: !88, file: !88, line: 455, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !554}
!554 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !556, file: !448, line: 166)
!556 = !DISubprogram(name: "strtod", scope: !88, file: !88, line: 117, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DISubroutineType(types: !558)
!558 = !{!86, !531, !559}
!559 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !561, file: !448, line: 167)
!561 = !DISubprogram(name: "strtol", scope: !88, file: !88, line: 176, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DISubroutineType(types: !563)
!563 = !{!50, !531, !559, !9}
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !565, file: !448, line: 168)
!565 = !DISubprogram(name: "strtoul", scope: !88, file: !88, line: 180, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DISubroutineType(types: !567)
!567 = !{!76, !531, !559, !9}
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !569, file: !448, line: 169)
!569 = !DISubprogram(name: "system", scope: !88, file: !88, line: 784, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !571, file: !448, line: 171)
!571 = !DISubprogram(name: "wcstombs", scope: !88, file: !88, line: 936, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DISubroutineType(types: !573)
!573 = !{!74, !574, !575, !74}
!574 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!575 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !579, file: !448, line: 172)
!579 = !DISubprogram(name: "wctomb", scope: !88, file: !88, line: 929, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!580 = !DISubroutineType(types: !581)
!581 = !{!9, !11, !530}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !583, entity: !584, file: !448, line: 200)
!583 = !DINamespace(name: "__gnu_cxx", scope: null)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !88, line: 80, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !586, identifier: "_ZTS7lldiv_t")
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !585, file: !88, line: 78, baseType: !283, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !585, file: !88, line: 79, baseType: !283, size: 64, offset: 64)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !583, entity: !590, file: !448, line: 206)
!590 = !DISubprogram(name: "_Exit", scope: !88, file: !88, line: 629, type: !500, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !583, entity: !592, file: !448, line: 210)
!592 = !DISubprogram(name: "llabs", scope: !88, file: !88, line: 844, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!593 = !DISubroutineType(types: !594)
!594 = !{!283, !283}
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !583, entity: !596, file: !448, line: 216)
!596 = !DISubprogram(name: "lldiv", scope: !88, file: !88, line: 858, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!597 = !DISubroutineType(types: !598)
!598 = !{!584, !283, !283}
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !583, entity: !600, file: !448, line: 227)
!600 = !DISubprogram(name: "atoll", scope: !88, file: !88, line: 373, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubroutineType(types: !602)
!602 = !{!283, !338}
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !583, entity: !604, file: !448, line: 228)
!604 = !DISubprogram(name: "strtoll", scope: !88, file: !88, line: 200, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!605 = !DISubroutineType(types: !606)
!606 = !{!283, !531, !559, !9}
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !583, entity: !608, file: !448, line: 229)
!608 = !DISubprogram(name: "strtoull", scope: !88, file: !88, line: 205, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!609 = !DISubroutineType(types: !610)
!610 = !{!611, !531, !559, !9}
!611 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !583, entity: !613, file: !448, line: 231)
!613 = !DISubprogram(name: "strtof", scope: !88, file: !88, line: 123, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubroutineType(types: !615)
!615 = !{!161, !531, !559}
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !583, entity: !617, file: !448, line: 232)
!617 = !DISubprogram(name: "strtold", scope: !88, file: !88, line: 126, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!618 = !DISubroutineType(types: !619)
!619 = !{!172, !531, !559}
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !584, file: !448, line: 240)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !590, file: !448, line: 242)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !592, file: !448, line: 244)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !624, file: !448, line: 245)
!624 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !583, file: !448, line: 213, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !596, file: !448, line: 246)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !600, file: !448, line: 248)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !613, file: !448, line: 249)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !604, file: !448, line: 250)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !608, file: !448, line: 251)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !94, entity: !617, file: !448, line: 252)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !456, file: !632, line: 38)
!632 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/stdlib.h", directory: "")
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !460, file: !632, line: 39)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !499, file: !632, line: 40)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !465, file: !632, line: 43)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !541, file: !632, line: 46)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !446, file: !632, line: 51)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !450, file: !632, line: 52)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !435, file: !632, line: 54)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !467, file: !632, line: 55)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !470, file: !632, line: 56)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !476, file: !632, line: 57)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !480, file: !632, line: 58)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !491, file: !632, line: 59)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !624, file: !632, line: 60)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !503, file: !632, line: 61)
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !505, file: !632, line: 62)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !509, file: !632, line: 63)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !513, file: !632, line: 64)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !517, file: !632, line: 65)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !521, file: !632, line: 67)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !525, file: !632, line: 68)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !533, file: !632, line: 69)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !537, file: !632, line: 71)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !543, file: !632, line: 72)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !547, file: !632, line: 73)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !551, file: !632, line: 74)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !556, file: !632, line: 75)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !561, file: !632, line: 76)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !565, file: !632, line: 77)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !569, file: !632, line: 78)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !571, file: !632, line: 80)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !579, file: !632, line: 81)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !666, line: 7, baseType: !26)
!666 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!667 = !{i32 7, !"Dwarf Version", i32 4}
!668 = !{i32 2, !"Debug Info Version", i32 3}
!669 = !{i32 1, !"wchar_size", i32 4}
!670 = !{!"clang version 10.0.0-4ubuntu1 "}
!671 = distinct !DISubprogram(name: "Usage", linkageName: "_Z5UsageiPPc", scope: !3, file: !3, line: 21, type: !7, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !672)
!672 = !{!673, !674}
!673 = !DILocalVariable(name: "argc", arg: 1, scope: !671, file: !3, line: 21, type: !9)
!674 = !DILocalVariable(name: "argv", arg: 2, scope: !671, file: !3, line: 21, type: !10)
!675 = !DILocation(line: 0, scope: !671)
!676 = !DILocation(line: 23, column: 9, scope: !671)
!677 = !{!678, !678, i64 0}
!678 = !{!"any pointer", !679, i64 0}
!679 = !{!"omnipotent char", !680, i64 0}
!680 = !{!"Simple C++ TBAA"}
!681 = !DILocation(line: 23, column: 58, scope: !671)
!682 = !DILocation(line: 23, column: 1, scope: !671)
!683 = !DILocation(line: 25, column: 1, scope: !671)
!684 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 29, type: !685, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{!9, !9, !10}
!687 = !{!688, !689}
!688 = !DILocalVariable(name: "argc", arg: 1, scope: !684, file: !3, line: 29, type: !9)
!689 = !DILocalVariable(name: "argv", arg: 2, scope: !684, file: !3, line: 29, type: !10)
!690 = !DILocation(line: 0, scope: !684)
!691 = !DILocation(line: 31, column: 2, scope: !684)
!692 = !DILocation(line: 32, column: 1, scope: !684)
!693 = distinct !DISubprogram(name: "BFSGraph", linkageName: "_Z8BFSGraphiPPc", scope: !3, file: !3, line: 39, type: !7, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !710, !711, !712, !713, !715, !716, !718, !719, !720, !721, !722, !723}
!695 = !DILocalVariable(name: "argc", arg: 1, scope: !693, file: !3, line: 39, type: !9)
!696 = !DILocalVariable(name: "argv", arg: 2, scope: !693, file: !3, line: 39, type: !10)
!697 = !DILocalVariable(name: "no_of_nodes", scope: !693, file: !3, line: 41, type: !9)
!698 = !DILocalVariable(name: "edge_list_size", scope: !693, file: !3, line: 42, type: !9)
!699 = !DILocalVariable(name: "input_f", scope: !693, file: !3, line: 43, type: !11)
!700 = !DILocalVariable(name: "num_omp_threads", scope: !693, file: !3, line: 44, type: !9)
!701 = !DILocalVariable(name: "source", scope: !693, file: !3, line: 63, type: !9)
!702 = !DILocalVariable(name: "h_graph_nodes", scope: !693, file: !3, line: 68, type: !13)
!703 = !DILocalVariable(name: "h_graph_mask", scope: !693, file: !3, line: 69, type: !18)
!704 = !DILocalVariable(name: "h_updating_graph_mask", scope: !693, file: !3, line: 70, type: !18)
!705 = !DILocalVariable(name: "h_graph_visited", scope: !693, file: !3, line: 71, type: !18)
!706 = !DILocalVariable(name: "start", scope: !693, file: !3, line: 73, type: !9)
!707 = !DILocalVariable(name: "edgeno", scope: !693, file: !3, line: 73, type: !9)
!708 = !DILocalVariable(name: "i", scope: !709, file: !3, line: 75, type: !554)
!709 = distinct !DILexicalBlock(scope: !693, file: !3, line: 75, column: 2)
!710 = !DILocalVariable(name: "id", scope: !693, file: !3, line: 95, type: !9)
!711 = !DILocalVariable(name: "cost", scope: !693, file: !3, line: 95, type: !9)
!712 = !DILocalVariable(name: "h_graph_edges", scope: !693, file: !3, line: 96, type: !20)
!713 = !DILocalVariable(name: "i", scope: !714, file: !3, line: 97, type: !9)
!714 = distinct !DILexicalBlock(scope: !693, file: !3, line: 97, column: 2)
!715 = !DILocalVariable(name: "h_cost", scope: !693, file: !3, line: 109, type: !20)
!716 = !DILocalVariable(name: "i", scope: !717, file: !3, line: 110, type: !9)
!717 = distinct !DILexicalBlock(scope: !693, file: !3, line: 110, column: 2)
!718 = !DILocalVariable(name: "k", scope: !693, file: !3, line: 116, type: !9)
!719 = !DILocalVariable(name: "start_time", scope: !693, file: !3, line: 118, type: !86)
!720 = !DILocalVariable(name: "stop", scope: !693, file: !3, line: 124, type: !19)
!721 = !DILocalVariable(name: "end_time", scope: !693, file: !3, line: 172, type: !86)
!722 = !DILocalVariable(name: "fpo", scope: !693, file: !3, line: 179, type: !664)
!723 = !DILocalVariable(name: "i", scope: !724, file: !3, line: 180, type: !9)
!724 = distinct !DILexicalBlock(scope: !693, file: !3, line: 180, column: 2)
!725 = !DILocation(line: 0, scope: !693)
!726 = !DILocation(line: 41, column: 9, scope: !693)
!727 = !DILocation(line: 41, column: 13, scope: !693)
!728 = !{!729, !729, i64 0}
!729 = !{!"int", !679, i64 0}
!730 = !DILocation(line: 42, column: 9, scope: !693)
!731 = !DILocation(line: 42, column: 13, scope: !693)
!732 = !DILocation(line: 46, column: 9, scope: !733)
!733 = distinct !DILexicalBlock(scope: !693, file: !3, line: 46, column: 5)
!734 = !DILocation(line: 46, column: 5, scope: !693)
!735 = !DILocation(line: 47, column: 2, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !3, line: 46, column: 13)
!737 = !DILocation(line: 48, column: 2, scope: !736)
!738 = !DILocation(line: 52, column: 12, scope: !693)
!739 = !DILocation(line: 54, column: 2, scope: !693)
!740 = !DILocation(line: 56, column: 7, scope: !693)
!741 = !DILocation(line: 56, column: 5, scope: !693)
!742 = !DILocation(line: 57, column: 6, scope: !743)
!743 = distinct !DILexicalBlock(scope: !693, file: !3, line: 57, column: 5)
!744 = !DILocation(line: 57, column: 5, scope: !693)
!745 = !DILocation(line: 59, column: 3, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !3, line: 58, column: 2)
!747 = !DILocation(line: 60, column: 3, scope: !746)
!748 = !DILocation(line: 63, column: 2, scope: !693)
!749 = !DILocation(line: 63, column: 6, scope: !693)
!750 = !DILocation(line: 65, column: 2, scope: !693)
!751 = !DILocation(line: 68, column: 2, scope: !693)
!752 = !DILocation(line: 68, column: 52, scope: !693)
!753 = !DILocation(line: 68, column: 51, scope: !693)
!754 = !DILocation(line: 68, column: 32, scope: !693)
!755 = !DILocation(line: 68, column: 8, scope: !693)
!756 = !DILocation(line: 69, column: 2, scope: !693)
!757 = !DILocation(line: 69, column: 31, scope: !693)
!758 = !DILocation(line: 69, column: 8, scope: !693)
!759 = !DILocation(line: 70, column: 2, scope: !693)
!760 = !DILocation(line: 70, column: 40, scope: !693)
!761 = !DILocation(line: 70, column: 8, scope: !693)
!762 = !DILocation(line: 71, column: 2, scope: !693)
!763 = !DILocation(line: 71, column: 34, scope: !693)
!764 = !DILocation(line: 71, column: 8, scope: !693)
!765 = !DILocation(line: 73, column: 2, scope: !693)
!766 = !DILocation(line: 0, scope: !709)
!767 = !DILocation(line: 75, column: 29, scope: !768)
!768 = distinct !DILexicalBlock(scope: !709, file: !3, line: 75, column: 2)
!769 = !DILocation(line: 75, column: 2, scope: !709)
!770 = !DILocation(line: 91, column: 2, scope: !693)
!771 = !DILocation(line: 90, column: 2, scope: !693)
!772 = !DILocation(line: 86, column: 2, scope: !693)
!773 = !DILocation(line: 90, column: 15, scope: !693)
!774 = !DILocation(line: 90, column: 22, scope: !693)
!775 = !{!776, !776, i64 0}
!776 = !{!"bool", !679, i64 0}
!777 = !DILocation(line: 91, column: 25, scope: !693)
!778 = !DILocation(line: 93, column: 9, scope: !693)
!779 = !DILocation(line: 93, column: 2, scope: !693)
!780 = !DILocation(line: 95, column: 2, scope: !693)
!781 = !DILocation(line: 96, column: 2, scope: !693)
!782 = !DILocation(line: 96, column: 49, scope: !693)
!783 = !DILocation(line: 96, column: 48, scope: !693)
!784 = !DILocation(line: 96, column: 30, scope: !693)
!785 = !DILocation(line: 96, column: 7, scope: !693)
!786 = !DILocation(line: 0, scope: !714)
!787 = !DILocation(line: 97, column: 17, scope: !788)
!788 = distinct !DILexicalBlock(scope: !714, file: !3, line: 97, column: 2)
!789 = !DILocation(line: 97, column: 2, scope: !714)
!790 = !DILocation(line: 77, column: 3, scope: !791)
!791 = distinct !DILexicalBlock(scope: !768, file: !3, line: 76, column: 2)
!792 = !DILocation(line: 78, column: 31, scope: !791)
!793 = !DILocation(line: 78, column: 3, scope: !791)
!794 = !DILocation(line: 78, column: 20, scope: !791)
!795 = !DILocation(line: 78, column: 29, scope: !791)
!796 = !{!797, !729, i64 0}
!797 = !{!"_ZTS4Node", !729, i64 0, !729, i64 4}
!798 = !DILocation(line: 79, column: 34, scope: !791)
!799 = !DILocation(line: 79, column: 20, scope: !791)
!800 = !DILocation(line: 79, column: 32, scope: !791)
!801 = !{!797, !729, i64 4}
!802 = !DILocation(line: 80, column: 3, scope: !791)
!803 = !DILocation(line: 80, column: 18, scope: !791)
!804 = !DILocation(line: 81, column: 3, scope: !791)
!805 = !DILocation(line: 81, column: 27, scope: !791)
!806 = !DILocation(line: 82, column: 3, scope: !791)
!807 = !DILocation(line: 82, column: 21, scope: !791)
!808 = !DILocation(line: 75, column: 45, scope: !768)
!809 = !DILocation(line: 75, column: 31, scope: !768)
!810 = distinct !{!810, !769, !811}
!811 = !DILocation(line: 83, column: 2, scope: !709)
!812 = !DILocation(line: 104, column: 5, scope: !813)
!813 = distinct !DILexicalBlock(scope: !693, file: !3, line: 104, column: 5)
!814 = !DILocation(line: 104, column: 5, scope: !693)
!815 = !DILocation(line: 99, column: 3, scope: !816)
!816 = distinct !DILexicalBlock(scope: !788, file: !3, line: 98, column: 2)
!817 = !DILocation(line: 100, column: 10, scope: !816)
!818 = !DILocation(line: 100, column: 3, scope: !816)
!819 = !DILocation(line: 101, column: 22, scope: !816)
!820 = !DILocation(line: 101, column: 3, scope: !816)
!821 = !DILocation(line: 101, column: 20, scope: !816)
!822 = !DILocation(line: 97, column: 37, scope: !788)
!823 = !DILocation(line: 97, column: 19, scope: !788)
!824 = distinct !{!824, !789, !825}
!825 = !DILocation(line: 102, column: 2, scope: !714)
!826 = !DILocation(line: 105, column: 3, scope: !813)
!827 = !DILocation(line: 109, column: 2, scope: !693)
!828 = !DILocation(line: 109, column: 43, scope: !693)
!829 = !DILocation(line: 109, column: 42, scope: !693)
!830 = !DILocation(line: 109, column: 23, scope: !693)
!831 = !DILocation(line: 109, column: 7, scope: !693)
!832 = !DILocation(line: 0, scope: !717)
!833 = !DILocation(line: 110, column: 15, scope: !834)
!834 = distinct !DILexicalBlock(scope: !717, file: !3, line: 110, column: 2)
!835 = !DILocation(line: 110, column: 2, scope: !717)
!836 = !DILocation(line: 110, column: 29, scope: !834)
!837 = !DILocation(line: 111, column: 3, scope: !834)
!838 = !DILocation(line: 111, column: 12, scope: !834)
!839 = distinct !{!839, !835, !840, !841}
!840 = !DILocation(line: 111, column: 14, scope: !717)
!841 = !{!"llvm.loop.isvectorized", i32 1}
!842 = distinct !{!842, !843}
!843 = !{!"llvm.loop.unroll.disable"}
!844 = !DILocation(line: 112, column: 9, scope: !693)
!845 = !DILocation(line: 112, column: 2, scope: !693)
!846 = !DILocation(line: 112, column: 16, scope: !693)
!847 = !DILocation(line: 114, column: 2, scope: !693)
!848 = !DILocation(line: 118, column: 29, scope: !693)
!849 = !DILocation(line: 124, column: 2, scope: !693)
!850 = !DILocation(line: 0, scope: !851)
!851 = distinct !DILexicalBlock(scope: !693, file: !3, line: 126, column: 9)
!852 = !DILocation(line: 125, column: 2, scope: !693)
!853 = distinct !{!853, !835, !840, !854, !841}
!854 = !{!"llvm.loop.unroll.runtime.disable"}
!855 = !DILocation(line: 128, column: 17, scope: !851)
!856 = !DILocation(line: 135, column: 5, scope: !851)
!857 = !{!858, !678, i64 16}
!858 = !{!"_ZTS7ident_t", !729, i64 0, !729, i64 4, !729, i64 8, !729, i64 12, !678, i64 16}
!859 = !DILocation(line: 157, column: 5, scope: !851)
!860 = !DILocation(line: 170, column: 8, scope: !693)
!861 = !{i8 0, i8 2}
!862 = !DILocation(line: 169, column: 9, scope: !851)
!863 = distinct !{!863, !852, !864}
!864 = !DILocation(line: 170, column: 12, scope: !693)
!865 = !DILocation(line: 172, column: 27, scope: !693)
!866 = !DILocation(line: 173, column: 49, scope: !693)
!867 = !DILocation(line: 173, column: 9, scope: !693)
!868 = !DILocation(line: 179, column: 14, scope: !693)
!869 = !DILocation(line: 0, scope: !724)
!870 = !DILocation(line: 180, column: 16, scope: !871)
!871 = distinct !DILexicalBlock(scope: !724, file: !3, line: 180, column: 2)
!872 = !DILocation(line: 180, column: 15, scope: !871)
!873 = !DILocation(line: 180, column: 2, scope: !724)
!874 = !DILocation(line: 182, column: 2, scope: !693)
!875 = !DILocation(line: 183, column: 2, scope: !693)
!876 = !DILocation(line: 187, column: 8, scope: !693)
!877 = !DILocation(line: 187, column: 2, scope: !693)
!878 = !DILocation(line: 188, column: 8, scope: !693)
!879 = !DILocation(line: 188, column: 2, scope: !693)
!880 = !DILocation(line: 189, column: 8, scope: !693)
!881 = !DILocation(line: 189, column: 2, scope: !693)
!882 = !DILocation(line: 190, column: 8, scope: !693)
!883 = !DILocation(line: 190, column: 2, scope: !693)
!884 = !DILocation(line: 191, column: 8, scope: !693)
!885 = !DILocation(line: 191, column: 2, scope: !693)
!886 = !DILocation(line: 192, column: 8, scope: !693)
!887 = !DILocation(line: 192, column: 2, scope: !693)
!888 = !DILocation(line: 194, column: 1, scope: !693)
!889 = !DILocation(line: 181, column: 33, scope: !871)
!890 = !DILocation(line: 181, column: 3, scope: !871)
!891 = !DILocation(line: 180, column: 29, scope: !871)
!892 = distinct !{!892, !873, !893}
!893 = !DILocation(line: 181, column: 42, scope: !724)
!894 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 137, type: !895, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !897, !897, !901, !902, !903, !904, !902, !904, !902}
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!901 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !18, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!905 = !{!906, !907, !908, !909, !910, !911, !912, !913, !914}
!906 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !894, type: !897, flags: DIFlagArtificial)
!907 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !894, type: !897, flags: DIFlagArtificial)
!908 = !DILocalVariable(name: "no_of_nodes", arg: 3, scope: !894, type: !901, flags: DIFlagArtificial)
!909 = !DILocalVariable(name: "h_graph_mask", arg: 4, scope: !894, type: !902, flags: DIFlagArtificial)
!910 = !DILocalVariable(name: "h_graph_nodes", arg: 5, scope: !894, type: !903, flags: DIFlagArtificial)
!911 = !DILocalVariable(name: "h_graph_edges", arg: 6, scope: !894, type: !904, flags: DIFlagArtificial)
!912 = !DILocalVariable(name: "h_graph_visited", arg: 7, scope: !894, type: !902, flags: DIFlagArtificial)
!913 = !DILocalVariable(name: "h_cost", arg: 8, scope: !894, type: !904, flags: DIFlagArtificial)
!914 = !DILocalVariable(name: "h_updating_graph_mask", arg: 9, scope: !894, type: !902, flags: DIFlagArtificial)
!915 = !DILocation(line: 0, scope: !894)
!916 = !{!917}
!917 = distinct !{!917, !918, !".omp_outlined._debug__: argument 0"}
!918 = distinct !{!918, !".omp_outlined._debug__"}
!919 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !920, type: !897, flags: DIFlagArtificial)
!920 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 137, type: !895, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !921)
!921 = !{!919, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !931, !932, !933, !934, !935, !936, !932, !937, !942}
!922 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !920, type: !897, flags: DIFlagArtificial)
!923 = !DILocalVariable(name: "no_of_nodes", arg: 3, scope: !920, file: !3, line: 41, type: !901)
!924 = !DILocalVariable(name: "h_graph_mask", arg: 4, scope: !920, file: !3, line: 69, type: !902)
!925 = !DILocalVariable(name: "h_graph_nodes", arg: 5, scope: !920, file: !3, line: 68, type: !903)
!926 = !DILocalVariable(name: "h_graph_edges", arg: 6, scope: !920, file: !3, line: 96, type: !904)
!927 = !DILocalVariable(name: "h_graph_visited", arg: 7, scope: !920, file: !3, line: 71, type: !902)
!928 = !DILocalVariable(name: "h_cost", arg: 8, scope: !920, file: !3, line: 109, type: !904)
!929 = !DILocalVariable(name: "h_updating_graph_mask", arg: 9, scope: !920, file: !3, line: 70, type: !902)
!930 = !DILocalVariable(name: ".omp.iv", scope: !920, type: !9, flags: DIFlagArtificial)
!931 = !DILocalVariable(name: ".capture_expr.", scope: !920, type: !9, flags: DIFlagArtificial)
!932 = !DILocalVariable(name: "tid", scope: !920, type: !9, flags: DIFlagArtificial)
!933 = !DILocalVariable(name: ".omp.lb", scope: !920, type: !9, flags: DIFlagArtificial)
!934 = !DILocalVariable(name: ".omp.ub", scope: !920, type: !9, flags: DIFlagArtificial)
!935 = !DILocalVariable(name: ".omp.stride", scope: !920, type: !9, flags: DIFlagArtificial)
!936 = !DILocalVariable(name: ".omp.is_last", scope: !920, type: !9, flags: DIFlagArtificial)
!937 = !DILocalVariable(name: "i", scope: !938, file: !3, line: 141, type: !9)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 141, column: 21)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 139, column: 47)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 139, column: 21)
!941 = distinct !DILexicalBlock(scope: !920, file: !3, line: 138, column: 13)
!942 = !DILocalVariable(name: "id", scope: !943, file: !3, line: 143, type: !9)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 142, column: 21)
!944 = distinct !DILexicalBlock(scope: !938, file: !3, line: 141, column: 21)
!945 = !DILocation(line: 0, scope: !920, inlinedAt: !946)
!946 = distinct !DILocation(line: 137, column: 13, scope: !894)
!947 = !DILocation(line: 137, column: 36, scope: !920, inlinedAt: !946)
!948 = !DILocation(line: 137, column: 13, scope: !920, inlinedAt: !946)
!949 = !DILocation(line: 137, column: 17, scope: !920, inlinedAt: !946)
!950 = !DILocation(line: 0, scope: !940, inlinedAt: !946)
!951 = !DILocation(line: 0, scope: !938, inlinedAt: !946)
!952 = !DILocation(line: 0, scope: !943, inlinedAt: !946)
!953 = !DILocation(line: 0, scope: !954, inlinedAt: !946)
!954 = distinct !DILexicalBlock(scope: !943, file: !3, line: 144, column: 28)
!955 = !DILocation(line: 139, column: 21, scope: !940, inlinedAt: !946)
!956 = !DILocation(line: 139, column: 21, scope: !941, inlinedAt: !946)
!957 = !DILocation(line: 140, column: 38, scope: !939, inlinedAt: !946)
!958 = !DILocation(line: 141, column: 50, scope: !938, inlinedAt: !946)
!959 = !DILocation(line: 141, column: 82, scope: !944, inlinedAt: !946)
!960 = !DILocation(line: 141, column: 61, scope: !944, inlinedAt: !946)
!961 = !DILocation(line: 141, column: 21, scope: !938, inlinedAt: !946)
!962 = !DILocation(line: 0, scope: !963, inlinedAt: !946)
!963 = distinct !DILexicalBlock(scope: !954, file: !3, line: 145, column: 25)
!964 = !DILocation(line: 143, column: 34, scope: !943, inlinedAt: !946)
!965 = !DILocation(line: 144, column: 29, scope: !954, inlinedAt: !946)
!966 = !DILocation(line: 144, column: 28, scope: !943, inlinedAt: !946)
!967 = !DILocation(line: 146, column: 40, scope: !963, inlinedAt: !946)
!968 = !DILocation(line: 146, column: 51, scope: !963, inlinedAt: !946)
!969 = !DILocation(line: 146, column: 29, scope: !963, inlinedAt: !946)
!970 = !DILocation(line: 146, column: 39, scope: !963, inlinedAt: !946)
!971 = !DILocation(line: 147, column: 29, scope: !963, inlinedAt: !946)
!972 = !DILocation(line: 147, column: 54, scope: !963, inlinedAt: !946)
!973 = !DILocation(line: 141, column: 115, scope: !944, inlinedAt: !946)
!974 = !DILocation(line: 148, column: 25, scope: !963, inlinedAt: !946)
!975 = !DILocation(line: 141, column: 127, scope: !944, inlinedAt: !946)
!976 = !DILocation(line: 141, column: 94, scope: !944, inlinedAt: !946)
!977 = distinct !{!977, !961, !978}
!978 = !DILocation(line: 149, column: 21, scope: !938, inlinedAt: !946)
!979 = distinct !{!979, !980, !981}
!980 = !DILocation(line: 135, column: 5, scope: !920, inlinedAt: !946)
!981 = !DILocation(line: 135, column: 30, scope: !920, inlinedAt: !946)
!982 = !DILocation(line: 151, column: 13, scope: !920, inlinedAt: !946)
!983 = !DILocation(line: 137, column: 13, scope: !894)
!984 = !{!985}
!985 = !{i64 2, i64 -1, i64 -1, i1 true}
!986 = distinct !DISubprogram(name: ".omp_outlined..9", scope: !3, file: !3, line: 159, type: !987, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !990)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !897, !897, !901, !902, !902, !902, !989}
!989 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!990 = !{!991, !992, !993, !994, !995, !996, !997}
!991 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !986, type: !897, flags: DIFlagArtificial)
!992 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !986, type: !897, flags: DIFlagArtificial)
!993 = !DILocalVariable(name: "no_of_nodes", arg: 3, scope: !986, type: !901, flags: DIFlagArtificial)
!994 = !DILocalVariable(name: "h_updating_graph_mask", arg: 4, scope: !986, type: !902, flags: DIFlagArtificial)
!995 = !DILocalVariable(name: "h_graph_mask", arg: 5, scope: !986, type: !902, flags: DIFlagArtificial)
!996 = !DILocalVariable(name: "h_graph_visited", arg: 6, scope: !986, type: !902, flags: DIFlagArtificial)
!997 = !DILocalVariable(name: "stop", arg: 7, scope: !986, type: !989, flags: DIFlagArtificial)
!998 = !DILocation(line: 0, scope: !986)
!999 = !{!1000}
!1000 = distinct !{!1000, !1001, !".omp_outlined._debug__.8: argument 0"}
!1001 = distinct !{!1001, !".omp_outlined._debug__.8"}
!1002 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !1003, type: !897, flags: DIFlagArtificial)
!1003 = distinct !DISubprogram(name: ".omp_outlined._debug__.8", scope: !3, file: !3, line: 159, type: !987, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1004)
!1004 = !{!1002, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1012, !1013, !1014, !1015, !1016, !1017, !1013}
!1005 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !1003, type: !897, flags: DIFlagArtificial)
!1006 = !DILocalVariable(name: "no_of_nodes", arg: 3, scope: !1003, file: !3, line: 41, type: !901)
!1007 = !DILocalVariable(name: "h_updating_graph_mask", arg: 4, scope: !1003, file: !3, line: 70, type: !902)
!1008 = !DILocalVariable(name: "h_graph_mask", arg: 5, scope: !1003, file: !3, line: 69, type: !902)
!1009 = !DILocalVariable(name: "h_graph_visited", arg: 6, scope: !1003, file: !3, line: 71, type: !902)
!1010 = !DILocalVariable(name: "stop", arg: 7, scope: !1003, file: !3, line: 124, type: !989)
!1011 = !DILocalVariable(name: ".omp.iv", scope: !1003, type: !9, flags: DIFlagArtificial)
!1012 = !DILocalVariable(name: ".capture_expr.", scope: !1003, type: !9, flags: DIFlagArtificial)
!1013 = !DILocalVariable(name: "tid", scope: !1003, type: !9, flags: DIFlagArtificial)
!1014 = !DILocalVariable(name: ".omp.lb", scope: !1003, type: !9, flags: DIFlagArtificial)
!1015 = !DILocalVariable(name: ".omp.ub", scope: !1003, type: !9, flags: DIFlagArtificial)
!1016 = !DILocalVariable(name: ".omp.stride", scope: !1003, type: !9, flags: DIFlagArtificial)
!1017 = !DILocalVariable(name: ".omp.is_last", scope: !1003, type: !9, flags: DIFlagArtificial)
!1018 = !DILocation(line: 0, scope: !1003, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 159, column: 13, scope: !986)
!1020 = !DILocation(line: 159, column: 33, scope: !1003, inlinedAt: !1019)
!1021 = !DILocation(line: 159, column: 13, scope: !1003, inlinedAt: !1019)
!1022 = !DILocation(line: 159, column: 17, scope: !1003, inlinedAt: !1019)
!1023 = !DILocation(line: 0, scope: !1024, inlinedAt: !1019)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 161, column: 21)
!1025 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 160, column: 13)
!1026 = !DILocation(line: 0, scope: !1027, inlinedAt: !1019)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 161, column: 56)
!1028 = !DILocation(line: 161, column: 21, scope: !1024, inlinedAt: !1019)
!1029 = !DILocation(line: 161, column: 21, scope: !1025, inlinedAt: !1019)
!1030 = !DILocation(line: 162, column: 21, scope: !1027, inlinedAt: !1019)
!1031 = !DILocation(line: 162, column: 38, scope: !1027, inlinedAt: !1019)
!1032 = !DILocation(line: 163, column: 21, scope: !1027, inlinedAt: !1019)
!1033 = !DILocation(line: 163, column: 41, scope: !1027, inlinedAt: !1019)
!1034 = !DILocation(line: 164, column: 25, scope: !1027, inlinedAt: !1019)
!1035 = !DILocation(line: 165, column: 47, scope: !1027, inlinedAt: !1019)
!1036 = !DILocation(line: 166, column: 17, scope: !1027, inlinedAt: !1019)
!1037 = distinct !{!1037, !1038, !1039}
!1038 = !DILocation(line: 157, column: 5, scope: !1003, inlinedAt: !1019)
!1039 = !DILocation(line: 157, column: 29, scope: !1003, inlinedAt: !1019)
!1040 = !DILocation(line: 167, column: 13, scope: !1003, inlinedAt: !1019)
!1041 = !DILocation(line: 159, column: 13, scope: !986)
