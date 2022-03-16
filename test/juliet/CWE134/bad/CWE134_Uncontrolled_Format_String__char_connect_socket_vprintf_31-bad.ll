; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_31-bad.bc'
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
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_31_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 100, i1 false)
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %11, i8** %1, align 8
  store i32 -1, i32* %6, align 4
  %12 = load i8*, i8** %1, align 8
  %13 = call i64 @strlen(i8* %12) #7
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %0
  %15 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %71

19:                                               ; preds = %14
  %20 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %21, align 4
  %22 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #6
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %25, i16* %26, align 2
  %27 = load i32, i32* %6, align 4
  %28 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %29 = call i32 @connect(i32 %27, %struct.sockaddr* %28, i32 16)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %71

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %1, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 100, %37
  %39 = sub i64 %38, 1
  %40 = mul i64 1, %39
  %41 = call i64 @recv(i32 %33, i8* %36, i64 %40, i32 0)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %32
  br label %71

49:                                               ; preds = %45
  %50 = load i8*, i8** %1, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 1
  %55 = add i64 %51, %54
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %1, align 8
  %58 = call i8* @strchr(i8* %57, i32 13) #7
  store i8* %58, i8** %5, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i8*, i8** %5, align 8
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %61, %49
  %64 = load i8*, i8** %1, align 8
  %65 = call i8* @strchr(i8* %64, i32 10) #7
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %68, %63
  br label %71

71:                                               ; preds = %70, %48, %31, %18
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @close(i32 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i8*, i8** %1, align 8
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  call void (i8*, ...) @badVaSink(i8* %80, i8* %81)
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
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_31_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
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
