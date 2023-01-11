; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType = type { i32 }
%struct.sockaddr_in = type { i16, i16, %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }

@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 7, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %2 to i32*
  store i32 %6, i32* %7, align 4
  %8 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %2 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false)
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %0
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %15
  store i32 1, i32* %16, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %25, %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  call void @printIntLine(i32 %24)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %17

28:                                               ; preds = %17
  br label %30

29:                                               ; preds = %0
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %28
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = alloca [14 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %5, align 4
  br label %10

10:                                               ; preds = %0
  %11 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %45

15:                                               ; preds = %10
  %16 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i16 2, i16* %17, align 4
  %18 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #6
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  %20 = getelementptr inbounds %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType, %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  store i16 %21, i16* %22, align 2
  %23 = load i32, i32* %5, align 4
  %24 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %25 = call i32 @connect(i32 %23, %struct.sockaddr* %24, i32 16)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %45

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %31 = call i64 @recv(i32 %29, i8* %30, i64 13, i32 0)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %28
  br label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 %41
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %44 = call i32 @atoi(i8* %43) #8
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %39, %38, %27, %14
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @close(i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %1, align 4
  %53 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %2 to i32*
  store i32 %52, i32* %53, align 4
  %54 = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_unionType* %2 to i32*
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = bitcast [10 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %56, i8 0, i64 40, i1 false)
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 10
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %64
  store i32 1, i32* %65, align 4
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %74, %62
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 10
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  call void @printIntLine(i32 %73)
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %66

77:                                               ; preds = %66
  br label %79

78:                                               ; preds = %59, %51
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %78, %77
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
  call void @printLine(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_34_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
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
