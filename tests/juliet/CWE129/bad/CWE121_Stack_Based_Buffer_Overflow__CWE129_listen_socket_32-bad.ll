; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_32-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_32_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [14 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i32], align 16
  store i32* %1, i32** %2, align 8
  store i32* %1, i32** %3, align 8
  store i32 -1, i32* %1, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %15

15:                                               ; preds = %0
  %16 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %60

20:                                               ; preds = %15
  %21 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %22, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %25, i16* %26, align 2
  %27 = load i32, i32* %7, align 4
  %28 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %29 = call i32 @bind(i32 %27, %struct.sockaddr* %28, i32 16) #6
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %60

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @listen(i32 %33, i32 5) #6
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %60

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @accept(i32 %38, %struct.sockaddr* null, i32* null)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %60

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 0
  %46 = call i64 @recv(i32 %44, i8* %45, i64 13, i32 0)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %43
  br label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 0
  %59 = call i32 @atoi(i8* %58) #8
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %53, %42, %36, %31, %19
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @close(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @close(i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %4, align 4
  %74 = load i32*, i32** %2, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = bitcast [10 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %77, i8 0, i64 40, i1 false)
  %78 = load i32, i32* %10, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %82
  store i32 1, i32* %83, align 4
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %92, %80
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 10
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  call void @printIntLine(i32 %91)
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %84

95:                                               ; preds = %84
  br label %97

96:                                               ; preds = %72
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %96, %95
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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_32_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
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
