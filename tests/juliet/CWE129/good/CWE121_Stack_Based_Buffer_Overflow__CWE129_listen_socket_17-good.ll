; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_17-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_17_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [14 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %73, %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %76

14:                                               ; preds = %11
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  br label %15

15:                                               ; preds = %14
  %16 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %60

20:                                               ; preds = %15
  %21 = bitcast %struct.sockaddr_in* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i16 2, i16* %22, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i16 %25, i16* %26, align 2
  %27 = load i32, i32* %6, align 4
  %28 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %29 = call i32 @bind(i32 %27, %struct.sockaddr* %28, i32 16) #6
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %60

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @listen(i32 %33, i32 5) #6
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %60

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @accept(i32 %38, %struct.sockaddr* null, i32* null)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %60

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %46 = call i64 @recv(i32 %44, i8* %45, i64 13, i32 0)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %43
  br label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %59 = call i32 @atoi(i8* %58) #8
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %53, %42, %36, %31, %19
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @close(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @close(i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %1, align 4
  br label %11

76:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %105, %76
  %78 = load i32, i32* %2, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %108

80:                                               ; preds = %77
  %81 = bitcast [10 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %81, i8 0, i64 40, i1 false)
  %82 = load i32, i32* %3, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = icmp slt i32 %85, 10
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %89
  store i32 1, i32* %90, align 4
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %99, %87
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 10
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  call void @printIntLine(i32 %98)
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %91

102:                                              ; preds = %91
  br label %104

103:                                              ; preds = %84, %80
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %103, %102
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %2, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %2, align 4
  br label %77

108:                                              ; preds = %77
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  store i32 7, i32* %3, align 4
  br label %10

10:                                               ; preds = %9
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %6

13:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 40, i1 false)
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %33, %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  call void @printIntLine(i32 %32)
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %25

36:                                               ; preds = %25
  br label %38

37:                                               ; preds = %17
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %14

42:                                               ; preds = %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #3

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

declare dso_local i32 @close(i32) #2

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_17_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
