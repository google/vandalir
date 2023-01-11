; ModuleID = './test/Juliet/CWE415/good/CWE415_Double_Free__malloc_free_long_12-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE415_Double_Free__malloc_free_long_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i64*, align 8
  store i64* null, i64** %1, align 8
  %2 = call i32 (...) @globalReturnsTrueOrFalse()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = call noalias i8* @malloc(i64 800) #4
  %6 = bitcast i8* %5 to i64*
  store i64* %6, i64** %1, align 8
  %7 = load i64*, i64** %1, align 8
  %8 = icmp eq i64* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  call void @exit(i32 -1) #5
  unreachable

10:                                               ; preds = %4
  %11 = load i64*, i64** %1, align 8
  %12 = bitcast i64* %11 to i8*
  call void @free(i8* %12) #4
  br label %22

13:                                               ; preds = %0
  %14 = call noalias i8* @malloc(i64 800) #4
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %1, align 8
  %16 = load i64*, i64** %1, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  call void @exit(i32 -1) #5
  unreachable

19:                                               ; preds = %13
  %20 = load i64*, i64** %1, align 8
  %21 = bitcast i64* %20 to i8*
  call void @free(i8* %21) #4
  br label %22

22:                                               ; preds = %19, %10
  %23 = call i32 (...) @globalReturnsTrueOrFalse()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i64*, align 8
  store i64* null, i64** %1, align 8
  %2 = call i32 (...) @globalReturnsTrueOrFalse()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = call noalias i8* @malloc(i64 800) #4
  %6 = bitcast i8* %5 to i64*
  store i64* %6, i64** %1, align 8
  %7 = load i64*, i64** %1, align 8
  %8 = icmp eq i64* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  call void @exit(i32 -1) #5
  unreachable

10:                                               ; preds = %4
  br label %18

11:                                               ; preds = %0
  %12 = call noalias i8* @malloc(i64 800) #4
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %1, align 8
  %14 = load i64*, i64** %1, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  call void @exit(i32 -1) #5
  unreachable

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %10
  %19 = call i32 (...) @globalReturnsTrueOrFalse()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64*, i64** %1, align 8
  %23 = bitcast i64* %22 to i8*
  call void @free(i8* %23) #4
  br label %27

24:                                               ; preds = %18
  %25 = load i64*, i64** %1, align 8
  %26 = bitcast i64* %25 to i8*
  call void @free(i8* %26) #4
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

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
  call void @CWE415_Double_Free__malloc_free_long_12_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

declare dso_local void @printLine(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
