; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }
%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base" = type { i32 (...)** }
%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G" = type { %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base" }

$_ZN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2GC2Ev = comdat any

$_ZN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseC2Ev = comdat any

$_ZN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2BC2Ev = comdat any

$_ZTVN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE = comdat any

$_ZTSN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE = comdat any

$_ZTIN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@_ZTVN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1
@_ZTVN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2GE = dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2GE to i8*), i8* bitcast (void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"*, %class.TwoIntsClass*)* @_ZNK41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2G6actionEP12TwoIntsClass to i8*)] }, align 8
@_ZTSN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2GE = dso_local constant [97 x i8] c"N41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2GE\00", align 1
@_ZTIN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2GE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @_ZTSN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2GE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE to i8*) }, align 8
@_ZTVN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2BE = dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2BE to i8*), i8* bitcast (void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"*, %class.TwoIntsClass*)* @_ZNK41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2B6actionEP12TwoIntsClass to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2BE = dso_local constant [97 x i8] c"N41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2BE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE = linkonce_odr dso_local constant [94 x i8] c"N41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE\00", comdat, align 1
@_ZTIN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @_ZTSN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE, i32 0, i32 0) }, comdat, align 8
@_ZTIN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2BE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @_ZTSN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2BE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE to i8*) }, align 8

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_814goodEv() #0 {
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_81L7goodG2BEv()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_81L7goodB2GEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_81L7goodG2BEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %class.TwoIntsClass*, align 8
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, align 8
  %4 = alloca %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G", align 8
  %5 = call noalias nonnull i8* @_Znwm(i64 8) #8
  %6 = bitcast i8* %5 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %6, %class.TwoIntsClass** %2, align 8
  %7 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %8 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %10 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  store %class.TwoIntsClass* %11, %class.TwoIntsClass** %1, align 8
  %12 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2BC2Ev(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %4) #9
  %13 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %4 to %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*
  store %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %13, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"** %3, align 8
  %14 = load %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"** %3, align 8
  %15 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %16 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %14 to void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)***
  %17 = load void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)**, void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)*** %16, align 8
  %18 = getelementptr inbounds void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)*, void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)** %17, i64 0
  %19 = load void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)*, void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)** %18, align 8
  call void %19(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %14, %class.TwoIntsClass* %15)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_81L7goodB2GEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, align 8
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G", align 8
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 8, i1 false)
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2GC2Ev(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %3) #9
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %3 to %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*
  store %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %5, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"** %2, align 8
  %6 = load %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"** %2, align 8
  %7 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %8 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %6 to void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)***
  %9 = load void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)**, void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)*** %8, align 8
  %10 = getelementptr inbounds void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)*, void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)** %9, i64 0
  %11 = load void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)*, void (%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %class.TwoIntsClass*)** %10, align 8
  call void %11(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %6, %class.TwoIntsClass* %7)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2GC2Ev(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"** %2, align 8
  %3 = load %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"** %2, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %3 to %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseC2Ev(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %4) #9
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2GE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseC2Ev(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %0, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"** %2, align 8
  %3 = load %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"** %2, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2BC2Ev(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"** %2, align 8
  %3 = load %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"** %2, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %3 to %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"*
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_8146CWE476_NULL_Pointer_Dereference__class_81_baseC2Ev(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_base"* %4) #9
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2BE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #9
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #9
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_814goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

declare dso_local void @printLine(i8*) #6

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZNK41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodB2G6actionEP12TwoIntsClass(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %0, %class.TwoIntsClass* %1) unnamed_addr #0 align 2 {
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"*, align 8
  %4 = alloca %class.TwoIntsClass*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"** %3, align 8
  store %class.TwoIntsClass* %1, %class.TwoIntsClass** %4, align 8
  %5 = load %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"** %3, align 8
  %6 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %7 = icmp ne %class.TwoIntsClass* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %10 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  call void @printIntLine(i32 %11)
  %12 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %13 = icmp eq %class.TwoIntsClass* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = bitcast %class.TwoIntsClass* %12 to i8*
  call void @_ZdlPv(i8* %15) #10
  br label %16

16:                                               ; preds = %14, %8
  br label %18

17:                                               ; preds = %2
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %17, %16
  ret void
}

declare dso_local void @printIntLine(i32) #6

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #7

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZNK41CWE476_NULL_Pointer_Dereference__class_8149CWE476_NULL_Pointer_Dereference__class_81_goodG2B6actionEP12TwoIntsClass(%"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %0, %class.TwoIntsClass* %1) unnamed_addr #0 align 2 {
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"*, align 8
  %4 = alloca %class.TwoIntsClass*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"** %3, align 8
  store %class.TwoIntsClass* %1, %class.TwoIntsClass** %4, align 8
  %5 = load %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__class_81::CWE476_NULL_Pointer_Dereference__class_81_goodB2G"** %3, align 8
  %6 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %7 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  call void @printIntLine(i32 %8)
  %9 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %10 = icmp eq %class.TwoIntsClass* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = bitcast %class.TwoIntsClass* %9 to i8*
  call void @_ZdlPv(i8* %12) #10
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
