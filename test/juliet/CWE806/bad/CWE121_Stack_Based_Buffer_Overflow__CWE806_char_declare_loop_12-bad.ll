; ModuleID = './test/Juliet/CWE806/bad/CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_loop_12-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_loop_12_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [50 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  %7 = call i32 (...) @globalReturnsTrueOrFalse()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 65, i64 99, i1 false)
  %11 = load i8*, i8** %1, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 99
  store i8 0, i8* %12, align 1
  br label %17

13:                                               ; preds = %0
  %14 = load i8*, i8** %1, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 65, i64 49, i1 false)
  %15 = load i8*, i8** %1, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 49
  store i8 0, i8* %16, align 1
  br label %17

17:                                               ; preds = %13, %9
  %18 = bitcast [50 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 50, i1 false)
  %19 = load i8*, i8** %1, align 8
  %20 = call i64 @strlen(i8* %19) #5
  store i64 %20, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %32, %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i8*, i8** %1, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 %30
  store i8 %29, i8* %31, align 1
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %21

35:                                               ; preds = %21
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 49
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %1, align 8
  call void @printLine(i8* %37)
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

declare dso_local void @printLine(i8*) #1

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_loop_12_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local void @srand(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
