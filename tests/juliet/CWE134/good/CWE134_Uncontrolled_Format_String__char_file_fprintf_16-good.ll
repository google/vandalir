; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_file_fprintf_16-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str.6 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_file_fprintf_16_good() #0 {
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
  %5 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  br label %7

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = call i64 @strlen(i8* %8) #5
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = sub i64 100, %10
  %12 = icmp ugt i64 %11, 1
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %4, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = icmp ne %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i8*, i8** %1, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i64, i64* %3, align 8
  %22 = sub i64 100, %21
  %23 = trunc i64 %22 to i32
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %25 = call i8* @fgets(i8* %20, i32 %23, %struct._IO_FILE* %24)
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i8*, i8** %1, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %27, %17
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %33 = call i32 @fclose(%struct._IO_FILE* %32)
  br label %34

34:                                               ; preds = %31, %13
  br label %35

35:                                               ; preds = %34, %7
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = load i8*, i8** %1, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37
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
  br label %5

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8
  %7 = call i8* @strcpy(i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6
  br label %8

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* %11)
  br label %13

13:                                               ; preds = %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

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
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_16_good()
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
