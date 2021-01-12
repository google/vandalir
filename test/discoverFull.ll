; ModuleID = './discoverFull.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._OrgBluezAdapter1 = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GCancellablePrivate = type opaque
%struct._GDBusObjectManager = type opaque
%struct._GDBusObject = type opaque
%struct._GDBusInterface = type opaque
%struct._OrgBluezDevice1 = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GMainLoop = type opaque
%struct._GDBusObjectManagerClient = type { %struct._GObject, %struct._GDBusObjectManagerClientPrivate* }
%struct._GDBusObjectManagerClientPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %struct._GTypeClass] }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GMainContext = type opaque
%struct._OrgBluezGattCharacteristic1 = type opaque
%struct._GVariant = type opaque
%struct._GVariantIter = type { [16 x i64] }
%struct._gatt_connection_t = type { i8*, void (%struct.uuid_t*, i8*, i64, i8*)*, i8*, void (%struct.uuid_t*, i8*, i64, i8*)*, i8* }
%struct.uuid_t = type { i8, %union.anon.0 }
%union.anon.0 = type { i32, [12 x i8] }
%struct.gattlib_context_t = type { i8*, %struct._OrgBluezDevice1* }
%struct.gattlib_primary_service_t = type { i16, i16, %struct.uuid_t }
%struct._OrgBluezGattService1 = type opaque
%struct.gattlib_characteristic_t = type { i16, i8, i16, %struct.uuid_t }
%struct._GVariantBuilder = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { i64, %struct._GVariantType*, [14 x i64] }
%struct._GVariantType = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/org/bluez/%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"/org/bluez/hci0\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"org.bluez\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to get adapter %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"org.bluez.Device1\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to get Bluez Device Manager.\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"object-added\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"a{sv}\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"{&sv}\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"UUIDs\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"hci0\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"/org/bluez/%s/dev_%s\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Device connected error: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"g-properties-changed\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"org.bluez.GattService1\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Failed to open service '%s'.\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"org.bluez.GattCharacteristic1\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Failed to open characteristic '%s'.\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"write-without-response\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"indicate\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"ay\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"%s <device_address>\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1.28 = private unnamed_addr constant [42 x i8] c"Fail to connect to the bluetooth device.\0A\00", align 1
@.str.2.29 = private unnamed_addr constant [36 x i8] c"Fail to discover primary services.\0A\00", align 1
@.str.3.30 = private unnamed_addr constant [55 x i8] c"service[%d] start_handle:%02x end_handle:%02x uuid:%s\0A\00", align 1
@.str.4.31 = private unnamed_addr constant [35 x i8] c"Fail to discover characteristics.\0A\00", align 1
@.str.5.32 = private unnamed_addr constant [62 x i8] c"characteristic[%d] properties:%02x value_handle:%04x uuid:%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_adapter_open(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca %struct._OrgBluezAdapter1*, align 8
  %8 = alloca %struct._GError*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct._GError* null, %struct._GError** %8, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %12, i64 20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %13) #6
  br label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0
  %17 = call i8* @strncpy(i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i64 20) #6
  br label %18

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0
  %20 = call %struct._OrgBluezAdapter1* @org_bluez_adapter1_proxy_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %19, %struct._GCancellable* null, %struct._GError** %8)
  store %struct._OrgBluezAdapter1* %20, %struct._OrgBluezAdapter1** %7, align 8
  %21 = load %struct._OrgBluezAdapter1*, %struct._OrgBluezAdapter1** %7, align 8
  %22 = icmp eq %struct._OrgBluezAdapter1* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* %24)
  store i32 1, i32* %3, align 4
  br label %31

26:                                               ; preds = %18
  %27 = load %struct._OrgBluezAdapter1*, %struct._OrgBluezAdapter1** %7, align 8
  call void @org_bluez_adapter1_set_powered(%struct._OrgBluezAdapter1* %27, i32 1)
  %28 = load %struct._OrgBluezAdapter1*, %struct._OrgBluezAdapter1** %7, align 8
  %29 = bitcast %struct._OrgBluezAdapter1* %28 to i8*
  %30 = load i8**, i8*** %5, align 8
  store i8* %29, i8** %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare %struct._OrgBluezAdapter1* @org_bluez_adapter1_proxy_new_for_bus_sync(i32, i32, i8*, i8*, %struct._GCancellable*, %struct._GError**) #2

declare i32 @printf(i8*, ...) #2

declare void @org_bluez_adapter1_set_powered(%struct._OrgBluezAdapter1*, i32) #2

; Function Attrs: noinline nounwind uwtable
define void @on_dbus_object_added(%struct._GDBusObjectManager* %0, %struct._GDBusObject* %1, i8* %2) #0 {
  %4 = alloca %struct._GDBusObjectManager*, align 8
  %5 = alloca %struct._GDBusObject*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GDBusInterface*, align 8
  %9 = alloca %struct._GError*, align 8
  %10 = alloca %struct._OrgBluezDevice1*, align 8
  %11 = alloca void (i8*, i8*)*, align 8
  store %struct._GDBusObjectManager* %0, %struct._GDBusObjectManager** %4, align 8
  store %struct._GDBusObject* %1, %struct._GDBusObject** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct._GDBusObject*, %struct._GDBusObject** %5, align 8
  %13 = bitcast %struct._GDBusObject* %12 to %struct._GTypeInstance*
  %14 = call i64 @g_dbus_object_get_type() #7
  %15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %14)
  %16 = bitcast %struct._GTypeInstance* %15 to %struct._GDBusObject*
  %17 = call i8* @g_dbus_object_get_object_path(%struct._GDBusObject* %16)
  store i8* %17, i8** %7, align 8
  %18 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %4, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call %struct._GDBusInterface* @g_dbus_object_manager_get_interface(%struct._GDBusObjectManager* %18, i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GDBusInterface* %20, %struct._GDBusInterface** %8, align 8
  %21 = load %struct._GDBusInterface*, %struct._GDBusInterface** %8, align 8
  %22 = icmp ne %struct._GDBusInterface* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %39

24:                                               ; preds = %3
  store %struct._GError* null, %struct._GError** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct._OrgBluezDevice1* @org_bluez_device1_proxy_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %25, %struct._GCancellable* null, %struct._GError** %9)
  store %struct._OrgBluezDevice1* %26, %struct._OrgBluezDevice1** %10, align 8
  %27 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %10, align 8
  %28 = icmp ne %struct._OrgBluezDevice1* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to void (i8*, i8*)*
  store void (i8*, i8*)* %31, void (i8*, i8*)** %11, align 8
  %32 = load void (i8*, i8*)*, void (i8*, i8*)** %11, align 8
  %33 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %10, align 8
  %34 = call i8* @org_bluez_device1_get_address(%struct._OrgBluezDevice1* %33)
  %35 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %10, align 8
  %36 = call i8* @org_bluez_device1_get_name(%struct._OrgBluezDevice1* %35)
  call void %32(i8* %34, i8* %36)
  %37 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %10, align 8
  %38 = bitcast %struct._OrgBluezDevice1* %37 to i8*
  call void @g_object_unref(i8* %38)
  br label %39

39:                                               ; preds = %23, %29, %24
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @g_dbus_object_get_type() #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

declare i8* @g_dbus_object_get_object_path(%struct._GDBusObject*) #2

declare %struct._GDBusInterface* @g_dbus_object_manager_get_interface(%struct._GDBusObjectManager*, i8*, i8*) #2

declare %struct._OrgBluezDevice1* @org_bluez_device1_proxy_new_for_bus_sync(i32, i32, i8*, i8*, %struct._GCancellable*, %struct._GError**) #2

declare i8* @org_bluez_device1_get_address(%struct._OrgBluezDevice1*) #2

declare i8* @org_bluez_device1_get_name(%struct._OrgBluezDevice1*) #2

