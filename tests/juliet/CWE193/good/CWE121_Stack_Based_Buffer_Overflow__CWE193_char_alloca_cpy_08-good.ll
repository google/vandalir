; ModuleID = './test/Juliet/CWE193/good/CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_cpy_08-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.goodG2B2.source = private unnamed_addr constant [11 x i8] c"AAAAAAAAAA\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@__const.goodG2B1.source = private unnamed_addr constant [11 x i8] c"AAAAAAAAAA\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_cpy_08_good() #0 {
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
  %5 = alloca i8, i64 10, align 16
  store i8* %5, i8** %2, align 8
  %6 = alloca i8, i64 11, align 16
  store i8* %6, i8** %3, align 8
  %7 = call i32 @staticReturnsFalse()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %14

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %13, align 1
  br label %14

14:                                               ; preds = %10, %9
  %15 = bitcast [11 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.goodG2B1.source, i32 0, i32 0), i64 11, i1 false)
  %16 = load i8*, i8** %1, align 8
  %17 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %18 = call i8* @strcpy(i8* %16, i8* %17) #4
  %19 = load i8*, i8** %1, align 8
  call void @printLine(i8* %19)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [11 x i8], align 1
  %5 = alloca i8, i64 10, align 16
  store i8* %5, i8** %2, align 8
  %6 = alloca i8, i64 11, align 16
  store i8* %6, i8** %3, align 8
  %7 = call i32 @staticReturnsTrue()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 1
  br label %13

13:                                               ; preds = %9, %0
  %14 = bitcast [11 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.goodG2B2.source, i32 0, i32 0), i64 11, i1 false)
  %15 = load i8*, i8** %1, align 8
  %16 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %17 = call i8* @strcpy(i8* %15, i8* %16) #4
  %18 = load i8*, i8** %1, align 8
  call void @printLine(i8* %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @staticReturnsTrue() #0 {
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

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
  %6 = call i64 @time(i64* null) #4
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #4
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_cpy_08_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
