; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_174goodEv() #0 {
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_17L7goodB2GEv()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_17L7goodG2BEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_17L7goodB2GEv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %class.TwoIntsClass*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %3, align 8
  br label %8

8:                                                ; preds = %7
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  br label %4

11:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %17 = icmp ne %class.TwoIntsClass* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %20 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  call void @printIntLine(i32 %21)
  %22 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %23 = icmp eq %class.TwoIntsClass* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = bitcast %class.TwoIntsClass* %22 to i8*
  call void @_ZdlPv(i8* %25) #6
  br label %26

26:                                               ; preds = %24, %18
  br label %28

27:                                               ; preds = %15
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %12

32:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_17L7goodG2BEv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %class.TwoIntsClass*, align 8
  %4 = alloca %class.TwoIntsClass*, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = call noalias nonnull i8* @_Znwm(i64 8) #7
  %10 = bitcast i8* %9 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %10, %class.TwoIntsClass** %4, align 8
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %12 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %14 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  store %class.TwoIntsClass* %15, %class.TwoIntsClass** %3, align 8
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %5

19:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %25 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  call void @printIntLine(i32 %26)
  %27 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %28 = icmp eq %class.TwoIntsClass* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = bitcast %class.TwoIntsClass* %27 to i8*
  call void @_ZdlPv(i8* %30) #6
  br label %31

31:                                               ; preds = %29, %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %20

35:                                               ; preds = %20
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #1

declare dso_local void @printIntLine(i32) #2

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #3

declare dso_local void @printLine(i8*) #2

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
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_174goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
