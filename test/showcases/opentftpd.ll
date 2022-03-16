target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.data1 = type { [8 x %struct.tftpConnType], [8 x i32], [8 x i32], [8 x i32], [8 x i16], i8, i8, i32 }
%struct.tftpConnType = type { i32, %struct.sockaddr_in, i32, i16, i8, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.data2 = type { [32 x %struct.data12], [8 x %struct.home], %struct._IO_FILE*, [128 x i8], i32, i32, i8, i8, i8, i32, i32, i32, i8, i32, i32, [8 x %struct.ifreq], i8, i32, [8 x i32], i8 }
%struct.data12 = type { i32, i32 }
%struct.home = type { [64 x i8], [256 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ifreq = type { %union.anon, %union.anon.0 }
%union.anon = type { [16 x i8] }
%union.anon.0 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.ifconf = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.request = type { %struct.timeval, %struct.fd_set, i64, i32, i32, i8, i8, [256 x i8], %struct._IO_FILE*, i8*, i8*, i8*, i32, i32, i32, i32, [2 x i32], [2 x %struct.packet*], %struct.sockaddr_in, i32, %union.anon.2, %union.anon.3, i16, i16, i16, i16 }
%struct.packet = type { i16, i16, i8 }
%union.anon.2 = type { %struct.tftperror }
%struct.tftperror = type { i16, i16, [512 x i8] }
%union.anon.3 = type { %struct.tftperror }
%struct.message = type { i16, [514 x i8] }
%struct.acknowledgement = type { i16, i16 }
%struct.data15 = type { %union.anon.4 }
%union.anon.4 = type { i32 }

$_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

@kRunning = global i8 1, align 1
@verbatim = global i8 0, align 1
@iniFile = global [256 x i8] zeroinitializer, align 16
@logFile = global [256 x i8] zeroinitializer, align 16
@fileSep = global i8 47, align 1
@notFileSep = global i8 92, align 1
@blksize = global i32 65464, align 4
@timeout = global i16 3, align 2
@network = global %struct.data1 zeroinitializer, align 4
@newNetwork = global %struct.data1 zeroinitializer, align 4
@cfig = global %struct.data2 zeroinitializer, align 8
@Ifc = global %struct.ifconf zeroinitializer, align 8
@IfcBuf = global [8 x %struct.ifreq] zeroinitializer, align 16
@logBuff = global [256 x i8] zeroinitializer, align 16
@tempbuff = global [256 x i8] zeroinitializer, align 16
@extbuff = global [256 x i8] zeroinitializer, align 16
@loggingDay = global i16 0, align 2
@sVersion = global [55 x i8] c"TFTP Server MultiThreaded Version 1.65 Unix Built 2002\00", align 16
@threadId = global i64 0, align 8
@minThreads = global i16 1, align 2
@totalThreads = global i16 0, align 2
@activeThreads = global i16 0, align 2
@currentServer = global i32 255, align 4
@mutThread = global %union.pthread_mutex_t zeroinitializer, align 8
@mutSocket = global %union.pthread_mutex_t zeroinitializer, align 8
@mutCount = global %union.pthread_mutex_t zeroinitializer, align 8
@mutLog = global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error: Invalid Argument %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"/etc/opentftpd.ini\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Error: Main Thread Creation Failed with error %s\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Thread Creation Error %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Thread Creation Error %i\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Closing Network Connections...\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"TFTP Server Stopped !\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Access Denied\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Error Code %i at Client, %s\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Unknown Transfer Id\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Communication Error\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Thread Socket Creation Error\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"No port is free\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Thread failed to bind\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Connect Failed\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Malformed Request, Invalid/Missing Filename\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Malformed Request, Invalid/Missing Mode\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Access violation\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Filename too large\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Missing directory/alias\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"No such directory/alias %s\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"GET Access Denied\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"blksize\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"netascii\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"File not found or No Access\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"PUT Access Denied\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"File already exists\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Create File Access Denied\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Invalid Path or No Access\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"tsize\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Memory Error\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"File Access Error\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"Client %s:%u, Error Code %i at Client, %s\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"Unexpected Option Code %i\00", align 1
@.str.46 = private unnamed_addr constant [52 x i8] c"Large File, Block# Rollover not supported by Client\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"%u Blocks Served\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Disk full or allocation exceeded\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"%u Blocks Received\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"Error: Incoming Packet too large\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"/\5C?*\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"LOGGING\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Errors\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"Section [LOGGING], Invalid LogLevel: %s\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"%s Starting..\00", align 1
@.str.65 = private unnamed_addr constant [50 x i8] c"Warning: file %s not found, defaults will be used\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.67 = private unnamed_addr constant [60 x i8] c"Section [HOME], alias and bare path mixup, entry %s ignored\00", align 1
@.str.68 = private unnamed_addr constant [57 x i8] c"Section [HOME], invalid chars in alias %s, entry ignored\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"Section [HOME], Duplicate Entry: %s ignored\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"Section [HOME], alias name %s too large\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"Section [HOME], Duplicate Path: %s ignored\00", align 1
@.str.72 = private unnamed_addr constant [58 x i8] c"Section [HOME], missing = sign, Invalid Entry: %s ignored\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"TFTP-OPTIONS\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"UserName\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"/home/\00", align 1
@.str.77 = private unnamed_addr constant [55 x i8] c"Section [TFTP-OPTIONS], unknown username: %s, stopping\00", align 1
@.str.78 = private unnamed_addr constant [55 x i8] c"Section [TFTP-OPTIONS], invalid username: %s, stopping\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"threadpoolsize\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"Yy\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"Overwrite\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"port-range\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"Invalid port range %s\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"Warning: unknown option %s, ignored\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"ALLOWED-CLIENTS\00", align 1
@.str.88 = private unnamed_addr constant [64 x i8] c"Section [ALLOWED-CLIENTS] Invalid entry %s in ini file, ignored\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"username: %s\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"alias /%s is mapped to %s\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"permitted clients: \00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"%s-\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"permitted clients: all\00", align 1
@.str.94 = private unnamed_addr constant [25 x i8] c"server port range: %u-%u\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"server port range: all\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"max blksize: %u\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"default blksize: %u\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"default timeout: %u\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"file read allowed: %s\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"file create allowed: %s\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"file overwrite allowed: %s\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"logging: %s\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.107 = private unnamed_addr constant [49 x i8] c"Warning Thread# %i Creation Failed with error %i\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"thread pool size: %u\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"Failed to Create Socket\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"LISTEN-ON\00", align 1
@.str.111 = private unnamed_addr constant [68 x i8] c"Warning: Section [LISTEN-ON], Invalid Interface Address %s, ignored\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"%s Port %i bind failed, %s\00", align 1
@.str.113 = private unnamed_addr constant [38 x i8] c"No Static Interface ready, Waiting...\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"listening on: %s:%i\00", align 1
@.str.115 = private unnamed_addr constant [53 x i8] c"Network changed, re-detecting Listening Interfaces..\00", align 1
@.str.116 = private unnamed_addr constant [39 x i8] c"Retrying failed Listening Interfaces..\00", align 1
@.str.117 = private unnamed_addr constant [30 x i8] c"Logging Continued on file %s\0A\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"%d-%b-%y %X\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"[%s] %s\0A\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"Client %s:%u %s, %s\0A\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"Client %s:%u, %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"[%s] Client %s:%u %s, %s\0A\00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"[%s] Client %s:%u, %s\0A\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.pthread_attr_t, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.fd_set, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.pthread_attr_t, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.pthread_attr_t, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.timeval, align 8
  %23 = alloca %struct.fd_set, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %union.pthread_attr_t, align 8
  %30 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %31 = call void (i32)* @signal(i32 2, void (i32)* @_Z9catch_inti) #10
  %32 = call void (i32)* @signal(i32 6, void (i32)* @_Z9catch_inti) #10
  %33 = call void (i32)* @signal(i32 15, void (i32)* @_Z9catch_inti) #10
  %34 = call void (i32)* @signal(i32 3, void (i32)* @_Z9catch_inti) #10
  %35 = call void (i32)* @signal(i32 20, void (i32)* @_Z9catch_inti) #10
  %36 = call void (i32)* @signal(i32 1, void (i32)* @_Z9catch_inti) #10
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i64 0, i64 0), align 16
  store i32 1, i32* %6, align 4
  br label %37

; <label>:37:                                     ; preds = %162, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %165

; <label>:41:                                     ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #11
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

; <label>:49:                                     ; preds = %41
  store i8 1, i8* @verbatim, align 1
  br label %161

; <label>:50:                                     ; preds = %41
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #11
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %84, label %58

; <label>:58:                                     ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = icmp sgt i32 %59, %61
  br i1 %62, label %63, label %84

; <label>:63:                                     ; preds = %58
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 45
  br i1 %73, label %74, label %84

; <label>:74:                                     ; preds = %63
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @_Z6myTrimPcS_(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0), i8* %80)
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %160

; <label>:84:                                     ; preds = %63, %58, %50
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #11
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %118, label %92

; <label>:92:                                     ; preds = %84
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %118

; <label>:97:                                     ; preds = %92
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 45
  br i1 %107, label %108, label %118

; <label>:108:                                    ; preds = %97
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @_Z6myTrimPcS_(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i32 0, i32 0), i8* %114)
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %159

; <label>:118:                                    ; preds = %97, %92, %84
  %119 = load i8**, i8*** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @strncasecmp(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 2) #11
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

; <label>:126:                                    ; preds = %118
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = call i8* @_Z6myTrimPcS_(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0), i8* %132)
  br label %158

; <label>:134:                                    ; preds = %118
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @strncasecmp(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i64 2) #11
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

; <label>:142:                                    ; preds = %134
  %143 = load i8**, i8*** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  %149 = call i8* @_Z6myTrimPcS_(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i32 0, i32 0), i8* %148)
  br label %157

; <label>:150:                                    ; preds = %134
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* %155) #10
  br label %165

; <label>:157:                                    ; preds = %142
  br label %158

; <label>:158:                                    ; preds = %157, %126
  br label %159

; <label>:159:                                    ; preds = %158, %108
  br label %160

; <label>:160:                                    ; preds = %159, %74
  br label %161

; <label>:161:                                    ; preds = %160, %49
  br label %162

; <label>:162:                                    ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %37

; <label>:165:                                    ; preds = %150, %37
  %166 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i64 0, i64 0), align 16
  %167 = icmp ne i8 %166, 0
  br i1 %167, label %170, label %168

; <label>:168:                                    ; preds = %165
  %169 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)) #10
  br label %170

; <label>:170:                                    ; preds = %168, %165
  %171 = load i8, i8* @verbatim, align 1
  %172 = trunc i8 %171 to i1
  br i1 %172, label %173, label %342

; <label>:173:                                    ; preds = %170
  %174 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i64 0, i64 0), align 16
  %175 = icmp ne i8 %174, 0
  br i1 %175, label %176, label %178

; <label>:176:                                    ; preds = %173
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0))
  call void @exit(i32 1) #12
  unreachable

; <label>:178:                                    ; preds = %173
  %179 = call i32 @pthread_attr_init(%union.pthread_attr_t* %7) #10
  %180 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %7, i32 1) #10
  %181 = call i32 @pthread_create(i64* @threadId, %union.pthread_attr_t* %7, i8* (i8*)* @_Z4initPv, i8* null) #10
  store i32 %181, i32* %8, align 4
  %182 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %7) #10
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

; <label>:185:                                    ; preds = %178
  %186 = load i32, i32* %8, align 4
  %187 = call i8* @strerror(i32 %186) #10
  %188 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i8* %187) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @exit(i32 1) #12
  unreachable

; <label>:189:                                    ; preds = %178
  br label %190

; <label>:190:                                    ; preds = %199, %189
  %191 = load i8, i8* @kRunning, align 1
  %192 = trunc i8 %191 to i1
  br i1 %192, label %193, label %197

; <label>:193:                                    ; preds = %190
  %194 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %195 = trunc i8 %194 to i1
  %196 = xor i1 %195, true
  br label %197

; <label>:197:                                    ; preds = %193, %190
  %198 = phi i1 [ false, %190 ], [ %196, %193 ]
  br i1 %198, label %199, label %201

; <label>:199:                                    ; preds = %197
  %200 = call i32 @sleep(i32 1)
  br label %190

; <label>:201:                                    ; preds = %197
  %202 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 4), align 8
  %203 = call i32 @setuid(i32 %202) #10
  %204 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 5), align 4
  %205 = call i32 @setgid(i32 %204) #10
  br label %206

; <label>:206:                                    ; preds = %340, %212, %201
  %207 = load i8, i8* @kRunning, align 1
  %208 = trunc i8 %207 to i1
  br i1 %208, label %209, label %341

; <label>:209:                                    ; preds = %206
  store i8 0, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 6), align 1
  %210 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %211 = trunc i8 %210 to i1
  br i1 %211, label %214, label %212

; <label>:212:                                    ; preds = %209
  %213 = call i32 @sleep(i32 1)
  br label %206

; <label>:214:                                    ; preds = %209
  br label %215

; <label>:215:                                    ; preds = %214
  %216 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %10, i32 0, i32 0
  %217 = getelementptr inbounds [16 x i64], [16 x i64]* %216, i64 0, i64 0
  %218 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %217) #10, !srcloc !2
  %219 = extractvalue { i64, i64* } %218, 0
  %220 = extractvalue { i64, i64* } %218, 1
  %221 = trunc i64 %219 to i32
  store i32 %221, i32* %11, align 4
  %222 = ptrtoint i64* %220 to i64
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %12, align 4
  br label %224

; <label>:224:                                    ; preds = %215
  %225 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 20, i64* %225, align 8
  %226 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %226, align 8
  store i32 0, i32* %13, align 4
  br label %227

; <label>:227:                                    ; preds = %259, %224
  %228 = load i32, i32* %13, align 4
  %229 = icmp slt i32 %228, 8
  br i1 %229, label %230, label %237

; <label>:230:                                    ; preds = %227
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %232
  %234 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %233, i32 0, i32 5
  %235 = load i8, i8* %234, align 1
  %236 = trunc i8 %235 to i1
  br label %237

; <label>:237:                                    ; preds = %230, %227
  %238 = phi i1 [ false, %227 ], [ %236, %230 ]
  br i1 %238, label %239, label %262

; <label>:239:                                    ; preds = %237
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %241
  %243 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = srem i32 %244, 64
  %246 = zext i32 %245 to i64
  %247 = shl i64 1, %246
  %248 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %10, i32 0, i32 0
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %250
  %252 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = sdiv i32 %253, 64
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [16 x i64], [16 x i64]* %248, i64 0, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = or i64 %257, %247
  store i64 %258, i64* %256, align 8
  br label %259

; <label>:259:                                    ; preds = %239
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %13, align 4
  br label %227

; <label>:262:                                    ; preds = %237
  %263 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutSocket) #10
  %264 = load i32, i32* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 7), align 4
  %265 = call i32 @select(i32 %264, %struct.fd_set* %10, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %9)
  store i32 %265, i32* %14, align 4
  %266 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutSocket) #10
  store i32 0, i32* %15, align 4
  br label %267

; <label>:267:                                    ; preds = %337, %262
  %268 = load i32, i32* %14, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %280

; <label>:270:                                    ; preds = %267
  %271 = load i32, i32* %15, align 4
  %272 = icmp slt i32 %271, 8
  br i1 %272, label %273, label %280

; <label>:273:                                    ; preds = %270
  %274 = load i32, i32* %15, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %275
  %277 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %276, i32 0, i32 5
  %278 = load i8, i8* %277, align 1
  %279 = trunc i8 %278 to i1
  br label %280

; <label>:280:                                    ; preds = %273, %270, %267
  %281 = phi i1 [ false, %270 ], [ false, %267 ], [ %279, %273 ]
  br i1 %281, label %282, label %340

; <label>:282:                                    ; preds = %280
  %283 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %284 = trunc i8 %283 to i1
  br i1 %284, label %285, label %336

; <label>:285:                                    ; preds = %282
  store i8 1, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 6), align 1
  %286 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %10, i32 0, i32 0
  %287 = load i32, i32* %15, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %288
  %290 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = sdiv i32 %291, 64
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [16 x i64], [16 x i64]* %286, i64 0, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %15, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %297
  %299 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = srem i32 %300, 64
  %302 = zext i32 %301 to i64
  %303 = shl i64 1, %302
  %304 = and i64 %295, %303
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %335

; <label>:306:                                    ; preds = %285
  %307 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutSocket) #10
  %308 = load i32, i32* %15, align 4
  store i32 %308, i32* @currentServer, align 4
  %309 = load i16, i16* @totalThreads, align 2
  %310 = icmp ne i16 %309, 0
  br i1 %310, label %311, label %317

; <label>:311:                                    ; preds = %306
  %312 = load i16, i16* @activeThreads, align 2
  %313 = zext i16 %312 to i32
  %314 = load i16, i16* @totalThreads, align 2
  %315 = zext i16 %314 to i32
  %316 = icmp sge i32 %313, %315
  br i1 %316, label %317, label %329

; <label>:317:                                    ; preds = %311, %306
  %318 = call i32 @pthread_attr_init(%union.pthread_attr_t* %16) #10
  %319 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %16, i32 1) #10
  %320 = call i32 @pthread_create(i64* @threadId, %union.pthread_attr_t* %16, i8* (i8*)* @_Z14processRequestPv, i8* null) #10
  store i32 %320, i32* %17, align 4
  %321 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %16) #10
  %322 = load i32, i32* %17, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %328

; <label>:324:                                    ; preds = %317
  %325 = load i32, i32* %17, align 4
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i32 %325)
  %327 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutSocket) #10
  br label %337

; <label>:328:                                    ; preds = %317
  br label %329

; <label>:329:                                    ; preds = %328, %311
  %330 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutThread) #10
  %331 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutSocket) #10
  %332 = load i32, i32* %14, align 4
  %333 = add nsw i32 %332, -1
  store i32 %333, i32* %14, align 4
  %334 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutSocket) #10
  br label %335

; <label>:335:                                    ; preds = %329, %285
  br label %336

; <label>:336:                                    ; preds = %335, %282
  br label %337

; <label>:337:                                    ; preds = %336, %324
  %338 = load i32, i32* %15, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %15, align 4
  br label %267

; <label>:340:                                    ; preds = %280
  br label %206

; <label>:341:                                    ; preds = %206
  br label %535

; <label>:342:                                    ; preds = %170
  %343 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i64 0, i64 0), align 16
  %344 = icmp ne i8 %343, 0
  br i1 %344, label %345, label %346

; <label>:345:                                    ; preds = %342
  call void (i32, i8*, ...) @syslog(i32 138, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0))
  call void @exit(i32 1) #12
  unreachable

; <label>:346:                                    ; preds = %342
  %347 = call i32 @fork() #10
  store i32 %347, i32* %18, align 4
  %348 = load i32, i32* %18, align 4
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %351

; <label>:350:                                    ; preds = %346
  call void @exit(i32 1) #12
  unreachable

; <label>:351:                                    ; preds = %346
  %352 = load i32, i32* %18, align 4
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %354, label %355

; <label>:354:                                    ; preds = %351
  call void @exit(i32 0) #12
  unreachable

; <label>:355:                                    ; preds = %351
  %356 = call i32 @umask(i32 0) #10
  %357 = call i32 @setsid() #10
  store i32 %357, i32* %19, align 4
  %358 = load i32, i32* %19, align 4
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %361

; <label>:360:                                    ; preds = %355
  call void @exit(i32 1) #12
  unreachable

; <label>:361:                                    ; preds = %355
  %362 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #10
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %365

; <label>:364:                                    ; preds = %361
  call void @exit(i32 1) #12
  unreachable

; <label>:365:                                    ; preds = %361
  %366 = call i32 @close(i32 0)
  %367 = call i32 @close(i32 1)
  %368 = call i32 @close(i32 2)
  %369 = call i32 @pthread_attr_init(%union.pthread_attr_t* %20) #10
  %370 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %20, i32 1) #10
  %371 = call i32 @pthread_create(i64* @threadId, %union.pthread_attr_t* %20, i8* (i8*)* @_Z4initPv, i8* null) #10
  store i32 %371, i32* %21, align 4
  %372 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %20) #10
  %373 = load i32, i32* %21, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

; <label>:375:                                    ; preds = %365
  %376 = load i32, i32* %21, align 4
  %377 = call i8* @strerror(i32 %376) #10
  %378 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i8* %377) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @exit(i32 1) #12
  unreachable

; <label>:379:                                    ; preds = %365
  br label %380

; <label>:380:                                    ; preds = %389, %379
  %381 = load i8, i8* @kRunning, align 1
  %382 = trunc i8 %381 to i1
  br i1 %382, label %383, label %387

; <label>:383:                                    ; preds = %380
  %384 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %385 = trunc i8 %384 to i1
  %386 = xor i1 %385, true
  br label %387

; <label>:387:                                    ; preds = %383, %380
  %388 = phi i1 [ false, %380 ], [ %386, %383 ]
  br i1 %388, label %389, label %391

; <label>:389:                                    ; preds = %387
  %390 = call i32 @sleep(i32 1)
  br label %380

; <label>:391:                                    ; preds = %387
  %392 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 4), align 8
  %393 = call i32 @setuid(i32 %392) #10
  %394 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 5), align 4
  %395 = call i32 @setgid(i32 %394) #10
  br label %396

; <label>:396:                                    ; preds = %533, %405, %391
  %397 = load i8, i8* @kRunning, align 1
  %398 = trunc i8 %397 to i1
  br i1 %398, label %399, label %534

; <label>:399:                                    ; preds = %396
  store i8 0, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 6), align 1
  %400 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0, i64 0, i32 5), align 1
  %401 = trunc i8 %400 to i1
  br i1 %401, label %402, label %405

; <label>:402:                                    ; preds = %399
  %403 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %404 = trunc i8 %403 to i1
  br i1 %404, label %407, label %405

; <label>:405:                                    ; preds = %402, %399
  %406 = call i32 @sleep(i32 2)
  br label %396

; <label>:407:                                    ; preds = %402
  br label %408

; <label>:408:                                    ; preds = %407
  %409 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %23, i32 0, i32 0
  %410 = getelementptr inbounds [16 x i64], [16 x i64]* %409, i64 0, i64 0
  %411 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %410) #10, !srcloc !3
  %412 = extractvalue { i64, i64* } %411, 0
  %413 = extractvalue { i64, i64* } %411, 1
  %414 = trunc i64 %412 to i32
  store i32 %414, i32* %24, align 4
  %415 = ptrtoint i64* %413 to i64
  %416 = trunc i64 %415 to i32
  store i32 %416, i32* %25, align 4
  br label %417

; <label>:417:                                    ; preds = %408
  %418 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  store i64 20, i64* %418, align 8
  %419 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  store i64 0, i64* %419, align 8
  store i32 0, i32* %26, align 4
  br label %420

; <label>:420:                                    ; preds = %452, %417
  %421 = load i32, i32* %26, align 4
  %422 = icmp slt i32 %421, 8
  br i1 %422, label %423, label %430

; <label>:423:                                    ; preds = %420
  %424 = load i32, i32* %26, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %425
  %427 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %426, i32 0, i32 5
  %428 = load i8, i8* %427, align 1
  %429 = trunc i8 %428 to i1
  br label %430

; <label>:430:                                    ; preds = %423, %420
  %431 = phi i1 [ false, %420 ], [ %429, %423 ]
  br i1 %431, label %432, label %455

; <label>:432:                                    ; preds = %430
  %433 = load i32, i32* %26, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %434
  %436 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = srem i32 %437, 64
  %439 = zext i32 %438 to i64
  %440 = shl i64 1, %439
  %441 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %23, i32 0, i32 0
  %442 = load i32, i32* %26, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %443
  %445 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = sdiv i32 %446, 64
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [16 x i64], [16 x i64]* %441, i64 0, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = or i64 %450, %440
  store i64 %451, i64* %449, align 8
  br label %452

; <label>:452:                                    ; preds = %432
  %453 = load i32, i32* %26, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %26, align 4
  br label %420

; <label>:455:                                    ; preds = %430
  %456 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutSocket) #10
  %457 = load i32, i32* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 7), align 4
  %458 = call i32 @select(i32 %457, %struct.fd_set* %23, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %22)
  store i32 %458, i32* %27, align 4
  %459 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutSocket) #10
  store i32 0, i32* %28, align 4
  br label %460

; <label>:460:                                    ; preds = %530, %455
  %461 = load i32, i32* %27, align 4
  %462 = icmp sgt i32 %461, 0
  br i1 %462, label %463, label %473

; <label>:463:                                    ; preds = %460
  %464 = load i32, i32* %28, align 4
  %465 = icmp slt i32 %464, 8
  br i1 %465, label %466, label %473

; <label>:466:                                    ; preds = %463
  %467 = load i32, i32* %28, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %468
  %470 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %469, i32 0, i32 5
  %471 = load i8, i8* %470, align 1
  %472 = trunc i8 %471 to i1
  br label %473

; <label>:473:                                    ; preds = %466, %463, %460
  %474 = phi i1 [ false, %463 ], [ false, %460 ], [ %472, %466 ]
  br i1 %474, label %475, label %533

; <label>:475:                                    ; preds = %473
  %476 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  %477 = trunc i8 %476 to i1
  br i1 %477, label %478, label %529

; <label>:478:                                    ; preds = %475
  store i8 1, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 6), align 1
  %479 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %23, i32 0, i32 0
  %480 = load i32, i32* %28, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %481
  %483 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = sdiv i32 %484, 64
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [16 x i64], [16 x i64]* %479, i64 0, i64 %486
  %488 = load i64, i64* %487, align 8
  %489 = load i32, i32* %28, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %490
  %492 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = srem i32 %493, 64
  %495 = zext i32 %494 to i64
  %496 = shl i64 1, %495
  %497 = and i64 %488, %496
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %528

; <label>:499:                                    ; preds = %478
  %500 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutSocket) #10
  %501 = load i32, i32* %28, align 4
  store i32 %501, i32* @currentServer, align 4
  %502 = load i16, i16* @totalThreads, align 2
  %503 = icmp ne i16 %502, 0
  br i1 %503, label %504, label %510

; <label>:504:                                    ; preds = %499
  %505 = load i16, i16* @activeThreads, align 2
  %506 = zext i16 %505 to i32
  %507 = load i16, i16* @totalThreads, align 2
  %508 = zext i16 %507 to i32
  %509 = icmp sge i32 %506, %508
  br i1 %509, label %510, label %522

; <label>:510:                                    ; preds = %504, %499
  %511 = call i32 @pthread_attr_init(%union.pthread_attr_t* %29) #10
  %512 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %29, i32 1) #10
  %513 = call i32 @pthread_create(i64* @threadId, %union.pthread_attr_t* %29, i8* (i8*)* @_Z14processRequestPv, i8* null) #10
  store i32 %513, i32* %30, align 4
  %514 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %29) #10
  %515 = load i32, i32* %30, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %521

; <label>:517:                                    ; preds = %510
  %518 = load i32, i32* %30, align 4
  %519 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %518) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %520 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutSocket) #10
  br label %530

; <label>:521:                                    ; preds = %510
  br label %522

; <label>:522:                                    ; preds = %521, %504
  %523 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutThread) #10
  %524 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutSocket) #10
  %525 = load i32, i32* %27, align 4
  %526 = add nsw i32 %525, -1
  store i32 %526, i32* %27, align 4
  %527 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutSocket) #10
  br label %528

; <label>:528:                                    ; preds = %522, %478
  br label %529

; <label>:529:                                    ; preds = %528, %475
  br label %530

; <label>:530:                                    ; preds = %529, %517
  %531 = load i32, i32* %28, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %28, align 4
  br label %460

; <label>:533:                                    ; preds = %473
  br label %396

; <label>:534:                                    ; preds = %396
  br label %535

; <label>:535:                                    ; preds = %534, %341
  %536 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @_Z9closeConnv()
  %537 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 4
  %538 = call i32 @close(i32 %537)
  %539 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %540 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %541 = icmp ne %struct._IO_FILE* %540, null
  br i1 %541, label %542, label %545

; <label>:542:                                    ; preds = %535
  %543 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %544 = call i32 @fclose(%struct._IO_FILE* %543)
  br label %545

; <label>:545:                                    ; preds = %542, %535
  call void @exit(i32 0) #12
  unreachable
                                                  ; No predecessors!
  %547 = load i32, i32* %3, align 4
  ret i32 %547
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z9catch_inti(i32) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 11), align 4
  %4 = call i32 @getpid() #10
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i8 0, i8* @kRunning, align 1
  br label %7

; <label>:7:                                      ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define i8* @_Z6myTrimPcS_(i8*, i8*) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

; <label>:6:                                      ; preds = %17, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %6
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp sle i32 %13, 32
  br label %15

; <label>:15:                                     ; preds = %10, %6
  %16 = phi i1 [ false, %6 ], [ %14, %10 ]
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %15
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  br label %6

; <label>:20:                                     ; preds = %15
  store i32 0, i32* %5, align 4
  br label %21

; <label>:21:                                     ; preds = %43, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 511
  br i1 %23, label %24, label %31

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br label %31

; <label>:31:                                     ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ]
  br i1 %32, label %33, label %46

; <label>:33:                                     ; preds = %31
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 %38, i8* %42, align 1
  br label %43

; <label>:43:                                     ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %21

; <label>:46:                                     ; preds = %31
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %51, i8* %55, align 1
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %5, align 4
  br label %58

; <label>:58:                                     ; preds = %76, %46
  %59 = load i32, i32* %5, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %69

; <label>:61:                                     ; preds = %58
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sle i32 %67, 32
  br label %69

; <label>:69:                                     ; preds = %61, %58
  %70 = phi i1 [ false, %58 ], [ %68, %61 ]
  br i1 %70, label %71, label %79

; <label>:71:                                     ; preds = %69
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 0, i8* %75, align 1
  br label %76

; <label>:76:                                     ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %5, align 4
  br label %58

; <label>:79:                                     ; preds = %69
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(%union.pthread_attr_t*, i32) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline optnone uwtable
define i8* @_Z4initPv(i8*) #6 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.passwd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.passwd*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [128 x i8], align 16
  %20 = alloca i16, align 2
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %union.pthread_attr_t, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i16, align 2
  %28 = alloca i32, align 4
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.data2* @cfig to i8*), i8 0, i64 3360, i32 8, i1 false)
  %35 = call i32 @getpid() #10
  store i32 %35, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 11), align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  %36 = load i8, i8* @verbatim, align 1
  %37 = trunc i8 %36 to i1
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %1
  store i8 2, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @sVersion, i32 0, i32 0))
  br label %72

; <label>:40:                                     ; preds = %1
  %41 = call %struct._IO_FILE* @_Z11openSectionPKchPc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8 zeroext 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0))
  store %struct._IO_FILE* %41, %struct._IO_FILE** %7, align 8
  %42 = icmp ne %struct._IO_FILE* %41, null
  br i1 %42, label %43, label %71

; <label>:43:                                     ; preds = %40
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 0), align 16
  br label %44

; <label>:44:                                     ; preds = %69, %43
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %47 = call i8* @_Z11readSectionPcP8_IO_FILE(i8* %45, %struct._IO_FILE* %46)
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %70

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %51 = call i32 @strcasecmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0)) #11
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %49
  store i8 0, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  br label %69

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %56 = call i32 @strcasecmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0)) #11
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

; <label>:58:                                     ; preds = %54
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  br label %68

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %61 = call i32 @strcasecmp(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0)) #11
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

; <label>:63:                                     ; preds = %59
  store i8 2, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  br label %67

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i32 0, i32 0), i8* %65) #10
  br label %67

; <label>:67:                                     ; preds = %64, %63
  br label %68

; <label>:68:                                     ; preds = %67, %58
  br label %69

; <label>:69:                                     ; preds = %68, %53
  br label %44

; <label>:70:                                     ; preds = %44
  br label %71

; <label>:71:                                     ; preds = %70, %40
  br label %72

; <label>:72:                                     ; preds = %71, %38
  %73 = load i8, i8* @verbatim, align 1
  %74 = trunc i8 %73 to i1
  br i1 %74, label %100, label %75

; <label>:75:                                     ; preds = %72
  %76 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %100

; <label>:78:                                     ; preds = %75
  %79 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i64 0, i64 0), align 16
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %100

; <label>:81:                                     ; preds = %78
  %82 = call i64 @time(i64* null) #10
  store i64 %82, i64* %8, align 8
  %83 = call %struct.tm* @localtime(i64* %8) #10
  store %struct.tm* %83, %struct.tm** %9, align 8
  %84 = load %struct.tm*, %struct.tm** %9, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* @loggingDay, align 2
  %88 = load %struct.tm*, %struct.tm** %9, align 8
  %89 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i32 0, i32 0), %struct.tm* %88) #10
  %90 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  store %struct._IO_FILE* %90, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %92 = icmp ne %struct._IO_FILE* %91, null
  br i1 %92, label %93, label %99

; <label>:93:                                     ; preds = %81
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @sVersion, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %95 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 0), align 16
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %93
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i8 zeroext 0)
  br label %98

; <label>:98:                                     ; preds = %97, %93
  br label %99

; <label>:99:                                     ; preds = %98, %81
  br label %100

; <label>:100:                                    ; preds = %99, %78, %75, %72
  %101 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %101, %struct._IO_FILE** %7, align 8
  %102 = icmp ne %struct._IO_FILE* %101, null
  br i1 %102, label %103, label %106

; <label>:103:                                    ; preds = %100
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %105 = call i32 @fclose(%struct._IO_FILE* %104)
  br label %108

; <label>:106:                                    ; preds = %100
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %108

; <label>:108:                                    ; preds = %106, %103
  %109 = call %struct._IO_FILE* @_Z11openSectionPKchPc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8 zeroext 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0))
  store %struct._IO_FILE* %109, %struct._IO_FILE** %7, align 8
  %110 = icmp ne %struct._IO_FILE* %109, null
  br i1 %110, label %111, label %298

; <label>:111:                                    ; preds = %108
  br label %112

; <label>:112:                                    ; preds = %296, %111
  %113 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %115 = call i8* @_Z11readSectionPcP8_IO_FILE(i8* %113, %struct._IO_FILE* %114)
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %297

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %119 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %120 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  call void @_Z7mySplitPcS_S_c(i8* %118, i8* %119, i8* %120, i8 signext 61)
  %121 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %122 = call i64 @strlen(i8* %121) #11
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %257

; <label>:124:                                    ; preds = %117
  %125 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 0, i64 0), align 8
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %133, label %127

; <label>:127:                                    ; preds = %124
  %128 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i64 0), align 8
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %130, label %133

; <label>:130:                                    ; preds = %127
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %132 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.67, i32 0, i32 0), i8* %131) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %256

; <label>:133:                                    ; preds = %127, %124
  %134 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %135 = load i8, i8* @notFileSep, align 1
  %136 = sext i8 %135 to i32
  %137 = call i8* @strchr(i8* %134, i32 %136) #11
  %138 = icmp ne i8* %137, null
  br i1 %138, label %157, label %139

; <label>:139:                                    ; preds = %133
  %140 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %141 = load i8, i8* @fileSep, align 1
  %142 = sext i8 %141 to i32
  %143 = call i8* @strchr(i8* %140, i32 %142) #11
  %144 = icmp ne i8* %143, null
  br i1 %144, label %157, label %145

; <label>:145:                                    ; preds = %139
  %146 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %147 = call i8* @strchr(i8* %146, i32 62) #11
  %148 = icmp ne i8* %147, null
  br i1 %148, label %157, label %149

; <label>:149:                                    ; preds = %145
  %150 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %151 = call i8* @strchr(i8* %150, i32 60) #11
  %152 = icmp ne i8* %151, null
  br i1 %152, label %157, label %153

; <label>:153:                                    ; preds = %149
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %155 = call i8* @strchr(i8* %154, i32 46) #11
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %160

