; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }
%"union.CWE476_NULL_Pointer_Dereference__class_34::unionType" = type { %class.TwoIntsClass* }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_344goodEv() #0 {
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_34L7goodG2BEv()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_34L7goodB2GEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_34L7goodG2BEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %"union.CWE476_NULL_Pointer_Dereference__class_34::unionType", align 8
  %3 = alloca %class.TwoIntsClass*, align 8
  %4 = alloca %class.TwoIntsClass*, align 8
  %5 = call noalias nonnull i8* @_Znwm(i64 8) #6
  %6 = bitcast i8* %5 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %6, %class.TwoIntsClass** %3, align 8
  %7 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %8 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %10 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  store %class.TwoIntsClass* %11, %class.TwoIntsClass** %1, align 8
  %12 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %13 = bitcast %"union.CWE476_NULL_Pointer_Dereference__class_34::unionType"* %2 to %class.TwoIntsClass**
  store %class.TwoIntsClass* %12, %class.TwoIntsClass** %13, align 8
  %14 = bitcast %"union.CWE476_NULL_Pointer_Dereference__class_34::unionType"* %2 to %class.TwoIntsClass**
  %15 = load %class.TwoIntsClass*, %class.TwoIntsClass** %14, align 8
  store %class.TwoIntsClass* %15, %class.TwoIntsClass** %4, align 8
  %16 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %17 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  call void @printIntLine(i32 %18)
  %19 = load %class.TwoIntsClass*, %class.TwoIntsClass** %4, align 8
  %20 = icmp eq %class.TwoIntsClass* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %0
  %22 = bitcast %class.TwoIntsClass* %19 to i8*
  call void @_ZdlPv(i8* %22) #7
  br label %23

23:                                               ; preds = %21, %0
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_34L7goodB2GEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca %"union.CWE476_NULL_Pointer_Dereference__class_34::unionType", align 8
  %3 = alloca %class.TwoIntsClass*, align 8
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  %4 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %5 = bitcast %"union.CWE476_NULL_Pointer_Dereference__class_34::unionType"* %2 to %class.TwoIntsClass**
  store %class.TwoIntsClass* %4, %class.TwoIntsClass** %5, align 8
  %6 = bitcast %"union.CWE476_NULL_Pointer_Dereference__class_34::unionType"* %2 to %class.TwoIntsClass**
  %7 = load %class.TwoIntsClass*, %class.TwoIntsClass** %6, align 8
  store %class.TwoIntsClass* %7, %class.TwoIntsClass** %3, align 8
  %8 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %9 = icmp ne %class.TwoIntsClass* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %12 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  call void @printIntLine(i32 %13)
  %14 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %15 = icmp eq %class.TwoIntsClass* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = bitcast %class.TwoIntsClass* %14 to i8*
  call void @_ZdlPv(i8* %17) #7
  br label %18

18:                                               ; preds = %16, %10
  br label %20

19:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %19, %18
  ret void
}

declare dso_local void @printIntLine(i32) #1

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #2

declare dso_local void @printLine(i8*) #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #3

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
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_344goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { builtin nounwind }
attributes #8 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 11.1.0-6+build1"}
!1 = !{i32 1, !"wchar_size", i32 4}
