; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_connect_socket_printf_44-bad.bc'
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
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_printf_44_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca void (i8*)*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store void (i8*)* @badSink, void (i8*)** %2, align 8
  %9 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 100, i1 false)
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  store i8* %10, i8** %1, align 8
  store i32 -1, i32* %7, align 4
  %11 = load i8*, i8** %1, align 8
  %12 = call i64 @strlen(i8* %11) #6
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %0
  %14 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %70

18:                                               ; preds = %13
  %19 = bitcast %struct.sockaddr_in* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i16 2, i16* %20, align 4
  %21 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i32, i32* %7, align 4
  %27 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %28 = call i32 @connect(i32 %26, %struct.sockaddr* %27, i32 16)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %70

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %1, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 100, %36
  %38 = sub i64 %37, 1
  %39 = mul i64 1, %38
  %40 = call i64 @recv(i32 %32, i8* %35, i64 %39, i32 0)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %31
  br label %70

48:                                               ; preds = %44
  %49 = load i8*, i8** %1, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 1
  %54 = add i64 %50, %53
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %1, align 8
  %57 = call i8* @strchr(i8* %56, i32 13) #6
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i8*, i8** %6, align 8
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %60, %48
  %63 = load i8*, i8** %1, align 8
  %64 = call i8* @strchr(i8* %63, i32 10) #6
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69, %47, %30, %17
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @close(i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load void (i8*)*, void (i8*)** %2, align 8
  %78 = load i8*, i8** %1, align 8
  call void %77(i8* %78)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @badSink(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* %3)
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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_printf_44_bad()
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
