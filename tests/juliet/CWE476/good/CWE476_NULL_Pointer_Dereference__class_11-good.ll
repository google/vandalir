; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_114goodEv() #0 {
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_11L8goodB2G1Ev()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_11L8goodB2G2Ev()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_11L8goodG2B1Ev()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_11L8goodG2B2Ev()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_11L8goodB2G1Ev() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  br label %5

5:                                                ; preds = %4, %0
  %6 = call i32 @globalReturnsFalse()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %23

9:                                                ; preds = %5
  %10 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %11 = icmp ne %class.TwoIntsClass* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %14 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  call void @printIntLine(i32 %15)
  %16 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %17 = icmp eq %class.TwoIntsClass* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = bitcast %class.TwoIntsClass* %16 to i8*
  call void @_ZdlPv(i8* %19) #6
  br label %20

20:                                               ; preds = %18, %12
  br label %22

21:                                               ; preds = %9
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %8
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_11L8goodB2G2Ev() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  br label %5

5:                                                ; preds = %4, %0
  %6 = call i32 @globalReturnsTrue()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %10 = icmp ne %class.TwoIntsClass* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %13 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  call void @printIntLine(i32 %14)
  %15 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %16 = icmp eq %class.TwoIntsClass* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = bitcast %class.TwoIntsClass* %15 to i8*
  call void @_ZdlPv(i8* %18) #6
  br label %19

19:                                               ; preds = %17, %11
  br label %21

20:                                               ; preds = %8
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %20, %19
  br label %22

22:                                               ; preds = %21, %5
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_11L8goodG2B1Ev() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %class.TwoIntsClass*, align 8
  %3 = call i32 @globalReturnsFalse()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %14

6:                                                ; preds = %0
  %7 = call noalias nonnull i8* @_Znwm(i64 8) #7
  %8 = bitcast i8* %7 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %8, %class.TwoIntsClass** %2, align 8
  %9 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %10 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %12 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  store %class.TwoIntsClass* %13, %class.TwoIntsClass** %1, align 8
  br label %14

14:                                               ; preds = %6, %5
  %15 = call i32 @globalReturnsTrue()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %19 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  call void @printIntLine(i32 %20)
  %21 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %22 = icmp eq %class.TwoIntsClass* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = bitcast %class.TwoIntsClass* %21 to i8*
  call void @_ZdlPv(i8* %24) #6
  br label %25

25:                                               ; preds = %23, %17
  br label %26

26:                                               ; preds = %25, %14
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_11L8goodG2B2Ev() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %class.TwoIntsClass*, align 8
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = call noalias nonnull i8* @_Znwm(i64 8) #7
  %7 = bitcast i8* %6 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %7, %class.TwoIntsClass** %2, align 8
  %8 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %9 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %11 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  store %class.TwoIntsClass* %12, %class.TwoIntsClass** %1, align 8
  br label %13

13:                                               ; preds = %5, %0
  %14 = call i32 @globalReturnsTrue()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %18 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  call void @printIntLine(i32 %19)
  %20 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %21 = icmp eq %class.TwoIntsClass* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = bitcast %class.TwoIntsClass* %20 to i8*
  call void @_ZdlPv(i8* %23) #6
  br label %24

24:                                               ; preds = %22, %16
  br label %25

25:                                               ; preds = %24, %13
  ret void
}

declare dso_local i32 @globalReturnsTrue() #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #2

declare dso_local void @printIntLine(i32) #1

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #3

declare dso_local i32 @globalReturnsFalse() #1

declare dso_local void @printLine(i8*) #1

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
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_114goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin nounwind }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
