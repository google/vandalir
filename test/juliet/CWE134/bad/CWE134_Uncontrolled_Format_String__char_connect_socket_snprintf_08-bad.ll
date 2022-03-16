; ModuleID = './test/Juliet/CWE134/bad/CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_08-bad.bc'
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
define internal void @CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_08_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [100 x i8], align 16
  %9 = bitcast [100 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 100, i1 false)
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  store i8* %10, i8** %1, align 8
  %11 = call i32 @staticReturnsTrue()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %80

13:                                               ; preds = %0
  store i32 -1, i32* %6, align 4
  %14 = load i8*, i8** %1, align 8
  %15 = call i64 @strlen(i8* %14) #6
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %13
  %17 = call i32 @socket(i32 2, i32 1, i32 6) #7
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %73

21:                                               ; preds = %16
  %22 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 16, i1 false)
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %23, align 4
  %24 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = call zeroext i16 @htons(i16 zeroext 27015) #8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %27, i16* %28, align 2
  %29 = load i32, i32* %6, align 4
  %30 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %31 = call i32 @connect(i32 %29, %struct.sockaddr* %30, i32 16)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %73

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %1, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 100, %39
  %41 = sub i64 %40, 1
  %42 = mul i64 1, %41
  %43 = call i64 @recv(i32 %35, i8* %38, i64 %42, i32 0)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %34
  br label %73

51:                                               ; preds = %47
  %52 = load i8*, i8** %1, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 1
  %57 = add i64 %53, %56
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %1, align 8
  %60 = call i8* @strchr(i8* %59, i32 13) #6
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i8*, i8** %5, align 8
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %63, %51
  %66 = load i8*, i8** %1, align 8
  %67 = call i8* @strchr(i8* %66, i32 10) #6
  store i8* %67, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %70, %65
  br label %73

73:                                               ; preds = %72, %50, %33, %20
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @close(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %0
  %81 = call i32 @staticReturnsTrue()
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = bitcast [100 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %84, i8 0, i64 100, i1 false)
  %85 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %86 = load i8*, i8** %1, align 8
  %87 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %85, i64 99, i8* %86) #7
  %88 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  call void @printLine(i8* %88)
  br label %89

89:                                               ; preds = %83, %80
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
  call void @CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_08_bad()
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
