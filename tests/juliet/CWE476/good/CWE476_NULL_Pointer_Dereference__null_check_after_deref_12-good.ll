; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE476_NULL_Pointer_Dereference__null_check_after_deref_12_good() #0 {
  call void @good1()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @good1() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 (...) @globalReturnsTrueOrFalse()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %14

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
  br label %23

14:                                               ; preds = %0
  store i32* null, i32** %2, align 8
  %15 = call noalias i8* @malloc(i64 4) #3
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  store i32 5, i32* %17, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %18, align 4
  call void @printIntLine(i32 %19)
  %20 = load i32*, i32** %2, align 8
  store i32 10, i32* %20, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %21, align 4
  call void @printIntLine(i32 %22)
  br label %23

23:                                               ; preds = %14, %5
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local void @printIntLine(i32) #1

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
  call void @CWE476_NULL_Pointer_Dereference__null_check_after_deref_12_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

declare dso_local void @printLine(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
