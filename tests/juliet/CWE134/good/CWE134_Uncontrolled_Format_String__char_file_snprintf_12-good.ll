; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_file_snprintf_12-good.bc'
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
define internal void @CWE134_Uncontrolled_Format_String__char_file_snprintf_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
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
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 100, i1 false)
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %10, i8** %1, align 8
  %11 = call i32 (...) @globalReturnsTrueOrFalse()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %0
  %14 = load i8*, i8** %1, align 8
  %15 = call i64 @strlen(i8* %14) #5
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = sub i64 100, %16
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %20, %struct._IO_FILE** %4, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %22 = icmp ne %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i8*, i8** %1, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i64, i64* %3, align 8
  %28 = sub i64 100, %27
  %29 = trunc i64 %28 to i32
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %31 = call i8* @fgets(i8* %26, i32 %29, %struct._IO_FILE* %30)
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i8*, i8** %1, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %39 = call i32 @fclose(%struct._IO_FILE* %38)
  br label %40

40:                                               ; preds = %37, %19
  br label %41

41:                                               ; preds = %40, %13
  br label %71

42:                                               ; preds = %0
  %43 = load i8*, i8** %1, align 8
  %44 = call i64 @strlen(i8* %43) #5
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub i64 100, %45
  %47 = icmp ugt i64 %46, 1
  br i1 %47, label %48, label %70

48:                                               ; preds = %42
  %49 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %49, %struct._IO_FILE** %6, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %51 = icmp ne %struct._IO_FILE* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i8*, i8** %1, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i64, i64* %5, align 8
  %57 = sub i64 100, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %60 = call i8* @fgets(i8* %55, i32 %58, %struct._IO_FILE* %59)
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i8*, i8** %1, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %62, %52
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %68 = call i32 @fclose(%struct._IO_FILE* %67)
  br label %69

69:                                               ; preds = %66, %48
  br label %70

70:                                               ; preds = %69, %42
  br label %71

71:                                               ; preds = %70, %41
  %72 = call i32 (...) @globalReturnsTrueOrFalse()
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = bitcast [100 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %75, i8 0, i64 100, i1 false)
  %76 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %77 = load i8*, i8** %1, align 8
  %78 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %76, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %77) #6
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  call void @printLine(i8* %79)
  br label %86

80:                                               ; preds = %71
  %81 = bitcast [100 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %81, i8 0, i64 100, i1 false)
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %83 = load i8*, i8** %1, align 8
  %84 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %82, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %83) #6
  %85 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  call void @printLine(i8* %85)
  br label %86

86:                                               ; preds = %80, %74
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
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6
  br label %15

12:                                               ; preds = %0
  %13 = load i8*, i8** %1, align 8
  %14 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6
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

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

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
  call void @CWE134_Uncontrolled_Format_String__char_file_snprintf_12_good()
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
