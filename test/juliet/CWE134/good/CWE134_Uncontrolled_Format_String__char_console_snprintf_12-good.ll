; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_console_snprintf_12-good.bc'
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
define internal void @CWE134_Uncontrolled_Format_String__char_console_snprintf_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca [100 x i8], align 16
  %7 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 100, i1 false)
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %8, i8** %1, align 8
  %9 = call i32 (...) @globalReturnsTrueOrFalse()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = call i64 @strlen(i8* %12) #5
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = sub i64 100, %14
  %16 = icmp ugt i64 %15, 1
  br i1 %16, label %17, label %51

17:                                               ; preds = %11
  %18 = load i8*, i8** %1, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i64, i64* %3, align 8
  %22 = sub i64 100, %21
  %23 = trunc i64 %22 to i32
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %25 = call i8* @fgets(i8* %20, i32 %23, %struct._IO_FILE* %24)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %17
  %28 = load i8*, i8** %1, align 8
  %29 = call i64 @strlen(i8* %28) #5
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i8*, i8** %1, align 8
  %34 = load i64, i64* %3, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i8*, i8** %1, align 8
  %42 = load i64, i64* %3, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %40, %32, %27
  br label %50

46:                                               ; preds = %17
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** %1, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %46, %45
  br label %51

51:                                               ; preds = %50, %11
  br label %93

52:                                               ; preds = %0
  %53 = load i8*, i8** %1, align 8
  %54 = call i64 @strlen(i8* %53) #5
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = sub i64 100, %55
  %57 = icmp ugt i64 %56, 1
  br i1 %57, label %58, label %92

58:                                               ; preds = %52
  %59 = load i8*, i8** %1, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i64, i64* %4, align 8
  %63 = sub i64 100, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %66 = call i8* @fgets(i8* %61, i32 %64, %struct._IO_FILE* %65)
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %58
  %69 = load i8*, i8** %1, align 8
  %70 = call i64 @strlen(i8* %69) #5
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* %4, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i8*, i8** %1, align 8
  %75 = load i64, i64* %4, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 10
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i8*, i8** %1, align 8
  %83 = load i64, i64* %4, align 8
  %84 = sub i64 %83, 1
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %81, %73, %68
  br label %91

87:                                               ; preds = %58
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i8*, i8** %1, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %87, %86
  br label %92

92:                                               ; preds = %91, %52
  br label %93

93:                                               ; preds = %92, %51
  %94 = call i32 (...) @globalReturnsTrueOrFalse()
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %97, i8 0, i64 100, i1 false)
  %98 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %99 = load i8*, i8** %1, align 8
  %100 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %98, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %99) #6
  %101 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @printLine(i8* %101)
  br label %108

102:                                              ; preds = %93
  %103 = bitcast [100 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %103, i8 0, i64 100, i1 false)
  %104 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %105 = load i8*, i8** %1, align 8
  %106 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %104, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %105) #6
  %107 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  call void @printLine(i8* %107)
  br label %108

108:                                              ; preds = %102, %96
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  %7 = call i32 (...) @globalReturnsTrueOrFalse()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %15

12:                                               ; preds = %0
  %13 = load i8*, i8** %1, align 8
  %14 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %15

15:                                               ; preds = %12, %9
  %16 = call i32 (...) @globalReturnsTrueOrFalse()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 100, i1 false)
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %20, i64 99, i8* %21) #6
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @printLine(i8* %23)
  br label %30

24:                                               ; preds = %15
  %25 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 100, i1 false)
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %26, i64 99, i8* %27) #6
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  call void @printLine(i8* %29)
  br label %30

30:                                               ; preds = %24, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

declare dso_local void @printLine(i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

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
  call void @CWE134_Uncontrolled_Format_String__char_console_snprintf_12_good()
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
