; ModuleID = './test/Juliet/CWE805/good/CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_loop_13-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@GLOBAL_CONST_FIVE = external dso_local constant i32, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_loop_13_good() #0 {
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i8, i64 200, align 16
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %2, align 8
  %8 = alloca i8, i64 400, align 16
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load i32, i32* @GLOBAL_CONST_FIVE, align 4
  %11 = icmp ne i32 %10, 5
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %15

13:                                               ; preds = %0
  %14 = load i32*, i32** %3, align 8
  store i32* %14, i32** %1, align 8
  br label %15

15:                                               ; preds = %13, %12
  %16 = bitcast [100 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 400, i1 false)
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %27, %15
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %18, 100
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %1, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load i32*, i32** %1, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  call void @printIntLine(i32 %33)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i8, i64 200, align 16
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %2, align 8
  %8 = alloca i8, i64 400, align 16
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load i32, i32* @GLOBAL_CONST_FIVE, align 4
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32*, i32** %3, align 8
  store i32* %13, i32** %1, align 8
  br label %14

14:                                               ; preds = %12, %0
  %15 = bitcast [100 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 400, i1 false)
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %26, %14
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %17, 100
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %1, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %16

29:                                               ; preds = %16
  %30 = load i32*, i32** %1, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  call void @printIntLine(i32 %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_loop_13_good()
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
