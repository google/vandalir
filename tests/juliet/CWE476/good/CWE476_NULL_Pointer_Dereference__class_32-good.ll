; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_324goodEv() #0 {
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_32L7goodG2BEv()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_32L7goodB2GEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_32L7goodG2BEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %class.TwoIntsClass**, align 8
  %3 = alloca %class.TwoIntsClass**, align 8
  %4 = alloca %class.TwoIntsClass*, align 8
  %5 = alloca %class.TwoIntsClass*, align 8
  %6 = alloca %class.TwoIntsClass*, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %2, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %3, align 8
  %7 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %2, align 8
  %8 = load %class.TwoIntsClass*, %class.TwoIntsClass** %7, align 8
  store %class.TwoIntsClass* %8, %class.TwoIntsClass** %4, align 8
  %9 = call noalias nonnull i8* @_Znwm(i64 8) #6
  %10 = bitcast i8* %9 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %10, %class.TwoIntsClass** %5, align 8
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %5, align 8
  %12 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %class.TwoIntsClass*, %class.TwoIntsClass** %5, align 8
  %14 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %class.TwoIntsClass*, %class.TwoIntsClass** %5, align 8
  store %class.TwoIntsClass* %15, %class.TwoIntsClass** %4, align 8
  %16 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %17 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %2, align 8
  store %class.TwoIntsClass* %16, %class.TwoIntsClass** %17, align 8
  %18 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %3, align 8
  %19 = load %class.TwoIntsClass*, %class.TwoIntsClass** %18, align 8
  store %class.TwoIntsClass* %19, %class.TwoIntsClass** %6, align 8
  %20 = load %class.TwoIntsClass*, %class.TwoIntsClass** %6, align 8
  %21 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  call void @printIntLine(i32 %22)
  %23 = load %class.TwoIntsClass*, %class.TwoIntsClass** %6, align 8
  %24 = icmp eq %class.TwoIntsClass* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %0
  %26 = bitcast %class.TwoIntsClass* %23 to i8*
  call void @_ZdlPv(i8* %26) #7
  br label %27

27:                                               ; preds = %25, %0
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_32L7goodB2GEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %class.TwoIntsClass**, align 8
  %3 = alloca %class.TwoIntsClass**, align 8
  %4 = alloca %class.TwoIntsClass*, align 8
  %5 = alloca %class.TwoIntsClass*, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %2, align 8
  store %class.TwoIntsClass** %1, %class.TwoIntsClass*** %3, align 8
  %6 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %2, align 8
  %7 = load %class.TwoIntsClass*, %class.TwoIntsClass** %6, align 8
  store %class.TwoIntsClass* %7, %class.TwoIntsClass** %4, align 8
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %4, align 8
  %8 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %9 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %2, align 8
  store %class.TwoIntsClass* %8, %class.TwoIntsClass** %9, align 8
  %10 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %3, align 8
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %10, align 8
  store %class.TwoIntsClass* %11, %class.TwoIntsClass** %5, align 8
  %12 = load %class.TwoIntsClass*, %class.TwoIntsClass** %5, align 8
  %13 = icmp ne %class.TwoIntsClass* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %0
  %15 = load %class.TwoIntsClass*, %class.TwoIntsClass** %5, align 8
  %16 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  call void @printIntLine(i32 %17)
  %18 = load %class.TwoIntsClass*, %class.TwoIntsClass** %5, align 8
  %19 = icmp eq %class.TwoIntsClass* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = bitcast %class.TwoIntsClass* %18 to i8*
  call void @_ZdlPv(i8* %21) #7
  br label %22

22:                                               ; preds = %20, %14
  br label %24

23:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %23, %22
  ret void
}

declare dso_local void @printIntLine(i32) #1

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #2

declare dso_local void @printLine(i8*) #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #3

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
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_324goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { builtin nounwind }
attributes #8 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
