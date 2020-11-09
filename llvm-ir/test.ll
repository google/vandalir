; ModuleID = './test/test.c'
source_filename = "./test/test.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"joschua\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"addr of a %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"addr of b %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"addr of c %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"addr of d %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"val of a %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"val of b %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"val of c %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"val of d %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Enter your name:\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"Hello, %s. Welcome!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @reverse(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %3
  br label %37

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 %22, i8* %26, align 1
  %27 = load i8, i8* %7, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 %27, i8* %31, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  call void @reverse(i8* %32, i32 %34, i32 %36)
  br label %37

; <label>:37:                                     ; preds = %12, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @reverseName(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %2, align 8
  br label %52

; <label>:15:                                     ; preds = %1
  store i32 5, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

; <label>:16:                                     ; preds = %22, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 20
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %22

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %16

; <label>:25:                                     ; preds = %16
  store i32* %5, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %7, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32* %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32* %43)
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strlen(i8* %46) #4
  %48 = sub i64 %47, 1
  %49 = trunc i64 %48 to i32
  call void @reverse(i8* %45, i32 0, i32 %49)
  %50 = load i8*, i8** %3, align 8
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** %3, align 8
  store i8* %51, i8** %2, align 8
  br label %52

; <label>:52:                                     ; preds = %25, %13
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  store i32 0, i32* %1, align 4
  %6 = call noalias i8* @calloc(i64 8, i64 1) #5
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @realloc(i8* %7, i64 7) #5
  store i8* %8, i8** %3, align 8
  store i8** %3, i8*** %5, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %13 = call i8* @fgets(i8* %11, i32 8, %struct._IO_FILE* %12)
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i32 0, i32 0
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* %16) #4
  %18 = sub i64 %17, 1
  %19 = add i64 %18, 2
  %20 = call i8* @strncpy(i8* %14, i8* %15, i64 %19) #5
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i32 0, i32 0
  %22 = call i8* @reverseName(i8* %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8* %23)
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
