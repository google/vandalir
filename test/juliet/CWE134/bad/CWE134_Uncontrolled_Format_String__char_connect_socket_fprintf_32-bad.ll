; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_connect_socket_fprintf_32-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_fprintf_32_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8** %1, i8*** %2, align 8
  store i8** %1, i8*** %3, align 8
  %12 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 100, i1 false)
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %13, i8** %1, align 8
  %14 = load i8**, i8*** %2, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  store i32 -1, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16) #6
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %0
  %19 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %75

23:                                               ; preds = %18
  %24 = bitcast %struct.sockaddr_in* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 16, i1 false)
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %25, align 4
  %26 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %28 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  %31 = load i32, i32* %9, align 4
  %32 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %33 = call i32 @connect(i32 %31, %struct.sockaddr* %32, i32 16)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %75

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i64, i64* %10, align 8
  %42 = sub i64 100, %41
  %43 = sub i64 %42, 1
  %44 = mul i64 1, %43
  %45 = call i64 @recv(i32 %37, i8* %40, i64 %44, i32 0)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %52, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %36
  br label %75

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 1
  %59 = add i64 %55, %58
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = call i8* @strchr(i8* %61, i32 13) #6
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i8*, i8** %8, align 8
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %65, %53
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @strchr(i8* %68, i32 10) #6
  store i8* %69, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %74, %52, %35, %22
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @close(i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i8*, i8** %5, align 8
  %83 = load i8**, i8*** %2, align 8
  store i8* %82, i8** %83, align 8
  %84 = load i8**, i8*** %3, align 8
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %11, align 8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* %87)
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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_fprintf_32_bad()
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
