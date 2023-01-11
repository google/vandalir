; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_connect_socket_vfprintf_18-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_vfprintf_18_good() #0 {
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
  br label %5

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8
  %7 = call i8* @strcpy(i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %8

8:                                                ; preds = %5
  %9 = load i8*, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodG2BVaSinkB(i8* %9, i8* %10)
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
  %8 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false)
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %9, i8** %1, align 8
  br label %10

10:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  %11 = load i8*, i8** %1, align 8
  %12 = call i64 @strlen(i8* %11) #7
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %10
  %14 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %70

18:                                               ; preds = %13
  %19 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %20, align 4
  %21 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #6
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i32, i32* %6, align 4
  %27 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %28 = call i32 @connect(i32 %26, %struct.sockaddr* %27, i32 16)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %70

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %1, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 100, %36
  %38 = sub i64 %37, 1
  %39 = mul i64 1, %38
  %40 = call i64 @recv(i32 %32, i8* %35, i64 %39, i32 0)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %31
  br label %70

48:                                               ; preds = %44
  %49 = load i8*, i8** %1, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 1
  %54 = add i64 %50, %53
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %1, align 8
  %57 = call i8* @strchr(i8* %56, i32 13) #7
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i8*, i8** %5, align 8
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %60, %48
  %63 = load i8*, i8** %1, align 8
  %64 = call i8* @strchr(i8* %63, i32 10) #7
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69, %47, %30, %17
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @close(i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %1, align 8
  %79 = load i8*, i8** %1, align 8
  call void (i8*, ...) @goodB2GVaSinkG(i8* %78, i8* %79)
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
define internal void @goodB2GVaSinkG(i8* %0, ...) #0 {
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
declare void @llvm.va_start(i8*) #6

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2BVaSinkB(i8* %0, ...) #0 {
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
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_vfprintf_18_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

declare dso_local void @printLine(i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
