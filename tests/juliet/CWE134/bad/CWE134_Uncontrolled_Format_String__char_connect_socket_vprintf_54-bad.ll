; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false)
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %9, i8** %1, align 8
  store i32 -1, i32* %6, align 4
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @strlen(i8* %10) #7
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %0
  %13 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %69

17:                                               ; preds = %12
  %18 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %19, align 4
  %20 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #6
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %23, i16* %24, align 2
  %25 = load i32, i32* %6, align 4
  %26 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %27 = call i32 @connect(i32 %25, %struct.sockaddr* %26, i32 16)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %69

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %1, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 100, %35
  %37 = sub i64 %36, 1
  %38 = mul i64 1, %37
  %39 = call i64 @recv(i32 %31, i8* %34, i64 %38, i32 0)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %46, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %30
  br label %69

47:                                               ; preds = %43
  %48 = load i8*, i8** %1, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 1
  %53 = add i64 %49, %52
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %1, align 8
  %56 = call i8* @strchr(i8* %55, i32 13) #7
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i8*, i8** %5, align 8
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %59, %47
  %62 = load i8*, i8** %1, align 8
  %63 = call i8* @strchr(i8* %62, i32 10) #7
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %61
  br label %69

69:                                               ; preds = %68, %46, %29, %16
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @close(i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %1, align 8
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54b_badSink(i8* %76)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #4

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #5

declare dso_local i64 @recv(i32, i8*, i64, i32) #5

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @close(i32) #5

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
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54b_badSink(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54c_badSink(i8* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54c_badSink(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54d_badSink(i8* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54d_badSink(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54e_badSink(i8* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_54e_badSink(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  call void (i8*, ...) @badVaSink(i8* %3, i8* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @badVaSink(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = call i32 @vprintf(i8* %6, %struct.__va_list_tag* %7)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
