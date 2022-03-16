; ModuleID = './test/Juliet/CWE129/good/CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_18-good.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_18_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [14 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  br label %9

9:                                                ; preds = %0
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  br label %10

10:                                               ; preds = %9
  %11 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %55

15:                                               ; preds = %10
  %16 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %17, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %20, i16* %21, align 2
  %22 = load i32, i32* %4, align 4
  %23 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %24 = call i32 @bind(i32 %22, %struct.sockaddr* %23, i32 16) #6
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %55

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @listen(i32 %28, i32 5) #6
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %55

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @accept(i32 %33, %struct.sockaddr* null, i32* null)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %55

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %41 = call i64 @recv(i32 %39, i8* %40, i64 13, i32 0)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %38
  br label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 %51
  store i8 0, i8* %52, align 1
  %53 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %54 = call i32 @atoi(i8* %53) #8
  store i32 %54, i32* %1, align 4
  br label %55

55:                                               ; preds = %49, %48, %37, %31, %26, %14
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @close(i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @close(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67
  %69 = bitcast [10 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %69, i8 0, i64 40, i1 false)
  %70 = load i32, i32* %1, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load i32, i32* %1, align 4
  %74 = icmp slt i32 %73, 10
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %77
  store i32 1, i32* %78, align 4
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %87, %75
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 10
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  call void @printIntLine(i32 %86)
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %79

90:                                               ; preds = %79
  br label %92

91:                                               ; preds = %72, %68
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %91, %90
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  store i32 -1, i32* %1, align 4
  br label %4

4:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %5

5:                                                ; preds = %4
  %6 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false)
  %7 = load i32, i32* %1, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %11
  store i32 1, i32* %12, align 4
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %21, %9
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  call void @printIntLine(i32 %20)
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %13

24:                                               ; preds = %13
  br label %26

25:                                               ; preds = %5
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %25, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare dso_local zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #3

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

declare dso_local i32 @close(i32) #2

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
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_18_good()
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
