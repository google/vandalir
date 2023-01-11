; ModuleID = './test/Juliet/CWE242/bad/CWE242_Use_of_Inherently_Dangerous_Function__basic_12-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [61 x i8] c"Error Condition: alter control flow to indicate action taken\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE242_Use_of_Inherently_Dangerous_Function__basic_12_bad() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i8*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = call i32 (...) @globalReturnsTrueOrFalse()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %9 = call i8* @gets(i8* %8)
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @printLine(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 1) #4
  unreachable

13:                                               ; preds = %7
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 9
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  call void @printLine(i8* %15)
  br label %26

16:                                               ; preds = %0
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %19 = call i8* @fgets(i8* %17, i32 10, %struct._IO_FILE* %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  call void @printLine(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 1) #4
  unreachable

23:                                               ; preds = %16
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @printLine(i8* %25)
  br label %26

26:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

declare dso_local i8* @gets(i8*) #1

declare dso_local void @printLine(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #5
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #5
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE242_Use_of_Inherently_Dangerous_Function__basic_12_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
