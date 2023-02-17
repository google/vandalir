; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TwoIntsClass = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_664goodEv() #0 {
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_66L7goodG2BEv()
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_66L7goodB2GEv()
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_66L7goodG2BEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca [5 x %class.TwoIntsClass*], align 16
  %3 = alloca %class.TwoIntsClass*, align 8
  %4 = call noalias nonnull i8* @_Znwm(i64 8) #6
  %5 = bitcast i8* %4 to %class.TwoIntsClass*
  store %class.TwoIntsClass* %5, %class.TwoIntsClass** %3, align 8
  %6 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %7 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %9 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  store %class.TwoIntsClass* %10, %class.TwoIntsClass** %1, align 8
  %11 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %12 = getelementptr inbounds [5 x %class.TwoIntsClass*], [5 x %class.TwoIntsClass*]* %2, i64 0, i64 2
  store %class.TwoIntsClass* %11, %class.TwoIntsClass** %12, align 16
  %13 = getelementptr inbounds [5 x %class.TwoIntsClass*], [5 x %class.TwoIntsClass*]* %2, i64 0, i64 0
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_6611goodG2BSinkEPP12TwoIntsClass(%class.TwoIntsClass** %13)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN41CWE476_NULL_Pointer_Dereference__class_66L7goodB2GEv() #0 {
  %1 = alloca %class.TwoIntsClass*, align 8
  %2 = alloca [5 x %class.TwoIntsClass*], align 16
  store %class.TwoIntsClass* null, %class.TwoIntsClass** %1, align 8
  %3 = load %class.TwoIntsClass*, %class.TwoIntsClass** %1, align 8
  %4 = getelementptr inbounds [5 x %class.TwoIntsClass*], [5 x %class.TwoIntsClass*]* %2, i64 0, i64 2
  store %class.TwoIntsClass* %3, %class.TwoIntsClass** %4, align 16
  %5 = getelementptr inbounds [5 x %class.TwoIntsClass*], [5 x %class.TwoIntsClass*]* %2, i64 0, i64 0
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_6611goodB2GSinkEPP12TwoIntsClass(%class.TwoIntsClass** %5)
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
  call void @_ZN41CWE476_NULL_Pointer_Dereference__class_664goodEv()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #4

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_6611goodG2BSinkEPP12TwoIntsClass(%class.TwoIntsClass** %0) #0 {
  %2 = alloca %class.TwoIntsClass**, align 8
  %3 = alloca %class.TwoIntsClass*, align 8
  store %class.TwoIntsClass** %0, %class.TwoIntsClass*** %2, align 8
  %4 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %2, align 8
  %5 = getelementptr inbounds %class.TwoIntsClass*, %class.TwoIntsClass** %4, i64 2
  %6 = load %class.TwoIntsClass*, %class.TwoIntsClass** %5, align 8
  store %class.TwoIntsClass* %6, %class.TwoIntsClass** %3, align 8
  %7 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %8 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  call void @printIntLine(i32 %9)
  %10 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %11 = icmp eq %class.TwoIntsClass* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = bitcast %class.TwoIntsClass* %10 to i8*
  call void @_ZdlPv(i8* %13) #8
  br label %14

14:                                               ; preds = %12, %1
  ret void
}

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #5

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN41CWE476_NULL_Pointer_Dereference__class_6611goodB2GSinkEPP12TwoIntsClass(%class.TwoIntsClass** %0) #0 {
  %2 = alloca %class.TwoIntsClass**, align 8
  %3 = alloca %class.TwoIntsClass*, align 8
  store %class.TwoIntsClass** %0, %class.TwoIntsClass*** %2, align 8
  %4 = load %class.TwoIntsClass**, %class.TwoIntsClass*** %2, align 8
  %5 = getelementptr inbounds %class.TwoIntsClass*, %class.TwoIntsClass** %4, i64 2
  %6 = load %class.TwoIntsClass*, %class.TwoIntsClass** %5, align 8
  store %class.TwoIntsClass* %6, %class.TwoIntsClass** %3, align 8
  %7 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %8 = icmp ne %class.TwoIntsClass* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %11 = getelementptr inbounds %class.TwoIntsClass, %class.TwoIntsClass* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  call void @printIntLine(i32 %12)
  %13 = load %class.TwoIntsClass*, %class.TwoIntsClass** %3, align 8
  %14 = icmp eq %class.TwoIntsClass* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = bitcast %class.TwoIntsClass* %13 to i8*
  call void @_ZdlPv(i8* %16) #8
  br label %17

17:                                               ; preds = %15, %9
  br label %19

18:                                               ; preds = %1
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %19

19:                                               ; preds = %18, %17
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
