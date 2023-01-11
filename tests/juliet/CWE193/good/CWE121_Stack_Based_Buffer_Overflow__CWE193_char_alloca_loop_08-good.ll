; ModuleID = './test/Juliet/CWE193/good/CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_08-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.goodG2B2.source = private unnamed_addr constant [11 x i8] c"AAAAAAAAAA\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@__const.goodG2B1.source = private unnamed_addr constant [11 x i8] c"AAAAAAAAAA\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_08_good() #0 {
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [11 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, i64 10, align 16
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 11, align 16
  store i8* %8, i8** %3, align 8
  %9 = call i32 @staticReturnsFalse()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %16

12:                                               ; preds = %0
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  br label %16

16:                                               ; preds = %12, %11
  %17 = bitcast [11 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.goodG2B1.source, i32 0, i32 0), i64 11, i1 false)
  %18 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %19 = call i64 @strlen(i8* %18) #5
  store i64 %19, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %32, %16
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 1
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %1, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 %28, i8* %31, align 1
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %20

35:                                               ; preds = %20
  %36 = load i8*, i8** %1, align 8
  call void @printLine(i8* %36)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [11 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, i64 10, align 16
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 11, align 16
  store i8* %8, i8** %3, align 8
  %9 = call i32 @staticReturnsTrue()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** %1, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %11, %0
  %16 = bitcast [11 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.goodG2B2.source, i32 0, i32 0), i64 11, i1 false)
  %17 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %18 = call i64 @strlen(i8* %17) #5
  store i64 %18, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %31, %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %1, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 %27, i8* %30, align 1
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %19

34:                                               ; preds = %19
  %35 = load i8*, i8** %1, align 8
  call void @printLine(i8* %35)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @staticReturnsTrue() #0 {
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @staticReturnsFalse() #0 {
  ret i32 0
}

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_08_good()
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
