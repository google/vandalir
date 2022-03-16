; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca [14 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %10 = call i32 (...) @globalReturnsTrueOrFalse()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %0
  store i32 -1, i32* %4, align 4
  br label %13

13:                                               ; preds = %12
  %14 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %48

18:                                               ; preds = %13
  %19 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %20, align 4
  %21 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #6
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i32, i32* %4, align 4
  %27 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %28 = call i32 @connect(i32 %26, %struct.sockaddr* %27, i32 16)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %48

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %34 = call i64 @recv(i32 %32, i8* %33, i64 13, i32 0)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %31
  br label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %47 = call i32 @atoi(i8* %46) #8
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %42, %41, %30, %17
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @close(i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %56

55:                                               ; preds = %0
  store i32 7, i32* %1, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = call i32 (...) @globalReturnsTrueOrFalse()
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 40, i1 false)
  %61 = load i32, i32* %1, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
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

79:                                               ; preds = %59
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %79, %78
  br label %106

81:                                               ; preds = %56
  %82 = bitcast [10 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %82, i8 0, i64 40, i1 false)
  %83 = load i32, i32* %1, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load i32, i32* %1, align 4
  %87 = icmp slt i32 %86, 10
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %90
  store i32 1, i32* %91, align 4
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %100, %88
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 10
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  call void @printIntLine(i32 %99)
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %92

103:                                              ; preds = %92
  br label %105

104:                                              ; preds = %85, %81
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %80
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #2

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #4

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
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
