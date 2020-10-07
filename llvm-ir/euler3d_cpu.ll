; ModuleID = 'euler3d_cpu.cpp'
source_filename = "euler3d_cpu.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type <{ %struct._IO_FILE*, i8, [7 x i8] }>
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base.base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base.base" = type { %"class.std::locale::facet.base" }
%struct.float3 = type { float, float, float }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }

$_Z16compute_velocityRfR6float3S1_ = comdat any

$_Z17compute_speed_sqdR6float3 = comdat any

$_Z16compute_pressureRfS_S_ = comdat any

$_Z22compute_speed_of_soundRfS_ = comdat any

$_ZSt4sqrtf = comdat any

$_Z25compute_flux_contributionRfR6float3S_S_S1_S1_S1_S1_S1_ = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_Z5allocIfEPT_i = comdat any

$_Z4copyIfEvPT_S1_i = comdat any

$_Z7deallocIfEvPT_ = comdat any

$_Z7deallocIiEvPT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"momentum\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"density_energy\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"specify data file name\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Starting...\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Saving solution...\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Saved solution...\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Cleaning up...\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Done...\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_euler3d_cpu.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z4dumpPfii(float* %0, i32 %1, i32 %2) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::basic_ofstream", align 8
  %8 = alloca i8*
  %9 = alloca i32
  %10 = alloca i32, align 4
  %11 = alloca %"class.std::basic_ofstream", align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %"class.std::basic_ofstream", align 8
  %15 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 16)
  %16 = bitcast %"class.std::basic_ofstream"* %7 to %"class.std::basic_ostream"*
  %17 = load i32, i32* %5, align 4
  %18 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %16, i32 %17)
          to label %19 unwind label %48

19:                                               ; preds = %3
  %20 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %21 unwind label %48

21:                                               ; preds = %19
  %22 = load i32, i32* %6, align 4
  %23 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %20, i32 %22)
          to label %24 unwind label %48

24:                                               ; preds = %21
  %25 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %23, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %26 unwind label %48

26:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = bitcast %"class.std::basic_ofstream"* %7 to %"class.std::basic_ostream"*
  %33 = load float*, float** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 0, %35
  %37 = add nsw i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %33, i64 %38
  %40 = load float, float* %39, align 4
  %41 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %32, float %40)
          to label %42 unwind label %48

42:                                               ; preds = %31
  %43 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %41, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %44 unwind label %48

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %27

48:                                               ; preds = %42, %31, %24, %21, %19, %3
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  store i8* %50, i8** %8, align 8
  %51 = extractvalue { i8*, i32 } %49, 1
  store i32 %51, i32* %9, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* %7) #3
  br label %140

52:                                               ; preds = %27
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* %7) #3
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %53 = bitcast %"class.std::basic_ofstream"* %11 to %"class.std::basic_ostream"*
  %54 = load i32, i32* %5, align 4
  %55 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %53, i32 %54)
          to label %56 unwind label %91

56:                                               ; preds = %52
  %57 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %58 unwind label %91

58:                                               ; preds = %56
  %59 = load i32, i32* %6, align 4
  %60 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %57, i32 %59)
          to label %61 unwind label %91

61:                                               ; preds = %58
  %62 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %60, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %63 unwind label %91

63:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %99, %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %102

68:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 3
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = bitcast %"class.std::basic_ofstream"* %11 to %"class.std::basic_ostream"*
  %74 = load float*, float** %4, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 1, %76
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 %77, %78
  %80 = add nsw i32 %75, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %74, i64 %81
  %83 = load float, float* %82, align 4
  %84 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %73, float %83)
          to label %85 unwind label %91

85:                                               ; preds = %72
  %86 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %87 unwind label %91

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %69

91:                                               ; preds = %95, %85, %72, %61, %58, %56, %52
  %92 = landingpad { i8*, i32 }
          cleanup
  %93 = extractvalue { i8*, i32 } %92, 0
  store i8* %93, i8** %8, align 8
  %94 = extractvalue { i8*, i32 } %92, 1
  store i32 %94, i32* %9, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* %11) #3
  br label %140

95:                                               ; preds = %69
  %96 = bitcast %"class.std::basic_ofstream"* %11 to %"class.std::basic_ostream"*
  %97 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %96, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %98 unwind label %91

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %64

102:                                              ; preds = %64
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* %11) #3
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 16)
  %103 = bitcast %"class.std::basic_ofstream"* %14 to %"class.std::basic_ostream"*
  %104 = load i32, i32* %5, align 4
  %105 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %103, i32 %104)
          to label %106 unwind label %135

106:                                              ; preds = %102
  %107 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %108 unwind label %135

108:                                              ; preds = %106
  %109 = load i32, i32* %6, align 4
  %110 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %107, i32 %109)
          to label %111 unwind label %135

111:                                              ; preds = %108
  %112 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %110, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %113 unwind label %135

113:                                              ; preds = %111
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %132, %113
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %114
  %119 = bitcast %"class.std::basic_ofstream"* %14 to %"class.std::basic_ostream"*
  %120 = load float*, float** %4, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %6, align 4
  %123 = mul nsw i32 4, %122
  %124 = add nsw i32 %121, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %120, i64 %125
  %127 = load float, float* %126, align 4
  %128 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %119, float %127)
          to label %129 unwind label %135

129:                                              ; preds = %118
  %130 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %128, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %131 unwind label %135

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %114

135:                                              ; preds = %129, %118, %111, %108, %106, %102
  %136 = landingpad { i8*, i32 }
          cleanup
  %137 = extractvalue { i8*, i32 } %136, 0
  store i8* %137, i8** %8, align 8
  %138 = extractvalue { i8*, i32 } %136, 1
  store i32 %138, i32* %9, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* %14) #3
  br label %140

139:                                              ; preds = %114
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* %14) #3
  ret void

140:                                              ; preds = %135, %91, %48
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = insertvalue { i8*, i32 } undef, i8* %141, 0
  %144 = insertvalue { i8*, i32 } %143, i32 %142, 1
  resume { i8*, i32 } %144
}

declare dso_local void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"*, i8*, i32) unnamed_addr #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local i32 @__gxx_personality_v0(...)

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"*) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z20initialize_variablesiPfS_(i32 %0, float* %1, float* %2) #5 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %35, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load float*, float** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  %22 = load float, float* %21, align 4
  %23 = load float*, float** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %23, i64 %29
  store float %22, float* %30, align 4
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %14

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %9

38:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z19compute_step_factoriPfS_S_(i32 %0, float* %1, float* %2, float* %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.float3, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.float3, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %113, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %116

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  %30 = mul nsw i32 %29, 1
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  br label %39

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = mul nsw i32 %37, 1
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i32 [ %34, %33 ], [ %38, %35 ]
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %109, %39
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %112

46:                                               ; preds = %42
  %47 = load float*, float** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 0, %49
  %51 = add nsw i32 %48, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %47, i64 %52
  %54 = load float, float* %53, align 4
  store float %54, float* %13, align 4
  %55 = load float*, float** %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 1, %57
  %59 = add nsw i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %55, i64 %60
  %62 = load float, float* %61, align 4
  %63 = getelementptr inbounds %struct.float3, %struct.float3* %14, i32 0, i32 0
  store float %62, float* %63, align 4
  %64 = load float*, float** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %5, align 4
  %67 = mul nsw i32 2, %66
  %68 = add nsw i32 %65, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %64, i64 %69
  %71 = load float, float* %70, align 4
  %72 = getelementptr inbounds %struct.float3, %struct.float3* %14, i32 0, i32 1
  store float %71, float* %72, align 4
  %73 = load float*, float** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 3, %75
  %77 = add nsw i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %73, i64 %78
  %80 = load float, float* %79, align 4
  %81 = getelementptr inbounds %struct.float3, %struct.float3* %14, i32 0, i32 2
  store float %80, float* %81, align 4
  %82 = load float*, float** %6, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %5, align 4
  %85 = mul nsw i32 4, %84
  %86 = add nsw i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %82, i64 %87
  %89 = load float, float* %88, align 4
  store float %89, float* %15, align 4
  call void @_Z16compute_velocityRfR6float3S1_(float* dereferenceable(4) %13, %struct.float3* dereferenceable(12) %14, %struct.float3* dereferenceable(12) %16)
  %90 = call float @_Z17compute_speed_sqdR6float3(%struct.float3* dereferenceable(12) %16)
  store float %90, float* %17, align 4
  %91 = call float @_Z16compute_pressureRfS_S_(float* dereferenceable(4) %13, float* dereferenceable(4) %15, float* dereferenceable(4) %17)
  store float %91, float* %18, align 4
  %92 = call float @_Z22compute_speed_of_soundRfS_(float* dereferenceable(4) %13, float* dereferenceable(4) %18)
  store float %92, float* %19, align 4
  %93 = load float*, float** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = call float @_ZSt4sqrtf(float %97)
  %99 = load float, float* %17, align 4
  %100 = call float @_ZSt4sqrtf(float %99)
  %101 = load float, float* %19, align 4
  %102 = fadd float %100, %101
  %103 = fmul float %98, %102
  %104 = fdiv float 5.000000e-01, %103
  %105 = load float*, float** %8, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  store float %104, float* %108, align 4
  br label %109

109:                                              ; preds = %46
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %42

112:                                              ; preds = %42
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %20

116:                                              ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_Z16compute_velocityRfR6float3S1_(float* dereferenceable(4) %0, %struct.float3* dereferenceable(12) %1, %struct.float3* dereferenceable(12) %2) #5 comdat {
  %4 = alloca float*, align 8
  %5 = alloca %struct.float3*, align 8
  %6 = alloca %struct.float3*, align 8
  store float* %0, float** %4, align 8
  store %struct.float3* %1, %struct.float3** %5, align 8
  store %struct.float3* %2, %struct.float3** %6, align 8
  %7 = load %struct.float3*, %struct.float3** %5, align 8
  %8 = getelementptr inbounds %struct.float3, %struct.float3* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = load float*, float** %4, align 8
  %11 = load float, float* %10, align 4
  %12 = fdiv float %9, %11
  %13 = load %struct.float3*, %struct.float3** %6, align 8
  %14 = getelementptr inbounds %struct.float3, %struct.float3* %13, i32 0, i32 0
  store float %12, float* %14, align 4
  %15 = load %struct.float3*, %struct.float3** %5, align 8
  %16 = getelementptr inbounds %struct.float3, %struct.float3* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = load float*, float** %4, align 8
  %19 = load float, float* %18, align 4
  %20 = fdiv float %17, %19
  %21 = load %struct.float3*, %struct.float3** %6, align 8
  %22 = getelementptr inbounds %struct.float3, %struct.float3* %21, i32 0, i32 1
  store float %20, float* %22, align 4
  %23 = load %struct.float3*, %struct.float3** %5, align 8
  %24 = getelementptr inbounds %struct.float3, %struct.float3* %23, i32 0, i32 2
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %4, align 8
  %27 = load float, float* %26, align 4
  %28 = fdiv float %25, %27
  %29 = load %struct.float3*, %struct.float3** %6, align 8
  %30 = getelementptr inbounds %struct.float3, %struct.float3* %29, i32 0, i32 2
  store float %28, float* %30, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local float @_Z17compute_speed_sqdR6float3(%struct.float3* dereferenceable(12) %0) #5 comdat {
  %2 = alloca %struct.float3*, align 8
  store %struct.float3* %0, %struct.float3** %2, align 8
  %3 = load %struct.float3*, %struct.float3** %2, align 8
  %4 = getelementptr inbounds %struct.float3, %struct.float3* %3, i32 0, i32 0
  %5 = load float, float* %4, align 4
  %6 = load %struct.float3*, %struct.float3** %2, align 8
  %7 = getelementptr inbounds %struct.float3, %struct.float3* %6, i32 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = fmul float %5, %8
  %10 = load %struct.float3*, %struct.float3** %2, align 8
  %11 = getelementptr inbounds %struct.float3, %struct.float3* %10, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = load %struct.float3*, %struct.float3** %2, align 8
  %14 = getelementptr inbounds %struct.float3, %struct.float3* %13, i32 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fadd float %9, %16
  %18 = load %struct.float3*, %struct.float3** %2, align 8
  %19 = getelementptr inbounds %struct.float3, %struct.float3* %18, i32 0, i32 2
  %20 = load float, float* %19, align 4
  %21 = load %struct.float3*, %struct.float3** %2, align 8
  %22 = getelementptr inbounds %struct.float3, %struct.float3* %21, i32 0, i32 2
  %23 = load float, float* %22, align 4
  %24 = fmul float %20, %23
  %25 = fadd float %17, %24
  ret float %25
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local float @_Z16compute_pressureRfS_S_(float* dereferenceable(4) %0, float* dereferenceable(4) %1, float* dereferenceable(4) %2) #5 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load float*, float** %5, align 8
  %8 = load float, float* %7, align 4
  %9 = load float*, float** %4, align 8
  %10 = load float, float* %9, align 4
  %11 = fmul float 5.000000e-01, %10
  %12 = load float*, float** %6, align 8
  %13 = load float, float* %12, align 4
  %14 = fmul float %11, %13
  %15 = fsub float %8, %14
  %16 = fmul float 0x3FD9999980000000, %15
  ret float %16
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local float @_Z22compute_speed_of_soundRfS_(float* dereferenceable(4) %0, float* dereferenceable(4) %1) #4 comdat {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load float*, float** %4, align 8
  %6 = load float, float* %5, align 4
  %7 = fmul float 0x3FF6666660000000, %6
  %8 = load float*, float** %3, align 8
  %9 = load float, float* %8, align 4
  %10 = fdiv float %7, %9
  %11 = call float @_ZSt4sqrtf(float %10)
  ret float %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local float @_ZSt4sqrtf(float %0) #5 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call float @sqrtf(float %3) #3
  ret float %4
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z12compute_fluxiPiPfS0_S0_S0_6float3S1_S1_S1_(i32 %0, i32* %1, float* %2, float* %3, float* %4, float* %5, <2 x float> %6, float %7, <2 x float> %8, float %9, <2 x float> %10, float %11, <2 x float> %12, float %13) #6 {
  %15 = alloca %struct.float3, align 4
  %16 = alloca { <2 x float>, float }, align 4
  %17 = alloca %struct.float3, align 4
  %18 = alloca { <2 x float>, float }, align 4
  %19 = alloca %struct.float3, align 4
  %20 = alloca { <2 x float>, float }, align 4
  %21 = alloca %struct.float3, align 4
  %22 = alloca { <2 x float>, float }, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca float, align 4
  %35 = alloca %struct.float3, align 4
  %36 = alloca float, align 4
  %37 = alloca %struct.float3, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca %struct.float3, align 4
  %43 = alloca %struct.float3, align 4
  %44 = alloca %struct.float3, align 4
  %45 = alloca %struct.float3, align 4
  %46 = alloca float, align 4
  %47 = alloca %struct.float3, align 4
  %48 = alloca float, align 4
  %49 = alloca %struct.float3, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = alloca %struct.float3, align 4
  %53 = alloca %struct.float3, align 4
  %54 = alloca %struct.float3, align 4
  %55 = alloca %struct.float3, align 4
  %56 = alloca %struct.float3, align 4
  %57 = alloca float, align 4
  %58 = alloca float, align 4
  %59 = alloca float, align 4
  %60 = alloca i32, align 4
  %61 = alloca %struct.float3, align 4
  %62 = alloca float, align 4
  %63 = alloca float, align 4
  %64 = alloca i32, align 4
  %65 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %16, i32 0, i32 0
  store <2 x float> %6, <2 x float>* %65, align 4
  %66 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %16, i32 0, i32 1
  store float %7, float* %66, align 4
  %67 = bitcast %struct.float3* %15 to i8*
  %68 = bitcast { <2 x float>, float }* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 12, i1 false)
  %69 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %18, i32 0, i32 0
  store <2 x float> %8, <2 x float>* %69, align 4
  %70 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %18, i32 0, i32 1
  store float %9, float* %70, align 4
  %71 = bitcast %struct.float3* %17 to i8*
  %72 = bitcast { <2 x float>, float }* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 12, i1 false)
  %73 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %20, i32 0, i32 0
  store <2 x float> %10, <2 x float>* %73, align 4
  %74 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %20, i32 0, i32 1
  store float %11, float* %74, align 4
  %75 = bitcast %struct.float3* %19 to i8*
  %76 = bitcast { <2 x float>, float }* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 12, i1 false)
  %77 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %22, i32 0, i32 0
  store <2 x float> %12, <2 x float>* %77, align 4
  %78 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %22, i32 0, i32 1
  store float %13, float* %78, align 4
  %79 = bitcast %struct.float3* %21 to i8*
  %80 = bitcast { <2 x float>, float }* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 12, i1 false)
  store i32 %0, i32* %23, align 4
  store i32* %1, i32** %24, align 8
  store float* %2, float** %25, align 8
  store float* %3, float** %26, align 8
  store float* %4, float** %27, align 8
  store float* %5, float** %28, align 8
  store float 0x3FC99999A0000000, float* %29, align 4
  store i32 0, i32* %30, align 4
  br label %81

81:                                               ; preds = %721, %14
  %82 = load i32, i32* %30, align 4
  %83 = load i32, i32* %23, align 4
  %84 = sdiv i32 %83, 1
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %724

86:                                               ; preds = %81
  %87 = load i32, i32* %30, align 4
  %88 = mul nsw i32 %87, 1
  store i32 %88, i32* %31, align 4
  %89 = load i32, i32* %30, align 4
  %90 = add nsw i32 %89, 1
  %91 = mul nsw i32 %90, 1
  %92 = load i32, i32* %23, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %23, align 4
  br label %100

96:                                               ; preds = %86
  %97 = load i32, i32* %30, align 4
  %98 = add nsw i32 %97, 1
  %99 = mul nsw i32 %98, 1
  br label %100

100:                                              ; preds = %96, %94
  %101 = phi i32 [ %95, %94 ], [ %99, %96 ]
  store i32 %101, i32* %32, align 4
  %102 = load i32, i32* %31, align 4
  store i32 %102, i32* %33, align 4
  br label %103

103:                                              ; preds = %717, %100
  %104 = load i32, i32* %33, align 4
  %105 = load i32, i32* %32, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %720

107:                                              ; preds = %103
  %108 = load float*, float** %26, align 8
  %109 = load i32, i32* %33, align 4
  %110 = load i32, i32* %23, align 4
  %111 = mul nsw i32 0, %110
  %112 = add nsw i32 %109, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %108, i64 %113
  %115 = load float, float* %114, align 4
  store float %115, float* %34, align 4
  %116 = load float*, float** %26, align 8
  %117 = load i32, i32* %33, align 4
  %118 = load i32, i32* %23, align 4
  %119 = mul nsw i32 1, %118
  %120 = add nsw i32 %117, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %116, i64 %121
  %123 = load float, float* %122, align 4
  %124 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 0
  store float %123, float* %124, align 4
  %125 = load float*, float** %26, align 8
  %126 = load i32, i32* %33, align 4
  %127 = load i32, i32* %23, align 4
  %128 = mul nsw i32 2, %127
  %129 = add nsw i32 %126, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %125, i64 %130
  %132 = load float, float* %131, align 4
  %133 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 1
  store float %132, float* %133, align 4
  %134 = load float*, float** %26, align 8
  %135 = load i32, i32* %33, align 4
  %136 = load i32, i32* %23, align 4
  %137 = mul nsw i32 3, %136
  %138 = add nsw i32 %135, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %134, i64 %139
  %141 = load float, float* %140, align 4
  %142 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 2
  store float %141, float* %142, align 4
  %143 = load float*, float** %26, align 8
  %144 = load i32, i32* %33, align 4
  %145 = load i32, i32* %23, align 4
  %146 = mul nsw i32 4, %145
  %147 = add nsw i32 %144, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %143, i64 %148
  %150 = load float, float* %149, align 4
  store float %150, float* %36, align 4
  call void @_Z16compute_velocityRfR6float3S1_(float* dereferenceable(4) %34, %struct.float3* dereferenceable(12) %35, %struct.float3* dereferenceable(12) %37)
  %151 = call float @_Z17compute_speed_sqdR6float3(%struct.float3* dereferenceable(12) %37)
  store float %151, float* %38, align 4
  %152 = load float, float* %38, align 4
  %153 = call float @_ZSt4sqrtf(float %152)
  store float %153, float* %39, align 4
  %154 = call float @_Z16compute_pressureRfS_S_(float* dereferenceable(4) %34, float* dereferenceable(4) %36, float* dereferenceable(4) %38)
  store float %154, float* %40, align 4
  %155 = call float @_Z22compute_speed_of_soundRfS_(float* dereferenceable(4) %34, float* dereferenceable(4) %40)
  store float %155, float* %41, align 4
  call void @_Z25compute_flux_contributionRfR6float3S_S_S1_S1_S1_S1_S1_(float* dereferenceable(4) %34, %struct.float3* dereferenceable(12) %35, float* dereferenceable(4) %36, float* dereferenceable(4) %40, %struct.float3* dereferenceable(12) %37, %struct.float3* dereferenceable(12) %42, %struct.float3* dereferenceable(12) %43, %struct.float3* dereferenceable(12) %44, %struct.float3* dereferenceable(12) %45)
  store float 0.000000e+00, float* %46, align 4
  %156 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 0
  store float 0.000000e+00, float* %156, align 4
  %157 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 1
  store float 0.000000e+00, float* %157, align 4
  %158 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 2
  store float 0.000000e+00, float* %158, align 4
  store float 0.000000e+00, float* %48, align 4
  store i32 0, i32* %60, align 4
  br label %159

