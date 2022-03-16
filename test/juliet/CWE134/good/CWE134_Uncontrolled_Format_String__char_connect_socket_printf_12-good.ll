; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_connect_socket_printf_12-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str.4 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_printf_12_good() #0 {
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
  %13 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 100, i1 false)
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %14, i8** %1, align 8
  %15 = call i32 (...) @globalReturnsTrueOrFalse()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %84

17:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  %18 = load i8*, i8** %1, align 8
  %19 = call i64 @strlen(i8* %18) #6
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %17
  %21 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %77

25:                                               ; preds = %20
  %26 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #7
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %30 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %31, i16* %32, align 2
  %33 = load i32, i32* %6, align 4
  %34 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %35 = call i32 @connect(i32 %33, %struct.sockaddr* %34, i32 16)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %77

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %1, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i64, i64* %7, align 8
  %44 = sub i64 100, %43
  %45 = sub i64 %44, 1
  %46 = mul i64 1, %45
  %47 = call i64 @recv(i32 %39, i8* %42, i64 %46, i32 0)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %38
  br label %77

55:                                               ; preds = %51
  %56 = load i8*, i8** %1, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 1
  %61 = add i64 %57, %60
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %1, align 8
  %64 = call i8* @strchr(i8* %63, i32 13) #6
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i8*, i8** %5, align 8
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %67, %55
  %70 = load i8*, i8** %1, align 8
  %71 = call i8* @strchr(i8* %70, i32 10) #6
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i8*, i8** %5, align 8
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %74, %69
  br label %77

77:                                               ; preds = %76, %54, %37, %24
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @close(i32 %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %151

84:                                               ; preds = %0
  store i32 -1, i32* %11, align 4
  %85 = load i8*, i8** %1, align 8
  %86 = call i64 @strlen(i8* %85) #6
  store i64 %86, i64* %12, align 8
  br label %87

87:                                               ; preds = %84
  %88 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %144

92:                                               ; preds = %87
  %93 = bitcast %struct.sockaddr_in* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %93, i8 0, i64 16, i1 false)
  %94 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %94, align 4
  %95 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #7
  %96 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %97 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %98, i16* %99, align 2
  %100 = load i32, i32* %11, align 4
  %101 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %102 = call i32 @connect(i32 %100, %struct.sockaddr* %101, i32 16)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %144

105:                                              ; preds = %92
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %1, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i64, i64* %12, align 8
  %111 = sub i64 100, %110
  %112 = sub i64 %111, 1
  %113 = mul i64 1, %112
  %114 = call i64 @recv(i32 %106, i8* %109, i64 %113, i32 0)
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %121, label %118

118:                                              ; preds = %105
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118, %105
  br label %144

122:                                              ; preds = %118
  %123 = load i8*, i8** %1, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = udiv i64 %126, 1
  %128 = add i64 %124, %127
  %129 = getelementptr inbounds i8, i8* %123, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %1, align 8
  %131 = call i8* @strchr(i8* %130, i32 13) #6
  store i8* %131, i8** %10, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i8*, i8** %10, align 8
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %134, %122
  %137 = load i8*, i8** %1, align 8
  %138 = call i8* @strchr(i8* %137, i32 10) #6
  store i8* %138, i8** %10, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i8*, i8** %10, align 8
  store i8 0, i8* %142, align 1
  br label %143

143:                                              ; preds = %141, %136
  br label %144

144:                                              ; preds = %143, %121, %104, %91
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, -1
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @close(i32 %148)
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %83
  %152 = call i32 (...) @globalReturnsTrueOrFalse()
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i8*, i8** %1, align 8
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %155)
  br label %160

157:                                              ; preds = %151
  %158 = load i8*, i8** %1, align 8
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %157, %154
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
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** %1, align 8
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #7
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
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_printf_12_good()
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