declare void @g_object_unref(i8*) #2

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_adapter_scan_enable(i8* %0, void (i8*, i8*)* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, i8*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GDBusObjectManager*, align 8
  %9 = alloca %struct._GError*, align 8
  %10 = alloca %struct._GList*, align 8
  %11 = alloca %struct._GList*, align 8
  %12 = alloca %struct._GDBusObject*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._GDBusInterface*, align 8
  %15 = alloca %struct._OrgBluezDevice1*, align 8
  %16 = alloca %struct._GMainLoop*, align 8
  store i8* %0, i8** %5, align 8
  store void (i8*, i8*)* %1, void (i8*, i8*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct._GError* null, %struct._GError** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct._OrgBluezAdapter1*
  %19 = call i32 @org_bluez_adapter1_call_start_discovery_sync(%struct._OrgBluezAdapter1* %18, %struct._GCancellable* null, %struct._GError** %9)
  %20 = call %struct._GDBusObjectManager* @g_dbus_object_manager_client_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i64 (%struct._GDBusObjectManagerClient*, i8*, i8*, i8*)* null, i8* null, void (i8*)* null, %struct._GCancellable* null, %struct._GError** %9)
  store %struct._GDBusObjectManager* %20, %struct._GDBusObjectManager** %8, align 8
  %21 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %8, align 8
  %22 = icmp eq %struct._GDBusObjectManager* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %4, align 4
  br label %87

25:                                               ; preds = %3
  %26 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %8, align 8
  %27 = call %struct._GList* @g_dbus_object_manager_get_objects(%struct._GDBusObjectManager* %26)
  store %struct._GList* %27, %struct._GList** %10, align 8
  %28 = load %struct._GList*, %struct._GList** %10, align 8
  store %struct._GList* %28, %struct._GList** %11, align 8
  br label %29

29:                                               ; preds = %63, %25
  %30 = load %struct._GList*, %struct._GList** %11, align 8
  %31 = icmp ne %struct._GList* %30, null
  br i1 %31, label %32, label %67

32:                                               ; preds = %29
  %33 = load %struct._GList*, %struct._GList** %11, align 8
  %34 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct._GDBusObject*
  store %struct._GDBusObject* %36, %struct._GDBusObject** %12, align 8
  %37 = load %struct._GDBusObject*, %struct._GDBusObject** %12, align 8
  %38 = bitcast %struct._GDBusObject* %37 to %struct._GTypeInstance*
  %39 = call i64 @g_dbus_object_get_type() #7
  %40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %39)
  %41 = bitcast %struct._GTypeInstance* %40 to %struct._GDBusObject*
  %42 = call i8* @g_dbus_object_get_object_path(%struct._GDBusObject* %41)
  store i8* %42, i8** %13, align 8
  %43 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %8, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = call %struct._GDBusInterface* @g_dbus_object_manager_get_interface(%struct._GDBusObjectManager* %43, i8* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GDBusInterface* %45, %struct._GDBusInterface** %14, align 8
  %46 = load %struct._GDBusInterface*, %struct._GDBusInterface** %14, align 8
  %47 = icmp ne %struct._GDBusInterface* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %32
  br label %63

49:                                               ; preds = %32
  store %struct._GError* null, %struct._GError** %9, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call %struct._OrgBluezDevice1* @org_bluez_device1_proxy_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %50, %struct._GCancellable* null, %struct._GError** %9)
  store %struct._OrgBluezDevice1* %51, %struct._OrgBluezDevice1** %15, align 8
  %52 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %15, align 8
  %53 = icmp ne %struct._OrgBluezDevice1* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load void (i8*, i8*)*, void (i8*, i8*)** %6, align 8
  %56 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %15, align 8
  %57 = call i8* @org_bluez_device1_get_address(%struct._OrgBluezDevice1* %56)
  %58 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %15, align 8
  %59 = call i8* @org_bluez_device1_get_name(%struct._OrgBluezDevice1* %58)
  call void %55(i8* %57, i8* %59)
  %60 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %15, align 8
  %61 = bitcast %struct._OrgBluezDevice1* %60 to i8*
  call void @g_object_unref(i8* %61)
  br label %62

62:                                               ; preds = %54, %49
  br label %63

63:                                               ; preds = %62, %48
  %64 = load %struct._GList*, %struct._GList** %11, align 8
  %65 = getelementptr inbounds %struct._GList, %struct._GList* %64, i32 0, i32 1
  %66 = load %struct._GList*, %struct._GList** %65, align 8
  store %struct._GList* %66, %struct._GList** %11, align 8
  br label %29

67:                                               ; preds = %29
  %68 = load %struct._GList*, %struct._GList** %10, align 8
  call void @g_list_free_full(%struct._GList* %68, void (i8*)* @g_object_unref)
  %69 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %8, align 8
  %70 = bitcast %struct._GDBusObjectManager* %69 to %struct._GTypeInstance*
  %71 = call i64 @g_dbus_object_manager_get_type() #7
  %72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %71)
  %73 = bitcast %struct._GTypeInstance* %72 to %struct._GDBusObjectManager*
  %74 = bitcast %struct._GDBusObjectManager* %73 to i8*
  %75 = load void (i8*, i8*)*, void (i8*, i8*)** %6, align 8
  %76 = bitcast void (i8*, i8*)* %75 to i8*
  %77 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GDBusObjectManager*, %struct._GDBusObject*, i8*)* @on_dbus_object_added to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 0)
  %78 = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 0)
  store %struct._GMainLoop* %78, %struct._GMainLoop** %16, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct._GMainLoop*, %struct._GMainLoop** %16, align 8
  %81 = bitcast %struct._GMainLoop* %80 to i8*
  %82 = call i32 @g_timeout_add_seconds(i32 %79, i32 (i8*)* @stop_scan_func, i8* %81)
  %83 = load %struct._GMainLoop*, %struct._GMainLoop** %16, align 8
  call void @g_main_loop_run(%struct._GMainLoop* %83)
  %84 = load %struct._GMainLoop*, %struct._GMainLoop** %16, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %84)
  %85 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %8, align 8
  %86 = bitcast %struct._GDBusObjectManager* %85 to i8*
  call void @g_object_unref(i8* %86)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %67, %23
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare i32 @org_bluez_adapter1_call_start_discovery_sync(%struct._OrgBluezAdapter1*, %struct._GCancellable*, %struct._GError**) #2

declare %struct._GDBusObjectManager* @g_dbus_object_manager_client_new_for_bus_sync(i32, i32, i8*, i8*, i64 (%struct._GDBusObjectManagerClient*, i8*, i8*, i8*)*, i8*, void (i8*)*, %struct._GCancellable*, %struct._GError**) #2

declare i32 @puts(i8*) #2

declare %struct._GList* @g_dbus_object_manager_get_objects(%struct._GDBusObjectManager*) #2

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #2

; Function Attrs: nounwind readnone
declare i64 @g_dbus_object_manager_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

declare %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @stop_scan_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = bitcast i8* %3 to %struct._GMainLoop*
  call void @g_main_loop_quit(%struct._GMainLoop* %4)
  ret i32 0
}

declare i32 @g_timeout_add_seconds(i32, i32 (i8*)*, i8*) #2

declare void @g_main_loop_run(%struct._GMainLoop*) #2

declare void @g_main_loop_unref(%struct._GMainLoop*) #2

declare void @g_main_loop_quit(%struct._GMainLoop*) #2

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_adapter_scan_disable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GError*, align 8
  store i8* %0, i8** %2, align 8
  store %struct._GError* null, %struct._GError** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct._OrgBluezAdapter1*
  %6 = call i32 @org_bluez_adapter1_call_stop_discovery_sync(%struct._OrgBluezAdapter1* %5, %struct._GCancellable* null, %struct._GError** %3)
  ret i32 0
}

declare i32 @org_bluez_adapter1_call_stop_discovery_sync(%struct._OrgBluezAdapter1*, %struct._GCancellable*, %struct._GError**) #2

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_adapter_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @g_object_unref(i8* %3)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define i32 @on_handle_device_property_change(%struct._OrgBluezGattCharacteristic1* %0, %struct._GVariant* %1, i8** %2, i8* %3) #0 {
  %5 = alloca %struct._OrgBluezGattCharacteristic1*, align 8
  %6 = alloca %struct._GVariant*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GMainLoop*, align 8
  %10 = alloca %struct._GVariantIter*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._GVariant*, align 8
  store %struct._OrgBluezGattCharacteristic1* %0, %struct._OrgBluezGattCharacteristic1** %5, align 8
  store %struct._GVariant* %1, %struct._GVariant** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct._GMainLoop*
  store %struct._GMainLoop* %14, %struct._GMainLoop** %9, align 8
  %15 = load %struct._GVariant*, %struct._GVariant** %6, align 8
  %16 = call i64 @g_variant_n_children(%struct._GVariant* %15)
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load %struct._GVariant*, %struct._GVariant** %6, align 8
  call void (%struct._GVariant*, i8*, ...) @g_variant_get(%struct._GVariant* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._GVariantIter** %10)
  br label %20

20:                                               ; preds = %30, %18
  %21 = load %struct._GVariantIter*, %struct._GVariantIter** %10, align 8
  %22 = call i32 (%struct._GVariantIter*, i8*, ...) @g_variant_iter_loop(%struct._GVariantIter* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8** %11, %struct._GVariant** %12)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load %struct._GMainLoop*, %struct._GMainLoop** %9, align 8
  call void @g_main_loop_quit(%struct._GMainLoop* %29)
  br label %31

30:                                               ; preds = %24
  br label %20

31:                                               ; preds = %28, %20
  br label %32

32:                                               ; preds = %31, %4
  ret i32 1
}

declare i64 @g_variant_n_children(%struct._GVariant*) #2

declare void @g_variant_get(%struct._GVariant*, i8*, ...) #2

declare i32 @g_variant_iter_loop(%struct._GVariantIter*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define %struct._gatt_connection_t* @gattlib_connect(i8* %0, i8* %1, i8 zeroext %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct._gatt_connection_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct._GError*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [20 x i8], align 16
  %17 = alloca [100 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct.gattlib_context_t*, align 8
  %20 = alloca %struct._gatt_connection_t*, align 8
  %21 = alloca %struct._OrgBluezDevice1*, align 8
  %22 = alloca %struct._GMainLoop*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct._GError* null, %struct._GError** %14, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %15, align 8
  br label %28

27:                                               ; preds = %6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8** %15, align 8
  br label %28

28:                                               ; preds = %27, %25
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i32 0, i32 0
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @strncpy(i8* %29, i8* %30, i64 20) #6
  store i32 0, i32* %18, align 4
  br label %32

32:                                               ; preds = %50, %28
  %33 = load i32, i32* %18, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i32 0, i32 0
  %36 = call i64 @strlen(i8* %35) #8
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 58
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 %47
  store i8 95, i8* %48, align 1
  br label %49

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %18, align 4
  br label %32

53:                                               ; preds = %32
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i32 0, i32 0
  %55 = load i8*, i8** %15, align 8
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i32 0, i32 0
  %57 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %54, i64 100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* %55, i8* %56) #6
  %58 = call noalias i8* @calloc(i64 16, i64 1) #6
  %59 = bitcast i8* %58 to %struct.gattlib_context_t*
  store %struct.gattlib_context_t* %59, %struct.gattlib_context_t** %19, align 8
  %60 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %19, align 8
  %61 = icmp eq %struct.gattlib_context_t* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store %struct._gatt_connection_t* null, %struct._gatt_connection_t** %7, align 8
  br label %122

63:                                               ; preds = %53
  %64 = call noalias i8* @calloc(i64 40, i64 1) #6
  %65 = bitcast i8* %64 to %struct._gatt_connection_t*
  store %struct._gatt_connection_t* %65, %struct._gatt_connection_t** %20, align 8
  %66 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %20, align 8
  %67 = icmp eq %struct._gatt_connection_t* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store %struct._gatt_connection_t* null, %struct._gatt_connection_t** %7, align 8
  br label %122

69:                                               ; preds = %63
  %70 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %19, align 8
  %71 = bitcast %struct.gattlib_context_t* %70 to i8*
  %72 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %20, align 8
  %73 = getelementptr inbounds %struct._gatt_connection_t, %struct._gatt_connection_t* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i32 0, i32 0
  %76 = call %struct._OrgBluezDevice1* @org_bluez_device1_proxy_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %75, %struct._GCancellable* null, %struct._GError** %14)
  store %struct._OrgBluezDevice1* %76, %struct._OrgBluezDevice1** %21, align 8
  %77 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %21, align 8
  %78 = icmp eq %struct._OrgBluezDevice1* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %119

80:                                               ; preds = %74
  %81 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %21, align 8
  %82 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %19, align 8
  %83 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %82, i32 0, i32 1
  store %struct._OrgBluezDevice1* %81, %struct._OrgBluezDevice1** %83, align 8
  %84 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i32 0, i32 0
  %85 = call noalias i8* @strdup(i8* %84) #6
  %86 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %19, align 8
  %87 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %80
  store %struct._GError* null, %struct._GError** %14, align 8
  %89 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %21, align 8
  %90 = call i32 @org_bluez_device1_call_connect_sync(%struct._OrgBluezDevice1* %89, %struct._GCancellable* null, %struct._GError** %14)
  %91 = load %struct._GError*, %struct._GError** %14, align 8
  %92 = icmp ne %struct._GError* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct._GError*, %struct._GError** %14, align 8
  %95 = getelementptr inbounds %struct._GError, %struct._GError* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i8* %96)
  br label %111

