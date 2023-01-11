; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_17-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_17_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [100 x i8], align 16
  %11 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 100, i1 false)
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %12, i8** %3, align 8
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %83, %0
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %86

16:                                               ; preds = %13
  store i32 -1, i32* %8, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strlen(i8* %17) #6
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %16
  %20 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %76

24:                                               ; preds = %19
  %25 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %26, align 4
  %27 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  %32 = load i32, i32* %8, align 4
  %33 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %34 = call i32 @connect(i32 %32, %struct.sockaddr* %33, i32 16)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %76

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 100, %42
  %44 = sub i64 %43, 1
  %45 = mul i64 1, %44
  %46 = call i64 @recv(i32 %38, i8* %41, i64 %45, i32 0)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %37
  br label %76

54:                                               ; preds = %50
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 1
  %60 = add i64 %56, %59
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %3, align 8
  %63 = call i8* @strchr(i8* %62, i32 13) #6
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i8*, i8** %7, align 8
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %54
  %69 = load i8*, i8** %3, align 8
  %70 = call i8* @strchr(i8* %69, i32 10) #6
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %73, %68
  br label %76

76:                                               ; preds = %75, %53, %36, %23
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @close(i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %1, align 4
  br label %13

86:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %96, %86
  %88 = load i32, i32* %2, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = bitcast [100 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %91, i8 0, i64 100, i1 false)
  %92 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %92, i64 99, i8* %93) #7
  %95 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  call void @printLine(i8* %95)
  br label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %2, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %2, align 4
  br label %87

99:                                               ; preds = %87
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

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

declare dso_local void @printLine(i8*) #5

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_17_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

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
