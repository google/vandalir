; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_31-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_31_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %6 = call i32 @rand() #4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = call i32 @rand() #4
  %11 = shl i32 %10, 30
  %12 = call i32 @rand() #4
  %13 = shl i32 %12, 15
  %14 = xor i32 %11, %13
  %15 = call i32 @rand() #4
  %16 = xor i32 %14, %15
  br label %27

17:                                               ; preds = %0
  %18 = call i32 @rand() #4
  %19 = shl i32 %18, 30
  %20 = call i32 @rand() #4
  %21 = shl i32 %20, 15
  %22 = xor i32 %19, %21
  %23 = call i32 @rand() #4
  %24 = xor i32 %22, %23
  %25 = sub i32 0, %24
  %26 = sub i32 %25, 1
  br label %27

27:                                               ; preds = %17, %9
  %28 = phi i32 [ %16, %9 ], [ %26, %17 ]
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* %3, align 4
  %31 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 40, i1 false)
  %32 = load i32, i32* %3, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %36
  store i32 1, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %46, %34
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  call void @printIntLine(i32 %45)
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %38

49:                                               ; preds = %38
  br label %51

50:                                               ; preds = %27
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %50, %49
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_31_bad()
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
