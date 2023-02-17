; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }
%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base" = type { i32 (...)** }
%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G" = type { %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base" }

$_ZN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2GC2Ev = comdat any

$_ZN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseC2Ev = comdat any

$_ZN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2BC2Ev = comdat any

$_ZTVN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE = comdat any

$_ZTSN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE = comdat any

$_ZTIN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@_ZTVN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1
@_ZTVN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2GE = dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2GE to i8*), i8* bitcast (void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"*, %struct._twoIntsStruct*)* @_ZNK42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2G6actionEP14_twoIntsStruct to i8*)] }, align 8
@_ZTSN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2GE = dso_local constant [99 x i8] c"N42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2GE\00", align 1
@_ZTIN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2GE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @_ZTSN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2GE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE to i8*) }, align 8
@_ZTVN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2BE = dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2BE to i8*), i8* bitcast (void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"*, %struct._twoIntsStruct*)* @_ZNK42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2B6actionEP14_twoIntsStruct to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2BE = dso_local constant [99 x i8] c"N42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2BE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE = linkonce_odr dso_local constant [96 x i8] c"N42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE\00", comdat, align 1
@_ZTIN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @_ZTSN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE, i32 0, i32 0) }, comdat, align 8
@_ZTIN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2BE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @_ZTSN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2BE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE to i8*) }, align 8

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN42CWE476_NULL_Pointer_Dereference__struct_814goodEv() #0 {
  call void @_ZN42CWE476_NULL_Pointer_Dereference__struct_81L7goodG2BEv()
  call void @_ZN42CWE476_NULL_Pointer_Dereference__struct_81L7goodB2GEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN42CWE476_NULL_Pointer_Dereference__struct_81L7goodG2BEv() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._twoIntsStruct, align 4
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, align 8
  %4 = alloca %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G", align 8
  %5 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1
  store i32 0, i32* %6, align 4
  store %struct._twoIntsStruct* %2, %struct._twoIntsStruct** %1, align 8
  %7 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  call void @_ZN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2BC2Ev(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %4) #6
  %8 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %4 to %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*
  store %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %8, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"** %3, align 8
  %9 = load %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"** %3, align 8
  %10 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %11 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %9 to void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)***
  %12 = load void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)**, void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)*** %11, align 8
  %13 = getelementptr inbounds void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)*, void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)** %12, i64 0
  %14 = load void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)*, void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)** %13, align 8
  call void %14(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %9, %struct._twoIntsStruct* %10)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN42CWE476_NULL_Pointer_Dereference__struct_81L7goodB2GEv() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, align 8
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G", align 8
  store %struct._twoIntsStruct* null, %struct._twoIntsStruct** %1, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 8, i1 false)
  call void @_ZN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2GC2Ev(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %3) #6
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %3 to %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*
  store %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %5, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"** %2, align 8
  %6 = load %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"** %2, align 8
  %7 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %8 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %6 to void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)***
  %9 = load void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)**, void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)*** %8, align 8
  %10 = getelementptr inbounds void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)*, void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)** %9, i64 0
  %11 = load void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)*, void (%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %struct._twoIntsStruct*)** %10, align 8
  call void %11(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %6, %struct._twoIntsStruct* %7)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2GC2Ev(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"** %2, align 8
  %3 = load %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"** %2, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %3 to %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*
  call void @_ZN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseC2Ev(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %4) #6
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2GE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseC2Ev(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %0, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"** %2, align 8
  %3 = load %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"** %2, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2BC2Ev(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"** %2, align 8
  %3 = load %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"** %2, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %3 to %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"*
  call void @_ZN42CWE476_NULL_Pointer_Dereference__struct_8147CWE476_NULL_Pointer_Dereference__struct_81_baseC2Ev(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_base"* %4) #6
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2BE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #6
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #6
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @_ZN42CWE476_NULL_Pointer_Dereference__struct_814goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local void @srand(i32) #4

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZNK42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodB2G6actionEP14_twoIntsStruct(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %0, %struct._twoIntsStruct* %1) unnamed_addr #0 align 2 {
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"*, align 8
  %4 = alloca %struct._twoIntsStruct*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"** %3, align 8
  store %struct._twoIntsStruct* %1, %struct._twoIntsStruct** %4, align 8
  %5 = load %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"** %3, align 8
  %6 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %4, align 8
  %7 = icmp ne %struct._twoIntsStruct* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %4, align 8
  %10 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  call void @printIntLine(i32 %11)
  br label %13

12:                                               ; preds = %2
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

declare dso_local void @printIntLine(i32) #5

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZNK42CWE476_NULL_Pointer_Dereference__struct_8150CWE476_NULL_Pointer_Dereference__struct_81_goodG2B6actionEP14_twoIntsStruct(%"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %0, %struct._twoIntsStruct* %1) unnamed_addr #0 align 2 {
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"*, align 8
  %4 = alloca %struct._twoIntsStruct*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"* %0, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"** %3, align 8
  store %struct._twoIntsStruct* %1, %struct._twoIntsStruct** %4, align 8
  %5 = load %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"*, %"class.CWE476_NULL_Pointer_Dereference__struct_81::CWE476_NULL_Pointer_Dereference__struct_81_goodB2G"** %3, align 8
  %6 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %4, align 8
  %7 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  call void @printIntLine(i32 %8)
  ret void
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
