; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_32-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_32_bad() #0 {
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
  %13 = alloca [100 x i8], align 16
  store i8** %1, i8*** %2, align 8
  store i8** %1, i8*** %3, align 8
  %14 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 100, i1 false)
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %15, i8** %1, align 8
  %16 = load i8**, i8*** %2, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strlen(i8* %18) #6
  store i64 %19, i64* %11, align 8
  br label %20

20:                                               ; preds = %0
  %21 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %87

25:                                               ; preds = %20
  %26 = bitcast %struct.sockaddr_in* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  %32 = load i32, i32* %9, align 4
  %33 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %34 = call i32 @bind(i32 %32, %struct.sockaddr* %33, i32 16) #7
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %87

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @listen(i32 %38, i32 5) #7
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %87

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @accept(i32 %43, %struct.sockaddr* null, i32* null)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %87

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i64, i64* %11, align 8
  %54 = sub i64 100, %53
  %55 = sub i64 %54, 1
  %56 = mul i64 1, %55
  %57 = call i64 @recv(i32 %49, i8* %52, i64 %56, i32 0)
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %64, label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %48
  br label %87

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = udiv i64 %69, 1
  %71 = add i64 %67, %70
  %72 = getelementptr inbounds i8, i8* %66, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %5, align 8
  %74 = call i8* @strchr(i8* %73, i32 13) #6
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i8*, i8** %8, align 8
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %77, %65
  %80 = load i8*, i8** %5, align 8
  %81 = call i8* @strchr(i8* %80, i32 10) #6
  store i8* %81, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i8*, i8** %8, align 8
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %84, %79
  br label %87

87:                                               ; preds = %86, %64, %47, %41, %36, %24
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @close(i32 %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @close(i32 %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i8*, i8** %5, align 8
  %101 = load i8**, i8*** %2, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i8**, i8*** %3, align 8
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %12, align 8
  %104 = bitcast [100 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %104, i8 0, i64 100, i1 false)
  %105 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %105, i64 99, i8* %106) #7
  %108 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  call void @printLine(i8* %108)
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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_32_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
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
