; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE476_NULL_Pointer_Dereference__null_check_after_deref_11_good() #0 {
  call void @good1()
  call void @good2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @good1() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @globalReturnsFalse()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %14

5:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  %6 = call noalias i8* @malloc(i64 4) #3
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  store i32 5, i32* %8, align 4
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* %9, align 4
  call void @printIntLine(i32 %10)
  %11 = load i32*, i32** %1, align 8
  store i32 10, i32* %11, align 4
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* %12, align 4
  call void @printIntLine(i32 %13)
  br label %14

14:                                               ; preds = %5, %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @good2() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @globalReturnsTrue()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  %5 = call noalias i8* @malloc(i64 4) #3
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  store i32 5, i32* %7, align 4
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* %8, align 4
  call void @printIntLine(i32 %9)
  %10 = load i32*, i32** %1, align 8
  store i32 10, i32* %10, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* %11, align 4
  call void @printIntLine(i32 %12)
  br label %13

13:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @globalReturnsTrue(...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local void @printIntLine(i32) #1

declare dso_local i32 @globalReturnsFalse(...) #1

declare dso_local void @printLine(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #3
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #3
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE476_NULL_Pointer_Dereference__null_check_after_deref_11_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
