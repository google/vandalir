; ModuleID = './test/Juliet/CWE805/good/CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_14-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@globalFive = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_14_good() #0 {
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._twoIntsStruct*, align 8
  %3 = alloca %struct._twoIntsStruct*, align 8
  %4 = alloca [100 x %struct._twoIntsStruct], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, i64 400, align 16
  %8 = bitcast i8* %7 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %8, %struct._twoIntsStruct** %2, align 8
  %9 = alloca i8, i64 800, align 16
  %10 = bitcast i8* %9 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %10, %struct._twoIntsStruct** %3, align 8
  %11 = load i32, i32* @globalFive, align 4
  %12 = icmp ne i32 %11, 5
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %16

14:                                               ; preds = %0
  %15 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  store %struct._twoIntsStruct* %15, %struct._twoIntsStruct** %1, align 8
  br label %16

16:                                               ; preds = %14, %13
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %27, %16
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %18, 100
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %21
  %23 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %24
  %26 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %17

30:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %32, 100
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %35, i64 %36
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %38
  %40 = bitcast %struct._twoIntsStruct* %37 to i8*
  %41 = bitcast %struct._twoIntsStruct* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 8 %41, i64 8, i1 false)
  br label %42

42:                                               ; preds = %34
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %31

45:                                               ; preds = %31
  %46 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %47 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %46, i64 0
  call void @printStructLine(%struct._twoIntsStruct* %47)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._twoIntsStruct*, align 8
  %3 = alloca %struct._twoIntsStruct*, align 8
  %4 = alloca [100 x %struct._twoIntsStruct], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, i64 400, align 16
  %8 = bitcast i8* %7 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %8, %struct._twoIntsStruct** %2, align 8
  %9 = alloca i8, i64 800, align 16
  %10 = bitcast i8* %9 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %10, %struct._twoIntsStruct** %3, align 8
  %11 = load i32, i32* @globalFive, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  store %struct._twoIntsStruct* %14, %struct._twoIntsStruct** %1, align 8
  br label %15

15:                                               ; preds = %13, %0
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %17, 100
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %20
  %22 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %23
  %25 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %16

29:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %41, %29
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %31, 100
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %34, i64 %35
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %37
  %39 = bitcast %struct._twoIntsStruct* %36 to i8*
  %40 = bitcast %struct._twoIntsStruct* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 8 %40, i64 8, i1 false)
  br label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %30

44:                                               ; preds = %30
  %45 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %46 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %45, i64 0
  call void @printStructLine(%struct._twoIntsStruct* %46)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @printStructLine(%struct._twoIntsStruct*) #2

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
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_loop_14_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
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