159:                                              ; preds = %670, %107
  %160 = load i32, i32* %60, align 4
  %161 = icmp slt i32 %160, 4
  br i1 %161, label %162, label %673

162:                                              ; preds = %159
  %163 = load i32*, i32** %24, align 8
  %164 = load i32, i32* %33, align 4
  %165 = load i32, i32* %60, align 4
  %166 = load i32, i32* %23, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %164, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %163, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %64, align 4
  %172 = load float*, float** %25, align 8
  %173 = load i32, i32* %33, align 4
  %174 = load i32, i32* %60, align 4
  %175 = add nsw i32 %174, 0
  %176 = load i32, i32* %23, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %173, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %172, i64 %179
  %181 = load float, float* %180, align 4
  %182 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 0
  store float %181, float* %182, align 4
  %183 = load float*, float** %25, align 8
  %184 = load i32, i32* %33, align 4
  %185 = load i32, i32* %60, align 4
  %186 = add nsw i32 %185, 4
  %187 = load i32, i32* %23, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %184, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %183, i64 %190
  %192 = load float, float* %191, align 4
  %193 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 1
  store float %192, float* %193, align 4
  %194 = load float*, float** %25, align 8
  %195 = load i32, i32* %33, align 4
  %196 = load i32, i32* %60, align 4
  %197 = add nsw i32 %196, 8
  %198 = load i32, i32* %23, align 4
  %199 = mul nsw i32 %197, %198
  %200 = add nsw i32 %195, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %194, i64 %201
  %203 = load float, float* %202, align 4
  %204 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 2
  store float %203, float* %204, align 4
  %205 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 0
  %206 = load float, float* %205, align 4
  %207 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 0
  %208 = load float, float* %207, align 4
  %209 = fmul float %206, %208
  %210 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 1
  %211 = load float, float* %210, align 4
  %212 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 1
  %213 = load float, float* %212, align 4
  %214 = fmul float %211, %213
  %215 = fadd float %209, %214
  %216 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 2
  %217 = load float, float* %216, align 4
  %218 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 2
  %219 = load float, float* %218, align 4
  %220 = fmul float %217, %219
  %221 = fadd float %215, %220
  %222 = call float @_ZSt4sqrtf(float %221)
  store float %222, float* %62, align 4
  %223 = load i32, i32* %64, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %482

225:                                              ; preds = %162
  %226 = load float*, float** %26, align 8
  %227 = load i32, i32* %64, align 4
  %228 = load i32, i32* %23, align 4
  %229 = mul nsw i32 0, %228
  %230 = add nsw i32 %227, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %226, i64 %231
  %233 = load float, float* %232, align 4
  store float %233, float* %50, align 4
  %234 = load float*, float** %26, align 8
  %235 = load i32, i32* %64, align 4
  %236 = load i32, i32* %23, align 4
  %237 = mul nsw i32 1, %236
  %238 = add nsw i32 %235, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %234, i64 %239
  %241 = load float, float* %240, align 4
  %242 = getelementptr inbounds %struct.float3, %struct.float3* %52, i32 0, i32 0
  store float %241, float* %242, align 4
  %243 = load float*, float** %26, align 8
  %244 = load i32, i32* %64, align 4
  %245 = load i32, i32* %23, align 4
  %246 = mul nsw i32 2, %245
  %247 = add nsw i32 %244, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %243, i64 %248
  %250 = load float, float* %249, align 4
  %251 = getelementptr inbounds %struct.float3, %struct.float3* %52, i32 0, i32 1
  store float %250, float* %251, align 4
  %252 = load float*, float** %26, align 8
  %253 = load i32, i32* %64, align 4
  %254 = load i32, i32* %23, align 4
  %255 = mul nsw i32 3, %254
  %256 = add nsw i32 %253, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %252, i64 %257
  %259 = load float, float* %258, align 4
  %260 = getelementptr inbounds %struct.float3, %struct.float3* %52, i32 0, i32 2
  store float %259, float* %260, align 4
  %261 = load float*, float** %26, align 8
  %262 = load i32, i32* %64, align 4
  %263 = load i32, i32* %23, align 4
  %264 = mul nsw i32 4, %263
  %265 = add nsw i32 %262, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %261, i64 %266
  %268 = load float, float* %267, align 4
  store float %268, float* %51, align 4
  call void @_Z16compute_velocityRfR6float3S1_(float* dereferenceable(4) %50, %struct.float3* dereferenceable(12) %52, %struct.float3* dereferenceable(12) %49)
  %269 = call float @_Z17compute_speed_sqdR6float3(%struct.float3* dereferenceable(12) %49)
  store float %269, float* %57, align 4
  %270 = call float @_Z16compute_pressureRfS_S_(float* dereferenceable(4) %50, float* dereferenceable(4) %51, float* dereferenceable(4) %57)
  store float %270, float* %59, align 4
  %271 = call float @_Z22compute_speed_of_soundRfS_(float* dereferenceable(4) %50, float* dereferenceable(4) %59)
  store float %271, float* %58, align 4
  call void @_Z25compute_flux_contributionRfR6float3S_S_S1_S1_S1_S1_S1_(float* dereferenceable(4) %50, %struct.float3* dereferenceable(12) %52, float* dereferenceable(4) %51, float* dereferenceable(4) %59, %struct.float3* dereferenceable(12) %49, %struct.float3* dereferenceable(12) %53, %struct.float3* dereferenceable(12) %54, %struct.float3* dereferenceable(12) %55, %struct.float3* dereferenceable(12) %56)
  %272 = load float, float* %62, align 4
  %273 = fneg float %272
  %274 = fmul float %273, 0x3FC99999A0000000
  %275 = fmul float %274, 5.000000e-01
  %276 = load float, float* %39, align 4
  %277 = load float, float* %57, align 4
  %278 = call float @_ZSt4sqrtf(float %277)
  %279 = fadd float %276, %278
  %280 = load float, float* %41, align 4
  %281 = fadd float %279, %280
  %282 = load float, float* %58, align 4
  %283 = fadd float %281, %282
  %284 = fmul float %275, %283
  store float %284, float* %63, align 4
  %285 = load float, float* %63, align 4
  %286 = load float, float* %34, align 4
  %287 = load float, float* %50, align 4
  %288 = fsub float %286, %287
  %289 = fmul float %285, %288
  %290 = load float, float* %46, align 4
  %291 = fadd float %290, %289
  store float %291, float* %46, align 4
  %292 = load float, float* %63, align 4
  %293 = load float, float* %36, align 4
  %294 = load float, float* %51, align 4
  %295 = fsub float %293, %294
  %296 = fmul float %292, %295
  %297 = load float, float* %48, align 4
  %298 = fadd float %297, %296
  store float %298, float* %48, align 4
  %299 = load float, float* %63, align 4
  %300 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 0
  %301 = load float, float* %300, align 4
  %302 = getelementptr inbounds %struct.float3, %struct.float3* %52, i32 0, i32 0
  %303 = load float, float* %302, align 4
  %304 = fsub float %301, %303
  %305 = fmul float %299, %304
  %306 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 0
  %307 = load float, float* %306, align 4
  %308 = fadd float %307, %305
  store float %308, float* %306, align 4
  %309 = load float, float* %63, align 4
  %310 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 1
  %311 = load float, float* %310, align 4
  %312 = getelementptr inbounds %struct.float3, %struct.float3* %52, i32 0, i32 1
  %313 = load float, float* %312, align 4
  %314 = fsub float %311, %313
  %315 = fmul float %309, %314
  %316 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 1
  %317 = load float, float* %316, align 4
  %318 = fadd float %317, %315
  store float %318, float* %316, align 4
  %319 = load float, float* %63, align 4
  %320 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 2
  %321 = load float, float* %320, align 4
  %322 = getelementptr inbounds %struct.float3, %struct.float3* %52, i32 0, i32 2
  %323 = load float, float* %322, align 4
  %324 = fsub float %321, %323
  %325 = fmul float %319, %324
  %326 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 2
  %327 = load float, float* %326, align 4
  %328 = fadd float %327, %325
  store float %328, float* %326, align 4
  %329 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 0
  %330 = load float, float* %329, align 4
  %331 = fmul float 5.000000e-01, %330
  store float %331, float* %63, align 4
  %332 = load float, float* %63, align 4
  %333 = getelementptr inbounds %struct.float3, %struct.float3* %52, i32 0, i32 0
  %334 = load float, float* %333, align 4
  %335 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 0
  %336 = load float, float* %335, align 4
  %337 = fadd float %334, %336
  %338 = fmul float %332, %337
  %339 = load float, float* %46, align 4
  %340 = fadd float %339, %338
  store float %340, float* %46, align 4
  %341 = load float, float* %63, align 4
  %342 = getelementptr inbounds %struct.float3, %struct.float3* %56, i32 0, i32 0
  %343 = load float, float* %342, align 4
  %344 = getelementptr inbounds %struct.float3, %struct.float3* %45, i32 0, i32 0
  %345 = load float, float* %344, align 4
  %346 = fadd float %343, %345
  %347 = fmul float %341, %346
  %348 = load float, float* %48, align 4
  %349 = fadd float %348, %347
  store float %349, float* %48, align 4
  %350 = load float, float* %63, align 4
  %351 = getelementptr inbounds %struct.float3, %struct.float3* %53, i32 0, i32 0
  %352 = load float, float* %351, align 4
  %353 = getelementptr inbounds %struct.float3, %struct.float3* %42, i32 0, i32 0
  %354 = load float, float* %353, align 4
  %355 = fadd float %352, %354
  %356 = fmul float %350, %355
  %357 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 0
  %358 = load float, float* %357, align 4
  %359 = fadd float %358, %356
  store float %359, float* %357, align 4
  %360 = load float, float* %63, align 4
  %361 = getelementptr inbounds %struct.float3, %struct.float3* %54, i32 0, i32 0
  %362 = load float, float* %361, align 4
  %363 = getelementptr inbounds %struct.float3, %struct.float3* %43, i32 0, i32 0
  %364 = load float, float* %363, align 4
  %365 = fadd float %362, %364
  %366 = fmul float %360, %365
  %367 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 1
  %368 = load float, float* %367, align 4
  %369 = fadd float %368, %366
  store float %369, float* %367, align 4
  %370 = load float, float* %63, align 4
  %371 = getelementptr inbounds %struct.float3, %struct.float3* %55, i32 0, i32 0
  %372 = load float, float* %371, align 4
  %373 = getelementptr inbounds %struct.float3, %struct.float3* %44, i32 0, i32 0
  %374 = load float, float* %373, align 4
  %375 = fadd float %372, %374
  %376 = fmul float %370, %375
  %377 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 2
  %378 = load float, float* %377, align 4
  %379 = fadd float %378, %376
  store float %379, float* %377, align 4
  %380 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 1
  %381 = load float, float* %380, align 4
  %382 = fmul float 5.000000e-01, %381
  store float %382, float* %63, align 4
  %383 = load float, float* %63, align 4
  %384 = getelementptr inbounds %struct.float3, %struct.float3* %52, i32 0, i32 1
  %385 = load float, float* %384, align 4
  %386 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 1
  %387 = load float, float* %386, align 4
  %388 = fadd float %385, %387
  %389 = fmul float %383, %388
  %390 = load float, float* %46, align 4
  %391 = fadd float %390, %389
  store float %391, float* %46, align 4
  %392 = load float, float* %63, align 4
  %393 = getelementptr inbounds %struct.float3, %struct.float3* %56, i32 0, i32 1
  %394 = load float, float* %393, align 4
  %395 = getelementptr inbounds %struct.float3, %struct.float3* %45, i32 0, i32 1
  %396 = load float, float* %395, align 4
  %397 = fadd float %394, %396
  %398 = fmul float %392, %397
  %399 = load float, float* %48, align 4
  %400 = fadd float %399, %398
  store float %400, float* %48, align 4
  %401 = load float, float* %63, align 4
  %402 = getelementptr inbounds %struct.float3, %struct.float3* %53, i32 0, i32 1
  %403 = load float, float* %402, align 4
  %404 = getelementptr inbounds %struct.float3, %struct.float3* %42, i32 0, i32 1
  %405 = load float, float* %404, align 4
  %406 = fadd float %403, %405
  %407 = fmul float %401, %406
  %408 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 0
  %409 = load float, float* %408, align 4
  %410 = fadd float %409, %407
  store float %410, float* %408, align 4
  %411 = load float, float* %63, align 4
  %412 = getelementptr inbounds %struct.float3, %struct.float3* %54, i32 0, i32 1
  %413 = load float, float* %412, align 4
  %414 = getelementptr inbounds %struct.float3, %struct.float3* %43, i32 0, i32 1
  %415 = load float, float* %414, align 4
  %416 = fadd float %413, %415
  %417 = fmul float %411, %416
  %418 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 1
  %419 = load float, float* %418, align 4
  %420 = fadd float %419, %417
  store float %420, float* %418, align 4
  %421 = load float, float* %63, align 4
  %422 = getelementptr inbounds %struct.float3, %struct.float3* %55, i32 0, i32 1
  %423 = load float, float* %422, align 4
  %424 = getelementptr inbounds %struct.float3, %struct.float3* %44, i32 0, i32 1
  %425 = load float, float* %424, align 4
  %426 = fadd float %423, %425
  %427 = fmul float %421, %426
  %428 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 2
  %429 = load float, float* %428, align 4
  %430 = fadd float %429, %427
  store float %430, float* %428, align 4
  %431 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 2
  %432 = load float, float* %431, align 4
  %433 = fmul float 5.000000e-01, %432
  store float %433, float* %63, align 4
  %434 = load float, float* %63, align 4
  %435 = getelementptr inbounds %struct.float3, %struct.float3* %52, i32 0, i32 2
  %436 = load float, float* %435, align 4
  %437 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 2
  %438 = load float, float* %437, align 4
  %439 = fadd float %436, %438
  %440 = fmul float %434, %439
  %441 = load float, float* %46, align 4
  %442 = fadd float %441, %440
  store float %442, float* %46, align 4
  %443 = load float, float* %63, align 4
  %444 = getelementptr inbounds %struct.float3, %struct.float3* %56, i32 0, i32 2
  %445 = load float, float* %444, align 4
  %446 = getelementptr inbounds %struct.float3, %struct.float3* %45, i32 0, i32 2
  %447 = load float, float* %446, align 4
  %448 = fadd float %445, %447
  %449 = fmul float %443, %448
  %450 = load float, float* %48, align 4
  %451 = fadd float %450, %449
  store float %451, float* %48, align 4
  %452 = load float, float* %63, align 4
  %453 = getelementptr inbounds %struct.float3, %struct.float3* %53, i32 0, i32 2
  %454 = load float, float* %453, align 4
  %455 = getelementptr inbounds %struct.float3, %struct.float3* %42, i32 0, i32 2
  %456 = load float, float* %455, align 4
  %457 = fadd float %454, %456
  %458 = fmul float %452, %457
  %459 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 0
  %460 = load float, float* %459, align 4
  %461 = fadd float %460, %458
  store float %461, float* %459, align 4
  %462 = load float, float* %63, align 4
  %463 = getelementptr inbounds %struct.float3, %struct.float3* %54, i32 0, i32 2
  %464 = load float, float* %463, align 4
  %465 = getelementptr inbounds %struct.float3, %struct.float3* %43, i32 0, i32 2
  %466 = load float, float* %465, align 4
  %467 = fadd float %464, %466
  %468 = fmul float %462, %467
  %469 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 1
  %470 = load float, float* %469, align 4
  %471 = fadd float %470, %468
  store float %471, float* %469, align 4
  %472 = load float, float* %63, align 4
  %473 = getelementptr inbounds %struct.float3, %struct.float3* %55, i32 0, i32 2
  %474 = load float, float* %473, align 4
  %475 = getelementptr inbounds %struct.float3, %struct.float3* %44, i32 0, i32 2
  %476 = load float, float* %475, align 4
  %477 = fadd float %474, %476
  %478 = fmul float %472, %477
  %479 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 2
  %480 = load float, float* %479, align 4
  %481 = fadd float %480, %478
  store float %481, float* %479, align 4
  br label %669