; <label>:157:                                    ; preds = %153, %149, %145, %139, %133
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %159 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.68, i32 0, i32 0), i8* %158) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %255

; <label>:160:                                    ; preds = %153
  %161 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %162 = load i8, i8* %161, align 16
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %164, label %251

; <label>:164:                                    ; preds = %160
  %165 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %166 = call i64 @strlen(i8* %165) #11
  %167 = icmp ult i64 %166, 64
  br i1 %167, label %168, label %251

; <label>:168:                                    ; preds = %164
  %169 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %170 = load i8, i8* %169, align 16
  %171 = icmp ne i8 %170, 0
  br i1 %171, label %172, label %251

; <label>:172:                                    ; preds = %168
  store i32 0, i32* %10, align 4
  br label %173

; <label>:173:                                    ; preds = %247, %172
  %174 = load i32, i32* %10, align 4
  %175 = icmp slt i32 %174, 8
  br i1 %175, label %176, label %250

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %178
  %180 = getelementptr inbounds %struct.home, %struct.home* %179, i32 0, i32 0
  %181 = getelementptr inbounds [64 x i8], [64 x i8]* %180, i64 0, i64 0
  %182 = load i8, i8* %181, align 8
  %183 = icmp ne i8 %182, 0
  br i1 %183, label %184, label %196

; <label>:184:                                    ; preds = %176
  %185 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %187
  %189 = getelementptr inbounds %struct.home, %struct.home* %188, i32 0, i32 0
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %189, i32 0, i32 0
  %191 = call i32 @strcasecmp(i8* %185, i8* %190) #11
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

; <label>:193:                                    ; preds = %184
  %194 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i32 0, i32 0), i8* %194) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %250

; <label>:196:                                    ; preds = %184, %176
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %198
  %200 = getelementptr inbounds %struct.home, %struct.home* %199, i32 0, i32 0
  %201 = getelementptr inbounds [64 x i8], [64 x i8]* %200, i64 0, i64 0
  %202 = load i8, i8* %201, align 8
  %203 = icmp ne i8 %202, 0
  br i1 %203, label %245, label %204

; <label>:204:                                    ; preds = %196
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %206
  %208 = getelementptr inbounds %struct.home, %struct.home* %207, i32 0, i32 0
  %209 = getelementptr inbounds [64 x i8], [64 x i8]* %208, i32 0, i32 0
  %210 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %211 = call i8* @strcpy(i8* %209, i8* %210) #10
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %213
  %215 = getelementptr inbounds %struct.home, %struct.home* %214, i32 0, i32 1
  %216 = getelementptr inbounds [256 x i8], [256 x i8]* %215, i32 0, i32 0
  %217 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %218 = call i8* @strcpy(i8* %216, i8* %217) #10
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %220
  %222 = getelementptr inbounds %struct.home, %struct.home* %221, i32 0, i32 1
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %224
  %226 = getelementptr inbounds %struct.home, %struct.home* %225, i32 0, i32 1
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* %226, i32 0, i32 0
  %228 = call i64 @strlen(i8* %227) #11
  %229 = sub i64 %228, 1
  %230 = getelementptr inbounds [256 x i8], [256 x i8]* %222, i64 0, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = load i8, i8* @fileSep, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp ne i32 %232, %234
  br i1 %235, label %236, label %244

; <label>:236:                                    ; preds = %204
  %237 = load i8, i8* @fileSep, align 1
  store i8 %237, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 1), align 1
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %239
  %241 = getelementptr inbounds %struct.home, %struct.home* %240, i32 0, i32 1
  %242 = getelementptr inbounds [256 x i8], [256 x i8]* %241, i32 0, i32 0
  %243 = call i8* @strcat(i8* %242, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0)) #10
  br label %244

; <label>:244:                                    ; preds = %236, %204
  br label %250

; <label>:245:                                    ; preds = %196
  br label %246

; <label>:246:                                    ; preds = %245
  br label %247

; <label>:247:                                    ; preds = %246
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %10, align 4
  br label %173

; <label>:250:                                    ; preds = %244, %193, %173
  br label %254

; <label>:251:                                    ; preds = %168, %164, %160
  %252 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %253 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i32 0, i32 0), i8* %252) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %254

; <label>:254:                                    ; preds = %251, %250
  br label %255

; <label>:255:                                    ; preds = %254, %157
  br label %256

; <label>:256:                                    ; preds = %255, %130
  br label %296

; <label>:257:                                    ; preds = %117
  %258 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 0, i64 0), align 8
  %259 = icmp ne i8 %258, 0
  br i1 %259, label %278, label %260

; <label>:260:                                    ; preds = %257
  %261 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i64 0), align 8
  %262 = icmp ne i8 %261, 0
  br i1 %262, label %278, label %263

; <label>:263:                                    ; preds = %260
  %264 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %265 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* %264) #10
  %266 = call i64 @strlen(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0)) #11
  %267 = sub i64 %266, 1
  %268 = getelementptr inbounds [256 x i8], [256 x i8]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1), i64 0, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = load i8, i8* @fileSep, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp ne i32 %270, %272
  br i1 %273, label %274, label %277

; <label>:274:                                    ; preds = %263
  %275 = load i8, i8* @fileSep, align 1
  store i8 %275, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 1), align 1
  %276 = call i8* @strcat(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0)) #10
  br label %277

; <label>:277:                                    ; preds = %274, %263
  br label %295

; <label>:278:                                    ; preds = %260, %257
  %279 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 0, i64 0), align 8
  %280 = icmp ne i8 %279, 0
  br i1 %280, label %281, label %284

; <label>:281:                                    ; preds = %278
  %282 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %283 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.67, i32 0, i32 0), i8* %282) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %294

; <label>:284:                                    ; preds = %278
  %285 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i64 0), align 8
  %286 = icmp ne i8 %285, 0
  br i1 %286, label %287, label %290

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %289 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.71, i32 0, i32 0), i8* %288) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %293

; <label>:290:                                    ; preds = %284
  %291 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %292 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.72, i32 0, i32 0), i8* %291) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %293

; <label>:293:                                    ; preds = %290, %287
  br label %294

; <label>:294:                                    ; preds = %293, %281
  br label %295

; <label>:295:                                    ; preds = %294, %277
  br label %296

; <label>:296:                                    ; preds = %295, %256
  br label %112

; <label>:297:                                    ; preds = %112
  br label %298

; <label>:298:                                    ; preds = %297, %108
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 6), align 8
  %299 = call %struct._IO_FILE* @_Z11openSectionPKchPc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8 zeroext 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0))
  store %struct._IO_FILE* %299, %struct._IO_FILE** %7, align 8
  %300 = icmp ne %struct._IO_FILE* %299, null
  br i1 %300, label %301, label %508

; <label>:301:                                    ; preds = %298
  br label %302

; <label>:302:                                    ; preds = %506, %301
  %303 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %305 = call i8* @_Z11readSectionPcP8_IO_FILE(i8* %303, %struct._IO_FILE* %304)
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %507

; <label>:307:                                    ; preds = %302
  %308 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %309 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %310 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  call void @_Z7mySplitPcS_S_c(i8* %308, i8* %309, i8* %310, i8 signext 61)
  %311 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %312 = call i64 @strlen(i8* %311) #11
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %506

; <label>:314:                                    ; preds = %307
  %315 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %316 = call i32 @strcasecmp(i8* %315, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0)) #11
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %358, label %318

; <label>:318:                                    ; preds = %314
  %319 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %320 = call i64 @strlen(i8* %319) #11
  %321 = icmp ult i64 %320, 128
  br i1 %321, label %322, label %354

; <label>:322:                                    ; preds = %318
  %323 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %324 = call %struct.passwd* @getpwnam(i8* %323)
  store %struct.passwd* %324, %struct.passwd** %11, align 8
  %325 = load %struct.passwd*, %struct.passwd** %11, align 8
  %326 = icmp ne %struct.passwd* %325, null
  br i1 %326, label %327, label %350

; <label>:327:                                    ; preds = %322
  %328 = load %struct.passwd*, %struct.passwd** %11, align 8
  %329 = getelementptr inbounds %struct.passwd, %struct.passwd* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  store i32 %330, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 4), align 8
  %331 = load %struct.passwd*, %struct.passwd** %11, align 8
  %332 = getelementptr inbounds %struct.passwd, %struct.passwd* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  store i32 %333, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 5), align 4
  %334 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %335 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 3, i32 0), i8* %334) #10
  %336 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i64 0), align 8
  %337 = icmp ne i8 %336, 0
  br i1 %337, label %349, label %338

; <label>:338:                                    ; preds = %327
  %339 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 4), align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

; <label>:341:                                    ; preds = %338
  %342 = load %struct.passwd*, %struct.passwd** %11, align 8
  %343 = getelementptr inbounds %struct.passwd, %struct.passwd* %342, i32 0, i32 5
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i8* %344) #10
  br label %348

; <label>:346:                                    ; preds = %338
  %347 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0)) #10
  br label %348

; <label>:348:                                    ; preds = %346, %341
  br label %349

; <label>:349:                                    ; preds = %348, %327
  br label %353

; <label>:350:                                    ; preds = %322
  %351 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %352 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.77, i32 0, i32 0), i8* %351) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @exit(i32 1) #12
  unreachable

; <label>:353:                                    ; preds = %349
  br label %357

; <label>:354:                                    ; preds = %318
  %355 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %356 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.78, i32 0, i32 0), i8* %355) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @exit(i32 1) #12
  unreachable

; <label>:357:                                    ; preds = %353
  br label %505

; <label>:358:                                    ; preds = %314
  %359 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %360 = call i32 @strcasecmp(i8* %359, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0)) #11
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %377, label %362

; <label>:362:                                    ; preds = %358
  %363 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %364 = call i64 @atol(i8* %363) #11
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %12, align 4
  %366 = load i32, i32* %12, align 4
  %367 = icmp ult i32 %366, 512
  br i1 %367, label %368, label %369

; <label>:368:                                    ; preds = %362
  store i32 512, i32* @blksize, align 4
  br label %376

; <label>:369:                                    ; preds = %362
  %370 = load i32, i32* %12, align 4
  %371 = icmp ugt i32 %370, 65464
  br i1 %371, label %372, label %373

; <label>:372:                                    ; preds = %369
  store i32 65464, i32* @blksize, align 4
  br label %375

; <label>:373:                                    ; preds = %369
  %374 = load i32, i32* %12, align 4
  store i32 %374, i32* @blksize, align 4
  br label %375

; <label>:375:                                    ; preds = %373, %372
  br label %376

; <label>:376:                                    ; preds = %375, %368
  br label %504

; <label>:377:                                    ; preds = %358
  %378 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %379 = call i32 @strcasecmp(i8* %378, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0)) #11
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %396, label %381

; <label>:381:                                    ; preds = %377
  %382 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %383 = call i64 @atol(i8* %382) #11
  %384 = trunc i64 %383 to i16
  store i16 %384, i16* @minThreads, align 2
  %385 = load i16, i16* @minThreads, align 2
  %386 = zext i16 %385 to i32
  %387 = icmp slt i32 %386, 1
  br i1 %387, label %388, label %389

; <label>:388:                                    ; preds = %381
  store i16 0, i16* @minThreads, align 2
  br label %395

; <label>:389:                                    ; preds = %381
  %390 = load i16, i16* @minThreads, align 2
  %391 = zext i16 %390 to i32
  %392 = icmp sgt i32 %391, 100
  br i1 %392, label %393, label %394

; <label>:393:                                    ; preds = %389
  store i16 100, i16* @minThreads, align 2
  br label %394

; <label>:394:                                    ; preds = %393, %389
  br label %395

; <label>:395:                                    ; preds = %394, %388
  br label %503

; <label>:396:                                    ; preds = %377
  %397 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %398 = call i32 @strcasecmp(i8* %397, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)) #11
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %415, label %400

; <label>:400:                                    ; preds = %396
  %401 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %402 = call i64 @atol(i8* %401) #11
  %403 = trunc i64 %402 to i16
  store i16 %403, i16* @timeout, align 2
  %404 = load i16, i16* @timeout, align 2
  %405 = zext i16 %404 to i32
  %406 = icmp slt i32 %405, 1
  br i1 %406, label %407, label %408

; <label>:407:                                    ; preds = %400
  store i16 1, i16* @timeout, align 2
  br label %414

; <label>:408:                                    ; preds = %400
  %409 = load i16, i16* @timeout, align 2
  %410 = zext i16 %409 to i32
  %411 = icmp sgt i32 %410, 255
  br i1 %411, label %412, label %413

; <label>:412:                                    ; preds = %408
  store i16 255, i16* @timeout, align 2
  br label %413

; <label>:413:                                    ; preds = %412, %408
  br label %414

; <label>:414:                                    ; preds = %413, %407
  br label %502

; <label>:415:                                    ; preds = %396
  %416 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %417 = call i32 @strcasecmp(i8* %416, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0)) #11
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %428, label %419

; <label>:419:                                    ; preds = %415
  %420 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %421 = load i8, i8* %420, align 16
  %422 = sext i8 %421 to i32
  %423 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i32 %422) #11
  %424 = icmp ne i8* %423, null
  br i1 %424, label %425, label %426

; <label>:425:                                    ; preds = %419
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 6), align 8
  br label %427

; <label>:426:                                    ; preds = %419
  store i8 0, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 6), align 8
  br label %427

; <label>:427:                                    ; preds = %426, %425
  br label %501

; <label>:428:                                    ; preds = %415
  %429 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %430 = call i32 @strcasecmp(i8* %429, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0)) #11
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %441, label %432

; <label>:432:                                    ; preds = %428
  %433 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %434 = load i8, i8* %433, align 16
  %435 = sext i8 %434 to i32
  %436 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i32 %435) #11
  %437 = icmp ne i8* %436, null
  br i1 %437, label %438, label %439

; <label>:438:                                    ; preds = %432
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 7), align 1
  br label %440

; <label>:439:                                    ; preds = %432
  store i8 0, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 7), align 1
  br label %440

; <label>:440:                                    ; preds = %439, %438
  br label %500

; <label>:441:                                    ; preds = %428
  %442 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %443 = call i32 @strcasecmp(i8* %442, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0)) #11
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %454, label %445

; <label>:445:                                    ; preds = %441
  %446 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %447 = load i8, i8* %446, align 16
  %448 = sext i8 %447 to i32
  %449 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i32 %448) #11
  %450 = icmp ne i8* %449, null
  br i1 %450, label %451, label %452

; <label>:451:                                    ; preds = %445
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 8), align 2
  br label %453

; <label>:452:                                    ; preds = %445
  store i8 0, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 8), align 2
  br label %453

; <label>:453:                                    ; preds = %452, %451
  br label %499

; <label>:454:                                    ; preds = %441
  %455 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %456 = call i32 @strcasecmp(i8* %455, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0)) #11
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %495, label %458

; <label>:458:                                    ; preds = %454
  %459 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %460 = call i8* @strchr(i8* %459, i32 45) #11
  store i8* %460, i8** %13, align 8
  %461 = load i8*, i8** %13, align 8
  %462 = icmp ne i8* %461, null
  br i1 %462, label %463, label %491

; <label>:463:                                    ; preds = %458
  %464 = load i8*, i8** %13, align 8
  store i8 0, i8* %464, align 1
  %465 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %466 = call i64 @atol(i8* %465) #11
  %467 = trunc i64 %466 to i32
  store i32 %467, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  %468 = load i8*, i8** %13, align 8
  %469 = getelementptr inbounds i8, i8* %468, i32 1
  store i8* %469, i8** %13, align 8
  %470 = call i64 @atol(i8* %469) #11
  %471 = trunc i64 %470 to i32
  store i32 %471, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %472 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  %473 = icmp slt i32 %472, 1024
  br i1 %473, label %487, label %474

; <label>:474:                                    ; preds = %463
  %475 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  %476 = icmp sge i32 %475, 65535
  br i1 %476, label %487, label %477

; <label>:477:                                    ; preds = %474
  %478 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %479 = icmp slt i32 %478, 1024
  br i1 %479, label %487, label %480

; <label>:480:                                    ; preds = %477
  %481 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %482 = icmp sge i32 %481, 65535
  br i1 %482, label %487, label %483

; <label>:483:                                    ; preds = %480
  %484 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  %485 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %486 = icmp sgt i32 %484, %485
  br i1 %486, label %487, label %490

; <label>:487:                                    ; preds = %483, %480, %477, %474, %463
  store i32 0, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  store i32 0, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %488 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %489 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0), i8* %488) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %490

; <label>:490:                                    ; preds = %487, %483
  br label %494

; <label>:491:                                    ; preds = %458
  %492 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %493 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0), i8* %492) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %494

; <label>:494:                                    ; preds = %491, %490
  br label %498

; <label>:495:                                    ; preds = %454
  %496 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %497 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.86, i32 0, i32 0), i8* %496) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %498

; <label>:498:                                    ; preds = %495, %494
  br label %499

; <label>:499:                                    ; preds = %498, %453
  br label %500

; <label>:500:                                    ; preds = %499, %440
  br label %501

; <label>:501:                                    ; preds = %500, %427
  br label %502

; <label>:502:                                    ; preds = %501, %414
  br label %503

; <label>:503:                                    ; preds = %502, %395
  br label %504

; <label>:504:                                    ; preds = %503, %376
  br label %505

; <label>:505:                                    ; preds = %504, %357
  br label %506

; <label>:506:                                    ; preds = %505, %307
  br label %302

; <label>:507:                                    ; preds = %302
  br label %508

; <label>:508:                                    ; preds = %507, %298
  %509 = call %struct._IO_FILE* @_Z11openSectionPKchPc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), i8 zeroext 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0))
  store %struct._IO_FILE* %509, %struct._IO_FILE** %7, align 8
  %510 = icmp ne %struct._IO_FILE* %509, null
  br i1 %510, label %511, label %571

; <label>:511:                                    ; preds = %508
  store i32 0, i32* %14, align 4
  br label %512

; <label>:512:                                    ; preds = %569, %511
  %513 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %514 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %515 = call i8* @_Z11readSectionPcP8_IO_FILE(i8* %513, %struct._IO_FILE* %514)
  %516 = icmp ne i8* %515, null
  br i1 %516, label %517, label %570

; <label>:517:                                    ; preds = %512
  %518 = load i32, i32* %14, align 4
  %519 = icmp slt i32 %518, 32
  br i1 %519, label %520, label %569

; <label>:520:                                    ; preds = %517
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %521 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %522 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %523 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  call void @_Z7mySplitPcS_S_c(i8* %521, i8* %522, i8* %523, i8 signext 45)
  %524 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %525 = call i32 @_Z12my_inet_addrPc(i8* %524)
  %526 = call i32 @htonl(i32 %525) #13
  store i32 %526, i32* %15, align 4
  %527 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %528 = call i64 @strlen(i8* %527) #11
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %534

; <label>:530:                                    ; preds = %520
  %531 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %532 = call i32 @_Z12my_inet_addrPc(i8* %531)
  %533 = call i32 @htonl(i32 %532) #13
  store i32 %533, i32* %16, align 4
  br label %536

; <label>:534:                                    ; preds = %520
  %535 = load i32, i32* %15, align 4
  store i32 %535, i32* %16, align 4
  br label %536

; <label>:536:                                    ; preds = %534, %530
  %537 = load i32, i32* %15, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %565

; <label>:539:                                    ; preds = %536
  %540 = load i32, i32* %15, align 4
  %541 = icmp ne i32 %540, -1
  br i1 %541, label %542, label %565

; <label>:542:                                    ; preds = %539
  %543 = load i32, i32* %16, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %565

; <label>:545:                                    ; preds = %542
  %546 = load i32, i32* %16, align 4
  %547 = icmp ne i32 %546, -1
  br i1 %547, label %548, label %565

; <label>:548:                                    ; preds = %545
  %549 = load i32, i32* %15, align 4
  %550 = load i32, i32* %16, align 4
  %551 = icmp ule i32 %549, %550
  br i1 %551, label %552, label %565

; <label>:552:                                    ; preds = %548
  %553 = load i32, i32* %15, align 4
  %554 = load i32, i32* %14, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %555
  %557 = getelementptr inbounds %struct.data12, %struct.data12* %556, i32 0, i32 0
  store i32 %553, i32* %557, align 8
  %558 = load i32, i32* %16, align 4
  %559 = load i32, i32* %14, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %560
  %562 = getelementptr inbounds %struct.data12, %struct.data12* %561, i32 0, i32 1
  store i32 %558, i32* %562, align 4
  %563 = load i32, i32* %14, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %14, align 4
  br label %568

; <label>:565:                                    ; preds = %548, %545, %542, %539, %536
  %566 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %567 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.88, i32 0, i32 0), i8* %566) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %568

; <label>:568:                                    ; preds = %565, %552
  br label %569

; <label>:569:                                    ; preds = %568, %517
  br label %512

; <label>:570:                                    ; preds = %512
  br label %571

; <label>:571:                                    ; preds = %570, %508
  %572 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 3, i64 0), align 8
  %573 = icmp ne i8 %572, 0
  br i1 %573, label %597, label %574

; <label>:574:                                    ; preds = %571
  %575 = call i32 @getuid() #10
  %576 = call %struct.passwd* @getpwuid(i32 %575)
  store %struct.passwd* %576, %struct.passwd** %17, align 8
  %577 = load %struct.passwd*, %struct.passwd** %17, align 8
  %578 = getelementptr inbounds %struct.passwd, %struct.passwd* %577, i32 0, i32 0
  %579 = load i8*, i8** %578, align 8
  %580 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 3, i32 0), i8* %579) #10
  %581 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i64 0), align 8
  %582 = icmp ne i8 %581, 0
  br i1 %582, label %596, label %583

; <label>:583:                                    ; preds = %574
  %584 = load %struct.passwd*, %struct.passwd** %17, align 8
  %585 = getelementptr inbounds %struct.passwd, %struct.passwd* %584, i32 0, i32 2
  %586 = load i32, i32* %585, align 8
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %593

; <label>:588:                                    ; preds = %583
  %589 = load %struct.passwd*, %struct.passwd** %17, align 8
  %590 = getelementptr inbounds %struct.passwd, %struct.passwd* %589, i32 0, i32 5
  %591 = load i8*, i8** %590, align 8
  %592 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* %591) #10
  br label %595

; <label>:593:                                    ; preds = %583
  %594 = call i8* @strcpy(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0)) #10
  br label %595

; <label>:595:                                    ; preds = %593, %588
  br label %596

; <label>:596:                                    ; preds = %595, %574
  br label %597

; <label>:597:                                    ; preds = %596, %571
  %598 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 3, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  store i32 0, i32* %18, align 4
  br label %599

; <label>:599:                                    ; preds = %623, %597
  %600 = load i32, i32* %18, align 4
  %601 = icmp slt i32 %600, 8
  br i1 %601, label %602, label %626

; <label>:602:                                    ; preds = %599
  %603 = load i32, i32* %18, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %604
  %606 = getelementptr inbounds %struct.home, %struct.home* %605, i32 0, i32 1
  %607 = getelementptr inbounds [256 x i8], [256 x i8]* %606, i64 0, i64 0
  %608 = load i8, i8* %607, align 8
  %609 = icmp ne i8 %608, 0
  br i1 %609, label %610, label %622

; <label>:610:                                    ; preds = %602
  %611 = load i32, i32* %18, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %612
  %614 = getelementptr inbounds %struct.home, %struct.home* %613, i32 0, i32 0
  %615 = getelementptr inbounds [64 x i8], [64 x i8]* %614, i32 0, i32 0
  %616 = load i32, i32* %18, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %617
  %619 = getelementptr inbounds %struct.home, %struct.home* %618, i32 0, i32 1
  %620 = getelementptr inbounds [256 x i8], [256 x i8]* %619, i32 0, i32 0
  %621 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.90, i32 0, i32 0), i8* %615, i8* %620) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %622

; <label>:622:                                    ; preds = %610, %602
  br label %623

; <label>:623:                                    ; preds = %622
  %624 = load i32, i32* %18, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %18, align 4
  br label %599

; <label>:626:                                    ; preds = %599
  %627 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0, i64 0, i32 0), align 8
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %671

; <label>:629:                                    ; preds = %626
  store i16 0, i16* %20, align 2
  br label %630

; <label>:630:                                    ; preds = %667, %629
  %631 = load i16, i16* %20, align 2
  %632 = zext i16 %631 to i64
  %633 = icmp ule i64 %632, 256
  br i1 %633, label %634, label %641

; <label>:634:                                    ; preds = %630
  %635 = load i16, i16* %20, align 2
  %636 = zext i16 %635 to i64
  %637 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %636
  %638 = getelementptr inbounds %struct.data12, %struct.data12* %637, i32 0, i32 0
  %639 = load i32, i32* %638, align 8
  %640 = icmp ne i32 %639, 0
  br label %641

; <label>:641:                                    ; preds = %634, %630
  %642 = phi i1 [ false, %630 ], [ %640, %634 ]
  br i1 %642, label %643, label %670

; <label>:643:                                    ; preds = %641
  %644 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.91, i32 0, i32 0)) #10
  %645 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0
  %646 = load i16, i16* %20, align 2
  %647 = zext i16 %646 to i64
  %648 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %647
  %649 = getelementptr inbounds %struct.data12, %struct.data12* %648, i32 0, i32 0
  %650 = load i32, i32* %649, align 8
  %651 = call i32 @htonl(i32 %650) #13
  %652 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %651)
  %653 = call i32 (i8*, i8*, ...) @sprintf(i8* %645, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i8* %652) #10
  %654 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0
  %655 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* %654) #10
  %656 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0
  %657 = load i16, i16* %20, align 2
  %658 = zext i16 %657 to i64
  %659 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %658
  %660 = getelementptr inbounds %struct.data12, %struct.data12* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 4
  %662 = call i32 @htonl(i32 %661) #13
  %663 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %662)
  %664 = call i32 (i8*, i8*, ...) @sprintf(i8* %656, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* %663) #10
  %665 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i32 0, i32 0
  %666 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* %665) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %667

; <label>:667:                                    ; preds = %643
  %668 = load i16, i16* %20, align 2
  %669 = add i16 %668, 1
  store i16 %669, i16* %20, align 2
  br label %630

; <label>:670:                                    ; preds = %641
  br label %673

; <label>:671:                                    ; preds = %626
  %672 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %673

; <label>:673:                                    ; preds = %671, %670
  %674 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %680

; <label>:676:                                    ; preds = %673
  %677 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  %678 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %679 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.94, i32 0, i32 0), i32 %677, i32 %678) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %682

; <label>:680:                                    ; preds = %673
  %681 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %682

; <label>:682:                                    ; preds = %680, %676
  %683 = load i32, i32* @blksize, align 4
  %684 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0), i32 %683) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %685 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i32 0, i32 0), i32 512) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %686 = load i16, i16* @timeout, align 2
  %687 = zext i16 %686 to i32
  %688 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.98, i32 0, i32 0), i32 %687) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %689 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 6), align 8
  %690 = icmp ne i8 %689, 0
  %691 = zext i1 %690 to i64
  %692 = select i1 %690, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0)
  %693 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.99, i32 0, i32 0), i8* %692) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %694 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 7), align 1
  %695 = icmp ne i8 %694, 0
  %696 = zext i1 %695 to i64
  %697 = select i1 %695, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0)
  %698 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0), i8* %697) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %699 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 8), align 2
  %700 = icmp ne i8 %699, 0
  %701 = zext i1 %700 to i64
  %702 = select i1 %700, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0)
  %703 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.103, i32 0, i32 0), i8* %702) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  %704 = load i8, i8* @verbatim, align 1
  %705 = trunc i8 %704 to i1
  br i1 %705, label %713, label %706

; <label>:706:                                    ; preds = %682
  %707 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  %708 = zext i8 %707 to i32
  %709 = icmp sgt i32 %708, 1
  %710 = zext i1 %709 to i64
  %711 = select i1 %709, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0)
  %712 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8* %711) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %713

; <label>:713:                                    ; preds = %706, %682
  %714 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutThread) #10
  %715 = load i16, i16* @minThreads, align 2
  %716 = icmp ne i16 %715, 0
  br i1 %716, label %717, label %744

; <label>:717:                                    ; preds = %713
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %718

; <label>:718:                                    ; preds = %738, %717
  %719 = load i32, i32* %22, align 4
  %720 = load i16, i16* @minThreads, align 2
  %721 = zext i16 %720 to i32
  %722 = icmp slt i32 %719, %721
  br i1 %722, label %723, label %741

; <label>:723:                                    ; preds = %718
  %724 = call i32 @pthread_attr_init(%union.pthread_attr_t* %23) #10
  %725 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %23, i32 1) #10
  %726 = call i32 @pthread_create(i64* @threadId, %union.pthread_attr_t* %23, i8* (i8*)* @_Z14processRequestPv, i8* null) #10
  store i32 %726, i32* %24, align 4
  %727 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %23) #10
  %728 = load i32, i32* %24, align 4
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %730, label %734

; <label>:730:                                    ; preds = %723
  %731 = load i32, i32* %22, align 4
  %732 = load i32, i32* %24, align 4
  %733 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.107, i32 0, i32 0), i32 %731, i32 %732) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %737

; <label>:734:                                    ; preds = %723
  %735 = load i32, i32* %21, align 4
  %736 = add nsw i32 %735, 1
  store i32 %736, i32* %21, align 4
  br label %737

; <label>:737:                                    ; preds = %734, %730
  br label %738

; <label>:738:                                    ; preds = %737
  %739 = load i32, i32* %22, align 4
  %740 = add nsw i32 %739, 1
  store i32 %740, i32* %22, align 4
  br label %718

; <label>:741:                                    ; preds = %718
  %742 = load i32, i32* %21, align 4
  %743 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i32 0, i32 0), i32 %742) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %744

; <label>:744:                                    ; preds = %741, %713
  %745 = call i32 @socket(i32 2, i32 2, i32 0) #10
  store i32 %745, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 4
  %746 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 4
  %747 = icmp slt i32 %746, 0
  br i1 %747, label %748, label %750

; <label>:748:                                    ; preds = %744
  %749 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.109, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  call void @exit(i32 1) #12
  unreachable

; <label>:750:                                    ; preds = %744
  br label %751

; <label>:751:                                    ; preds = %1141, %750
  store i8 0, i8* %25, align 1
  %752 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 19), align 8
  %753 = trunc i8 %752 to i1
  br i1 %753, label %813, label %754

; <label>:754:                                    ; preds = %751
  %755 = call %struct._IO_FILE* @_Z11openSectionPKchPc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i8 zeroext 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @iniFile, i32 0, i32 0))
  store %struct._IO_FILE* %755, %struct._IO_FILE** %7, align 8
  %756 = icmp ne %struct._IO_FILE* %755, null
  br i1 %756, label %757, label %813

; <label>:757:                                    ; preds = %754
  store i8 0, i8* %26, align 1
  br label %758

; <label>:758:                                    ; preds = %811, %757
  %759 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %760 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %761 = call i8* @_Z11readSectionPcP8_IO_FILE(i8* %759, %struct._IO_FILE* %760)
  %762 = icmp ne i8* %761, null
  br i1 %762, label %763, label %812

; <label>:763:                                    ; preds = %758
  store i16 69, i16* %27, align 2
  store i8 1, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 19), align 8
  %764 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %765 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %766 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  call void @_Z7mySplitPcS_S_c(i8* %764, i8* %765, i8* %766, i8 signext 58)
  %767 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %768 = load i8, i8* %767, align 16
  %769 = icmp ne i8 %768, 0
  br i1 %769, label %770, label %774

; <label>:770:                                    ; preds = %763
  %771 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0
  %772 = call i32 @atoi(i8* %771) #11
  %773 = trunc i32 %772 to i16
  store i16 %773, i16* %27, align 2
  br label %774

; <label>:774:                                    ; preds = %770, %763
  %775 = load i8, i8* %26, align 1
  %776 = zext i8 %775 to i32
  %777 = icmp slt i32 %776, 8
  br i1 %777, label %778, label %811

; <label>:778:                                    ; preds = %774
  %779 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %780 = call zeroext i1 @_Z4isIPPc(i8* %779)
  br i1 %780, label %781, label %807

; <label>:781:                                    ; preds = %778
  %782 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %783 = call i32 @_Z12my_inet_addrPc(i8* %782)
  store i32 %783, i32* %28, align 4
  %784 = load i32, i32* %28, align 4
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %790, label %786

; <label>:786:                                    ; preds = %781
  store i32 0, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3, i64 0), align 4
  %787 = load i16, i16* %27, align 2
  store i16 %787, i16* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4, i64 0), align 4
  %788 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %789 = call i32 @fclose(%struct._IO_FILE* %788)
  br label %812

; <label>:790:                                    ; preds = %781
  %791 = load i32, i32* %28, align 4
  %792 = call i32* @_Z10findServerPjj(i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3, i32 0), i32 %791)
  %793 = icmp ne i32* %792, null
  br i1 %793, label %805, label %794

; <label>:794:                                    ; preds = %790
  %795 = load i32, i32* %28, align 4
  %796 = load i8, i8* %26, align 1
  %797 = zext i8 %796 to i64
  %798 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %797
  store i32 %795, i32* %798, align 4
  %799 = load i16, i16* %27, align 2
  %800 = load i8, i8* %26, align 1
  %801 = zext i8 %800 to i64
  %802 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %801
  store i16 %799, i16* %802, align 2
  %803 = load i8, i8* %26, align 1
  %804 = add i8 %803, 1
  store i8 %804, i8* %26, align 1
  br label %805

; <label>:805:                                    ; preds = %794, %790
  br label %806

; <label>:806:                                    ; preds = %805
  br label %810

; <label>:807:                                    ; preds = %778
  %808 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0
  %809 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.111, i32 0, i32 0), i8* %808) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %810

; <label>:810:                                    ; preds = %807, %806
  br label %811

; <label>:811:                                    ; preds = %810, %774
  br label %758

; <label>:812:                                    ; preds = %786, %758
  br label %813

; <label>:813:                                    ; preds = %812, %754, %751
  %814 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 19), align 8
  %815 = trunc i8 %814 to i1
  br i1 %815, label %844, label %816

; <label>:816:                                    ; preds = %813
  call void @_Z13getInterfacesP5data1(%struct.data1* @newNetwork)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 18, i32 0) to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 2, i32 0) to i8*), i64 32, i32 4, i1 false)
  store i8 0, i8* %29, align 1
  br label %817

; <label>:817:                                    ; preds = %840, %816
  %818 = load i8, i8* %29, align 1
  %819 = zext i8 %818 to i32
  %820 = icmp slt i32 %819, 8
  br i1 %820, label %821, label %827

; <label>:821:                                    ; preds = %817
  %822 = load i8, i8* %29, align 1
  %823 = zext i8 %822 to i64
  %824 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 2), i64 0, i64 %823
  %825 = load i32, i32* %824, align 4
  %826 = icmp ne i32 %825, 0
  br label %827

; <label>:827:                                    ; preds = %821, %817
  %828 = phi i1 [ false, %817 ], [ %826, %821 ]
  br i1 %828, label %829, label %843

; <label>:829:                                    ; preds = %827
  %830 = load i8, i8* %29, align 1
  %831 = zext i8 %830 to i64
  %832 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 2), i64 0, i64 %831
  %833 = load i32, i32* %832, align 4
  %834 = load i8, i8* %29, align 1
  %835 = zext i8 %834 to i64
  %836 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %835
  store i32 %833, i32* %836, align 4
  %837 = load i8, i8* %29, align 1
  %838 = zext i8 %837 to i64
  %839 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %838
  store i16 69, i16* %839, align 2
  br label %840

; <label>:840:                                    ; preds = %829
  %841 = load i8, i8* %29, align 1
  %842 = add i8 %841, 1
  store i8 %842, i8* %29, align 1
  br label %817

; <label>:843:                                    ; preds = %827
  br label %844

