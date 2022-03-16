target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._gatt_connection_t = type { i8*, void (%struct.uuid_t*, i8*, i64, i8*)*, i8*, void (%struct.uuid_t*, i8*, i64, i8*)*, i8* }
%struct.uuid_t = type { i8, %union.anon }
%union.anon = type { i32, [12 x i8] }
%struct.gattlib_primary_service_t = type { i16, i16, %struct.uuid_t }
%struct.gattlib_characteristic_t = type { i16, i8, i16, %struct.uuid_t }

@.str = private unnamed_addr constant [21 x i8] c"%s <device_address>\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Fail to connect to the bluetooth device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Fail to discover primary services.\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"service[%d] start_handle:%02x end_handle:%02x uuid:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Fail to discover characteristics.\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"characteristic[%d] properties:%02x value_handle:%04x uuid:%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._gatt_connection_t*, align 8
  %7 = alloca %struct.gattlib_primary_service_t*, align 8
  %8 = alloca %struct.gattlib_characteristic_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [38 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* %19)
  store i32 1, i32* %3, align 4
  br label %120

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call %struct._gatt_connection_t* @gattlib_connect(i8* null, i8* %24, i8 zeroext 1, i32 1, i32 0, i32 0)
  store %struct._gatt_connection_t* %25, %struct._gatt_connection_t** %6, align 8
  %26 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %6, align 8
  %27 = icmp eq %struct._gatt_connection_t* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %120

31:                                               ; preds = %21
  %32 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %6, align 8
  %33 = call i32 @gattlib_discover_primary(%struct._gatt_connection_t* %32, %struct.gattlib_primary_service_t** %7, i32* %9)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %120

39:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %69, %39
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.gattlib_primary_service_t*, %struct.gattlib_primary_service_t** %7, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %45, i64 %47
  %49 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %48, i32 0, i32 2
  %50 = getelementptr inbounds [38 x i8], [38 x i8]* %11, i32 0, i32 0
  %51 = call i32 @gattlib_uuid_to_string(%struct.uuid_t* %49, i8* %50, i64 38)
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.gattlib_primary_service_t*, %struct.gattlib_primary_service_t** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %53, i64 %55
  %57 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %56, i32 0, i32 0
  %58 = load i16, i16* %57, align 4
  %59 = zext i16 %58 to i32
  %60 = load %struct.gattlib_primary_service_t*, %struct.gattlib_primary_service_t** %7, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %60, i64 %62
  %64 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %63, i32 0, i32 1
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds [38 x i8], [38 x i8]* %11, i32 0, i32 0
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0), i32 %52, i32 %59, i32 %66, i8* %67)
  br label %69

69:                                               ; preds = %44
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %40

72:                                               ; preds = %40
  %73 = load %struct.gattlib_primary_service_t*, %struct.gattlib_primary_service_t** %7, align 8
  %74 = bitcast %struct.gattlib_primary_service_t* %73 to i8*
  call void @free(i8* %74) #3
  %75 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %6, align 8
  %76 = call i32 @gattlib_discover_char(%struct._gatt_connection_t* %75, %struct.gattlib_characteristic_t** %8, i32* %10)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %3, align 4
  br label %120

82:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %112, %82
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %115

87:                                               ; preds = %83
  %88 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %8, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %88, i64 %90
  %92 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %91, i32 0, i32 3
  %93 = getelementptr inbounds [38 x i8], [38 x i8]* %11, i32 0, i32 0
  %94 = call i32 @gattlib_uuid_to_string(%struct.uuid_t* %92, i8* %93, i64 38)
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %8, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %96, i64 %98
  %100 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %99, i32 0, i32 1
  %101 = load i8, i8* %100, align 2
  %102 = zext i8 %101 to i32
  %103 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %8, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %103, i64 %105
  %107 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %106, i32 0, i32 2
  %108 = load i16, i16* %107, align 4
  %109 = zext i16 %108 to i32
  %110 = getelementptr inbounds [38 x i8], [38 x i8]* %11, i32 0, i32 0
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i32 0, i32 0), i32 %95, i32 %102, i32 %109, i8* %110)
  br label %112

112:                                              ; preds = %87
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %83

115:                                              ; preds = %83
  %116 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %8, align 8
  %117 = bitcast %struct.gattlib_characteristic_t* %116 to i8*
  call void @free(i8* %117) #3
  %118 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %6, align 8
  %119 = call i32 @gattlib_disconnect(%struct._gatt_connection_t* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %115, %79, %36, %28, %16
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare i32 @printf(i8*, ...) #1

declare %struct._gatt_connection_t* @gattlib_connect(i8*, i8*, i8 zeroext, i32, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @gattlib_discover_primary(%struct._gatt_connection_t*, %struct.gattlib_primary_service_t**, i32*) #1

declare i32 @gattlib_uuid_to_string(%struct.uuid_t*, i8*, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @gattlib_discover_char(%struct._gatt_connection_t*, %struct.gattlib_characteristic_t**, i32*) #1

declare i32 @gattlib_disconnect(%struct._gatt_connection_t*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
