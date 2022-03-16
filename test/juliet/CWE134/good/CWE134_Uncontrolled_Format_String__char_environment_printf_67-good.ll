; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_environment_printf_67-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType = type { i8* }

@.str.3 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_environment_printf_67_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, align 8
  %3 = alloca [100 x i8], align 16
  %4 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i8* @strcpy(i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #5
  %8 = load i8*, i8** %1, align 8
  %9 = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType* %2, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType* %2, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  call void @CWE134_Uncontrolled_Format_String__char_environment_printf_67b_goodG2BSink(i8* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = call i64 @strlen(i8* %8) #6
  store i64 %9, i64* %4, align 8
  %10 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #5
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %0
  %14 = load i8*, i8** %1, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = sub i64 100, %18
  %20 = sub i64 %19, 1
  %21 = call i8* @strncat(i8* %16, i8* %17, i64 %20) #5
  br label %22

22:                                               ; preds = %13, %0
  %23 = load i8*, i8** %1, align 8
  %24 = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType* %2, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType* %2, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  call void @CWE134_Uncontrolled_Format_String__char_environment_printf_67b_goodB2GSink(i8* %26)
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
  call void @CWE134_Uncontrolled_Format_String__char_environment_printf_67_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_environment_printf_67b_goodG2BSink(i8* %0) #0 {
  %2 = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, align 8
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType* %2, i32 0, i32 0
  store i8* %0, i8** %4, align 8
  %5 = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType* %2, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 (i8*, ...) @printf(i8* %7)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_environment_printf_67b_goodB2GSink(i8* %0) #0 {
  %2 = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, align 8
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType* %2, i32 0, i32 0
  store i8* %0, i8** %4, align 8
  %5 = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_printf_67_structType* %2, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %7)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
