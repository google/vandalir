; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"intOne == 5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE476_NULL_Pointer_Dereference__binary_if_12_good() #0 {
  call void @good1()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @good1() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._twoIntsStruct*, align 8
  %3 = call i32 (...) @globalReturnsTrueOrFalse()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  store %struct._twoIntsStruct* null, %struct._twoIntsStruct** %1, align 8
  %6 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %7 = icmp ne %struct._twoIntsStruct* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %10 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @printLine(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %13, %8, %5
  br label %25

15:                                               ; preds = %0
  store %struct._twoIntsStruct* null, %struct._twoIntsStruct** %2, align 8
  %16 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %17 = icmp ne %struct._twoIntsStruct* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %20 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  call void @printLine(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %23, %18, %15
  br label %25

25:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

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
  call void @CWE476_NULL_Pointer_Dereference__binary_if_12_good()
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
