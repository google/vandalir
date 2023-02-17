; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE476_NULL_Pointer_Dereference__int64_t_17_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  store i64* null, i64** %3, align 8
  br label %8

8:                                                ; preds = %7
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  br label %4

11:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i64*, i64** %3, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64*, i64** %3, align 8
  %20 = load i64, i64* %19, align 8
  call void @printLongLongLine(i64 %20)
  br label %22

21:                                               ; preds = %15
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %18
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %12

26:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store i64 5, i64* %4, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %9, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  store i64* %4, i64** %3, align 8
  br label %9

9:                                                ; preds = %8
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %5

12:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %19, %12
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* %17, align 8
  call void @printLongLongLine(i64 %18)
  br label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %13

22:                                               ; preds = %13
  ret void
}

declare dso_local void @printLongLongLine(i64) #1

declare dso_local void @printLine(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #3
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #3
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE476_NULL_Pointer_Dereference__int64_t_17_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
