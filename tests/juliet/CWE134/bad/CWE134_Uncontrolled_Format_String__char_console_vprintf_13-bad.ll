; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_console_vprintf_13-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@GLOBAL_CONST_FIVE = external dso_local constant i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_console_vprintf_13_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %5, i8** %1, align 8
  %6 = load i32, i32* @GLOBAL_CONST_FIVE, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %49

8:                                                ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = call i64 @strlen(i8* %9) #6
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = sub i64 100, %11
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load i8*, i8** %1, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i64, i64* %3, align 8
  %19 = sub i64 100, %18
  %20 = trunc i64 %19 to i32
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %22 = call i8* @fgets(i8* %17, i32 %20, %struct._IO_FILE* %21)
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %14
  %25 = load i8*, i8** %1, align 8
  %26 = call i64 @strlen(i8* %25) #6
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i8*, i8** %1, align 8
  %31 = load i64, i64* %3, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i8*, i8** %1, align 8
  %39 = load i64, i64* %3, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %37, %29, %24
  br label %47

43:                                               ; preds = %14
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %1, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %43, %42
  br label %48

48:                                               ; preds = %47, %8
  br label %49

49:                                               ; preds = %48, %0
  %50 = load i32, i32* @GLOBAL_CONST_FIVE, align 4
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %1, align 8
  %54 = load i8*, i8** %1, align 8
  call void (i8*, ...) @badVaSinkB(i8* %53, i8* %54)
  br label %55

55:                                               ; preds = %52, %49
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @badVaSinkB(i8* %0, ...) #0 {
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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_console_vprintf_13_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
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
