; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca [14 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  br label %8

8:                                                ; preds = %0
  store i32 -1, i32* %4, align 4
  br label %9

9:                                                ; preds = %8
  %10 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %44

14:                                               ; preds = %9
  %15 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %16, align 4
  %17 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #6
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %20, i16* %21, align 2
  %22 = load i32, i32* %4, align 4
  %23 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %24 = call i32 @connect(i32 %22, %struct.sockaddr* %23, i32 16)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %44

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %30 = call i64 @recv(i32 %28, i8* %29, i64 13, i32 0)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %27
  br label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %43 = call i32 @atoi(i8* %42) #8
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %38, %37, %26, %13
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @close(i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %53, i8 0, i64 40, i1 false)
  %54 = load i32, i32* %1, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %58
  store i32 1, i32* %59, align 4
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %68, %56
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 10
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  call void @printIntLine(i32 %67)
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %60

71:                                               ; preds = %60
  br label %73

72:                                               ; preds = %52
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #1

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #3

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #4

declare dso_local i64 @recv(i32, i8*, i64, i32) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

declare dso_local i32 @close(i32) #4

declare dso_local void @printIntLine(i32) #4

declare dso_local void @printLine(i8*) #4

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_16_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
