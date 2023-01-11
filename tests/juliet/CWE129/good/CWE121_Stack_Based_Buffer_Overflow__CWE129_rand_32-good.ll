; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_32-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_32_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  store i32* %1, i32** %2, align 8
  store i32* %1, i32** %3, align 8
  store i32 -1, i32* %1, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  store i32 7, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false)
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %0
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %19
  store i32 1, i32* %20, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %29, %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  call void @printIntLine(i32 %28)
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %21

32:                                               ; preds = %21
  br label %34

33:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %33, %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  store i32* %1, i32** %2, align 8
  store i32* %1, i32** %3, align 8
  store i32 -1, i32* %1, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = call i32 @rand() #4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %0
  %14 = call i32 @rand() #4
  %15 = shl i32 %14, 30
  %16 = call i32 @rand() #4
  %17 = shl i32 %16, 15
  %18 = xor i32 %15, %17
  %19 = call i32 @rand() #4
  %20 = xor i32 %18, %19
  br label %31

21:                                               ; preds = %0
  %22 = call i32 @rand() #4
  %23 = shl i32 %22, 30
  %24 = call i32 @rand() #4
  %25 = shl i32 %24, 15
  %26 = xor i32 %23, %25
  %27 = call i32 @rand() #4
  %28 = xor i32 %26, %27
  %29 = sub i32 0, %28
  %30 = sub i32 %29, 1
  br label %31

31:                                               ; preds = %21, %13
  %32 = phi i32 [ %20, %13 ], [ %30, %21 ]
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** %2, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 40, i1 false)
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %45
  store i32 1, i32* %46, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %55, %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 10
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  call void @printIntLine(i32 %54)
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %47

58:                                               ; preds = %47
  br label %60

59:                                               ; preds = %40, %31
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %59, %58
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_32_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
