; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_environment_snprintf_12-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_environment_snprintf_12_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca [100 x i8], align 16
  %7 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 100, i1 false)
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %8, i8** %1, align 8
  %9 = call i32 (...) @globalReturnsTrueOrFalse()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = call i64 @strlen(i8* %12) #5
  store i64 %13, i64* %3, align 8
  %14 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load i8*, i8** %1, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = sub i64 100, %22
  %24 = sub i64 %23, 1
  %25 = call i8* @strncat(i8* %20, i8* %21, i64 %24) #6
  br label %26

26:                                               ; preds = %17, %11
  br label %30

27:                                               ; preds = %0
  %28 = load i8*, i8** %1, align 8
  %29 = call i8* @strcpy(i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %30

30:                                               ; preds = %27, %26
  %31 = call i32 (...) @globalReturnsTrueOrFalse()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 100, i1 false)
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %36 = load i8*, i8** %1, align 8
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %35, i64 99, i8* %36) #6
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @printLine(i8* %38)
  br label %45

39:                                               ; preds = %30
  %40 = bitcast [100 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %40, i8 0, i64 100, i1 false)
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %42 = load i8*, i8** %1, align 8
  %43 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %41, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %42) #6
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  call void @printLine(i8* %44)
  br label %45

45:                                               ; preds = %39, %33
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #4

declare dso_local void @printLine(i8*) #2

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
  call void @CWE134_Uncontrolled_Format_String__char_environment_snprintf_12_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local void @srand(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
