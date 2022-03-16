; ModuleID = './test/Juliet/CWE131/bad/CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_14-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globalFive = external dso_local global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_14_bad() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [10 x i32], align 16
  %3 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %4 = load i32, i32* @globalFive, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = alloca i8, i64 10, align 16
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %1, align 8
  br label %9

9:                                                ; preds = %6, %0
  %10 = bitcast [10 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false)
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %21, %9
  %12 = load i64, i64* %3, align 8
  %13 = icmp ult i64 %12, 10
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %1, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %11

24:                                               ; preds = %11
  %25 = load i32*, i32** %1, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  call void @printIntLine(i32 %27)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @printIntLine(i32) #2

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_14_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