482:                                              ; preds = %162
  %483 = load i32, i32* %64, align 4
  %484 = icmp eq i32 %483, -1
  br i1 %484, label %485, label %507

485:                                              ; preds = %482
  %486 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 0
  %487 = load float, float* %486, align 4
  %488 = load float, float* %40, align 4
  %489 = fmul float %487, %488
  %490 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 0
  %491 = load float, float* %490, align 4
  %492 = fadd float %491, %489
  store float %492, float* %490, align 4
  %493 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 1
  %494 = load float, float* %493, align 4
  %495 = load float, float* %40, align 4
  %496 = fmul float %494, %495
  %497 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 1
  %498 = load float, float* %497, align 4
  %499 = fadd float %498, %496
  store float %499, float* %497, align 4
  %500 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 2
  %501 = load float, float* %500, align 4
  %502 = load float, float* %40, align 4
  %503 = fmul float %501, %502
  %504 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 2
  %505 = load float, float* %504, align 4
  %506 = fadd float %505, %503
  store float %506, float* %504, align 4
  br label %668

507:                                              ; preds = %482
  %508 = load i32, i32* %64, align 4
  %509 = icmp eq i32 %508, -2
  br i1 %509, label %510, label %667

510:                                              ; preds = %507
  %511 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 0
  %512 = load float, float* %511, align 4
  %513 = fmul float 5.000000e-01, %512
  store float %513, float* %63, align 4
  %514 = load float, float* %63, align 4
  %515 = load float*, float** %28, align 8
  %516 = getelementptr inbounds float, float* %515, i64 1
  %517 = load float, float* %516, align 4
  %518 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 0
  %519 = load float, float* %518, align 4
  %520 = fadd float %517, %519
  %521 = fmul float %514, %520
  %522 = load float, float* %46, align 4
  %523 = fadd float %522, %521
  store float %523, float* %46, align 4
  %524 = load float, float* %63, align 4
  %525 = getelementptr inbounds %struct.float3, %struct.float3* %21, i32 0, i32 0
  %526 = load float, float* %525, align 4
  %527 = getelementptr inbounds %struct.float3, %struct.float3* %45, i32 0, i32 0
  %528 = load float, float* %527, align 4
  %529 = fadd float %526, %528
  %530 = fmul float %524, %529
  %531 = load float, float* %48, align 4
  %532 = fadd float %531, %530
  store float %532, float* %48, align 4
  %533 = load float, float* %63, align 4
  %534 = getelementptr inbounds %struct.float3, %struct.float3* %15, i32 0, i32 0
  %535 = load float, float* %534, align 4
  %536 = getelementptr inbounds %struct.float3, %struct.float3* %42, i32 0, i32 0
  %537 = load float, float* %536, align 4
  %538 = fadd float %535, %537
  %539 = fmul float %533, %538
  %540 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 0
  %541 = load float, float* %540, align 4
  %542 = fadd float %541, %539
  store float %542, float* %540, align 4
  %543 = load float, float* %63, align 4
  %544 = getelementptr inbounds %struct.float3, %struct.float3* %17, i32 0, i32 0
  %545 = load float, float* %544, align 4
  %546 = getelementptr inbounds %struct.float3, %struct.float3* %43, i32 0, i32 0
  %547 = load float, float* %546, align 4
  %548 = fadd float %545, %547
  %549 = fmul float %543, %548
  %550 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 1
  %551 = load float, float* %550, align 4
  %552 = fadd float %551, %549
  store float %552, float* %550, align 4
  %553 = load float, float* %63, align 4
  %554 = getelementptr inbounds %struct.float3, %struct.float3* %19, i32 0, i32 0
  %555 = load float, float* %554, align 4
  %556 = getelementptr inbounds %struct.float3, %struct.float3* %44, i32 0, i32 0
  %557 = load float, float* %556, align 4
  %558 = fadd float %555, %557
  %559 = fmul float %553, %558
  %560 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 2
  %561 = load float, float* %560, align 4
  %562 = fadd float %561, %559
  store float %562, float* %560, align 4
  %563 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 1
  %564 = load float, float* %563, align 4
  %565 = fmul float 5.000000e-01, %564
  store float %565, float* %63, align 4
  %566 = load float, float* %63, align 4
  %567 = load float*, float** %28, align 8
  %568 = getelementptr inbounds float, float* %567, i64 2
  %569 = load float, float* %568, align 4
  %570 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 1
  %571 = load float, float* %570, align 4
  %572 = fadd float %569, %571
  %573 = fmul float %566, %572
  %574 = load float, float* %46, align 4
  %575 = fadd float %574, %573
  store float %575, float* %46, align 4
  %576 = load float, float* %63, align 4
  %577 = getelementptr inbounds %struct.float3, %struct.float3* %21, i32 0, i32 1
  %578 = load float, float* %577, align 4
  %579 = getelementptr inbounds %struct.float3, %struct.float3* %45, i32 0, i32 1
  %580 = load float, float* %579, align 4
  %581 = fadd float %578, %580
  %582 = fmul float %576, %581
  %583 = load float, float* %48, align 4
  %584 = fadd float %583, %582
  store float %584, float* %48, align 4
  %585 = load float, float* %63, align 4
  %586 = getelementptr inbounds %struct.float3, %struct.float3* %15, i32 0, i32 1
  %587 = load float, float* %586, align 4
  %588 = getelementptr inbounds %struct.float3, %struct.float3* %42, i32 0, i32 1
  %589 = load float, float* %588, align 4
  %590 = fadd float %587, %589
  %591 = fmul float %585, %590
  %592 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 0
  %593 = load float, float* %592, align 4
  %594 = fadd float %593, %591
  store float %594, float* %592, align 4
  %595 = load float, float* %63, align 4
  %596 = getelementptr inbounds %struct.float3, %struct.float3* %17, i32 0, i32 1
  %597 = load float, float* %596, align 4
  %598 = getelementptr inbounds %struct.float3, %struct.float3* %43, i32 0, i32 1
  %599 = load float, float* %598, align 4
  %600 = fadd float %597, %599
  %601 = fmul float %595, %600
  %602 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 1
  %603 = load float, float* %602, align 4
  %604 = fadd float %603, %601
  store float %604, float* %602, align 4
  %605 = load float, float* %63, align 4
  %606 = getelementptr inbounds %struct.float3, %struct.float3* %19, i32 0, i32 1
  %607 = load float, float* %606, align 4
  %608 = getelementptr inbounds %struct.float3, %struct.float3* %44, i32 0, i32 1
  %609 = load float, float* %608, align 4
  %610 = fadd float %607, %609
  %611 = fmul float %605, %610
  %612 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 2
  %613 = load float, float* %612, align 4
  %614 = fadd float %613, %611
  store float %614, float* %612, align 4
  %615 = getelementptr inbounds %struct.float3, %struct.float3* %61, i32 0, i32 2
  %616 = load float, float* %615, align 4
  %617 = fmul float 5.000000e-01, %616
  store float %617, float* %63, align 4
  %618 = load float, float* %63, align 4
  %619 = load float*, float** %28, align 8
  %620 = getelementptr inbounds float, float* %619, i64 3
  %621 = load float, float* %620, align 4
  %622 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 2
  %623 = load float, float* %622, align 4
  %624 = fadd float %621, %623
  %625 = fmul float %618, %624
  %626 = load float, float* %46, align 4
  %627 = fadd float %626, %625
  store float %627, float* %46, align 4
  %628 = load float, float* %63, align 4
  %629 = getelementptr inbounds %struct.float3, %struct.float3* %21, i32 0, i32 2
  %630 = load float, float* %629, align 4
  %631 = getelementptr inbounds %struct.float3, %struct.float3* %45, i32 0, i32 2
  %632 = load float, float* %631, align 4
  %633 = fadd float %630, %632
  %634 = fmul float %628, %633
  %635 = load float, float* %48, align 4
  %636 = fadd float %635, %634
  store float %636, float* %48, align 4
  %637 = load float, float* %63, align 4
  %638 = getelementptr inbounds %struct.float3, %struct.float3* %15, i32 0, i32 2
  %639 = load float, float* %638, align 4
  %640 = getelementptr inbounds %struct.float3, %struct.float3* %42, i32 0, i32 2
  %641 = load float, float* %640, align 4
  %642 = fadd float %639, %641
  %643 = fmul float %637, %642
  %644 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 0
  %645 = load float, float* %644, align 4
  %646 = fadd float %645, %643
  store float %646, float* %644, align 4
  %647 = load float, float* %63, align 4
  %648 = getelementptr inbounds %struct.float3, %struct.float3* %17, i32 0, i32 2
  %649 = load float, float* %648, align 4
  %650 = getelementptr inbounds %struct.float3, %struct.float3* %43, i32 0, i32 2
  %651 = load float, float* %650, align 4
  %652 = fadd float %649, %651
  %653 = fmul float %647, %652
  %654 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 1
  %655 = load float, float* %654, align 4
  %656 = fadd float %655, %653
  store float %656, float* %654, align 4
  %657 = load float, float* %63, align 4
  %658 = getelementptr inbounds %struct.float3, %struct.float3* %19, i32 0, i32 2
  %659 = load float, float* %658, align 4
  %660 = getelementptr inbounds %struct.float3, %struct.float3* %44, i32 0, i32 2
  %661 = load float, float* %660, align 4
  %662 = fadd float %659, %661
  %663 = fmul float %657, %662
  %664 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 2
  %665 = load float, float* %664, align 4
  %666 = fadd float %665, %663
  store float %666, float* %664, align 4
  br label %667

