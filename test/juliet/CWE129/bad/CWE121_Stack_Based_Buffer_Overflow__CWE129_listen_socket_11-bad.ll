; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_11-bad.bc'
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
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_11_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [14 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %9 = call i32 (...) @globalReturnsTrue()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %70

11:                                               ; preds = %0
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  br label %12

12:                                               ; preds = %11
  %13 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %57

17:                                               ; preds = %12
  %18 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %19, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %22, i16* %23, align 2
  %24 = load i32, i32* %4, align 4
  %25 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %26 = call i32 @bind(i32 %24, %struct.sockaddr* %25, i32 16) #6
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %57

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @listen(i32 %30, i32 5) #6
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %57

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @accept(i32 %35, %struct.sockaddr* null, i32* null)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %57

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %43 = call i64 @recv(i32 %41, i8* %42, i64 13, i32 0)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %40
  br label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %56 = call i32 @atoi(i8* %55) #8
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %51, %50, %39, %33, %28, %16
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @close(i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @close(i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %0
  %71 = call i32 (...) @globalReturnsTrue()
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %70
  %74 = bitcast [10 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %74, i8 0, i64 40, i1 false)
  %75 = load i32, i32* %1, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %79
  store i32 1, i32* %80, align 4
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %89, %77
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 10
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  call void @printIntLine(i32 %88)
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %81

92:                                               ; preds = %81
  br label %94

93:                                               ; preds = %73
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %93, %92
  br label %95

95:                                               ; preds = %94, %70
  ret void
}

declare dso_local i32 @globalReturnsTrue(...) #1

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @recv(i32, i8*, i64, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

declare dso_local i32 @close(i32) #1

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
  %6 = call i64 @time(i64* null) #6
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #6
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_11_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
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
