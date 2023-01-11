; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_environment_fprintf_32-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str.3 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_32_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %1, i8*** %2, align 8
  store i8** %1, i8*** %3, align 8
  %7 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 100, i1 false)
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %8, i8** %1, align 8
  %9 = load i8**, i8*** %2, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #5
  %13 = load i8*, i8** %5, align 8
  %14 = load i8**, i8*** %2, align 8
  store i8* %13, i8** %14, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %1, i8*** %2, align 8
  store i8** %1, i8*** %3, align 8
  %9 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 100, i1 false)
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %10, i8** %1, align 8
  %11 = load i8**, i8*** %2, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* %13) #6
  store i64 %14, i64* %6, align 8
  %15 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #5
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %0
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 100, %23
  %25 = sub i64 %24, 1
  %26 = call i8* @strncat(i8* %21, i8* %22, i64 %25) #5
  br label %27

27:                                               ; preds = %18, %0
  %28 = load i8*, i8** %5, align 8
  %29 = load i8**, i8*** %2, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8**, i8*** %3, align 8
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %33)
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

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

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
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_32_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #4

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
