; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_connect_socket_vfprintf_42-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_vfprintf_42_good() #0 {
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
  %6 = call i8* @goodG2BSource(i8* %5)
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodG2BVaSink(i8* %7, i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 100, i1 false)
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i8* @goodB2GSource(i8* %5)
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodB2GVaSink(i8* %7, i8* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @goodB2GSource(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %6, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* %8) #7
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %1
  %11 = call i32 @socket(i32 2, i32 1, i32 6) #2
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %67

15:                                               ; preds = %10
  %16 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %17, align 4
  %18 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #2
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %21, i16* %22, align 2
  %23 = load i32, i32* %6, align 4
  %24 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %25 = call i32 @connect(i32 %23, %struct.sockaddr* %24, i32 16)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %67

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 100, %33
  %35 = sub i64 %34, 1
  %36 = mul i64 1, %35
  %37 = call i64 @recv(i32 %29, i8* %32, i64 %36, i32 0)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %28
  br label %67

45:                                               ; preds = %41
  %46 = load i8*, i8** %2, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 1
  %51 = add i64 %47, %50
  %52 = getelementptr inbounds i8, i8* %46, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %2, align 8
  %54 = call i8* @strchr(i8* %53, i32 13) #7
  store i8* %54, i8** %5, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i8*, i8** %5, align 8
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %45
  %60 = load i8*, i8** %2, align 8
  %61 = call i8* @strchr(i8* %60, i32 10) #7
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %64, %59
  br label %67

67:                                               ; preds = %66, %44, %27, %14
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @close(i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
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
  %8 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %7)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #5

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #5

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #6

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #3

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #4

declare dso_local i32 @close(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @goodG2BSource(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #2
  %5 = load i8*, i8** %2, align 8
  ret i8* %5
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
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* null) #2
  %7 = trunc i64 %6 to i32
  call void @srand(i32 %7) #2
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_vfprintf_42_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #5

declare dso_local void @printLine(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