98:                                               ; preds = %88
  %99 = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 0)
  store %struct._GMainLoop* %99, %struct._GMainLoop** %22, align 8
  %100 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %21, align 8
  %101 = bitcast %struct._OrgBluezDevice1* %100 to i8*
  %102 = load %struct._GMainLoop*, %struct._GMainLoop** %22, align 8
  %103 = bitcast %struct._GMainLoop* %102 to i8*
  %104 = call i64 @g_signal_connect_data(i8* %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (i32 (%struct._OrgBluezGattCharacteristic1*, %struct._GVariant*, i8**, i8*)* @on_handle_device_property_change to void ()*), i8* %103, void (i8*, %struct._GClosure*)* null, i32 0)
  %105 = load %struct._GMainLoop*, %struct._GMainLoop** %22, align 8
  %106 = bitcast %struct._GMainLoop* %105 to i8*
  %107 = call i32 @g_timeout_add_seconds(i32 4, i32 (i8*)* @stop_scan_func, i8* %106)
  %108 = load %struct._GMainLoop*, %struct._GMainLoop** %22, align 8
  call void @g_main_loop_run(%struct._GMainLoop* %108)
  %109 = load %struct._GMainLoop*, %struct._GMainLoop** %22, align 8
  call void @g_main_loop_unref(%struct._GMainLoop* %109)
  %110 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %20, align 8
  store %struct._gatt_connection_t* %110, %struct._gatt_connection_t** %7, align 8
  br label %122

111:                                              ; preds = %93
  %112 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %19, align 8
  %113 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  call void @free(i8* %114) #6
  %115 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %19, align 8
  %116 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %115, i32 0, i32 1
  %117 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %116, align 8
  %118 = bitcast %struct._OrgBluezDevice1* %117 to i8*
  call void @g_object_unref(i8* %118)
  br label %119

119:                                              ; preds = %111, %79
  %120 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %20, align 8
  %121 = bitcast %struct._gatt_connection_t* %120 to i8*
  call void @free(i8* %121) #6
  store %struct._gatt_connection_t* null, %struct._gatt_connection_t** %7, align 8
  br label %122

122:                                              ; preds = %119, %98, %68, %62
  %123 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %7, align 8
  ret %struct._gatt_connection_t* %123
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #1

declare i32 @org_bluez_device1_call_connect_sync(%struct._OrgBluezDevice1*, %struct._GCancellable*, %struct._GError**) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define %struct._gatt_connection_t* @gattlib_connect_async(i8* %0, i8* %1, i8 zeroext %2, i32 %3, i32 %4, i32 %5, void (%struct._gatt_connection_t*, i8*)* %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca void (%struct._gatt_connection_t*, i8*)*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8 %2, i8* %11, align 1
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store void (%struct._gatt_connection_t*, i8*)* %6, void (%struct._gatt_connection_t*, i8*)** %15, align 8
  store i8* %7, i8** %16, align 8
  ret %struct._gatt_connection_t* null
}

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_disconnect(%struct._gatt_connection_t* %0) #0 {
  %2 = alloca %struct._gatt_connection_t*, align 8
  %3 = alloca %struct.gattlib_context_t*, align 8
  %4 = alloca %struct._GError*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %2, align 8
  %5 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %2, align 8
  %6 = getelementptr inbounds %struct._gatt_connection_t, %struct._gatt_connection_t* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.gattlib_context_t*
  store %struct.gattlib_context_t* %8, %struct.gattlib_context_t** %3, align 8
  store %struct._GError* null, %struct._GError** %4, align 8
  %9 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %3, align 8
  %10 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %9, i32 0, i32 1
  %11 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %10, align 8
  %12 = call i32 @org_bluez_device1_call_disconnect_sync(%struct._OrgBluezDevice1* %11, %struct._GCancellable* null, %struct._GError** %4)
  %13 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %3, align 8
  %14 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  call void @free(i8* %15) #6
  %16 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %3, align 8
  %17 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %16, i32 0, i32 1
  %18 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %17, align 8
  %19 = bitcast %struct._OrgBluezDevice1* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %2, align 8
  %21 = getelementptr inbounds %struct._gatt_connection_t, %struct._gatt_connection_t* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  call void @free(i8* %22) #6
  %23 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %2, align 8
  %24 = bitcast %struct._gatt_connection_t* %23 to i8*
  call void @free(i8* %24) #6
  ret i32 0
}

declare i32 @org_bluez_device1_call_disconnect_sync(%struct._OrgBluezDevice1*, %struct._GCancellable*, %struct._GError**) #2

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_discover_primary(%struct._gatt_connection_t* %0, %struct.gattlib_primary_service_t** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._gatt_connection_t*, align 8
  %6 = alloca %struct.gattlib_primary_service_t**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.gattlib_context_t*, align 8
  %9 = alloca %struct._OrgBluezDevice1*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct._GError*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gattlib_primary_service_t*, align 8
  %16 = alloca %struct._GDBusObjectManager*, align 8
  %17 = alloca %struct._GList*, align 8
  %18 = alloca %struct._GList*, align 8
  %19 = alloca %struct._GDBusObject*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct._GDBusInterface*, align 8
  %22 = alloca %struct._OrgBluezGattService1*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %5, align 8
  store %struct.gattlib_primary_service_t** %1, %struct.gattlib_primary_service_t*** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %5, align 8
  %24 = getelementptr inbounds %struct._gatt_connection_t, %struct._gatt_connection_t* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to %struct.gattlib_context_t*
  store %struct.gattlib_context_t* %26, %struct.gattlib_context_t** %8, align 8
  %27 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %8, align 8
  %28 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %27, i32 0, i32 1
  %29 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %28, align 8
  store %struct._OrgBluezDevice1* %29, %struct._OrgBluezDevice1** %9, align 8
  store %struct._GError* null, %struct._GError** %11, align 8
  %30 = load %struct._OrgBluezDevice1*, %struct._OrgBluezDevice1** %9, align 8
  %31 = call i8** @org_bluez_device1_get_uuids(%struct._OrgBluezDevice1* %30)
  store i8** %31, i8*** %12, align 8
  %32 = load i8**, i8*** %12, align 8
  %33 = icmp eq i8** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.gattlib_primary_service_t**, %struct.gattlib_primary_service_t*** %6, align 8
  store %struct.gattlib_primary_service_t* null, %struct.gattlib_primary_service_t** %35, align 8
  %36 = load i32*, i32** %7, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %143

37:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %38 = load i8**, i8*** %12, align 8
  store i8** %38, i8*** %10, align 8
  br label %39

39:                                               ; preds = %46, %37
  %40 = load i8**, i8*** %10, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %43
  %47 = load i8**, i8*** %10, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %10, align 8
  br label %39

49:                                               ; preds = %39
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 24
  %53 = call noalias i8* @malloc(i64 %52) #6
  %54 = bitcast i8* %53 to %struct.gattlib_primary_service_t*
  store %struct.gattlib_primary_service_t* %54, %struct.gattlib_primary_service_t** %15, align 8
  %55 = load %struct.gattlib_primary_service_t*, %struct.gattlib_primary_service_t** %15, align 8
  %56 = icmp eq %struct.gattlib_primary_service_t* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %143

58:                                               ; preds = %49
  %59 = call %struct._GDBusObjectManager* @g_dbus_object_manager_client_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i64 (%struct._GDBusObjectManagerClient*, i8*, i8*, i8*)* null, i8* null, void (i8*)* null, %struct._GCancellable* null, %struct._GError** %11)
  store %struct._GDBusObjectManager* %59, %struct._GDBusObjectManager** %16, align 8
  %60 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %16, align 8
  %61 = icmp eq %struct._GDBusObjectManager* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %4, align 4
  br label %143

64:                                               ; preds = %58
  %65 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %16, align 8
  %66 = call %struct._GList* @g_dbus_object_manager_get_objects(%struct._GDBusObjectManager* %65)
  store %struct._GList* %66, %struct._GList** %17, align 8
  %67 = load %struct._GList*, %struct._GList** %17, align 8
  store %struct._GList* %67, %struct._GList** %18, align 8
  br label %68

