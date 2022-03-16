; ModuleID = './test/Juliet/CWE805/bad/CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_32-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_32_bad() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._twoIntsStruct**, align 8
  %3 = alloca %struct._twoIntsStruct**, align 8
  %4 = alloca %struct._twoIntsStruct*, align 8
  %5 = alloca %struct._twoIntsStruct*, align 8
  %6 = alloca %struct._twoIntsStruct*, align 8
  %7 = alloca %struct._twoIntsStruct*, align 8
  %8 = alloca [100 x %struct._twoIntsStruct], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %2, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %3, align 8
  %11 = alloca i8, i64 400, align 16
  %12 = bitcast i8* %11 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %12, %struct._twoIntsStruct** %4, align 8
  %13 = alloca i8, i64 800, align 16
  %14 = bitcast i8* %13 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %14, %struct._twoIntsStruct** %5, align 8
  %15 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %2, align 8
  %16 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %15, align 8
  store %struct._twoIntsStruct* %16, %struct._twoIntsStruct** %6, align 8
  %17 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %4, align 8
  store %struct._twoIntsStruct* %17, %struct._twoIntsStruct** %6, align 8
  %18 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %6, align 8
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %2, align 8
  store %struct._twoIntsStruct* %18, %struct._twoIntsStruct** %19, align 8
  %20 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %3, align 8
  %21 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %20, align 8
  store %struct._twoIntsStruct* %21, %struct._twoIntsStruct** %7, align 8
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %32, %0
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 100
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %8, i64 0, i64 %26
  %28 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %8, i64 0, i64 %29
  %31 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %22

35:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i64, i64* %10, align 8
  %38 = icmp ult i64 %37, 100
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %7, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %40, i64 %41
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %8, i64 0, i64 %43
  %45 = bitcast %struct._twoIntsStruct* %42 to i8*
  %46 = bitcast %struct._twoIntsStruct* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 8 %46, i64 8, i1 false)
  br label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %36

50:                                               ; preds = %36
  %51 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %7, align 8
  %52 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %51, i64 0
  call void @printStructLine(%struct._twoIntsStruct* %52)
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_32_bad()
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
