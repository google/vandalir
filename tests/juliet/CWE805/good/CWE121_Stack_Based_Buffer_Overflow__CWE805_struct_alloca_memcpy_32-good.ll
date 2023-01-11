; ModuleID = './test/Juliet/CWE805/good/CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_32-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_32_good() #0 {
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._twoIntsStruct**, align 8
  %3 = alloca %struct._twoIntsStruct**, align 8
  %4 = alloca %struct._twoIntsStruct*, align 8
  %5 = alloca %struct._twoIntsStruct*, align 8
  %6 = alloca %struct._twoIntsStruct*, align 8
  %7 = alloca %struct._twoIntsStruct*, align 8
  %8 = alloca [100 x %struct._twoIntsStruct], align 16
  %9 = alloca i64, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %2, align 8
  store %struct._twoIntsStruct** %1, %struct._twoIntsStruct*** %3, align 8
  %10 = alloca i8, i64 400, align 16
  %11 = bitcast i8* %10 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %11, %struct._twoIntsStruct** %4, align 8
  %12 = alloca i8, i64 800, align 16
  %13 = bitcast i8* %12 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %13, %struct._twoIntsStruct** %5, align 8
  %14 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %2, align 8
  %15 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %14, align 8
  store %struct._twoIntsStruct* %15, %struct._twoIntsStruct** %6, align 8
  %16 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %5, align 8
  store %struct._twoIntsStruct* %16, %struct._twoIntsStruct** %6, align 8
  %17 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %6, align 8
  %18 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %2, align 8
  store %struct._twoIntsStruct* %17, %struct._twoIntsStruct** %18, align 8
  %19 = load %struct._twoIntsStruct**, %struct._twoIntsStruct*** %3, align 8
  %20 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %19, align 8
  store %struct._twoIntsStruct* %20, %struct._twoIntsStruct** %7, align 8
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %31, %0
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %22, 100
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %8, i64 0, i64 %25
  %27 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %8, i64 0, i64 %28
  %30 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %9, align 8
  br label %21

34:                                               ; preds = %21
  %35 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %7, align 8
  %36 = bitcast %struct._twoIntsStruct* %35 to i8*
  %37 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %8, i64 0, i64 0
  %38 = bitcast %struct._twoIntsStruct* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 16 %38, i64 800, i1 false)
  %39 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %7, align 8
  %40 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %39, i64 0
  call void @printStructLine(%struct._twoIntsStruct* %40)
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
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_32_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
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
