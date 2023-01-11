; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_file_snprintf_32-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_file_snprintf_32_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [100 x i8], align 16
  store i8** %1, i8*** %2, align 8
  store i8** %1, i8*** %3, align 8
  %10 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 100, i1 false)
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %11, i8** %1, align 8
  %12 = load i8**, i8*** %2, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14) #5
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = sub i64 100, %16
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %0
  %20 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %20, %struct._IO_FILE** %7, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %22 = icmp ne %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 100, %27
  %29 = trunc i64 %28 to i32
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %31 = call i8* @fgets(i8* %26, i32 %29, %struct._IO_FILE* %30)
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %39 = call i32 @fclose(%struct._IO_FILE* %38)
  br label %40

40:                                               ; preds = %37, %19
  br label %41

41:                                               ; preds = %40, %0
  %42 = load i8*, i8** %5, align 8
  %43 = load i8**, i8*** %2, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i8**, i8*** %3, align 8
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %8, align 8
  %46 = bitcast [100 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %46, i8 0, i64 100, i1 false)
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %47, i64 99, i8* %48) #6
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  call void @printLine(i8* %50)
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
  call void @CWE134_Uncontrolled_Format_String__char_file_snprintf_32_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local void @srand(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
