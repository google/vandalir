; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_17-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str.4 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_17_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %12, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %6

15:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false)
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %28
  store i32 1, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %38, %26
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  call void @printIntLine(i32 %37)
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %30

41:                                               ; preds = %30
  br label %43

42:                                               ; preds = %23, %19
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %16

47:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  store i32 7, i32* %3, align 4
  br label %10

10:                                               ; preds = %9
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %6

13:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 40, i1 false)
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %33, %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  call void @printIntLine(i32 %32)
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %25

36:                                               ; preds = %25
  br label %38

37:                                               ; preds = %17
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %14

42:                                               ; preds = %14
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_17_good()
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
