; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@CWE476_NULL_Pointer_Dereference__long_45_goodG2BData = internal global i64* null, align 8
@CWE476_NULL_Pointer_Dereference__long_45_goodB2GData = internal global i64* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE476_NULL_Pointer_Dereference__long_45_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  store i64 5, i64* %2, align 8
  store i64* %2, i64** %1, align 8
  %3 = load i64*, i64** %1, align 8
  store i64* %3, i64** @CWE476_NULL_Pointer_Dereference__long_45_goodG2BData, align 8
  call void @goodG2BSink()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i64*, align 8
  store i64* null, i64** %1, align 8
  %2 = load i64*, i64** %1, align 8
  store i64* %2, i64** @CWE476_NULL_Pointer_Dereference__long_45_goodB2GData, align 8
  call void @goodB2GSink()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2GSink() #0 {
  %1 = alloca i64*, align 8
  %2 = load i64*, i64** @CWE476_NULL_Pointer_Dereference__long_45_goodB2GData, align 8
  store i64* %2, i64** %1, align 8
  %3 = load i64*, i64** %1, align 8
  %4 = icmp ne i64* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64*, i64** %1, align 8
  %7 = load i64, i64* %6, align 8
  call void @printLongLine(i64 %7)
  br label %9

8:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

declare dso_local void @printLongLine(i64) #1

declare dso_local void @printLine(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2BSink() #0 {
  %1 = alloca i64*, align 8
  %2 = load i64*, i64** @CWE476_NULL_Pointer_Dereference__long_45_goodG2BData, align 8
  store i64* %2, i64** %1, align 8
  %3 = load i64*, i64** %1, align 8
  %4 = load i64, i64* %3, align 8
  call void @printLongLine(i64 %4)
  ret void
}

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
  call void @CWE476_NULL_Pointer_Dereference__long_45_good()
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
