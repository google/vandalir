; ModuleID = './test/Juliet/CWE805/good/CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_12-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_12_good() #0 {
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca [50 x %struct._twoIntsStruct], align 16
  %3 = alloca [100 x %struct._twoIntsStruct], align 16
  %4 = alloca [100 x %struct._twoIntsStruct], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = call i32 (...) @globalReturnsTrueOrFalse()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %3, i64 0, i64 0
  store %struct._twoIntsStruct* %10, %struct._twoIntsStruct** %1, align 8
  br label %13

11:                                               ; preds = %0
  %12 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %3, i64 0, i64 0
  store %struct._twoIntsStruct* %12, %struct._twoIntsStruct** %1, align 8
  br label %13

13:                                               ; preds = %11, %9
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %15, 100
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %18
  %20 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %21
  %23 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %14

27:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %29, 100
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %32, i64 %33
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds [100 x %struct._twoIntsStruct], [100 x %struct._twoIntsStruct]* %4, i64 0, i64 %35
  %37 = bitcast %struct._twoIntsStruct* %34 to i8*
  %38 = bitcast %struct._twoIntsStruct* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 8 %38, i64 8, i1 false)
  br label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %28

42:                                               ; preds = %28
  %43 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %44 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %43, i64 0
  call void @printStructLine(%struct._twoIntsStruct* %44)
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @printStructLine(%struct._twoIntsStruct*) #1

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_12_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #1

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
