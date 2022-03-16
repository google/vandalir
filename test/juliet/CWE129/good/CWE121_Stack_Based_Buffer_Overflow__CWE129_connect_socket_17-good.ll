; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str.4 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_good() #0 {
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
  %7 = alloca [14 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %56, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  store i32 -1, i32* %6, align 4
  br label %14

14:                                               ; preds = %13
  %15 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %49

19:                                               ; preds = %14
  %20 = bitcast %struct.sockaddr_in* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i16 2, i16* %21, align 4
  %22 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #6
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i16 %25, i16* %26, align 2
  %27 = load i32, i32* %6, align 4
  %28 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %29 = call i32 @connect(i32 %27, %struct.sockaddr* %28, i32 16)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %49

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %35 = call i64 @recv(i32 %33, i8* %34, i64 13, i32 0)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %32
  br label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 %45
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %48 = call i32 @atoi(i8* %47) #8
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %42, %31, %18
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @close(i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %10

59:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %88, %59
  %61 = load i32, i32* %2, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %91

63:                                               ; preds = %60
  %64 = bitcast [10 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 40, i1 false)
  %65 = load i32, i32* %3, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %68, 10
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %72
  store i32 1, i32* %73, align 4
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %82, %70
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 10
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  call void @printIntLine(i32 %81)
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %74

85:                                               ; preds = %74
  br label %87

86:                                               ; preds = %67, %63
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %86, %85
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %2, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %2, align 4
  br label %60

91:                                               ; preds = %60
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
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_good()
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
