; ModuleID = './test/Juliet/CWE806/bad/CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_loop_65-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_loop_65_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca void (i8*)*, align 8
  %3 = alloca i8*, align 8
  store void (i8*)* @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_loop_65b_badSink, void (i8*)** %2, align 8
  %4 = alloca i8, i64 100, align 16
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 65, i64 99, i1 false)
  %7 = load i8*, i8** %1, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 99
  store i8 0, i8* %8, align 1
  %9 = load void (i8*)*, void (i8*)** %2, align 8
  %10 = load i8*, i8** %1, align 8
  call void %9(i8* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #5
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #5
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_loop_65_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_loop_65b_badSink(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [50 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = bitcast [50 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 50, i1 false)
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @strlen(i8* %7) #6
  store i64 %8, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i8*, i8** %2, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 %18
  store i8 %17, i8* %19, align 1
  br label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %9

23:                                               ; preds = %9
  %24 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 49
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %2, align 8
  call void @printLine(i8* %25)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
