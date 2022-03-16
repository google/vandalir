; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_listen_socket_printf_34-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.CWE134_Uncontrolled_Format_String__char_listen_socket_printf_34_unionType = type { i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_printf_34_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %union.CWE134_Uncontrolled_Format_String__char_listen_socket_printf_34_unionType, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 100, i1 false)
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  store i8* %12, i8** %1, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %13 = load i8*, i8** %1, align 8
  %14 = call i64 @strlen(i8* %13) #6
  store i64 %14, i64* %9, align 8
  br label %15

15:                                               ; preds = %0
  %16 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %82

20:                                               ; preds = %15
  %21 = bitcast %struct.sockaddr_in* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i16 2, i16* %22, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i16 %25, i16* %26, align 2
  %27 = load i32, i32* %7, align 4
  %28 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %29 = call i32 @bind(i32 %27, %struct.sockaddr* %28, i32 16) #7
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %82

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @listen(i32 %33, i32 5) #7
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %82

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @accept(i32 %38, %struct.sockaddr* null, i32* null)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %82

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %1, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* %9, align 8
  %49 = sub i64 100, %48
  %50 = sub i64 %49, 1
  %51 = mul i64 1, %50
  %52 = call i64 @recv(i32 %44, i8* %47, i64 %51, i32 0)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %43
  br label %82

60:                                               ; preds = %56
  %61 = load i8*, i8** %1, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = udiv i64 %64, 1
  %66 = add i64 %62, %65
  %67 = getelementptr inbounds i8, i8* %61, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %1, align 8
  %69 = call i8* @strchr(i8* %68, i32 13) #6
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i8*, i8** %6, align 8
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %72, %60
  %75 = load i8*, i8** %1, align 8
  %76 = call i8* @strchr(i8* %75, i32 10) #6
  store i8* %76, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %79, %74
  br label %82

82:                                               ; preds = %81, %59, %42, %36, %31, %19
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @close(i32 %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @close(i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i8*, i8** %1, align 8
  %96 = bitcast %union.CWE134_Uncontrolled_Format_String__char_listen_socket_printf_34_unionType* %2 to i8**
  store i8* %95, i8** %96, align 8
  %97 = bitcast %union.CWE134_Uncontrolled_Format_String__char_listen_socket_printf_34_unionType* %2 to i8**
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %10, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 (i8*, ...) @printf(i8* %99)
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

declare dso_local i32 @printf(i8*, ...) #5

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
  call void @CWE134_Uncontrolled_Format_String__char_listen_socket_printf_34_bad()
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
