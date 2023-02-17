; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base" = type { i32 (...)** }
%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad" = type { %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base" }

$_ZN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_badC2Ev = comdat any

$_ZN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseC2Ev = comdat any

$_ZTVN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = comdat any

$_ZTSN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = comdat any

$_ZTIN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = comdat any

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1
@_ZTVN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@_ZTVN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_badE = dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_badE to i8*), i8* bitcast (void (%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"*, i32*)* @_ZN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_bad6actionEPi to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_badE = dso_local constant [89 x i8] c"N39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_badE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = linkonce_odr dso_local constant [90 x i8] c"N39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE\00", comdat, align 1
@_ZTIN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @_ZTSN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE, i32 0, i32 0) }, comdat, align 8
@_ZTIN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_badE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @_ZTSN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_badE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseE to i8*) }, align 8

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_823badEv() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*, align 8
  store i32* null, i32** %1, align 8
  %3 = call noalias nonnull i8* @_Znwm(i64 8) #7
  %4 = bitcast i8* %3 to %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"*
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_badC2Ev(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"* %4) #8
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"* %4 to %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*
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
define linkonce_odr dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_badC2Ev(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"* %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"* %0, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"** %2, align 8
  %3 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"** %2, align 8
  %4 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"* %3 to %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"*
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_8244CWE476_NULL_Pointer_Dereference__int_82_baseC2Ev(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_base"* %4) #8
  %5 = bitcast %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_badE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @_ZN39CWE476_NULL_Pointer_Dereference__int_823badEv()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

declare dso_local void @printLine(i8*) #6

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN39CWE476_NULL_Pointer_Dereference__int_8243CWE476_NULL_Pointer_Dereference__int_82_bad6actionEPi(%"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"* %0, i32* %1) unnamed_addr #0 align 2 {
  %3 = alloca %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"*, align 8
  %4 = alloca i32*, align 8
  store %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"* %0, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"*, %"class.CWE476_NULL_Pointer_Dereference__int_82::CWE476_NULL_Pointer_Dereference__int_82_bad"** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  call void @printIntLine(i32 %7)
  ret void
}

declare dso_local void @printIntLine(i32) #6

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
