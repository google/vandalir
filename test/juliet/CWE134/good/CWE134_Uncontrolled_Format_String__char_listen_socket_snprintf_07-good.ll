; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_07-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@staticFive = internal global i32 5, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_07_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [100 x i8], align 16
  %10 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 100, i1 false)
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %11, i8** %1, align 8
  %12 = load i32, i32* @staticFive, align 4
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %97

14:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %15 = load i8*, i8** %1, align 8
  %16 = call i64 @strlen(i8* %15) #6
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %14
  %18 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %84

22:                                               ; preds = %17
  %23 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 16, i1 false)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %27, i16* %28, align 2
  %29 = load i32, i32* %6, align 4
  %30 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %31 = call i32 @bind(i32 %29, %struct.sockaddr* %30, i32 16) #7
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %84

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @listen(i32 %35, i32 5) #7
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %84

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @accept(i32 %40, %struct.sockaddr* null, i32* null)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %84

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %1, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 100, %50
  %52 = sub i64 %51, 1
  %53 = mul i64 1, %52
  %54 = call i64 @recv(i32 %46, i8* %49, i64 %53, i32 0)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %61, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %45
  br label %84

62:                                               ; preds = %58
  %63 = load i8*, i8** %1, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %66, 1
  %68 = add i64 %64, %67
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %1, align 8
  %71 = call i8* @strchr(i8* %70, i32 13) #6
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i8*, i8** %5, align 8
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %74, %62
  %77 = load i8*, i8** %1, align 8
  %78 = call i8* @strchr(i8* %77, i32 10) #6
  store i8* %78, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %81, %76
  br label %84

84:                                               ; preds = %83, %61, %44, %38, %33, %21
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @close(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @close(i32 %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %0
  %98 = load i32, i32* @staticFive, align 4
  %99 = icmp ne i32 %98, 5
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %107

101:                                              ; preds = %97
  %102 = bitcast [100 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %102, i8 0, i64 100, i1 false)
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %104 = load i8*, i8** %1, align 8
  %105 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %103, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %104) #7
  %106 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  call void @printLine(i8* %106)
  br label %107

107:                                              ; preds = %101, %100
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [100 x i8], align 16
  %10 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 100, i1 false)
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %11, i8** %1, align 8
  %12 = load i32, i32* @staticFive, align 4
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %97

14:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %15 = load i8*, i8** %1, align 8
  %16 = call i64 @strlen(i8* %15) #6
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %14
  %18 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %84

22:                                               ; preds = %17
  %23 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 16, i1 false)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %27, i16* %28, align 2
  %29 = load i32, i32* %6, align 4
  %30 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %31 = call i32 @bind(i32 %29, %struct.sockaddr* %30, i32 16) #7
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %84

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @listen(i32 %35, i32 5) #7
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %84

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @accept(i32 %40, %struct.sockaddr* null, i32* null)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %84

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %1, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 100, %50
  %52 = sub i64 %51, 1
  %53 = mul i64 1, %52
  %54 = call i64 @recv(i32 %46, i8* %49, i64 %53, i32 0)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %61, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %45
  br label %84

62:                                               ; preds = %58
  %63 = load i8*, i8** %1, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %66, 1
  %68 = add i64 %64, %67
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %1, align 8
  %71 = call i8* @strchr(i8* %70, i32 13) #6
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i8*, i8** %5, align 8
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %74, %62
  %77 = load i8*, i8** %1, align 8
  %78 = call i8* @strchr(i8* %77, i32 10) #6
  store i8* %78, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %81, %76
  br label %84

84:                                               ; preds = %83, %61, %44, %38, %33, %21
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @close(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @close(i32 %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %0
  %98 = load i32, i32* @staticFive, align 4
  %99 = icmp eq i32 %98, 5
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = bitcast [100 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %101, i8 0, i64 100, i1 false)
  %102 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %103 = load i8*, i8** %1, align 8
  %104 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %102, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %103) #7
  %105 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  call void @printLine(i8* %105)
  br label %106

106:                                              ; preds = %100, %97
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %5, i8** %1, align 8
  %6 = load i32, i32* @staticFive, align 4
  %7 = icmp ne i32 %6, 5
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %12

12:                                               ; preds = %9, %8
  %13 = load i32, i32* @staticFive, align 4
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 100, i1 false)
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %17, i64 99, i8* %18) #7
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @printLine(i8* %20)
  br label %21

21:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %5, i8** %1, align 8
  %6 = load i32, i32* @staticFive, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* @staticFive, align 4
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 100, i1 false)
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %16, i64 99, i8* %17) #7
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @printLine(i8* %19)
  br label %20

20:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local void @printLine(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #3

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #4

declare dso_local i32 @close(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
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
  call void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_07_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