667:                                              ; preds = %510, %507
  br label %668

668:                                              ; preds = %667, %485
  br label %669

669:                                              ; preds = %668, %225
  br label %670

670:                                              ; preds = %669
  %671 = load i32, i32* %60, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %60, align 4
  br label %159, !llvm.loop !2

673:                                              ; preds = %159
  %674 = load float, float* %46, align 4
  %675 = load float*, float** %27, align 8
  %676 = load i32, i32* %33, align 4
  %677 = load i32, i32* %23, align 4
  %678 = mul nsw i32 0, %677
  %679 = add nsw i32 %676, %678
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds float, float* %675, i64 %680
  store float %674, float* %681, align 4
  %682 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 0
  %683 = load float, float* %682, align 4
  %684 = load float*, float** %27, align 8
  %685 = load i32, i32* %33, align 4
  %686 = load i32, i32* %23, align 4
  %687 = mul nsw i32 1, %686
  %688 = add nsw i32 %685, %687
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds float, float* %684, i64 %689
  store float %683, float* %690, align 4
  %691 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 1
  %692 = load float, float* %691, align 4
  %693 = load float*, float** %27, align 8
  %694 = load i32, i32* %33, align 4
  %695 = load i32, i32* %23, align 4
  %696 = mul nsw i32 2, %695
  %697 = add nsw i32 %694, %696
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds float, float* %693, i64 %698
  store float %692, float* %699, align 4
  %700 = getelementptr inbounds %struct.float3, %struct.float3* %47, i32 0, i32 2
  %701 = load float, float* %700, align 4
  %702 = load float*, float** %27, align 8
  %703 = load i32, i32* %33, align 4
  %704 = load i32, i32* %23, align 4
  %705 = mul nsw i32 3, %704
  %706 = add nsw i32 %703, %705
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds float, float* %702, i64 %707
  store float %701, float* %708, align 4
  %709 = load float, float* %48, align 4
  %710 = load float*, float** %27, align 8
  %711 = load i32, i32* %33, align 4
  %712 = load i32, i32* %23, align 4
  %713 = mul nsw i32 4, %712
  %714 = add nsw i32 %711, %713
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds float, float* %710, i64 %715
  store float %709, float* %716, align 4
  br label %717

717:                                              ; preds = %673
  %718 = load i32, i32* %33, align 4
  %719 = add nsw i32 %718, 1
  store i32 %719, i32* %33, align 4
  br label %103

720:                                              ; preds = %103
  br label %721

721:                                              ; preds = %720
  %722 = load i32, i32* %30, align 4
  %723 = add nsw i32 %722, 1
  store i32 %723, i32* %30, align 4
  br label %81

