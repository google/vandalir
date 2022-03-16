; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_console_snprintf_12-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_console_snprintf_12_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %7, i8** %1, align 8
  %8 = call i32 (...) @globalReturnsTrueOrFalse()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %0
  %11 = load i8*, i8** %1, align 8
  %12 = call i64 @strlen(i8* %11) #5
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = sub i64 100, %13
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load i8*, i8** %1, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i64, i64* %3, align 8
  %21 = sub i64 100, %20
  %22 = trunc i64 %21 to i32
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %24 = call i8* @fgets(i8* %19, i32 %22, %struct._IO_FILE* %23)
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %16
  %27 = load i8*, i8** %1, align 8
  %28 = call i64 @strlen(i8* %27) #5
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i8*, i8** %1, align 8
  %33 = load i64, i64* %3, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i8*, i8** %1, align 8
  %41 = load i64, i64* %3, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %39, %31, %26
  br label %49

45:                                               ; preds = %16
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %1, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %45, %44
  br label %50

50:                                               ; preds = %49, %10
  br label %54

51:                                               ; preds = %0
  %52 = load i8*, i8** %1, align 8
  %53 = call i8* @strcpy(i8* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %54

54:                                               ; preds = %51, %50
  %55 = call i32 (...) @globalReturnsTrueOrFalse()
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %58, i8 0, i64 100, i1 false)
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %60 = load i8*, i8** %1, align 8
  %61 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %59, i64 99, i8* %60) #6
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  call void @printLine(i8* %62)
  br label %69

63:                                               ; preds = %54
  %64 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 100, i1 false)
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %66 = load i8*, i8** %1, align 8
  %67 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %66) #6
  %68 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @printLine(i8* %68)
  br label %69

69:                                               ; preds = %63, %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #4

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_console_snprintf_12_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
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
