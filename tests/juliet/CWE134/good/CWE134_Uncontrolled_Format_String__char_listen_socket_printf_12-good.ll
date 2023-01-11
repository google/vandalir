; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_listen_socket_printf_12-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_printf_12_good() #0 {
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
  %15 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 100, i1 false)
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %16, i8** %1, align 8
  %17 = call i32 (...) @globalReturnsTrueOrFalse()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %102

19:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %20 = load i8*, i8** %1, align 8
  %21 = call i64 @strlen(i8* %20) #6
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %19
  %23 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %89

27:                                               ; preds = %22
  %28 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 16, i1 false)
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %29, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %32, i16* %33, align 2
  %34 = load i32, i32* %6, align 4
  %35 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %36 = call i32 @bind(i32 %34, %struct.sockaddr* %35, i32 16) #7
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %89

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @listen(i32 %40, i32 5) #7
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %89

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @accept(i32 %45, %struct.sockaddr* null, i32* null)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %89

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load i8*, i8** %1, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 100, %55
  %57 = sub i64 %56, 1
  %58 = mul i64 1, %57
  %59 = call i64 @recv(i32 %51, i8* %54, i64 %58, i32 0)
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %50
  br label %89

67:                                               ; preds = %63
  %68 = load i8*, i8** %1, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 1
  %73 = add i64 %69, %72
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %1, align 8
  %76 = call i8* @strchr(i8* %75, i32 13) #6
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i8*, i8** %5, align 8
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %79, %67
  %82 = load i8*, i8** %1, align 8
  %83 = call i8* @strchr(i8* %82, i32 10) #6
  store i8* %83, i8** %5, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i8*, i8** %5, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %86, %81
  br label %89

89:                                               ; preds = %88, %66, %49, %43, %38, %26
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @close(i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @close(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  br label %185

102:                                              ; preds = %0
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %103 = load i8*, i8** %1, align 8
  %104 = call i64 @strlen(i8* %103) #6
  store i64 %104, i64* %14, align 8
  br label %105

105:                                              ; preds = %102
  %106 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %172

110:                                              ; preds = %105
  %111 = bitcast %struct.sockaddr_in* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %111, i8 0, i64 16, i1 false)
  %112 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %112, align 4
  %113 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %114 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %113, i32 0, i32 0
  store i32 0, i32* %114, align 4
  %115 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %116 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %115, i16* %116, align 2
  %117 = load i32, i32* %12, align 4
  %118 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %119 = call i32 @bind(i32 %117, %struct.sockaddr* %118, i32 16) #7
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %172

122:                                              ; preds = %110
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @listen(i32 %123, i32 5) #7
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %172

127:                                              ; preds = %122
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @accept(i32 %128, %struct.sockaddr* null, i32* null)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %172

133:                                              ; preds = %127
  %134 = load i32, i32* %13, align 4
  %135 = load i8*, i8** %1, align 8
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i64, i64* %14, align 8
  %139 = sub i64 100, %138
  %140 = sub i64 %139, 1
  %141 = mul i64 1, %140
  %142 = call i64 @recv(i32 %134, i8* %137, i64 %141, i32 0)
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %149, label %146

146:                                              ; preds = %133
  %147 = load i32, i32* %9, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146, %133
  br label %172

150:                                              ; preds = %146
  %151 = load i8*, i8** %1, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = udiv i64 %154, 1
  %156 = add i64 %152, %155
  %157 = getelementptr inbounds i8, i8* %151, i64 %156
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %1, align 8
  %159 = call i8* @strchr(i8* %158, i32 13) #6
  store i8* %159, i8** %11, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %150
  %163 = load i8*, i8** %11, align 8
  store i8 0, i8* %163, align 1
  br label %164

164:                                              ; preds = %162, %150
  %165 = load i8*, i8** %1, align 8
  %166 = call i8* @strchr(i8* %165, i32 10) #6
  store i8* %166, i8** %11, align 8
  %167 = load i8*, i8** %11, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i8*, i8** %11, align 8
  store i8 0, i8* %170, align 1
  br label %171

171:                                              ; preds = %169, %164
  br label %172

172:                                              ; preds = %171, %149, %132, %126, %121, %109
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @close(i32 %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, -1
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @close(i32 %182)
  br label %184

184:                                              ; preds = %181, %178
  br label %185

185:                                              ; preds = %184, %101
  %186 = call i32 (...) @globalReturnsTrueOrFalse()
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i8*, i8** %1, align 8
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %189)
  br label %194

191:                                              ; preds = %185
  %192 = load i8*, i8** %1, align 8
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %192)
  br label %194

194:                                              ; preds = %191, %188
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 100, i1 false)
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %4, i8** %1, align 8
  %5 = call i32 (...) @globalReturnsTrueOrFalse()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** %1, align 8
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %13

13:                                               ; preds = %10, %7
  %14 = call i32 (...) @globalReturnsTrueOrFalse()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  br label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 (i8*, ...) @printf(i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

declare dso_local i32 @printf(i8*, ...) #2

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
  call void @CWE134_Uncontrolled_Format_String__char_listen_socket_printf_12_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #2

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
