; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_04-good.bc'
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
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_04_good() #0 {
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
  %5 = alloca i32, align 4
  %6 = alloca [14 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  br label %9

9:                                                ; preds = %0
  %10 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %54

14:                                               ; preds = %9
  %15 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %19, i16* %20, align 2
  %21 = load i32, i32* %4, align 4
  %22 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %23 = call i32 @bind(i32 %21, %struct.sockaddr* %22, i32 16) #6
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %54

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @listen(i32 %27, i32 5) #6
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %54

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @accept(i32 %32, %struct.sockaddr* null, i32* null)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %54

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %40 = call i64 @recv(i32 %38, i8* %39, i64 13, i32 0)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %37
  br label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %53 = call i32 @atoi(i8* %52) #8
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %48, %47, %36, %30, %25, %13
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @close(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @close(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = bitcast [10 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %67, i8 0, i64 40, i1 false)
  %68 = load i32, i32* %1, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load i32, i32* %1, align 4
  %72 = icmp slt i32 %71, 10
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %75
  store i32 1, i32* %76, align 4
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %85, %73
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 10
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  call void @printIntLine(i32 %84)
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %77

88:                                               ; preds = %77
  br label %90

89:                                               ; preds = %70, %66
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %89, %88
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [14 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  br label %9

9:                                                ; preds = %0
  %10 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %54

14:                                               ; preds = %9
  %15 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %19, i16* %20, align 2
  %21 = load i32, i32* %4, align 4
  %22 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %23 = call i32 @bind(i32 %21, %struct.sockaddr* %22, i32 16) #6
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %54

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @listen(i32 %27, i32 5) #6
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %54

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @accept(i32 %32, %struct.sockaddr* null, i32* null)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %54

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %40 = call i64 @recv(i32 %38, i8* %39, i64 13, i32 0)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %37
  br label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %53 = call i32 @atoi(i8* %52) #8
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %48, %47, %36, %30, %25, %13
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @close(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @close(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = bitcast [10 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %67, i8 0, i64 40, i1 false)
  %68 = load i32, i32* %1, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load i32, i32* %1, align 4
  %72 = icmp slt i32 %71, 10
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %75
  store i32 1, i32* %76, align 4
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %85, %73
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 10
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  call void @printIntLine(i32 %84)
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %77

88:                                               ; preds = %77
  br label %90

89:                                               ; preds = %70, %66
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %89, %88
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 7, i32* %1, align 4
  %4 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false)
  %5 = load i32, i32* %1, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %9
  store i32 1, i32* %10, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %19, %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  call void @printIntLine(i32 %18)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %11

22:                                               ; preds = %11
  br label %24

23:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 7, i32* %1, align 4
  %4 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false)
  %5 = load i32, i32* %1, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %9
  store i32 1, i32* %10, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %19, %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  call void @printIntLine(i32 %18)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %11

22:                                               ; preds = %11
  br label %24

23:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %23, %22
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_04_good()
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
