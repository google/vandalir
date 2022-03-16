; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_31-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_31_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 7, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %3, align 4
  %8 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false)
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %0
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %13
  store i32 1, i32* %14, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %23, %11
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  call void @printIntLine(i32 %22)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %15

26:                                               ; preds = %15
  br label %28

27:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [14 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  br label %11

11:                                               ; preds = %0
  %12 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %56

16:                                               ; preds = %11
  %17 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %18, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %21, i16* %22, align 2
  %23 = load i32, i32* %4, align 4
  %24 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %25 = call i32 @bind(i32 %23, %struct.sockaddr* %24, i32 16) #6
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %56

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @listen(i32 %29, i32 5) #6
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %56

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @accept(i32 %34, %struct.sockaddr* null, i32* null)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %56

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %42 = call i64 @recv(i32 %40, i8* %41, i64 13, i32 0)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %39
  br label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %55 = call i32 @atoi(i8* %54) #8
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %50, %49, %38, %32, %27, %15
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @close(i32 %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @close(i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %1, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %8, align 4
  %71 = bitcast [10 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %71, i8 0, i64 40, i1 false)
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 10
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %79
  store i32 1, i32* %80, align 4
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %89, %77
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 10
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  call void @printIntLine(i32 %88)
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %81

92:                                               ; preds = %81
  br label %94

93:                                               ; preds = %74, %68
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %93, %92
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #4

declare dso_local i64 @recv(i32, i8*, i64, i32) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

declare dso_local i32 @close(i32) #4

declare dso_local void @printIntLine(i32) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #6
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #6
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_31_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
