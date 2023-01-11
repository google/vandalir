; ModuleID = './test/Juliet/CWE121/good/CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cat_68-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cat_68_goodG2BData = internal global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cat_68_badData = internal global [8 x i8] zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cat_68_good() #0 {
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, i64 50, align 16
  store i8* %4, i8** %2, align 8
  %5 = alloca i8, i64 100, align 16
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %8, align 1
  %9 = load i8*, i8** %1, align 8
  store i8* %9, i8** @CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cat_68_goodG2BData, align 8
  call void (...) bitcast (void ()* @CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cat_68b_goodG2BSink to void (...)*)()
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
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cat_68_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

declare dso_local void @printLine(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cat_68b_goodG2BSink() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = load i8*, i8** @CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cat_68_goodG2BData, align 8
  store i8* %3, i8** %1, align 8
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 67, i64 99, i1 false)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 99
  store i8 0, i8* %5, align 1
  %6 = load i8*, i8** %1, align 8
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %8 = call i8* @strcat(i8* %6, i8* %7) #4
  %9 = load i8*, i8** %1, align 8
  call void @printLine(i8* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

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
