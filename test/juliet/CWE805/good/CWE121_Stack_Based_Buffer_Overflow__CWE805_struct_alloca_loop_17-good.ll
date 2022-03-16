; ModuleID = './test/Juliet/CWE805/good/CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_17-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_17_good() #0 {
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._twoIntsStruct*, align 8
  %3 = alloca %struct._twoIntsStruct*, align 8
  %4 = alloca %struct._twoIntsStruct*, align 8
  %5 = alloca [100 x %struct._twoIntsStruct], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, i64 400, align 16
  %9 = bitcast i8* %8 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %9, %struct._twoIntsStruct** %3, align 8
  %10 = alloca i8, i64 800, align 16
  %11 = bitcast i8* %10 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %11, %struct._twoIntsStruct** %4, align 8
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %17, %0
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %4, align 8
  store %struct._twoIntsStruct* %16, %struct._twoIntsStruct** %2, align 8
  br label %17

17:                                               ; preds = %15
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %12

20:                                               ; preds = %12
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %22, 100
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %5, i64 0, i64 %25
  %27 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %5, i64 0, i64 %28
  %30 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %21

34:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %46, %34
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %36, 100
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %39, i64 %40
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %5, i64 0, i64 %42
  %44 = bitcast %struct._twoIntsStruct* %41 to i8*
  %45 = bitcast %struct._twoIntsStruct* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 8 %45, i64 8, i1 false)
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %35

49:                                               ; preds = %35
  %50 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %51 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %50, i64 0
  call void @printStructLine(%struct._twoIntsStruct* %51)
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_17_good()
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