; <label>:844:                                    ; preds = %843, %813
  store i8 0, i8* %30, align 1
  store i32 0, i32* %31, align 4
  br label %845

; <label>:845:                                    ; preds = %1093, %844
  %846 = load i32, i32* %31, align 4
  %847 = icmp slt i32 %846, 8
  br i1 %847, label %848, label %854

; <label>:848:                                    ; preds = %845
  %849 = load i32, i32* %31, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %850
  %852 = load i16, i16* %851, align 2
  %853 = icmp ne i16 %852, 0
  br label %854

; <label>:854:                                    ; preds = %848, %845
  %855 = phi i1 [ false, %845 ], [ %853, %848 ]
  br i1 %855, label %856, label %1096

; <label>:856:                                    ; preds = %854
  store i32 0, i32* %32, align 4
  br label %857

; <label>:857:                                    ; preds = %902, %856
  %858 = load i32, i32* %32, align 4
  %859 = icmp slt i32 %858, 8
  br i1 %859, label %860, label %867

; <label>:860:                                    ; preds = %857
  %861 = load i32, i32* %32, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %862
  %864 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %863, i32 0, i32 4
  %865 = load i8, i8* %864, align 2
  %866 = trunc i8 %865 to i1
  br label %867

; <label>:867:                                    ; preds = %860, %857
  %868 = phi i1 [ false, %857 ], [ %866, %860 ]
  br i1 %868, label %869, label %905

; <label>:869:                                    ; preds = %867
  %870 = load i32, i32* %32, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %871
  %873 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %872, i32 0, i32 5
  %874 = load i8, i8* %873, align 1
  %875 = trunc i8 %874 to i1
  br i1 %875, label %876, label %901

; <label>:876:                                    ; preds = %869
  %877 = load i32, i32* %32, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %878
  %880 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %879, i32 0, i32 2
  %881 = load i32, i32* %880, align 4
  %882 = load i32, i32* %31, align 4
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %883
  %885 = load i32, i32* %884, align 4
  %886 = icmp eq i32 %881, %885
  br i1 %886, label %887, label %901

; <label>:887:                                    ; preds = %876
  %888 = load i32, i32* %32, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %889
  %891 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %890, i32 0, i32 3
  %892 = load i16, i16* %891, align 4
  %893 = zext i16 %892 to i32
  %894 = load i32, i32* %31, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %895
  %897 = load i16, i16* %896, align 2
  %898 = zext i16 %897 to i32
  %899 = icmp eq i32 %893, %898
  br i1 %899, label %900, label %901

; <label>:900:                                    ; preds = %887
  br label %905

; <label>:901:                                    ; preds = %887, %876, %869
  br label %902

; <label>:902:                                    ; preds = %901
  %903 = load i32, i32* %32, align 4
  %904 = add nsw i32 %903, 1
  store i32 %904, i32* %32, align 4
  br label %857

; <label>:905:                                    ; preds = %900, %867
  %906 = load i32, i32* %32, align 4
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %907
  %909 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %908, i32 0, i32 5
  %910 = load i8, i8* %909, align 1
  %911 = trunc i8 %910 to i1
  br i1 %911, label %912, label %965

; <label>:912:                                    ; preds = %905
  %913 = load i32, i32* %32, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %914
  %916 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %915, i32 0, i32 2
  %917 = load i32, i32* %916, align 4
  %918 = load i32, i32* %31, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %919
  %921 = load i32, i32* %920, align 4
  %922 = icmp eq i32 %917, %921
  br i1 %922, label %923, label %965

; <label>:923:                                    ; preds = %912
  %924 = load i32, i32* %32, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %925
  %927 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %926, i32 0, i32 3
  %928 = load i16, i16* %927, align 4
  %929 = zext i16 %928 to i32
  %930 = load i32, i32* %31, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %931
  %933 = load i16, i16* %932, align 2
  %934 = zext i16 %933 to i32
  %935 = icmp eq i32 %929, %934
  br i1 %935, label %936, label %965

; <label>:936:                                    ; preds = %923
  %937 = load i8, i8* %30, align 1
  %938 = zext i8 %937 to i64
  %939 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %938
  %940 = bitcast %struct.tftpConnType* %939 to i8*
  %941 = load i32, i32* %32, align 4
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %942
  %944 = bitcast %struct.tftpConnType* %943 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %940, i8* %944, i64 28, i32 4, i1 false)
  %945 = load i32, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  %946 = load i8, i8* %30, align 1
  %947 = zext i8 %946 to i64
  %948 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %947
  %949 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %948, i32 0, i32 0
  %950 = load i32, i32* %949, align 4
  %951 = icmp slt i32 %945, %950
  br i1 %951, label %952, label %958

; <label>:952:                                    ; preds = %936
  %953 = load i8, i8* %30, align 1
  %954 = zext i8 %953 to i64
  %955 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %954
  %956 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %955, i32 0, i32 0
  %957 = load i32, i32* %956, align 4
  store i32 %957, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  br label %958

; <label>:958:                                    ; preds = %952, %936
  %959 = load i32, i32* %32, align 4
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %960
  %962 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %961, i32 0, i32 5
  store i8 0, i8* %962, align 1
  %963 = load i8, i8* %30, align 1
  %964 = add i8 %963, 1
  store i8 %964, i8* %30, align 1
  br label %1093

; <label>:965:                                    ; preds = %923, %912, %905
  %966 = call i32 @socket(i32 2, i32 2, i32 17) #10
  %967 = load i8, i8* %30, align 1
  %968 = zext i8 %967 to i64
  %969 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %968
  %970 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %969, i32 0, i32 0
  store i32 %966, i32* %970, align 4
  %971 = load i8, i8* %30, align 1
  %972 = zext i8 %971 to i64
  %973 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %972
  %974 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %973, i32 0, i32 0
  %975 = load i32, i32* %974, align 4
  %976 = icmp eq i32 %975, -1
  br i1 %976, label %977, label %979

; <label>:977:                                    ; preds = %965
  store i8 1, i8* %25, align 1
  %978 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.109, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %1093

; <label>:979:                                    ; preds = %965
  %980 = call i32* @__errno_location() #13
  store i32 0, i32* %980, align 4
  %981 = load i8, i8* %30, align 1
  %982 = zext i8 %981 to i64
  %983 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %982
  %984 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %983, i32 0, i32 1
  %985 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %984, i32 0, i32 0
  store i16 2, i16* %985, align 4
  %986 = load i32, i32* %31, align 4
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %987
  %989 = load i32, i32* %988, align 4
  %990 = load i8, i8* %30, align 1
  %991 = zext i8 %990 to i64
  %992 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %991
  %993 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %992, i32 0, i32 1
  %994 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %993, i32 0, i32 2
  %995 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %994, i32 0, i32 0
  store i32 %989, i32* %995, align 4
  %996 = load i32, i32* %31, align 4
  %997 = sext i32 %996 to i64
  %998 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %997
  %999 = load i16, i16* %998, align 2
  %1000 = call zeroext i16 @htons(i16 zeroext %999) #13
  %1001 = load i8, i8* %30, align 1
  %1002 = zext i8 %1001 to i64
  %1003 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %1002
  %1004 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1003, i32 0, i32 1
  %1005 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1004, i32 0, i32 1
  store i16 %1000, i16* %1005, align 2
  %1006 = load i8, i8* %30, align 1
  %1007 = zext i8 %1006 to i64
  %1008 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %1007
  %1009 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1008, i32 0, i32 0
  %1010 = load i32, i32* %1009, align 4
  %1011 = load i8, i8* %30, align 1
  %1012 = zext i8 %1011 to i64
  %1013 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %1012
  %1014 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1013, i32 0, i32 1
  %1015 = bitcast %struct.sockaddr_in* %1014 to %struct.sockaddr*
  %1016 = call i32 @bind(i32 %1010, %struct.sockaddr* %1015, i32 16) #10
  store i32 %1016, i32* %33, align 4
  %1017 = load i32, i32* %33, align 4
  %1018 = icmp eq i32 %1017, -1
  br i1 %1018, label %1023, label %1019

; <label>:1019:                                   ; preds = %979
  %1020 = call i32* @__errno_location() #13
  %1021 = load i32, i32* %1020, align 4
  %1022 = icmp ne i32 %1021, 0
  br i1 %1022, label %1023, label %1044

; <label>:1023:                                   ; preds = %1019, %979
  store i8 1, i8* %25, align 1
  %1024 = load i8, i8* %30, align 1
  %1025 = zext i8 %1024 to i64
  %1026 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %1025
  %1027 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1026, i32 0, i32 0
  %1028 = load i32, i32* %1027, align 4
  %1029 = call i32 @close(i32 %1028)
  %1030 = load i32, i32* %31, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %1031
  %1033 = load i32, i32* %1032, align 4
  %1034 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %1033)
  %1035 = load i32, i32* %31, align 4
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %1036
  %1038 = load i16, i16* %1037, align 2
  %1039 = zext i16 %1038 to i32
  %1040 = call i32* @__errno_location() #13
  %1041 = load i32, i32* %1040, align 4
  %1042 = call i8* @strerror(i32 %1041) #10
  %1043 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i32 0, i32 0), i8* %1034, i32 %1039, i8* %1042) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %1093

; <label>:1044:                                   ; preds = %1019
  %1045 = load i8, i8* %30, align 1
  %1046 = zext i8 %1045 to i64
  %1047 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %1046
  %1048 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1047, i32 0, i32 4
  store i8 1, i8* %1048, align 2
  %1049 = load i8, i8* %30, align 1
  %1050 = zext i8 %1049 to i64
  %1051 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %1050
  %1052 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1051, i32 0, i32 5
  store i8 1, i8* %1052, align 1
  %1053 = load i32, i32* %31, align 4
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %1054
  %1056 = load i32, i32* %1055, align 4
  %1057 = load i8, i8* %30, align 1
  %1058 = zext i8 %1057 to i64
  %1059 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %1058
  %1060 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1059, i32 0, i32 2
  store i32 %1056, i32* %1060, align 4
  %1061 = load i32, i32* %31, align 4
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds [8 x i16], [8 x i16]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4), i64 0, i64 %1062
  %1064 = load i16, i16* %1063, align 2
  %1065 = load i8, i8* %30, align 1
  %1066 = zext i8 %1065 to i64
  %1067 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %1066
  %1068 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1067, i32 0, i32 3
  store i16 %1064, i16* %1068, align 4
  %1069 = load i32, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  %1070 = load i8, i8* %30, align 1
  %1071 = zext i8 %1070 to i64
  %1072 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %1071
  %1073 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1072, i32 0, i32 0
  %1074 = load i32, i32* %1073, align 4
  %1075 = icmp slt i32 %1069, %1074
  br i1 %1075, label %1076, label %1082

; <label>:1076:                                   ; preds = %1044
  %1077 = load i8, i8* %30, align 1
  %1078 = zext i8 %1077 to i64
  %1079 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 0), i64 0, i64 %1078
  %1080 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1079, i32 0, i32 0
  %1081 = load i32, i32* %1080, align 4
  store i32 %1081, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  br label %1082

; <label>:1082:                                   ; preds = %1076, %1044
  %1083 = load i32, i32* %31, align 4
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3), i64 0, i64 %1084
  %1086 = load i32, i32* %1085, align 4
  %1087 = icmp ne i32 %1086, 0
  br i1 %1087, label %1089, label %1088

; <label>:1088:                                   ; preds = %1082
  br label %1096

; <label>:1089:                                   ; preds = %1082
  %1090 = load i8, i8* %30, align 1
  %1091 = add i8 %1090, 1
  store i8 %1091, i8* %30, align 1
  br label %1092

; <label>:1092:                                   ; preds = %1089
  br label %1093

; <label>:1093:                                   ; preds = %1092, %1023, %977, %958
  %1094 = load i32, i32* %31, align 4
  %1095 = add nsw i32 %1094, 1
  store i32 %1095, i32* %31, align 4
  br label %845

; <label>:1096:                                   ; preds = %1088, %854
  %1097 = load i32, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  %1098 = add nsw i32 %1097, 1
  store i32 %1098, i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 7), align 4
  %1099 = load i8, i8* %25, align 1
  %1100 = trunc i8 %1099 to i1
  br i1 %1100, label %1101, label %1104

; <label>:1101:                                   ; preds = %1096
  %1102 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 13), align 4
  %1103 = add i32 %1102, 1
  store i32 %1103, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 13), align 4
  br label %1105

; <label>:1104:                                   ; preds = %1096
  store i32 0, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 13), align 4
  br label %1105

; <label>:1105:                                   ; preds = %1104, %1101
  call void @_Z9closeConnv()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.data1* @network to i8*), i8* bitcast (%struct.data1* @newNetwork to i8*), i64 344, i32 4, i1 false)
  %1106 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0, i64 0, i32 5), align 1
  %1107 = trunc i8 %1106 to i1
  br i1 %1107, label %1110, label %1108

; <label>:1108:                                   ; preds = %1105
  %1109 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.113, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %1141

; <label>:1110:                                   ; preds = %1105
  store i32 0, i32* %34, align 4
  br label %1111

; <label>:1111:                                   ; preds = %1137, %1110
  %1112 = load i32, i32* %34, align 4
  %1113 = icmp slt i32 %1112, 8
  br i1 %1113, label %1114, label %1121

; <label>:1114:                                   ; preds = %1111
  %1115 = load i32, i32* %34, align 4
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1116
  %1118 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1117, i32 0, i32 3
  %1119 = load i16, i16* %1118, align 4
  %1120 = icmp ne i16 %1119, 0
  br label %1121

; <label>:1121:                                   ; preds = %1114, %1111
  %1122 = phi i1 [ false, %1111 ], [ %1120, %1114 ]
  br i1 %1122, label %1123, label %1140

; <label>:1123:                                   ; preds = %1121
  %1124 = load i32, i32* %34, align 4
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1125
  %1127 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1126, i32 0, i32 2
  %1128 = load i32, i32* %1127, align 4
  %1129 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %1128)
  %1130 = load i32, i32* %34, align 4
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %1131
  %1133 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %1132, i32 0, i32 3
  %1134 = load i16, i16* %1133, align 4
  %1135 = zext i16 %1134 to i32
  %1136 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i32 0, i32 0), i8* %1129, i32 %1135) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %1137

; <label>:1137:                                   ; preds = %1123
  %1138 = load i32, i32* %34, align 4
  %1139 = add nsw i32 %1138, 1
  store i32 %1139, i32* %34, align 4
  br label %1111

; <label>:1140:                                   ; preds = %1121
  store i8 1, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  br label %1141

; <label>:1141:                                   ; preds = %1140, %1108
  %1142 = call zeroext i1 @_Z12detectChangev()
  br i1 %1142, label %751, label %1143

; <label>:1143:                                   ; preds = %1141
  call void @pthread_exit(i8* null) #14
  unreachable
                                                  ; No predecessors!
  %1145 = load i8*, i8** %2, align 8
  ret i8* %1145
}

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(%union.pthread_attr_t*) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: noinline optnone uwtable
define void @_Z7logMessPch(i8*, i8 zeroext) #6 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm*, align 8
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutLog) #10
  %8 = load i8, i8* @verbatim, align 1
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %11)
  br label %68

; <label>:13:                                     ; preds = %2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %15 = icmp ne %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %58

; <label>:16:                                     ; preds = %13
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  %20 = zext i8 %19 to i32
  %21 = icmp sle i32 %18, %20
  br i1 %21, label %22, label %58

; <label>:22:                                     ; preds = %16
  %23 = call i64 @time(i64* null) #10
  store i64 %23, i64* %5, align 8
  %24 = call %struct.tm* @localtime(i64* %5) #10
  store %struct.tm* %24, %struct.tm** %6, align 8
  %25 = load %struct.tm*, %struct.tm** %6, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load i16, i16* @loggingDay, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %50

; <label>:31:                                     ; preds = %22
  %32 = load %struct.tm*, %struct.tm** %6, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* @loggingDay, align 2
  %36 = load %struct.tm*, %struct.tm** %6, align 8
  %37 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i32 0, i32 0), %struct.tm* %36) #10
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %41 = call i32 @fclose(%struct._IO_FILE* %40)
  %42 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  store %struct._IO_FILE* %42, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %44 = icmp ne %struct._IO_FILE* %43, null
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %31
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @sVersion, i32 0, i32 0))
  br label %49

; <label>:48:                                     ; preds = %31
  br label %70

; <label>:49:                                     ; preds = %45
  br label %50

; <label>:50:                                     ; preds = %49, %22
  %51 = load %struct.tm*, %struct.tm** %6, align 8
  %52 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), %struct.tm* %51) #10
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* %54)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %57 = call i32 @fflush(%struct._IO_FILE* %56)
  br label %67

; <label>:58:                                     ; preds = %16, %13
  %59 = load i8, i8* %4, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  %62 = zext i8 %61 to i32
  %63 = icmp sle i32 %60, %62
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %58
  %65 = load i8*, i8** %3, align 8
  call void (i32, i8*, ...) @syslog(i32 138, i8* %65)
  br label %66

; <label>:66:                                     ; preds = %64, %58
  br label %67

; <label>:67:                                     ; preds = %66, %50
  br label %68

; <label>:68:                                     ; preds = %67, %10
  %69 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutLog) #10
  br label %70

; <label>:70:                                     ; preds = %68, %48
  ret void
}

declare i32 @sleep(i32) #4

; Function Attrs: nounwind
declare i32 @setuid(i32) #1

; Function Attrs: nounwind
declare i32 @setgid(i32) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline optnone uwtable
define i8* @_Z14processRequestPv(i8*) #6 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.request, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.in_addr, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %25 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutCount) #10
  %26 = load i16, i16* @totalThreads, align 2
  %27 = add i16 %26, 1
  store i16 %27, i16* @totalThreads, align 2
  %28 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutCount) #10
  br label %29

; <label>:29:                                     ; preds = %2810, %1
  %30 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutThread) #10
  %31 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutCount) #10
  %32 = load i16, i16* @activeThreads, align 2
  %33 = add i16 %32, 1
  store i16 %33, i16* @activeThreads, align 2
  %34 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutCount) #10
  %35 = load i32, i32* @currentServer, align 4
  %36 = icmp sge i32 %35, 8
  br i1 %36, label %44, label %37

; <label>:37:                                     ; preds = %29
  %38 = load i32, i32* @currentServer, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %39
  %41 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %40, i32 0, i32 3
  %42 = load i16, i16* %41, align 4
  %43 = icmp ne i16 %42, 0
  br i1 %43, label %47, label %44

; <label>:44:                                     ; preds = %37, %29
  %45 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutSocket) #10
  %46 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %46, align 1
  br label %2810

; <label>:47:                                     ; preds = %37
  %48 = bitcast %struct.request* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 1560, i32 8, i1 false)
  %49 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  store i32 -1, i32* %49, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 19
  store i32 16, i32* %50, align 8
  %51 = load i32, i32* @currentServer, align 4
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 5
  store i8 %52, i8* %53, align 8
  store i32 255, i32* @currentServer, align 4
  %54 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 5
  %55 = load i8, i8* %54, align 8
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %56
  %58 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 4
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %47
  %65 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutSocket) #10
  %66 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %66, align 1
  br label %2810

; <label>:67:                                     ; preds = %47
  %68 = call i32* @__errno_location() #13
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %72 = bitcast %union.anon.3* %71 to %struct.message*
  %73 = bitcast %struct.message* %72 to i8*
  %74 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %75 = bitcast %struct.sockaddr_in* %74 to %struct.sockaddr*
  %76 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 19
  %77 = call i64 @recvfrom(i32 %70, i8* %73, i64 516, i32 0, %struct.sockaddr* %75, i32* %76)
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  store i32 %78, i32* %79, align 4
  %80 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutSocket) #10
  %81 = call i32* @__errno_location() #13
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %239, label %84

; <label>:84:                                     ; preds = %67
  %85 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %239

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0, i64 0, i32 0), align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %165

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ntohl(i32 %95) #13
  store i32 %96, i32* %5, align 4
  store i8 0, i8* %6, align 1
  store i32 0, i32* %7, align 4
  br label %97

; <label>:97:                                     ; preds = %127, %91
  %98 = load i32, i32* %7, align 4
  %99 = icmp sle i32 %98, 32
  br i1 %99, label %100, label %107

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %102
  %104 = getelementptr inbounds %struct.data12, %struct.data12* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br label %107

; <label>:107:                                    ; preds = %100, %97
  %108 = phi i1 [ false, %97 ], [ %106, %100 ]
  br i1 %108, label %109, label %130

; <label>:109:                                    ; preds = %107
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %112
  %114 = getelementptr inbounds %struct.data12, %struct.data12* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp uge i32 %110, %115
  br i1 %116, label %117, label %126

; <label>:117:                                    ; preds = %109
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [32 x %struct.data12], [32 x %struct.data12]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 0), i64 0, i64 %120
  %122 = getelementptr inbounds %struct.data12, %struct.data12* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ule i32 %118, %123
  br i1 %124, label %125, label %126

; <label>:125:                                    ; preds = %117
  store i8 1, i8* %6, align 1
  br label %130

; <label>:126:                                    ; preds = %117, %109
  br label %127

; <label>:127:                                    ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %97

; <label>:130:                                    ; preds = %125, %107
  %131 = load i8, i8* %6, align 1
  %132 = trunc i8 %131 to i1
  br i1 %132, label %164, label %133

; <label>:133:                                    ; preds = %130
  %134 = call zeroext i16 @htons(i16 zeroext 5) #13
  %135 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %136 = bitcast %union.anon.2* %135 to %struct.tftperror*
  %137 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %136, i32 0, i32 0
  store i16 %134, i16* %137, align 4
  %138 = call zeroext i16 @htons(i16 zeroext 2) #13
  %139 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %140 = bitcast %union.anon.2* %139 to %struct.tftperror*
  %141 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %140, i32 0, i32 1
  store i16 %138, i16* %141, align 2
  %142 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %143 = bitcast %union.anon.2* %142 to %struct.tftperror*
  %144 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %143, i32 0, i32 2
  %145 = getelementptr inbounds [512 x i8], [512 x i8]* %144, i32 0, i32 0
  %146 = call i8* @strcpy(i8* %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %147 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %150 = bitcast %union.anon.2* %149 to %struct.tftperror*
  %151 = bitcast %struct.tftperror* %150 to i8*
  %152 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %153 = bitcast %union.anon.2* %152 to %struct.tftperror*
  %154 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %153, i32 0, i32 2
  %155 = getelementptr inbounds [512 x i8], [512 x i8]* %154, i32 0, i32 0
  %156 = call i64 @strlen(i8* %155) #11
  %157 = add i64 %156, 5
  %158 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %159 = bitcast %struct.sockaddr_in* %158 to %struct.sockaddr*
  %160 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 19
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @sendto(i32 %148, i8* %151, i64 %157, i32 0, %struct.sockaddr* %159, i32 %161)
  %163 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %163, align 1
  br label %2810

; <label>:164:                                    ; preds = %130
  br label %165

; <label>:165:                                    ; preds = %164, %88
  %166 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %167 = bitcast %union.anon.3* %166 to %struct.message*
  %168 = getelementptr inbounds %struct.message, %struct.message* %167, i32 0, i32 0
  %169 = load i16, i16* %168, align 8
  %170 = call zeroext i16 @htons(i16 zeroext %169) #13
  %171 = zext i16 %170 to i32
  %172 = icmp eq i32 %171, 5
  br i1 %172, label %173, label %190

; <label>:173:                                    ; preds = %165
  %174 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %175 = bitcast %union.anon.2* %174 to %struct.tftperror*
  %176 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %175, i32 0, i32 2
  %177 = getelementptr inbounds [512 x i8], [512 x i8]* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %179 = bitcast %union.anon.3* %178 to %struct.tftperror*
  %180 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %179, i32 0, i32 1
  %181 = load i16, i16* %180, align 2
  %182 = call zeroext i16 @ntohs(i16 zeroext %181) #13
  %183 = zext i16 %182 to i32
  %184 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %185 = bitcast %union.anon.3* %184 to %struct.tftperror*
  %186 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %185, i32 0, i32 2
  %187 = getelementptr inbounds [512 x i8], [512 x i8]* %186, i32 0, i32 0
  %188 = call i32 (i8*, i8*, ...) @sprintf(i8* %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32 %183, i8* %187) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 2)
  %189 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %189, align 1
  br label %2810

; <label>:190:                                    ; preds = %165
  %191 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %192 = bitcast %union.anon.3* %191 to %struct.message*
  %193 = getelementptr inbounds %struct.message, %struct.message* %192, i32 0, i32 0
  %194 = load i16, i16* %193, align 8
  %195 = call zeroext i16 @htons(i16 zeroext %194) #13
  %196 = zext i16 %195 to i32
  %197 = icmp ne i32 %196, 1
  br i1 %197, label %198, label %237

; <label>:198:                                    ; preds = %190
  %199 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %200 = bitcast %union.anon.3* %199 to %struct.message*
  %201 = getelementptr inbounds %struct.message, %struct.message* %200, i32 0, i32 0
  %202 = load i16, i16* %201, align 8
  %203 = call zeroext i16 @htons(i16 zeroext %202) #13
  %204 = zext i16 %203 to i32
  %205 = icmp ne i32 %204, 2
  br i1 %205, label %206, label %237

; <label>:206:                                    ; preds = %198
  %207 = call zeroext i16 @htons(i16 zeroext 5) #13
  %208 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %209 = bitcast %union.anon.2* %208 to %struct.tftperror*
  %210 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %209, i32 0, i32 0
  store i16 %207, i16* %210, align 4
  %211 = call zeroext i16 @htons(i16 zeroext 5) #13
  %212 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %213 = bitcast %union.anon.2* %212 to %struct.tftperror*
  %214 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %213, i32 0, i32 1
  store i16 %211, i16* %214, align 2
  %215 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %216 = bitcast %union.anon.2* %215 to %struct.tftperror*
  %217 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %216, i32 0, i32 2
  %218 = getelementptr inbounds [512 x i8], [512 x i8]* %217, i32 0, i32 0
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* %218, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 2)
  %220 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %223 = bitcast %union.anon.2* %222 to %struct.tftperror*
  %224 = bitcast %struct.tftperror* %223 to i8*
  %225 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %226 = bitcast %union.anon.2* %225 to %struct.tftperror*
  %227 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %226, i32 0, i32 2
  %228 = getelementptr inbounds [512 x i8], [512 x i8]* %227, i32 0, i32 0
  %229 = call i64 @strlen(i8* %228) #11
  %230 = add i64 %229, 5
  %231 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %232 = bitcast %struct.sockaddr_in* %231 to %struct.sockaddr*
  %233 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 19
  %234 = load i32, i32* %233, align 8
  %235 = call i64 @sendto(i32 %221, i8* %224, i64 %230, i32 0, %struct.sockaddr* %232, i32 %234)
  %236 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %236, align 1
  br label %2810

; <label>:237:                                    ; preds = %198, %190
  br label %238

; <label>:238:                                    ; preds = %237
  br label %246

; <label>:239:                                    ; preds = %84, %67
  %240 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %241 = bitcast %union.anon.2* %240 to %struct.tftperror*
  %242 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %241, i32 0, i32 2
  %243 = getelementptr inbounds [512 x i8], [512 x i8]* %242, i32 0, i32 0
  %244 = call i32 (i8*, i8*, ...) @sprintf(i8* %243, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %245 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %245, align 1
  br label %2810

; <label>:246:                                    ; preds = %238
  %247 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  store i16 512, i16* %247, align 4
  %248 = load i16, i16* @timeout, align 2
  %249 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 23
  store i16 %248, i16* %249, align 2
  %250 = call i64 @time(i64* null) #10
  %251 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 23
  %252 = load i16, i16* %251, align 2
  %253 = zext i16 %252 to i64
  %254 = add nsw i64 %250, %253
  %255 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  store i64 %254, i64* %255, align 8
  store i8 0, i8* %8, align 1
  %256 = call i32 @socket(i32 2, i32 2, i32 17) #10
  %257 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  store i32 %256, i32* %257, align 8
  %258 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %292

; <label>:261:                                    ; preds = %246
  %262 = call zeroext i16 @htons(i16 zeroext 5) #13
  %263 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %264 = bitcast %union.anon.2* %263 to %struct.tftperror*
  %265 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %264, i32 0, i32 0
  store i16 %262, i16* %265, align 4
  %266 = call zeroext i16 @htons(i16 zeroext 0) #13
  %267 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %268 = bitcast %union.anon.2* %267 to %struct.tftperror*
  %269 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %268, i32 0, i32 1
  store i16 %266, i16* %269, align 2
  %270 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %271 = bitcast %union.anon.2* %270 to %struct.tftperror*
  %272 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %271, i32 0, i32 2
  %273 = getelementptr inbounds [512 x i8], [512 x i8]* %272, i32 0, i32 0
  %274 = call i8* @strcpy(i8* %273, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0)) #10
  %275 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %278 = bitcast %union.anon.2* %277 to %struct.tftperror*
  %279 = bitcast %struct.tftperror* %278 to i8*
  %280 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %281 = bitcast %union.anon.2* %280 to %struct.tftperror*
  %282 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %281, i32 0, i32 2
  %283 = getelementptr inbounds [512 x i8], [512 x i8]* %282, i32 0, i32 0
  %284 = call i64 @strlen(i8* %283) #11
  %285 = add i64 %284, 5
  %286 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %287 = bitcast %struct.sockaddr_in* %286 to %struct.sockaddr*
  %288 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 19
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @sendto(i32 %276, i8* %279, i64 %285, i32 0, %struct.sockaddr* %287, i32 %289)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %291 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %291, align 1
  br label %2810

; <label>:292:                                    ; preds = %246
  %293 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %293, align 4
  %294 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 5
  %295 = load i8, i8* %294, align 8
  %296 = zext i8 %295 to i64
  %297 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %296
  %298 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %301 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 4
  %302 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %358

; <label>:304:                                    ; preds = %292
  %305 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 9), align 4
  %306 = trunc i32 %305 to i16
  store i16 %306, i16* %10, align 2
  br label %307

; <label>:307:                                    ; preds = %354, %304
  %308 = load i16, i16* %10, align 2
  %309 = call zeroext i16 @htons(i16 zeroext %308) #13
  %310 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %309, i16* %310, align 2
  %311 = load i16, i16* %10, align 2
  %312 = zext i16 %311 to i32
  %313 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 10), align 8
  %314 = icmp sgt i32 %312, %313
  br i1 %314, label %315, label %346

; <label>:315:                                    ; preds = %307
  %316 = call zeroext i16 @htons(i16 zeroext 5) #13
  %317 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %318 = bitcast %union.anon.2* %317 to %struct.tftperror*
  %319 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %318, i32 0, i32 0
  store i16 %316, i16* %319, align 4
  %320 = call zeroext i16 @htons(i16 zeroext 0) #13
  %321 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %322 = bitcast %union.anon.2* %321 to %struct.tftperror*
  %323 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %322, i32 0, i32 1
  store i16 %320, i16* %323, align 2
  %324 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %325 = bitcast %union.anon.2* %324 to %struct.tftperror*
  %326 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %325, i32 0, i32 2
  %327 = getelementptr inbounds [512 x i8], [512 x i8]* %326, i32 0, i32 0
  %328 = call i8* @strcpy(i8* %327, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)) #10
  %329 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 4
  %330 = load i32, i32* %329, align 4
  %331 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %332 = bitcast %union.anon.2* %331 to %struct.tftperror*
  %333 = bitcast %struct.tftperror* %332 to i8*
  %334 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %335 = bitcast %union.anon.2* %334 to %struct.tftperror*
  %336 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %335, i32 0, i32 2
  %337 = getelementptr inbounds [512 x i8], [512 x i8]* %336, i32 0, i32 0
  %338 = call i64 @strlen(i8* %337) #11
  %339 = add i64 %338, 5
  %340 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %341 = bitcast %struct.sockaddr_in* %340 to %struct.sockaddr*
  %342 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 19
  %343 = load i32, i32* %342, align 8
  %344 = call i64 @sendto(i32 %330, i8* %333, i64 %339, i32 0, %struct.sockaddr* %341, i32 %343)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %345 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %345, align 1
  br label %357

; <label>:346:                                    ; preds = %307
  %347 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %348 = load i32, i32* %347, align 8
  %349 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %350 = call i32 @bind(i32 %348, %struct.sockaddr* %349, i32 16) #10
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %352, label %353

; <label>:352:                                    ; preds = %346
  br label %354

; <label>:353:                                    ; preds = %346
  br label %357

; <label>:354:                                    ; preds = %352
  %355 = load i16, i16* %10, align 2
  %356 = add i16 %355, 1
  store i16 %356, i16* %10, align 2
  br label %307

; <label>:357:                                    ; preds = %353, %315
  br label %389

; <label>:358:                                    ; preds = %292
  %359 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 0, i16* %359, align 2
  %360 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %363 = call i32 @bind(i32 %361, %struct.sockaddr* %362, i32 16) #10
  %364 = icmp eq i32 %363, -1
  br i1 %364, label %365, label %388

; <label>:365:                                    ; preds = %358
  %366 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %367 = bitcast %union.anon.2* %366 to %struct.tftperror*
  %368 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %367, i32 0, i32 2
  %369 = getelementptr inbounds [512 x i8], [512 x i8]* %368, i32 0, i32 0
  %370 = call i8* @strcpy(i8* %369, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0)) #10
  %371 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %374 = bitcast %union.anon.2* %373 to %struct.tftperror*
  %375 = bitcast %struct.tftperror* %374 to i8*
  %376 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %377 = bitcast %union.anon.2* %376 to %struct.tftperror*
  %378 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %377, i32 0, i32 2
  %379 = getelementptr inbounds [512 x i8], [512 x i8]* %378, i32 0, i32 0
  %380 = call i64 @strlen(i8* %379) #11
  %381 = add i64 %380, 5
  %382 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %383 = bitcast %struct.sockaddr_in* %382 to %struct.sockaddr*
  %384 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 19
  %385 = load i32, i32* %384, align 8
  %386 = call i64 @sendto(i32 %372, i8* %375, i64 %381, i32 0, %struct.sockaddr* %383, i32 %385)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %387 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %387, align 1
  br label %388

; <label>:388:                                    ; preds = %365, %358
  br label %389

; <label>:389:                                    ; preds = %388, %357
  %390 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i32
  %393 = icmp sge i32 %392, 3
  br i1 %393, label %394, label %395

; <label>:394:                                    ; preds = %389
  br label %2810

; <label>:395:                                    ; preds = %389
  %396 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %397 = load i32, i32* %396, align 8
  %398 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %399 = bitcast %struct.sockaddr_in* %398 to %struct.sockaddr*
  %400 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 19
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @connect(i32 %397, %struct.sockaddr* %399, i32 %401)
  %403 = icmp eq i32 %402, -1
  br i1 %403, label %404, label %435

; <label>:404:                                    ; preds = %395
  %405 = call zeroext i16 @htons(i16 zeroext 5) #13
  %406 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %407 = bitcast %union.anon.2* %406 to %struct.tftperror*
  %408 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %407, i32 0, i32 0
  store i16 %405, i16* %408, align 4
  %409 = call zeroext i16 @htons(i16 zeroext 0) #13
  %410 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %411 = bitcast %union.anon.2* %410 to %struct.tftperror*
  %412 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %411, i32 0, i32 1
  store i16 %409, i16* %412, align 2
  %413 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %414 = bitcast %union.anon.2* %413 to %struct.tftperror*
  %415 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %414, i32 0, i32 2
  %416 = getelementptr inbounds [512 x i8], [512 x i8]* %415, i32 0, i32 0
  %417 = call i8* @strcpy(i8* %416, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)) #10
  %418 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 4
  %419 = load i32, i32* %418, align 4
  %420 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %421 = bitcast %union.anon.2* %420 to %struct.tftperror*
  %422 = bitcast %struct.tftperror* %421 to i8*
  %423 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %424 = bitcast %union.anon.2* %423 to %struct.tftperror*
  %425 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %424, i32 0, i32 2
  %426 = getelementptr inbounds [512 x i8], [512 x i8]* %425, i32 0, i32 0
  %427 = call i64 @strlen(i8* %426) #11
  %428 = add i64 %427, 5
  %429 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %430 = bitcast %struct.sockaddr_in* %429 to %struct.sockaddr*
  %431 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 19
  %432 = load i32, i32* %431, align 8
  %433 = call i64 @sendto(i32 %419, i8* %422, i64 %428, i32 0, %struct.sockaddr* %430, i32 %432)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %434 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %434, align 1
  br label %2810

