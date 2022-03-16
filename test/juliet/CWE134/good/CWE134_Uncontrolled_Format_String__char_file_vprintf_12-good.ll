; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_file_vprintf_12-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str.3 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_file_vprintf_12_good() #0 {
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
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 100, i1 false)
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %8, i8** %1, align 8
  %9 = call i32 (...) @globalReturnsTrueOrFalse()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = call i64 @strlen(i8* %12) #6
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = sub i64 100, %14
  %16 = icmp ugt i64 %15, 1
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %4, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %20 = icmp ne %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i8*, i8** %1, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i64, i64* %3, align 8
  %26 = sub i64 100, %25
  %27 = trunc i64 %26 to i32
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %29 = call i8* @fgets(i8* %24, i32 %27, %struct._IO_FILE* %28)
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i8*, i8** %1, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %31, %21
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %37 = call i32 @fclose(%struct._IO_FILE* %36)
  br label %38

38:                                               ; preds = %35, %17
  br label %39

39:                                               ; preds = %38, %11
  br label %69

40:                                               ; preds = %0
  %41 = load i8*, i8** %1, align 8
  %42 = call i64 @strlen(i8* %41) #6
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 100, %43
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %47, %struct._IO_FILE** %6, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %49 = icmp ne %struct._IO_FILE* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i8*, i8** %1, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i64, i64* %5, align 8
  %55 = sub i64 100, %54
  %56 = trunc i64 %55 to i32
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %58 = call i8* @fgets(i8* %53, i32 %56, %struct._IO_FILE* %57)
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i8*, i8** %1, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %60, %50
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %66 = call i32 @fclose(%struct._IO_FILE* %65)
  br label %67

67:                                               ; preds = %64, %46
  br label %68

68:                                               ; preds = %67, %40
  br label %69

69:                                               ; preds = %68, %39
  %70 = call i32 (...) @globalReturnsTrueOrFalse()
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %1, align 8
  %74 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodB2GVaSinkG(i8* %73, i8* %74)
  br label %78

75:                                               ; preds = %69
  %76 = load i8*, i8** %1, align 8
  %77 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodB2GVaSinkG(i8* %76, i8* %77)
  br label %78

78:                                               ; preds = %75, %72
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare dso_local void @printLine(i8*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2GVaSinkG(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.__va_list_tag* %6)
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
  call void @CWE134_Uncontrolled_Format_String__char_file_vprintf_12_good()
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