68:                                               ; preds = %131, %64
  %69 = load %struct._GList*, %struct._GList** %18, align 8
  %70 = icmp ne %struct._GList* %69, null
  br i1 %70, label %71, label %135

71:                                               ; preds = %68
  %72 = load %struct._GList*, %struct._GList** %18, align 8
  %73 = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = bitcast i8* %74 to %struct._GDBusObject*
  store %struct._GDBusObject* %75, %struct._GDBusObject** %19, align 8
  %76 = load %struct._GDBusObject*, %struct._GDBusObject** %19, align 8
  %77 = bitcast %struct._GDBusObject* %76 to %struct._GTypeInstance*
  %78 = call i64 @g_dbus_object_get_type() #7
  %79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %78)
  %80 = bitcast %struct._GTypeInstance* %79 to %struct._GDBusObject*
  %81 = call i8* @g_dbus_object_get_object_path(%struct._GDBusObject* %80)
  store i8* %81, i8** %20, align 8
  %82 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %16, align 8
  %83 = load i8*, i8** %20, align 8
  %84 = call %struct._GDBusInterface* @g_dbus_object_manager_get_interface(%struct._GDBusObjectManager* %82, i8* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GDBusInterface* %84, %struct._GDBusInterface** %21, align 8
  %85 = load %struct._GDBusInterface*, %struct._GDBusInterface** %21, align 8
  %86 = icmp ne %struct._GDBusInterface* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %71
  br label %131

88:                                               ; preds = %71
  store %struct._GError* null, %struct._GError** %11, align 8
  %89 = load i8*, i8** %20, align 8
  %90 = call %struct._OrgBluezGattService1* @org_bluez_gatt_service1_proxy_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %89, %struct._GCancellable* null, %struct._GError** %11)
  store %struct._OrgBluezGattService1* %90, %struct._OrgBluezGattService1** %22, align 8
  %91 = load %struct._OrgBluezGattService1*, %struct._OrgBluezGattService1** %22, align 8
  %92 = icmp eq %struct._OrgBluezGattService1* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %20, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i8* %94)
  br label %131

96:                                               ; preds = %88
  %97 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %8, align 8
  %98 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct._OrgBluezGattService1*, %struct._OrgBluezGattService1** %22, align 8
  %101 = call i8* @org_bluez_gatt_service1_get_device(%struct._OrgBluezGattService1* %100)
  %102 = call i32 @strcmp(i8* %99, i8* %101) #8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %131

105:                                              ; preds = %96
  %106 = load %struct._OrgBluezGattService1*, %struct._OrgBluezGattService1** %22, align 8
  %107 = call i32 @org_bluez_gatt_service1_get_primary(%struct._OrgBluezGattService1* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load %struct.gattlib_primary_service_t*, %struct.gattlib_primary_service_t** %15, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %110, i64 %112
  %114 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %113, i32 0, i32 0
  store i16 0, i16* %114, align 4
  %115 = load %struct.gattlib_primary_service_t*, %struct.gattlib_primary_service_t** %15, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %115, i64 %117
  %119 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %118, i32 0, i32 1
  store i16 0, i16* %119, align 2
  %120 = load %struct._OrgBluezGattService1*, %struct._OrgBluezGattService1** %22, align 8
  %121 = call i8* @org_bluez_gatt_service1_get_uuid(%struct._OrgBluezGattService1* %120)
  %122 = load %struct.gattlib_primary_service_t*, %struct.gattlib_primary_service_t** %15, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %122, i64 %124
  %126 = getelementptr inbounds %struct.gattlib_primary_service_t, %struct.gattlib_primary_service_t* %125, i32 0, i32 2
  %127 = call i32 @gattlib_string_to_uuid(i8* %121, i64 38, %struct.uuid_t* %126)
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %109, %105
  br label %131

131:                                              ; preds = %130, %104, %93, %87
  %132 = load %struct._GList*, %struct._GList** %18, align 8
  %133 = getelementptr inbounds %struct._GList, %struct._GList* %132, i32 0, i32 1
  %134 = load %struct._GList*, %struct._GList** %133, align 8
  store %struct._GList* %134, %struct._GList** %18, align 8
  br label %68

135:                                              ; preds = %68
  %136 = load %struct._GList*, %struct._GList** %17, align 8
  call void @g_list_free_full(%struct._GList* %136, void (i8*)* @g_object_unref)
  %137 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %16, align 8
  %138 = bitcast %struct._GDBusObjectManager* %137 to i8*
  call void @g_object_unref(i8* %138)
  %139 = load %struct.gattlib_primary_service_t*, %struct.gattlib_primary_service_t** %15, align 8
  %140 = load %struct.gattlib_primary_service_t**, %struct.gattlib_primary_service_t*** %6, align 8
  store %struct.gattlib_primary_service_t* %139, %struct.gattlib_primary_service_t** %140, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32*, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %135, %62, %57, %34
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare i8** @org_bluez_device1_get_uuids(%struct._OrgBluezDevice1*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct._OrgBluezGattService1* @org_bluez_gatt_service1_proxy_new_for_bus_sync(i32, i32, i8*, i8*, %struct._GCancellable*, %struct._GError**) #2

declare i8* @org_bluez_gatt_service1_get_device(%struct._OrgBluezGattService1*) #2

declare i32 @org_bluez_gatt_service1_get_primary(%struct._OrgBluezGattService1*) #2

declare i8* @org_bluez_gatt_service1_get_uuid(%struct._OrgBluezGattService1*) #2

declare i32 @gattlib_string_to_uuid(i8*, i64, %struct.uuid_t*) #2

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_discover_char_range(%struct._gatt_connection_t* %0, i32 %1, i32 %2, %struct.gattlib_characteristic_t** %3, i32* %4) #0 {
  %6 = alloca %struct._gatt_connection_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gattlib_characteristic_t**, align 8
  %10 = alloca i32*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gattlib_characteristic_t** %3, %struct.gattlib_characteristic_t*** %9, align 8
  store i32* %4, i32** %10, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_discover_char(%struct._gatt_connection_t* %0, %struct.gattlib_characteristic_t** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._gatt_connection_t*, align 8
  %6 = alloca %struct.gattlib_characteristic_t**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.gattlib_context_t*, align 8
  %9 = alloca %struct._GError*, align 8
  %10 = alloca %struct._GList*, align 8
  %11 = alloca %struct._GDBusObjectManager*, align 8
  %12 = alloca %struct._GList*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct._GDBusObject*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct._GDBusInterface*, align 8
  %18 = alloca %struct.gattlib_characteristic_t*, align 8
  %19 = alloca %struct._GDBusObject*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct._GDBusInterface*, align 8
  %22 = alloca %struct._OrgBluezGattService1*, align 8
  %23 = alloca i8*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %5, align 8
  store %struct.gattlib_characteristic_t** %1, %struct.gattlib_characteristic_t*** %6, align 8
  store i32* %2, i32** %7, align 8
  %24 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %5, align 8
  %25 = getelementptr inbounds %struct._gatt_connection_t, %struct._gatt_connection_t* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.gattlib_context_t*
  store %struct.gattlib_context_t* %27, %struct.gattlib_context_t** %8, align 8
  store %struct._GError* null, %struct._GError** %9, align 8
  %28 = call %struct._GDBusObjectManager* @g_dbus_object_manager_client_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i64 (%struct._GDBusObjectManagerClient*, i8*, i8*, i8*)* null, i8* null, void (i8*)* null, %struct._GCancellable* null, %struct._GError** %9)
  store %struct._GDBusObjectManager* %28, %struct._GDBusObjectManager** %11, align 8
  %29 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %11, align 8
  %30 = icmp eq %struct._GDBusObjectManager* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %4, align 4
  br label %129

33:                                               ; preds = %3
  %34 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %11, align 8
  %35 = call %struct._GList* @g_dbus_object_manager_get_objects(%struct._GDBusObjectManager* %34)
  store %struct._GList* %35, %struct._GList** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %36 = load %struct._GList*, %struct._GList** %12, align 8
  store %struct._GList* %36, %struct._GList** %10, align 8
  br label %37

37:                                               ; preds = %60, %33
  %38 = load %struct._GList*, %struct._GList** %10, align 8
  %39 = icmp ne %struct._GList* %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load %struct._GList*, %struct._GList** %10, align 8
  %42 = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to %struct._GDBusObject*
  store %struct._GDBusObject* %44, %struct._GDBusObject** %15, align 8
  %45 = load %struct._GDBusObject*, %struct._GDBusObject** %15, align 8
  %46 = bitcast %struct._GDBusObject* %45 to %struct._GTypeInstance*
  %47 = call i64 @g_dbus_object_get_type() #7
  %48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %47)
  %49 = bitcast %struct._GTypeInstance* %48 to %struct._GDBusObject*
  %50 = call i8* @g_dbus_object_get_object_path(%struct._GDBusObject* %49)
  store i8* %50, i8** %16, align 8
  %51 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %11, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = call %struct._GDBusInterface* @g_dbus_object_manager_get_interface(%struct._GDBusObjectManager* %51, i8* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GDBusInterface* %53, %struct._GDBusInterface** %17, align 8
  %54 = load %struct._GDBusInterface*, %struct._GDBusInterface** %17, align 8
  %55 = icmp ne %struct._GDBusInterface* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %40
  br label %60

57:                                               ; preds = %40
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %57, %56
  %61 = load %struct._GList*, %struct._GList** %10, align 8
  %62 = getelementptr inbounds %struct._GList, %struct._GList* %61, i32 0, i32 1
  %63 = load %struct._GList*, %struct._GList** %62, align 8
  store %struct._GList* %63, %struct._GList** %10, align 8
  br label %37

64:                                               ; preds = %37
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 28
  %68 = call noalias i8* @malloc(i64 %67) #6
  %69 = bitcast i8* %68 to %struct.gattlib_characteristic_t*
  store %struct.gattlib_characteristic_t* %69, %struct.gattlib_characteristic_t** %18, align 8
  %70 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %18, align 8
  %71 = icmp eq %struct.gattlib_characteristic_t* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  br label %129

73:                                               ; preds = %64
  %74 = load %struct._GList*, %struct._GList** %12, align 8
  store %struct._GList* %74, %struct._GList** %10, align 8
  br label %75

75:                                               ; preds = %117, %73
  %76 = load %struct._GList*, %struct._GList** %10, align 8
  %77 = icmp ne %struct._GList* %76, null
  br i1 %77, label %78, label %121

78:                                               ; preds = %75
  %79 = load %struct._GList*, %struct._GList** %10, align 8
  %80 = getelementptr inbounds %struct._GList, %struct._GList* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = bitcast i8* %81 to %struct._GDBusObject*
  store %struct._GDBusObject* %82, %struct._GDBusObject** %19, align 8
  %83 = load %struct._GDBusObject*, %struct._GDBusObject** %19, align 8
  %84 = bitcast %struct._GDBusObject* %83 to %struct._GTypeInstance*
  %85 = call i64 @g_dbus_object_get_type() #7
  %86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %85)
  %87 = bitcast %struct._GTypeInstance* %86 to %struct._GDBusObject*
  %88 = call i8* @g_dbus_object_get_object_path(%struct._GDBusObject* %87)
  store i8* %88, i8** %20, align 8
  %89 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %11, align 8
  %90 = load i8*, i8** %20, align 8
  %91 = call %struct._GDBusInterface* @g_dbus_object_manager_get_interface(%struct._GDBusObjectManager* %89, i8* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GDBusInterface* %91, %struct._GDBusInterface** %21, align 8
  %92 = load %struct._GDBusInterface*, %struct._GDBusInterface** %21, align 8
  %93 = icmp ne %struct._GDBusInterface* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %78
  br label %117

95:                                               ; preds = %78
  store %struct._GError* null, %struct._GError** %9, align 8
  %96 = load i8*, i8** %20, align 8
  %97 = call %struct._OrgBluezGattService1* @org_bluez_gatt_service1_proxy_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %96, %struct._GCancellable* null, %struct._GError** %9)
  store %struct._OrgBluezGattService1* %97, %struct._OrgBluezGattService1** %22, align 8
  %98 = load %struct._OrgBluezGattService1*, %struct._OrgBluezGattService1** %22, align 8
  %99 = icmp eq %struct._OrgBluezGattService1* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %20, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i8* %101)
  br label %117

