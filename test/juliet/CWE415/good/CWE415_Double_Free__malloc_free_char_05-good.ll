; ModuleID = './test/Juliet/CWE415/good/CWE415_Double_Free__malloc_free_char_05-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@staticTrue = internal global i32 1, align 4
@staticFalse = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE415_Double_Free__malloc_free_char_05_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %2 = load i32, i32* @staticTrue, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = call noalias i8* @malloc(i64 100) #4
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @exit(i32 -1) #5
  unreachable

9:                                                ; preds = %4
  %10 = load i8*, i8** %1, align 8
  call void @free(i8* %10) #4
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* @staticFalse, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %16

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %2 = load i32, i32* @staticTrue, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = call noalias i8* @malloc(i64 100) #4
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @exit(i32 -1) #5
  unreachable

9:                                                ; preds = %4
  %10 = load i8*, i8** %1, align 8
  call void @free(i8* %10) #4
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* @staticTrue, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %2 = load i32, i32* @staticFalse, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %11

5:                                                ; preds = %0
  %6 = call noalias i8* @malloc(i64 100) #4
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @exit(i32 -1) #5
  unreachable

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10, %4
  %12 = load i32, i32* @staticTrue, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i8*, i8** %1, align 8
  call void @free(i8* %15) #4
  br label %16

16:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %2 = load i32, i32* @staticTrue, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = call noalias i8* @malloc(i64 100) #4
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @exit(i32 -1) #5
  unreachable

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %0
  %11 = load i32, i32* @staticTrue, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i8*, i8** %1, align 8
  call void @free(i8* %14) #4
  br label %15

15:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

declare dso_local void @printLine(i8*) #3

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
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE415_Double_Free__malloc_free_char_05_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
