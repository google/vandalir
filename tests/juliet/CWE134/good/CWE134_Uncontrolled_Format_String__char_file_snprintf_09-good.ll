; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_file_snprintf_09-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@GLOBAL_CONST_TRUE = external dso_local constant i32, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_FALSE = external dso_local constant i32, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_file_snprintf_09_good() #0 {
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
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %7, i8** %1, align 8
  %8 = load i32, i32* @GLOBAL_CONST_TRUE, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %0
  %11 = load i8*, i8** %1, align 8
  %12 = call i64 @strlen(i8* %11) #5
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = sub i64 100, %13
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %17, %struct._IO_FILE** %4, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %19 = icmp ne %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i8*, i8** %1, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i64, i64* %3, align 8
  %25 = sub i64 100, %24
  %26 = trunc i64 %25 to i32
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %28 = call i8* @fgets(i8* %23, i32 %26, %struct._IO_FILE* %27)
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i8*, i8** %1, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %30, %20
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %36 = call i32 @fclose(%struct._IO_FILE* %35)
  br label %37

37:                                               ; preds = %34, %16
  br label %38

38:                                               ; preds = %37, %10
  br label %39

39:                                               ; preds = %38, %0
  %40 = load i32, i32* @GLOBAL_CONST_FALSE, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %49

43:                                               ; preds = %39
  %44 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %44, i8 0, i64 100, i1 false)
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %46 = load i8*, i8** %1, align 8
  %47 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %45, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %46) #6
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @printLine(i8* %48)
  br label %49

49:                                               ; preds = %43, %42
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %7, i8** %1, align 8
  %8 = load i32, i32* @GLOBAL_CONST_TRUE, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %0
  %11 = load i8*, i8** %1, align 8
  %12 = call i64 @strlen(i8* %11) #5
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = sub i64 100, %13
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %17, %struct._IO_FILE** %4, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %19 = icmp ne %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i8*, i8** %1, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i64, i64* %3, align 8
  %25 = sub i64 100, %24
  %26 = trunc i64 %25 to i32
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %28 = call i8* @fgets(i8* %23, i32 %26, %struct._IO_FILE* %27)
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i8*, i8** %1, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %30, %20
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %36 = call i32 @fclose(%struct._IO_FILE* %35)
  br label %37

37:                                               ; preds = %34, %16
  br label %38

38:                                               ; preds = %37, %10
  br label %39

39:                                               ; preds = %38, %0
  %40 = load i32, i32* @GLOBAL_CONST_TRUE, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 100, i1 false)
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %45 = load i8*, i8** %1, align 8
  %46 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %44, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %45) #6
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @printLine(i8* %47)
  br label %48

48:                                               ; preds = %42, %39
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
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #6
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
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #6
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

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

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
  call void @CWE134_Uncontrolled_Format_String__char_file_snprintf_09_good()
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
