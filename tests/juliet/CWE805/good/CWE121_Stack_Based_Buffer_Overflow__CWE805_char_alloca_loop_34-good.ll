; ModuleID = './test/Juliet/CWE805/good/CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_loop_34-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_loop_34_unionType = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_loop_34_good() #0 {
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_loop_34_unionType, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca i8, i64 50, align 16
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 100, align 16
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %1, align 8
  %14 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_loop_34_unionType* %2 to i8**
  store i8* %13, i8** %14, align 8
  %15 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_loop_34_unionType* %2 to i8**
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 67, i64 99, i1 false)
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 99
  store i8 0, i8* %18, align 1
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %29, %0
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %20, 100
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %25, i8* %28, align 1
  br label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %19

32:                                               ; preds = %19
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 99
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %5, align 8
  call void @printLine(i8* %35)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @printLine(i8*) #2

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
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_loop_34_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

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
