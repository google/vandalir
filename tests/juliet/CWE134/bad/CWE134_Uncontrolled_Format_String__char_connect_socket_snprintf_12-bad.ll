; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_12-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_12_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [100 x i8], align 16
  %9 = alloca [100 x i8], align 16
  %10 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 100, i1 false)
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %11, i8** %1, align 8
  %12 = call i32 (...) @globalReturnsTrueOrFalse()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  %15 = load i8*, i8** %1, align 8
  %16 = call i64 @strlen(i8* %15) #6
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %14
  %18 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %74

22:                                               ; preds = %17
  %23 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 16, i1 false)
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %28, i16* %29, align 2
  %30 = load i32, i32* %6, align 4
  %31 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %32 = call i32 @connect(i32 %30, %struct.sockaddr* %31, i32 16)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %74

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %1, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 100, %40
  %42 = sub i64 %41, 1
  %43 = mul i64 1, %42
  %44 = call i64 @recv(i32 %36, i8* %39, i64 %43, i32 0)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %35
  br label %74

52:                                               ; preds = %48
  %53 = load i8*, i8** %1, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 1
  %58 = add i64 %54, %57
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %1, align 8
  %61 = call i8* @strchr(i8* %60, i32 13) #6
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i8*, i8** %5, align 8
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %64, %52
  %67 = load i8*, i8** %1, align 8
  %68 = call i8* @strchr(i8* %67, i32 10) #6
  store i8* %68, i8** %5, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i8*, i8** %5, align 8
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73, %51, %34, %21
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @close(i32 %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %84

81:                                               ; preds = %0
  %82 = load i8*, i8** %1, align 8
  %83 = call i8* @strcpy(i8* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7
  br label %84

84:                                               ; preds = %81, %80
  %85 = call i32 (...) @globalReturnsTrueOrFalse()
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = bitcast [100 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %88, i8 0, i64 100, i1 false)
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %90 = load i8*, i8** %1, align 8
  %91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %89, i64 99, i8* %90) #7
  %92 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  call void @printLine(i8* %92)
  br label %99

93:                                               ; preds = %84
  %94 = bitcast [100 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %94, i8 0, i64 100, i1 false)
  %95 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %96 = load i8*, i8** %1, align 8
  %97 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %95, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %96) #7
  %98 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  call void @printLine(i8* %98)
  br label %99

99:                                               ; preds = %93, %87
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #4

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #5

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #4

declare dso_local void @printLine(i8*) #2

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_12_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local void @srand(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
