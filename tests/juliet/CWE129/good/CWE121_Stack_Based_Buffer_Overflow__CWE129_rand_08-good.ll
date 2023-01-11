; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_08-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.4 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_08_good() #0 {
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
  %4 = call i32 @staticReturnsTrue()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %0
  %7 = call i32 @rand() #4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = call i32 @rand() #4
  %12 = shl i32 %11, 30
  %13 = call i32 @rand() #4
  %14 = shl i32 %13, 15
  %15 = xor i32 %12, %14
  %16 = call i32 @rand() #4
  %17 = xor i32 %15, %16
  br label %28

18:                                               ; preds = %6
  %19 = call i32 @rand() #4
  %20 = shl i32 %19, 30
  %21 = call i32 @rand() #4
  %22 = shl i32 %21, 15
  %23 = xor i32 %20, %22
  %24 = call i32 @rand() #4
  %25 = xor i32 %23, %24
  %26 = sub i32 0, %25
  %27 = sub i32 %26, 1
  br label %28

28:                                               ; preds = %18, %10
  %29 = phi i32 [ %17, %10 ], [ %27, %18 ]
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %28, %0
  %31 = call i32 @staticReturnsFalse()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %59

34:                                               ; preds = %30
  %35 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 40, i1 false)
  %36 = load i32, i32* %1, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i32, i32* %1, align 4
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %43
  store i32 1, i32* %44, align 4
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %53, %41
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %46, 10
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  call void @printIntLine(i32 %52)
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %45

56:                                               ; preds = %45
  br label %58

57:                                               ; preds = %38, %34
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %33
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = call i32 @staticReturnsTrue()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %0
  %7 = call i32 @rand() #4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = call i32 @rand() #4
  %12 = shl i32 %11, 30
  %13 = call i32 @rand() #4
  %14 = shl i32 %13, 15
  %15 = xor i32 %12, %14
  %16 = call i32 @rand() #4
  %17 = xor i32 %15, %16
  br label %28

18:                                               ; preds = %6
  %19 = call i32 @rand() #4
  %20 = shl i32 %19, 30
  %21 = call i32 @rand() #4
  %22 = shl i32 %21, 15
  %23 = xor i32 %20, %22
  %24 = call i32 @rand() #4
  %25 = xor i32 %23, %24
  %26 = sub i32 0, %25
  %27 = sub i32 %26, 1
  br label %28

28:                                               ; preds = %18, %10
  %29 = phi i32 [ %17, %10 ], [ %27, %18 ]
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %28, %0
  %31 = call i32 @staticReturnsTrue()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 40, i1 false)
  %35 = load i32, i32* %1, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %42
  store i32 1, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %52, %40
  %45 = load i32, i32* %2, align 4
  %46 = icmp slt i32 %45, 10
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  call void @printIntLine(i32 %51)
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %44

55:                                               ; preds = %44
  br label %57

56:                                               ; preds = %37, %33
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = call i32 @staticReturnsFalse()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %8

7:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = call i32 @staticReturnsTrue()
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
  %4 = call i32 @staticReturnsTrue()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = call i32 @staticReturnsTrue()
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @staticReturnsTrue() #0 {
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @staticReturnsFalse() #0 {
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_08_good()
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
