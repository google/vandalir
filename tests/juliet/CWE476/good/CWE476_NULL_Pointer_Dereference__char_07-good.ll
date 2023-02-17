; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@staticFive = internal global i32 5, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Good\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE476_NULL_Pointer_Dereference__char_07_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @staticFive, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i32, i32* @staticFive, align 4
  %7 = icmp ne i32 %6, 5
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %18

9:                                                ; preds = %5
  %10 = load i8*, i8** %1, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i8*, i8** %1, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  call void @printHexCharLine(i8 signext %15)
  br label %17

16:                                               ; preds = %9
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %17

17:                                               ; preds = %16, %12
  br label %18

18:                                               ; preds = %17, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @staticFive, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i32, i32* @staticFive, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i8*, i8** %1, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i8*, i8** %1, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  call void @printHexCharLine(i8 signext %14)
  br label %16

15:                                               ; preds = %8
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %16

16:                                               ; preds = %15, %11
  br label %17

17:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @staticFive, align 4
  %3 = icmp ne i32 %2, 5
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %6

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32, i32* @staticFive, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i8*, i8** %1, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  call void @printHexCharLine(i8 signext %12)
  br label %13

13:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @staticFive, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i32, i32* @staticFive, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i8*, i8** %1, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  call void @printHexCharLine(i8 signext %11)
  br label %12

12:                                               ; preds = %8, %5
  ret void
}

declare dso_local void @printHexCharLine(i8 signext) #1

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
  call void @CWE476_NULL_Pointer_Dereference__char_07_good()
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
