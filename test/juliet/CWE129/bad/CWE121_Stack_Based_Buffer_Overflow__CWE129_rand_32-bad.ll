; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_32-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_32_bad() #0 {
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
  br i1 %39, label %40, label %56

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %42
  store i32 1, i32* %43, align 4
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %52, %40
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 10
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  call void @printIntLine(i32 %51)
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %44

55:                                               ; preds = %44
  br label %57

56:                                               ; preds = %31
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %56, %55
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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_32_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
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
