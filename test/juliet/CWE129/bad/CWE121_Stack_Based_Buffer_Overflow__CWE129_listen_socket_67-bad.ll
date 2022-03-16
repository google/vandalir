; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [14 x i8], align 1
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  br label %8

8:                                                ; preds = %0
  %9 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %53

13:                                               ; preds = %8
  %14 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %17 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %18, i16* %19, align 2
  %20 = load i32, i32* %5, align 4
  %21 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %22 = call i32 @bind(i32 %20, %struct.sockaddr* %21, i32 16) #6
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %53

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @listen(i32 %26, i32 5) #6
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %53

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @accept(i32 %31, %struct.sockaddr* null, i32* null)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %53

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %39 = call i64 @recv(i32 %37, i8* %38, i64 13, i32 0)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %36
  br label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 %49
  store i8 0, i8* %50, align 1
  %51 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %52 = call i32 @atoi(i8* %51) #8
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %47, %46, %35, %29, %24, %12
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @close(i32 %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @close(i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %1, align 4
  %67 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %2, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %2, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink(i32 %69)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #4

declare dso_local i64 @recv(i32, i8*, i64, i32) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

declare dso_local i32 @close(i32) #4

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

declare dso_local void @printLine(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67b_badSink(i32 %0) #0 {
  %2 = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  %6 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %2, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_67_structType* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false)
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %14
  store i32 1, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %24, %12
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  call void @printIntLine(i32 %23)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %16

27:                                               ; preds = %16
  br label %29

28:                                               ; preds = %1
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %28, %27
  ret void
}

declare dso_local void @printIntLine(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"ThinLTO", i32 0}
!3 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!4 = !{i32 1, !"LTOPostLink", i32 1}
