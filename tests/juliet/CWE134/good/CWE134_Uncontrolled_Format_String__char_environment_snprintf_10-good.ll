; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_environment_snprintf_10-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globalTrue = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@globalFalse = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_environment_snprintf_10_good() #0 {
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
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %7, i8** %1, align 8
  %8 = load i32, i32* @globalTrue, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %0
  %11 = load i8*, i8** %1, align 8
  %12 = call i64 @strlen(i8* %11) #5
  store i64 %12, i64* %3, align 8
  %13 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i8*, i8** %1, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = sub i64 100, %21
  %23 = sub i64 %22, 1
  %24 = call i8* @strncat(i8* %19, i8* %20, i64 %23) #6
  br label %25

25:                                               ; preds = %16, %10
  br label %26

26:                                               ; preds = %25, %0
  %27 = load i32, i32* @globalFalse, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %36

30:                                               ; preds = %26
  %31 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 100, i1 false)
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %33 = load i8*, i8** %1, align 8
  %34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %32, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %33) #6
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @printLine(i8* %35)
  br label %36

36:                                               ; preds = %30, %29
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %7, i8** %1, align 8
  %8 = load i32, i32* @globalTrue, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %0
  %11 = load i8*, i8** %1, align 8
  %12 = call i64 @strlen(i8* %11) #5
  store i64 %12, i64* %3, align 8
  %13 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i8*, i8** %1, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = sub i64 100, %21
  %23 = sub i64 %22, 1
  %24 = call i8* @strncat(i8* %19, i8* %20, i64 %23) #6
  br label %25

25:                                               ; preds = %16, %10
  br label %26

26:                                               ; preds = %25, %0
  %27 = load i32, i32* @globalTrue, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 100, i1 false)
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %31, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %32) #6
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @printLine(i8* %34)
  br label %35

35:                                               ; preds = %29, %26
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
  %6 = load i32, i32* @globalFalse, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %12

12:                                               ; preds = %9, %8
  %13 = load i32, i32* @globalTrue, align 4
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
  %6 = load i32, i32* @globalTrue, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* @globalTrue, align 4
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

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #2

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
  call void @CWE134_Uncontrolled_Format_String__char_environment_snprintf_10_good()
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
