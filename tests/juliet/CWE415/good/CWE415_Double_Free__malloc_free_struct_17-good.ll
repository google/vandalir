; ModuleID = './test/Juliet/CWE415/good/CWE415_Double_Free__malloc_free_struct_17-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE415_Double_Free__malloc_free_struct_17_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* null, %struct._twoIntsStruct** %3, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %16, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = call noalias i8* @malloc(i64 800) #4
  %9 = bitcast i8* %8 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %9, %struct._twoIntsStruct** %3, align 8
  %10 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %11 = icmp eq %struct._twoIntsStruct* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @exit(i32 -1) #5
  unreachable

13:                                               ; preds = %7
  %14 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %15 = bitcast %struct._twoIntsStruct* %14 to i8*
  call void @free(i8* %15) #4
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %4

19:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %20

27:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* null, %struct._twoIntsStruct** %3, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = call noalias i8* @malloc(i64 800) #4
  %9 = bitcast i8* %8 to %struct._twoIntsStruct*
  store %struct._twoIntsStruct* %9, %struct._twoIntsStruct** %3, align 8
  %10 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %11 = icmp eq %struct._twoIntsStruct* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @exit(i32 -1) #5
  unreachable

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %4

17:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %24, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %23 = bitcast %struct._twoIntsStruct* %22 to i8*
  call void @free(i8* %23) #4
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %18

27:                                               ; preds = %18
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

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
  call void @CWE415_Double_Free__malloc_free_struct_17_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

declare dso_local void @printLine(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
