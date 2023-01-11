; ModuleID = './test/Juliet/CWE806/good/CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_loop_21-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@goodG2B2Static = internal global i32 0, align 4
@goodG2B1Static = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_loop_21_good() #0 {
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
  store i32 0, i32* @goodG2B1Static, align 4
  %7 = load i8*, i8** %1, align 8
  %8 = call i8* @goodG2B1Source(i8* %7)
  store i8* %8, i8** %1, align 8
  %9 = bitcast [50 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 50, i1 false)
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10) #5
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %23, %0
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i8*, i8** %1, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 %21
  store i8 %20, i8* %22, align 1
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  br label %12

26:                                               ; preds = %12
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 49
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %1, align 8
  call void @printLine(i8* %28)
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
  store i32 1, i32* @goodG2B2Static, align 4
  %7 = load i8*, i8** %1, align 8
  %8 = call i8* @goodG2B2Source(i8* %7)
  store i8* %8, i8** %1, align 8
  %9 = bitcast [50 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 50, i1 false)
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10) #5
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %23, %0
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i8*, i8** %1, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 %21
  store i8 %20, i8* %22, align 1
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  br label %12

26:                                               ; preds = %12
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 49
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %1, align 8
  call void @printLine(i8* %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @goodG2B2Source(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @goodG2B2Static, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 65, i64 49, i1 false)
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 49
  store i8 0, i8* %8, align 1
  br label %9

9:                                                ; preds = %5, %1
  %10 = load i8*, i8** %2, align 8
  ret i8* %10
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @goodG2B1Source(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @goodG2B1Static, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %10

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 65, i64 49, i1 false)
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 49
  store i8 0, i8* %9, align 1
  br label %10

10:                                               ; preds = %6, %5
  %11 = load i8*, i8** %2, align 8
  ret i8* %11
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_loop_21_good()
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
