; ModuleID = './test/Juliet/CWE805/bad/CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_03-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_03_bad() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca [50 x %struct._twoIntsStruct], align 16
  %3 = alloca [100 x %struct._twoIntsStruct], align 16
  %4 = alloca [100 x %struct._twoIntsStruct], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds [50 x %struct._twoIntsStruct], [50 x %struct._twoIntsStruct]* %2, i64 0, i64 0
  store %struct._twoIntsStruct* %7, %struct._twoIntsStruct** %1, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %9, 100
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %12
  %14 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %15
  %17 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %5, align 8
  br label %8

21:                                               ; preds = %8
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %33, %21
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %23, 100
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %26, i64 %27
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %29
  %31 = bitcast %struct._twoIntsStruct* %28 to i8*
  %32 = bitcast %struct._twoIntsStruct* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 8 %32, i64 8, i1 false)
  br label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %22

36:                                               ; preds = %22
  %37 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %38 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %37, i64 0
  call void @printStructLine(%struct._twoIntsStruct* %38)
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_03_bad()
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