103:                                              ; preds = %95
  %104 = load %struct._OrgBluezGattService1*, %struct._OrgBluezGattService1** %22, align 8
  %105 = call i8* @org_bluez_gatt_service1_get_device(%struct._OrgBluezGattService1* %104)
  store i8* %105, i8** %23, align 8
  %106 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %8, align 8
  %107 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %23, align 8
  %110 = call i32 @strcmp(i8* %108, i8* %109) #8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %117

113:                                              ; preds = %103
  %114 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %11, align 8
  %115 = load i8*, i8** %20, align 8
  %116 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %18, align 8
  call void @add_characteristics_from_service(%struct._GDBusObjectManager* %114, i8* %115, %struct.gattlib_characteristic_t* %116, i32* %14)
  br label %117

117:                                              ; preds = %113, %112, %100, %94
  %118 = load %struct._GList*, %struct._GList** %10, align 8
  %119 = getelementptr inbounds %struct._GList, %struct._GList* %118, i32 0, i32 1
  %120 = load %struct._GList*, %struct._GList** %119, align 8
  store %struct._GList* %120, %struct._GList** %10, align 8
  br label %75

121:                                              ; preds = %75
  %122 = load %struct._GList*, %struct._GList** %12, align 8
  call void @g_list_free_full(%struct._GList* %122, void (i8*)* @g_object_unref)
  %123 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %11, align 8
  %124 = bitcast %struct._GDBusObjectManager* %123 to i8*
  call void @g_object_unref(i8* %124)
  %125 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %18, align 8
  %126 = load %struct.gattlib_characteristic_t**, %struct.gattlib_characteristic_t*** %6, align 8
  store %struct.gattlib_characteristic_t* %125, %struct.gattlib_characteristic_t** %126, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %121, %72, %31
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_characteristics_from_service(%struct._GDBusObjectManager* %0, i8* %1, %struct.gattlib_characteristic_t* %2, i32* %3) #0 {
  %5 = alloca %struct._GDBusObjectManager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gattlib_characteristic_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct._GList*, align 8
  %10 = alloca %struct._GError*, align 8
  %11 = alloca %struct._GList*, align 8
  %12 = alloca %struct._GDBusObject*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._GDBusInterface*, align 8
  %15 = alloca %struct._OrgBluezGattCharacteristic1*, align 8
  %16 = alloca i8**, align 8
  store %struct._GDBusObjectManager* %0, %struct._GDBusObjectManager** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.gattlib_characteristic_t* %2, %struct.gattlib_characteristic_t** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %5, align 8
  %18 = call %struct._GList* @g_dbus_object_manager_get_objects(%struct._GDBusObjectManager* %17)
  store %struct._GList* %18, %struct._GList** %9, align 8
  store %struct._GError* null, %struct._GError** %10, align 8
  %19 = load %struct._GList*, %struct._GList** %9, align 8
  store %struct._GList* %19, %struct._GList** %11, align 8
  br label %20

20:                                               ; preds = %194, %4
  %21 = load %struct._GList*, %struct._GList** %11, align 8
  %22 = icmp ne %struct._GList* %21, null
  br i1 %22, label %23, label %198

23:                                               ; preds = %20
  %24 = load %struct._GList*, %struct._GList** %11, align 8
  %25 = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct._GDBusObject*
  store %struct._GDBusObject* %27, %struct._GDBusObject** %12, align 8
  %28 = load %struct._GDBusObject*, %struct._GDBusObject** %12, align 8
  %29 = bitcast %struct._GDBusObject* %28 to %struct._GTypeInstance*
  %30 = call i64 @g_dbus_object_get_type() #7
  %31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %30)
  %32 = bitcast %struct._GTypeInstance* %31 to %struct._GDBusObject*
  %33 = call i8* @g_dbus_object_get_object_path(%struct._GDBusObject* %32)
  store i8* %33, i8** %13, align 8
  %34 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %5, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call %struct._GDBusInterface* @g_dbus_object_manager_get_interface(%struct._GDBusObjectManager* %34, i8* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GDBusInterface* %36, %struct._GDBusInterface** %14, align 8
  %37 = load %struct._GDBusInterface*, %struct._GDBusInterface** %14, align 8
  %38 = icmp ne %struct._GDBusInterface* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  br label %194

40:                                               ; preds = %23
  %41 = load i8*, i8** %13, align 8
  %42 = call %struct._OrgBluezGattCharacteristic1* @org_bluez_gatt_characteristic1_proxy_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %41, %struct._GCancellable* null, %struct._GError** %10)
  store %struct._OrgBluezGattCharacteristic1* %42, %struct._OrgBluezGattCharacteristic1** %15, align 8
  %43 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %15, align 8
  %44 = icmp eq %struct._OrgBluezGattCharacteristic1* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), i8* %46)
  br label %194

48:                                               ; preds = %40
  %49 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %15, align 8
  %50 = call i8* @org_bluez_gatt_characteristic1_get_service(%struct._OrgBluezGattCharacteristic1* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strcmp(i8* %50, i8* %51) #8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %194

55:                                               ; preds = %48
  %56 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %56, i64 %59
  %61 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %60, i32 0, i32 0
  store i16 0, i16* %61, align 4
  %62 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %62, i64 %65
  %67 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %66, i32 0, i32 2
  store i16 0, i16* %67, align 4
  %68 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %15, align 8
  %69 = call i8** @org_bluez_gatt_characteristic1_get_flags(%struct._OrgBluezGattCharacteristic1* %68)
  store i8** %69, i8*** %16, align 8
  br label %70

70:                                               ; preds = %176, %55
  %71 = load i8**, i8*** %16, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %179

74:                                               ; preds = %70
  %75 = load i8**, i8*** %16, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0)) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %80, i64 %83
  %85 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %84, i32 0, i32 1
  %86 = load i8, i8* %85, align 2
  %87 = zext i8 %86 to i32
  %88 = or i32 %87, 1
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 2
  br label %175

90:                                               ; preds = %74
  %91 = load i8**, i8*** %16, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %96, i64 %99
  %101 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %100, i32 0, i32 1
  %102 = load i8, i8* %101, align 2
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, 2
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %101, align 2
  br label %174

106:                                              ; preds = %90
  %107 = load i8**, i8*** %16, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %7, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %112, i64 %115
  %117 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %116, i32 0, i32 1
  %118 = load i8, i8* %117, align 2
  %119 = zext i8 %118 to i32
  %120 = or i32 %119, 8
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %117, align 2
  br label %173

122:                                              ; preds = %106
  %123 = load i8**, i8*** %16, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0)) #8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %7, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %128, i64 %131
  %133 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %132, i32 0, i32 1
  %134 = load i8, i8* %133, align 2
  %135 = zext i8 %134 to i32
  %136 = or i32 %135, 4
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %133, align 2
  br label %172

138:                                              ; preds = %122
  %139 = load i8**, i8*** %16, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %7, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %144, i64 %147
  %149 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %148, i32 0, i32 1
  %150 = load i8, i8* %149, align 2
  %151 = zext i8 %150 to i32
  %152 = or i32 %151, 16
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %149, align 2
  br label %171

154:                                              ; preds = %138
  %155 = load i8**, i8*** %16, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %7, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %160, i64 %163
  %165 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %164, i32 0, i32 1
  %166 = load i8, i8* %165, align 2
  %167 = zext i8 %166 to i32
  %168 = or i32 %167, 32
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %165, align 2
  br label %170

