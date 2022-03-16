; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_12-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [100 x i8], align 16
  %16 = alloca [100 x i8], align 16
  %17 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 100, i1 false)
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %18, i8** %1, align 8
  %19 = call i32 (...) @globalReturnsTrueOrFalse()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %104

21:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %22 = load i8*, i8** %1, align 8
  %23 = call i64 @strlen(i8* %22) #6
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %21
  %25 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %91

29:                                               ; preds = %24
  %30 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 16, i1 false)
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %31, align 4
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %33 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %34, i16* %35, align 2
  %36 = load i32, i32* %6, align 4
  %37 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %38 = call i32 @bind(i32 %36, %struct.sockaddr* %37, i32 16) #7
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %91

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @listen(i32 %42, i32 5) #7
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %91

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @accept(i32 %47, %struct.sockaddr* null, i32* null)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %91

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i8*, i8** %1, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i64, i64* %8, align 8
  %58 = sub i64 100, %57
  %59 = sub i64 %58, 1
  %60 = mul i64 1, %59
  %61 = call i64 @recv(i32 %53, i8* %56, i64 %60, i32 0)
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %68, label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %3, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %52
  br label %91

69:                                               ; preds = %65
  %70 = load i8*, i8** %1, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %73, 1
  %75 = add i64 %71, %74
  %76 = getelementptr inbounds i8, i8* %70, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %1, align 8
  %78 = call i8* @strchr(i8* %77, i32 13) #6
  store i8* %78, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i8*, i8** %5, align 8
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %81, %69
  %84 = load i8*, i8** %1, align 8
  %85 = call i8* @strchr(i8* %84, i32 10) #6
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %88, %83
  br label %91

91:                                               ; preds = %90, %68, %51, %45, %40, %28
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @close(i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @close(i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %187

104:                                              ; preds = %0
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %105 = load i8*, i8** %1, align 8
  %106 = call i64 @strlen(i8* %105) #6
  store i64 %106, i64* %14, align 8
  br label %107

107:                                              ; preds = %104
  %108 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %174

112:                                              ; preds = %107
  %113 = bitcast %struct.sockaddr_in* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %113, i8 0, i64 16, i1 false)
  %114 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %114, align 4
  %115 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %116 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %115, i32 0, i32 0
  store i32 0, i32* %116, align 4
  %117 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %118 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %117, i16* %118, align 2
  %119 = load i32, i32* %12, align 4
  %120 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %121 = call i32 @bind(i32 %119, %struct.sockaddr* %120, i32 16) #7
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %174

124:                                              ; preds = %112
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @listen(i32 %125, i32 5) #7
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %174

129:                                              ; preds = %124
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @accept(i32 %130, %struct.sockaddr* null, i32* null)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %174

135:                                              ; preds = %129
  %136 = load i32, i32* %13, align 4
  %137 = load i8*, i8** %1, align 8
  %138 = load i64, i64* %14, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i64, i64* %14, align 8
  %141 = sub i64 100, %140
  %142 = sub i64 %141, 1
  %143 = mul i64 1, %142
  %144 = call i64 @recv(i32 %136, i8* %139, i64 %143, i32 0)
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %151, label %148

148:                                              ; preds = %135
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148, %135
  br label %174

152:                                              ; preds = %148
  %153 = load i8*, i8** %1, align 8
  %154 = load i64, i64* %14, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = udiv i64 %156, 1
  %158 = add i64 %154, %157
  %159 = getelementptr inbounds i8, i8* %153, i64 %158
  store i8 0, i8* %159, align 1
  %160 = load i8*, i8** %1, align 8
  %161 = call i8* @strchr(i8* %160, i32 13) #6
  store i8* %161, i8** %11, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %152
  %165 = load i8*, i8** %11, align 8
  store i8 0, i8* %165, align 1
  br label %166

166:                                              ; preds = %164, %152
  %167 = load i8*, i8** %1, align 8
  %168 = call i8* @strchr(i8* %167, i32 10) #6
  store i8* %168, i8** %11, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i8*, i8** %11, align 8
  store i8 0, i8* %172, align 1
  br label %173

173:                                              ; preds = %171, %166
  br label %174

174:                                              ; preds = %173, %151, %134, %128, %123, %111
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, -1
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @close(i32 %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, -1
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %13, align 4
  %185 = call i32 @close(i32 %184)
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %103
  %188 = call i32 (...) @globalReturnsTrueOrFalse()
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = bitcast [100 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %191, i8 0, i64 100, i1 false)
  %192 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %193 = load i8*, i8** %1, align 8
  %194 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %192, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %193) #7
  %195 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  call void @printLine(i8* %195)
  br label %202

196:                                              ; preds = %187
  %197 = bitcast [100 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %197, i8 0, i64 100, i1 false)
  %198 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %199 = load i8*, i8** %1, align 8
  %200 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %198, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %199) #7
  %201 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  call void @printLine(i8* %201)
  br label %202

202:                                              ; preds = %196, %190
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** %1, align 8
  %7 = call i32 (...) @globalReturnsTrueOrFalse()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** %1, align 8
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %15

12:                                               ; preds = %0
  %13 = load i8*, i8** %1, align 8
  %14 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %15

15:                                               ; preds = %12, %9
  %16 = call i32 (...) @globalReturnsTrueOrFalse()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 100, i1 false)
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %20, i64 99, i8* %21) #7
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @printLine(i8* %23)
  br label %30

24:                                               ; preds = %15
  %25 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 100, i1 false)
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %26, i64 99, i8* %27) #7
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  call void @printLine(i8* %29)
  br label %30

30:                                               ; preds = %24, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

declare dso_local void @printLine(i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #3

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #4

declare dso_local i32 @close(i32) #2

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
  call void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_12_good()
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
