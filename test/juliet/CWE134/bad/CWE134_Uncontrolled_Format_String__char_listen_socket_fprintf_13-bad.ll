; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_listen_socket_fprintf_13-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@GLOBAL_CONST_FIVE = external dso_local constant i32, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_fprintf_13_bad() #0 {
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
  %11 = load i32, i32* @GLOBAL_CONST_FIVE, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %96

13:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %14 = load i8*, i8** %1, align 8
  %15 = call i64 @strlen(i8* %14) #6
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %13
  %17 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %83

21:                                               ; preds = %16
  %22 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 16, i1 false)
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %23, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %25 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %26, i16* %27, align 2
  %28 = load i32, i32* %6, align 4
  %29 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %30 = call i32 @bind(i32 %28, %struct.sockaddr* %29, i32 16) #7
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %83

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @listen(i32 %34, i32 5) #7
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %83

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @accept(i32 %39, %struct.sockaddr* null, i32* null)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %83

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %1, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 100, %49
  %51 = sub i64 %50, 1
  %52 = mul i64 1, %51
  %53 = call i64 @recv(i32 %45, i8* %48, i64 %52, i32 0)
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %44
  br label %83

61:                                               ; preds = %57
  %62 = load i8*, i8** %1, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %65, 1
  %67 = add i64 %63, %66
  %68 = getelementptr inbounds i8, i8* %62, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** %1, align 8
  %70 = call i8* @strchr(i8* %69, i32 13) #6
  store i8* %70, i8** %5, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i8*, i8** %5, align 8
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %73, %61
  %76 = load i8*, i8** %1, align 8
  %77 = call i8* @strchr(i8* %76, i32 10) #6
  store i8* %77, i8** %5, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  store i8 0, i8* %81, align 1
  br label %82

82:                                               ; preds = %80, %75
  br label %83

83:                                               ; preds = %82, %60, %43, %37, %32, %20
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @close(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @close(i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %0
  %97 = load i32, i32* @GLOBAL_CONST_FIVE, align 4
  %98 = icmp eq i32 %97, 5
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %101 = load i8*, i8** %1, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* %101)
  br label %103

103:                                              ; preds = %99, %96
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

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_listen_socket_fprintf_13_bad()
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
