; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_large_05-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@staticTrue = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@staticFalse = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_large_05_good() #0 {
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
  %4 = load i32, i32* @staticTrue, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 10, i32* %1, align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* @staticFalse, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %36

11:                                               ; preds = %7
  %12 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false)
  %13 = load i32, i32* %1, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %20
  store i32 1, i32* %21, align 4
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %30, %18
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  call void @printIntLine(i32 %29)
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %22

33:                                               ; preds = %22
  br label %35

34:                                               ; preds = %15, %11
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* @staticTrue, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 10, i32* %1, align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* @staticTrue, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false)
  %12 = load i32, i32* %1, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %19
  store i32 1, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %29, %17
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  call void @printIntLine(i32 %28)
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %21

32:                                               ; preds = %21
  br label %34

33:                                               ; preds = %14, %10
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* @staticFalse, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %8

7:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* @staticTrue, align 4
  %10 = icmp ne i32 %9, 0
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
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
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
  %4 = load i32, i32* @staticTrue, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* @staticTrue, align 4
  %9 = icmp ne i32 %8, 0
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
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_large_05_good()
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