724:                                              ; preds = %81
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_Z25compute_flux_contributionRfR6float3S_S_S1_S1_S1_S1_S1_(float* dereferenceable(4) %0, %struct.float3* dereferenceable(12) %1, float* dereferenceable(4) %2, float* dereferenceable(4) %3, %struct.float3* dereferenceable(12) %4, %struct.float3* dereferenceable(12) %5, %struct.float3* dereferenceable(12) %6, %struct.float3* dereferenceable(12) %7, %struct.float3* dereferenceable(12) %8) #5 comdat {
  %10 = alloca float*, align 8
  %11 = alloca %struct.float3*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca %struct.float3*, align 8
  %15 = alloca %struct.float3*, align 8
  %16 = alloca %struct.float3*, align 8
  %17 = alloca %struct.float3*, align 8
  %18 = alloca %struct.float3*, align 8
  %19 = alloca float, align 4
  store float* %0, float** %10, align 8
  store %struct.float3* %1, %struct.float3** %11, align 8
  store float* %2, float** %12, align 8
  store float* %3, float** %13, align 8
  store %struct.float3* %4, %struct.float3** %14, align 8
  store %struct.float3* %5, %struct.float3** %15, align 8
  store %struct.float3* %6, %struct.float3** %16, align 8
  store %struct.float3* %7, %struct.float3** %17, align 8
  store %struct.float3* %8, %struct.float3** %18, align 8
  %20 = load %struct.float3*, %struct.float3** %14, align 8
  %21 = getelementptr inbounds %struct.float3, %struct.float3* %20, i32 0, i32 0
  %22 = load float, float* %21, align 4
  %23 = load %struct.float3*, %struct.float3** %11, align 8
  %24 = getelementptr inbounds %struct.float3, %struct.float3* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = fmul float %22, %25
  %27 = load float*, float** %13, align 8
  %28 = load float, float* %27, align 4
  %29 = fadd float %26, %28
  %30 = load %struct.float3*, %struct.float3** %15, align 8
  %31 = getelementptr inbounds %struct.float3, %struct.float3* %30, i32 0, i32 0
  store float %29, float* %31, align 4
  %32 = load %struct.float3*, %struct.float3** %14, align 8
  %33 = getelementptr inbounds %struct.float3, %struct.float3* %32, i32 0, i32 0
  %34 = load float, float* %33, align 4
  %35 = load %struct.float3*, %struct.float3** %11, align 8
  %36 = getelementptr inbounds %struct.float3, %struct.float3* %35, i32 0, i32 1
  %37 = load float, float* %36, align 4
  %38 = fmul float %34, %37
  %39 = load %struct.float3*, %struct.float3** %15, align 8
  %40 = getelementptr inbounds %struct.float3, %struct.float3* %39, i32 0, i32 1
  store float %38, float* %40, align 4
  %41 = load %struct.float3*, %struct.float3** %14, align 8
  %42 = getelementptr inbounds %struct.float3, %struct.float3* %41, i32 0, i32 0
  %43 = load float, float* %42, align 4
  %44 = load %struct.float3*, %struct.float3** %11, align 8
  %45 = getelementptr inbounds %struct.float3, %struct.float3* %44, i32 0, i32 2
  %46 = load float, float* %45, align 4
  %47 = fmul float %43, %46
  %48 = load %struct.float3*, %struct.float3** %15, align 8
  %49 = getelementptr inbounds %struct.float3, %struct.float3* %48, i32 0, i32 2
  store float %47, float* %49, align 4
  %50 = load %struct.float3*, %struct.float3** %15, align 8
  %51 = getelementptr inbounds %struct.float3, %struct.float3* %50, i32 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = load %struct.float3*, %struct.float3** %16, align 8
  %54 = getelementptr inbounds %struct.float3, %struct.float3* %53, i32 0, i32 0
  store float %52, float* %54, align 4
  %55 = load %struct.float3*, %struct.float3** %14, align 8
  %56 = getelementptr inbounds %struct.float3, %struct.float3* %55, i32 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = load %struct.float3*, %struct.float3** %11, align 8
  %59 = getelementptr inbounds %struct.float3, %struct.float3* %58, i32 0, i32 1
  %60 = load float, float* %59, align 4
  %61 = fmul float %57, %60
  %62 = load float*, float** %13, align 8
  %63 = load float, float* %62, align 4
  %64 = fadd float %61, %63
  %65 = load %struct.float3*, %struct.float3** %16, align 8
  %66 = getelementptr inbounds %struct.float3, %struct.float3* %65, i32 0, i32 1
  store float %64, float* %66, align 4
  %67 = load %struct.float3*, %struct.float3** %14, align 8
  %68 = getelementptr inbounds %struct.float3, %struct.float3* %67, i32 0, i32 1
  %69 = load float, float* %68, align 4
  %70 = load %struct.float3*, %struct.float3** %11, align 8
  %71 = getelementptr inbounds %struct.float3, %struct.float3* %70, i32 0, i32 2
  %72 = load float, float* %71, align 4
  %73 = fmul float %69, %72
  %74 = load %struct.float3*, %struct.float3** %16, align 8
  %75 = getelementptr inbounds %struct.float3, %struct.float3* %74, i32 0, i32 2
  store float %73, float* %75, align 4
  %76 = load %struct.float3*, %struct.float3** %15, align 8
  %77 = getelementptr inbounds %struct.float3, %struct.float3* %76, i32 0, i32 2
  %78 = load float, float* %77, align 4
  %79 = load %struct.float3*, %struct.float3** %17, align 8
  %80 = getelementptr inbounds %struct.float3, %struct.float3* %79, i32 0, i32 0
  store float %78, float* %80, align 4
  %81 = load %struct.float3*, %struct.float3** %16, align 8
  %82 = getelementptr inbounds %struct.float3, %struct.float3* %81, i32 0, i32 2
  %83 = load float, float* %82, align 4
  %84 = load %struct.float3*, %struct.float3** %17, align 8
  %85 = getelementptr inbounds %struct.float3, %struct.float3* %84, i32 0, i32 1
  store float %83, float* %85, align 4
  %86 = load %struct.float3*, %struct.float3** %14, align 8
  %87 = getelementptr inbounds %struct.float3, %struct.float3* %86, i32 0, i32 2
  %88 = load float, float* %87, align 4
  %89 = load %struct.float3*, %struct.float3** %11, align 8
  %90 = getelementptr inbounds %struct.float3, %struct.float3* %89, i32 0, i32 2
  %91 = load float, float* %90, align 4
  %92 = fmul float %88, %91
  %93 = load float*, float** %13, align 8
  %94 = load float, float* %93, align 4
  %95 = fadd float %92, %94
  %96 = load %struct.float3*, %struct.float3** %17, align 8
  %97 = getelementptr inbounds %struct.float3, %struct.float3* %96, i32 0, i32 2
  store float %95, float* %97, align 4
  %98 = load float*, float** %12, align 8
  %99 = load float, float* %98, align 4
  %100 = load float*, float** %13, align 8
  %101 = load float, float* %100, align 4
  %102 = fadd float %99, %101
  store float %102, float* %19, align 4
  %103 = load %struct.float3*, %struct.float3** %14, align 8
  %104 = getelementptr inbounds %struct.float3, %struct.float3* %103, i32 0, i32 0
  %105 = load float, float* %104, align 4
  %106 = load float, float* %19, align 4
  %107 = fmul float %105, %106
  %108 = load %struct.float3*, %struct.float3** %18, align 8
  %109 = getelementptr inbounds %struct.float3, %struct.float3* %108, i32 0, i32 0
  store float %107, float* %109, align 4
  %110 = load %struct.float3*, %struct.float3** %14, align 8
  %111 = getelementptr inbounds %struct.float3, %struct.float3* %110, i32 0, i32 1
  %112 = load float, float* %111, align 4
  %113 = load float, float* %19, align 4
  %114 = fmul float %112, %113
  %115 = load %struct.float3*, %struct.float3** %18, align 8
  %116 = getelementptr inbounds %struct.float3, %struct.float3* %115, i32 0, i32 1
  store float %114, float* %116, align 4
  %117 = load %struct.float3*, %struct.float3** %14, align 8
  %118 = getelementptr inbounds %struct.float3, %struct.float3* %117, i32 0, i32 2
  %119 = load float, float* %118, align 4
  %120 = load float, float* %19, align 4
  %121 = fmul float %119, %120
  %122 = load %struct.float3*, %struct.float3** %18, align 8
  %123 = getelementptr inbounds %struct.float3, %struct.float3* %122, i32 0, i32 2
  store float %121, float* %123, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z9time_stepiiPfS_S_S_(i32 %0, i32 %1, float* %2, float* %3, float* %4, float* %5) #5 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %188, %6
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %191

23:                                               ; preds = %18
  %24 = load i32, i32* %13, align 4
  %25 = mul nsw i32 %24, 1
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %27, 1
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  br label %37

33:                                               ; preds = %23
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  %36 = mul nsw i32 %35, 1
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %184, %37
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %187

44:                                               ; preds = %40
  %45 = load float*, float** %11, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 4, %50
  %52 = sitofp i32 %51 to float
  %53 = fdiv float %49, %52
  store float %53, float* %17, align 4
  %54 = load float*, float** %9, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 0, %56
  %58 = add nsw i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %54, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float, float* %17, align 4
  %63 = load float*, float** %12, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 0, %65
  %67 = add nsw i32 %64, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %63, i64 %68
  %70 = load float, float* %69, align 4
  %71 = fmul float %62, %70
  %72 = fadd float %61, %71
  %73 = load float*, float** %10, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 0, %75
  %77 = add nsw i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %73, i64 %78
  store float %72, float* %79, align 4
  %80 = load float*, float** %9, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 1, %82
  %84 = add nsw i32 %81, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %80, i64 %85
  %87 = load float, float* %86, align 4
  %88 = load float, float* %17, align 4
  %89 = load float*, float** %12, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 1, %91
  %93 = add nsw i32 %90, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %89, i64 %94
  %96 = load float, float* %95, align 4
  %97 = fmul float %88, %96
  %98 = fadd float %87, %97
  %99 = load float*, float** %10, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 1, %101
  %103 = add nsw i32 %100, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %99, i64 %104
  store float %98, float* %105, align 4
  %106 = load float*, float** %9, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 2, %108
  %110 = add nsw i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %106, i64 %111
  %113 = load float, float* %112, align 4
  %114 = load float, float* %17, align 4
  %115 = load float*, float** %12, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %8, align 4
  %118 = mul nsw i32 2, %117
  %119 = add nsw i32 %116, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %115, i64 %120
  %122 = load float, float* %121, align 4
  %123 = fmul float %114, %122
  %124 = fadd float %113, %123
  %125 = load float*, float** %10, align 8
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %8, align 4
  %128 = mul nsw i32 2, %127
  %129 = add nsw i32 %126, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %125, i64 %130
  store float %124, float* %131, align 4
  %132 = load float*, float** %9, align 8
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %8, align 4
  %135 = mul nsw i32 3, %134
  %136 = add nsw i32 %133, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %132, i64 %137
  %139 = load float, float* %138, align 4
  %140 = load float, float* %17, align 4
  %141 = load float*, float** %12, align 8
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %8, align 4
  %144 = mul nsw i32 3, %143
  %145 = add nsw i32 %142, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %141, i64 %146
  %148 = load float, float* %147, align 4
  %149 = fmul float %140, %148
  %150 = fadd float %139, %149
  %151 = load float*, float** %10, align 8
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %8, align 4
  %154 = mul nsw i32 3, %153
  %155 = add nsw i32 %152, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %151, i64 %156
  store float %150, float* %157, align 4
  %158 = load float*, float** %9, align 8
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %8, align 4
  %161 = mul nsw i32 4, %160
  %162 = add nsw i32 %159, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %158, i64 %163
  %165 = load float, float* %164, align 4
  %166 = load float, float* %17, align 4
  %167 = load float*, float** %12, align 8
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %8, align 4
  %170 = mul nsw i32 4, %169
  %171 = add nsw i32 %168, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %167, i64 %172
  %174 = load float, float* %173, align 4
  %175 = fmul float %166, %174
  %176 = fadd float %165, %175
  %177 = load float*, float** %10, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %8, align 4
  %180 = mul nsw i32 4, %179
  %181 = add nsw i32 %178, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %177, i64 %182
  store float %176, float* %183, align 4
  br label %184

184:                                              ; preds = %44
  %185 = load i32, i32* %16, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %16, align 4
  br label %40

187:                                              ; preds = %40
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %18

191:                                              ; preds = %18
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #8 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x float], align 16
  %8 = alloca %struct.float3, align 4
  %9 = alloca %struct.float3, align 4
  %10 = alloca %struct.float3, align 4
  %11 = alloca %struct.float3, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.float3, align 4
  %17 = alloca %struct.float3, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca float*, align 8
  %23 = alloca %"class.std::basic_ifstream", align 8
  %24 = alloca i8*
  %25 = alloca i32
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca float*, align 8
  %36 = alloca float*, align 8
  %37 = alloca float*, align 8
  %38 = alloca float*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.float3, align 4
  %42 = alloca %struct.float3, align 4
  %43 = alloca %struct.float3, align 4
  %44 = alloca %struct.float3, align 4
  %45 = alloca { <2 x float>, float }, align 4
  %46 = alloca { <2 x float>, float }, align 4
  %47 = alloca { <2 x float>, float }, align 4
  %48 = alloca { <2 x float>, float }, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %2
  %52 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %53 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %52, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %3, align 4
  br label %463