170:                                              ; preds = %159, %154
  br label %171

171:                                              ; preds = %170, %143
  br label %172

172:                                              ; preds = %171, %127
  br label %173

173:                                              ; preds = %172, %111
  br label %174

174:                                              ; preds = %173, %95
  br label %175

175:                                              ; preds = %174, %79
  br label %176

176:                                              ; preds = %175
  %177 = load i8**, i8*** %16, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i32 1
  store i8** %178, i8*** %16, align 8
  br label %70

179:                                              ; preds = %70
  %180 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %15, align 8
  %181 = call i8* @org_bluez_gatt_characteristic1_get_uuid(%struct._OrgBluezGattCharacteristic1* %180)
  %182 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %7, align 8
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %182, i64 %185
  %187 = getelementptr inbounds %struct.gattlib_characteristic_t, %struct.gattlib_characteristic_t* %186, i32 0, i32 3
  %188 = call i32 @gattlib_string_to_uuid(i8* %181, i64 38, %struct.uuid_t* %187)
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  %192 = load i32*, i32** %8, align 8
  store i32 %191, i32* %192, align 4
  br label %193

193:                                              ; preds = %179
  br label %194

194:                                              ; preds = %193, %54, %45, %39
  %195 = load %struct._GList*, %struct._GList** %11, align 8
  %196 = getelementptr inbounds %struct._GList, %struct._GList* %195, i32 0, i32 1
  %197 = load %struct._GList*, %struct._GList** %196, align 8
  store %struct._GList* %197, %struct._GList** %11, align 8
  br label %20

198:                                              ; preds = %20
  ret void
}

declare %struct._OrgBluezGattCharacteristic1* @org_bluez_gatt_characteristic1_proxy_new_for_bus_sync(i32, i32, i8*, i8*, %struct._GCancellable*, %struct._GError**) #2

declare i8* @org_bluez_gatt_characteristic1_get_service(%struct._OrgBluezGattCharacteristic1*) #2

declare i8** @org_bluez_gatt_characteristic1_get_flags(%struct._OrgBluezGattCharacteristic1*) #2

declare i8* @org_bluez_gatt_characteristic1_get_uuid(%struct._OrgBluezGattCharacteristic1*) #2

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_discover_desc_range(%struct._gatt_connection_t* %0, i32 %1, i32 %2, %struct.gattlib_primary_service_t** %3, i32* %4) #0 {
  %6 = alloca %struct._gatt_connection_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gattlib_primary_service_t**, align 8
  %10 = alloca i32*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gattlib_primary_service_t** %3, %struct.gattlib_primary_service_t*** %9, align 8
  store i32* %4, i32** %10, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_discover_desc(%struct._gatt_connection_t* %0, %struct.gattlib_primary_service_t** %1, i32* %2) #0 {
  %4 = alloca %struct._gatt_connection_t*, align 8
  %5 = alloca %struct.gattlib_primary_service_t**, align 8
  %6 = alloca i32*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %4, align 8
  store %struct.gattlib_primary_service_t** %1, %struct.gattlib_primary_service_t*** %5, align 8
  store i32* %2, i32** %6, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_read_char_by_uuid(%struct._gatt_connection_t* %0, %struct.uuid_t* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._gatt_connection_t*, align 8
  %7 = alloca %struct.uuid_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct._OrgBluezGattCharacteristic1*, align 8
  %11 = alloca %struct._GVariant*, align 8
  %12 = alloca %struct._GError*, align 8
  %13 = alloca %struct._GVariantBuilder*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %6, align 8
  store %struct.uuid_t* %1, %struct.uuid_t** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %6, align 8
  %17 = load %struct.uuid_t*, %struct.uuid_t** %7, align 8
  %18 = call %struct._OrgBluezGattCharacteristic1* @get_characteristic_from_uuid(%struct._gatt_connection_t* %16, %struct.uuid_t* %17)
  store %struct._OrgBluezGattCharacteristic1* %18, %struct._OrgBluezGattCharacteristic1** %10, align 8
  %19 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %10, align 8
  %20 = icmp eq %struct._OrgBluezGattCharacteristic1* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %58

22:                                               ; preds = %4
  store %struct._GError* null, %struct._GError** %12, align 8
  %23 = call %struct._GVariantType* @g_variant_type_checked_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %24 = call %struct._GVariantBuilder* @g_variant_builder_new(%struct._GVariantType* %23)
  store %struct._GVariantBuilder* %24, %struct._GVariantBuilder** %13, align 8
  %25 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %10, align 8
  %26 = load %struct._GVariantBuilder*, %struct._GVariantBuilder** %13, align 8
  %27 = call %struct._GVariant* @g_variant_builder_end(%struct._GVariantBuilder* %26)
  %28 = call i32 @org_bluez_gatt_characteristic1_call_read_value_sync(%struct._OrgBluezGattCharacteristic1* %25, %struct._GVariant* %27, %struct._GVariant** %11, %struct._GCancellable* null, %struct._GError** %12)
  %29 = load %struct._GVariantBuilder*, %struct._GVariantBuilder** %13, align 8
  call void @g_variant_builder_unref(%struct._GVariantBuilder* %29)
  %30 = load %struct._GError*, %struct._GError** %12, align 8
  %31 = icmp ne %struct._GError* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %58

33:                                               ; preds = %22
  store i64 0, i64* %14, align 8
  %34 = load %struct._GVariant*, %struct._GVariant** %11, align 8
  %35 = call i8* @g_variant_get_fixed_array(%struct._GVariant* %34, i64* %14, i64 1)
  store i8* %35, i8** %15, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i64, i64* %14, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* %14, align 8
  br label %48

45:                                               ; preds = %38
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %46, align 8
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i64 [ %44, %43 ], [ %47, %45 ]
  store i64 %49, i64* %14, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = load i64, i64* %14, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %50, i8* align 1 %51, i64 %52, i1 false)
  br label %53

53:                                               ; preds = %48, %33
  %54 = load i64, i64* %14, align 8
  %55 = load i64*, i64** %9, align 8
  store i64 %54, i64* %55, align 8
  %56 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %10, align 8
  %57 = bitcast %struct._OrgBluezGattCharacteristic1* %56 to i8*
  call void @g_object_unref(i8* %57)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %32, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind uwtable
define internal %struct._OrgBluezGattCharacteristic1* @get_characteristic_from_uuid(%struct._gatt_connection_t* %0, %struct.uuid_t* %1) #0 {
  %3 = alloca %struct._OrgBluezGattCharacteristic1*, align 8
  %4 = alloca %struct._gatt_connection_t*, align 8
  %5 = alloca %struct.uuid_t*, align 8
  %6 = alloca %struct.gattlib_context_t*, align 8
  %7 = alloca %struct._OrgBluezGattCharacteristic1*, align 8
  %8 = alloca %struct._GError*, align 8
  %9 = alloca %struct._GDBusObjectManager*, align 8
  %10 = alloca %struct._GList*, align 8
  %11 = alloca %struct._GList*, align 8
  %12 = alloca %struct._GDBusObject*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._GDBusInterface*, align 8
  %15 = alloca %struct.uuid_t, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct._OrgBluezGattService1*, align 8
  %18 = alloca i8, align 1
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %4, align 8
  store %struct.uuid_t* %1, %struct.uuid_t** %5, align 8
  %19 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %4, align 8
  %20 = getelementptr inbounds %struct._gatt_connection_t, %struct._gatt_connection_t* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.gattlib_context_t*
  store %struct.gattlib_context_t* %22, %struct.gattlib_context_t** %6, align 8
  store %struct._OrgBluezGattCharacteristic1* null, %struct._OrgBluezGattCharacteristic1** %7, align 8
  store %struct._GError* null, %struct._GError** %8, align 8
  %23 = call %struct._GDBusObjectManager* @g_dbus_object_manager_client_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i64 (%struct._GDBusObjectManagerClient*, i8*, i8*, i8*)* null, i8* null, void (i8*)* null, %struct._GCancellable* null, %struct._GError** %8)
  store %struct._GDBusObjectManager* %23, %struct._GDBusObjectManager** %9, align 8
  %24 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %9, align 8
  %25 = icmp eq %struct._GDBusObjectManager* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0))
  store %struct._OrgBluezGattCharacteristic1* null, %struct._OrgBluezGattCharacteristic1** %3, align 8
  br label %104

28:                                               ; preds = %2
  %29 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %9, align 8
  %30 = call %struct._GList* @g_dbus_object_manager_get_objects(%struct._GDBusObjectManager* %29)
  store %struct._GList* %30, %struct._GList** %10, align 8
  %31 = load %struct._GList*, %struct._GList** %10, align 8
  store %struct._GList* %31, %struct._GList** %11, align 8
  br label %32

32:                                               ; preds = %95, %28
  %33 = load %struct._GList*, %struct._GList** %11, align 8
  %34 = icmp ne %struct._GList* %33, null
  br i1 %34, label %35, label %99

