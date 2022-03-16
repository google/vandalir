; ModuleID = './test/Juliet/CWE193/bad/CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_34-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_34_unionType = type { i8* }

@__const.CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_34_bad.source = private unnamed_addr constant [11 x i8] c"AAAAAAAAAA\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_34_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_34_unionType, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [11 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, i64 10, align 16
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 11, align 16
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %13, align 1
  %14 = load i8*, i8** %1, align 8
  %15 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_34_unionType* %2 to i8**
  store i8* %14, i8** %15, align 8
  %16 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_34_unionType* %2 to i8**
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = bitcast [11 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_34_bad.source, i32 0, i32 0), i64 11, i1 false)
  %19 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %20 = call i64 @strlen(i8* %19) #5
  store i64 %20, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %33, %0
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, 1
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 %29, i8* %32, align 1
  br label %33

33:                                               ; preds = %26
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %21

36:                                               ; preds = %21
  %37 = load i8*, i8** %5, align 8
  call void @printLine(i8* %37)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_34_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
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
