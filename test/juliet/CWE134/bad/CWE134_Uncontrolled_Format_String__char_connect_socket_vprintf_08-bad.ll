; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_08-bad.bc'
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
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_08_bad() #0 {
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
  %10 = call i32 @staticReturnsTrue()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  %13 = load i8*, i8** %1, align 8
  %14 = call i64 @strlen(i8* %13) #7
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %12
  %16 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %72

20:                                               ; preds = %15
  %21 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %22, align 4
  %23 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #6
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %25 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = load i32, i32* %6, align 4
  %29 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %30 = call i32 @connect(i32 %28, %struct.sockaddr* %29, i32 16)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %72

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %1, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 100, %38
  %40 = sub i64 %39, 1
  %41 = mul i64 1, %40
  %42 = call i64 @recv(i32 %34, i8* %37, i64 %41, i32 0)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %33
  br label %72

50:                                               ; preds = %46
  %51 = load i8*, i8** %1, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 1
  %56 = add i64 %52, %55
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %1, align 8
  %59 = call i8* @strchr(i8* %58, i32 13) #7
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i8*, i8** %5, align 8
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %62, %50
  %65 = load i8*, i8** %1, align 8
  %66 = call i8* @strchr(i8* %65, i32 10) #7
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %69, %64
  br label %72

72:                                               ; preds = %71, %49, %32, %19
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @close(i32 %76)
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %0
  %80 = call i32 @staticReturnsTrue()
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** %1, align 8
  %84 = load i8*, i8** %1, align 8
  call void (i8*, ...) @badVaSinkB(i8* %83, i8* %84)
  br label %85

85:                                               ; preds = %82, %79
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @staticReturnsTrue() #0 {
  ret i32 1
}

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
define internal void @badVaSinkB(i8* %0, ...) #0 {
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
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_vprintf_08_bad()
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
