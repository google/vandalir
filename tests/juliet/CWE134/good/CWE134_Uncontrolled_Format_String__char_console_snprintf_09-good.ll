; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_console_snprintf_09-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@GLOBAL_CONST_TRUE = external dso_local constant i32, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_FALSE = external dso_local constant i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_console_snprintf_09_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca [100 x i8], align 16
  %5 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  %7 = load i32, i32* @GLOBAL_CONST_TRUE, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10) #5
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 100, %12
  %14 = icmp ugt i64 %13, 1
  br i1 %14, label %15, label %49

15:                                               ; preds = %9
  %16 = load i8*, i8** %1, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i64, i64* %3, align 8
  %20 = sub i64 100, %19
  %21 = trunc i64 %20 to i32
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %23 = call i8* @fgets(i8* %18, i32 %21, %struct._IO_FILE* %22)
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %15
  %26 = load i8*, i8** %1, align 8
  %27 = call i64 @strlen(i8* %26) #5
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i8*, i8** %1, align 8
  %32 = load i64, i64* %3, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i8*, i8** %1, align 8
  %40 = load i64, i64* %3, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %38, %30, %25
  br label %48

44:                                               ; preds = %15
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** %1, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %9
  br label %50

50:                                               ; preds = %49, %0
  %51 = load i32, i32* @GLOBAL_CONST_FALSE, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %60

54:                                               ; preds = %50
  %55 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %55, i8 0, i64 100, i1 false)
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %57 = load i8*, i8** %1, align 8
  %58 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %56, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %57) #6
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  call void @printLine(i8* %59)
  br label %60

60:                                               ; preds = %54, %53
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca [100 x i8], align 16
  %5 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  %7 = load i32, i32* @GLOBAL_CONST_TRUE, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10) #5
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 100, %12
  %14 = icmp ugt i64 %13, 1
  br i1 %14, label %15, label %49

15:                                               ; preds = %9
  %16 = load i8*, i8** %1, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i64, i64* %3, align 8
  %20 = sub i64 100, %19
  %21 = trunc i64 %20 to i32
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %23 = call i8* @fgets(i8* %18, i32 %21, %struct._IO_FILE* %22)
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %15
  %26 = load i8*, i8** %1, align 8
  %27 = call i64 @strlen(i8* %26) #5
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i8*, i8** %1, align 8
  %32 = load i64, i64* %3, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i8*, i8** %1, align 8
  %40 = load i64, i64* %3, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %38, %30, %25
  br label %48

44:                                               ; preds = %15
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** %1, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %9
  br label %50

50:                                               ; preds = %49, %0
  %51 = load i32, i32* @GLOBAL_CONST_TRUE, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %54, i8 0, i64 100, i1 false)
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %55, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %56) #6
  %58 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  call void @printLine(i8* %58)
  br label %59

59:                                               ; preds = %53, %50
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %5, i8** %1, align 8
  %6 = load i32, i32* @GLOBAL_CONST_FALSE, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %12

12:                                               ; preds = %9, %8
  %13 = load i32, i32* @GLOBAL_CONST_TRUE, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 100, i1 false)
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %17, i64 99, i8* %18) #6
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @printLine(i8* %20)
  br label %21

21:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %5, i8** %1, align 8
  %6 = load i32, i32* @GLOBAL_CONST_TRUE, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* @GLOBAL_CONST_TRUE, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 100, i1 false)
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %16, i64 99, i8* %17) #6
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @printLine(i8* %19)
  br label %20

20:                                               ; preds = %14, %11
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
  call void @CWE134_Uncontrolled_Format_String__char_console_snprintf_09_good()
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
