; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_environment_snprintf_31-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.3 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_environment_snprintf_31_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #5
  %10 = load i8*, i8** %1, align 8
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %4, align 8
  %12 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 100, i1 false)
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %13, i64 99, i8* %14) #5
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @printLine(i8* %16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false)
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10) #6
  store i64 %11, i64* %3, align 8
  %12 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #5
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %0
  %16 = load i8*, i8** %1, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sub i64 100, %20
  %22 = sub i64 %21, 1
  %23 = call i8* @strncat(i8* %18, i8* %19, i64 %22) #5
  br label %24

24:                                               ; preds = %15, %0
  %25 = load i8*, i8** %1, align 8
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %6, align 8
  %27 = bitcast [100 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 100, i1 false)
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %28, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %29) #5
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  call void @printLine(i8* %31)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #5
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #5
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_environment_snprintf_31_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
