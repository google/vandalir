; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_12-good.bc'
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
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_12_good() #0 {
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
  %5 = alloca i32, align 4
  %6 = alloca [14 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [14 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca [10 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  %16 = call i32 (...) @globalReturnsTrueOrFalse()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %0
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18
  %20 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %64

24:                                               ; preds = %19
  %25 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %26, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %28 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  %31 = load i32, i32* %4, align 4
  %32 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %33 = call i32 @bind(i32 %31, %struct.sockaddr* %32, i32 16) #6
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %64

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @listen(i32 %37, i32 5) #6
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %64

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @accept(i32 %42, %struct.sockaddr* null, i32* null)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %64

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %50 = call i64 @recv(i32 %48, i8* %49, i64 13, i32 0)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %2, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %47
  br label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 %60
  store i8 0, i8* %61, align 1
  %62 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %63 = call i32 @atoi(i8* %62) #8
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %58, %57, %46, %40, %35, %23
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @close(i32 %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @close(i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %136

77:                                               ; preds = %0
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %78

78:                                               ; preds = %77
  %79 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %123

83:                                               ; preds = %78
  %84 = bitcast %struct.sockaddr_in* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %84, i8 0, i64 16, i1 false)
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i16 2, i16* %85, align 4
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %87 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  %88 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i16 %88, i16* %89, align 2
  %90 = load i32, i32* %9, align 4
  %91 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %92 = call i32 @bind(i32 %90, %struct.sockaddr* %91, i32 16) #6
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %123

95:                                               ; preds = %83
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @listen(i32 %96, i32 5) #6
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %123

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @accept(i32 %101, %struct.sockaddr* null, i32* null)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %123

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  %108 = getelementptr inbounds [14 x i8], [14 x i8]* %11, i64 0, i64 0
  %109 = call i64 @recv(i32 %107, i8* %108, i64 13, i32 0)
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %106
  br label %123

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [14 x i8], [14 x i8]* %11, i64 0, i64 %119
  store i8 0, i8* %120, align 1
  %121 = getelementptr inbounds [14 x i8], [14 x i8]* %11, i64 0, i64 0
  %122 = call i32 @atoi(i8* %121) #8
  store i32 %122, i32* %1, align 4
  br label %123

123:                                              ; preds = %117, %116, %105, %99, %94, %82
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @close(i32 %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, -1
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @close(i32 %133)
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %76
  %137 = call i32 (...) @globalReturnsTrueOrFalse()
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %136
  %140 = bitcast [10 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %140, i8 0, i64 40, i1 false)
  %141 = load i32, i32* %1, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load i32, i32* %1, align 4
  %145 = icmp slt i32 %144, 10
  br i1 %145, label %146, label %162

146:                                              ; preds = %143
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %148
  store i32 1, i32* %149, align 4
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %158, %146
  %151 = load i32, i32* %12, align 4
  %152 = icmp slt i32 %151, 10
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  call void @printIntLine(i32 %157)
  br label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %150

161:                                              ; preds = %150
  br label %163

162:                                              ; preds = %143, %139
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %163

163:                                              ; preds = %162, %161
  br label %189

164:                                              ; preds = %136
  %165 = bitcast [10 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %165, i8 0, i64 40, i1 false)
  %166 = load i32, i32* %1, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %164
  %169 = load i32, i32* %1, align 4
  %170 = icmp slt i32 %169, 10
  br i1 %170, label %171, label %187

171:                                              ; preds = %168
  %172 = load i32, i32* %1, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* %15, i64 0, i64 %173
  store i32 1, i32* %174, align 4
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %183, %171
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %176, 10
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [10 x i32], [10 x i32]* %15, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  call void @printIntLine(i32 %182)
  br label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %175

186:                                              ; preds = %175
  br label %188

187:                                              ; preds = %168, %164
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %188

188:                                              ; preds = %187, %186
  br label %189

189:                                              ; preds = %188, %163
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
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
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
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
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

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #3

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_12_good()
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
