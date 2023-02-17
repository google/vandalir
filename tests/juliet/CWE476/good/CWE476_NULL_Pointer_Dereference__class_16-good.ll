; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_164goodEv() #0 {
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_16L7goodB2GEv()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_16L7goodG2BEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_16L7goodB2GEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  br label %2

2:                                                ; preds = %0
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  br label %3

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3
  %5 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %6 = icmp ne %class.TwoIntsClass* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %9 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  call void @printIntLine(i32 %10)
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %12 = icmp eq %class.TwoIntsClass* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = bitcast %class.TwoIntsClass* %11 to i8*
  call void @_ZdlPv(i8* %14) #6
  br label %15

15:                                               ; preds = %13, %7
  br label %17

16:                                               ; preds = %4
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %16, %15
  br label %18

18:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_16L7goodG2BEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %class.TwoIntsClass*, align 8
  br label %3

3:                                                ; preds = %0
  %4 = call noalias nonnull i8* @_Znwm(i64 8) #7
  %5 = bitcast i8* %4 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %5, %class.TwoIntsClass** %2, align 8
  %6 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %7 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %9 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  store %class.TwoIntsClass* %10, %class.TwoIntsClass** %1, align 8
  br label %11

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11
  %13 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %14 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  call void @printIntLine(i32 %15)
  %16 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %17 = icmp eq %class.TwoIntsClass* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = bitcast %class.TwoIntsClass* %16 to i8*
  call void @_ZdlPv(i8* %19) #6
  br label %20

20:                                               ; preds = %18, %12
  br label %21

21:                                               ; preds = %20
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #1

declare dso_local void @printIntLine(i32) #2

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #3

declare dso_local void @printLine(i8*) #2

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
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_164goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin nounwind }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
