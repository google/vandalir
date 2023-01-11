; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_17-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_17_good() #0 {
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

6:                                                ; preds = %33, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = call i32 @rand() #4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = call i32 @rand() #4
  %15 = shl i32 %14, 30
  %16 = call i32 @rand() #4
  %17 = shl i32 %16, 15
  %18 = xor i32 %15, %17
  %19 = call i32 @rand() #4
  %20 = xor i32 %18, %19
  br label %31

21:                                               ; preds = %9
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
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %6

36:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 40, i1 false)
  %42 = load i32, i32* %3, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 10
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %49
  store i32 1, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %59, %47
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 10
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  call void @printIntLine(i32 %58)
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %51

62:                                               ; preds = %51
  br label %64

63:                                               ; preds = %44, %40
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %37

68:                                               ; preds = %37
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
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_17_good()
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
