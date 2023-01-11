; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_listen_socket_vprintf_32-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_vprintf_32_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8** %1, i8*** %2, align 8
  store i8** %1, i8*** %3, align 8
  %13 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 100, i1 false)
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %14, i8** %1, align 8
  %15 = load i8**, i8*** %2, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17) #7
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %0
  %20 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %86

24:                                               ; preds = %19
  %25 = bitcast %struct.sockaddr_in* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %26, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %28 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  %31 = load i32, i32* %9, align 4
  %32 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %33 = call i32 @bind(i32 %31, %struct.sockaddr* %32, i32 16) #6
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %86

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @listen(i32 %37, i32 5) #6
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %86

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @accept(i32 %42, %struct.sockaddr* null, i32* null)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %86

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i64, i64* %11, align 8
  %53 = sub i64 100, %52
  %54 = sub i64 %53, 1
  %55 = mul i64 1, %54
  %56 = call i64 @recv(i32 %48, i8* %51, i64 %55, i32 0)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %63, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %47
  br label %86

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %68, 1
  %70 = add i64 %66, %69
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %5, align 8
  %73 = call i8* @strchr(i8* %72, i32 13) #7
  store i8* %73, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i8*, i8** %8, align 8
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %76, %64
  %79 = load i8*, i8** %5, align 8
  %80 = call i8* @strchr(i8* %79, i32 10) #7
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  store i8 0, i8* %84, align 1
  br label %85

85:                                               ; preds = %83, %78
  br label %86

86:                                               ; preds = %85, %63, %46, %40, %35, %23
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @close(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @close(i32 %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i8*, i8** %5, align 8
  %100 = load i8**, i8*** %2, align 8
  store i8* %99, i8** %100, align 8
  %101 = load i8**, i8*** %3, align 8
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %12, align 8
  call void (i8*, ...) @badVaSink(i8* %103, i8* %104)
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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_listen_socket_vprintf_32_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
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
