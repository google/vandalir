; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_123badEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %class.TwoIntsClass*, align 8
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  br label %14

6:                                                ; preds = %0
  %7 = call noalias nonnull i8* @_Znwm(i64 8) #6
  %8 = bitcast i8* %7 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %8, %class.TwoIntsClass** %2, align 8
  %9 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %10 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %12 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  store %class.TwoIntsClass* %13, %class.TwoIntsClass** %1, align 8
  br label %14

14:                                               ; preds = %6, %5
  %15 = call i32 @globalReturnsTrueOrFalse()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %19 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  call void @printIntLine(i32 %20)
  %21 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %22 = icmp eq %class.TwoIntsClass* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = bitcast %class.TwoIntsClass* %21 to i8*
  call void @_ZdlPv(i8* %24) #7
  br label %25

25:                                               ; preds = %23, %17
  br label %40

26:                                               ; preds = %14
  %27 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %28 = icmp ne %class.TwoIntsClass* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %31 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  call void @printIntLine(i32 %32)
  %33 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %34 = icmp eq %class.TwoIntsClass* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = bitcast %class.TwoIntsClass* %33 to i8*
  call void @_ZdlPv(i8* %36) #7
  br label %37

37:                                               ; preds = %35, %29
  br label %39

38:                                               ; preds = %26
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %25
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse() #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #2

declare dso_local void @printIntLine(i32) #1

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #3

declare dso_local void @printLine(i8*) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #8
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #8
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_123badEv()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { builtin nounwind }
attributes #8 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
