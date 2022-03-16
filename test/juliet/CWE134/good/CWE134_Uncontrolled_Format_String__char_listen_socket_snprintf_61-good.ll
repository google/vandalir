; ModuleID = './test/Juliet/CWE134/good/CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_61-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_61_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i8* @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_61b_goodG2BSource(i8* %6)
  store i8* %7, i8** %1, align 8
  %8 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false)
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %9, i64 99, i8* %10) #6
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @printLine(i8* %12)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i8* @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_61b_goodB2GSource(i8* %6)
  store i8* %7, i8** %1, align 8
  %8 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false)
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %9, i64 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %10) #6
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @printLine(i8* %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local void @printLine(i8*) #3

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
  call void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_61_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_61b_goodG2BSource(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #6
  %5 = load i8*, i8** %2, align 8
  ret i8* %5
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_61b_goodB2GSource(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* %9) #7
  store i64 %10, i64* %8, align 8
  br label %11

11:                                               ; preds = %1
  %12 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %78

16:                                               ; preds = %11
  %17 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %18, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %21, i16* %22, align 2
  %23 = load i32, i32* %6, align 4
  %24 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %25 = call i32 @bind(i32 %23, %struct.sockaddr* %24, i32 16) #6
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %78

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @listen(i32 %29, i32 5) #6
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %78

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @accept(i32 %34, %struct.sockaddr* null, i32* null)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %78

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %2, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 100, %44
  %46 = sub i64 %45, 1
  %47 = mul i64 1, %46
  %48 = call i64 @recv(i32 %40, i8* %43, i64 %47, i32 0)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %39
  br label %78

56:                                               ; preds = %52
  %57 = load i8*, i8** %2, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 1
  %62 = add i64 %58, %61
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %2, align 8
  %65 = call i8* @strchr(i8* %64, i32 13) #7
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i8*, i8** %5, align 8
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %68, %56
  %71 = load i8*, i8** %2, align 8
  %72 = call i8* @strchr(i8* %71, i32 10) #7
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %75, %70
  br label %78

78:                                               ; preds = %77, %55, %38, %32, %27, %15
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @close(i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @close(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i8*, i8** %2, align 8
  ret i8* %91
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #3

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #4

declare dso_local i32 @close(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
