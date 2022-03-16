; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_file_vprintf_07-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@staticFive = internal global i32 5, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_file_vprintf_07_good() #0 {
  call void @goodG2B1()
  call void @goodG2B2()
  call void @goodB2G1()
  call void @goodB2G2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 100, i1 false)
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %4, i8** %1, align 8
  %5 = load i32, i32* @staticFive, align 4
  %6 = icmp ne i32 %5, 5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %11

8:                                                ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %11

11:                                               ; preds = %8, %7
  %12 = load i32, i32* @staticFive, align 4
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8*, i8** %1, align 8
  %16 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodG2B1VaSinkB(i8* %15, i8* %16)
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 100, i1 false)
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %4, i8** %1, align 8
  %5 = load i32, i32* @staticFive, align 4
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @staticFive, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8*, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodG2B2VaSinkB(i8* %14, i8* %15)
  br label %16

16:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  %7 = load i32, i32* @staticFive, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %38

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10) #6
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 100, %12
  %14 = icmp ugt i64 %13, 1
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %4, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %18 = icmp ne %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i8*, i8** %1, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i64, i64* %3, align 8
  %24 = sub i64 100, %23
  %25 = trunc i64 %24 to i32
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %27 = call i8* @fgets(i8* %22, i32 %25, %struct._IO_FILE* %26)
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %30 = load i8*, i8** %1, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %32, align 1
  br label %33

33:                                               ; preds = %29, %19
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %35 = call i32 @fclose(%struct._IO_FILE* %34)
  br label %36

36:                                               ; preds = %33, %15
  br label %37

37:                                               ; preds = %36, %9
  br label %38

38:                                               ; preds = %37, %0
  %39 = load i32, i32* @staticFive, align 4
  %40 = icmp ne i32 %39, 5
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %45

42:                                               ; preds = %38
  %43 = load i8*, i8** %1, align 8
  %44 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodB2G1VaSinkG(i8* %43, i8* %44)
  br label %45

45:                                               ; preds = %42, %41
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  %7 = load i32, i32* @staticFive, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %38

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10) #6
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 100, %12
  %14 = icmp ugt i64 %13, 1
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %4, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %18 = icmp ne %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i8*, i8** %1, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i64, i64* %3, align 8
  %24 = sub i64 100, %23
  %25 = trunc i64 %24 to i32
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %27 = call i8* @fgets(i8* %22, i32 %25, %struct._IO_FILE* %26)
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %30 = load i8*, i8** %1, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %32, align 1
  br label %33

33:                                               ; preds = %29, %19
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %35 = call i32 @fclose(%struct._IO_FILE* %34)
  br label %36

36:                                               ; preds = %33, %15
  br label %37

37:                                               ; preds = %36, %9
  br label %38

38:                                               ; preds = %37, %0
  %39 = load i32, i32* @staticFive, align 4
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %1, align 8
  %43 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodB2G2VaSinkG(i8* %42, i8* %43)
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2VaSinkG(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* %6)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_end(i8* %9)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1VaSinkG(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.__va_list_tag* %6)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_end(i8* %9)
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2VaSinkB(i8* %0, ...) #0 {
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
define internal void @goodG2B1VaSinkB(i8* %0, ...) #0 {
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
  call void @CWE134_Uncontrolled_Format_String__char_file_vprintf_07_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