54:                                               ; preds = %2
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %6, align 8
  store float 0.000000e+00, float* %12, align 4
  %58 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  store float 0x3FF6666660000000, float* %58, align 16
  store float 1.000000e+00, float* %13, align 4
  %59 = load float, float* %13, align 4
  %60 = fpext float %59 to double
  %61 = fmul double 1.400000e+00, %60
  %62 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  %63 = load float, float* %62, align 16
  %64 = fpext float %63 to double
  %65 = fdiv double %61, %64
  %66 = call double @sqrt(double %65) #3
  %67 = fptrunc double %66 to float
  store float %67, float* %14, align 4
  %68 = load float, float* %14, align 4
  %69 = fmul float 0x3FF3333340000000, %68
  store float %69, float* %15, align 4
  %70 = load float, float* %15, align 4
  %71 = call double @cos(double 0.000000e+00) #3
  %72 = fptrunc double %71 to float
  %73 = fmul float %70, %72
  %74 = getelementptr inbounds %struct.float3, %struct.float3* %16, i32 0, i32 0
  store float %73, float* %74, align 4
  %75 = load float, float* %15, align 4
  %76 = call double @sin(double 0.000000e+00) #3
  %77 = fptrunc double %76 to float
  %78 = fmul float %75, %77
  %79 = getelementptr inbounds %struct.float3, %struct.float3* %16, i32 0, i32 1
  store float %78, float* %79, align 4
  %80 = getelementptr inbounds %struct.float3, %struct.float3* %16, i32 0, i32 2
  store float 0.000000e+00, float* %80, align 4
  %81 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  %82 = load float, float* %81, align 16
  %83 = getelementptr inbounds %struct.float3, %struct.float3* %16, i32 0, i32 0
  %84 = load float, float* %83, align 4
  %85 = fmul float %82, %84
  %86 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 1
  store float %85, float* %86, align 4
  %87 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  %88 = load float, float* %87, align 16
  %89 = getelementptr inbounds %struct.float3, %struct.float3* %16, i32 0, i32 1
  %90 = load float, float* %89, align 4
  %91 = fmul float %88, %90
  %92 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 2
  store float %91, float* %92, align 8
  %93 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  %94 = load float, float* %93, align 16
  %95 = getelementptr inbounds %struct.float3, %struct.float3* %16, i32 0, i32 2
  %96 = load float, float* %95, align 4
  %97 = fmul float %94, %96
  %98 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 3
  store float %97, float* %98, align 4
  %99 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  %100 = load float, float* %99, align 16
  %101 = load float, float* %15, align 4
  %102 = load float, float* %15, align 4
  %103 = fmul float %101, %102
  %104 = fmul float 5.000000e-01, %103
  %105 = fmul float %100, %104
  %106 = load float, float* %13, align 4
  %107 = fdiv float %106, 0x3FD99999A0000000
  %108 = fadd float %105, %107
  %109 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 4
  store float %108, float* %109, align 16
  %110 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  %111 = getelementptr inbounds float, float* %110, i64 1
  %112 = getelementptr inbounds float, float* %111, i64 0
  %113 = load float, float* %112, align 4
  %114 = getelementptr inbounds %struct.float3, %struct.float3* %17, i32 0, i32 0
  store float %113, float* %114, align 4
  %115 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  %116 = getelementptr inbounds float, float* %115, i64 1
  %117 = getelementptr inbounds float, float* %116, i64 1
  %118 = load float, float* %117, align 4
  %119 = getelementptr inbounds %struct.float3, %struct.float3* %17, i32 0, i32 1
  store float %118, float* %119, align 4
  %120 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  %121 = getelementptr inbounds float, float* %120, i64 1
  %122 = getelementptr inbounds float, float* %121, i64 2
  %123 = load float, float* %122, align 4
  %124 = getelementptr inbounds %struct.float3, %struct.float3* %17, i32 0, i32 2
  store float %123, float* %124, align 4
  %125 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  %126 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 4
  call void @_Z25compute_flux_contributionRfR6float3S_S_S1_S1_S1_S1_S1_(float* dereferenceable(4) %125, %struct.float3* dereferenceable(12) %17, float* dereferenceable(4) %126, float* dereferenceable(4) %13, %struct.float3* dereferenceable(12) %16, %struct.float3* dereferenceable(12) %8, %struct.float3* dereferenceable(12) %9, %struct.float3* dereferenceable(12) %10, %struct.float3* dereferenceable(12) %11)
  %127 = load i8*, i8** %6, align 8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"* %23, i8* %127, i32 8)
  %128 = bitcast %"class.std::basic_ifstream"* %23 to %"class.std::basic_istream"*
  %129 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* %128, i32* dereferenceable(4) %18)
          to label %130 unwind label %215

130:                                              ; preds = %54
  %131 = load i32, i32* %18, align 4
  %132 = sdiv i32 %131, 1
  store i32 1, i32* %26, align 4
  %133 = load i32, i32* %18, align 4
  %134 = srem i32 %133, 1
  store i32 %134, i32* %27, align 4
  %135 = invoke dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %26, i32* dereferenceable(4) %27)
          to label %136 unwind label %215

136:                                              ; preds = %130
  %137 = load i32, i32* %135, align 4
  %138 = add nsw i32 %132, %137
  %139 = mul nsw i32 1, %138
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %141, i64 4)
  %143 = extractvalue { i64, i1 } %142, 1
  %144 = extractvalue { i64, i1 } %142, 0
  %145 = select i1 %143, i64 -1, i64 %144
  %146 = invoke i8* @_Znam(i64 %145) #12
          to label %147 unwind label %215

147:                                              ; preds = %136
  %148 = bitcast i8* %146 to float*
  store float* %148, float** %20, align 8
  %149 = load i32, i32* %19, align 4
  %150 = mul nsw i32 %149, 4
  %151 = sext i32 %150 to i64
  %152 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %151, i64 4)
  %153 = extractvalue { i64, i1 } %152, 1
  %154 = extractvalue { i64, i1 } %152, 0
  %155 = select i1 %153, i64 -1, i64 %154
  %156 = invoke i8* @_Znam(i64 %155) #12
          to label %157 unwind label %215

157:                                              ; preds = %147
  %158 = bitcast i8* %156 to i32*
  store i32* %158, i32** %21, align 8
  %159 = load i32, i32* %19, align 4
  %160 = mul nsw i32 12, %159
  %161 = sext i32 %160 to i64
  %162 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %161, i64 4)
  %163 = extractvalue { i64, i1 } %162, 1
  %164 = extractvalue { i64, i1 } %162, 0
  %165 = select i1 %163, i64 -1, i64 %164
  %166 = invoke i8* @_Znam(i64 %165) #12
          to label %167 unwind label %215

167:                                              ; preds = %157
  %168 = bitcast i8* %166 to float*
  store float* %168, float** %22, align 8
  store i32 0, i32* %28, align 4
  br label %169

169:                                              ; preds = %280, %167
  %170 = load i32, i32* %28, align 4
  %171 = load i32, i32* %18, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %283

173:                                              ; preds = %169
  %174 = bitcast %"class.std::basic_ifstream"* %23 to %"class.std::basic_istream"*
  %175 = load float*, float** %20, align 8
  %176 = load i32, i32* %28, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  %179 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERf(%"class.std::basic_istream"* %174, float* dereferenceable(4) %178)
          to label %180 unwind label %215

180:                                              ; preds = %173
  store i32 0, i32* %29, align 4
  br label %181

181:                                              ; preds = %276, %180
  %182 = load i32, i32* %29, align 4
  %183 = icmp slt i32 %182, 4
  br i1 %183, label %184, label %279

184:                                              ; preds = %181
  %185 = bitcast %"class.std::basic_ifstream"* %23 to %"class.std::basic_istream"*
  %186 = load i32*, i32** %21, align 8
  %187 = load i32, i32* %28, align 4
  %188 = load i32, i32* %29, align 4
  %189 = load i32, i32* %19, align 4
  %190 = mul nsw i32 %188, %189
  %191 = add nsw i32 %187, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %186, i64 %192
  %194 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* %185, i32* dereferenceable(4) %193)
          to label %195 unwind label %215

195:                                              ; preds = %184
  %196 = load i32*, i32** %21, align 8
  %197 = load i32, i32* %28, align 4
  %198 = load i32, i32* %29, align 4
  %199 = load i32, i32* %19, align 4
  %200 = mul nsw i32 %198, %199
  %201 = add nsw i32 %197, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %196, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %195
  %207 = load i32*, i32** %21, align 8
  %208 = load i32, i32* %28, align 4
  %209 = load i32, i32* %29, align 4
  %210 = load i32, i32* %19, align 4
  %211 = mul nsw i32 %209, %210
  %212 = add nsw i32 %208, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %207, i64 %213
  store i32 -1, i32* %214, align 4
  br label %219

215:                                              ; preds = %233, %184, %173, %157, %147, %136, %130, %54
  %216 = landingpad { i8*, i32 }
          cleanup
  %217 = extractvalue { i8*, i32 } %216, 0
  store i8* %217, i8** %24, align 8
  %218 = extractvalue { i8*, i32 } %216, 1
  store i32 %218, i32* %25, align 4
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %23) #3
  br label %465

219:                                              ; preds = %206, %195
  %220 = load i32*, i32** %21, align 8
  %221 = load i32, i32* %28, align 4
  %222 = load i32, i32* %29, align 4
  %223 = load i32, i32* %19, align 4
  %224 = mul nsw i32 %222, %223
  %225 = add nsw i32 %221, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %220, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %227, align 4
  store i32 0, i32* %30, align 4
  br label %230

230:                                              ; preds = %272, %219
  %231 = load i32, i32* %30, align 4
  %232 = icmp slt i32 %231, 3
  br i1 %232, label %233, label %275

233:                                              ; preds = %230
  %234 = bitcast %"class.std::basic_ifstream"* %23 to %"class.std::basic_istream"*
  %235 = load float*, float** %22, align 8
  %236 = load i32, i32* %28, align 4
  %237 = load i32, i32* %29, align 4
  %238 = load i32, i32* %30, align 4
  %239 = mul nsw i32 %238, 4
  %240 = add nsw i32 %237, %239
  %241 = load i32, i32* %19, align 4
  %242 = mul nsw i32 %240, %241
  %243 = add nsw i32 %236, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %235, i64 %244
  %246 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERf(%"class.std::basic_istream"* %234, float* dereferenceable(4) %245)
          to label %247 unwind label %215

247:                                              ; preds = %233
  %248 = load float*, float** %22, align 8
  %249 = load i32, i32* %28, align 4
  %250 = load i32, i32* %29, align 4
  %251 = load i32, i32* %30, align 4
  %252 = mul nsw i32 %251, 4
  %253 = add nsw i32 %250, %252
  %254 = load i32, i32* %19, align 4
  %255 = mul nsw i32 %253, %254
  %256 = add nsw i32 %249, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %248, i64 %257
  %259 = load float, float* %258, align 4
  %260 = fneg float %259
  %261 = load float*, float** %22, align 8
  %262 = load i32, i32* %28, align 4
  %263 = load i32, i32* %29, align 4
  %264 = load i32, i32* %30, align 4
  %265 = mul nsw i32 %264, 4
  %266 = add nsw i32 %263, %265
  %267 = load i32, i32* %19, align 4
  %268 = mul nsw i32 %266, %267
  %269 = add nsw i32 %262, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %261, i64 %270
  store float %260, float* %271, align 4
  br label %272

272:                                              ; preds = %247
  %273 = load i32, i32* %30, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %30, align 4
  br label %230

275:                                              ; preds = %230
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %29, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %29, align 4
  br label %181

279:                                              ; preds = %181
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %28, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %28, align 4
  br label %169

283:                                              ; preds = %169
  %284 = load i32, i32* %18, align 4
  %285 = sub nsw i32 %284, 1
  store i32 %285, i32* %31, align 4
  %286 = load i32, i32* %18, align 4
  store i32 %286, i32* %32, align 4
  br label %287

287:                                              ; preds = %357, %283
  %288 = load i32, i32* %32, align 4
  %289 = load i32, i32* %19, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %360

