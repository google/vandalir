; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_large_12-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_large_12_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %6 = call i32 (...) @globalReturnsTrueOrFalse()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 10, i32* %1, align 4
  br label %10

9:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = call i32 (...) @globalReturnsTrueOrFalse()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false)
  %15 = load i32, i32* %1, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
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

33:                                               ; preds = %13
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %33, %32
  br label %60

35:                                               ; preds = %10
  %36 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 40, i1 false)
  %37 = load i32, i32* %1, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i32, i32* %1, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %44
  store i32 1, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %54, %42
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  call void @printIntLine(i32 %53)
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %46

57:                                               ; preds = %46
  br label %59

58:                                               ; preds = %39, %35
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %58, %57
  br label %60

60:                                               ; preds = %59, %34
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_large_12_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
