; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_12-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_12_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 100, i1 false)
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %12, i8** %1, align 8
  %13 = call i32 (...) @globalReturnsTrueOrFalse()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %98

15:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %16 = load i8*, i8** %1, align 8
  %17 = call i64 @strlen(i8* %16) #6
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %15
  %19 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %85

23:                                               ; preds = %18
  %24 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 16, i1 false)
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %25, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %28, i16* %29, align 2
  %30 = load i32, i32* %6, align 4
  %31 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %32 = call i32 @bind(i32 %30, %struct.sockaddr* %31, i32 16) #7
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %85

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @listen(i32 %36, i32 5) #7
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %85

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @accept(i32 %41, %struct.sockaddr* null, i32* null)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %85

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %1, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 100, %51
  %53 = sub i64 %52, 1
  %54 = mul i64 1, %53
  %55 = call i64 @recv(i32 %47, i8* %50, i64 %54, i32 0)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %46
  br label %85

63:                                               ; preds = %59
  %64 = load i8*, i8** %1, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %67, 1
  %69 = add i64 %65, %68
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %1, align 8
  %72 = call i8* @strchr(i8* %71, i32 13) #6
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i8*, i8** %5, align 8
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %75, %63
  %78 = load i8*, i8** %1, align 8
  %79 = call i8* @strchr(i8* %78, i32 10) #6
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  store i8 0, i8* %83, align 1
  br label %84

84:                                               ; preds = %82, %77
  br label %85

85:                                               ; preds = %84, %62, %45, %39, %34, %22
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @close(i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @close(i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %101

98:                                               ; preds = %0
  %99 = load i8*, i8** %1, align 8
  %100 = call i8* @strcpy(i8* %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #7
  br label %101

101:                                              ; preds = %98, %97
  %102 = call i32 (...) @globalReturnsTrueOrFalse()
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = bitcast [100 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %105, i8 0, i64 100, i1 false)
  %106 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %107 = load i8*, i8** %1, align 8
  %108 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %106, i64 99, i8* %107) #7
  %109 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  call void @printLine(i8* %109)
  br label %116

110:                                              ; preds = %101
  %111 = bitcast [100 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %111, i8 0, i64 100, i1 false)
  %112 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %113 = load i8*, i8** %1, align 8
  %114 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %112, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %113) #7
  %115 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  call void @printLine(i8* %115)
  br label %116

116:                                              ; preds = %110, %104
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #4

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #4

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #3

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #4

declare dso_local void @printLine(i8*) #2

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_12_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local void @srand(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
