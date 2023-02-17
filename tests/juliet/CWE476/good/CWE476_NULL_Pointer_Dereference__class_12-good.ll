; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_124goodEv() #0 {
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_12L7goodB2GEv()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_12L7goodG2BEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_12L7goodB2GEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  br label %6

5:                                                ; preds = %0
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  br label %6

6:                                                ; preds = %5, %4
  %7 = call i32 @globalReturnsTrueOrFalse()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
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
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %20
  br label %37

23:                                               ; preds = %6
  %24 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %25 = icmp ne %class.TwoIntsClass* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %28 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  call void @printIntLine(i32 %29)
  %30 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %31 = icmp eq %class.TwoIntsClass* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = bitcast %class.TwoIntsClass* %30 to i8*
  call void @_ZdlPv(i8* %33) #6
  br label %34

34:                                               ; preds = %32, %26
  br label %36

35:                                               ; preds = %23
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %22
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_12L7goodG2BEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %class.TwoIntsClass*, align 8
  %3 = alloca %class.TwoIntsClass*, align 8
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %14

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
  br label %22

14:                                               ; preds = %0
  %15 = call noalias nonnull i8* @_Znwm(i64 8) #7
  %16 = bitcast i8* %15 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %16, %class.TwoIntsClass** %3, align 8
  %17 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %18 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %20 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  store %class.TwoIntsClass* %21, %class.TwoIntsClass** %1, align 8
  br label %22

22:                                               ; preds = %14, %6
  %23 = call i32 @globalReturnsTrueOrFalse()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %27 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  call void @printIntLine(i32 %28)
  %29 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %30 = icmp eq %class.TwoIntsClass* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = bitcast %class.TwoIntsClass* %29 to i8*
  call void @_ZdlPv(i8* %32) #6
  br label %33

33:                                               ; preds = %31, %25
  br label %43

34:                                               ; preds = %22
  %35 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %36 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  call void @printIntLine(i32 %37)
  %38 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %39 = icmp eq %class.TwoIntsClass* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = bitcast %class.TwoIntsClass* %38 to i8*
  call void @_ZdlPv(i8* %41) #6
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42, %33
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse() #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #2

declare dso_local void @printIntLine(i32) #1

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #3

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
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_124goodEv()
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
