; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_02-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_02_good() #0 {
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
  %4 = call i32 @rand() #4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = call i32 @rand() #4
  %9 = shl i32 %8, 30
  %10 = call i32 @rand() #4
  %11 = shl i32 %10, 15
  %12 = xor i32 %9, %11
  %13 = call i32 @rand() #4
  %14 = xor i32 %12, %13
  br label %25

15:                                               ; preds = %0
  %16 = call i32 @rand() #4
  %17 = shl i32 %16, 30
  %18 = call i32 @rand() #4
  %19 = shl i32 %18, 15
  %20 = xor i32 %17, %19
  %21 = call i32 @rand() #4
  %22 = xor i32 %20, %21
  %23 = sub i32 0, %22
  %24 = sub i32 %23, 1
  br label %25

25:                                               ; preds = %15, %7
  %26 = phi i32 [ %14, %7 ], [ %24, %15 ]
  store i32 %26, i32* %1, align 4
  %27 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 40, i1 false)
  %28 = load i32, i32* %1, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load i32, i32* %1, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %35
  store i32 1, i32* %36, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %45, %33
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  call void @printIntLine(i32 %44)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %37

48:                                               ; preds = %37
  br label %50

49:                                               ; preds = %30, %25
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %49, %48
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = call i32 @rand() #4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = call i32 @rand() #4
  %9 = shl i32 %8, 30
  %10 = call i32 @rand() #4
  %11 = shl i32 %10, 15
  %12 = xor i32 %9, %11
  %13 = call i32 @rand() #4
  %14 = xor i32 %12, %13
  br label %25

15:                                               ; preds = %0
  %16 = call i32 @rand() #4
  %17 = shl i32 %16, 30
  %18 = call i32 @rand() #4
  %19 = shl i32 %18, 15
  %20 = xor i32 %17, %19
  %21 = call i32 @rand() #4
  %22 = xor i32 %20, %21
  %23 = sub i32 0, %22
  %24 = sub i32 %23, 1
  br label %25

25:                                               ; preds = %15, %7
  %26 = phi i32 [ %14, %7 ], [ %24, %15 ]
  store i32 %26, i32* %1, align 4
  %27 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 40, i1 false)
  %28 = load i32, i32* %1, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load i32, i32* %1, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %35
  store i32 1, i32* %36, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %45, %33
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  call void @printIntLine(i32 %44)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %37

48:                                               ; preds = %37
  br label %50

49:                                               ; preds = %30, %25
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %49, %48
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 7, i32* %1, align 4
  %4 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false)
  %5 = load i32, i32* %1, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %9
  store i32 1, i32* %10, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %19, %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  call void @printIntLine(i32 %18)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %11

22:                                               ; preds = %11
  br label %24

23:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 7, i32* %1, align 4
  %4 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false)
  %5 = load i32, i32* %1, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %9
  store i32 1, i32* %10, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %19, %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  call void @printIntLine(i32 %18)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %11

22:                                               ; preds = %11
  br label %24

23:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %23, %22
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_rand_02_good()
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