35:                                               ; preds = %32
  %36 = load %struct._GList*, %struct._GList** %11, align 8
  %37 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to %struct._GDBusObject*
  store %struct._GDBusObject* %39, %struct._GDBusObject** %12, align 8
  %40 = load %struct._GDBusObject*, %struct._GDBusObject** %12, align 8
  %41 = bitcast %struct._GDBusObject* %40 to %struct._GTypeInstance*
  %42 = call i64 @g_dbus_object_get_type() #7
  %43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %42)
  %44 = bitcast %struct._GTypeInstance* %43 to %struct._GDBusObject*
  %45 = call i8* @g_dbus_object_get_object_path(%struct._GDBusObject* %44)
  store i8* %45, i8** %13, align 8
  %46 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %9, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = call %struct._GDBusInterface* @g_dbus_object_manager_get_interface(%struct._GDBusObjectManager* %46, i8* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GDBusInterface* %48, %struct._GDBusInterface** %14, align 8
  %49 = load %struct._GDBusInterface*, %struct._GDBusInterface** %14, align 8
  %50 = icmp ne %struct._GDBusInterface* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %35
  br label %95

52:                                               ; preds = %35
  store %struct._GError* null, %struct._GError** %8, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call %struct._OrgBluezGattCharacteristic1* @org_bluez_gatt_characteristic1_proxy_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %53, %struct._GCancellable* null, %struct._GError** %8)
  store %struct._OrgBluezGattCharacteristic1* %54, %struct._OrgBluezGattCharacteristic1** %7, align 8
  %55 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %7, align 8
  %56 = icmp ne %struct._OrgBluezGattCharacteristic1* %55, null
  br i1 %56, label %57, label %94

57:                                               ; preds = %52
  %58 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %7, align 8
  %59 = call i8* @org_bluez_gatt_characteristic1_get_uuid(%struct._OrgBluezGattCharacteristic1* %58)
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = call i64 @strlen(i8* %61) #8
  %63 = add i64 %62, 1
  %64 = call i32 @gattlib_string_to_uuid(i8* %60, i64 %63, %struct.uuid_t* %15)
  %65 = load %struct.uuid_t*, %struct.uuid_t** %5, align 8
  %66 = call i32 @gattlib_uuid_cmp(%struct.uuid_t* %65, %struct.uuid_t* %15)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %57
  store %struct._GError* null, %struct._GError** %8, align 8
  %69 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %7, align 8
  %70 = call i8* @org_bluez_gatt_characteristic1_get_service(%struct._OrgBluezGattCharacteristic1* %69)
  %71 = call %struct._OrgBluezGattService1* @org_bluez_gatt_service1_proxy_new_for_bus_sync(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %70, %struct._GCancellable* null, %struct._GError** %8)
  store %struct._OrgBluezGattService1* %71, %struct._OrgBluezGattService1** %17, align 8
  %72 = load %struct._OrgBluezGattService1*, %struct._OrgBluezGattService1** %17, align 8
  %73 = icmp ne %struct._OrgBluezGattService1* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.gattlib_context_t*, %struct.gattlib_context_t** %6, align 8
  %76 = getelementptr inbounds %struct.gattlib_context_t, %struct.gattlib_context_t* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct._OrgBluezGattService1*, %struct._OrgBluezGattService1** %17, align 8
  %79 = call i8* @org_bluez_gatt_service1_get_device(%struct._OrgBluezGattService1* %78)
  %80 = call i32 @strcmp(i8* %77, i8* %79) #8
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %18, align 1
  %84 = load %struct._OrgBluezGattService1*, %struct._OrgBluezGattService1** %17, align 8
  %85 = bitcast %struct._OrgBluezGattService1* %84 to i8*
  call void @g_object_unref(i8* %85)
  %86 = load i8, i8* %18, align 1
  %87 = trunc i8 %86 to i1
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %99

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %57
  %92 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %7, align 8
  %93 = bitcast %struct._OrgBluezGattCharacteristic1* %92 to i8*
  call void @g_object_unref(i8* %93)
  br label %94

94:                                               ; preds = %91, %52
  store %struct._OrgBluezGattCharacteristic1* null, %struct._OrgBluezGattCharacteristic1** %7, align 8
  br label %95

95:                                               ; preds = %94, %51
  %96 = load %struct._GList*, %struct._GList** %11, align 8
  %97 = getelementptr inbounds %struct._GList, %struct._GList* %96, i32 0, i32 1
  %98 = load %struct._GList*, %struct._GList** %97, align 8
  store %struct._GList* %98, %struct._GList** %11, align 8
  br label %32

99:                                               ; preds = %88, %32
  %100 = load %struct._GList*, %struct._GList** %10, align 8
  call void @g_list_free_full(%struct._GList* %100, void (i8*)* @g_object_unref)
  %101 = load %struct._GDBusObjectManager*, %struct._GDBusObjectManager** %9, align 8
  %102 = bitcast %struct._GDBusObjectManager* %101 to i8*
  call void @g_object_unref(i8* %102)
  %103 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %7, align 8
  store %struct._OrgBluezGattCharacteristic1* %103, %struct._OrgBluezGattCharacteristic1** %3, align 8
  br label %104

104:                                              ; preds = %99, %26
  %105 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %3, align 8
  ret %struct._OrgBluezGattCharacteristic1* %105
}

declare %struct._GVariantType* @g_variant_type_checked_(i8*) #2

declare %struct._GVariantBuilder* @g_variant_builder_new(%struct._GVariantType*) #2

declare %struct._GVariant* @g_variant_builder_end(%struct._GVariantBuilder*) #2

declare i32 @org_bluez_gatt_characteristic1_call_read_value_sync(%struct._OrgBluezGattCharacteristic1*, %struct._GVariant*, %struct._GVariant**, %struct._GCancellable*, %struct._GError**) #2

declare void @g_variant_builder_unref(%struct._GVariantBuilder*) #2

