; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_05-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@staticTrue = internal global i32 1, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_05_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* @staticTrue, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %1)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @staticTrue, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false)
  %14 = load i32, i32* %1, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %18
  store i32 1, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %28, %16
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  call void @printIntLine(i32 %27)
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %20

31:                                               ; preds = %20
  br label %33

32:                                               ; preds = %12
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %9
  ret void
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_05_bad()
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
