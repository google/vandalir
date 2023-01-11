; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68_goodB2GData = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68_goodG2BData = internal global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68_badData = internal global [8 x i8] zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
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
  %5 = load i8*, i8** %1, align 8
  %6 = call i8* @strcpy(i8* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #6
  %7 = load i8*, i8** %1, align 8
  store i8* %7, i8** @CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68_goodG2BData, align 8
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68b_goodG2BSink to void (...)*)()
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
  %9 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 100, i1 false)
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %10, i8** %1, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %11 = load i8*, i8** %1, align 8
  %12 = call i64 @strlen(i8* %11) #7
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %0
  %14 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %80

18:                                               ; preds = %13
  %19 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %20, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %23, i16* %24, align 2
  %25 = load i32, i32* %6, align 4
  %26 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %27 = call i32 @bind(i32 %25, %struct.sockaddr* %26, i32 16) #6
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %80

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @listen(i32 %31, i32 5) #6
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %80

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @accept(i32 %36, %struct.sockaddr* null, i32* null)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %80

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %1, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 100, %46
  %48 = sub i64 %47, 1
  %49 = mul i64 1, %48
  %50 = call i64 @recv(i32 %42, i8* %45, i64 %49, i32 0)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %41
  br label %80

58:                                               ; preds = %54
  %59 = load i8*, i8** %1, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %62, 1
  %64 = add i64 %60, %63
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %1, align 8
  %67 = call i8* @strchr(i8* %66, i32 13) #7
  store i8* %67, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i8*, i8** %5, align 8
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %70, %58
  %73 = load i8*, i8** %1, align 8
  %74 = call i8* @strchr(i8* %73, i32 10) #7
  store i8* %74, i8** %5, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79, %57, %40, %34, %29, %17
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @close(i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @close(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i8*, i8** %1, align 8
  store i8* %93, i8** @CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68_goodB2GData, align 8
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68b_goodB2GSink to void (...)*)()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #3

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #5

declare dso_local i64 @recv(i32, i8*, i64, i32) #5

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @close(i32) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

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
  call void @CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68b_goodG2BSink() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68_goodG2BData, align 8
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodG2BVaSink(i8* %3, i8* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2BVaSink(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %8)
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_end(i8* %11)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68b_goodB2GSink() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_listen_socket_vfprintf_68_goodB2GData, align 8
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodB2GVaSink(i8* %3, i8* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2GVaSink(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.__va_list_tag* %7)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
