; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad() #0 {
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
  %22 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #6
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

60:                                               ; preds = %85, %59
  %61 = load i32, i32* %2, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  %64 = bitcast [10 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 40, i1 false)
  %65 = load i32, i32* %3, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %69
  store i32 1, i32* %70, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %79, %67
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 10
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  call void @printIntLine(i32 %78)
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %71

82:                                               ; preds = %71
  br label %84

83:                                               ; preds = %63
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %83, %82
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %60

88:                                               ; preds = %60
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #1

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #3

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #4

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_17_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
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
