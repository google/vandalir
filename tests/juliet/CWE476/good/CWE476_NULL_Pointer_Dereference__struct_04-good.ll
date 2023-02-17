; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE476_NULL_Pointer_Dereference__struct_04_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* null, %struct._twoIntsStruct** %1, align 8
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %3 = icmp ne %struct._twoIntsStruct* %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %6 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  call void @printIntLine(i32 %7)
  br label %9

8:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* null, %struct._twoIntsStruct** %1, align 8
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %3 = icmp ne %struct._twoIntsStruct* %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %6 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  call void @printIntLine(i32 %7)
  br label %9

8:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._twoIntsStruct, align 4
  %3 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 0
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1
  store i32 0, i32* %4, align 4
  store %struct._twoIntsStruct* %2, %struct._twoIntsStruct** %1, align 8
  %5 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %6 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  call void @printIntLine(i32 %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._twoIntsStruct, align 4
  %3 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 0
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1
  store i32 0, i32* %4, align 4
  store %struct._twoIntsStruct* %2, %struct._twoIntsStruct** %1, align 8
  %5 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %6 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  call void @printIntLine(i32 %7)
  ret void
}

declare dso_local void @printIntLine(i32) #1

declare dso_local void @printLine(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #3
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #3
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE476_NULL_Pointer_Dereference__struct_04_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
