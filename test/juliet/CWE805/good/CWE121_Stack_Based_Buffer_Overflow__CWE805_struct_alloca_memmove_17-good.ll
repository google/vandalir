; ModuleID = './test/Juliet/CWE805/good/CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memmove_17-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memmove_17_good() #0 {
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
  %7 = alloca i8, i64 400, align 16
  %8 = bitcast i8* %7 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %8, %struct._twoIntsStruct** %3, align 8
  %9 = alloca i8, i64 800, align 16
  %10 = bitcast i8* %9 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %10, %struct._twoIntsStruct** %4, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %16, %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %4, align 8
  store %struct._twoIntsStruct* %15, %struct._twoIntsStruct** %2, align 8
  br label %16

16:                                               ; preds = %14
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %11

19:                                               ; preds = %11
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %21, 100
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %5, i64 0, i64 %24
  %26 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %5, i64 0, i64 %27
  %29 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %20

33:                                               ; preds = %20
  %34 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %35 = bitcast %struct._twoIntsStruct* %34 to i8*
  %36 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %5, i64 0, i64 0
  %37 = bitcast %struct._twoIntsStruct* %36 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %35, i8* align 16 %37, i64 800, i1 false)
  %38 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %39 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %38, i64 0
  call void @printStructLine(%struct._twoIntsStruct* %39)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #1

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memmove_17_good()
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
