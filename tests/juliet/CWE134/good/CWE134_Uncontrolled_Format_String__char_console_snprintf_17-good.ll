; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_console_snprintf_17-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str.4 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_console_snprintf_17_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca [100 x i8], align 16
  %7 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 100, i1 false)
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %8, i8** %3, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %53, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strlen(i8* %13) #5
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = sub i64 100, %15
  %17 = icmp ugt i64 %16, 1
  br i1 %17, label %18, label %52

18:                                               ; preds = %12
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 100, %22
  %24 = trunc i64 %23 to i32
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %26 = call i8* @fgets(i8* %21, i32 %24, %struct._IO_FILE* %25)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %18
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strlen(i8* %29) #5
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %41, %33, %28
  br label %51

47:                                               ; preds = %18
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8*, i8** %3, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %47, %46
  br label %52

52:                                               ; preds = %51, %12
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  br label %9

56:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %66, %56
  %58 = load i32, i32* %2, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = bitcast [100 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %61, i8 0, i64 100, i1 false)
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %62, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %63) #6
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  call void @printLine(i8* %65)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %57

69:                                               ; preds = %57
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %7, i8** %3, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %14, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strcpy(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %8

17:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %27, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 100, i1 false)
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %23, i64 99, i8* %24) #6
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @printLine(i8* %26)
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %18

30:                                               ; preds = %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local void @printLine(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

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
  call void @CWE134_Uncontrolled_Format_String__char_console_snprintf_17_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
