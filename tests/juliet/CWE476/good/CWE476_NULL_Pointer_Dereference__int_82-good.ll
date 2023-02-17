; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base" = type { i32 (...)** }
%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G" = type { %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base" }

$_ZN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2GC2Ev = comdat any

$_ZN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseC2Ev = comdat any

$_ZN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2BC2Ev = comdat any

$_ZTVN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = comdat any

$_ZTSN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = comdat any

$_ZTIN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@_ZTVN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1
@_ZTVN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2GE = dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2GE to i8*), i8* bitcast (void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*, i32*)* @_ZN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2G6actionEPi to i8*)] }, align 8
@_ZTSN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2GE = dso_local constant [93 x i8] c"N39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2GE\00", align 1
@_ZTIN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2GE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @_ZTSN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2GE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE to i8*) }, align 8
@_ZTVN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2BE = dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2BE to i8*), i8* bitcast (void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*, i32*)* @_ZN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2B6actionEPi to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2BE = dso_local constant [93 x i8] c"N39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2BE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = linkonce_odr dso_local constant [90 x i8] c"N39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE\00", comdat, align 1
@_ZTIN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @_ZTSN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE, i32 0, i32 0) }, comdat, align 8
@_ZTIN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2BE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @_ZTSN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2BE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE to i8*) }, align 8

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_824goodEv() #0 {
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_82L7goodG2BEv()
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_82L7goodB2GEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN39CWE476_NULL_Pointer_Dereference__int_82L7goodG2BEv() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, align 8
  store i32 5, i32* %2, align 4
  store i32* %2, i32** %1, align 8
  %4 = call noalias nonnull i8* @_Znwm(i64 8) #7
  %5 = bitcast i8* %4 to %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2BC2Ev(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %5) #8
  %6 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %5 to %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*
  store %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %6, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"** %3, align 8
  %7 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"** %3, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %7 to void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)***
  %10 = load void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)**, void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)*** %9, align 8
  %11 = getelementptr inbounds void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)*, void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)** %10, i64 0
  %12 = load void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)*, void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)** %11, align 8
  call void %12(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %7, i32* %8)
  %13 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"** %3, align 8
  %14 = icmp eq %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %13 to i8*
  call void @_ZdlPv(i8* %16) #9
  br label %17

17:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN39CWE476_NULL_Pointer_Dereference__int_82L7goodB2GEv() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, align 8
  store i32* null, i32** %1, align 8
  %3 = call noalias nonnull i8* @_Znwm(i64 8) #7
  %4 = bitcast i8* %3 to %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2GC2Ev(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %4) #8
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %4 to %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*
  store %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %5, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"** %2, align 8
  %6 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"** %2, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %6 to void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)***
  %9 = load void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)**, void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)*** %8, align 8
  %10 = getelementptr inbounds void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)*, void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)** %9, i64 0
  %11 = load void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)*, void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, i32*)** %10, align 8
  call void %11(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %6, i32* %7)
  %12 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"** %2, align 8
  %13 = icmp eq %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %12 to i8*
  call void @_ZdlPv(i8* %15) #9
  br label %16

16:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2GC2Ev(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"** %2, align 8
  %3 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"** %2, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %3 to %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseC2Ev(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %4) #8
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2GE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseC2Ev(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %0, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"** %2, align 8
  %3 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"** %2, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2BC2Ev(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"** %2, align 8
  %3 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"** %2, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %3 to %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseC2Ev(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %4) #8
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2BE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
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
  %6 = call i64 @time(i64* null) #8
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #8
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_824goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

declare dso_local void @printLine(i8*) #6

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodB2G6actionEPi(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %0, i32* %1) unnamed_addr #0 align 2 {
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*, align 8
  %4 = alloca i32*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  call void @printIntLine(i32 %10)
  br label %12

11:                                               ; preds = %2
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

declare dso_local void @printIntLine(i32) #6

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_8247CWE476_NULL_Pointer_Dereference__int_82_goodG2B6actionEPi(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %0, i32* %1) unnamed_addr #0 align 2 {
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*, align 8
  %4 = alloca i32*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_goodB2G"** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  call void @printIntLine(i32 %7)
  ret void
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
