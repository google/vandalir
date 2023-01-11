; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12-good.bc'
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
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca [14 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca [14 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca [10 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %14 = call i32 (...) @globalReturnsTrueOrFalse()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %0
  store i32 -1, i32* %4, align 4
  br label %17

17:                                               ; preds = %16
  %18 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %52

22:                                               ; preds = %17
  %23 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 16, i1 false)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #6
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %28, i16* %29, align 2
  %30 = load i32, i32* %4, align 4
  %31 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %32 = call i32 @connect(i32 %30, %struct.sockaddr* %31, i32 16)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %52

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %38 = call i64 @recv(i32 %36, i8* %37, i64 13, i32 0)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %35
  br label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 %48
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %51 = call i32 @atoi(i8* %50) #8
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %46, %45, %34, %21
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @close(i32 %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %102

59:                                               ; preds = %0
  store i32 -1, i32* %8, align 4
  br label %60

60:                                               ; preds = %59
  %61 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %95

65:                                               ; preds = %60
  %66 = bitcast %struct.sockaddr_in* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %66, i8 0, i64 16, i1 false)
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %67, align 4
  %68 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #6
  %69 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %70 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %71, i16* %72, align 2
  %73 = load i32, i32* %8, align 4
  %74 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %75 = call i32 @connect(i32 %73, %struct.sockaddr* %74, i32 16)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %95

78:                                               ; preds = %65
  %79 = load i32, i32* %8, align 4
  %80 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 0
  %81 = call i64 @recv(i32 %79, i8* %80, i64 13, i32 0)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %78
  br label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 %91
  store i8 0, i8* %92, align 1
  %93 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 0
  %94 = call i32 @atoi(i8* %93) #8
  store i32 %94, i32* %1, align 4
  br label %95

95:                                               ; preds = %89, %88, %77, %64
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @close(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %58
  %103 = call i32 (...) @globalReturnsTrueOrFalse()
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %102
  %106 = bitcast [10 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %106, i8 0, i64 40, i1 false)
  %107 = load i32, i32* %1, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load i32, i32* %1, align 4
  %111 = icmp slt i32 %110, 10
  br i1 %111, label %112, label %128

112:                                              ; preds = %109
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 %114
  store i32 1, i32* %115, align 4
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %124, %112
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 10
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  call void @printIntLine(i32 %123)
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %116

127:                                              ; preds = %116
  br label %129

128:                                              ; preds = %109, %105
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %129

129:                                              ; preds = %128, %127
  br label %155

130:                                              ; preds = %102
  %131 = bitcast [10 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %131, i8 0, i64 40, i1 false)
  %132 = load i32, i32* %1, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load i32, i32* %1, align 4
  %136 = icmp slt i32 %135, 10
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load i32, i32* %1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %139
  store i32 1, i32* %140, align 4
  store i32 0, i32* %12, align 4
  br label %141

141:                                              ; preds = %149, %137
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 10
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  call void @printIntLine(i32 %148)
  br label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %141

152:                                              ; preds = %141
  br label %154

153:                                              ; preds = %134, %130
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %154

154:                                              ; preds = %153, %152
  br label %155

155:                                              ; preds = %154, %129
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %6 = call i32 (...) @globalReturnsTrueOrFalse()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %10

9:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = call i32 (...) @globalReturnsTrueOrFalse()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false)
  %15 = load i32, i32* %1, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %19
  store i32 1, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %29, %17
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  call void @printIntLine(i32 %28)
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %21

32:                                               ; preds = %21
  br label %34

33:                                               ; preds = %13
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %33, %32
  br label %57

35:                                               ; preds = %10
  %36 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 40, i1 false)
  %37 = load i32, i32* %1, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %41
  store i32 1, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %51, %39
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  call void @printIntLine(i32 %50)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %43

54:                                               ; preds = %43
  br label %56

55:                                               ; preds = %35
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %34
  ret void
}

declare dso_local i32 @globalReturnsTrueOrFalse(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #1

declare dso_local void @printLine(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #4

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @recv(i32, i8*, i64, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

declare dso_local i32 @close(i32) #1

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
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
