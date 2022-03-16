; ModuleID = './test/Juliet/CWE806/good/CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_loop_09-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@GLOBAL_CONST_TRUE = external dso_local constant i32, align 4
@GLOBAL_CONST_FALSE = external dso_local constant i32, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_loop_09_good() #0 {
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [50 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  %7 = load i32, i32* @GLOBAL_CONST_FALSE, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %14

10:                                               ; preds = %0
  %11 = load i8*, i8** %1, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 65, i64 49, i1 false)
  %12 = load i8*, i8** %1, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 49
  store i8 0, i8* %13, align 1
  br label %14

14:                                               ; preds = %10, %9
  %15 = bitcast [50 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 50, i1 false)
  %16 = load i8*, i8** %1, align 8
  %17 = call i64 @strlen(i8* %16) #5
  store i64 %17, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %29, %14
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i8*, i8** %1, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 %27
  store i8 %26, i8* %28, align 1
  br label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %18

32:                                               ; preds = %18
  %33 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 49
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %1, align 8
  call void @printLine(i8* %34)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [50 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  %7 = load i32, i32* @GLOBAL_CONST_TRUE, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 65, i64 49, i1 false)
  %11 = load i8*, i8** %1, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 49
  store i8 0, i8* %12, align 1
  br label %13

13:                                               ; preds = %9, %0
  %14 = bitcast [50 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 50, i1 false)
  %15 = load i8*, i8** %1, align 8
  %16 = call i64 @strlen(i8* %15) #5
  store i64 %16, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %28, %13
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i8*, i8** %1, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 %26
  store i8 %25, i8* %27, align 1
  br label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %17

31:                                               ; preds = %17
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 49
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %1, align 8
  call void @printLine(i8* %33)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #6
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #6
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_loop_09_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local void @srand(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
