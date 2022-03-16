; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_34-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_34_unionType = type { i32 }

@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_34_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_34_unionType, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 7, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_34_unionType* %2 to i32*
  store i32 %6, i32* %7, align 4
  %8 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_34_unionType* %2 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false)
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %0
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %15
  store i32 1, i32* %16, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %25, %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  call void @printIntLine(i32 %24)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %17

28:                                               ; preds = %17
  br label %30

29:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %28
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_34_unionType, align 4
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
  %30 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_34_unionType* %2 to i32*
  store i32 %29, i32* %30, align 4
  %31 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_34_unionType* %2 to i32*
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  %33 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 40, i1 false)
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %27
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %41
  store i32 1, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %51, %39
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  call void @printIntLine(i32 %50)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %43

54:                                               ; preds = %43
  br label %56

55:                                               ; preds = %36, %27
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %55, %54
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_34_good()
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
