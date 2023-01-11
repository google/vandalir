; ModuleID = './test/Juliet/CWE129/bad/CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_21-bad.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@badStatic = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_21_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [14 x i8], align 1
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  br label %7

7:                                                ; preds = %0
  %8 = call i32 @socket(i32 2, i32 1, i32 6) #6
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %52

12:                                               ; preds = %7
  %13 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %14, align 4
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = call zeroext i16 @htons(i16 zeroext 27015) #7
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %17, i16* %18, align 2
  %19 = load i32, i32* %4, align 4
  %20 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %21 = call i32 @bind(i32 %19, %struct.sockaddr* %20, i32 16) #6
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %52

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @listen(i32 %25, i32 5) #6
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %52

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @accept(i32 %30, %struct.sockaddr* null, i32* null)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %52

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %38 = call i64 @recv(i32 %36, i8* %37, i64 13, i32 0)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %35
  br label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 %48
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %51 = call i32 @atoi(i8* %50) #8
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %46, %45, %34, %28, %23, %11
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @close(i32 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @close(i32 %62)
  br label %64

64:                                               ; preds = %61, %58
  store i32 1, i32* @badStatic, align 4
  %65 = load i32, i32* %1, align 4
  call void @badSink(i32 %65)
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
define internal void @badSink(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i32], align 16
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @badStatic, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = bitcast [10 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false)
  %9 = load i32, i32* %2, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %13
  store i32 1, i32* %14, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %23, %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  call void @printIntLine(i32 %22)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %15

26:                                               ; preds = %15
  br label %28

27:                                               ; preds = %7
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

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
  call void @printLine(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_21_bad()
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
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
