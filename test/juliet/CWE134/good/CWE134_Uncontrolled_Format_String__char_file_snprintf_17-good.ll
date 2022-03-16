; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_file_snprintf_17-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str.6 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_file_snprintf_17_good() #0 {
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
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false)
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %9, i8** %3, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %42, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strlen(i8* %14) #5
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = sub i64 100, %16
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %20, %struct._IO_FILE** %6, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %22 = icmp ne %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 100, %27
  %29 = trunc i64 %28 to i32
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %31 = call i8* @fgets(i8* %26, i32 %29, %struct._IO_FILE* %30)
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %39 = call i32 @fclose(%struct._IO_FILE* %38)
  br label %40

40:                                               ; preds = %37, %19
  br label %41

41:                                               ; preds = %40, %13
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %10

45:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %55, %45
  %47 = load i32, i32* %2, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = bitcast [100 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 100, i1 false)
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %51, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %52) #6
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  call void @printLine(i8* %54)
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %46

58:                                               ; preds = %46
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
  %13 = call i8* @strcpy(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6
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
  call void @CWE134_Uncontrolled_Format_String__char_file_snprintf_17_good()
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
