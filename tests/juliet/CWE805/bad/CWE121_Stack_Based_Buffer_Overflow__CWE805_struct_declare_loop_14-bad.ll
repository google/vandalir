; ModuleID = './test/Juliet/CWE805/bad/CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_14-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@globalFive = external dso_local global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_14_bad() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca [50 x %struct._twoIntsStruct], align 16
  %3 = alloca [100 x %struct._twoIntsStruct], align 16
  %4 = alloca [100 x %struct._twoIntsStruct], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @globalFive, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = getelementptr inbounds [50 x %struct._twoIntsStruct], [50 x %struct._twoIntsStruct]* %2, i64 0, i64 0
  store %struct._twoIntsStruct* %10, %struct._twoIntsStruct** %1, align 8
  br label %11

11:                                               ; preds = %9, %0
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %22, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %13, 100
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %16
  %18 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %19
  %21 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %12

25:                                               ; preds = %12
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %27, 100
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %30, i64 %31
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %33
  %35 = bitcast %struct._twoIntsStruct* %32 to i8*
  %36 = bitcast %struct._twoIntsStruct* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 8 %36, i64 8, i1 false)
  br label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %26

40:                                               ; preds = %26
  %41 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %42 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %41, i64 0
  call void @printStructLine(%struct._twoIntsStruct* %42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @printStructLine(%struct._twoIntsStruct*) #2

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_14_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #2

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
