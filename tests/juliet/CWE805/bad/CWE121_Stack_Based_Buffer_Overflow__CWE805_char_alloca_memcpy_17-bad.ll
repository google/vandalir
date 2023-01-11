; ModuleID = './test/Juliet/CWE805/bad/CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_memcpy_17-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_memcpy_17_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca i8, i64 50, align 16
  store i8* %6, i8** %3, align 8
  %7 = alloca i8, i64 100, align 16
  store i8* %7, i8** %4, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %15, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %8

18:                                               ; preds = %8
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 67, i64 99, i1 false)
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 99
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 16 %22, i64 100, i1 false)
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 99
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %2, align 8
  call void @printLine(i8* %25)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_memcpy_17_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
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
