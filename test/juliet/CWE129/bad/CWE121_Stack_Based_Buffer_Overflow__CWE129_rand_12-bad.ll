; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_12-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_12_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %6 = call i32 (...) @globalReturnsTrueOrFalse()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %0
  %9 = call i32 @rand() #4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = call i32 @rand() #4
  %14 = shl i32 %13, 30
  %15 = call i32 @rand() #4
  %16 = shl i32 %15, 15
  %17 = xor i32 %14, %16
  %18 = call i32 @rand() #4
  %19 = xor i32 %17, %18
  br label %30

20:                                               ; preds = %8
  %21 = call i32 @rand() #4
  %22 = shl i32 %21, 30
  %23 = call i32 @rand() #4
  %24 = shl i32 %23, 15
  %25 = xor i32 %22, %24
  %26 = call i32 @rand() #4
  %27 = xor i32 %25, %26
  %28 = sub i32 0, %27
  %29 = sub i32 %28, 1
  br label %30

30:                                               ; preds = %20, %12
  %31 = phi i32 [ %19, %12 ], [ %29, %20 ]
  store i32 %31, i32* %1, align 4
  br label %33

32:                                               ; preds = %0
  store i32 7, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = call i32 (...) @globalReturnsTrueOrFalse()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 40, i1 false)
  %38 = load i32, i32* %1, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
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

56:                                               ; preds = %36
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %56, %55
  br label %83

58:                                               ; preds = %33
  %59 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 40, i1 false)
  %60 = load i32, i32* %1, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32, i32* %1, align 4
  %64 = icmp slt i32 %63, 10
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %67
  store i32 1, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %77, %65
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 10
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  call void @printIntLine(i32 %76)
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %69

80:                                               ; preds = %69
  br label %82

81:                                               ; preds = %62, %58
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %81, %80
  br label %83

83:                                               ; preds = %82, %57
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

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
  %6 = call i64 @time(i64* null) #4
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #4
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_12_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