; <label>:435:                                    ; preds = %395
  %436 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %437 = bitcast %union.anon.3* %436 to %struct.message*
  %438 = getelementptr inbounds %struct.message, %struct.message* %437, i32 0, i32 1
  %439 = getelementptr inbounds [514 x i8], [514 x i8]* %438, i32 0, i32 0
  store i8* %439, i8** %11, align 8
  %440 = load i8*, i8** %11, align 8
  %441 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  %442 = load i32, i32* %441, align 4
  %443 = sub nsw i32 %442, 3
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8, i8* %440, i64 %444
  store i8 0, i8* %445, align 1
  %446 = load i8*, i8** %11, align 8
  %447 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  store i8* %446, i8** %447, align 8
  %448 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %449 = load i8*, i8** %448, align 8
  %450 = call i64 @strlen(i8* %449) #11
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %457

; <label>:452:                                    ; preds = %435
  %453 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %454 = load i8*, i8** %453, align 8
  %455 = call i64 @strlen(i8* %454) #11
  %456 = icmp ugt i64 %455, 255
  br i1 %456, label %457, label %484

; <label>:457:                                    ; preds = %452, %435
  %458 = call zeroext i16 @htons(i16 zeroext 5) #13
  %459 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %460 = bitcast %union.anon.2* %459 to %struct.tftperror*
  %461 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %460, i32 0, i32 0
  store i16 %458, i16* %461, align 4
  %462 = call zeroext i16 @htons(i16 zeroext 0) #13
  %463 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %464 = bitcast %union.anon.2* %463 to %struct.tftperror*
  %465 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %464, i32 0, i32 1
  store i16 %462, i16* %465, align 2
  %466 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %467 = bitcast %union.anon.2* %466 to %struct.tftperror*
  %468 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %467, i32 0, i32 2
  %469 = getelementptr inbounds [512 x i8], [512 x i8]* %468, i32 0, i32 0
  %470 = call i8* @strcpy(i8* %469, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0)) #10
  %471 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %472 = load i32, i32* %471, align 8
  %473 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %474 = bitcast %union.anon.2* %473 to %struct.tftperror*
  %475 = bitcast %struct.tftperror* %474 to i8*
  %476 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %477 = bitcast %union.anon.2* %476 to %struct.tftperror*
  %478 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %477, i32 0, i32 2
  %479 = getelementptr inbounds [512 x i8], [512 x i8]* %478, i32 0, i32 0
  %480 = call i64 @strlen(i8* %479) #11
  %481 = add i64 %480, 5
  %482 = call i64 @send(i32 %472, i8* %475, i64 %481, i32 0)
  %483 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %483, align 1
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  br label %2810

; <label>:484:                                    ; preds = %452
  %485 = load i8*, i8** %11, align 8
  %486 = call i64 @strlen(i8* %485) #11
  %487 = add i64 %486, 1
  %488 = load i8*, i8** %11, align 8
  %489 = getelementptr inbounds i8, i8* %488, i64 %487
  store i8* %489, i8** %11, align 8
  %490 = load i8*, i8** %11, align 8
  %491 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 10
  store i8* %490, i8** %491, align 8
  %492 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 10
  %493 = load i8*, i8** %492, align 8
  %494 = call i64 @strlen(i8* %493) #11
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %501

; <label>:496:                                    ; preds = %484
  %497 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 10
  %498 = load i8*, i8** %497, align 8
  %499 = call i64 @strlen(i8* %498) #11
  %500 = icmp ugt i64 %499, 25
  br i1 %500, label %501, label %528

; <label>:501:                                    ; preds = %496, %484
  %502 = call zeroext i16 @htons(i16 zeroext 5) #13
  %503 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %504 = bitcast %union.anon.2* %503 to %struct.tftperror*
  %505 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %504, i32 0, i32 0
  store i16 %502, i16* %505, align 4
  %506 = call zeroext i16 @htons(i16 zeroext 0) #13
  %507 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %508 = bitcast %union.anon.2* %507 to %struct.tftperror*
  %509 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %508, i32 0, i32 1
  store i16 %506, i16* %509, align 2
  %510 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %511 = bitcast %union.anon.2* %510 to %struct.tftperror*
  %512 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %511, i32 0, i32 2
  %513 = getelementptr inbounds [512 x i8], [512 x i8]* %512, i32 0, i32 0
  %514 = call i8* @strcpy(i8* %513, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0)) #10
  %515 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %516 = load i32, i32* %515, align 8
  %517 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %518 = bitcast %union.anon.2* %517 to %struct.tftperror*
  %519 = bitcast %struct.tftperror* %518 to i8*
  %520 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %521 = bitcast %union.anon.2* %520 to %struct.tftperror*
  %522 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %521, i32 0, i32 2
  %523 = getelementptr inbounds [512 x i8], [512 x i8]* %522, i32 0, i32 0
  %524 = call i64 @strlen(i8* %523) #11
  %525 = add i64 %524, 5
  %526 = call i64 @send(i32 %516, i8* %519, i64 %525, i32 0)
  %527 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %527, align 1
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  br label %2810

; <label>:528:                                    ; preds = %496
  %529 = load i8*, i8** %11, align 8
  %530 = call i64 @strlen(i8* %529) #11
  %531 = add i64 %530, 1
  %532 = load i8*, i8** %11, align 8
  %533 = getelementptr inbounds i8, i8* %532, i64 %531
  store i8* %533, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %534

; <label>:534:                                    ; preds = %560, %528
  %535 = load i32, i32* %12, align 4
  %536 = zext i32 %535 to i64
  %537 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %538 = load i8*, i8** %537, align 8
  %539 = call i64 @strlen(i8* %538) #11
  %540 = icmp ult i64 %536, %539
  br i1 %540, label %541, label %563

; <label>:541:                                    ; preds = %534
  %542 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %543 = load i8*, i8** %542, align 8
  %544 = load i32, i32* %12, align 4
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds i8, i8* %543, i64 %545
  %547 = load i8, i8* %546, align 1
  %548 = sext i8 %547 to i32
  %549 = load i8, i8* @notFileSep, align 1
  %550 = sext i8 %549 to i32
  %551 = icmp eq i32 %548, %550
  br i1 %551, label %552, label %559

; <label>:552:                                    ; preds = %541
  %553 = load i8, i8* @fileSep, align 1
  %554 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %555 = load i8*, i8** %554, align 8
  %556 = load i32, i32* %12, align 4
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds i8, i8* %555, i64 %557
  store i8 %553, i8* %558, align 1
  br label %559

; <label>:559:                                    ; preds = %552, %541
  br label %560

; <label>:560:                                    ; preds = %559
  %561 = load i32, i32* %12, align 4
  %562 = add i32 %561, 1
  store i32 %562, i32* %12, align 4
  br label %534

; <label>:563:                                    ; preds = %534
  store i8 46, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 0), align 16
  store i8 46, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 1), align 1
  %564 = load i8, i8* @fileSep, align 1
  store i8 %564, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 2), align 2
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i64 0, i64 3), align 1
  %565 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %566 = load i8*, i8** %565, align 8
  %567 = call i8* @strstr(i8* %566, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0)) #11
  %568 = icmp ne i8* %567, null
  br i1 %568, label %569, label %596

; <label>:569:                                    ; preds = %563
  %570 = call zeroext i16 @htons(i16 zeroext 5) #13
  %571 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %572 = bitcast %union.anon.2* %571 to %struct.tftperror*
  %573 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %572, i32 0, i32 0
  store i16 %570, i16* %573, align 4
  %574 = call zeroext i16 @htons(i16 zeroext 2) #13
  %575 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %576 = bitcast %union.anon.2* %575 to %struct.tftperror*
  %577 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %576, i32 0, i32 1
  store i16 %574, i16* %577, align 2
  %578 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %579 = bitcast %union.anon.2* %578 to %struct.tftperror*
  %580 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %579, i32 0, i32 2
  %581 = getelementptr inbounds [512 x i8], [512 x i8]* %580, i32 0, i32 0
  %582 = call i8* @strcpy(i8* %581, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0)) #10
  %583 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %584 = load i32, i32* %583, align 8
  %585 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %586 = bitcast %union.anon.2* %585 to %struct.tftperror*
  %587 = bitcast %struct.tftperror* %586 to i8*
  %588 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %589 = bitcast %union.anon.2* %588 to %struct.tftperror*
  %590 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %589, i32 0, i32 2
  %591 = getelementptr inbounds [512 x i8], [512 x i8]* %590, i32 0, i32 0
  %592 = call i64 @strlen(i8* %591) #11
  %593 = add i64 %592, 5
  %594 = call i64 @send(i32 %584, i8* %587, i64 %593, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %595 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %595, align 1
  br label %2810

; <label>:596:                                    ; preds = %563
  %597 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %598 = load i8*, i8** %597, align 8
  %599 = getelementptr inbounds i8, i8* %598, i64 0
  %600 = load i8, i8* %599, align 1
  %601 = sext i8 %600 to i32
  %602 = load i8, i8* @fileSep, align 1
  %603 = sext i8 %602 to i32
  %604 = icmp eq i32 %601, %603
  br i1 %604, label %605, label %609

; <label>:605:                                    ; preds = %596
  %606 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %607 = load i8*, i8** %606, align 8
  %608 = getelementptr inbounds i8, i8* %607, i32 1
  store i8* %608, i8** %606, align 8
  br label %609

; <label>:609:                                    ; preds = %605, %596
  %610 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 0, i64 0), align 8
  %611 = icmp ne i8 %610, 0
  br i1 %611, label %655, label %612

; <label>:612:                                    ; preds = %609
  %613 = call i64 @strlen(i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0)) #11
  %614 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %615 = load i8*, i8** %614, align 8
  %616 = call i64 @strlen(i8* %615) #11
  %617 = add i64 %613, %616
  %618 = icmp uge i64 %617, 256
  br i1 %618, label %619, label %646

; <label>:619:                                    ; preds = %612
  %620 = call zeroext i16 @htons(i16 zeroext 5) #13
  %621 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %622 = bitcast %union.anon.2* %621 to %struct.tftperror*
  %623 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %622, i32 0, i32 0
  store i16 %620, i16* %623, align 4
  %624 = call zeroext i16 @htons(i16 zeroext 2) #13
  %625 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %626 = bitcast %union.anon.2* %625 to %struct.tftperror*
  %627 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %626, i32 0, i32 1
  store i16 %624, i16* %627, align 2
  %628 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %629 = bitcast %union.anon.2* %628 to %struct.tftperror*
  %630 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %629, i32 0, i32 2
  %631 = getelementptr inbounds [512 x i8], [512 x i8]* %630, i32 0, i32 0
  %632 = call i32 (i8*, i8*, ...) @sprintf(i8* %631, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0)) #10
  %633 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %634 = load i32, i32* %633, align 8
  %635 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %636 = bitcast %union.anon.2* %635 to %struct.tftperror*
  %637 = bitcast %struct.tftperror* %636 to i8*
  %638 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %639 = bitcast %union.anon.2* %638 to %struct.tftperror*
  %640 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %639, i32 0, i32 2
  %641 = getelementptr inbounds [512 x i8], [512 x i8]* %640, i32 0, i32 0
  %642 = call i64 @strlen(i8* %641) #11
  %643 = add i64 %642, 5
  %644 = call i64 @send(i32 %634, i8* %637, i64 %643, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %645 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %645, align 1
  br label %2810

; <label>:646:                                    ; preds = %612
  %647 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 7
  %648 = getelementptr inbounds [256 x i8], [256 x i8]* %647, i32 0, i32 0
  %649 = call i8* @strcpy(i8* %648, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1, i64 0, i32 1, i32 0)) #10
  %650 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 7
  %651 = getelementptr inbounds [256 x i8], [256 x i8]* %650, i32 0, i32 0
  %652 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %653 = load i8*, i8** %652, align 8
  %654 = call i8* @strcat(i8* %651, i8* %653) #10
  br label %813

; <label>:655:                                    ; preds = %609
  %656 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %657 = load i8*, i8** %656, align 8
  %658 = load i8, i8* @fileSep, align 1
  %659 = sext i8 %658 to i32
  %660 = call i8* @strchr(i8* %657, i32 %659) #11
  store i8* %660, i8** %13, align 8
  %661 = load i8*, i8** %13, align 8
  %662 = icmp ne i8* %661, null
  br i1 %662, label %663, label %667

; <label>:663:                                    ; preds = %655
  %664 = load i8*, i8** %13, align 8
  store i8 0, i8* %664, align 1
  %665 = load i8*, i8** %13, align 8
  %666 = getelementptr inbounds i8, i8* %665, i32 1
  store i8* %666, i8** %13, align 8
  br label %694

; <label>:667:                                    ; preds = %655
  %668 = call zeroext i16 @htons(i16 zeroext 5) #13
  %669 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %670 = bitcast %union.anon.2* %669 to %struct.tftperror*
  %671 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %670, i32 0, i32 0
  store i16 %668, i16* %671, align 4
  %672 = call zeroext i16 @htons(i16 zeroext 2) #13
  %673 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %674 = bitcast %union.anon.2* %673 to %struct.tftperror*
  %675 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %674, i32 0, i32 1
  store i16 %672, i16* %675, align 2
  %676 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %677 = bitcast %union.anon.2* %676 to %struct.tftperror*
  %678 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %677, i32 0, i32 2
  %679 = getelementptr inbounds [512 x i8], [512 x i8]* %678, i32 0, i32 0
  %680 = call i32 (i8*, i8*, ...) @sprintf(i8* %679, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0)) #10
  %681 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %682 = load i32, i32* %681, align 8
  %683 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %684 = bitcast %union.anon.2* %683 to %struct.tftperror*
  %685 = bitcast %struct.tftperror* %684 to i8*
  %686 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %687 = bitcast %union.anon.2* %686 to %struct.tftperror*
  %688 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %687, i32 0, i32 2
  %689 = getelementptr inbounds [512 x i8], [512 x i8]* %688, i32 0, i32 0
  %690 = call i64 @strlen(i8* %689) #11
  %691 = add i64 %690, 5
  %692 = call i64 @send(i32 %682, i8* %685, i64 %691, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %693 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %693, align 1
  br label %2810

; <label>:694:                                    ; preds = %663
  store i32 0, i32* %14, align 4
  br label %695

; <label>:695:                                    ; preds = %809, %694
  %696 = load i32, i32* %14, align 4
  %697 = icmp slt i32 %696, 8
  br i1 %697, label %698, label %812

; <label>:698:                                    ; preds = %695
  %699 = load i32, i32* %14, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %700
  %702 = getelementptr inbounds %struct.home, %struct.home* %701, i32 0, i32 0
  %703 = getelementptr inbounds [64 x i8], [64 x i8]* %702, i64 0, i64 0
  %704 = load i8, i8* %703, align 8
  %705 = icmp ne i8 %704, 0
  br i1 %705, label %706, label %767

; <label>:706:                                    ; preds = %698
  %707 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %708 = load i8*, i8** %707, align 8
  %709 = load i32, i32* %14, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %710
  %712 = getelementptr inbounds %struct.home, %struct.home* %711, i32 0, i32 0
  %713 = getelementptr inbounds [64 x i8], [64 x i8]* %712, i32 0, i32 0
  %714 = call i32 @strcasecmp(i8* %708, i8* %713) #11
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %767, label %716

; <label>:716:                                    ; preds = %706
  %717 = load i32, i32* %14, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %718
  %720 = getelementptr inbounds %struct.home, %struct.home* %719, i32 0, i32 1
  %721 = getelementptr inbounds [256 x i8], [256 x i8]* %720, i32 0, i32 0
  %722 = call i64 @strlen(i8* %721) #11
  %723 = load i8*, i8** %13, align 8
  %724 = call i64 @strlen(i8* %723) #11
  %725 = add i64 %722, %724
  %726 = icmp uge i64 %725, 256
  br i1 %726, label %727, label %754

; <label>:727:                                    ; preds = %716
  %728 = call zeroext i16 @htons(i16 zeroext 5) #13
  %729 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %730 = bitcast %union.anon.2* %729 to %struct.tftperror*
  %731 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %730, i32 0, i32 0
  store i16 %728, i16* %731, align 4
  %732 = call zeroext i16 @htons(i16 zeroext 2) #13
  %733 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %734 = bitcast %union.anon.2* %733 to %struct.tftperror*
  %735 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %734, i32 0, i32 1
  store i16 %732, i16* %735, align 2
  %736 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %737 = bitcast %union.anon.2* %736 to %struct.tftperror*
  %738 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %737, i32 0, i32 2
  %739 = getelementptr inbounds [512 x i8], [512 x i8]* %738, i32 0, i32 0
  %740 = call i32 (i8*, i8*, ...) @sprintf(i8* %739, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0)) #10
  %741 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %742 = load i32, i32* %741, align 8
  %743 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %744 = bitcast %union.anon.2* %743 to %struct.tftperror*
  %745 = bitcast %struct.tftperror* %744 to i8*
  %746 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %747 = bitcast %union.anon.2* %746 to %struct.tftperror*
  %748 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %747, i32 0, i32 2
  %749 = getelementptr inbounds [512 x i8], [512 x i8]* %748, i32 0, i32 0
  %750 = call i64 @strlen(i8* %749) #11
  %751 = add i64 %750, 5
  %752 = call i64 @send(i32 %742, i8* %745, i64 %751, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %753 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %753, align 1
  br label %812

; <label>:754:                                    ; preds = %716
  %755 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 7
  %756 = getelementptr inbounds [256 x i8], [256 x i8]* %755, i32 0, i32 0
  %757 = load i32, i32* %14, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %758
  %760 = getelementptr inbounds %struct.home, %struct.home* %759, i32 0, i32 1
  %761 = getelementptr inbounds [256 x i8], [256 x i8]* %760, i32 0, i32 0
  %762 = call i8* @strcpy(i8* %756, i8* %761) #10
  %763 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 7
  %764 = getelementptr inbounds [256 x i8], [256 x i8]* %763, i32 0, i32 0
  %765 = load i8*, i8** %13, align 8
  %766 = call i8* @strcat(i8* %764, i8* %765) #10
  br label %812

; <label>:767:                                    ; preds = %706, %698
  %768 = load i32, i32* %14, align 4
  %769 = icmp eq i32 %768, 7
  br i1 %769, label %778, label %770

; <label>:770:                                    ; preds = %767
  %771 = load i32, i32* %14, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds [8 x %struct.home], [8 x %struct.home]* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 1), i64 0, i64 %772
  %774 = getelementptr inbounds %struct.home, %struct.home* %773, i32 0, i32 0
  %775 = getelementptr inbounds [64 x i8], [64 x i8]* %774, i64 0, i64 0
  %776 = load i8, i8* %775, align 8
  %777 = icmp ne i8 %776, 0
  br i1 %777, label %807, label %778

; <label>:778:                                    ; preds = %770, %767
  %779 = call zeroext i16 @htons(i16 zeroext 5) #13
  %780 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %781 = bitcast %union.anon.2* %780 to %struct.tftperror*
  %782 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %781, i32 0, i32 0
  store i16 %779, i16* %782, align 4
  %783 = call zeroext i16 @htons(i16 zeroext 2) #13
  %784 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %785 = bitcast %union.anon.2* %784 to %struct.tftperror*
  %786 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %785, i32 0, i32 1
  store i16 %783, i16* %786, align 2
  %787 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %788 = bitcast %union.anon.2* %787 to %struct.tftperror*
  %789 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %788, i32 0, i32 2
  %790 = getelementptr inbounds [512 x i8], [512 x i8]* %789, i32 0, i32 0
  %791 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 9
  %792 = load i8*, i8** %791, align 8
  %793 = call i32 (i8*, i8*, ...) @sprintf(i8* %790, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* %792) #10
  %794 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %795 = load i32, i32* %794, align 8
  %796 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %797 = bitcast %union.anon.2* %796 to %struct.tftperror*
  %798 = bitcast %struct.tftperror* %797 to i8*
  %799 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %800 = bitcast %union.anon.2* %799 to %struct.tftperror*
  %801 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %800, i32 0, i32 2
  %802 = getelementptr inbounds [512 x i8], [512 x i8]* %801, i32 0, i32 0
  %803 = call i64 @strlen(i8* %802) #11
  %804 = add i64 %803, 5
  %805 = call i64 @send(i32 %795, i8* %798, i64 %804, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %806 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %806, align 1
  br label %812

; <label>:807:                                    ; preds = %770
  br label %808

; <label>:808:                                    ; preds = %807
  br label %809

; <label>:809:                                    ; preds = %808
  %810 = load i32, i32* %14, align 4
  %811 = add nsw i32 %810, 1
  store i32 %811, i32* %14, align 4
  br label %695

; <label>:812:                                    ; preds = %778, %754, %727, %695
  br label %813

; <label>:813:                                    ; preds = %812, %646
  %814 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %815 = load i8, i8* %814, align 1
  %816 = zext i8 %815 to i32
  %817 = icmp sge i32 %816, 3
  br i1 %817, label %818, label %819

; <label>:818:                                    ; preds = %813
  br label %2810

; <label>:819:                                    ; preds = %813
  %820 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %821 = bitcast %union.anon.3* %820 to %struct.message*
  %822 = getelementptr inbounds %struct.message, %struct.message* %821, i32 0, i32 0
  %823 = load i16, i16* %822, align 8
  %824 = call zeroext i16 @ntohs(i16 zeroext %823) #13
  %825 = zext i16 %824 to i32
  %826 = icmp eq i32 %825, 1
  br i1 %826, label %827, label %958

; <label>:827:                                    ; preds = %819
  %828 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 6), align 8
  %829 = icmp ne i8 %828, 0
  br i1 %829, label %857, label %830

; <label>:830:                                    ; preds = %827
  %831 = call zeroext i16 @htons(i16 zeroext 5) #13
  %832 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %833 = bitcast %union.anon.2* %832 to %struct.tftperror*
  %834 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %833, i32 0, i32 0
  store i16 %831, i16* %834, align 4
  %835 = call zeroext i16 @htons(i16 zeroext 2) #13
  %836 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %837 = bitcast %union.anon.2* %836 to %struct.tftperror*
  %838 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %837, i32 0, i32 1
  store i16 %835, i16* %838, align 2
  %839 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %840 = bitcast %union.anon.2* %839 to %struct.tftperror*
  %841 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %840, i32 0, i32 2
  %842 = getelementptr inbounds [512 x i8], [512 x i8]* %841, i32 0, i32 0
  %843 = call i8* @strcpy(i8* %842, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %844 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %845 = load i32, i32* %844, align 8
  %846 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %847 = bitcast %union.anon.2* %846 to %struct.tftperror*
  %848 = bitcast %struct.tftperror* %847 to i8*
  %849 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %850 = bitcast %union.anon.2* %849 to %struct.tftperror*
  %851 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %850, i32 0, i32 2
  %852 = getelementptr inbounds [512 x i8], [512 x i8]* %851, i32 0, i32 0
  %853 = call i64 @strlen(i8* %852) #11
  %854 = add i64 %853, 5
  %855 = call i64 @send(i32 %845, i8* %848, i64 %854, i32 0)
  %856 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %856, align 1
  br label %2810

; <label>:857:                                    ; preds = %827
  %858 = load i8*, i8** %11, align 8
  %859 = load i8, i8* %858, align 1
  %860 = icmp ne i8 %859, 0
  br i1 %860, label %861, label %901

; <label>:861:                                    ; preds = %857
  %862 = load i8*, i8** %11, align 8
  store i8* %862, i8** %15, align 8
  br label %863

; <label>:863:                                    ; preds = %894, %861
  %864 = load i8*, i8** %15, align 8
  %865 = load i8, i8* %864, align 1
  %866 = icmp ne i8 %865, 0
  br i1 %866, label %867, label %900

; <label>:867:                                    ; preds = %863
  %868 = load i8*, i8** %15, align 8
  %869 = call i32 @strcasecmp(i8* %868, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0)) #11
  %870 = icmp ne i32 %869, 0
  br i1 %870, label %894, label %871

; <label>:871:                                    ; preds = %867
  %872 = load i8*, i8** %15, align 8
  %873 = call i64 @strlen(i8* %872) #11
  %874 = add i64 %873, 1
  %875 = load i8*, i8** %15, align 8
  %876 = getelementptr inbounds i8, i8* %875, i64 %874
  store i8* %876, i8** %15, align 8
  %877 = load i8*, i8** %15, align 8
  %878 = call i64 @atol(i8* %877) #11
  %879 = trunc i64 %878 to i32
  store i32 %879, i32* %16, align 4
  %880 = load i32, i32* %16, align 4
  %881 = icmp ult i32 %880, 512
  br i1 %881, label %882, label %883

; <label>:882:                                    ; preds = %871
  store i32 512, i32* %16, align 4
  br label %890

; <label>:883:                                    ; preds = %871
  %884 = load i32, i32* %16, align 4
  %885 = load i32, i32* @blksize, align 4
  %886 = icmp ugt i32 %884, %885
  br i1 %886, label %887, label %889

; <label>:887:                                    ; preds = %883
  %888 = load i32, i32* @blksize, align 4
  store i32 %888, i32* %16, align 4
  br label %889

; <label>:889:                                    ; preds = %887, %883
  br label %890

; <label>:890:                                    ; preds = %889, %882
  %891 = load i32, i32* %16, align 4
  %892 = trunc i32 %891 to i16
  %893 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  store i16 %892, i16* %893, align 4
  br label %900

; <label>:894:                                    ; preds = %867
  %895 = load i8*, i8** %15, align 8
  %896 = call i64 @strlen(i8* %895) #11
  %897 = add i64 %896, 1
  %898 = load i8*, i8** %15, align 8
  %899 = getelementptr inbounds i8, i8* %898, i64 %897
  store i8* %899, i8** %15, align 8
  br label %863

; <label>:900:                                    ; preds = %890, %863
  br label %901

