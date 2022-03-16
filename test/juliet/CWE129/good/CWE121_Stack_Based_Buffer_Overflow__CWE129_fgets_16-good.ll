; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str.4 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [14 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  br label %5

5:                                                ; preds = %0
  %6 = bitcast [14 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 14, i1 false)
  %7 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %9 = call i8* @fgets(i8* %7, i32 14, %struct._IO_FILE* %8)
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %13 = call i32 @atoi(i8* %12) #5
  store i32 %13, i32* %1, align 4
  br label %15

14:                                               ; preds = %5
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  %18 = bitcast [10 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 40, i1 false)
  %19 = load i32, i32* %1, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %26
  store i32 1, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %36, %24
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  call void @printIntLine(i32 %35)
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %28

39:                                               ; preds = %28
  br label %41

40:                                               ; preds = %21, %17
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  br label %4

4:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5
  %7 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 40, i1 false)
  %8 = load i32, i32* %1, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %12
  store i32 1, i32* %13, align 4
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %22, %10
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  call void @printIntLine(i32 %21)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %14

25:                                               ; preds = %14
  br label %27

26:                                               ; preds = %6
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #6
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #6
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local void @srand(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
