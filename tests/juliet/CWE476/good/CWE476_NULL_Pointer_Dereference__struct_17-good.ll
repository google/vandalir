; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE476_NULL_Pointer_Dereference__struct_17_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._twoIntsStruct*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  store %struct._twoIntsStruct* null, %struct._twoIntsStruct** %3, align 8
  br label %8

8:                                                ; preds = %7
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  br label %4

11:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %17 = icmp ne %struct._twoIntsStruct* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %20 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  call void @printIntLine(i32 %21)
  br label %23

22:                                               ; preds = %15
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %22, %18
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %12

27:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._twoIntsStruct*, align 8
  %4 = alloca %struct._twoIntsStruct, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %11, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %4, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %4, i32 0, i32 1
  store i32 0, i32* %10, align 4
  store %struct._twoIntsStruct* %4, %struct._twoIntsStruct** %3, align 8
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %5

14:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %22, %14
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %20 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  call void @printIntLine(i32 %21)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %15

25:                                               ; preds = %15
  ret void
}

declare dso_local void @printIntLine(i32) #1

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
  call void @CWE476_NULL_Pointer_Dereference__struct_17_good()
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