; <label>:901:                                    ; preds = %900, %857
  %902 = call i32* @__errno_location() #13
  store i32 0, i32* %902, align 4
  %903 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 10
  %904 = load i8*, i8** %903, align 8
  %905 = call i32 @strcasecmp(i8* %904, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #11
  %906 = icmp ne i32 %905, 0
  br i1 %906, label %907, label %912

; <label>:907:                                    ; preds = %901
  %908 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 10
  %909 = load i8*, i8** %908, align 8
  %910 = call i32 @strcasecmp(i8* %909, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #11
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %917, label %912

; <label>:912:                                    ; preds = %907, %901
  %913 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 7
  %914 = getelementptr inbounds [256 x i8], [256 x i8]* %913, i32 0, i32 0
  %915 = call %struct._IO_FILE* @fopen(i8* %914, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  %916 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* %915, %struct._IO_FILE** %916, align 8
  br label %922

; <label>:917:                                    ; preds = %907
  %918 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 7
  %919 = getelementptr inbounds [256 x i8], [256 x i8]* %918, i32 0, i32 0
  %920 = call %struct._IO_FILE* @fopen(i8* %919, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  %921 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* %920, %struct._IO_FILE** %921, align 8
  br label %922

; <label>:922:                                    ; preds = %917, %912
  %923 = call i32* @__errno_location() #13
  %924 = load i32, i32* %923, align 4
  %925 = icmp ne i32 %924, 0
  br i1 %925, label %930, label %926

; <label>:926:                                    ; preds = %922
  %927 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %928 = load %struct._IO_FILE*, %struct._IO_FILE** %927, align 8
  %929 = icmp ne %struct._IO_FILE* %928, null
  br i1 %929, label %957, label %930

; <label>:930:                                    ; preds = %926, %922
  %931 = call zeroext i16 @htons(i16 zeroext 5) #13
  %932 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %933 = bitcast %union.anon.2* %932 to %struct.tftperror*
  %934 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %933, i32 0, i32 0
  store i16 %931, i16* %934, align 4
  %935 = call zeroext i16 @htons(i16 zeroext 1) #13
  %936 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %937 = bitcast %union.anon.2* %936 to %struct.tftperror*
  %938 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %937, i32 0, i32 1
  store i16 %935, i16* %938, align 2
  %939 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %940 = bitcast %union.anon.2* %939 to %struct.tftperror*
  %941 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %940, i32 0, i32 2
  %942 = getelementptr inbounds [512 x i8], [512 x i8]* %941, i32 0, i32 0
  %943 = call i8* @strcpy(i8* %942, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %944 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %945 = load i32, i32* %944, align 8
  %946 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %947 = bitcast %union.anon.2* %946 to %struct.tftperror*
  %948 = bitcast %struct.tftperror* %947 to i8*
  %949 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %950 = bitcast %union.anon.2* %949 to %struct.tftperror*
  %951 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %950, i32 0, i32 2
  %952 = getelementptr inbounds [512 x i8], [512 x i8]* %951, i32 0, i32 0
  %953 = call i64 @strlen(i8* %952) #11
  %954 = add i64 %953, 5
  %955 = call i64 @send(i32 %945, i8* %948, i64 %954, i32 0)
  %956 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %956, align 1
  br label %2810

; <label>:957:                                    ; preds = %926
  br label %1122

; <label>:958:                                    ; preds = %819
  %959 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 7), align 1
  %960 = icmp ne i8 %959, 0
  br i1 %960, label %991, label %961

; <label>:961:                                    ; preds = %958
  %962 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 8), align 2
  %963 = icmp ne i8 %962, 0
  br i1 %963, label %991, label %964

; <label>:964:                                    ; preds = %961
  %965 = call zeroext i16 @htons(i16 zeroext 5) #13
  %966 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %967 = bitcast %union.anon.2* %966 to %struct.tftperror*
  %968 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %967, i32 0, i32 0
  store i16 %965, i16* %968, align 4
  %969 = call zeroext i16 @htons(i16 zeroext 2) #13
  %970 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %971 = bitcast %union.anon.2* %970 to %struct.tftperror*
  %972 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %971, i32 0, i32 1
  store i16 %969, i16* %972, align 2
  %973 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %974 = bitcast %union.anon.2* %973 to %struct.tftperror*
  %975 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %974, i32 0, i32 2
  %976 = getelementptr inbounds [512 x i8], [512 x i8]* %975, i32 0, i32 0
  %977 = call i8* @strcpy(i8* %976, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0)) #10
  %978 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %979 = load i32, i32* %978, align 8
  %980 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %981 = bitcast %union.anon.2* %980 to %struct.tftperror*
  %982 = bitcast %struct.tftperror* %981 to i8*
  %983 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %984 = bitcast %union.anon.2* %983 to %struct.tftperror*
  %985 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %984, i32 0, i32 2
  %986 = getelementptr inbounds [512 x i8], [512 x i8]* %985, i32 0, i32 0
  %987 = call i64 @strlen(i8* %986) #11
  %988 = add i64 %987, 5
  %989 = call i64 @send(i32 %979, i8* %982, i64 %988, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %990 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %990, align 1
  br label %2810

; <label>:991:                                    ; preds = %961, %958
  %992 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 7
  %993 = getelementptr inbounds [256 x i8], [256 x i8]* %992, i32 0, i32 0
  %994 = call %struct._IO_FILE* @fopen(i8* %993, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  %995 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* %994, %struct._IO_FILE** %995, align 8
  %996 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %997 = load %struct._IO_FILE*, %struct._IO_FILE** %996, align 8
  %998 = icmp ne %struct._IO_FILE* %997, null
  br i1 %998, label %999, label %1034

; <label>:999:                                    ; preds = %991
  %1000 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1001 = load %struct._IO_FILE*, %struct._IO_FILE** %1000, align 8
  %1002 = call i32 @fclose(%struct._IO_FILE* %1001)
  %1003 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %1003, align 8
  %1004 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 8), align 2
  %1005 = icmp ne i8 %1004, 0
  br i1 %1005, label %1033, label %1006

; <label>:1006:                                   ; preds = %999
  %1007 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1008 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1009 = bitcast %union.anon.2* %1008 to %struct.tftperror*
  %1010 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1009, i32 0, i32 0
  store i16 %1007, i16* %1010, align 4
  %1011 = call zeroext i16 @htons(i16 zeroext 6) #13
  %1012 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1013 = bitcast %union.anon.2* %1012 to %struct.tftperror*
  %1014 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1013, i32 0, i32 1
  store i16 %1011, i16* %1014, align 2
  %1015 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1016 = bitcast %union.anon.2* %1015 to %struct.tftperror*
  %1017 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1016, i32 0, i32 2
  %1018 = getelementptr inbounds [512 x i8], [512 x i8]* %1017, i32 0, i32 0
  %1019 = call i8* @strcpy(i8* %1018, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0)) #10
  %1020 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1021 = load i32, i32* %1020, align 8
  %1022 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1023 = bitcast %union.anon.2* %1022 to %struct.tftperror*
  %1024 = bitcast %struct.tftperror* %1023 to i8*
  %1025 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1026 = bitcast %union.anon.2* %1025 to %struct.tftperror*
  %1027 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1026, i32 0, i32 2
  %1028 = getelementptr inbounds [512 x i8], [512 x i8]* %1027, i32 0, i32 0
  %1029 = call i64 @strlen(i8* %1028) #11
  %1030 = add i64 %1029, 5
  %1031 = call i64 @send(i32 %1021, i8* %1024, i64 %1030, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1032 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1032, align 1
  br label %2810

; <label>:1033:                                   ; preds = %999
  br label %1065

; <label>:1034:                                   ; preds = %991
  %1035 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 7), align 1
  %1036 = icmp ne i8 %1035, 0
  br i1 %1036, label %1064, label %1037

; <label>:1037:                                   ; preds = %1034
  %1038 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1039 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1040 = bitcast %union.anon.2* %1039 to %struct.tftperror*
  %1041 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1040, i32 0, i32 0
  store i16 %1038, i16* %1041, align 4
  %1042 = call zeroext i16 @htons(i16 zeroext 2) #13
  %1043 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1044 = bitcast %union.anon.2* %1043 to %struct.tftperror*
  %1045 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1044, i32 0, i32 1
  store i16 %1042, i16* %1045, align 2
  %1046 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1047 = bitcast %union.anon.2* %1046 to %struct.tftperror*
  %1048 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1047, i32 0, i32 2
  %1049 = getelementptr inbounds [512 x i8], [512 x i8]* %1048, i32 0, i32 0
  %1050 = call i8* @strcpy(i8* %1049, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0)) #10
  %1051 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1052 = load i32, i32* %1051, align 8
  %1053 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1054 = bitcast %union.anon.2* %1053 to %struct.tftperror*
  %1055 = bitcast %struct.tftperror* %1054 to i8*
  %1056 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1057 = bitcast %union.anon.2* %1056 to %struct.tftperror*
  %1058 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1057, i32 0, i32 2
  %1059 = getelementptr inbounds [512 x i8], [512 x i8]* %1058, i32 0, i32 0
  %1060 = call i64 @strlen(i8* %1059) #11
  %1061 = add i64 %1060, 5
  %1062 = call i64 @send(i32 %1052, i8* %1055, i64 %1061, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1063 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1063, align 1
  br label %2810

; <label>:1064:                                   ; preds = %1034
  br label %1065

; <label>:1065:                                   ; preds = %1064, %1033
  %1066 = call i32* @__errno_location() #13
  store i32 0, i32* %1066, align 4
  %1067 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 10
  %1068 = load i8*, i8** %1067, align 8
  %1069 = call i32 @strcasecmp(i8* %1068, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #11
  %1070 = icmp ne i32 %1069, 0
  br i1 %1070, label %1071, label %1076

; <label>:1071:                                   ; preds = %1065
  %1072 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 10
  %1073 = load i8*, i8** %1072, align 8
  %1074 = call i32 @strcasecmp(i8* %1073, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #11
  %1075 = icmp ne i32 %1074, 0
  br i1 %1075, label %1081, label %1076

; <label>:1076:                                   ; preds = %1071, %1065
  %1077 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 7
  %1078 = getelementptr inbounds [256 x i8], [256 x i8]* %1077, i32 0, i32 0
  %1079 = call %struct._IO_FILE* @fopen(i8* %1078, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0))
  %1080 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* %1079, %struct._IO_FILE** %1080, align 8
  br label %1086

; <label>:1081:                                   ; preds = %1071
  %1082 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 7
  %1083 = getelementptr inbounds [256 x i8], [256 x i8]* %1082, i32 0, i32 0
  %1084 = call %struct._IO_FILE* @fopen(i8* %1083, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0))
  %1085 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* %1084, %struct._IO_FILE** %1085, align 8
  br label %1086

; <label>:1086:                                   ; preds = %1081, %1076
  %1087 = call i32* @__errno_location() #13
  %1088 = load i32, i32* %1087, align 4
  %1089 = icmp ne i32 %1088, 0
  br i1 %1089, label %1094, label %1090

; <label>:1090:                                   ; preds = %1086
  %1091 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1092 = load %struct._IO_FILE*, %struct._IO_FILE** %1091, align 8
  %1093 = icmp ne %struct._IO_FILE* %1092, null
  br i1 %1093, label %1121, label %1094

; <label>:1094:                                   ; preds = %1090, %1086
  %1095 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1096 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1097 = bitcast %union.anon.2* %1096 to %struct.tftperror*
  %1098 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1097, i32 0, i32 0
  store i16 %1095, i16* %1098, align 4
  %1099 = call zeroext i16 @htons(i16 zeroext 2) #13
  %1100 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1101 = bitcast %union.anon.2* %1100 to %struct.tftperror*
  %1102 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1101, i32 0, i32 1
  store i16 %1099, i16* %1102, align 2
  %1103 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1104 = bitcast %union.anon.2* %1103 to %struct.tftperror*
  %1105 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1104, i32 0, i32 2
  %1106 = getelementptr inbounds [512 x i8], [512 x i8]* %1105, i32 0, i32 0
  %1107 = call i8* @strcpy(i8* %1106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #10
  %1108 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1109 = load i32, i32* %1108, align 8
  %1110 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1111 = bitcast %union.anon.2* %1110 to %struct.tftperror*
  %1112 = bitcast %struct.tftperror* %1111 to i8*
  %1113 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1114 = bitcast %union.anon.2* %1113 to %struct.tftperror*
  %1115 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1114, i32 0, i32 2
  %1116 = getelementptr inbounds [512 x i8], [512 x i8]* %1115, i32 0, i32 0
  %1117 = call i64 @strlen(i8* %1116) #11
  %1118 = add i64 %1117, 5
  %1119 = call i64 @send(i32 %1109, i8* %1112, i64 %1118, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1120 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1120, align 1
  br label %2810

; <label>:1121:                                   ; preds = %1090
  br label %1122

; <label>:1122:                                   ; preds = %1121, %957
  %1123 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1124 = load %struct._IO_FILE*, %struct._IO_FILE** %1123, align 8
  %1125 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %1126 = load i16, i16* %1125, align 4
  %1127 = zext i16 %1126 to i32
  %1128 = mul nsw i32 5, %1127
  %1129 = sext i32 %1128 to i64
  %1130 = call i32 @setvbuf(%struct._IO_FILE* %1124, i8* null, i32 0, i64 %1129) #10
  %1131 = load i8*, i8** %11, align 8
  %1132 = load i8, i8* %1131, align 1
  %1133 = icmp ne i8 %1132, 0
  br i1 %1133, label %1134, label %1387

; <label>:1134:                                   ; preds = %1122
  store i8 1, i8* %8, align 1
  %1135 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1136 = bitcast %union.anon.2* %1135 to %struct.message*
  %1137 = getelementptr inbounds %struct.message, %struct.message* %1136, i32 0, i32 1
  %1138 = getelementptr inbounds [514 x i8], [514 x i8]* %1137, i32 0, i32 0
  store i8* %1138, i8** %17, align 8
  %1139 = call zeroext i16 @htons(i16 zeroext 6) #13
  %1140 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1141 = bitcast %union.anon.2* %1140 to %struct.message*
  %1142 = getelementptr inbounds %struct.message, %struct.message* %1141, i32 0, i32 0
  store i16 %1139, i16* %1142, align 4
  br label %1143

; <label>:1143:                                   ; preds = %1356, %1134
  %1144 = load i8*, i8** %11, align 8
  %1145 = load i8, i8* %1144, align 1
  %1146 = icmp ne i8 %1145, 0
  br i1 %1146, label %1147, label %1362

; <label>:1147:                                   ; preds = %1143
  %1148 = load i8*, i8** %11, align 8
  %1149 = call i32 @strcasecmp(i8* %1148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0)) #11
  %1150 = icmp ne i32 %1149, 0
  br i1 %1150, label %1190, label %1151

; <label>:1151:                                   ; preds = %1147
  %1152 = load i8*, i8** %17, align 8
  %1153 = load i8*, i8** %11, align 8
  %1154 = call i8* @strcpy(i8* %1152, i8* %1153) #10
  %1155 = load i8*, i8** %17, align 8
  %1156 = call i64 @strlen(i8* %1155) #11
  %1157 = add i64 %1156, 1
  %1158 = load i8*, i8** %17, align 8
  %1159 = getelementptr inbounds i8, i8* %1158, i64 %1157
  store i8* %1159, i8** %17, align 8
  %1160 = load i8*, i8** %11, align 8
  %1161 = call i64 @strlen(i8* %1160) #11
  %1162 = add i64 %1161, 1
  %1163 = load i8*, i8** %11, align 8
  %1164 = getelementptr inbounds i8, i8* %1163, i64 %1162
  store i8* %1164, i8** %11, align 8
  %1165 = load i8*, i8** %11, align 8
  %1166 = call i64 @atol(i8* %1165) #11
  %1167 = trunc i64 %1166 to i32
  store i32 %1167, i32* %18, align 4
  %1168 = load i32, i32* %18, align 4
  %1169 = icmp ult i32 %1168, 512
  br i1 %1169, label %1170, label %1171

; <label>:1170:                                   ; preds = %1151
  store i32 512, i32* %18, align 4
  br label %1178

; <label>:1171:                                   ; preds = %1151
  %1172 = load i32, i32* %18, align 4
  %1173 = load i32, i32* @blksize, align 4
  %1174 = icmp ugt i32 %1172, %1173
  br i1 %1174, label %1175, label %1177

; <label>:1175:                                   ; preds = %1171
  %1176 = load i32, i32* @blksize, align 4
  store i32 %1176, i32* %18, align 4
  br label %1177

; <label>:1177:                                   ; preds = %1175, %1171
  br label %1178

; <label>:1178:                                   ; preds = %1177, %1170
  %1179 = load i32, i32* %18, align 4
  %1180 = trunc i32 %1179 to i16
  %1181 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  store i16 %1180, i16* %1181, align 4
  %1182 = load i8*, i8** %17, align 8
  %1183 = load i32, i32* %18, align 4
  %1184 = call i32 (i8*, i8*, ...) @sprintf(i8* %1182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %1183) #10
  %1185 = load i8*, i8** %17, align 8
  %1186 = call i64 @strlen(i8* %1185) #11
  %1187 = add i64 %1186, 1
  %1188 = load i8*, i8** %17, align 8
  %1189 = getelementptr inbounds i8, i8* %1188, i64 %1187
  store i8* %1189, i8** %17, align 8
  br label %1356

; <label>:1190:                                   ; preds = %1147
  %1191 = load i8*, i8** %11, align 8
  %1192 = call i32 @strcasecmp(i8* %1191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #11
  %1193 = icmp ne i32 %1192, 0
  br i1 %1193, label %1308, label %1194

; <label>:1194:                                   ; preds = %1190
  %1195 = load i8*, i8** %17, align 8
  %1196 = load i8*, i8** %11, align 8
  %1197 = call i8* @strcpy(i8* %1195, i8* %1196) #10
  %1198 = load i8*, i8** %17, align 8
  %1199 = call i64 @strlen(i8* %1198) #11
  %1200 = add i64 %1199, 1
  %1201 = load i8*, i8** %17, align 8
  %1202 = getelementptr inbounds i8, i8* %1201, i64 %1200
  store i8* %1202, i8** %17, align 8
  %1203 = load i8*, i8** %11, align 8
  %1204 = call i64 @strlen(i8* %1203) #11
  %1205 = add i64 %1204, 1
  %1206 = load i8*, i8** %11, align 8
  %1207 = getelementptr inbounds i8, i8* %1206, i64 %1205
  store i8* %1207, i8** %11, align 8
  %1208 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1209 = bitcast %union.anon.3* %1208 to %struct.message*
  %1210 = getelementptr inbounds %struct.message, %struct.message* %1209, i32 0, i32 0
  %1211 = load i16, i16* %1210, align 8
  %1212 = call zeroext i16 @ntohs(i16 zeroext %1211) #13
  %1213 = zext i16 %1212 to i32
  %1214 = icmp eq i32 %1213, 1
  br i1 %1214, label %1215, label %1296

; <label>:1215:                                   ; preds = %1194
  %1216 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1217 = load %struct._IO_FILE*, %struct._IO_FILE** %1216, align 8
  %1218 = call i32 @fseek(%struct._IO_FILE* %1217, i64 0, i32 2)
  %1219 = icmp ne i32 %1218, 0
  br i1 %1219, label %1268, label %1220

; <label>:1220:                                   ; preds = %1215
  %1221 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1222 = load %struct._IO_FILE*, %struct._IO_FILE** %1221, align 8
  %1223 = call i64 @ftell(%struct._IO_FILE* %1222)
  %1224 = icmp sge i64 %1223, 0
  br i1 %1224, label %1225, label %1240

; <label>:1225:                                   ; preds = %1220
  %1226 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1227 = load %struct._IO_FILE*, %struct._IO_FILE** %1226, align 8
  %1228 = call i64 @ftell(%struct._IO_FILE* %1227)
  %1229 = trunc i64 %1228 to i32
  %1230 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 12
  store i32 %1229, i32* %1230, align 8
  %1231 = load i8*, i8** %17, align 8
  %1232 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 12
  %1233 = load i32, i32* %1232, align 8
  %1234 = call i32 (i8*, i8*, ...) @sprintf(i8* %1231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %1233) #10
  %1235 = load i8*, i8** %17, align 8
  %1236 = call i64 @strlen(i8* %1235) #11
  %1237 = add i64 %1236, 1
  %1238 = load i8*, i8** %17, align 8
  %1239 = getelementptr inbounds i8, i8* %1238, i64 %1237
  store i8* %1239, i8** %17, align 8
  br label %1267

; <label>:1240:                                   ; preds = %1220
  %1241 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1242 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1243 = bitcast %union.anon.2* %1242 to %struct.tftperror*
  %1244 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1243, i32 0, i32 0
  store i16 %1241, i16* %1244, align 4
  %1245 = call zeroext i16 @htons(i16 zeroext 2) #13
  %1246 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1247 = bitcast %union.anon.2* %1246 to %struct.tftperror*
  %1248 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1247, i32 0, i32 1
  store i16 %1245, i16* %1248, align 2
  %1249 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1250 = bitcast %union.anon.2* %1249 to %struct.tftperror*
  %1251 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1250, i32 0, i32 2
  %1252 = getelementptr inbounds [512 x i8], [512 x i8]* %1251, i32 0, i32 0
  %1253 = call i8* @strcpy(i8* %1252, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #10
  %1254 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1255 = load i32, i32* %1254, align 8
  %1256 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1257 = bitcast %union.anon.2* %1256 to %struct.tftperror*
  %1258 = bitcast %struct.tftperror* %1257 to i8*
  %1259 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1260 = bitcast %union.anon.2* %1259 to %struct.tftperror*
  %1261 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1260, i32 0, i32 2
  %1262 = getelementptr inbounds [512 x i8], [512 x i8]* %1261, i32 0, i32 0
  %1263 = call i64 @strlen(i8* %1262) #11
  %1264 = add i64 %1263, 5
  %1265 = call i64 @send(i32 %1255, i8* %1258, i64 %1264, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1266 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1266, align 1
  br label %1362

; <label>:1267:                                   ; preds = %1225
  br label %1295

; <label>:1268:                                   ; preds = %1215
  %1269 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1270 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1271 = bitcast %union.anon.2* %1270 to %struct.tftperror*
  %1272 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1271, i32 0, i32 0
  store i16 %1269, i16* %1272, align 4
  %1273 = call zeroext i16 @htons(i16 zeroext 2) #13
  %1274 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1275 = bitcast %union.anon.2* %1274 to %struct.tftperror*
  %1276 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1275, i32 0, i32 1
  store i16 %1273, i16* %1276, align 2
  %1277 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1278 = bitcast %union.anon.2* %1277 to %struct.tftperror*
  %1279 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1278, i32 0, i32 2
  %1280 = getelementptr inbounds [512 x i8], [512 x i8]* %1279, i32 0, i32 0
  %1281 = call i8* @strcpy(i8* %1280, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #10
  %1282 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1283 = load i32, i32* %1282, align 8
  %1284 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1285 = bitcast %union.anon.2* %1284 to %struct.tftperror*
  %1286 = bitcast %struct.tftperror* %1285 to i8*
  %1287 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1288 = bitcast %union.anon.2* %1287 to %struct.tftperror*
  %1289 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1288, i32 0, i32 2
  %1290 = getelementptr inbounds [512 x i8], [512 x i8]* %1289, i32 0, i32 0
  %1291 = call i64 @strlen(i8* %1290) #11
  %1292 = add i64 %1291, 5
  %1293 = call i64 @send(i32 %1283, i8* %1286, i64 %1292, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1294 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1294, align 1
  br label %1362

; <label>:1295:                                   ; preds = %1267
  br label %1307

; <label>:1296:                                   ; preds = %1194
  %1297 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 12
  store i32 0, i32* %1297, align 8
  %1298 = load i8*, i8** %17, align 8
  %1299 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 12
  %1300 = load i32, i32* %1299, align 8
  %1301 = call i32 (i8*, i8*, ...) @sprintf(i8* %1298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %1300) #10
  %1302 = load i8*, i8** %17, align 8
  %1303 = call i64 @strlen(i8* %1302) #11
  %1304 = add i64 %1303, 1
  %1305 = load i8*, i8** %17, align 8
  %1306 = getelementptr inbounds i8, i8* %1305, i64 %1304
  store i8* %1306, i8** %17, align 8
  br label %1307

; <label>:1307:                                   ; preds = %1296, %1295
  br label %1355

; <label>:1308:                                   ; preds = %1190
  %1309 = load i8*, i8** %11, align 8
  %1310 = call i32 @strcasecmp(i8* %1309, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)) #11
  %1311 = icmp ne i32 %1310, 0
  br i1 %1311, label %1354, label %1312

; <label>:1312:                                   ; preds = %1308
  %1313 = load i8*, i8** %17, align 8
  %1314 = load i8*, i8** %11, align 8
  %1315 = call i8* @strcpy(i8* %1313, i8* %1314) #10
  %1316 = load i8*, i8** %17, align 8
  %1317 = call i64 @strlen(i8* %1316) #11
  %1318 = add i64 %1317, 1
  %1319 = load i8*, i8** %17, align 8
  %1320 = getelementptr inbounds i8, i8* %1319, i64 %1318
  store i8* %1320, i8** %17, align 8
  %1321 = load i8*, i8** %11, align 8
  %1322 = call i64 @strlen(i8* %1321) #11
  %1323 = add i64 %1322, 1
  %1324 = load i8*, i8** %11, align 8
  %1325 = getelementptr inbounds i8, i8* %1324, i64 %1323
  store i8* %1325, i8** %11, align 8
  %1326 = load i8*, i8** %11, align 8
  %1327 = call i32 @atoi(i8* %1326) #11
  store i32 %1327, i32* %18, align 4
  %1328 = load i32, i32* %18, align 4
  %1329 = icmp ult i32 %1328, 1
  br i1 %1329, label %1330, label %1331

; <label>:1330:                                   ; preds = %1312
  store i32 1, i32* %18, align 4
  br label %1336

; <label>:1331:                                   ; preds = %1312
  %1332 = load i32, i32* %18, align 4
  %1333 = icmp ugt i32 %1332, 255
  br i1 %1333, label %1334, label %1335

; <label>:1334:                                   ; preds = %1331
  store i32 255, i32* %18, align 4
  br label %1335

; <label>:1335:                                   ; preds = %1334, %1331
  br label %1336

; <label>:1336:                                   ; preds = %1335, %1330
  %1337 = load i32, i32* %18, align 4
  %1338 = trunc i32 %1337 to i16
  %1339 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 23
  store i16 %1338, i16* %1339, align 2
  %1340 = call i64 @time(i64* null) #10
  %1341 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 23
  %1342 = load i16, i16* %1341, align 2
  %1343 = zext i16 %1342 to i64
  %1344 = add nsw i64 %1340, %1343
  %1345 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  store i64 %1344, i64* %1345, align 8
  %1346 = load i8*, i8** %17, align 8
  %1347 = load i32, i32* %18, align 4
  %1348 = call i32 (i8*, i8*, ...) @sprintf(i8* %1346, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 %1347) #10
  %1349 = load i8*, i8** %17, align 8
  %1350 = call i64 @strlen(i8* %1349) #11
  %1351 = add i64 %1350, 1
  %1352 = load i8*, i8** %17, align 8
  %1353 = getelementptr inbounds i8, i8* %1352, i64 %1351
  store i8* %1353, i8** %17, align 8
  br label %1354

; <label>:1354:                                   ; preds = %1336, %1308
  br label %1355

; <label>:1355:                                   ; preds = %1354, %1307
  br label %1356

; <label>:1356:                                   ; preds = %1355, %1178
  %1357 = load i8*, i8** %11, align 8
  %1358 = call i64 @strlen(i8* %1357) #11
  %1359 = add i64 %1358, 1
  %1360 = load i8*, i8** %11, align 8
  %1361 = getelementptr inbounds i8, i8* %1360, i64 %1359
  store i8* %1361, i8** %11, align 8
  br label %1143

; <label>:1362:                                   ; preds = %1268, %1240, %1143
  %1363 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %1364 = load i8, i8* %1363, align 1
  %1365 = zext i8 %1364 to i32
  %1366 = icmp sge i32 %1365, 3
  br i1 %1366, label %1367, label %1368

; <label>:1367:                                   ; preds = %1362
  br label %2810

; <label>:1368:                                   ; preds = %1362
  %1369 = call i32* @__errno_location() #13
  store i32 0, i32* %1369, align 4
  %1370 = load i8*, i8** %17, align 8
  %1371 = ptrtoint i8* %1370 to i64
  %1372 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1373 = bitcast %union.anon.2* %1372 to %struct.message*
  %1374 = ptrtoint %struct.message* %1373 to i64
  %1375 = sub i64 %1371, %1374
  %1376 = trunc i64 %1375 to i32
  %1377 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 14
  store i32 %1376, i32* %1377, align 8
  %1378 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1379 = load i32, i32* %1378, align 8
  %1380 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1381 = bitcast %union.anon.2* %1380 to %struct.message*
  %1382 = bitcast %struct.message* %1381 to i8*
  %1383 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 14
  %1384 = load i32, i32* %1383, align 8
  %1385 = sext i32 %1384 to i64
  %1386 = call i64 @send(i32 %1379, i8* %1382, i64 %1385, i32 0)
  br label %1416

; <label>:1387:                                   ; preds = %1122
  %1388 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1389 = bitcast %union.anon.3* %1388 to %struct.message*
  %1390 = getelementptr inbounds %struct.message, %struct.message* %1389, i32 0, i32 0
  %1391 = load i16, i16* %1390, align 8
  %1392 = call zeroext i16 @htons(i16 zeroext %1391) #13
  %1393 = zext i16 %1392 to i32
  %1394 = icmp eq i32 %1393, 2
  br i1 %1394, label %1395, label %1415

; <label>:1395:                                   ; preds = %1387
  %1396 = call zeroext i16 @htons(i16 zeroext 4) #13
  %1397 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1398 = bitcast %union.anon.2* %1397 to %struct.acknowledgement*
  %1399 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %1398, i32 0, i32 0
  store i16 %1396, i16* %1399, align 4
  %1400 = call zeroext i16 @htons(i16 zeroext 0) #13
  %1401 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1402 = bitcast %union.anon.2* %1401 to %struct.acknowledgement*
  %1403 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %1402, i32 0, i32 1
  store i16 %1400, i16* %1403, align 2
  %1404 = call i32* @__errno_location() #13
  store i32 0, i32* %1404, align 4
  %1405 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 14
  store i32 4, i32* %1405, align 8
  %1406 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1407 = load i32, i32* %1406, align 8
  %1408 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1409 = bitcast %union.anon.2* %1408 to %struct.message*
  %1410 = bitcast %struct.message* %1409 to i8*
  %1411 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 14
  %1412 = load i32, i32* %1411, align 8
  %1413 = sext i32 %1412 to i64
  %1414 = call i64 @send(i32 %1407, i8* %1410, i64 %1413, i32 0)
  br label %1415

; <label>:1415:                                   ; preds = %1395, %1387
  br label %1416

; <label>:1416:                                   ; preds = %1415, %1368
  %1417 = call i32* @__errno_location() #13
  %1418 = load i32, i32* %1417, align 4
  %1419 = icmp ne i32 %1418, 0
  br i1 %1419, label %1420, label %1427

; <label>:1420:                                   ; preds = %1416
  %1421 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1422 = bitcast %union.anon.2* %1421 to %struct.tftperror*
  %1423 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1422, i32 0, i32 2
  %1424 = getelementptr inbounds [512 x i8], [512 x i8]* %1423, i32 0, i32 0
  %1425 = call i32 (i8*, i8*, ...) @sprintf(i8* %1424, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1426 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1426, align 1
  br label %2810

; <label>:1427:                                   ; preds = %1416
  %1428 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1429 = bitcast %union.anon.3* %1428 to %struct.message*
  %1430 = getelementptr inbounds %struct.message, %struct.message* %1429, i32 0, i32 0
  %1431 = load i16, i16* %1430, align 8
  %1432 = call zeroext i16 @ntohs(i16 zeroext %1431) #13
  %1433 = zext i16 %1432 to i32
  %1434 = icmp eq i32 %1433, 1
  br i1 %1434, label %1435, label %2264

; <label>:1435:                                   ; preds = %1427
  %1436 = call i32* @__errno_location() #13
  store i32 0, i32* %1436, align 4
  %1437 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %1438 = load i16, i16* %1437, align 4
  %1439 = zext i16 %1438 to i32
  %1440 = add nsw i32 %1439, 4
  %1441 = sext i32 %1440 to i64
  %1442 = call noalias i8* @calloc(i64 1, i64 %1441) #10
  %1443 = bitcast i8* %1442 to %struct.packet*
  %1444 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1445 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1444, i64 0, i64 0
  store %struct.packet* %1443, %struct.packet** %1445, align 8
  %1446 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %1447 = load i16, i16* %1446, align 4
  %1448 = zext i16 %1447 to i32
  %1449 = add nsw i32 %1448, 4
  %1450 = sext i32 %1449 to i64
  %1451 = call noalias i8* @calloc(i64 1, i64 %1450) #10
  %1452 = bitcast i8* %1451 to %struct.packet*
  %1453 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1454 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1453, i64 0, i64 1
  store %struct.packet* %1452, %struct.packet** %1454, align 8
  %1455 = call i32* @__errno_location() #13
  %1456 = load i32, i32* %1455, align 4
  %1457 = icmp ne i32 %1456, 0
  br i1 %1457, label %1468, label %1458

; <label>:1458:                                   ; preds = %1435
  %1459 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1460 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1459, i64 0, i64 0
  %1461 = load %struct.packet*, %struct.packet** %1460, align 8
  %1462 = icmp ne %struct.packet* %1461, null
  br i1 %1462, label %1463, label %1468

; <label>:1463:                                   ; preds = %1458
  %1464 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1465 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1464, i64 0, i64 1
  %1466 = load %struct.packet*, %struct.packet** %1465, align 8
  %1467 = icmp ne %struct.packet* %1466, null
  br i1 %1467, label %1475, label %1468

; <label>:1468:                                   ; preds = %1463, %1458, %1435
  %1469 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1470 = bitcast %union.anon.2* %1469 to %struct.tftperror*
  %1471 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1470, i32 0, i32 2
  %1472 = getelementptr inbounds [512 x i8], [512 x i8]* %1471, i32 0, i32 0
  %1473 = call i32 (i8*, i8*, ...) @sprintf(i8* %1472, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1474 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1474, align 1
  br label %2810

; <label>:1475:                                   ; preds = %1463
  %1476 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1477 = load %struct._IO_FILE*, %struct._IO_FILE** %1476, align 8
  %1478 = call i64 @ftell(%struct._IO_FILE* %1477)
  store i64 %1478, i64* %19, align 8
  %1479 = load i64, i64* %19, align 8
  %1480 = icmp sgt i64 %1479, 0
  br i1 %1480, label %1481, label %1514

; <label>:1481:                                   ; preds = %1475
  %1482 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1483 = load %struct._IO_FILE*, %struct._IO_FILE** %1482, align 8
  %1484 = call i32 @fseek(%struct._IO_FILE* %1483, i64 0, i32 0)
  %1485 = icmp ne i32 %1484, 0
  br i1 %1485, label %1486, label %1513

; <label>:1486:                                   ; preds = %1481
  %1487 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1488 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1489 = bitcast %union.anon.2* %1488 to %struct.tftperror*
  %1490 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1489, i32 0, i32 0
  store i16 %1487, i16* %1490, align 4
  %1491 = call zeroext i16 @htons(i16 zeroext 2) #13
  %1492 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1493 = bitcast %union.anon.2* %1492 to %struct.tftperror*
  %1494 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1493, i32 0, i32 1
  store i16 %1491, i16* %1494, align 2
  %1495 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1496 = bitcast %union.anon.2* %1495 to %struct.tftperror*
  %1497 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1496, i32 0, i32 2
  %1498 = getelementptr inbounds [512 x i8], [512 x i8]* %1497, i32 0, i32 0
  %1499 = call i8* @strcpy(i8* %1498, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0)) #10
  %1500 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1501 = load i32, i32* %1500, align 8
  %1502 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1503 = bitcast %union.anon.2* %1502 to %struct.tftperror*
  %1504 = bitcast %struct.tftperror* %1503 to i8*
  %1505 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1506 = bitcast %union.anon.2* %1505 to %struct.tftperror*
  %1507 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1506, i32 0, i32 2
  %1508 = getelementptr inbounds [512 x i8], [512 x i8]* %1507, i32 0, i32 0
  %1509 = call i64 @strlen(i8* %1508) #11
  %1510 = add i64 %1509, 5
  %1511 = call i64 @send(i32 %1501, i8* %1504, i64 %1510, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1512 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1512, align 1
  br label %2810

; <label>:1513:                                   ; preds = %1481
  br label %1545

; <label>:1514:                                   ; preds = %1475
  %1515 = load i64, i64* %19, align 8
  %1516 = icmp slt i64 %1515, 0
  br i1 %1516, label %1517, label %1544

; <label>:1517:                                   ; preds = %1514
  %1518 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1519 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1520 = bitcast %union.anon.2* %1519 to %struct.tftperror*
  %1521 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1520, i32 0, i32 0
  store i16 %1518, i16* %1521, align 4
  %1522 = call zeroext i16 @htons(i16 zeroext 2) #13
  %1523 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1524 = bitcast %union.anon.2* %1523 to %struct.tftperror*
  %1525 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1524, i32 0, i32 1
  store i16 %1522, i16* %1525, align 2
  %1526 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1527 = bitcast %union.anon.2* %1526 to %struct.tftperror*
  %1528 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1527, i32 0, i32 2
  %1529 = getelementptr inbounds [512 x i8], [512 x i8]* %1528, i32 0, i32 0
  %1530 = call i8* @strcpy(i8* %1529, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0)) #10
  %1531 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1532 = load i32, i32* %1531, align 8
  %1533 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1534 = bitcast %union.anon.2* %1533 to %struct.tftperror*
  %1535 = bitcast %struct.tftperror* %1534 to i8*
  %1536 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1537 = bitcast %union.anon.2* %1536 to %struct.tftperror*
  %1538 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1537, i32 0, i32 2
  %1539 = getelementptr inbounds [512 x i8], [512 x i8]* %1538, i32 0, i32 0
  %1540 = call i64 @strlen(i8* %1539) #11
  %1541 = add i64 %1540, 5
  %1542 = call i64 @send(i32 %1532, i8* %1535, i64 %1541, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1543 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1543, align 1
  br label %2810

; <label>:1544:                                   ; preds = %1514
  br label %1545

; <label>:1545:                                   ; preds = %1544, %1513
  %1546 = call i32* @__errno_location() #13
  store i32 0, i32* %1546, align 4
  %1547 = call zeroext i16 @htons(i16 zeroext 3) #13
  %1548 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1549 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1548, i64 0, i64 0
  %1550 = load %struct.packet*, %struct.packet** %1549, align 8
  %1551 = getelementptr inbounds %struct.packet, %struct.packet* %1550, i32 0, i32 0
  store i16 %1547, i16* %1551, align 2
  %1552 = call zeroext i16 @htons(i16 zeroext 1) #13
  %1553 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1554 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1553, i64 0, i64 0
  %1555 = load %struct.packet*, %struct.packet** %1554, align 8
  %1556 = getelementptr inbounds %struct.packet, %struct.packet* %1555, i32 0, i32 1
  store i16 %1552, i16* %1556, align 2
  %1557 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1558 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1557, i64 0, i64 0
  %1559 = load %struct.packet*, %struct.packet** %1558, align 8
  %1560 = getelementptr inbounds %struct.packet, %struct.packet* %1559, i32 0, i32 2
  %1561 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %1562 = load i16, i16* %1561, align 4
  %1563 = zext i16 %1562 to i64
  %1564 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1565 = load %struct._IO_FILE*, %struct._IO_FILE** %1564, align 8
  %1566 = call i64 @fread(i8* %1560, i64 1, i64 %1563, %struct._IO_FILE* %1565)
  %1567 = trunc i64 %1566 to i32
  %1568 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 16
  %1569 = getelementptr inbounds [2 x i32], [2 x i32]* %1568, i64 0, i64 0
  store i32 %1567, i32* %1569, align 8
  %1570 = call i32* @__errno_location() #13
  %1571 = load i32, i32* %1570, align 4
  %1572 = icmp ne i32 %1571, 0
  br i1 %1572, label %1573, label %1600

; <label>:1573:                                   ; preds = %1545
  %1574 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1575 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1576 = bitcast %union.anon.2* %1575 to %struct.tftperror*
  %1577 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1576, i32 0, i32 0
  store i16 %1574, i16* %1577, align 4
  %1578 = call zeroext i16 @htons(i16 zeroext 2) #13
  %1579 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1580 = bitcast %union.anon.2* %1579 to %struct.tftperror*
  %1581 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1580, i32 0, i32 1
  store i16 %1578, i16* %1581, align 2
  %1582 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1583 = bitcast %union.anon.2* %1582 to %struct.tftperror*
  %1584 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1583, i32 0, i32 2
  %1585 = getelementptr inbounds [512 x i8], [512 x i8]* %1584, i32 0, i32 0
  %1586 = call i8* @strcpy(i8* %1585, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #10
  %1587 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1588 = load i32, i32* %1587, align 8
  %1589 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1590 = bitcast %union.anon.2* %1589 to %struct.tftperror*
  %1591 = bitcast %struct.tftperror* %1590 to i8*
  %1592 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1593 = bitcast %union.anon.2* %1592 to %struct.tftperror*
  %1594 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1593, i32 0, i32 2
  %1595 = getelementptr inbounds [512 x i8], [512 x i8]* %1594, i32 0, i32 0
  %1596 = call i64 @strlen(i8* %1595) #11
  %1597 = add i64 %1596, 5
  %1598 = call i64 @send(i32 %1588, i8* %1591, i64 %1597, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1599 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1599, align 1
  br label %2810

; <label>:1600:                                   ; preds = %1545
  %1601 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 16
  %1602 = getelementptr inbounds [2 x i32], [2 x i32]* %1601, i64 0, i64 0
  %1603 = load i32, i32* %1602, align 8
  %1604 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %1605 = load i16, i16* %1604, align 4
  %1606 = zext i16 %1605 to i32
  %1607 = icmp eq i32 %1603, %1606
  br i1 %1607, label %1608, label %1645

; <label>:1608:                                   ; preds = %1600
  %1609 = call zeroext i16 @htons(i16 zeroext 3) #13
  %1610 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1611 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1610, i64 0, i64 1
  %1612 = load %struct.packet*, %struct.packet** %1611, align 8
  %1613 = getelementptr inbounds %struct.packet, %struct.packet* %1612, i32 0, i32 0
  store i16 %1609, i16* %1613, align 2
  %1614 = call zeroext i16 @htons(i16 zeroext 2) #13
  %1615 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1616 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1615, i64 0, i64 1
  %1617 = load %struct.packet*, %struct.packet** %1616, align 8
  %1618 = getelementptr inbounds %struct.packet, %struct.packet* %1617, i32 0, i32 1
  store i16 %1614, i16* %1618, align 2
  %1619 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1620 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1619, i64 0, i64 1
  %1621 = load %struct.packet*, %struct.packet** %1620, align 8
  %1622 = getelementptr inbounds %struct.packet, %struct.packet* %1621, i32 0, i32 2
  %1623 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %1624 = load i16, i16* %1623, align 4
  %1625 = zext i16 %1624 to i64
  %1626 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1627 = load %struct._IO_FILE*, %struct._IO_FILE** %1626, align 8
  %1628 = call i64 @fread(i8* %1622, i64 1, i64 %1625, %struct._IO_FILE* %1627)
  %1629 = trunc i64 %1628 to i32
  %1630 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 16
  %1631 = getelementptr inbounds [2 x i32], [2 x i32]* %1630, i64 0, i64 1
  store i32 %1629, i32* %1631, align 4
  %1632 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 16
  %1633 = getelementptr inbounds [2 x i32], [2 x i32]* %1632, i64 0, i64 1
  %1634 = load i32, i32* %1633, align 4
  %1635 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %1636 = load i16, i16* %1635, align 4
  %1637 = zext i16 %1636 to i32
  %1638 = icmp slt i32 %1634, %1637
  br i1 %1638, label %1639, label %1644

; <label>:1639:                                   ; preds = %1608
  %1640 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1641 = load %struct._IO_FILE*, %struct._IO_FILE** %1640, align 8
  %1642 = call i32 @fclose(%struct._IO_FILE* %1641)
  %1643 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %1643, align 8
  br label %1644

; <label>:1644:                                   ; preds = %1639, %1608
  br label %1650

; <label>:1645:                                   ; preds = %1600
  %1646 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %1647 = load %struct._IO_FILE*, %struct._IO_FILE** %1646, align 8
  %1648 = call i32 @fclose(%struct._IO_FILE* %1647)
  %1649 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %1649, align 8
  br label %1650

; <label>:1650:                                   ; preds = %1645, %1644
  %1651 = call i32* @__errno_location() #13
  %1652 = load i32, i32* %1651, align 4
  %1653 = icmp ne i32 %1652, 0
  br i1 %1653, label %1654, label %1681

; <label>:1654:                                   ; preds = %1650
  %1655 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1656 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1657 = bitcast %union.anon.2* %1656 to %struct.tftperror*
  %1658 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1657, i32 0, i32 0
  store i16 %1655, i16* %1658, align 4
  %1659 = call zeroext i16 @htons(i16 zeroext 0) #13
  %1660 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1661 = bitcast %union.anon.2* %1660 to %struct.tftperror*
  %1662 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1661, i32 0, i32 1
  store i16 %1659, i16* %1662, align 2
  %1663 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1664 = bitcast %union.anon.2* %1663 to %struct.tftperror*
  %1665 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1664, i32 0, i32 2
  %1666 = getelementptr inbounds [512 x i8], [512 x i8]* %1665, i32 0, i32 0
  %1667 = call i8* @strcpy(i8* %1666, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0)) #10
  %1668 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1669 = load i32, i32* %1668, align 8
  %1670 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1671 = bitcast %union.anon.2* %1670 to %struct.tftperror*
  %1672 = bitcast %struct.tftperror* %1671 to i8*
  %1673 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1674 = bitcast %union.anon.2* %1673 to %struct.tftperror*
  %1675 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1674, i32 0, i32 2
  %1676 = getelementptr inbounds [512 x i8], [512 x i8]* %1675, i32 0, i32 0
  %1677 = call i64 @strlen(i8* %1676) #11
  %1678 = add i64 %1677, 5
  %1679 = call i64 @send(i32 %1669, i8* %1672, i64 %1678, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1680 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1680, align 1
  br label %2810

; <label>:1681:                                   ; preds = %1650
  br label %1682

; <label>:1682:                                   ; preds = %2262, %1885, %1801, %1681
  %1683 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %1684 = load i8, i8* %1683, align 1
  %1685 = zext i8 %1684 to i32
  %1686 = icmp sle i32 %1685, 3
  br i1 %1686, label %1687, label %2263

; <label>:1687:                                   ; preds = %1682
  %1688 = load i8, i8* %8, align 1
  %1689 = trunc i8 %1688 to i1
  br i1 %1689, label %1690, label %1892

; <label>:1690:                                   ; preds = %1687
  br label %1691

; <label>:1691:                                   ; preds = %1690
  %1692 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 1
  %1693 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %1692, i32 0, i32 0
  %1694 = getelementptr inbounds [16 x i64], [16 x i64]* %1693, i64 0, i64 0
  %1695 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %1694) #10, !srcloc !4
  %1696 = extractvalue { i64, i64* } %1695, 0
  %1697 = extractvalue { i64, i64* } %1695, 1
  %1698 = trunc i64 %1696 to i32
  store i32 %1698, i32* %20, align 4
  %1699 = ptrtoint i64* %1697 to i64
  %1700 = trunc i64 %1699 to i32
  store i32 %1700, i32* %21, align 4
  br label %1701

; <label>:1701:                                   ; preds = %1691
  %1702 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 0
  %1703 = getelementptr inbounds %struct.timeval, %struct.timeval* %1702, i32 0, i32 0
  store i64 1, i64* %1703, align 8
  %1704 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 0
  %1705 = getelementptr inbounds %struct.timeval, %struct.timeval* %1704, i32 0, i32 1
  store i64 0, i64* %1705, align 8
  %1706 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1707 = load i32, i32* %1706, align 8
  %1708 = srem i32 %1707, 64
  %1709 = zext i32 %1708 to i64
  %1710 = shl i64 1, %1709
  %1711 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 1
  %1712 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %1711, i32 0, i32 0
  %1713 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1714 = load i32, i32* %1713, align 8
  %1715 = sdiv i32 %1714, 64
  %1716 = sext i32 %1715 to i64
  %1717 = getelementptr inbounds [16 x i64], [16 x i64]* %1712, i64 0, i64 %1716
  %1718 = load i64, i64* %1717, align 8
  %1719 = or i64 %1718, %1710
  store i64 %1719, i64* %1717, align 8
  %1720 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1721 = load i32, i32* %1720, align 8
  %1722 = add nsw i32 %1721, 1
  %1723 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 1
  %1724 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 0
  %1725 = call i32 @select(i32 %1722, %struct.fd_set* %1723, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %1724)
  %1726 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 1
  %1727 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %1726, i32 0, i32 0
  %1728 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1729 = load i32, i32* %1728, align 8
  %1730 = sdiv i32 %1729, 64
  %1731 = sext i32 %1730 to i64
  %1732 = getelementptr inbounds [16 x i64], [16 x i64]* %1727, i64 0, i64 %1731
  %1733 = load i64, i64* %1732, align 8
  %1734 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1735 = load i32, i32* %1734, align 8
  %1736 = srem i32 %1735, 64
  %1737 = zext i32 %1736 to i64
  %1738 = shl i64 1, %1737
  %1739 = and i64 %1733, %1738
  %1740 = icmp ne i64 %1739, 0
  br i1 %1740, label %1741, label %1880

; <label>:1741:                                   ; preds = %1701
  %1742 = call i32* @__errno_location() #13
  store i32 0, i32* %1742, align 4
  %1743 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1744 = load i32, i32* %1743, align 8
  %1745 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1746 = bitcast %union.anon.3* %1745 to %struct.message*
  %1747 = bitcast %struct.message* %1746 to i8*
  %1748 = call i64 @recv(i32 %1744, i8* %1747, i64 516, i32 0)
  %1749 = trunc i64 %1748 to i32
  %1750 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  store i32 %1749, i32* %1750, align 4
  %1751 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  %1752 = load i32, i32* %1751, align 4
  %1753 = icmp sle i32 %1752, 0
  br i1 %1753, label %1758, label %1754

; <label>:1754:                                   ; preds = %1741
  %1755 = call i32* @__errno_location() #13
  %1756 = load i32, i32* %1755, align 4
  %1757 = icmp ne i32 %1756, 0
  br i1 %1757, label %1758, label %1765

; <label>:1758:                                   ; preds = %1754, %1741
  %1759 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1760 = bitcast %union.anon.2* %1759 to %struct.tftperror*
  %1761 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1760, i32 0, i32 2
  %1762 = getelementptr inbounds [512 x i8], [512 x i8]* %1761, i32 0, i32 0
  %1763 = call i32 (i8*, i8*, ...) @sprintf(i8* %1762, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1764 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1764, align 1
  br label %2263

; <label>:1765:                                   ; preds = %1754
  %1766 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  %1767 = load i32, i32* %1766, align 4
  %1768 = icmp sge i32 %1767, 4
  br i1 %1768, label %1769, label %1808

; <label>:1769:                                   ; preds = %1765
  %1770 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1771 = bitcast %union.anon.3* %1770 to %struct.message*
  %1772 = getelementptr inbounds %struct.message, %struct.message* %1771, i32 0, i32 0
  %1773 = load i16, i16* %1772, align 8
  %1774 = call zeroext i16 @ntohs(i16 zeroext %1773) #13
  %1775 = zext i16 %1774 to i32
  %1776 = icmp eq i32 %1775, 4
  br i1 %1776, label %1777, label %1808

; <label>:1777:                                   ; preds = %1769
  %1778 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1779 = bitcast %union.anon.3* %1778 to %struct.acknowledgement*
  %1780 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %1779, i32 0, i32 1
  %1781 = load i16, i16* %1780, align 2
  %1782 = call zeroext i16 @ntohs(i16 zeroext %1781) #13
  %1783 = zext i16 %1782 to i32
  %1784 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %1785 = load i16, i16* %1784, align 8
  %1786 = zext i16 %1785 to i32
  %1787 = icmp eq i32 %1783, %1786
  br i1 %1787, label %1788, label %1796

; <label>:1788:                                   ; preds = %1777
  %1789 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %1790 = load i16, i16* %1789, align 8
  %1791 = add i16 %1790, 1
  store i16 %1791, i16* %1789, align 8
  %1792 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 13
  %1793 = load i32, i32* %1792, align 4
  %1794 = add i32 %1793, 1
  store i32 %1794, i32* %1792, align 4
  %1795 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 0, i8* %1795, align 1
  br label %1807

; <label>:1796:                                   ; preds = %1777
  %1797 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  %1798 = load i64, i64* %1797, align 8
  %1799 = call i64 @time(i64* null) #10
  %1800 = icmp sgt i64 %1798, %1799
  br i1 %1800, label %1801, label %1802

; <label>:1801:                                   ; preds = %1796
  br label %1682

; <label>:1802:                                   ; preds = %1796
  %1803 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %1804 = load i8, i8* %1803, align 1
  %1805 = add i8 %1804, 1
  store i8 %1805, i8* %1803, align 1
  br label %1806

; <label>:1806:                                   ; preds = %1802
  br label %1807

; <label>:1807:                                   ; preds = %1806, %1788
  br label %1878

; <label>:1808:                                   ; preds = %1769, %1765
  %1809 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1810 = bitcast %union.anon.3* %1809 to %struct.message*
  %1811 = getelementptr inbounds %struct.message, %struct.message* %1810, i32 0, i32 0
  %1812 = load i16, i16* %1811, align 8
  %1813 = call zeroext i16 @ntohs(i16 zeroext %1812) #13
  %1814 = zext i16 %1813 to i32
  %1815 = icmp eq i32 %1814, 5
  br i1 %1815, label %1816, label %1845

; <label>:1816:                                   ; preds = %1808
  %1817 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1818 = bitcast %union.anon.2* %1817 to %struct.tftperror*
  %1819 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1818, i32 0, i32 2
  %1820 = getelementptr inbounds [512 x i8], [512 x i8]* %1819, i32 0, i32 0
  %1821 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %1822 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1821, i32 0, i32 2
  %1823 = bitcast %struct.in_addr* %22 to i8*
  %1824 = bitcast %struct.in_addr* %1822 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1823, i8* %1824, i64 4, i32 4, i1 false)
  %1825 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %1826 = load i32, i32* %1825, align 4
  %1827 = call i8* @inet_ntoa(i32 %1826) #10
  %1828 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 18
  %1829 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1828, i32 0, i32 1
  %1830 = load i16, i16* %1829, align 2
  %1831 = call zeroext i16 @ntohs(i16 zeroext %1830) #13
  %1832 = zext i16 %1831 to i32
  %1833 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1834 = bitcast %union.anon.3* %1833 to %struct.tftperror*
  %1835 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1834, i32 0, i32 1
  %1836 = load i16, i16* %1835, align 2
  %1837 = call zeroext i16 @ntohs(i16 zeroext %1836) #13
  %1838 = zext i16 %1837 to i32
  %1839 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1840 = bitcast %union.anon.3* %1839 to %struct.tftperror*
  %1841 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1840, i32 0, i32 2
  %1842 = getelementptr inbounds [512 x i8], [512 x i8]* %1841, i32 0, i32 0
  %1843 = call i32 (i8*, i8*, ...) @sprintf(i8* %1820, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i32 0, i32 0), i8* %1827, i32 %1832, i32 %1838, i8* %1842) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1844 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1844, align 1
  br label %2263

; <label>:1845:                                   ; preds = %1808
  %1846 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1847 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1848 = bitcast %union.anon.2* %1847 to %struct.tftperror*
  %1849 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1848, i32 0, i32 0
  store i16 %1846, i16* %1849, align 4
  %1850 = call zeroext i16 @htons(i16 zeroext 0) #13
  %1851 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1852 = bitcast %union.anon.2* %1851 to %struct.tftperror*
  %1853 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1852, i32 0, i32 1
  store i16 %1850, i16* %1853, align 2
  %1854 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1855 = bitcast %union.anon.2* %1854 to %struct.tftperror*
  %1856 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1855, i32 0, i32 2
  %1857 = getelementptr inbounds [512 x i8], [512 x i8]* %1856, i32 0, i32 0
  %1858 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1859 = bitcast %union.anon.3* %1858 to %struct.message*
  %1860 = getelementptr inbounds %struct.message, %struct.message* %1859, i32 0, i32 0
  %1861 = load i16, i16* %1860, align 8
  %1862 = call zeroext i16 @ntohs(i16 zeroext %1861) #13
  %1863 = zext i16 %1862 to i32
  %1864 = call i32 (i8*, i8*, ...) @sprintf(i8* %1857, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0), i32 %1863) #10
  %1865 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1866 = load i32, i32* %1865, align 8
  %1867 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1868 = bitcast %union.anon.2* %1867 to %struct.tftperror*
  %1869 = bitcast %struct.tftperror* %1868 to i8*
  %1870 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1871 = bitcast %union.anon.2* %1870 to %struct.tftperror*
  %1872 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1871, i32 0, i32 2
  %1873 = getelementptr inbounds [512 x i8], [512 x i8]* %1872, i32 0, i32 0
  %1874 = call i64 @strlen(i8* %1873) #11
  %1875 = add i64 %1874, 5
  %1876 = call i64 @send(i32 %1866, i8* %1869, i64 %1875, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1877 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1877, align 1
  br label %2263

; <label>:1878:                                   ; preds = %1807
  br label %1879

; <label>:1879:                                   ; preds = %1878
  br label %1891

; <label>:1880:                                   ; preds = %1701
  %1881 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  %1882 = load i64, i64* %1881, align 8
  %1883 = call i64 @time(i64* null) #10
  %1884 = icmp sgt i64 %1882, %1883
  br i1 %1884, label %1885, label %1886

; <label>:1885:                                   ; preds = %1880
  br label %1682

; <label>:1886:                                   ; preds = %1880
  %1887 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %1888 = load i8, i8* %1887, align 1
  %1889 = add i8 %1888, 1
  store i8 %1889, i8* %1887, align 1
  br label %1890

; <label>:1890:                                   ; preds = %1886
  br label %1891

; <label>:1891:                                   ; preds = %1890, %1879
  br label %1898

; <label>:1892:                                   ; preds = %1687
  store i8 1, i8* %8, align 1
  %1893 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %1894 = bitcast %union.anon.3* %1893 to %struct.acknowledgement*
  %1895 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %1894, i32 0, i32 1
  store i16 1, i16* %1895, align 2
  %1896 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  store i16 1, i16* %1896, align 8
  %1897 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 13
  store i32 1, i32* %1897, align 4
  br label %1898

; <label>:1898:                                   ; preds = %1892, %1891
  %1899 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %1900 = load i8, i8* %1899, align 1
  %1901 = zext i8 %1900 to i32
  %1902 = icmp sge i32 %1901, 3
  br i1 %1902, label %1903, label %1945

; <label>:1903:                                   ; preds = %1898
  %1904 = call zeroext i16 @htons(i16 zeroext 5) #13
  %1905 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1906 = bitcast %union.anon.2* %1905 to %struct.tftperror*
  %1907 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1906, i32 0, i32 0
  store i16 %1904, i16* %1907, align 4
  %1908 = call zeroext i16 @htons(i16 zeroext 0) #13
  %1909 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1910 = bitcast %union.anon.2* %1909 to %struct.tftperror*
  %1911 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1910, i32 0, i32 1
  store i16 %1908, i16* %1911, align 2
  %1912 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 13
  %1913 = load i32, i32* %1912, align 4
  %1914 = icmp ne i32 %1913, 0
  br i1 %1914, label %1915, label %1925

; <label>:1915:                                   ; preds = %1903
  %1916 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %1917 = load i16, i16* %1916, align 8
  %1918 = icmp ne i16 %1917, 0
  br i1 %1918, label %1925, label %1919

; <label>:1919:                                   ; preds = %1915
  %1920 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1921 = bitcast %union.anon.2* %1920 to %struct.tftperror*
  %1922 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1921, i32 0, i32 2
  %1923 = getelementptr inbounds [512 x i8], [512 x i8]* %1922, i32 0, i32 0
  %1924 = call i8* @strcpy(i8* %1923, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.46, i32 0, i32 0)) #10
  br label %1931

; <label>:1925:                                   ; preds = %1915, %1903
  %1926 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1927 = bitcast %union.anon.2* %1926 to %struct.tftperror*
  %1928 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1927, i32 0, i32 2
  %1929 = getelementptr inbounds [512 x i8], [512 x i8]* %1928, i32 0, i32 0
  %1930 = call i8* @strcpy(i8* %1929, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #10
  br label %1931

; <label>:1931:                                   ; preds = %1925, %1919
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1932 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1933 = load i32, i32* %1932, align 8
  %1934 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1935 = bitcast %union.anon.2* %1934 to %struct.tftperror*
  %1936 = bitcast %struct.tftperror* %1935 to i8*
  %1937 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1938 = bitcast %union.anon.2* %1937 to %struct.tftperror*
  %1939 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1938, i32 0, i32 2
  %1940 = getelementptr inbounds [512 x i8], [512 x i8]* %1939, i32 0, i32 0
  %1941 = call i64 @strlen(i8* %1940) #11
  %1942 = add i64 %1941, 5
  %1943 = call i64 @send(i32 %1933, i8* %1936, i64 %1942, i32 0)
  %1944 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1944, align 1
  br label %2263

; <label>:1945:                                   ; preds = %1898
  %1946 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 13
  %1947 = load i32, i32* %1946, align 4
  %1948 = icmp ne i32 %1947, 0
  br i1 %1948, label %1977, label %1949

; <label>:1949:                                   ; preds = %1945
  %1950 = call i32* @__errno_location() #13
  store i32 0, i32* %1950, align 4
  %1951 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1952 = load i32, i32* %1951, align 8
  %1953 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1954 = bitcast %union.anon.2* %1953 to %struct.message*
  %1955 = bitcast %struct.message* %1954 to i8*
  %1956 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 14
  %1957 = load i32, i32* %1956, align 8
  %1958 = sext i32 %1957 to i64
  %1959 = call i64 @send(i32 %1952, i8* %1955, i64 %1958, i32 0)
  %1960 = call i32* @__errno_location() #13
  %1961 = load i32, i32* %1960, align 4
  %1962 = icmp ne i32 %1961, 0
  br i1 %1962, label %1963, label %1970

; <label>:1963:                                   ; preds = %1949
  %1964 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %1965 = bitcast %union.anon.2* %1964 to %struct.tftperror*
  %1966 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %1965, i32 0, i32 2
  %1967 = getelementptr inbounds [512 x i8], [512 x i8]* %1966, i32 0, i32 0
  %1968 = call i32 (i8*, i8*, ...) @sprintf(i8* %1967, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %1969 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %1969, align 1
  br label %2263

; <label>:1970:                                   ; preds = %1949
  %1971 = call i64 @time(i64* null) #10
  %1972 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 23
  %1973 = load i16, i16* %1972, align 2
  %1974 = zext i16 %1973 to i64
  %1975 = add nsw i64 %1971, %1974
  %1976 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  store i64 %1975, i64* %1976, align 8
  br label %2261

; <label>:1977:                                   ; preds = %1945
  %1978 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1979 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1978, i64 0, i64 0
  %1980 = load %struct.packet*, %struct.packet** %1979, align 8
  %1981 = getelementptr inbounds %struct.packet, %struct.packet* %1980, i32 0, i32 1
  %1982 = load i16, i16* %1981, align 2
  %1983 = call zeroext i16 @ntohs(i16 zeroext %1982) #13
  %1984 = zext i16 %1983 to i32
  %1985 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %1986 = load i16, i16* %1985, align 8
  %1987 = zext i16 %1986 to i32
  %1988 = icmp eq i32 %1984, %1987
  br i1 %1988, label %1989, label %2113

; <label>:1989:                                   ; preds = %1977
  %1990 = call i32* @__errno_location() #13
  store i32 0, i32* %1990, align 4
  %1991 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %1992 = load i32, i32* %1991, align 8
  %1993 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %1994 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %1993, i64 0, i64 0
  %1995 = load %struct.packet*, %struct.packet** %1994, align 8
  %1996 = bitcast %struct.packet* %1995 to i8*
  %1997 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 16
  %1998 = getelementptr inbounds [2 x i32], [2 x i32]* %1997, i64 0, i64 0
  %1999 = load i32, i32* %1998, align 8
  %2000 = add nsw i32 %1999, 4
  %2001 = sext i32 %2000 to i64
  %2002 = call i64 @send(i32 %1992, i8* %1996, i64 %2001, i32 0)
  %2003 = call i32* @__errno_location() #13
  %2004 = load i32, i32* %2003, align 4
  %2005 = icmp ne i32 %2004, 0
  br i1 %2005, label %2006, label %2013

; <label>:2006:                                   ; preds = %1989
  %2007 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2008 = bitcast %union.anon.2* %2007 to %struct.tftperror*
  %2009 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2008, i32 0, i32 2
  %2010 = getelementptr inbounds [512 x i8], [512 x i8]* %2009, i32 0, i32 0
  %2011 = call i32 (i8*, i8*, ...) @sprintf(i8* %2010, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2012 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2012, align 1
  br label %2263

; <label>:2013:                                   ; preds = %1989
  %2014 = call i64 @time(i64* null) #10
  %2015 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 23
  %2016 = load i16, i16* %2015, align 2
  %2017 = zext i16 %2016 to i64
  %2018 = add nsw i64 %2014, %2017
  %2019 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  store i64 %2018, i64* %2019, align 8
  %2020 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %2021 = load %struct._IO_FILE*, %struct._IO_FILE** %2020, align 8
  %2022 = icmp ne %struct._IO_FILE* %2021, null
  br i1 %2022, label %2023, label %2112

; <label>:2023:                                   ; preds = %2013
  %2024 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2025 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2024, i64 0, i64 1
  %2026 = load %struct.packet*, %struct.packet** %2025, align 8
  %2027 = getelementptr inbounds %struct.packet, %struct.packet* %2026, i32 0, i32 1
  %2028 = load i16, i16* %2027, align 2
  %2029 = call zeroext i16 @ntohs(i16 zeroext %2028) #13
  %2030 = zext i16 %2029 to i32
  %2031 = add nsw i32 %2030, 1
  %2032 = trunc i32 %2031 to i16
  %2033 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 25
  store i16 %2032, i16* %2033, align 2
  %2034 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 25
  %2035 = load i16, i16* %2034, align 2
  %2036 = zext i16 %2035 to i32
  %2037 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %2038 = load i16, i16* %2037, align 8
  %2039 = zext i16 %2038 to i32
  %2040 = icmp eq i32 %2036, %2039
  br i1 %2040, label %2041, label %2111

; <label>:2041:                                   ; preds = %2023
  %2042 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 25
  %2043 = load i16, i16* %2042, align 2
  %2044 = add i16 %2043, 1
  store i16 %2044, i16* %2042, align 2
  %2045 = call zeroext i16 @htons(i16 zeroext %2044) #13
  %2046 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2047 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2046, i64 0, i64 1
  %2048 = load %struct.packet*, %struct.packet** %2047, align 8
  %2049 = getelementptr inbounds %struct.packet, %struct.packet* %2048, i32 0, i32 1
  store i16 %2045, i16* %2049, align 2
  %2050 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2051 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2050, i64 0, i64 1
  %2052 = load %struct.packet*, %struct.packet** %2051, align 8
  %2053 = getelementptr inbounds %struct.packet, %struct.packet* %2052, i32 0, i32 2
  %2054 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %2055 = load i16, i16* %2054, align 4
  %2056 = zext i16 %2055 to i64
  %2057 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %2058 = load %struct._IO_FILE*, %struct._IO_FILE** %2057, align 8
  %2059 = call i64 @fread(i8* %2053, i64 1, i64 %2056, %struct._IO_FILE* %2058)
  %2060 = trunc i64 %2059 to i32
  %2061 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 16
  %2062 = getelementptr inbounds [2 x i32], [2 x i32]* %2061, i64 0, i64 1
  store i32 %2060, i32* %2062, align 4
  %2063 = call i32* @__errno_location() #13
  %2064 = load i32, i32* %2063, align 4
  %2065 = icmp ne i32 %2064, 0
  br i1 %2065, label %2066, label %2096

; <label>:2066:                                   ; preds = %2041
  %2067 = call zeroext i16 @htons(i16 zeroext 5) #13
  %2068 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2069 = bitcast %union.anon.2* %2068 to %struct.tftperror*
  %2070 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2069, i32 0, i32 0
  store i16 %2067, i16* %2070, align 4
  %2071 = call zeroext i16 @htons(i16 zeroext 4) #13
  %2072 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2073 = bitcast %union.anon.2* %2072 to %struct.tftperror*
  %2074 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2073, i32 0, i32 1
  store i16 %2071, i16* %2074, align 2
  %2075 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2076 = bitcast %union.anon.2* %2075 to %struct.tftperror*
  %2077 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2076, i32 0, i32 2
  %2078 = getelementptr inbounds [512 x i8], [512 x i8]* %2077, i32 0, i32 0
  %2079 = call i32* @__errno_location() #13
  %2080 = load i32, i32* %2079, align 4
  %2081 = call i8* @strerror(i32 %2080) #10
  %2082 = call i32 (i8*, i8*, ...) @sprintf(i8* %2078, i8* %2081) #10
  %2083 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2084 = load i32, i32* %2083, align 8
  %2085 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2086 = bitcast %union.anon.2* %2085 to %struct.tftperror*
  %2087 = bitcast %struct.tftperror* %2086 to i8*
  %2088 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2089 = bitcast %union.anon.2* %2088 to %struct.tftperror*
  %2090 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2089, i32 0, i32 2
  %2091 = getelementptr inbounds [512 x i8], [512 x i8]* %2090, i32 0, i32 0
  %2092 = call i64 @strlen(i8* %2091) #11
  %2093 = add i64 %2092, 5
  %2094 = call i64 @send(i32 %2084, i8* %2087, i64 %2093, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2095 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2095, align 1
  br label %2263

; <label>:2096:                                   ; preds = %2041
  %2097 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 16
  %2098 = getelementptr inbounds [2 x i32], [2 x i32]* %2097, i64 0, i64 1
  %2099 = load i32, i32* %2098, align 4
  %2100 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %2101 = load i16, i16* %2100, align 4
  %2102 = zext i16 %2101 to i32
  %2103 = icmp slt i32 %2099, %2102
  br i1 %2103, label %2104, label %2109

; <label>:2104:                                   ; preds = %2096
  %2105 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %2106 = load %struct._IO_FILE*, %struct._IO_FILE** %2105, align 8
  %2107 = call i32 @fclose(%struct._IO_FILE* %2106)
  %2108 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %2108, align 8
  br label %2109

; <label>:2109:                                   ; preds = %2104, %2096
  br label %2110

; <label>:2110:                                   ; preds = %2109
  br label %2111

; <label>:2111:                                   ; preds = %2110, %2023
  br label %2112

; <label>:2112:                                   ; preds = %2111, %2013
  br label %2260

; <label>:2113:                                   ; preds = %1977
  %2114 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2115 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2114, i64 0, i64 1
  %2116 = load %struct.packet*, %struct.packet** %2115, align 8
  %2117 = getelementptr inbounds %struct.packet, %struct.packet* %2116, i32 0, i32 1
  %2118 = load i16, i16* %2117, align 2
  %2119 = call zeroext i16 @ntohs(i16 zeroext %2118) #13
  %2120 = zext i16 %2119 to i32
  %2121 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %2122 = load i16, i16* %2121, align 8
  %2123 = zext i16 %2122 to i32
  %2124 = icmp eq i32 %2120, %2123
  br i1 %2124, label %2125, label %2249

; <label>:2125:                                   ; preds = %2113
  %2126 = call i32* @__errno_location() #13
  store i32 0, i32* %2126, align 4
  %2127 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2128 = load i32, i32* %2127, align 8
  %2129 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2130 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2129, i64 0, i64 1
  %2131 = load %struct.packet*, %struct.packet** %2130, align 8
  %2132 = bitcast %struct.packet* %2131 to i8*
  %2133 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 16
  %2134 = getelementptr inbounds [2 x i32], [2 x i32]* %2133, i64 0, i64 1
  %2135 = load i32, i32* %2134, align 4
  %2136 = add nsw i32 %2135, 4
  %2137 = sext i32 %2136 to i64
  %2138 = call i64 @send(i32 %2128, i8* %2132, i64 %2137, i32 0)
  %2139 = call i32* @__errno_location() #13
  %2140 = load i32, i32* %2139, align 4
  %2141 = icmp ne i32 %2140, 0
  br i1 %2141, label %2142, label %2149

; <label>:2142:                                   ; preds = %2125
  %2143 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2144 = bitcast %union.anon.2* %2143 to %struct.tftperror*
  %2145 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2144, i32 0, i32 2
  %2146 = getelementptr inbounds [512 x i8], [512 x i8]* %2145, i32 0, i32 0
  %2147 = call i32 (i8*, i8*, ...) @sprintf(i8* %2146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2148 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2148, align 1
  br label %2263

; <label>:2149:                                   ; preds = %2125
  %2150 = call i64 @time(i64* null) #10
  %2151 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 23
  %2152 = load i16, i16* %2151, align 2
  %2153 = zext i16 %2152 to i64
  %2154 = add nsw i64 %2150, %2153
  %2155 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  store i64 %2154, i64* %2155, align 8
  %2156 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %2157 = load %struct._IO_FILE*, %struct._IO_FILE** %2156, align 8
  %2158 = icmp ne %struct._IO_FILE* %2157, null
  br i1 %2158, label %2159, label %2248

; <label>:2159:                                   ; preds = %2149
  %2160 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2161 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2160, i64 0, i64 0
  %2162 = load %struct.packet*, %struct.packet** %2161, align 8
  %2163 = getelementptr inbounds %struct.packet, %struct.packet* %2162, i32 0, i32 1
  %2164 = load i16, i16* %2163, align 2
  %2165 = call zeroext i16 @ntohs(i16 zeroext %2164) #13
  %2166 = zext i16 %2165 to i32
  %2167 = add nsw i32 %2166, 1
  %2168 = trunc i32 %2167 to i16
  %2169 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 25
  store i16 %2168, i16* %2169, align 2
  %2170 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 25
  %2171 = load i16, i16* %2170, align 2
  %2172 = zext i16 %2171 to i32
  %2173 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %2174 = load i16, i16* %2173, align 8
  %2175 = zext i16 %2174 to i32
  %2176 = icmp eq i32 %2172, %2175
  br i1 %2176, label %2177, label %2247

; <label>:2177:                                   ; preds = %2159
  %2178 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 25
  %2179 = load i16, i16* %2178, align 2
  %2180 = add i16 %2179, 1
  store i16 %2180, i16* %2178, align 2
  %2181 = call zeroext i16 @htons(i16 zeroext %2180) #13
  %2182 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2183 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2182, i64 0, i64 0
  %2184 = load %struct.packet*, %struct.packet** %2183, align 8
  %2185 = getelementptr inbounds %struct.packet, %struct.packet* %2184, i32 0, i32 1
  store i16 %2181, i16* %2185, align 2
  %2186 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2187 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2186, i64 0, i64 0
  %2188 = load %struct.packet*, %struct.packet** %2187, align 8
  %2189 = getelementptr inbounds %struct.packet, %struct.packet* %2188, i32 0, i32 2
  %2190 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %2191 = load i16, i16* %2190, align 4
  %2192 = zext i16 %2191 to i64
  %2193 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %2194 = load %struct._IO_FILE*, %struct._IO_FILE** %2193, align 8
  %2195 = call i64 @fread(i8* %2189, i64 1, i64 %2192, %struct._IO_FILE* %2194)
  %2196 = trunc i64 %2195 to i32
  %2197 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 16
  %2198 = getelementptr inbounds [2 x i32], [2 x i32]* %2197, i64 0, i64 0
  store i32 %2196, i32* %2198, align 8
  %2199 = call i32* @__errno_location() #13
  %2200 = load i32, i32* %2199, align 4
  %2201 = icmp ne i32 %2200, 0
  br i1 %2201, label %2202, label %2232

; <label>:2202:                                   ; preds = %2177
  %2203 = call zeroext i16 @htons(i16 zeroext 5) #13
  %2204 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2205 = bitcast %union.anon.2* %2204 to %struct.tftperror*
  %2206 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2205, i32 0, i32 0
  store i16 %2203, i16* %2206, align 4
  %2207 = call zeroext i16 @htons(i16 zeroext 4) #13
  %2208 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2209 = bitcast %union.anon.2* %2208 to %struct.tftperror*
  %2210 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2209, i32 0, i32 1
  store i16 %2207, i16* %2210, align 2
  %2211 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2212 = bitcast %union.anon.2* %2211 to %struct.tftperror*
  %2213 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2212, i32 0, i32 2
  %2214 = getelementptr inbounds [512 x i8], [512 x i8]* %2213, i32 0, i32 0
  %2215 = call i32* @__errno_location() #13
  %2216 = load i32, i32* %2215, align 4
  %2217 = call i8* @strerror(i32 %2216) #10
  %2218 = call i32 (i8*, i8*, ...) @sprintf(i8* %2214, i8* %2217) #10
  %2219 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2220 = load i32, i32* %2219, align 8
  %2221 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2222 = bitcast %union.anon.2* %2221 to %struct.tftperror*
  %2223 = bitcast %struct.tftperror* %2222 to i8*
  %2224 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2225 = bitcast %union.anon.2* %2224 to %struct.tftperror*
  %2226 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2225, i32 0, i32 2
  %2227 = getelementptr inbounds [512 x i8], [512 x i8]* %2226, i32 0, i32 0
  %2228 = call i64 @strlen(i8* %2227) #11
  %2229 = add i64 %2228, 5
  %2230 = call i64 @send(i32 %2220, i8* %2223, i64 %2229, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2231 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2231, align 1
  br label %2263

; <label>:2232:                                   ; preds = %2177
  %2233 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 16
  %2234 = getelementptr inbounds [2 x i32], [2 x i32]* %2233, i64 0, i64 0
  %2235 = load i32, i32* %2234, align 8
  %2236 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %2237 = load i16, i16* %2236, align 4
  %2238 = zext i16 %2237 to i32
  %2239 = icmp slt i32 %2235, %2238
  br i1 %2239, label %2240, label %2245

; <label>:2240:                                   ; preds = %2232
  %2241 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %2242 = load %struct._IO_FILE*, %struct._IO_FILE** %2241, align 8
  %2243 = call i32 @fclose(%struct._IO_FILE* %2242)
  %2244 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %2244, align 8
  br label %2245

; <label>:2245:                                   ; preds = %2240, %2232
  br label %2246

; <label>:2246:                                   ; preds = %2245
  br label %2247

; <label>:2247:                                   ; preds = %2246, %2159
  br label %2248

; <label>:2248:                                   ; preds = %2247, %2149
  br label %2259

; <label>:2249:                                   ; preds = %2113
  %2250 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2251 = bitcast %union.anon.2* %2250 to %struct.tftperror*
  %2252 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2251, i32 0, i32 2
  %2253 = getelementptr inbounds [512 x i8], [512 x i8]* %2252, i32 0, i32 0
  %2254 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 13
  %2255 = load i32, i32* %2254, align 4
  %2256 = sub i32 %2255, 1
  %2257 = call i32 (i8*, i8*, ...) @sprintf(i8* %2253, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i32 %2256) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 2)
  %2258 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2258, align 1
  br label %2263

; <label>:2259:                                   ; preds = %2248
  br label %2260

; <label>:2260:                                   ; preds = %2259, %2112
  br label %2261

; <label>:2261:                                   ; preds = %2260, %1970
  br label %2262

; <label>:2262:                                   ; preds = %2261
  br label %1682

; <label>:2263:                                   ; preds = %2249, %2202, %2142, %2066, %2006, %1963, %1931, %1845, %1816, %1758, %1682
  br label %2808

; <label>:2264:                                   ; preds = %1427
  %2265 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 21
  %2266 = bitcast %union.anon.3* %2265 to %struct.message*
  %2267 = getelementptr inbounds %struct.message, %struct.message* %2266, i32 0, i32 0
  %2268 = load i16, i16* %2267, align 8
  %2269 = call zeroext i16 @ntohs(i16 zeroext %2268) #13
  %2270 = zext i16 %2269 to i32
  %2271 = icmp eq i32 %2270, 2
  br i1 %2271, label %2272, label %2807

; <label>:2272:                                   ; preds = %2264
  %2273 = call i32* @__errno_location() #13
  store i32 0, i32* %2273, align 4
  %2274 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %2275 = load i16, i16* %2274, align 4
  %2276 = zext i16 %2275 to i32
  %2277 = add nsw i32 %2276, 4
  %2278 = sext i32 %2277 to i64
  %2279 = call noalias i8* @calloc(i64 1, i64 %2278) #10
  %2280 = bitcast i8* %2279 to %struct.packet*
  %2281 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2282 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2281, i64 0, i64 0
  store %struct.packet* %2280, %struct.packet** %2282, align 8
  %2283 = call i32* @__errno_location() #13
  %2284 = load i32, i32* %2283, align 4
  %2285 = icmp ne i32 %2284, 0
  br i1 %2285, label %2291, label %2286

; <label>:2286:                                   ; preds = %2272
  %2287 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2288 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2287, i64 0, i64 0
  %2289 = load %struct.packet*, %struct.packet** %2288, align 8
  %2290 = icmp ne %struct.packet* %2289, null
  br i1 %2290, label %2298, label %2291

; <label>:2291:                                   ; preds = %2286, %2272
  %2292 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2293 = bitcast %union.anon.2* %2292 to %struct.tftperror*
  %2294 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2293, i32 0, i32 2
  %2295 = getelementptr inbounds [512 x i8], [512 x i8]* %2294, i32 0, i32 0
  %2296 = call i32 (i8*, i8*, ...) @sprintf(i8* %2295, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2297 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2297, align 1
  br label %2810

; <label>:2298:                                   ; preds = %2286
  br label %2299

; <label>:2299:                                   ; preds = %2805, %2724, %2544, %2298
  %2300 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %2301 = load i8, i8* %2300, align 1
  %2302 = zext i8 %2301 to i32
  %2303 = icmp sle i32 %2302, 3
  br i1 %2303, label %2304, label %2806

; <label>:2304:                                   ; preds = %2299
  br label %2305

; <label>:2305:                                   ; preds = %2304
  %2306 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 1
  %2307 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %2306, i32 0, i32 0
  %2308 = getelementptr inbounds [16 x i64], [16 x i64]* %2307, i64 0, i64 0
  %2309 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %2308) #10, !srcloc !5
  %2310 = extractvalue { i64, i64* } %2309, 0
  %2311 = extractvalue { i64, i64* } %2309, 1
  %2312 = trunc i64 %2310 to i32
  store i32 %2312, i32* %23, align 4
  %2313 = ptrtoint i64* %2311 to i64
  %2314 = trunc i64 %2313 to i32
  store i32 %2314, i32* %24, align 4
  br label %2315

; <label>:2315:                                   ; preds = %2305
  %2316 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 0
  %2317 = getelementptr inbounds %struct.timeval, %struct.timeval* %2316, i32 0, i32 0
  store i64 1, i64* %2317, align 8
  %2318 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 0
  %2319 = getelementptr inbounds %struct.timeval, %struct.timeval* %2318, i32 0, i32 1
  store i64 0, i64* %2319, align 8
  %2320 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2321 = load i32, i32* %2320, align 8
  %2322 = srem i32 %2321, 64
  %2323 = zext i32 %2322 to i64
  %2324 = shl i64 1, %2323
  %2325 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 1
  %2326 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %2325, i32 0, i32 0
  %2327 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2328 = load i32, i32* %2327, align 8
  %2329 = sdiv i32 %2328, 64
  %2330 = sext i32 %2329 to i64
  %2331 = getelementptr inbounds [16 x i64], [16 x i64]* %2326, i64 0, i64 %2330
  %2332 = load i64, i64* %2331, align 8
  %2333 = or i64 %2332, %2324
  store i64 %2333, i64* %2331, align 8
  %2334 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2335 = load i32, i32* %2334, align 8
  %2336 = add nsw i32 %2335, 1
  %2337 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 1
  %2338 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 0
  %2339 = call i32 @select(i32 %2336, %struct.fd_set* %2337, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %2338)
  %2340 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 1
  %2341 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %2340, i32 0, i32 0
  %2342 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2343 = load i32, i32* %2342, align 8
  %2344 = sdiv i32 %2343, 64
  %2345 = sext i32 %2344 to i64
  %2346 = getelementptr inbounds [16 x i64], [16 x i64]* %2341, i64 0, i64 %2345
  %2347 = load i64, i64* %2346, align 8
  %2348 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2349 = load i32, i32* %2348, align 8
  %2350 = srem i32 %2349, 64
  %2351 = zext i32 %2350 to i64
  %2352 = shl i64 1, %2351
  %2353 = and i64 %2347, %2352
  %2354 = icmp ne i64 %2353, 0
  br i1 %2354, label %2355, label %2382

; <label>:2355:                                   ; preds = %2315
  %2356 = call i32* @__errno_location() #13
  store i32 0, i32* %2356, align 4
  %2357 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2358 = load i32, i32* %2357, align 8
  %2359 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2360 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2359, i64 0, i64 0
  %2361 = load %struct.packet*, %struct.packet** %2360, align 8
  %2362 = bitcast %struct.packet* %2361 to i8*
  %2363 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %2364 = load i16, i16* %2363, align 4
  %2365 = zext i16 %2364 to i32
  %2366 = add nsw i32 %2365, 4
  %2367 = sext i32 %2366 to i64
  %2368 = call i64 @recv(i32 %2358, i8* %2362, i64 %2367, i32 0)
  %2369 = trunc i64 %2368 to i32
  %2370 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  store i32 %2369, i32* %2370, align 4
  %2371 = call i32* @__errno_location() #13
  %2372 = load i32, i32* %2371, align 4
  %2373 = icmp ne i32 %2372, 0
  br i1 %2373, label %2374, label %2381

; <label>:2374:                                   ; preds = %2355
  %2375 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2376 = bitcast %union.anon.2* %2375 to %struct.tftperror*
  %2377 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2376, i32 0, i32 2
  %2378 = getelementptr inbounds [512 x i8], [512 x i8]* %2377, i32 0, i32 0
  %2379 = call i32 (i8*, i8*, ...) @sprintf(i8* %2378, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2380 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2380, align 1
  br label %2806

; <label>:2381:                                   ; preds = %2355
  br label %2384

; <label>:2382:                                   ; preds = %2315
  %2383 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  store i32 0, i32* %2383, align 4
  br label %2384

; <label>:2384:                                   ; preds = %2382, %2381
  %2385 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  %2386 = load i32, i32* %2385, align 4
  %2387 = icmp sge i32 %2386, 4
  br i1 %2387, label %2388, label %2719

; <label>:2388:                                   ; preds = %2384
  %2389 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2390 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2389, i64 0, i64 0
  %2391 = load %struct.packet*, %struct.packet** %2390, align 8
  %2392 = getelementptr inbounds %struct.packet, %struct.packet* %2391, i32 0, i32 0
  %2393 = load i16, i16* %2392, align 2
  %2394 = call zeroext i16 @ntohs(i16 zeroext %2393) #13
  %2395 = zext i16 %2394 to i32
  %2396 = icmp eq i32 %2395, 3
  br i1 %2396, label %2397, label %2626

; <label>:2397:                                   ; preds = %2388
  %2398 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %2399 = load i16, i16* %2398, align 8
  %2400 = zext i16 %2399 to i32
  %2401 = add nsw i32 %2400, 1
  %2402 = trunc i32 %2401 to i16
  %2403 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 25
  store i16 %2402, i16* %2403, align 2
  %2404 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2405 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2404, i64 0, i64 0
  %2406 = load %struct.packet*, %struct.packet** %2405, align 8
  %2407 = getelementptr inbounds %struct.packet, %struct.packet* %2406, i32 0, i32 1
  %2408 = load i16, i16* %2407, align 2
  %2409 = call zeroext i16 @ntohs(i16 zeroext %2408) #13
  %2410 = zext i16 %2409 to i32
  %2411 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 25
  %2412 = load i16, i16* %2411, align 2
  %2413 = zext i16 %2412 to i32
  %2414 = icmp eq i32 %2410, %2413
  br i1 %2414, label %2415, label %2539

; <label>:2415:                                   ; preds = %2397
  %2416 = call zeroext i16 @htons(i16 zeroext 4) #13
  %2417 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2418 = bitcast %union.anon.2* %2417 to %struct.acknowledgement*
  %2419 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %2418, i32 0, i32 0
  store i16 %2416, i16* %2419, align 4
  %2420 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2421 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2420, i64 0, i64 0
  %2422 = load %struct.packet*, %struct.packet** %2421, align 8
  %2423 = getelementptr inbounds %struct.packet, %struct.packet* %2422, i32 0, i32 1
  %2424 = load i16, i16* %2423, align 2
  %2425 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2426 = bitcast %union.anon.2* %2425 to %struct.acknowledgement*
  %2427 = getelementptr inbounds %struct.acknowledgement, %struct.acknowledgement* %2426, i32 0, i32 1
  store i16 %2424, i16* %2427, align 2
  %2428 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %2429 = load i16, i16* %2428, align 8
  %2430 = add i16 %2429, 1
  store i16 %2430, i16* %2428, align 8
  %2431 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 13
  %2432 = load i32, i32* %2431, align 4
  %2433 = add i32 %2432, 1
  store i32 %2433, i32* %2431, align 4
  %2434 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 14
  store i32 4, i32* %2434, align 8
  %2435 = call i64 @time(i64* null) #10
  %2436 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 23
  %2437 = load i16, i16* %2436, align 2
  %2438 = zext i16 %2437 to i64
  %2439 = add nsw i64 %2435, %2438
  %2440 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  store i64 %2439, i64* %2440, align 8
  %2441 = call i32* @__errno_location() #13
  store i32 0, i32* %2441, align 4
  %2442 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2443 = load i32, i32* %2442, align 8
  %2444 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2445 = bitcast %union.anon.2* %2444 to %struct.message*
  %2446 = bitcast %struct.message* %2445 to i8*
  %2447 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 14
  %2448 = load i32, i32* %2447, align 8
  %2449 = sext i32 %2448 to i64
  %2450 = call i64 @send(i32 %2443, i8* %2446, i64 %2449, i32 0)
  %2451 = call i32* @__errno_location() #13
  %2452 = load i32, i32* %2451, align 4
  %2453 = icmp ne i32 %2452, 0
  br i1 %2453, label %2454, label %2461

; <label>:2454:                                   ; preds = %2415
  %2455 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2456 = bitcast %union.anon.2* %2455 to %struct.tftperror*
  %2457 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2456, i32 0, i32 2
  %2458 = getelementptr inbounds [512 x i8], [512 x i8]* %2457, i32 0, i32 0
  %2459 = call i32 (i8*, i8*, ...) @sprintf(i8* %2458, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2460 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2460, align 1
  br label %2806

; <label>:2461:                                   ; preds = %2415
  %2462 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  %2463 = load i32, i32* %2462, align 4
  %2464 = icmp sgt i32 %2463, 4
  br i1 %2464, label %2465, label %2513

; <label>:2465:                                   ; preds = %2461
  %2466 = call i32* @__errno_location() #13
  store i32 0, i32* %2466, align 4
  %2467 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2468 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2467, i64 0, i64 0
  %2469 = load %struct.packet*, %struct.packet** %2468, align 8
  %2470 = getelementptr inbounds %struct.packet, %struct.packet* %2469, i32 0, i32 2
  %2471 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  %2472 = load i32, i32* %2471, align 4
  %2473 = sub nsw i32 %2472, 4
  %2474 = sext i32 %2473 to i64
  %2475 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %2476 = load %struct._IO_FILE*, %struct._IO_FILE** %2475, align 8
  %2477 = call i64 @fwrite(i8* %2470, i64 %2474, i64 1, %struct._IO_FILE* %2476)
  %2478 = icmp ne i64 %2477, 1
  br i1 %2478, label %2483, label %2479

; <label>:2479:                                   ; preds = %2465
  %2480 = call i32* @__errno_location() #13
  %2481 = load i32, i32* %2480, align 4
  %2482 = icmp ne i32 %2481, 0
  br i1 %2482, label %2483, label %2510

; <label>:2483:                                   ; preds = %2479, %2465
  %2484 = call zeroext i16 @htons(i16 zeroext 5) #13
  %2485 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2486 = bitcast %union.anon.2* %2485 to %struct.tftperror*
  %2487 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2486, i32 0, i32 0
  store i16 %2484, i16* %2487, align 4
  %2488 = call zeroext i16 @htons(i16 zeroext 3) #13
  %2489 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2490 = bitcast %union.anon.2* %2489 to %struct.tftperror*
  %2491 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2490, i32 0, i32 1
  store i16 %2488, i16* %2491, align 2
  %2492 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2493 = bitcast %union.anon.2* %2492 to %struct.tftperror*
  %2494 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2493, i32 0, i32 2
  %2495 = getelementptr inbounds [512 x i8], [512 x i8]* %2494, i32 0, i32 0
  %2496 = call i8* @strcpy(i8* %2495, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0)) #10
  %2497 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2498 = load i32, i32* %2497, align 8
  %2499 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2500 = bitcast %union.anon.2* %2499 to %struct.tftperror*
  %2501 = bitcast %struct.tftperror* %2500 to i8*
  %2502 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2503 = bitcast %union.anon.2* %2502 to %struct.tftperror*
  %2504 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2503, i32 0, i32 2
  %2505 = getelementptr inbounds [512 x i8], [512 x i8]* %2504, i32 0, i32 0
  %2506 = call i64 @strlen(i8* %2505) #11
  %2507 = add i64 %2506, 5
  %2508 = call i64 @send(i32 %2498, i8* %2501, i64 %2507, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2509 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2509, align 1
  br label %2806

; <label>:2510:                                   ; preds = %2479
  %2511 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 0, i8* %2511, align 1
  br label %2512

; <label>:2512:                                   ; preds = %2510
  br label %2515

; <label>:2513:                                   ; preds = %2461
  %2514 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 0, i8* %2514, align 1
  br label %2515

; <label>:2515:                                   ; preds = %2513, %2512
  %2516 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  %2517 = load i32, i32* %2516, align 4
  %2518 = trunc i32 %2517 to i16
  %2519 = zext i16 %2518 to i32
  %2520 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 22
  %2521 = load i16, i16* %2520, align 4
  %2522 = zext i16 %2521 to i32
  %2523 = add nsw i32 %2522, 4
  %2524 = icmp slt i32 %2519, %2523
  br i1 %2524, label %2525, label %2538

; <label>:2525:                                   ; preds = %2515
  %2526 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  %2527 = load %struct._IO_FILE*, %struct._IO_FILE** %2526, align 8
  %2528 = call i32 @fclose(%struct._IO_FILE* %2527)
  %2529 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %2529, align 8
  %2530 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2531 = bitcast %union.anon.2* %2530 to %struct.tftperror*
  %2532 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2531, i32 0, i32 2
  %2533 = getelementptr inbounds [512 x i8], [512 x i8]* %2532, i32 0, i32 0
  %2534 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 13
  %2535 = load i32, i32* %2534, align 4
  %2536 = call i32 (i8*, i8*, ...) @sprintf(i8* %2533, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i32 %2535) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 2)
  %2537 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2537, align 1
  br label %2806

; <label>:2538:                                   ; preds = %2515
  br label %2625

; <label>:2539:                                   ; preds = %2397
  %2540 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  %2541 = load i64, i64* %2540, align 8
  %2542 = call i64 @time(i64* null) #10
  %2543 = icmp sgt i64 %2541, %2542
  br i1 %2543, label %2544, label %2545

; <label>:2544:                                   ; preds = %2539
  br label %2299

; <label>:2545:                                   ; preds = %2539
  %2546 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %2547 = load i8, i8* %2546, align 1
  %2548 = zext i8 %2547 to i32
  %2549 = icmp sge i32 %2548, 3
  br i1 %2549, label %2550, label %2592

; <label>:2550:                                   ; preds = %2545
  %2551 = call zeroext i16 @htons(i16 zeroext 5) #13
  %2552 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2553 = bitcast %union.anon.2* %2552 to %struct.tftperror*
  %2554 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2553, i32 0, i32 0
  store i16 %2551, i16* %2554, align 4
  %2555 = call zeroext i16 @htons(i16 zeroext 0) #13
  %2556 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2557 = bitcast %union.anon.2* %2556 to %struct.tftperror*
  %2558 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2557, i32 0, i32 1
  store i16 %2555, i16* %2558, align 2
  %2559 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 13
  %2560 = load i32, i32* %2559, align 4
  %2561 = icmp ne i32 %2560, 0
  br i1 %2561, label %2562, label %2572

; <label>:2562:                                   ; preds = %2550
  %2563 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %2564 = load i16, i16* %2563, align 8
  %2565 = icmp ne i16 %2564, 0
  br i1 %2565, label %2572, label %2566

; <label>:2566:                                   ; preds = %2562
  %2567 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2568 = bitcast %union.anon.2* %2567 to %struct.tftperror*
  %2569 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2568, i32 0, i32 2
  %2570 = getelementptr inbounds [512 x i8], [512 x i8]* %2569, i32 0, i32 0
  %2571 = call i8* @strcpy(i8* %2570, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.46, i32 0, i32 0)) #10
  br label %2578

; <label>:2572:                                   ; preds = %2562, %2550
  %2573 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2574 = bitcast %union.anon.2* %2573 to %struct.tftperror*
  %2575 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2574, i32 0, i32 2
  %2576 = getelementptr inbounds [512 x i8], [512 x i8]* %2575, i32 0, i32 0
  %2577 = call i8* @strcpy(i8* %2576, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #10
  br label %2578

; <label>:2578:                                   ; preds = %2572, %2566
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2579 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2580 = load i32, i32* %2579, align 8
  %2581 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2582 = bitcast %union.anon.2* %2581 to %struct.tftperror*
  %2583 = bitcast %struct.tftperror* %2582 to i8*
  %2584 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2585 = bitcast %union.anon.2* %2584 to %struct.tftperror*
  %2586 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2585, i32 0, i32 2
  %2587 = getelementptr inbounds [512 x i8], [512 x i8]* %2586, i32 0, i32 0
  %2588 = call i64 @strlen(i8* %2587) #11
  %2589 = add i64 %2588, 5
  %2590 = call i64 @send(i32 %2580, i8* %2583, i64 %2589, i32 0)
  %2591 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2591, align 1
  br label %2806

; <label>:2592:                                   ; preds = %2545
  %2593 = call i64 @time(i64* null) #10
  %2594 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 23
  %2595 = load i16, i16* %2594, align 2
  %2596 = zext i16 %2595 to i64
  %2597 = add nsw i64 %2593, %2596
  %2598 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  store i64 %2597, i64* %2598, align 8
  %2599 = call i32* @__errno_location() #13
  store i32 0, i32* %2599, align 4
  %2600 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2601 = load i32, i32* %2600, align 8
  %2602 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2603 = bitcast %union.anon.2* %2602 to %struct.message*
  %2604 = bitcast %struct.message* %2603 to i8*
  %2605 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 14
  %2606 = load i32, i32* %2605, align 8
  %2607 = sext i32 %2606 to i64
  %2608 = call i64 @send(i32 %2601, i8* %2604, i64 %2607, i32 0)
  %2609 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %2610 = load i8, i8* %2609, align 1
  %2611 = add i8 %2610, 1
  store i8 %2611, i8* %2609, align 1
  %2612 = call i32* @__errno_location() #13
  %2613 = load i32, i32* %2612, align 4
  %2614 = icmp ne i32 %2613, 0
  br i1 %2614, label %2615, label %2622

; <label>:2615:                                   ; preds = %2592
  %2616 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2617 = bitcast %union.anon.2* %2616 to %struct.tftperror*
  %2618 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2617, i32 0, i32 2
  %2619 = getelementptr inbounds [512 x i8], [512 x i8]* %2618, i32 0, i32 0
  %2620 = call i32 (i8*, i8*, ...) @sprintf(i8* %2619, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2621 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2621, align 1
  br label %2806

; <label>:2622:                                   ; preds = %2592
  br label %2623

; <label>:2623:                                   ; preds = %2622
  br label %2624

; <label>:2624:                                   ; preds = %2623
  br label %2625

; <label>:2625:                                   ; preds = %2624, %2538
  br label %2718

; <label>:2626:                                   ; preds = %2388
  %2627 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 15
  %2628 = load i32, i32* %2627, align 4
  %2629 = icmp sgt i32 %2628, 516
  br i1 %2629, label %2630, label %2657

; <label>:2630:                                   ; preds = %2626
  %2631 = call zeroext i16 @htons(i16 zeroext 5) #13
  %2632 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2633 = bitcast %union.anon.2* %2632 to %struct.tftperror*
  %2634 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2633, i32 0, i32 0
  store i16 %2631, i16* %2634, align 4
  %2635 = call zeroext i16 @htons(i16 zeroext 0) #13
  %2636 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2637 = bitcast %union.anon.2* %2636 to %struct.tftperror*
  %2638 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2637, i32 0, i32 1
  store i16 %2635, i16* %2638, align 2
  %2639 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2640 = bitcast %union.anon.2* %2639 to %struct.tftperror*
  %2641 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2640, i32 0, i32 2
  %2642 = getelementptr inbounds [512 x i8], [512 x i8]* %2641, i32 0, i32 0
  %2643 = call i32 (i8*, i8*, ...) @sprintf(i8* %2642, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.51, i32 0, i32 0)) #10
  %2644 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2645 = load i32, i32* %2644, align 8
  %2646 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2647 = bitcast %union.anon.2* %2646 to %struct.tftperror*
  %2648 = bitcast %struct.tftperror* %2647 to i8*
  %2649 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2650 = bitcast %union.anon.2* %2649 to %struct.tftperror*
  %2651 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2650, i32 0, i32 2
  %2652 = getelementptr inbounds [512 x i8], [512 x i8]* %2651, i32 0, i32 0
  %2653 = call i64 @strlen(i8* %2652) #11
  %2654 = add i64 %2653, 5
  %2655 = call i64 @send(i32 %2645, i8* %2648, i64 %2654, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2656 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2656, align 1
  br label %2806

; <label>:2657:                                   ; preds = %2626
  %2658 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2659 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2658, i64 0, i64 0
  %2660 = load %struct.packet*, %struct.packet** %2659, align 8
  %2661 = getelementptr inbounds %struct.packet, %struct.packet* %2660, i32 0, i32 0
  %2662 = load i16, i16* %2661, align 2
  %2663 = call zeroext i16 @ntohs(i16 zeroext %2662) #13
  %2664 = zext i16 %2663 to i32
  %2665 = icmp eq i32 %2664, 5
  br i1 %2665, label %2666, label %2684

; <label>:2666:                                   ; preds = %2657
  %2667 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2668 = bitcast %union.anon.2* %2667 to %struct.tftperror*
  %2669 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2668, i32 0, i32 2
  %2670 = getelementptr inbounds [512 x i8], [512 x i8]* %2669, i32 0, i32 0
  %2671 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2672 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2671, i64 0, i64 0
  %2673 = load %struct.packet*, %struct.packet** %2672, align 8
  %2674 = getelementptr inbounds %struct.packet, %struct.packet* %2673, i32 0, i32 1
  %2675 = load i16, i16* %2674, align 2
  %2676 = call zeroext i16 @ntohs(i16 zeroext %2675) #13
  %2677 = zext i16 %2676 to i32
  %2678 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2679 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2678, i64 0, i64 0
  %2680 = load %struct.packet*, %struct.packet** %2679, align 8
  %2681 = getelementptr inbounds %struct.packet, %struct.packet* %2680, i32 0, i32 2
  %2682 = call i32 (i8*, i8*, ...) @sprintf(i8* %2670, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32 %2677, i8* %2681) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2683 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2683, align 1
  br label %2806

; <label>:2684:                                   ; preds = %2657
  %2685 = call zeroext i16 @htons(i16 zeroext 5) #13
  %2686 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2687 = bitcast %union.anon.2* %2686 to %struct.tftperror*
  %2688 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2687, i32 0, i32 0
  store i16 %2685, i16* %2688, align 4
  %2689 = call zeroext i16 @htons(i16 zeroext 4) #13
  %2690 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2691 = bitcast %union.anon.2* %2690 to %struct.tftperror*
  %2692 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2691, i32 0, i32 1
  store i16 %2689, i16* %2692, align 2
  %2693 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2694 = bitcast %union.anon.2* %2693 to %struct.tftperror*
  %2695 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2694, i32 0, i32 2
  %2696 = getelementptr inbounds [512 x i8], [512 x i8]* %2695, i32 0, i32 0
  %2697 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 17
  %2698 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %2697, i64 0, i64 0
  %2699 = load %struct.packet*, %struct.packet** %2698, align 8
  %2700 = getelementptr inbounds %struct.packet, %struct.packet* %2699, i32 0, i32 0
  %2701 = load i16, i16* %2700, align 2
  %2702 = call zeroext i16 @ntohs(i16 zeroext %2701) #13
  %2703 = zext i16 %2702 to i32
  %2704 = call i32 (i8*, i8*, ...) @sprintf(i8* %2696, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0), i32 %2703) #10
  %2705 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2706 = load i32, i32* %2705, align 8
  %2707 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2708 = bitcast %union.anon.2* %2707 to %struct.tftperror*
  %2709 = bitcast %struct.tftperror* %2708 to i8*
  %2710 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2711 = bitcast %union.anon.2* %2710 to %struct.tftperror*
  %2712 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2711, i32 0, i32 2
  %2713 = getelementptr inbounds [512 x i8], [512 x i8]* %2712, i32 0, i32 0
  %2714 = call i64 @strlen(i8* %2713) #11
  %2715 = add i64 %2714, 5
  %2716 = call i64 @send(i32 %2706, i8* %2709, i64 %2715, i32 0)
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2717 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2717, align 1
  br label %2806

; <label>:2718:                                   ; preds = %2625
  br label %2805

; <label>:2719:                                   ; preds = %2384
  %2720 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  %2721 = load i64, i64* %2720, align 8
  %2722 = call i64 @time(i64* null) #10
  %2723 = icmp sgt i64 %2721, %2722
  br i1 %2723, label %2724, label %2725

; <label>:2724:                                   ; preds = %2719
  br label %2299

; <label>:2725:                                   ; preds = %2719
  %2726 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %2727 = load i8, i8* %2726, align 1
  %2728 = zext i8 %2727 to i32
  %2729 = icmp sge i32 %2728, 3
  br i1 %2729, label %2730, label %2772

; <label>:2730:                                   ; preds = %2725
  %2731 = call zeroext i16 @htons(i16 zeroext 5) #13
  %2732 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2733 = bitcast %union.anon.2* %2732 to %struct.tftperror*
  %2734 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2733, i32 0, i32 0
  store i16 %2731, i16* %2734, align 4
  %2735 = call zeroext i16 @htons(i16 zeroext 0) #13
  %2736 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2737 = bitcast %union.anon.2* %2736 to %struct.tftperror*
  %2738 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2737, i32 0, i32 1
  store i16 %2735, i16* %2738, align 2
  %2739 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 13
  %2740 = load i32, i32* %2739, align 4
  %2741 = icmp ne i32 %2740, 0
  br i1 %2741, label %2742, label %2752

; <label>:2742:                                   ; preds = %2730
  %2743 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 24
  %2744 = load i16, i16* %2743, align 8
  %2745 = icmp ne i16 %2744, 0
  br i1 %2745, label %2752, label %2746

; <label>:2746:                                   ; preds = %2742
  %2747 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2748 = bitcast %union.anon.2* %2747 to %struct.tftperror*
  %2749 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2748, i32 0, i32 2
  %2750 = getelementptr inbounds [512 x i8], [512 x i8]* %2749, i32 0, i32 0
  %2751 = call i8* @strcpy(i8* %2750, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.46, i32 0, i32 0)) #10
  br label %2758

; <label>:2752:                                   ; preds = %2742, %2730
  %2753 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2754 = bitcast %union.anon.2* %2753 to %struct.tftperror*
  %2755 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2754, i32 0, i32 2
  %2756 = getelementptr inbounds [512 x i8], [512 x i8]* %2755, i32 0, i32 0
  %2757 = call i8* @strcpy(i8* %2756, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #10
  br label %2758

; <label>:2758:                                   ; preds = %2752, %2746
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2759 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2760 = load i32, i32* %2759, align 8
  %2761 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2762 = bitcast %union.anon.2* %2761 to %struct.tftperror*
  %2763 = bitcast %struct.tftperror* %2762 to i8*
  %2764 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2765 = bitcast %union.anon.2* %2764 to %struct.tftperror*
  %2766 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2765, i32 0, i32 2
  %2767 = getelementptr inbounds [512 x i8], [512 x i8]* %2766, i32 0, i32 0
  %2768 = call i64 @strlen(i8* %2767) #11
  %2769 = add i64 %2768, 5
  %2770 = call i64 @send(i32 %2760, i8* %2763, i64 %2769, i32 0)
  %2771 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2771, align 1
  br label %2806

; <label>:2772:                                   ; preds = %2725
  %2773 = call i64 @time(i64* null) #10
  %2774 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 23
  %2775 = load i16, i16* %2774, align 2
  %2776 = zext i16 %2775 to i64
  %2777 = add nsw i64 %2773, %2776
  %2778 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 2
  store i64 %2777, i64* %2778, align 8
  %2779 = call i32* @__errno_location() #13
  store i32 0, i32* %2779, align 4
  %2780 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 3
  %2781 = load i32, i32* %2780, align 8
  %2782 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2783 = bitcast %union.anon.2* %2782 to %struct.message*
  %2784 = bitcast %struct.message* %2783 to i8*
  %2785 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 14
  %2786 = load i32, i32* %2785, align 8
  %2787 = sext i32 %2786 to i64
  %2788 = call i64 @send(i32 %2781, i8* %2784, i64 %2787, i32 0)
  %2789 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  %2790 = load i8, i8* %2789, align 1
  %2791 = add i8 %2790, 1
  store i8 %2791, i8* %2789, align 1
  %2792 = call i32* @__errno_location() #13
  %2793 = load i32, i32* %2792, align 4
  %2794 = icmp ne i32 %2793, 0
  br i1 %2794, label %2795, label %2802

; <label>:2795:                                   ; preds = %2772
  %2796 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 20
  %2797 = bitcast %union.anon.2* %2796 to %struct.tftperror*
  %2798 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %2797, i32 0, i32 2
  %2799 = getelementptr inbounds [512 x i8], [512 x i8]* %2798, i32 0, i32 0
  %2800 = call i32 (i8*, i8*, ...) @sprintf(i8* %2799, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #10
  call void @_Z7logMessP7requesth(%struct.request* %4, i8 zeroext 1)
  %2801 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 6
  store i8 -1, i8* %2801, align 1
  br label %2806

; <label>:2802:                                   ; preds = %2772
  br label %2803

; <label>:2803:                                   ; preds = %2802
  br label %2804

; <label>:2804:                                   ; preds = %2803
  br label %2805

; <label>:2805:                                   ; preds = %2804, %2718
  br label %2299

; <label>:2806:                                   ; preds = %2795, %2758, %2684, %2666, %2630, %2615, %2578, %2525, %2483, %2454, %2374, %2299
  br label %2807

; <label>:2807:                                   ; preds = %2806, %2264
  br label %2808

; <label>:2808:                                   ; preds = %2807, %2263
  br label %2809

; <label>:2809:                                   ; preds = %2808
  br label %2810

; <label>:2810:                                   ; preds = %2809, %2291, %1654, %1573, %1517, %1486, %1468, %1420, %1367, %1094, %1037, %1006, %964, %930, %830, %818, %667, %619, %569, %501, %457, %404, %394, %261, %239, %206, %173, %133, %64, %44
  %2811 = call zeroext i1 @_Z8cleanReqP7request(%struct.request* %4)
  br i1 %2811, label %29, label %2812

; <label>:2812:                                   ; preds = %2810
  %2813 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutCount) #10
  %2814 = load i16, i16* @totalThreads, align 2
  %2815 = add i16 %2814, -1
  store i16 %2815, i16* @totalThreads, align 2
  %2816 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutCount) #10
  call void @pthread_exit(i8* null) #14
  unreachable
                                                  ; No predecessors!
  %2818 = load i8*, i8** %2, align 8
  ret i8* %2818
}

declare void @syslog(i32, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @fork() #1

; Function Attrs: nounwind
declare i32 @umask(i32) #1

; Function Attrs: nounwind
declare i32 @setsid() #1

; Function Attrs: nounwind
declare i32 @chdir(i8*) #1

declare i32 @close(i32) #4

; Function Attrs: noinline optnone uwtable
define void @_Z9closeConnv() #6 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %29, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %7
  %9 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %8, i32 0, i32 4
  %10 = load i8, i8* %9, align 2
  %11 = trunc i8 %10 to i1
  br label %12

; <label>:12:                                     ; preds = %5, %2
  %13 = phi i1 [ false, %2 ], [ %11, %5 ]
  br i1 %13, label %14, label %32

; <label>:14:                                     ; preds = %12
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %16
  %18 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %17, i32 0, i32 5
  %19 = load i8, i8* %18, align 1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x %struct.tftpConnType], [8 x %struct.tftpConnType]* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 0), i64 0, i64 %23
  %25 = getelementptr inbounds %struct.tftpConnType, %struct.tftpConnType* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @close(i32 %26)
  br label %28

; <label>:28:                                     ; preds = %21, %14
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %2

; <label>:32:                                     ; preds = %12
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @getpid() #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #4

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #8

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #8

; Function Attrs: noinline optnone uwtable
define void @_Z7logMessP7requesth(%struct.request*, i8 zeroext) #6 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca [512 x i8], align 16
  store %struct.request* %0, %struct.request** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutLog) #10
  %9 = load i8, i8* @verbatim, align 1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %11, label %77

; <label>:11:                                     ; preds = %2
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 20
  %14 = bitcast %union.anon.2* %13 to %struct.tftperror*
  %15 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %14, i32 0, i32 2
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %17 = load i8, i8* %16, align 4
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %29, label %19

; <label>:19:                                     ; preds = %11
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 20
  %22 = bitcast %union.anon.2* %21 to %struct.tftperror*
  %23 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %22, i32 0, i32 2
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %23, i32 0, i32 0
  %25 = call i32* @__errno_location() #13
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @strerror(i32 %26) #10
  %28 = call i32 (i8*, ...) @printf(i8* %24, i8* %27)
  br label %29

; <label>:29:                                     ; preds = %19, %11
  %30 = load %struct.request*, %struct.request** %3, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 7
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %31, i64 0, i64 0
  %33 = load i8, i8* %32, align 2
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %57

; <label>:35:                                     ; preds = %29
  %36 = load %struct.request*, %struct.request** %3, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 18
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %40)
  %42 = load %struct.request*, %struct.request** %3, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 18
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 1
  %45 = load i16, i16* %44, align 2
  %46 = call zeroext i16 @ntohs(i16 zeroext %45) #13
  %47 = zext i16 %46 to i32
  %48 = load %struct.request*, %struct.request** %3, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 7
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %49, i32 0, i32 0
  %51 = load %struct.request*, %struct.request** %3, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 20
  %53 = bitcast %union.anon.2* %52 to %struct.tftperror*
  %54 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %53, i32 0, i32 2
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %54, i32 0, i32 0
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i32 0, i32 0), i8* %41, i32 %47, i8* %50, i8* %55)
  br label %76

; <label>:57:                                     ; preds = %29
  %58 = load %struct.request*, %struct.request** %3, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 18
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %62)
  %64 = load %struct.request*, %struct.request** %3, align 8
  %65 = getelementptr inbounds %struct.request, %struct.request* %64, i32 0, i32 18
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %65, i32 0, i32 1
  %67 = load i16, i16* %66, align 2
  %68 = call zeroext i16 @ntohs(i16 zeroext %67) #13
  %69 = zext i16 %68 to i32
  %70 = load %struct.request*, %struct.request** %3, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 20
  %72 = bitcast %union.anon.2* %71 to %struct.tftperror*
  %73 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %72, i32 0, i32 2
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %73, i32 0, i32 0
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.121, i32 0, i32 0), i8* %63, i32 %69, i8* %74)
  br label %76

; <label>:76:                                     ; preds = %57, %35
  br label %245

; <label>:77:                                     ; preds = %2
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %79 = icmp ne %struct._IO_FILE* %78, null
  br i1 %79, label %80, label %168

; <label>:80:                                     ; preds = %77
  %81 = load i8, i8* %4, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  %84 = zext i8 %83 to i32
  %85 = icmp sle i32 %82, %84
  br i1 %85, label %86, label %168

; <label>:86:                                     ; preds = %80
  %87 = call i64 @time(i64* null) #10
  store i64 %87, i64* %5, align 8
  %88 = call %struct.tm* @localtime(i64* %5) #10
  store %struct.tm* %88, %struct.tm** %6, align 8
  %89 = load %struct.tm*, %struct.tm** %6, align 8
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = load i16, i16* @loggingDay, align 2
  %93 = zext i16 %92 to i32
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %114

; <label>:95:                                     ; preds = %86
  %96 = load %struct.tm*, %struct.tm** %6, align 8
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* @loggingDay, align 2
  %100 = load %struct.tm*, %struct.tm** %6, align 8
  %101 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logFile, i32 0, i32 0), %struct.tm* %100) #10
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0))
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %105 = call i32 @fclose(%struct._IO_FILE* %104)
  %106 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  store %struct._IO_FILE* %106, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %108 = icmp ne %struct._IO_FILE* %107, null
  br i1 %108, label %109, label %112

