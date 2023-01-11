; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_07-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@staticFive = internal global i32 5, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_07_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* @staticFive, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @staticFive, align 4
  %11 = icmp ne i32 %10, 5
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %38

13:                                               ; preds = %9
  %14 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false)
  %15 = load i32, i32* %1, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %22
  store i32 1, i32* %23, align 4
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %32, %20
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  call void @printIntLine(i32 %31)
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %24

35:                                               ; preds = %24
  br label %37

36:                                               ; preds = %17, %13
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* @staticFive, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @staticFive, align 4
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false)
  %14 = load i32, i32* %1, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %21
  store i32 1, i32* %22, align 4
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %31, %19
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  call void @printIntLine(i32 %30)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %23

34:                                               ; preds = %23
  br label %36

35:                                               ; preds = %16, %12
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* @staticFive, align 4
  %5 = icmp ne i32 %4, 5
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %8

7:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* @staticFive, align 4
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false)
  %13 = load i32, i32* %1, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %17
  store i32 1, i32* %18, align 4
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %27, %15
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  call void @printIntLine(i32 %26)
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %19

30:                                               ; preds = %19
  br label %32

31:                                               ; preds = %11
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %32

32:                                               ; preds = %31, %30
  br label %33

33:                                               ; preds = %32, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* @staticFive, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* @staticFive, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false)
  %12 = load i32, i32* %1, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %16
  store i32 1, i32* %17, align 4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %26, %14
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  call void @printIntLine(i32 %25)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %18

29:                                               ; preds = %18
  br label %31

30:                                               ; preds = %10
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #4
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #4
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_07_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
