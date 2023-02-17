; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }
%union.CWE476_NULL_Pointer_Dereference__struct_34_unionType = type { %struct._twoIntsStruct* }

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE476_NULL_Pointer_Dereference__struct_34_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %struct._twoIntsStruct, align 4
  %3 = alloca %union.CWE476_NULL_Pointer_Dereference__struct_34_unionType, align 8
  %4 = alloca %struct._twoIntsStruct*, align 8
  %5 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1
  store i32 0, i32* %6, align 4
  store %struct._twoIntsStruct* %2, %struct._twoIntsStruct** %1, align 8
  %7 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %8 = bitcast %union.CWE476_NULL_Pointer_Dereference__struct_34_unionType* %3 to %struct._twoIntsStruct**
  store %struct._twoIntsStruct* %7, %struct._twoIntsStruct** %8, align 8
  %9 = bitcast %union.CWE476_NULL_Pointer_Dereference__struct_34_unionType* %3 to %struct._twoIntsStruct**
  %10 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %9, align 8
  store %struct._twoIntsStruct* %10, %struct._twoIntsStruct** %4, align 8
  %11 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %4, align 8
  %12 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  call void @printIntLine(i32 %13)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca %struct._twoIntsStruct*, align 8
  %2 = alloca %union.CWE476_NULL_Pointer_Dereference__struct_34_unionType, align 8
  %3 = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* null, %struct._twoIntsStruct** %1, align 8
  %4 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %1, align 8
  %5 = bitcast %union.CWE476_NULL_Pointer_Dereference__struct_34_unionType* %2 to %struct._twoIntsStruct**
  store %struct._twoIntsStruct* %4, %struct._twoIntsStruct** %5, align 8
  %6 = bitcast %union.CWE476_NULL_Pointer_Dereference__struct_34_unionType* %2 to %struct._twoIntsStruct**
  %7 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %6, align 8
  store %struct._twoIntsStruct* %7, %struct._twoIntsStruct** %3, align 8
  %8 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %9 = icmp ne %struct._twoIntsStruct* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %3, align 8
  %12 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  call void @printIntLine(i32 %13)
  br label %15

14:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %10
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
  call void @CWE476_NULL_Pointer_Dereference__struct_34_good()
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