; <label>:109:                                    ; preds = %95
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @sVersion, i32 0, i32 0))
  br label %113

; <label>:112:                                    ; preds = %95
  br label %247

; <label>:113:                                    ; preds = %109
  br label %114

; <label>:114:                                    ; preds = %113, %86
  %115 = load %struct.tm*, %struct.tm** %6, align 8
  %116 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), %struct.tm* %115) #10
  %117 = load %struct.request*, %struct.request** %3, align 8
  %118 = getelementptr inbounds %struct.request, %struct.request* %117, i32 0, i32 7
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %118, i64 0, i64 0
  %120 = load i8, i8* %119, align 2
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %145

; <label>:122:                                    ; preds = %114
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %124 = load %struct.request*, %struct.request** %3, align 8
  %125 = getelementptr inbounds %struct.request, %struct.request* %124, i32 0, i32 18
  %126 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %128)
  %130 = load %struct.request*, %struct.request** %3, align 8
  %131 = getelementptr inbounds %struct.request, %struct.request* %130, i32 0, i32 18
  %132 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %131, i32 0, i32 1
  %133 = load i16, i16* %132, align 2
  %134 = call zeroext i16 @ntohs(i16 zeroext %133) #13
  %135 = zext i16 %134 to i32
  %136 = load %struct.request*, %struct.request** %3, align 8
  %137 = getelementptr inbounds %struct.request, %struct.request* %136, i32 0, i32 7
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %137, i32 0, i32 0
  %139 = load %struct.request*, %struct.request** %3, align 8
  %140 = getelementptr inbounds %struct.request, %struct.request* %139, i32 0, i32 20
  %141 = bitcast %union.anon.2* %140 to %struct.tftperror*
  %142 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %141, i32 0, i32 2
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %142, i32 0, i32 0
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* %129, i32 %135, i8* %138, i8* %143)
  br label %165