291:                                              ; preds = %287
  %292 = load float*, float** %20, align 8
  %293 = load i32, i32* %31, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %292, i64 %294
  %296 = load float, float* %295, align 4
  %297 = load float*, float** %20, align 8
  %298 = load i32, i32* %32, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %297, i64 %299
  store float %296, float* %300, align 4
  store i32 0, i32* %33, align 4
  br label %301

301:                                              ; preds = %353, %291
  %302 = load i32, i32* %33, align 4
  %303 = icmp slt i32 %302, 4
  br i1 %303, label %304, label %356

304:                                              ; preds = %301
  %305 = load i32*, i32** %21, align 8
  %306 = load i32, i32* %31, align 4
  %307 = load i32, i32* %33, align 4
  %308 = load i32, i32* %19, align 4
  %309 = mul nsw i32 %307, %308
  %310 = add nsw i32 %306, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %305, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** %21, align 8
  %315 = load i32, i32* %32, align 4
  %316 = load i32, i32* %33, align 4
  %317 = load i32, i32* %19, align 4
  %318 = mul nsw i32 %316, %317
  %319 = add nsw i32 %315, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %314, i64 %320
  store i32 %313, i32* %321, align 4
  store i32 0, i32* %34, align 4
  br label %322

322:                                              ; preds = %349, %304
  %323 = load i32, i32* %34, align 4
  %324 = icmp slt i32 %323, 3
  br i1 %324, label %325, label %352

325:                                              ; preds = %322
  %326 = load float*, float** %22, align 8
  %327 = load i32, i32* %31, align 4
  %328 = load i32, i32* %33, align 4
  %329 = load i32, i32* %34, align 4
  %330 = mul nsw i32 %329, 4
  %331 = add nsw i32 %328, %330
  %332 = load i32, i32* %19, align 4
  %333 = mul nsw i32 %331, %332
  %334 = add nsw i32 %327, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds float, float* %326, i64 %335
  %337 = load float, float* %336, align 4
  %338 = load float*, float** %22, align 8
  %339 = load i32, i32* %32, align 4
  %340 = load i32, i32* %33, align 4
  %341 = load i32, i32* %34, align 4
  %342 = mul nsw i32 %341, 4
  %343 = add nsw i32 %340, %342
  %344 = load i32, i32* %19, align 4
  %345 = mul nsw i32 %343, %344
  %346 = add nsw i32 %339, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float* %338, i64 %347
  store float %337, float* %348, align 4
  br label %349

349:                                              ; preds = %325
  %350 = load i32, i32* %34, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %34, align 4
  br label %322

352:                                              ; preds = %322
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %33, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %33, align 4
  br label %301

356:                                              ; preds = %301
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %32, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %32, align 4
  br label %287

360:                                              ; preds = %287
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %23) #3
  %361 = load i32, i32* %19, align 4
  %362 = mul nsw i32 %361, 5
  %363 = call float* @_Z5allocIfEPT_i(i32 %362)
  store float* %363, float** %35, align 8
  %364 = load i32, i32* %19, align 4
  %365 = load float*, float** %35, align 8
  %366 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  call void @_Z20initialize_variablesiPfS_(i32 %364, float* %365, float* %366)
  %367 = load i32, i32* %19, align 4
  %368 = mul nsw i32 %367, 5
  %369 = call float* @_Z5allocIfEPT_i(i32 %368)
  store float* %369, float** %36, align 8
  %370 = load i32, i32* %19, align 4
  %371 = mul nsw i32 %370, 5
  %372 = call float* @_Z5allocIfEPT_i(i32 %371)
  store float* %372, float** %37, align 8
  %373 = load i32, i32* %19, align 4
  %374 = call float* @_Z5allocIfEPT_i(i32 %373)
  store float* %374, float** %38, align 8
  %375 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %376 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %375, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %39, align 4
  br label %377

377:                                              ; preds = %441, %360
  %378 = load i32, i32* %39, align 4
  %379 = icmp slt i32 %378, 2000
  br i1 %379, label %380, label %444

380:                                              ; preds = %377
  %381 = load float*, float** %36, align 8
  %382 = load float*, float** %35, align 8
  %383 = load i32, i32* %19, align 4
  %384 = mul nsw i32 %383, 5
  call void @_Z4copyIfEvPT_S1_i(float* %381, float* %382, i32 %384)
  %385 = load i32, i32* %19, align 4
  %386 = load float*, float** %35, align 8
  %387 = load float*, float** %20, align 8
  %388 = load float*, float** %38, align 8
  call void @_Z19compute_step_factoriPfS_S_(i32 %385, float* %386, float* %387, float* %388)
  store i32 0, i32* %40, align 4
  br label %389

389:                                              ; preds = %437, %380
  %390 = load i32, i32* %40, align 4
  %391 = icmp slt i32 %390, 3
  br i1 %391, label %392, label %440

392:                                              ; preds = %389
  %393 = load i32, i32* %19, align 4
  %394 = load i32*, i32** %21, align 8
  %395 = load float*, float** %22, align 8
  %396 = load float*, float** %35, align 8
  %397 = load float*, float** %37, align 8
  %398 = getelementptr inbounds [5 x float], [5 x float]* %7, i64 0, i64 0
  %399 = bitcast %struct.float3* %41 to i8*
  %400 = bitcast %struct.float3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %399, i8* align 4 %400, i64 12, i1 false)
  %401 = bitcast %struct.float3* %42 to i8*
  %402 = bitcast %struct.float3* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %401, i8* align 4 %402, i64 12, i1 false)
  %403 = bitcast %struct.float3* %43 to i8*
  %404 = bitcast %struct.float3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %403, i8* align 4 %404, i64 12, i1 false)
  %405 = bitcast %struct.float3* %44 to i8*
  %406 = bitcast %struct.float3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %405, i8* align 4 %406, i64 12, i1 false)
  %407 = bitcast { <2 x float>, float }* %45 to i8*
  %408 = bitcast %struct.float3* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %407, i8* align 4 %408, i64 12, i1 false)
  %409 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %45, i32 0, i32 0
  %410 = load <2 x float>, <2 x float>* %409, align 4
  %411 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %45, i32 0, i32 1
  %412 = load float, float* %411, align 4
  %413 = bitcast { <2 x float>, float }* %46 to i8*
  %414 = bitcast %struct.float3* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %413, i8* align 4 %414, i64 12, i1 false)
  %415 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %46, i32 0, i32 0
  %416 = load <2 x float>, <2 x float>* %415, align 4
  %417 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %46, i32 0, i32 1
  %418 = load float, float* %417, align 4
  %419 = bitcast { <2 x float>, float }* %47 to i8*
  %420 = bitcast %struct.float3* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %419, i8* align 4 %420, i64 12, i1 false)
  %421 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %47, i32 0, i32 0
  %422 = load <2 x float>, <2 x float>* %421, align 4
  %423 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %47, i32 0, i32 1
  %424 = load float, float* %423, align 4
  %425 = bitcast { <2 x float>, float }* %48 to i8*
  %426 = bitcast %struct.float3* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %425, i8* align 4 %426, i64 12, i1 false)
  %427 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %48, i32 0, i32 0
  %428 = load <2 x float>, <2 x float>* %427, align 4
  %429 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %48, i32 0, i32 1
  %430 = load float, float* %429, align 4
  call void @_Z12compute_fluxiPiPfS0_S0_S0_6float3S1_S1_S1_(i32 %393, i32* %394, float* %395, float* %396, float* %397, float* %398, <2 x float> %410, float %412, <2 x float> %416, float %418, <2 x float> %422, float %424, <2 x float> %428, float %430)
  %431 = load i32, i32* %40, align 4
  %432 = load i32, i32* %19, align 4
  %433 = load float*, float** %36, align 8
  %434 = load float*, float** %35, align 8
  %435 = load float*, float** %38, align 8
  %436 = load float*, float** %37, align 8
  call void @_Z9time_stepiiPfS_S_S_(i32 %431, i32 %432, float* %433, float* %434, float* %435, float* %436)
  br label %437

437:                                              ; preds = %392
  %438 = load i32, i32* %40, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %40, align 4
  br label %389

440:                                              ; preds = %389
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %39, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %39, align 4
  br label %377

444:                                              ; preds = %377
  %445 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %446 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %445, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %447 = load float*, float** %35, align 8
  %448 = load i32, i32* %18, align 4
  %449 = load i32, i32* %19, align 4
  call void @_Z4dumpPfii(float* %447, i32 %448, i32 %449)
  %450 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %451 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %450, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %452 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %453 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %452, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %454 = load float*, float** %20, align 8
  call void @_Z7deallocIfEvPT_(float* %454)
  %455 = load i32*, i32** %21, align 8
  call void @_Z7deallocIiEvPT_(i32* %455)
  %456 = load float*, float** %22, align 8
  call void @_Z7deallocIfEvPT_(float* %456)
  %457 = load float*, float** %35, align 8
  call void @_Z7deallocIfEvPT_(float* %457)
  %458 = load float*, float** %36, align 8
  call void @_Z7deallocIfEvPT_(float* %458)
  %459 = load float*, float** %37, align 8
  call void @_Z7deallocIfEvPT_(float* %459)
  %460 = load float*, float** %38, align 8
  call void @_Z7deallocIfEvPT_(float* %460)
  %461 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %462 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %461, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %3, align 4
  br label %463

463:                                              ; preds = %444, %51
  %464 = load i32, i32* %3, align 4
  ret i32 %464

465:                                              ; preds = %215
  %466 = load i8*, i8** %24, align 8
  %467 = load i32, i32* %25, align 4
  %468 = insertvalue { i8*, i32 } undef, i8* %466, 0
  %469 = insertvalue { i8*, i32 } %468, i32 %467, 1
  resume { i8*, i32 } %469
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

declare dso_local void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"*, i8*, i32) unnamed_addr #1

declare dso_local dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %0, i32* dereferenceable(4) %1) #5 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32*, i32** %3, align 8
  ret i32* %16
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #10

declare dso_local dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERf(%"class.std::basic_istream"*, float* dereferenceable(4)) #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"*) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local float* @_Z5allocIfEPT_i(i32 %0) #4 comdat {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 4)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %8 = select i1 %6, i64 -1, i64 %7
  %9 = call i8* @_Znam(i64 %8) #12
  %10 = bitcast i8* %9 to float*
  ret float* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_Z4copyIfEvPT_S1_i(float* %0, float* %1, i32 %2) #5 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load float*, float** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %13, i64 %15
  %17 = load float, float* %16, align 4
  %18 = load float*, float** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %18, i64 %20
  store float %17, float* %21, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8

25:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_Z7deallocIfEvPT_(float* %0) #5 comdat {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  %4 = icmp eq float* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = bitcast float* %3 to i8*
  call void @_ZdaPv(i8* %6) #13
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_Z7deallocIiEvPT_(i32* %0) #5 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = bitcast i32* %3 to i8*
  call void @_ZdaPv(i8* %6) #13
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #11

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_euler3d_cpu.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { builtin }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.enable"}
