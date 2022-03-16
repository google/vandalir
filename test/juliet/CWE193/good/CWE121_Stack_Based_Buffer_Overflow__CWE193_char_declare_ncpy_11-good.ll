; ModuleID = './test/Juliet/CWE193/good/CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_ncpy_11-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.goodG2B2.source = private unnamed_addr constant [11 x i8] c"AAAAAAAAAA\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@__const.goodG2B1.source = private unnamed_addr constant [11 x i8] c"AAAAAAAAAA\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_ncpy_11_good() #0 {
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [10 x i8], align 1
  %3 = alloca [11 x i8], align 1
  %4 = alloca [11 x i8], align 1
  %5 = call i32 (...) @globalReturnsFalse()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %12

8:                                                ; preds = %0
  %9 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %11, align 1
  br label %12

12:                                               ; preds = %8, %7
  %13 = bitcast [11 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.goodG2B1.source, i32 0, i32 0), i64 11, i1 false)
  %14 = load i8*, i8** %1, align 8
  %15 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %17 = call i64 @strlen(i8* %16) #5
  %18 = add i64 %17, 1
  %19 = call i8* @strncpy(i8* %14, i8* %15, i64 %18) #6
  %20 = load i8*, i8** %1, align 8
  call void @printLine(i8* %20)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [10 x i8], align 1
  %3 = alloca [11 x i8], align 1
  %4 = alloca [11 x i8], align 1
  %5 = call i32 (...) @globalReturnsTrue()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %10, align 1
  br label %11

11:                                               ; preds = %7, %0
  %12 = bitcast [11 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.goodG2B2.source, i32 0, i32 0), i64 11, i1 false)
  %13 = load i8*, i8** %1, align 8
  %14 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %16 = call i64 @strlen(i8* %15) #5
  %17 = add i64 %16, 1
  %18 = call i8* @strncpy(i8* %13, i8* %14, i64 %17) #6
  %19 = load i8*, i8** %1, align 8
  call void @printLine(i8* %19)
  ret void
}

declare dso_local i32 @globalReturnsTrue(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #4

declare dso_local void @printLine(i8*) #1

declare dso_local i32 @globalReturnsFalse(...) #1

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_ncpy_11_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
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