; <label>:145:                                    ; preds = %114
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %147 = load %struct.request*, %struct.request** %3, align 8
  %148 = getelementptr inbounds %struct.request, %struct.request* %147, i32 0, i32 18
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %151)
  %153 = load %struct.request*, %struct.request** %3, align 8
  %154 = getelementptr inbounds %struct.request, %struct.request* %153, i32 0, i32 18
  %155 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %154, i32 0, i32 1
  %156 = load i16, i16* %155, align 2
  %157 = call zeroext i16 @ntohs(i16 zeroext %156) #13
  %158 = zext i16 %157 to i32
  %159 = load %struct.request*, %struct.request** %3, align 8
  %160 = getelementptr inbounds %struct.request, %struct.request* %159, i32 0, i32 20
  %161 = bitcast %union.anon.2* %160 to %struct.tftperror*
  %162 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %161, i32 0, i32 2
  %163 = getelementptr inbounds [512 x i8], [512 x i8]* %162, i32 0, i32 0
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @extbuff, i32 0, i32 0), i8* %152, i32 %158, i8* %163)
  br label %165

; <label>:165:                                    ; preds = %145, %122
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 2), align 8
  %167 = call i32 @fflush(%struct._IO_FILE* %166)
  br label %244

; <label>:168:                                    ; preds = %80, %77
  %169 = load i8, i8* %4, align 1
  %170 = zext i8 %169 to i32
  %171 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 12), align 8
  %172 = zext i8 %171 to i32
  %173 = icmp sle i32 %170, %172
  br i1 %173, label %174, label %243

