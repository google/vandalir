; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_console_vprintf_12-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_console_vprintf_12_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 100, i1 false)
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %4, i8** %1, align 8
  %5 = call i32 (...) @globalReturnsTrueOrFalse()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** %1, align 8
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %13

13:                                               ; preds = %10, %7
  %14 = call i32 (...) @globalReturnsTrueOrFalse()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %1, align 8
  %18 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodG2BVaSinkB(i8* %17, i8* %18)
  br label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %1, align 8
  %21 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodG2BVaSinkB(i8* %20, i8* %21)
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  %7 = call i32 (...) @globalReturnsTrueOrFalse()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10) #6
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
  %27 = call i64 @strlen(i8* %26) #6
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
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i8*, i8** %1, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %9
  br label %91

50:                                               ; preds = %0
  %51 = load i8*, i8** %1, align 8
  %52 = call i64 @strlen(i8* %51) #6
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = sub i64 100, %53
  %55 = icmp ugt i64 %54, 1
  br i1 %55, label %56, label %90

56:                                               ; preds = %50
  %57 = load i8*, i8** %1, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i64, i64* %4, align 8
  %61 = sub i64 100, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %64 = call i8* @fgets(i8* %59, i32 %62, %struct._IO_FILE* %63)
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %56
  %67 = load i8*, i8** %1, align 8
  %68 = call i64 @strlen(i8* %67) #6
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load i8*, i8** %1, align 8
  %73 = load i64, i64* %4, align 8
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load i8*, i8** %1, align 8
  %81 = load i64, i64* %4, align 8
  %82 = sub i64 %81, 1
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 0, i8* %83, align 1
  br label %84

84:                                               ; preds = %79, %71, %66
  br label %89

85:                                               ; preds = %56
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i8*, i8** %1, align 8
  %87 = load i64, i64* %4, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 0, i8* %88, align 1
  br label %89

89:                                               ; preds = %85, %84
  br label %90

90:                                               ; preds = %89, %50
  br label %91

91:                                               ; preds = %90, %49
  %92 = call i32 (...) @globalReturnsTrueOrFalse()
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** %1, align 8
  %96 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodB2GVaSinkG(i8* %95, i8* %96)
  br label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** %1, align 8
  %99 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodB2GVaSinkG(i8* %98, i8* %99)
  br label %100

100:                                              ; preds = %97, %94
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2GVaSinkG(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %6)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_end(i8* %9)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2BVaSinkB(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = call i32 @vprintf(i8* %6, %struct.__va_list_tag* %7)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
  ret void
}

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
  call void @CWE134_Uncontrolled_Format_String__char_console_vprintf_12_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
