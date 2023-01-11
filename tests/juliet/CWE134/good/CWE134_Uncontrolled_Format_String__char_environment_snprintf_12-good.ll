; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_environment_snprintf_12-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.4 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_environment_snprintf_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 100, i1 false)
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %10, i8** %1, align 8
  %11 = call i32 (...) @globalReturnsTrueOrFalse()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %0
  %14 = load i8*, i8** %1, align 8
  %15 = call i64 @strlen(i8* %14) #5
  store i64 %15, i64* %3, align 8
  %16 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i8*, i8** %1, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = sub i64 100, %24
  %26 = sub i64 %25, 1
  %27 = call i8* @strncat(i8* %22, i8* %23, i64 %26) #6
  br label %28

28:                                               ; preds = %19, %13
  br label %45

29:                                               ; preds = %0
  %30 = load i8*, i8** %1, align 8
  %31 = call i64 @strlen(i8* %30) #5
  store i64 %31, i64* %5, align 8
  %32 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i8*, i8** %1, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 100, %40
  %42 = sub i64 %41, 1
  %43 = call i8* @strncat(i8* %38, i8* %39, i64 %42) #6
  br label %44

44:                                               ; preds = %35, %29
  br label %45

45:                                               ; preds = %44, %28
  %46 = call i32 (...) @globalReturnsTrueOrFalse()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = bitcast [100 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %49, i8 0, i64 100, i1 false)
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %51 = load i8*, i8** %1, align 8
  %52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %50, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %51) #6
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  call void @printLine(i8* %53)
  br label %60

54:                                               ; preds = %45
  %55 = bitcast [100 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %55, i8 0, i64 100, i1 false)
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %57 = load i8*, i8** %1, align 8
  %58 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %56, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %57) #6
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  call void @printLine(i8* %59)
  br label %60

60:                                               ; preds = %54, %48
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
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %15

12:                                               ; preds = %0
  %13 = load i8*, i8** %1, align 8
  %14 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #6
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

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #3

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
  call void @CWE134_Uncontrolled_Format_String__char_environment_snprintf_12_good()
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
