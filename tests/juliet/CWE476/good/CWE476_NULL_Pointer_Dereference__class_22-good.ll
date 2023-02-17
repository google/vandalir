; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@_ZN41CWE476_NULL_Pointer_Dereference__class_2214goodB2G1GlobalE = dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.1.4 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1
@_ZN41CWE476_NULL_Pointer_Dereference__class_2214goodB2G2GlobalE = dso_local global i32 0, align 4
@_ZN41CWE476_NULL_Pointer_Dereference__class_2214goodG2B1GlobalE = dso_local global i32 0, align 4

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_224goodEv() #0 {
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_22L8goodB2G1Ev()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_22L8goodB2G2Ev()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_22L8goodG2B1Ev()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_22L8goodB2G1Ev() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  store i32 0, i32* @_ZN41CWE476_NULL_Pointer_Dereference__class_2214goodB2G1GlobalE, align 4
  %2 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_2212goodB2G1SinkEP12TwoIntsClass(%class.TwoIntsClass* %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_22L8goodB2G2Ev() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  store i32 1, i32* @_ZN41CWE476_NULL_Pointer_Dereference__class_2214goodB2G2GlobalE, align 4
  %2 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_2212goodB2G2SinkEP12TwoIntsClass(%class.TwoIntsClass* %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_22L8goodG2B1Ev() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %class.TwoIntsClass*, align 8
  %3 = call noalias nonnull i8* @_Znwm(i64 8) #6
  %4 = bitcast i8* %3 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %4, %class.TwoIntsClass** %2, align 8
  %5 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %6 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %8 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  store %class.TwoIntsClass* %9, %class.TwoIntsClass** %1, align 8
  store i32 1, i32* @_ZN41CWE476_NULL_Pointer_Dereference__class_2214goodG2B1GlobalE, align 4
  %10 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_2212goodG2B1SinkEP12TwoIntsClass(%class.TwoIntsClass* %10)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #7
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #7
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_224goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #4

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_2212goodB2G1SinkEP12TwoIntsClass(%class.TwoIntsClass* %0) #0 {
  %2 = alloca %class.TwoIntsClass*, align 8
  store %class.TwoIntsClass* %0, %class.TwoIntsClass** %2, align 8
  %3 = load i32, i32* @_ZN41CWE476_NULL_Pointer_Dereference__class_2214goodB2G1GlobalE, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %20

6:                                                ; preds = %1
  %7 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %8 = icmp ne %class.TwoIntsClass* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %11 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  call void @printIntLine(i32 %12)
  %13 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %14 = icmp eq %class.TwoIntsClass* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = bitcast %class.TwoIntsClass* %13 to i8*
  call void @_ZdlPv(i8* %16) #8
  br label %17

17:                                               ; preds = %15, %9
  br label %19

18:                                               ; preds = %6
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.4, i64 0, i64 0))
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %5
  ret void
}

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #5

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_2212goodB2G2SinkEP12TwoIntsClass(%class.TwoIntsClass* %0) #0 {
  %2 = alloca %class.TwoIntsClass*, align 8
  store %class.TwoIntsClass* %0, %class.TwoIntsClass** %2, align 8
  %3 = load i32, i32* @_ZN41CWE476_NULL_Pointer_Dereference__class_2214goodB2G2GlobalE, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %7 = icmp ne %class.TwoIntsClass* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %10 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  call void @printIntLine(i32 %11)
  %12 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %13 = icmp eq %class.TwoIntsClass* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = bitcast %class.TwoIntsClass* %12 to i8*
  call void @_ZdlPv(i8* %15) #8
  br label %16

16:                                               ; preds = %14, %8
  br label %18

17:                                               ; preds = %5
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.4, i64 0, i64 0))
  br label %18

18:                                               ; preds = %17, %16
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_2212goodG2B1SinkEP12TwoIntsClass(%class.TwoIntsClass* %0) #0 {
  %2 = alloca %class.TwoIntsClass*, align 8
  store %class.TwoIntsClass* %0, %class.TwoIntsClass** %2, align 8
  %3 = load i32, i32* @_ZN41CWE476_NULL_Pointer_Dereference__class_2214goodG2B1GlobalE, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %7 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  call void @printIntLine(i32 %8)
  %9 = load %class.TwoIntsClass*, %class.TwoIntsClass** %2, align 8
  %10 = icmp eq %class.TwoIntsClass* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = bitcast %class.TwoIntsClass* %9 to i8*
  call void @_ZdlPv(i8* %12) #8
  br label %13

13:                                               ; preds = %11, %5
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
