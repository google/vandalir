; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_12-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str.4 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_12_good() #0 {
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
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [100 x i8], align 16
  %14 = alloca [100 x i8], align 16
  %15 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 100, i1 false)
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %16, i8** %1, align 8
  %17 = call i32 (...) @globalReturnsTrueOrFalse()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  %20 = load i8*, i8** %1, align 8
  %21 = call i64 @strlen(i8* %20) #6
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %19
  %23 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %79

27:                                               ; preds = %22
  %28 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 16, i1 false)
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %29, align 4
  %30 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #7
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %33, i16* %34, align 2
  %35 = load i32, i32* %6, align 4
  %36 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %37 = call i32 @connect(i32 %35, %struct.sockaddr* %36, i32 16)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %79

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %1, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 100, %45
  %47 = sub i64 %46, 1
  %48 = mul i64 1, %47
  %49 = call i64 @recv(i32 %41, i8* %44, i64 %48, i32 0)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %40
  br label %79

57:                                               ; preds = %53
  %58 = load i8*, i8** %1, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %61, 1
  %63 = add i64 %59, %62
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %1, align 8
  %66 = call i8* @strchr(i8* %65, i32 13) #6
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i8*, i8** %5, align 8
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %69, %57
  %72 = load i8*, i8** %1, align 8
  %73 = call i8* @strchr(i8* %72, i32 10) #6
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i8*, i8** %5, align 8
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %76, %71
  br label %79

79:                                               ; preds = %78, %56, %39, %26
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @close(i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %153

86:                                               ; preds = %0
  store i32 -1, i32* %11, align 4
  %87 = load i8*, i8** %1, align 8
  %88 = call i64 @strlen(i8* %87) #6
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %86
  %90 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %146

94:                                               ; preds = %89
  %95 = bitcast %struct.sockaddr_in* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %95, i8 0, i64 16, i1 false)
  %96 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %96, align 4
  %97 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #7
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %99 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %100, i16* %101, align 2
  %102 = load i32, i32* %11, align 4
  %103 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %104 = call i32 @connect(i32 %102, %struct.sockaddr* %103, i32 16)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %146

107:                                              ; preds = %94
  %108 = load i32, i32* %11, align 4
  %109 = load i8*, i8** %1, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i64, i64* %12, align 8
  %113 = sub i64 100, %112
  %114 = sub i64 %113, 1
  %115 = mul i64 1, %114
  %116 = call i64 @recv(i32 %108, i8* %111, i64 %115, i32 0)
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %123, label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %107
  br label %146

124:                                              ; preds = %120
  %125 = load i8*, i8** %1, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = udiv i64 %128, 1
  %130 = add i64 %126, %129
  %131 = getelementptr inbounds i8, i8* %125, i64 %130
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %1, align 8
  %133 = call i8* @strchr(i8* %132, i32 13) #6
  store i8* %133, i8** %10, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i8*, i8** %10, align 8
  store i8 0, i8* %137, align 1
  br label %138

138:                                              ; preds = %136, %124
  %139 = load i8*, i8** %1, align 8
  %140 = call i8* @strchr(i8* %139, i32 10) #6
  store i8* %140, i8** %10, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i8*, i8** %10, align 8
  store i8 0, i8* %144, align 1
  br label %145

145:                                              ; preds = %143, %138
  br label %146

146:                                              ; preds = %145, %123, %106, %93
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, -1
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @close(i32 %150)
  br label %152

152:                                              ; preds = %149, %146
  br label %153

153:                                              ; preds = %152, %85
  %154 = call i32 (...) @globalReturnsTrueOrFalse()
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = bitcast [100 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %157, i8 0, i64 100, i1 false)
  %158 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %159 = load i8*, i8** %1, align 8
  %160 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %158, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %159) #7
  %161 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  call void @printLine(i8* %161)
  br label %168

162:                                              ; preds = %153
  %163 = bitcast [100 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %163, i8 0, i64 100, i1 false)
  %164 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %165 = load i8*, i8** %1, align 8
  %166 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %164, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %165) #7
  %167 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  call void @printLine(i8* %167)
  br label %168

168:                                              ; preds = %162, %156
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
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %15

12:                                               ; preds = %0
  %13 = load i8*, i8** %1, align 8
  %14 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7
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

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

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
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_12_good()
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
