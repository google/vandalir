; ModuleID = './test/Juliet/CWE131/bad/CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_bad() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType, align 8
  store i32* null, i32** %1, align 8
  %3 = alloca i8, i64 10, align 16
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType* %2, i32 0, i32 0
  store i32* %5, i32** %6, align 8
  %7 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType* %2, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67b_badSink(i32* %8)
  ret void
}

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

declare dso_local void @printLine(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67b_badSink(i32* %0) #0 {
  %2 = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [10 x i32], align 16
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType* %2, i32 0, i32 0
  store i32* %0, i32** %6, align 8
  %7 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_67_structType* %2, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = bitcast [10 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false)
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %11, 10
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %16, i32* %19, align 4
  br label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %5, align 8
  br label %10

23:                                               ; preds = %10
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  call void @printIntLine(i32 %26)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @printIntLine(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
