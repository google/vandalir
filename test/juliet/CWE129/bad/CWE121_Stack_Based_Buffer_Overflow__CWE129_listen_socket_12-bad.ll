; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_12-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_12_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [14 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %11 = call i32 (...) @globalReturnsTrueOrFalse()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %72

13:                                               ; preds = %0
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  br label %14

14:                                               ; preds = %13
  %15 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %59

19:                                               ; preds = %14
  %20 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %21, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i32, i32* %4, align 4
  %27 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %28 = call i32 @bind(i32 %26, %struct.sockaddr* %27, i32 16) #6
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %59

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @listen(i32 %32, i32 5) #6
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %59

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @accept(i32 %37, %struct.sockaddr* null, i32* null)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %59

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %45 = call i64 @recv(i32 %43, i8* %44, i64 13, i32 0)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %42
  br label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 %55
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %58 = call i32 @atoi(i8* %57) #8
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %53, %52, %41, %35, %30, %18
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @close(i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @close(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %73

72:                                               ; preds = %0
  store i32 7, i32* %1, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = call i32 (...) @globalReturnsTrueOrFalse()
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = bitcast [10 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %77, i8 0, i64 40, i1 false)
  %78 = load i32, i32* %1, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %82
  store i32 1, i32* %83, align 4
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %92, %80
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 10
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  call void @printIntLine(i32 %91)
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %84

95:                                               ; preds = %84
  br label %97

96:                                               ; preds = %76
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %96, %95
  br label %123

98:                                               ; preds = %73
  %99 = bitcast [10 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %99, i8 0, i64 40, i1 false)
  %100 = load i32, i32* %1, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load i32, i32* %1, align 4
  %104 = icmp slt i32 %103, 10
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %107
  store i32 1, i32* %108, align 4
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %117, %105
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 10
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  call void @printIntLine(i32 %116)
  br label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %109

120:                                              ; preds = %109
  br label %122

121:                                              ; preds = %102, %98
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %121, %120
  br label %123

123:                                              ; preds = %122, %97
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_12_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
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
