; ModuleID = './test/Juliet/CWE805/good/CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }
%struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType = type { %struct._twoIntsStruct* }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_good() #0 {
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType, align 8
  %3 = alloca %struct._twoIntsStruct*, align 8
  %4 = alloca %struct._twoIntsStruct*, align 8
  %5 = alloca i8, i64 400, align 16
  %6 = bitcast i8* %5 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %6, %struct._twoIntsStruct** %3, align 8
  %7 = alloca i8, i64 800, align 16
  %8 = bitcast i8* %7 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %8, %struct._twoIntsStruct** %4, align 8
  %9 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %4, align 8
  store %struct._twoIntsStruct* %9, %struct._twoIntsStruct** %1, align 8
  %10 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %11 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType* %2, i32 0, i32 0
  store %struct._twoIntsStruct* %10, %struct._twoIntsStruct** %11, align 8
  %12 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType* %2, i32 0, i32 0
  %13 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %12, align 8
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67b_goodG2BSink(%struct._twoIntsStruct* %13)
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

declare dso_local void @printLine(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67b_goodG2BSink(%struct._twoIntsStruct* %0) #0 {
  %2 = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType, align 8
  %3 = alloca %struct._twoIntsStruct*, align 8
  %4 = alloca [100 x %struct._twoIntsStruct], align 16
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType* %2, i32 0, i32 0
  store %struct._twoIntsStruct* %0, %struct._twoIntsStruct** %6, align 8
  %7 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_67_structType* %2, i32 0, i32 0
  %8 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %7, align 8
  store %struct._twoIntsStruct* %8, %struct._twoIntsStruct** %3, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %10, 100
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %13
  %15 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %16
  %18 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %5, align 8
  br label %9

22:                                               ; preds = %9
  %23 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %24 = bitcast %struct._twoIntsStruct* %23 to i8*
  %25 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 0
  %26 = bitcast %struct._twoIntsStruct* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 16 %26, i64 800, i1 false)
  %27 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %28 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %27, i64 0
  call void @printStructLine(%struct._twoIntsStruct* %28)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @printStructLine(%struct._twoIntsStruct*) #2

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
