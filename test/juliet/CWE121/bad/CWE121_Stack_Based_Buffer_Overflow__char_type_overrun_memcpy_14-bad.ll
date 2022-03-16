; ModuleID = './test/Juliet/CWE121/bad/CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memcpy_14-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._charVoid = type { [16 x i8], i8*, i8* }

@globalFive = external dso_local global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"0123456789abcdef0123456789abcde\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memcpy_14_bad() #0 {
  %1 = alloca %struct._charVoid, align 8
  %2 = load i32, i32* @globalFive, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct._charVoid, %struct._charVoid* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr inbounds %struct._charVoid, %struct._charVoid* %1, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  call void @printLine(i8* %7)
  %8 = getelementptr inbounds %struct._charVoid, %struct._charVoid* %1, i32 0, i32 0
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 32, i1 false)
  %10 = getelementptr inbounds %struct._charVoid, %struct._charVoid* %1, i32 0, i32 0
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 15
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds %struct._charVoid, %struct._charVoid* %1, i32 0, i32 0
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  call void @printLine(i8* %13)
  %14 = getelementptr inbounds %struct._charVoid, %struct._charVoid* %1, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  call void @printLine(i8* %15)
  br label %16

16:                                               ; preds = %4, %0
  ret void
}

declare dso_local void @printLine(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memcpy_14_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