; <label>:174:                                    ; preds = %168
  %175 = load %struct.request*, %struct.request** %3, align 8
  %176 = getelementptr inbounds %struct.request, %struct.request* %175, i32 0, i32 20
  %177 = bitcast %union.anon.2* %176 to %struct.tftperror*
  %178 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %177, i32 0, i32 2
  %179 = getelementptr inbounds [512 x i8], [512 x i8]* %178, i64 0, i64 0
  %180 = load i8, i8* %179, align 4
  %181 = icmp ne i8 %180, 0
  br i1 %181, label %192, label %182

; <label>:182:                                    ; preds = %174
  %183 = load %struct.request*, %struct.request** %3, align 8
  %184 = getelementptr inbounds %struct.request, %struct.request* %183, i32 0, i32 20
  %185 = bitcast %union.anon.2* %184 to %struct.tftperror*
  %186 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %185, i32 0, i32 2
  %187 = getelementptr inbounds [512 x i8], [512 x i8]* %186, i32 0, i32 0
  %188 = call i32* @__errno_location() #13
  %189 = load i32, i32* %188, align 4
  %190 = call i8* @strerror(i32 %189) #10
  %191 = call i32 (i8*, i8*, ...) @sprintf(i8* %187, i8* %190) #10
  br label %192

; <label>:192:                                    ; preds = %182, %174
  %193 = load %struct.request*, %struct.request** %3, align 8
  %194 = getelementptr inbounds %struct.request, %struct.request* %193, i32 0, i32 7
  %195 = getelementptr inbounds [256 x i8], [256 x i8]* %194, i64 0, i64 0
  %196 = load i8, i8* %195, align 2
  %197 = icmp ne i8 %196, 0
  br i1 %197, label %198, label %221

; <label>:198:                                    ; preds = %192
  %199 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %200 = load %struct.request*, %struct.request** %3, align 8
  %201 = getelementptr inbounds %struct.request, %struct.request* %200, i32 0, i32 18
  %202 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %204)
  %206 = load %struct.request*, %struct.request** %3, align 8
  %207 = getelementptr inbounds %struct.request, %struct.request* %206, i32 0, i32 18
  %208 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %207, i32 0, i32 1
  %209 = load i16, i16* %208, align 2
  %210 = call zeroext i16 @ntohs(i16 zeroext %209) #13
  %211 = zext i16 %210 to i32
  %212 = load %struct.request*, %struct.request** %3, align 8
  %213 = getelementptr inbounds %struct.request, %struct.request* %212, i32 0, i32 7
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %213, i32 0, i32 0
  %215 = load %struct.request*, %struct.request** %3, align 8
  %216 = getelementptr inbounds %struct.request, %struct.request* %215, i32 0, i32 20
  %217 = bitcast %union.anon.2* %216 to %struct.tftperror*
  %218 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %217, i32 0, i32 2
  %219 = getelementptr inbounds [512 x i8], [512 x i8]* %218, i32 0, i32 0
  %220 = call i32 (i8*, i8*, ...) @sprintf(i8* %199, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i32 0, i32 0), i8* %205, i32 %211, i8* %214, i8* %219) #10
  br label %241

; <label>:221:                                    ; preds = %192
  %222 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %223 = load %struct.request*, %struct.request** %3, align 8
  %224 = getelementptr inbounds %struct.request, %struct.request* %223, i32 0, i32 18
  %225 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i8* @_Z9IP2StringPcj(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tempbuff, i32 0, i32 0), i32 %227)
  %229 = load %struct.request*, %struct.request** %3, align 8
  %230 = getelementptr inbounds %struct.request, %struct.request* %229, i32 0, i32 18
  %231 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %230, i32 0, i32 1
  %232 = load i16, i16* %231, align 2
  %233 = call zeroext i16 @ntohs(i16 zeroext %232) #13
  %234 = zext i16 %233 to i32
  %235 = load %struct.request*, %struct.request** %3, align 8
  %236 = getelementptr inbounds %struct.request, %struct.request* %235, i32 0, i32 20
  %237 = bitcast %union.anon.2* %236 to %struct.tftperror*
  %238 = getelementptr inbounds %struct.tftperror, %struct.tftperror* %237, i32 0, i32 2
  %239 = getelementptr inbounds [512 x i8], [512 x i8]* %238, i32 0, i32 0
  %240 = call i32 (i8*, i8*, ...) @sprintf(i8* %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.121, i32 0, i32 0), i8* %228, i32 %234, i8* %239) #10
  br label %241

; <label>:241:                                    ; preds = %221, %198
  %242 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  call void (i32, i8*, ...) @syslog(i32 138, i8* %242)
  br label %243

; <label>:243:                                    ; preds = %241, %168
  br label %244

; <label>:244:                                    ; preds = %243, %165
  br label %245

; <label>:245:                                    ; preds = %244, %76
  %246 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutLog) #10
  br label %247

; <label>:247:                                    ; preds = %245, %112
  ret void
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #8

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

declare i32 @connect(i32, %struct.sockaddr*, i32) #4

declare i64 @send(i32, i8*, i64, i32) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #4

declare i64 @ftell(%struct._IO_FILE*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

declare i64 @recv(i32, i8*, i64, i32) #4

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: noinline optnone uwtable
define zeroext i1 @_Z8cleanReqP7request(%struct.request*) #6 {
  %2 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %3 = load %struct.request*, %struct.request** %2, align 8
  %4 = getelementptr inbounds %struct.request, %struct.request* %3, i32 0, i32 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %1
  %8 = load %struct.request*, %struct.request** %2, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %11 = call i32 @fclose(%struct._IO_FILE* %10)
  br label %12

; <label>:12:                                     ; preds = %7, %1
  %13 = load %struct.request*, %struct.request** %2, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %12
  %18 = load %struct.request*, %struct.request** %2, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @close(i32 %20)
  br label %22

; <label>:22:                                     ; preds = %17, %12
  %23 = load %struct.request*, %struct.request** %2, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 17
  %25 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %24, i64 0, i64 0
  %26 = load %struct.packet*, %struct.packet** %25, align 8
  %27 = icmp ne %struct.packet* %26, null
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %22
  %29 = load %struct.request*, %struct.request** %2, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 17
  %31 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %30, i64 0, i64 0
  %32 = load %struct.packet*, %struct.packet** %31, align 8
  %33 = bitcast %struct.packet* %32 to i8*
  call void @free(i8* %33) #10
  br label %34

; <label>:34:                                     ; preds = %28, %22
  %35 = load %struct.request*, %struct.request** %2, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 17
  %37 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %36, i64 0, i64 1
  %38 = load %struct.packet*, %struct.packet** %37, align 8
  %39 = icmp ne %struct.packet* %38, null
  br i1 %39, label %40, label %46

; <label>:40:                                     ; preds = %34
  %41 = load %struct.request*, %struct.request** %2, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 17
  %43 = getelementptr inbounds [2 x %struct.packet*], [2 x %struct.packet*]* %42, i64 0, i64 1
  %44 = load %struct.packet*, %struct.packet** %43, align 8
  %45 = bitcast %struct.packet* %44 to i8*
  call void @free(i8* %45) #10
  br label %46

; <label>:46:                                     ; preds = %40, %34
  %47 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutCount) #10
  %48 = load i16, i16* @activeThreads, align 2
  %49 = add i16 %48, -1
  store i16 %49, i16* @activeThreads, align 2
  %50 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutCount) #10
  %51 = load i16, i16* @totalThreads, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @minThreads, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp sle i32 %52, %54
  ret i1 %55
}

; Function Attrs: noreturn
declare void @pthread_exit(i8*) #9

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline optnone uwtable
define zeroext i1 @_Z10getSectionPKcPchS1_(i8*, i8*, i8 zeroext, i8*) #6 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* %14) #10
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0
  %17 = call i8* @_Z7myUpperPc(i8* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %10, align 8
  store i8 0, i8* %12, align 1
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %21 = icmp ne %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %118

; <label>:22:                                     ; preds = %4
  br label %23

; <label>:23:                                     ; preds = %114, %22
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %26 = call i8* @fgets(i8* %24, i32 511, %struct._IO_FILE* %25)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %115

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %30 = call i8* @_Z7myUpperPc(i8* %29)
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %33 = call i8* @_Z6myTrimPcS_(i8* %31, i8* %32)
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0
  %36 = call i8* @strstr(i8* %34, i8* %35) #11
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %114

; <label>:39:                                     ; preds = %28
  %40 = load i8, i8* %12, align 1
  %41 = add i8 %40, 1
  store i8 %41, i8* %12, align 1
  %42 = load i8, i8* %12, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %113

; <label>:47:                                     ; preds = %39
  br label %48

; <label>:48:                                     ; preds = %111, %47
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %51 = call i8* @fgets(i8* %49, i32 511, %struct._IO_FILE* %50)
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %112

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %56 = call i8* @_Z6myTrimPcS_(i8* %54, i8* %55)
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %58 = call i8* @strstr(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0)) #11
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %53
  br label %112

; <label>:62:                                     ; preds = %53
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %64 = load i8, i8* %63, align 16
  %65 = sext i8 %64 to i32
  %66 = icmp sge i32 %65, 48
  br i1 %66, label %67, label %72

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %69 = load i8, i8* %68, align 16
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 57
  br i1 %71, label %102, label %72

; <label>:72:                                     ; preds = %67, %62
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %74 = load i8, i8* %73, align 16
  %75 = sext i8 %74 to i32
  %76 = icmp sge i32 %75, 65
  br i1 %76, label %77, label %82

; <label>:77:                                     ; preds = %72
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %79 = load i8, i8* %78, align 16
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %80, 90
  br i1 %81, label %102, label %82

; <label>:82:                                     ; preds = %77, %72
  %83 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %84 = load i8, i8* %83, align 16
  %85 = sext i8 %84 to i32
  %86 = icmp sge i32 %85, 97
  br i1 %86, label %87, label %92

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %89 = load i8, i8* %88, align 16
  %90 = sext i8 %89 to i32
  %91 = icmp sle i32 %90, 122
  br i1 %91, label %102, label %92

; <label>:92:                                     ; preds = %87, %82
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %94 = load i8, i8* %93, align 16
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %111

; <label>:96:                                     ; preds = %92
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %98 = load i8, i8* %97, align 16
  %99 = sext i8 %98 to i32
  %100 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 %99) #11
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %111

; <label>:102:                                    ; preds = %96, %87, %77, %67
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* %104) #10
  %106 = load i8*, i8** %6, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %6, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %6, align 8
  br label %111

; <label>:111:                                    ; preds = %102, %96, %92
  br label %48

; <label>:112:                                    ; preds = %61, %48
  br label %115

; <label>:113:                                    ; preds = %39
  br label %114

; <label>:114:                                    ; preds = %113, %28
  br label %23

; <label>:115:                                    ; preds = %112, %23
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %117 = call i32 @fclose(%struct._IO_FILE* %116)
  br label %118

; <label>:118:                                    ; preds = %115, %4
  %119 = load i8*, i8** %6, align 8
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8 0, i8* %121, align 1
  %122 = load i8, i8* %12, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* %7, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %123, %125
  ret i1 %126
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @_Z7myUpperPc(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8 32, i8* %3, align 1
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #11
  %8 = trunc i64 %7 to i16
  store i16 %8, i16* %4, align 2
  store i32 0, i32* %5, align 4
  br label %9

; <label>:9:                                      ; preds = %42, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %45

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 97
  br i1 %21, label %22, label %41

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 122
  br i1 %29, label %30, label %41

; <label>:30:                                     ; preds = %22
  %31 = load i8, i8* %3, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, %32
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  br label %41

; <label>:41:                                     ; preds = %30, %22, %14
  br label %42

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %9

; <label>:45:                                     ; preds = %9
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline optnone uwtable
define %struct._IO_FILE* @_Z11openSectionPKchPc(i8*, i8 zeroext, i8*) #6 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca [512 x i8], align 16
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i32 0, i32 0
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* %13) #10
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i32 0, i32 0
  %16 = call i8* @_Z7myUpperPc(i8* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %9, align 8
  store i8 0, i8* %11, align 1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %20 = icmp ne %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %53

; <label>:21:                                     ; preds = %3
  br label %22

; <label>:22:                                     ; preds = %49, %21
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %25 = call i8* @fgets(i8* %23, i32 511, %struct._IO_FILE* %24)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %50

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %29 = call i8* @_Z7myUpperPc(i8* %28)
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %32 = call i8* @_Z6myTrimPcS_(i8* %30, i8* %31)
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i32 0, i32 0
  %35 = call i8* @strstr(i8* %33, i8* %34) #11
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %49

; <label>:38:                                     ; preds = %27
  %39 = load i8, i8* %11, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %11, align 1
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %38
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  store %struct._IO_FILE* %47, %struct._IO_FILE** %4, align 8
  br label %54

; <label>:48:                                     ; preds = %38
  br label %49

; <label>:49:                                     ; preds = %48, %27
  br label %22

; <label>:50:                                     ; preds = %22
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %52 = call i32 @fclose(%struct._IO_FILE* %51)
  br label %53

; <label>:53:                                     ; preds = %50, %3
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8
  br label %54

; <label>:54:                                     ; preds = %53, %46
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  ret %struct._IO_FILE* %55
}

; Function Attrs: noinline optnone uwtable
define i8* @_Z11readSectionPcP8_IO_FILE(i8*, %struct._IO_FILE*) #6 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  br label %6

; <label>:6:                                      ; preds = %62, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %9 = call i8* @fgets(i8* %7, i32 511, %struct._IO_FILE* %8)
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %63

; <label>:11:                                     ; preds = %6
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @_Z6myTrimPcS_(i8* %12, i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 91
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %11
  br label %63

; <label>:20:                                     ; preds = %11
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sge i32 %23, 48
  br i1 %24, label %25, label %30

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 57
  br i1 %29, label %60, label %30

; <label>:30:                                     ; preds = %25, %20
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 65
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sle i32 %38, 90
  br i1 %39, label %60, label %40

; <label>:40:                                     ; preds = %35, %30
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 97
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 122
  br i1 %49, label %60, label %50

; <label>:50:                                     ; preds = %45, %40
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %62

; <label>:54:                                     ; preds = %50
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 %57) #11
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %54, %45, %35, %25
  %61 = load i8*, i8** %4, align 8
  store i8* %61, i8** %3, align 8
  br label %66

; <label>:62:                                     ; preds = %54, %50
  br label %6

; <label>:63:                                     ; preds = %19, %6
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %65 = call i32 @fclose(%struct._IO_FILE* %64)
  store i8* null, i8** %3, align 8
  br label %66

; <label>:66:                                     ; preds = %63, %60
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @_Z10myGetTokenPch(i8*, i8 zeroext) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  br label %5

; <label>:5:                                      ; preds = %16, %2
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %22

; <label>:9:                                      ; preds = %5
  %10 = load i8, i8* %4, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %9
  %13 = load i8, i8* %4, align 1
  %14 = add i8 %13, -1
  store i8 %14, i8* %4, align 1
  br label %16

; <label>:15:                                     ; preds = %9
  br label %22

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strlen(i8* %17) #11
  %19 = add i64 %18, 1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 %19
  store i8* %21, i8** %3, align 8
  br label %5

; <label>:22:                                     ; preds = %15, %5
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i16 @_Z10myTokenizePcS_S_b(i8*, i8*, i8*, i1 zeroext) #2 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i16, align 2
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %8, align 1
  store i8 1, i8* %9, align 1
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %10, align 8
  store i16 0, i16* %11, align 2
  br label %14

; <label>:14:                                     ; preds = %62, %44, %33, %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %70

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %36

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %36

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = call i8* @strchr(i8* %27, i32 %30) #11
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %26
  store i8 1, i8* %9, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %14

; <label>:36:                                     ; preds = %26, %21, %18
  %37 = load i8, i8* %8, align 1
  %38 = trunc i8 %37 to i1
  br i1 %38, label %39, label %47

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 32
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %39
  store i8 1, i8* %9, align 1
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  br label %14

; <label>:47:                                     ; preds = %39, %36
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i8, i8* %9, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %62

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %51
  %56 = load i8*, i8** %10, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  br label %59

; <label>:59:                                     ; preds = %55, %51
  %60 = load i16, i16* %11, align 2
  %61 = add i16 %60, 1
  store i16 %61, i16* %11, align 2
  br label %62

; <label>:62:                                     ; preds = %59, %48
  store i8 0, i8* %9, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %10, align 8
  store i8 %64, i8* %65, align 1
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  br label %14

; <label>:70:                                     ; preds = %14
  %71 = load i8*, i8** %10, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  store i8 0, i8* %74, align 1
  %75 = load i16, i16* %11, align 2
  ret i16 %75
}

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z7mySplitPcS_S_c(i8*, i8*, i8*, i8 signext) #2 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

; <label>:12:                                     ; preds = %44, %4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %32

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %10, align 4
  %21 = icmp sle i32 %20, 510
  br i1 %21, label %22, label %32

; <label>:22:                                     ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %8, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br label %32

; <label>:32:                                     ; preds = %22, %19, %12
  %33 = phi i1 [ false, %19 ], [ false, %12 ], [ %31, %22 ]
  br i1 %33, label %34, label %49

; <label>:34:                                     ; preds = %32
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %39, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %12

; <label>:49:                                     ; preds = %32
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %87

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %59

; <label>:59:                                     ; preds = %81, %56
  %60 = load i32, i32* %11, align 4
  %61 = icmp sle i32 %60, 510
  br i1 %61, label %62, label %69

; <label>:62:                                     ; preds = %59
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br label %69

; <label>:69:                                     ; preds = %62, %59
  %70 = phi i1 [ false, %59 ], [ %68, %62 ]
  br i1 %70, label %71, label %86

; <label>:71:                                     ; preds = %69
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %76, i8* %80, align 1
  br label %81

; <label>:81:                                     ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %59

; <label>:86:                                     ; preds = %69
  br label %87

; <label>:87:                                     ; preds = %86, %49
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i8* @_Z6myTrimPcS_(i8* %96, i8* %97)
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = call i8* @_Z6myTrimPcS_(i8* %99, i8* %100)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @_Z9IP2StringPcj(i8*, i32) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.data15, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %struct.data15, %struct.data15* %5, i32 0, i32 0
  %8 = bitcast %union.anon.4* %7 to i32*
  store i32 %6, i32* %8, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds %struct.data15, %struct.data15* %5, i32 0, i32 0
  %11 = bitcast %union.anon.4* %10 to [4 x i8]*
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %13 = load i8, i8* %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.data15, %struct.data15* %5, i32 0, i32 0
  %16 = bitcast %union.anon.4* %15 to [4 x i8]*
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.data15, %struct.data15* %5, i32 0, i32 0
  %21 = bitcast %union.anon.4* %20 to [4 x i8]*
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 2
  %23 = load i8, i8* %22, align 2
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.data15, %struct.data15* %5, i32 0, i32 0
  %26 = bitcast %union.anon.4* %25 to [4 x i8]*
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 %14, i32 %19, i32 %24, i32 %29) #10
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @_Z7myLowerPc(i8*) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8 32, i8* %3, align 1
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #11
  %8 = trunc i64 %7 to i16
  store i16 %8, i16* %4, align 2
  store i32 0, i32* %5, align 4
  br label %9

; <label>:9:                                      ; preds = %42, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %45

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 65
  br i1 %21, label %22, label %41

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 90
  br i1 %29, label %30, label %41

; <label>:30:                                     ; preds = %22
  %31 = load i8, i8* %3, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, %32
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  br label %41

; <label>:41:                                     ; preds = %30, %22, %14
  br label %42

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %9

; <label>:45:                                     ; preds = %9
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i1 @_Z4isIPPc(i8*) #2 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %36, %1
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %39

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 46
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 46
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %35

; <label>:23:                                     ; preds = %14, %9
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp slt i32 %26, 48
  br i1 %27, label %33, label %28

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sgt i32 %31, 57
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %28, %23
  store i1 false, i1* %2, align 1
  br label %44

; <label>:34:                                     ; preds = %28
  br label %35

; <label>:35:                                     ; preds = %34, %20
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  br label %5

; <label>:39:                                     ; preds = %5
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  store i1 true, i1* %2, align 1
  br label %44

; <label>:43:                                     ; preds = %39
  store i1 false, i1* %2, align 1
  br label %44

; <label>:44:                                     ; preds = %43, %42, %33
  %45 = load i1, i1* %2, align 1
  ret i1 %45
}

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #1

declare %struct.passwd* @getpwnam(i8*) #4

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_Z12my_inet_addrPc(i8*) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %11, label %6

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %15

; <label>:12:                                     ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @inet_addr(i8* %13) #10
  store i32 %14, i32* %2, align 4
  br label %15

; <label>:15:                                     ; preds = %12, %11
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare %struct.passwd* @getpwuid(i32) #4

; Function Attrs: nounwind
declare i32 @getuid() #1

; Function Attrs: noinline nounwind optnone uwtable
define i32* @_Z10findServerPjj(i32*, i32) #2 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %41

; <label>:9:                                      ; preds = %2
  store i8 0, i8* %6, align 1
  br label %10

; <label>:10:                                     ; preds = %37, %9
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %21

; <label>:14:                                     ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

; <label>:21:                                     ; preds = %14, %10
  %22 = phi i1 [ false, %10 ], [ %20, %14 ]
  br i1 %22, label %23, label %40

; <label>:23:                                     ; preds = %21
  %24 = load i32*, i32** %4, align 8
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %3, align 8
  br label %42

; <label>:36:                                     ; preds = %23
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i8, i8* %6, align 1
  %39 = add i8 %38, 1
  store i8 %39, i8* %6, align 1
  br label %10

; <label>:40:                                     ; preds = %21
  br label %41

; <label>:41:                                     ; preds = %40, %2
  store i32* null, i32** %3, align 8
  br label %42

; <label>:42:                                     ; preds = %41, %31
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

; Function Attrs: noinline optnone uwtable
define void @_Z13getInterfacesP5data1(%struct.data1*) #6 {
  %2 = alloca %struct.data1*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.ifreq, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.data1* %0, %struct.data1** %2, align 8
  %9 = load %struct.data1*, %struct.data1** %2, align 8
  %10 = bitcast %struct.data1* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 344, i32 4, i1 false)
  store i32 320, i32* getelementptr inbounds (%struct.ifconf, %struct.ifconf* @Ifc, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([8 x %struct.ifreq], [8 x %struct.ifreq]* @IfcBuf, i32 0, i32 0, i32 0, i32 0, i32 0), i8** getelementptr inbounds (%struct.ifconf, %struct.ifconf* @Ifc, i32 0, i32 1, i32 0), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 4
  %12 = call i32 (i32, i64, ...) @ioctl(i32 %11, i64 35090, %struct.ifconf* @Ifc) #10
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %104

; <label>:14:                                     ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.ifconf, %struct.ifconf* @Ifc, i32 0, i32 0), align 8
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 40
  %18 = trunc i64 %17 to i8
  store i8 %18, i8* %7, align 1
  store i8 0, i8* %8, align 1
  br label %19

; <label>:19:                                     ; preds = %100, %14
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %103

; <label>:25:                                     ; preds = %19
  %26 = bitcast %struct.ifreq* %6 to i8*
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [8 x %struct.ifreq], [8 x %struct.ifreq]* @IfcBuf, i64 0, i64 %28
  %30 = bitcast %struct.ifreq* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %30, i64 40, i32 8, i1 false)
  %31 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 4
  %32 = call i32 (i32, i64, ...) @ioctl(i32 %31, i64 35093, %struct.ifreq* %6) #10
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %36 = bitcast %union.anon.0* %35 to %struct.sockaddr*
  %37 = bitcast %struct.sockaddr* %36 to %struct.sockaddr_in*
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %42

; <label>:41:                                     ; preds = %25
  store i32 0, i32* %3, align 4
  br label %42

; <label>:42:                                     ; preds = %41, %34
  %43 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 4
  %44 = call i32 (i32, i64, ...) @ioctl(i32 %43, i64 35099, %struct.ifreq* %6) #10
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %48 = bitcast %union.anon.0* %47 to %struct.sockaddr*
  %49 = bitcast %struct.sockaddr* %48 to %struct.sockaddr_in*
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  br label %54

; <label>:53:                                     ; preds = %42
  store i32 0, i32* %4, align 4
  br label %54

; <label>:54:                                     ; preds = %53, %46
  %55 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 17), align 4
  %56 = call i32 (i32, i64, ...) @ioctl(i32 %55, i64 35091, %struct.ifreq* %6) #10
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %60 = bitcast %union.anon.0* %59 to i16*
  %61 = load i16, i16* %60, align 8
  store i16 %61, i16* %5, align 2
  br label %63

; <label>:62:                                     ; preds = %54
  store i16 0, i16* %5, align 2
  br label %63

; <label>:63:                                     ; preds = %62, %58
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

; <label>:66:                                     ; preds = %63
  %67 = load %struct.data1*, %struct.data1** %2, align 8
  %68 = getelementptr inbounds %struct.data1, %struct.data1* %67, i32 0, i32 1
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %68, i32 0, i32 0
  %70 = load i32, i32* %3, align 4
  %71 = call zeroext i1 @_Z9addServerPjj(i32* %69, i32 %70)
  br label %72

; <label>:72:                                     ; preds = %66, %63
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %99

; <label>:78:                                     ; preds = %75
  %79 = load i16, i16* %5, align 2
  %80 = sext i16 %79 to i32
  %81 = and i32 %80, 16
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %99, label %83

; <label>:83:                                     ; preds = %78
  %84 = load i16, i16* %5, align 2
  %85 = sext i16 %84 to i32
  %86 = and i32 %85, 64
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

; <label>:88:                                     ; preds = %83
  %89 = load i16, i16* %5, align 2
  %90 = sext i16 %89 to i32
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

; <label>:93:                                     ; preds = %88
  %94 = load %struct.data1*, %struct.data1** %2, align 8
  %95 = getelementptr inbounds %struct.data1, %struct.data1* %94, i32 0, i32 2
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %95, i32 0, i32 0
  %97 = load i32, i32* %3, align 4
  %98 = call zeroext i1 @_Z9addServerPjj(i32* %96, i32 %97)
  br label %99

; <label>:99:                                     ; preds = %93, %88, %83, %78, %75, %72
  br label %100

; <label>:100:                                    ; preds = %99
  %101 = load i8, i8* %8, align 1
  %102 = add i8 %101, 1
  store i8 %102, i8* %8, align 1
  br label %19

; <label>:103:                                    ; preds = %19
  br label %104

; <label>:104:                                    ; preds = %103, %1
  ret void
}

; Function Attrs: noinline optnone uwtable
define zeroext i1 @_Z12detectChangev() #6 {
  %1 = alloca i1, align 1
  %2 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 13), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %12, label %4

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 19), align 8
  %6 = trunc i8 %5 to i1
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 4), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7, %4
  store i1 false, i1* %1, align 1
  br label %51

; <label>:11:                                     ; preds = %7
  br label %12

; <label>:12:                                     ; preds = %11, %0
  br label %13

; <label>:13:                                     ; preds = %12, %43
  %14 = call i32 @sleep(i32 20)
  %15 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 19), align 8
  %16 = trunc i8 %15 to i1
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %13
  call void @_Z13getInterfacesP5data1(%struct.data1* @newNetwork)
  br label %19

; <label>:18:                                     ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3, i32 0) to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 3, i32 0) to i8*), i64 32, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i16* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4, i32 0) to i8*), i8* bitcast (i16* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 4, i32 0) to i8*), i64 16, i32 4, i1 false)
  br label %19

; <label>:19:                                     ; preds = %18, %17
  %20 = load i8, i8* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 19), align 8
  %21 = trunc i8 %20 to i1
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %19
  %23 = call i32 @memcmp(i8* bitcast (i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 18, i32 0) to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 2, i32 0) to i8*), i64 32) #11
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 18, i32 0) to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.data1, %struct.data1* @newNetwork, i32 0, i32 2, i32 0) to i8*), i64 32, i32 4, i1 false)
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.115, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %44

; <label>:27:                                     ; preds = %22, %19
  %28 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 13), align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 14), align 8
  %32 = add i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 14), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 14), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 13), align 4
  %35 = call double @_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 2, i32 %34)
  %36 = fptoui double %35 to i32
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %30
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.116, i32 0, i32 0)) #10
  call void @_Z7logMessPch(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logBuff, i32 0, i32 0), i8 zeroext 1)
  br label %44

; <label>:40:                                     ; preds = %30
  br label %42

; <label>:41:                                     ; preds = %27
  store i32 0, i32* getelementptr inbounds (%struct.data2, %struct.data2* @cfig, i32 0, i32 14), align 8
  br label %42

; <label>:42:                                     ; preds = %41, %40
  br label %43

; <label>:43:                                     ; preds = %42
  br label %13

; <label>:44:                                     ; preds = %38, %25
  store i8 0, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 5), align 4
  br label %45

; <label>:45:                                     ; preds = %48, %44
  %46 = load i8, i8* getelementptr inbounds (%struct.data1, %struct.data1* @network, i32 0, i32 6), align 1
  %47 = trunc i8 %46 to i1
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %45
  %49 = call i32 @sleep(i32 1)
  br label %45

; <label>:50:                                     ; preds = %45
  store i1 true, i1* %1, align 1
  br label %51

; <label>:51:                                     ; preds = %50, %10
  %52 = load i1, i1* %1, align 1
  ret i1 %52
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr double @_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32, i32) #2 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sitofp i32 %5 to double
  %7 = load i32, i32* %4, align 4
  %8 = uitofp i32 %7 to double
  %9 = call double @pow(double %6, double %8) #10
  ret double %9
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i1 @_Z9addServerPjj(i32*, i32) #2 {
  %3 = alloca i1, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 0, i8* %6, align 1
  br label %7

; <label>:7:                                      ; preds = %38, %2
  %8 = load i8, i8* %6, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %41

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

; <label>:14:                                     ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %14, %11
  store i1 false, i1* %3, align 1
  br label %42

; <label>:23:                                     ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  store i1 true, i1* %3, align 1
  br label %42

; <label>:36:                                     ; preds = %23
  br label %37

; <label>:37:                                     ; preds = %36
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i8, i8* %6, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %6, align 1
  br label %7

; <label>:41:                                     ; preds = %7
  store i1 false, i1* %3, align 1
  br label %42

; <label>:42:                                     ; preds = %41, %30, %22
  %43 = load i1, i1* %3, align 1
  ret i1 %43
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i32 @fflush(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare double @pow(double, double) #1

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{i32 -2144947129}
!3 = !{i32 -2144945846}
!4 = !{i32 -2144943239}
!5 = !{i32 -2144941557}