declare i8* @g_variant_get_fixed_array(%struct._GVariant*, i64*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @gattlib_uuid_cmp(%struct.uuid_t*, %struct.uuid_t*) #2

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_read_char_by_uuid_async(%struct._gatt_connection_t* %0, %struct.uuid_t* %1, i8* (i8*, i64)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._gatt_connection_t*, align 8
  %6 = alloca %struct.uuid_t*, align 8
  %7 = alloca i8* (i8*, i64)*, align 8
  %8 = alloca %struct._OrgBluezGattCharacteristic1*, align 8
  %9 = alloca %struct._GVariant*, align 8
  %10 = alloca %struct._GError*, align 8
  %11 = alloca %struct._GVariantBuilder*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %5, align 8
  store %struct.uuid_t* %1, %struct.uuid_t** %6, align 8
  store i8* (i8*, i64)* %2, i8* (i8*, i64)** %7, align 8
  %14 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %5, align 8
  %15 = load %struct.uuid_t*, %struct.uuid_t** %6, align 8
  %16 = call %struct._OrgBluezGattCharacteristic1* @get_characteristic_from_uuid(%struct._gatt_connection_t* %14, %struct.uuid_t* %15)
  store %struct._OrgBluezGattCharacteristic1* %16, %struct._OrgBluezGattCharacteristic1** %8, align 8
  %17 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %8, align 8
  %18 = icmp eq %struct._OrgBluezGattCharacteristic1* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

20:                                               ; preds = %3
  store %struct._GError* null, %struct._GError** %10, align 8
  %21 = call %struct._GVariantType* @g_variant_type_checked_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %22 = call %struct._GVariantBuilder* @g_variant_builder_new(%struct._GVariantType* %21)
  store %struct._GVariantBuilder* %22, %struct._GVariantBuilder** %11, align 8
  %23 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %8, align 8
  %24 = load %struct._GVariantBuilder*, %struct._GVariantBuilder** %11, align 8
  %25 = call %struct._GVariant* @g_variant_builder_end(%struct._GVariantBuilder* %24)
  %26 = call i32 @org_bluez_gatt_characteristic1_call_read_value_sync(%struct._OrgBluezGattCharacteristic1* %23, %struct._GVariant* %25, %struct._GVariant** %9, %struct._GCancellable* null, %struct._GError** %10)
  %27 = load %struct._GVariantBuilder*, %struct._GVariantBuilder** %11, align 8
  call void @g_variant_builder_unref(%struct._GVariantBuilder* %27)
  %28 = load %struct._GError*, %struct._GError** %10, align 8
  %29 = icmp ne %struct._GError* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %44

31:                                               ; preds = %20
  %32 = load %struct._GVariant*, %struct._GVariant** %9, align 8
  %33 = call i8* @g_variant_get_fixed_array(%struct._GVariant* %32, i64* %12, i64 1)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8* (i8*, i64)*, i8* (i8*, i64)** %7, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i8* %37(i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %8, align 8
  %43 = bitcast %struct._OrgBluezGattCharacteristic1* %42 to i8*
  call void @g_object_unref(i8* %43)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %30, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_write_char_by_uuid(%struct._gatt_connection_t* %0, %struct.uuid_t* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._gatt_connection_t*, align 8
  %7 = alloca %struct.uuid_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._OrgBluezGattCharacteristic1*, align 8
  %11 = alloca %struct._GVariant*, align 8
  %12 = alloca %struct._GError*, align 8
  %13 = alloca %struct._GVariantBuilder*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %6, align 8
  store %struct.uuid_t* %1, %struct.uuid_t** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %6, align 8
  %15 = load %struct.uuid_t*, %struct.uuid_t** %7, align 8
  %16 = call %struct._OrgBluezGattCharacteristic1* @get_characteristic_from_uuid(%struct._gatt_connection_t* %14, %struct.uuid_t* %15)
  store %struct._OrgBluezGattCharacteristic1* %16, %struct._OrgBluezGattCharacteristic1** %10, align 8
  %17 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %10, align 8
  %18 = icmp eq %struct._OrgBluezGattCharacteristic1* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = call %struct._GVariantType* @g_variant_type_checked_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call %struct._GVariant* @g_variant_new_from_data(%struct._GVariantType* %21, i8* %22, i64 %23, i32 1, void (i8*)* null, i8* null)
  store %struct._GVariant* %24, %struct._GVariant** %11, align 8
  store %struct._GError* null, %struct._GError** %12, align 8
  %25 = call %struct._GVariantType* @g_variant_type_checked_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %26 = call %struct._GVariantBuilder* @g_variant_builder_new(%struct._GVariantType* %25)
  store %struct._GVariantBuilder* %26, %struct._GVariantBuilder** %13, align 8
  %27 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %10, align 8
  %28 = load %struct._GVariant*, %struct._GVariant** %11, align 8
  %29 = load %struct._GVariantBuilder*, %struct._GVariantBuilder** %13, align 8
  %30 = call %struct._GVariant* @g_variant_builder_end(%struct._GVariantBuilder* %29)
  %31 = call i32 @org_bluez_gatt_characteristic1_call_write_value_sync(%struct._OrgBluezGattCharacteristic1* %27, %struct._GVariant* %28, %struct._GVariant* %30, %struct._GCancellable* null, %struct._GError** %12)
  %32 = load %struct._GVariantBuilder*, %struct._GVariantBuilder** %13, align 8
  call void @g_variant_builder_unref(%struct._GVariantBuilder* %32)
  %33 = load %struct._GError*, %struct._GError** %12, align 8
  %34 = icmp ne %struct._GError* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %39

36:                                               ; preds = %20
  %37 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %10, align 8
  %38 = bitcast %struct._OrgBluezGattCharacteristic1* %37 to i8*
  call void @g_object_unref(i8* %38)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %35, %19
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare %struct._GVariant* @g_variant_new_from_data(%struct._GVariantType*, i8*, i64, i32, void (i8*)*, i8*) #2

declare i32 @org_bluez_gatt_characteristic1_call_write_value_sync(%struct._OrgBluezGattCharacteristic1*, %struct._GVariant*, %struct._GVariant*, %struct._GCancellable*, %struct._GError**) #2

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_write_char_by_handle(%struct._gatt_connection_t* %0, i16 zeroext %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct._gatt_connection_t*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %5, align 8
  store i16 %1, i16* %6, align 2
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define i32 @on_handle_characteristic_property_change(%struct._OrgBluezGattCharacteristic1* %0, %struct._GVariant* %1, i8** %2, i8* %3) #0 {
  %5 = alloca %struct._OrgBluezGattCharacteristic1*, align 8
  %6 = alloca %struct._GVariant*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._gatt_connection_t*, align 8
  %10 = alloca %struct._GVariantIter*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._GVariant*, align 8
  %13 = alloca %struct.uuid_t, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct._OrgBluezGattCharacteristic1* %0, %struct._OrgBluezGattCharacteristic1** %5, align 8
  store %struct._GVariant* %1, %struct._GVariant** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct._gatt_connection_t*
  store %struct._gatt_connection_t* %17, %struct._gatt_connection_t** %9, align 8
  %18 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %9, align 8
  %19 = getelementptr inbounds %struct._gatt_connection_t, %struct._gatt_connection_t* %18, i32 0, i32 1
  %20 = load void (%struct.uuid_t*, i8*, i64, i8*)*, void (%struct.uuid_t*, i8*, i64, i8*)** %19, align 8
  %21 = icmp ne void (%struct.uuid_t*, i8*, i64, i8*)* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %4
  %23 = load %struct._GVariant*, %struct._GVariant** %6, align 8
  %24 = call i64 @g_variant_n_children(%struct._GVariant* %23)
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load %struct._GVariant*, %struct._GVariant** %6, align 8
  call void (%struct._GVariant*, i8*, ...) @g_variant_get(%struct._GVariant* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._GVariantIter** %10)
  br label %28

28:                                               ; preds = %50, %26
  %29 = load %struct._GVariantIter*, %struct._GVariantIter** %10, align 8
  %30 = call i32 (%struct._GVariantIter*, i8*, ...) @g_variant_iter_loop(%struct._GVariantIter* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8** %11, %struct._GVariant** %12)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct._GVariant*, %struct._GVariant** %12, align 8
  %38 = call i8* @g_variant_get_fixed_array(%struct._GVariant* %37, i64* %14, i64 1)
  store i8* %38, i8** %15, align 8
  %39 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %5, align 8
  %40 = call i8* @org_bluez_gatt_characteristic1_get_uuid(%struct._OrgBluezGattCharacteristic1* %39)
  %41 = call i32 @gattlib_string_to_uuid(i8* %40, i64 38, %struct.uuid_t* %13)
  %42 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %9, align 8
  %43 = getelementptr inbounds %struct._gatt_connection_t, %struct._gatt_connection_t* %42, i32 0, i32 1
  %44 = load void (%struct.uuid_t*, i8*, i64, i8*)*, void (%struct.uuid_t*, i8*, i64, i8*)** %43, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %9, align 8
  %48 = getelementptr inbounds %struct._gatt_connection_t, %struct._gatt_connection_t* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  call void %44(%struct.uuid_t* %13, i8* %45, i64 %46, i8* %49)
  br label %51

50:                                               ; preds = %32
  br label %28

51:                                               ; preds = %36, %28
  br label %52

52:                                               ; preds = %51, %22
  br label %53

53:                                               ; preds = %52, %4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_notification_start(%struct._gatt_connection_t* %0, %struct.uuid_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._gatt_connection_t*, align 8
  %5 = alloca %struct.uuid_t*, align 8
  %6 = alloca %struct._OrgBluezGattCharacteristic1*, align 8
  %7 = alloca %struct._GError*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %4, align 8
  store %struct.uuid_t* %1, %struct.uuid_t** %5, align 8
  %8 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %4, align 8
  %9 = load %struct.uuid_t*, %struct.uuid_t** %5, align 8
  %10 = call %struct._OrgBluezGattCharacteristic1* @get_characteristic_from_uuid(%struct._gatt_connection_t* %8, %struct.uuid_t* %9)
  store %struct._OrgBluezGattCharacteristic1* %10, %struct._OrgBluezGattCharacteristic1** %6, align 8
  %11 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %6, align 8
  %12 = icmp eq %struct._OrgBluezGattCharacteristic1* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %6, align 8
  %16 = bitcast %struct._OrgBluezGattCharacteristic1* %15 to i8*
  %17 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %4, align 8
  %18 = bitcast %struct._gatt_connection_t* %17 to i8*
  %19 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (i32 (%struct._OrgBluezGattCharacteristic1*, %struct._GVariant*, i8**, i8*)* @on_handle_characteristic_property_change to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  store %struct._GError* null, %struct._GError** %7, align 8
  %20 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %6, align 8
  %21 = call i32 @org_bluez_gatt_characteristic1_call_start_notify_sync(%struct._OrgBluezGattCharacteristic1* %20, %struct._GCancellable* null, %struct._GError** %7)
  %22 = load %struct._GError*, %struct._GError** %7, align 8
  %23 = icmp ne %struct._GError* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %26

25:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare i32 @org_bluez_gatt_characteristic1_call_start_notify_sync(%struct._OrgBluezGattCharacteristic1*, %struct._GCancellable*, %struct._GError**) #2

; Function Attrs: noinline nounwind uwtable
define i32 @gattlib_notification_stop(%struct._gatt_connection_t* %0, %struct.uuid_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._gatt_connection_t*, align 8
  %5 = alloca %struct.uuid_t*, align 8
  %6 = alloca %struct._OrgBluezGattCharacteristic1*, align 8
  %7 = alloca %struct._GError*, align 8
  store %struct._gatt_connection_t* %0, %struct._gatt_connection_t** %4, align 8
  store %struct.uuid_t* %1, %struct.uuid_t** %5, align 8
  %8 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %4, align 8
  %9 = load %struct.uuid_t*, %struct.uuid_t** %5, align 8
  %10 = call %struct._OrgBluezGattCharacteristic1* @get_characteristic_from_uuid(%struct._gatt_connection_t* %8, %struct.uuid_t* %9)
  store %struct._OrgBluezGattCharacteristic1* %10, %struct._OrgBluezGattCharacteristic1** %6, align 8
  %11 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %6, align 8
  %12 = icmp eq %struct._OrgBluezGattCharacteristic1* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  store %struct._GError* null, %struct._GError** %7, align 8
  %15 = load %struct._OrgBluezGattCharacteristic1*, %struct._OrgBluezGattCharacteristic1** %6, align 8
  %16 = call i32 @org_bluez_gatt_characteristic1_call_stop_notify_sync(%struct._OrgBluezGattCharacteristic1* %15, %struct._GCancellable* null, %struct._GError** %7)
  %17 = load %struct._GError*, %struct._GError** %7, align 8
  %18 = icmp ne %struct._GError* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %19, %13
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare i32 @org_bluez_gatt_characteristic1_call_stop_notify_sync(%struct._OrgBluezGattCharacteristic1*, %struct._GCancellable*, %struct._GError**) #2

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
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* %19)
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
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1.28, i32 0, i32 0))
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
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2.29, i32 0, i32 0))
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
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3.30, i32 0, i32 0), i32 %52, i32 %59, i32 %66, i8* %67)
  br label %69

69:                                               ; preds = %44
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %40

72:                                               ; preds = %40
  %73 = load %struct.gattlib_primary_service_t*, %struct.gattlib_primary_service_t** %7, align 8
  %74 = bitcast %struct.gattlib_primary_service_t* %73 to i8*
  call void @free(i8* %74) #6
  %75 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %6, align 8
  %76 = call i32 @gattlib_discover_char(%struct._gatt_connection_t* %75, %struct.gattlib_characteristic_t** %8, i32* %10)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4.31, i32 0, i32 0))
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
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5.32, i32 0, i32 0), i32 %95, i32 %102, i32 %109, i8* %110)
  br label %112

112:                                              ; preds = %87
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %83

115:                                              ; preds = %83
  %116 = load %struct.gattlib_characteristic_t*, %struct.gattlib_characteristic_t** %8, align 8
  %117 = bitcast %struct.gattlib_characteristic_t* %116 to i8*
  call void @free(i8* %117) #6
  %118 = load %struct._gatt_connection_t*, %struct._gatt_connection_t** %6, align 8
  %119 = call i32 @gattlib_disconnect(%struct._gatt_connection_t* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %115, %79, %36, %28, %16
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @gattlib_uuid_to_string(%struct.uuid_t*, i8*, i64) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
