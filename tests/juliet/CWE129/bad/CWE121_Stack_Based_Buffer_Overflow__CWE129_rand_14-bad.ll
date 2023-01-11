; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_14-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globalFive = external dso_local global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_14_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* @globalFive, align 4
  %5 = icmp eq i32 %4, 5
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
  %31 = load i32, i32* @globalFive, align 4
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 40, i1 false)
  %35 = load i32, i32* %1, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %39
  store i32 1, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %49, %37
  %42 = load i32, i32* %2, align 4
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  call void @printIntLine(i32 %48)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %41

52:                                               ; preds = %41
  br label %54

53:                                               ; preds = %33
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %30
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_14_bad()
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
