; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_07-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@staticFive = internal global i32 5, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_07_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca [14 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %8 = load i32, i32* @staticFive, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %53

10:                                               ; preds = %0
  store i32 -1, i32* %4, align 4
  br label %11

11:                                               ; preds = %10
  %12 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %46

16:                                               ; preds = %11
  %17 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %18, align 4
  %19 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #6
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %22, i16* %23, align 2
  %24 = load i32, i32* %4, align 4
  %25 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %26 = call i32 @connect(i32 %24, %struct.sockaddr* %25, i32 16)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %46

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %32 = call i64 @recv(i32 %30, i8* %31, i64 13, i32 0)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %29
  br label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %45 = call i32 @atoi(i8* %44) #8
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %40, %39, %28, %15
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @close(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %0
  %54 = load i32, i32* @staticFive, align 4
  %55 = icmp ne i32 %54, 5
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %82

57:                                               ; preds = %53
  %58 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %58, i8 0, i64 40, i1 false)
  %59 = load i32, i32* %1, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load i32, i32* %1, align 4
  %63 = icmp slt i32 %62, 10
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %66
  store i32 1, i32* %67, align 4
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %76, %64
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 10
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  call void @printIntLine(i32 %75)
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %68

79:                                               ; preds = %68
  br label %81

80:                                               ; preds = %61, %57
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %80, %79
  br label %82

82:                                               ; preds = %81, %56
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca [14 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %8 = load i32, i32* @staticFive, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %53

10:                                               ; preds = %0
  store i32 -1, i32* %4, align 4
  br label %11

11:                                               ; preds = %10
  %12 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %46

16:                                               ; preds = %11
  %17 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %18, align 4
  %19 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #6
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %22, i16* %23, align 2
  %24 = load i32, i32* %4, align 4
  %25 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %26 = call i32 @connect(i32 %24, %struct.sockaddr* %25, i32 16)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %46

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %32 = call i64 @recv(i32 %30, i8* %31, i64 13, i32 0)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %29
  br label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %45 = call i32 @atoi(i8* %44) #8
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %40, %39, %28, %15
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @close(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %0
  %54 = load i32, i32* @staticFive, align 4
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %57, i8 0, i64 40, i1 false)
  %58 = load i32, i32* %1, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load i32, i32* %1, align 4
  %62 = icmp slt i32 %61, 10
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %65
  store i32 1, i32* %66, align 4
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %75, %63
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 10
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  call void @printIntLine(i32 %74)
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %67

78:                                               ; preds = %67
  br label %80

79:                                               ; preds = %60, %56
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80, %53
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* @staticFive, align 4
  %5 = icmp ne i32 %4, 5
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %8

7:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* @staticFive, align 4
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false)
  %13 = load i32, i32* %1, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %17
  store i32 1, i32* %18, align 4
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %27, %15
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  call void @printIntLine(i32 %26)
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %19

30:                                               ; preds = %19
  br label %32

31:                                               ; preds = %11
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %32

32:                                               ; preds = %31, %30
  br label %33

33:                                               ; preds = %32, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %4 = load i32, i32* @staticFive, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* @staticFive, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false)
  %12 = load i32, i32* %1, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %16
  store i32 1, i32* %17, align 4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %26, %14
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  call void @printIntLine(i32 %25)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %18

29:                                               ; preds = %18
  br label %31

30:                                               ; preds = %10
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #4

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_07_good()
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
