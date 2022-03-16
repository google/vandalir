target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sudo_nss_list = type { %struct.sudo_nss*, %struct.sudo_nss** }
%struct.sudo_nss = type { %struct.anon, i32 (%struct.sudo_nss*)*, i32 (%struct.sudo_nss*)*, %struct.sudoers_parse_tree* (%struct.sudo_nss*)*, i32 (%struct.sudo_nss*, %struct.passwd*)*, i32 (%struct.sudo_nss*)*, i8*, %struct.sudoers_parse_tree*, i8, i8 }
%struct.anon = type { %struct.sudo_nss*, %struct.sudo_nss** }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.sudoers_parse_tree = type { %struct.userspec_list, %struct.defaults_list, %struct.rbtree*, i8*, i8* }
%struct.userspec_list = type { %struct.userspec*, %struct.userspec** }
%struct.userspec = type { %struct.anon.0, %struct.member_list, %struct.privilege_list, %struct.comment_list, i32, i32, i8* }
%struct.anon.0 = type { %struct.userspec*, %struct.userspec** }
%struct.member_list = type { %struct.member*, %struct.member** }
%struct.member = type { %struct.anon.1, i8*, i16, i16 }
%struct.anon.1 = type { %struct.member*, %struct.member** }
%struct.privilege_list = type { %struct.privilege*, %struct.privilege** }
%struct.privilege = type { %struct.anon.2, i8*, %struct.member_list, %struct.cmndspec_list, %struct.defaults_list }
%struct.anon.2 = type { %struct.privilege*, %struct.privilege** }
%struct.cmndspec_list = type { %struct.cmndspec*, %struct.cmndspec** }
%struct.cmndspec = type { %struct.anon.3, %struct.member_list*, %struct.member_list*, %struct.member*, %struct.cmndtag, i32, i64, i64, i8*, i8* }
%struct.anon.3 = type { %struct.cmndspec*, %struct.cmndspec** }
%struct.cmndtag = type { i24 }
%struct.comment_list = type { %struct.sudoers_comment*, %struct.sudoers_comment** }
%struct.sudoers_comment = type { %struct.anon.5, i8* }
%struct.anon.5 = type { %struct.sudoers_comment* }
%struct.defaults_list = type { %struct.defaults*, %struct.defaults** }
%struct.defaults = type { %struct.anon.4, i8*, i8*, %struct.member_list*, i8*, i16, i8, i8, i32, i32 }
%struct.anon.4 = type { %struct.defaults*, %struct.defaults** }
%struct.rbtree = type opaque
%struct.sudo_user = type { %struct.timespec, %struct.passwd*, %struct.passwd*, %struct.group*, %struct.stat*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.gid_list*, i8**, i8*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i64, i64 }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gid_list = type { i32, i32* }
%struct.sudo_defs_types = type { i8*, i32, i8*, %struct.def_values*, i1 (%union.sudo_defs_val*)*, %union.sudo_defs_val }
%struct.def_values = type { i8*, i32 }
%union.sudo_defs_val = type { %struct.timespec }
%struct.rlimit = type { i64, i64 }
%struct.iolog_path_escape = type { i8*, i64 (i8*, i64, i8*)* }
%struct.list_member = type { %struct.anon.6, i8* }
%struct.anon.6 = type { %struct.list_member* }
%struct.list_members = type { %struct.list_member* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }

@sudoers_init.ret = internal global i32 -1, align 4, !dbg !0
@sudoers_subsystem_ids = external global [0 x i32], align 4
@__func__.sudoers_init = private unnamed_addr constant [13 x i8] c"sudoers_init\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"./sudoers.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sudoers\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"unable to initialize sudoers default values\00", align 1
@sudo_mode = common hidden global i32 0, align 4, !dbg !214
@snl = internal global %struct.sudo_nss_list* null, align 8, !dbg !218
@sudoers_file = external global i8*, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"problem with defaults entries\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"no valid sudoers sources found, quitting\00", align 1
@sudo_user = common hidden global %struct.sudo_user zeroinitializer, align 8, !dbg !88
@__func__.sudoers_policy_main = private unnamed_addr constant [20 x i8] c"sudoers_policy_main\00", align 1
@sudo_defs_table = external global [0 x %struct.sudo_defs_types], align 8
@.str.7 = private unnamed_addr constant [51 x i8] c"sudoers specifies that root is not allowed to sudo\00", align 1
@NewArgc = common hidden global i32 0, align 4, !dbg !392
@NewArgv = common hidden global i8** null, align 8, !dbg !394
@.str.8 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"unable to allocate memory\00", align 1
@cmnd_status = internal global i32 -1, align 4, !dbg !403
@.str.10 = private unnamed_addr constant [45 x i8] c"user not allowed to override closefrom limit\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"you are not permitted to use the -C option\00", align 1
@unknown_runas_uid = internal global i8 0, align 1, !dbg !388
@.str.12 = private unnamed_addr constant [17 x i8] c"unknown user: %s\00", align 1
@unknown_runas_gid = internal global i8 0, align 1, !dbg !390
@.str.13 = private unnamed_addr constant [18 x i8] c"unknown group: %s\00", align 1
@timestamp_uid = common hidden global i32 0, align 4, !dbg !207
@timestamp_gid = common hidden global i32 0, align 4, !dbg !209
@.str.14 = private unnamed_addr constant [35 x i8] c"timestamp owner (%s): No such user\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"no tty\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"sorry, you must have a tty to run sudo\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"invalid shell for user %s: %s\00", align 1
@prev_user = internal global i8* null, align 8, !dbg !216
@.str.18 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"command in current directory\00", align 1
@.str.20 = private unnamed_addr constant [80 x i8] c"ignoring \22%s\22 found in '.'\0AUse \22sudo ./%s\22 if this is the \22%s\22 you wish to run.\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"%s: command not found\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"user not allowed to set a command timeout\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"sorry, you are not allowed set a command timeout\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"user not allowed to preserve the environment\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"sorry, you are not allowed to preserve the environment\00", align 1
@list_pw = common hidden global %struct.passwd* null, align 8, !dbg !205
@.str.26 = private unnamed_addr constant [42 x i8] c"internal error, unexpected sudo mode 0x%x\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"-bash\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"--login\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"/etc/environment\00", align 1
@__func__.set_cmnd_path = private unnamed_addr constant [14 x i8] c"set_cmnd_path\00", align 1
@__func__.open_sudoers = private unnamed_addr constant [13 x i8] c"open_sudoers\00", align 1
@sudoers_uid = external global i32, align 4
@sudoers_gid = external global i32, align 4
@sudoers_mode = external global i32, align 4
@.str.31 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"unable to open %s\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"unable to read %s\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"unable to stat %s\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"%s is not a regular file\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"%s is owned by uid %u, should be %u\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"%s is world writable\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"%s is owned by gid %u, should be %u\00", align 1
@__func__.sudoers_cleanup = private unnamed_addr constant [16 x i8] c"sudoers_cleanup\00", align 1
@force_umask = common hidden global i8 0, align 1, !dbg !211
@__func__.unlimit_nproc = private unnamed_addr constant [14 x i8] c"unlimit_nproc\00", align 1
@nproclimit = internal global %struct.rlimit zeroinitializer, align 8, !dbg !396
@.str.39 = private unnamed_addr constant [24 x i8] c"getrlimit(RLIMIT_NPROC)\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"setrlimit(RLIMIT_NPROC)\00", align 1
@__func__.check_user_runchroot = private unnamed_addr constant [21 x i8] c"check_user_runchroot\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"def_runchroot %s, user_runchroot %s\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.44 = private unnamed_addr constant [48 x i8] c"user not allowed to change root directory to %s\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"you are not permitted to use the -R option with %s\00", align 1
@__func__.check_user_runcwd = private unnamed_addr constant [18 x i8] c"check_user_runcwd\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"def_runcwd %s, user_runcwd %s, user_cwd %s\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"user not allowed to change directory to %s\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"you are not permitted to use the -D option with %s\00", align 1
@__func__.format_iolog_path = private unnamed_addr constant [18 x i8] c"format_iolog_path\00", align 1
@sudoers_iolog_path_escapes = external global %struct.iolog_path_escape*, align 8
@.str.49 = private unnamed_addr constant [17 x i8] c"iolog_path=%s/%s\00", align 1
@__func__.restore_nproc = private unnamed_addr constant [14 x i8] c"restore_nproc\00", align 1
@__func__.init_vars = private unnamed_addr constant [10 x i8] c"init_vars\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"KRB5CCNAME=\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"PATH=\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"SUDO_PROMPT=\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"SUDO_USER=\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"unknown uid: %u\00", align 1
@__func__.set_callbacks = private unnamed_addr constant [14 x i8] c"set_callbacks\00", align 1
@__func__.cb_fqdn = private unnamed_addr constant [8 x i8] c"cb_fqdn\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"unable to resolve host %s\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"host %s, shost %s, runhost %s, srunhost %s\00", align 1
@__func__.resolve_host = private unnamed_addr constant [13 x i8] c"resolve_host\00", align 1
@__func__.cb_runas_default = private unnamed_addr constant [17 x i8] c"cb_runas_default\00", align 1
@__func__.cb_tty_tickets = private unnamed_addr constant [15 x i8] c"cb_tty_tickets\00", align 1
@__func__.cb_umask = private unnamed_addr constant [9 x i8] c"cb_umask\00", align 1
@__func__.cb_runchroot = private unnamed_addr constant [13 x i8] c"cb_runchroot\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"def_runchroot now %s\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"user_cmnd now %s\00", align 1
@__func__.cb_syslog = private unnamed_addr constant [10 x i8] c"cb_syslog\00", align 1
@__func__.cb_syslog_goodpri = private unnamed_addr constant [18 x i8] c"cb_syslog_goodpri\00", align 1
@__func__.cb_syslog_badpri = private unnamed_addr constant [17 x i8] c"cb_syslog_badpri\00", align 1
@__func__.cb_syslog_maxlen = private unnamed_addr constant [17 x i8] c"cb_syslog_maxlen\00", align 1
@__func__.cb_loglinelen = private unnamed_addr constant [14 x i8] c"cb_loglinelen\00", align 1
@__func__.cb_log_host = private unnamed_addr constant [12 x i8] c"cb_log_host\00", align 1
@__func__.cb_logfile = private unnamed_addr constant [11 x i8] c"cb_logfile\00", align 1
@__func__.cb_log_format = private unnamed_addr constant [14 x i8] c"cb_log_format\00", align 1
@__func__.cb_log_year = private unnamed_addr constant [12 x i8] c"cb_log_year\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"%h %e %T %Y\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"%h %e %T\00", align 1
@__func__.cb_mailerpath = private unnamed_addr constant [14 x i8] c"cb_mailerpath\00", align 1
@__func__.cb_mailerflags = private unnamed_addr constant [15 x i8] c"cb_mailerflags\00", align 1
@__func__.cb_mailfrom = private unnamed_addr constant [12 x i8] c"cb_mailfrom\00", align 1
@__func__.cb_mailto = private unnamed_addr constant [10 x i8] c"cb_mailto\00", align 1
@__func__.cb_mailsub = private unnamed_addr constant [11 x i8] c"cb_mailsub\00", align 1
@__func__.set_runasgr = private unnamed_addr constant [12 x i8] c"set_runasgr\00", align 1
@__func__.set_runaspw = private unnamed_addr constant [12 x i8] c"set_runaspw\00", align 1
@__func__.set_cmnd = private unnamed_addr constant [9 x i8] c"set_cmnd\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"command too long\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"internal error, %s overflow\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"sudoedit\00", align 1
@.str.64 = private unnamed_addr constant [41 x i8] c"sudoedit doesn't need to be run via sudo\00", align 1
@__func__.tty_present = private unnamed_addr constant [12 x i8] c"tty_present\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define hidden i32 @sudoers_init(i8* %0, i8** %1) #0 !dbg !2 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sudo_nss*, align 8
  %7 = alloca %struct.sudo_nss*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !412, metadata !DIExpression()), !dbg !413
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata %struct.sudo_nss** %6, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata %struct.sudo_nss** %7, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata i32* %8, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata i32* %9, metadata !422, metadata !DIExpression()), !dbg !423
  store i32 0, i32* %9, align 4, !dbg !423
  call void @llvm.dbg.declare(metadata i32* %10, metadata !424, metadata !DIExpression()), !dbg !426
  %18 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !426
  store i32 %18, i32* %10, align 4, !dbg !426
  %19 = load i32, i32* %10, align 4, !dbg !426
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sudoers_init, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 160, i32 %19), !dbg !426
  %20 = load i32, i32* @sudoers_init.ret, align 4, !dbg !427
  %21 = icmp eq i32 %20, 1, !dbg !429
  br i1 %21, label %22, label %28, !dbg !430

22:                                               ; preds = %2
  br label %23, !dbg !431

23:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i32* %11, metadata !432, metadata !DIExpression()), !dbg !434
  store i32 1, i32* %11, align 4, !dbg !434
  %24 = load i32, i32* %10, align 4, !dbg !434
  %25 = load i32, i32* %11, align 4, !dbg !434
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sudoers_init, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 163, i32 %24, i32 %25), !dbg !434
  %26 = load i32, i32* %11, align 4, !dbg !434
  store i32 %26, i32* %3, align 4, !dbg !434
  br label %205, !dbg !434

27:                                               ; No predecessors!
  br label %28, !dbg !434

28:                                               ; preds = %27, %2
  %29 = call i8* @bindtextdomain(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !435
  %30 = call i32 @sudo_fatal_callback_register_v1(void ()* @sudoers_cleanup), !dbg !436
  %31 = load i8**, i8*** %5, align 8, !dbg !437
  %32 = call zeroext i1 @env_init(i8** %31), !dbg !439
  br i1 %32, label %39, label %33, !dbg !440

33:                                               ; preds = %28
  br label %34, !dbg !441

34:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %12, metadata !442, metadata !DIExpression()), !dbg !444
  store i32 -1, i32* %12, align 4, !dbg !444
  %35 = load i32, i32* %10, align 4, !dbg !444
  %36 = load i32, i32* %12, align 4, !dbg !444
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sudoers_init, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 172, i32 %35, i32 %36), !dbg !444
  %37 = load i32, i32* %12, align 4, !dbg !444
  store i32 %37, i32* %3, align 4, !dbg !444
  br label %205, !dbg !444

38:                                               ; No predecessors!
  br label %39, !dbg !444

39:                                               ; preds = %38, %28
  %40 = call zeroext i1 @init_defaults(), !dbg !445
  br i1 %40, label %53, label %41, !dbg !447

41:                                               ; preds = %39
  br label %42, !dbg !448

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4, !dbg !450
  %44 = or i32 35, %43, !dbg !450
  %45 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0)), !dbg !450
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sudoers_init, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 176, i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %45), !dbg !450
  %46 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0)), !dbg !450
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %46), !dbg !450
  br label %47, !dbg !450

47:                                               ; preds = %42
  br label %48, !dbg !452

48:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata i32* %13, metadata !453, metadata !DIExpression()), !dbg !455
  store i32 -1, i32* %13, align 4, !dbg !455
  %49 = load i32, i32* %10, align 4, !dbg !455
  %50 = load i32, i32* %13, align 4, !dbg !455
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sudoers_init, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 177, i32 %49, i32 %50), !dbg !455
  %51 = load i32, i32* %13, align 4, !dbg !455
  store i32 %51, i32* %3, align 4, !dbg !455
  br label %205, !dbg !455

52:                                               ; No predecessors!
  br label %53, !dbg !456

53:                                               ; preds = %52, %39
  %54 = load i8*, i8** %4, align 8, !dbg !457
  %55 = call i32 @sudoers_policy_deserialize_info(i8* %54), !dbg !458
  store i32 %55, i32* @sudo_mode, align 4, !dbg !459
  %56 = load i32, i32* @sudo_mode, align 4, !dbg !460
  %57 = and i32 %56, 512, !dbg !460
  %58 = icmp ne i32 %57, 0, !dbg !460
  br i1 %58, label %59, label %65, !dbg !462

59:                                               ; preds = %53
  br label %60, !dbg !463

60:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %14, metadata !464, metadata !DIExpression()), !dbg !466
  store i32 -1, i32* %14, align 4, !dbg !466
  %61 = load i32, i32* %10, align 4, !dbg !466
  %62 = load i32, i32* %14, align 4, !dbg !466
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sudoers_init, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 183, i32 %61, i32 %62), !dbg !466
  %63 = load i32, i32* %14, align 4, !dbg !466
  store i32 %63, i32* %3, align 4, !dbg !466
  br label %205, !dbg !466

64:                                               ; No predecessors!
  br label %65, !dbg !466

65:                                               ; preds = %64, %53
  %66 = load i8**, i8*** %5, align 8, !dbg !467
  %67 = call zeroext i1 @init_vars(i8** %66), !dbg !469
  br i1 %67, label %74, label %68, !dbg !470

68:                                               ; preds = %65
  br label %69, !dbg !471

69:                                               ; preds = %68
  call void @llvm.dbg.declare(metadata i32* %15, metadata !472, metadata !DIExpression()), !dbg !474
  store i32 -1, i32* %15, align 4, !dbg !474
  %70 = load i32, i32* %10, align 4, !dbg !474
  %71 = load i32, i32* %15, align 4, !dbg !474
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sudoers_init, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 186, i32 %70, i32 %71), !dbg !474
  %72 = load i32, i32* %15, align 4, !dbg !474
  store i32 %72, i32* %3, align 4, !dbg !474
  br label %205, !dbg !474

73:                                               ; No predecessors!
  br label %74, !dbg !474

74:                                               ; preds = %73, %65
  %75 = call %struct.sudo_nss_list* @sudo_read_nss(), !dbg !475
  store %struct.sudo_nss_list* %75, %struct.sudo_nss_list** @snl, align 8, !dbg !476
  %76 = call zeroext i1 @set_perms(i32 1), !dbg !477
  br i1 %76, label %83, label %77, !dbg !479

77:                                               ; preds = %74
  br label %78, !dbg !480

78:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata i32* %16, metadata !481, metadata !DIExpression()), !dbg !483
  store i32 -1, i32* %16, align 4, !dbg !483
  %79 = load i32, i32* %10, align 4, !dbg !483
  %80 = load i32, i32* %16, align 4, !dbg !483
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sudoers_init, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 193, i32 %79, i32 %80), !dbg !483
  %81 = load i32, i32* %16, align 4, !dbg !483
  store i32 %81, i32* %3, align 4, !dbg !483
  br label %205, !dbg !483

82:                                               ; No predecessors!
  br label %83, !dbg !483

83:                                               ; preds = %82, %74
  %84 = call zeroext i1 @sudoers_setlocale(i32 1, i32* %8), !dbg !484
  call void @sudo_warn_set_locale_func_v1(i1 (i1, i32*)* @sudoers_warn_setlocale), !dbg !485
  %85 = load i8*, i8** @sudoers_file, align 8, !dbg !486
  %86 = call zeroext i1 @init_parser(i8* %85, i1 zeroext false, i1 zeroext false), !dbg !487
  %87 = load %struct.sudo_nss_list*, %struct.sudo_nss_list** @snl, align 8, !dbg !488
  %88 = getelementptr inbounds %struct.sudo_nss_list, %struct.sudo_nss_list* %87, i32 0, i32 0, !dbg !488
  %89 = load %struct.sudo_nss*, %struct.sudo_nss** %88, align 8, !dbg !488
  store %struct.sudo_nss* %89, %struct.sudo_nss** %6, align 8, !dbg !488
  br label %90, !dbg !488

90:                                               ; preds = %170, %83
  %91 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !490
  %92 = icmp ne %struct.sudo_nss* %91, null, !dbg !490
  br i1 %92, label %93, label %98, !dbg !490

93:                                               ; preds = %90
  %94 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !490
  %95 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %94, i32 0, i32 0, !dbg !490
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %95, i32 0, i32 0, !dbg !490
  %97 = load %struct.sudo_nss*, %struct.sudo_nss** %96, align 8, !dbg !490
  store %struct.sudo_nss* %97, %struct.sudo_nss** %7, align 8, !dbg !490
  br label %98

98:                                               ; preds = %93, %90
  %99 = phi i1 [ false, %90 ], [ true, %93 ], !dbg !492
  br i1 %99, label %100, label %172, !dbg !488

100:                                              ; preds = %98
  %101 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !493
  %102 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %101, i32 0, i32 1, !dbg !496
  %103 = load i32 (%struct.sudo_nss*)*, i32 (%struct.sudo_nss*)** %102, align 8, !dbg !496
  %104 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !497
  %105 = call i32 %103(%struct.sudo_nss* %104), !dbg !493
  %106 = icmp eq i32 %105, -1, !dbg !498
  br i1 %106, label %116, label %107, !dbg !499

107:                                              ; preds = %100
  %108 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !500
  %109 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %108, i32 0, i32 3, !dbg !501
  %110 = load %struct.sudoers_parse_tree* (%struct.sudo_nss*)*, %struct.sudoers_parse_tree* (%struct.sudo_nss*)** %109, align 8, !dbg !501
  %111 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !502
  %112 = call %struct.sudoers_parse_tree* %110(%struct.sudo_nss* %111), !dbg !500
  %113 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !503
  %114 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %113, i32 0, i32 7, !dbg !504
  store %struct.sudoers_parse_tree* %112, %struct.sudoers_parse_tree** %114, align 8, !dbg !505
  %115 = icmp eq %struct.sudoers_parse_tree* %112, null, !dbg !506
  br i1 %115, label %116, label %153, !dbg !507

116:                                              ; preds = %107, %100
  br label %117, !dbg !508

117:                                              ; preds = %116
  br label %118, !dbg !510

118:                                              ; preds = %117
  br label %119, !dbg !512

119:                                              ; preds = %118
  %120 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !514
  %121 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %120, i32 0, i32 0, !dbg !514
  %122 = getelementptr inbounds %struct.anon, %struct.anon* %121, i32 0, i32 0, !dbg !514
  %123 = load %struct.sudo_nss*, %struct.sudo_nss** %122, align 8, !dbg !514
  %124 = icmp ne %struct.sudo_nss* %123, null, !dbg !514
  br i1 %124, label %125, label %136, !dbg !510

125:                                              ; preds = %119
  %126 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !514
  %127 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %126, i32 0, i32 0, !dbg !514
  %128 = getelementptr inbounds %struct.anon, %struct.anon* %127, i32 0, i32 1, !dbg !514
  %129 = load %struct.sudo_nss**, %struct.sudo_nss*** %128, align 8, !dbg !514
  %130 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !514
  %131 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %130, i32 0, i32 0, !dbg !514
  %132 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 0, !dbg !514
  %133 = load %struct.sudo_nss*, %struct.sudo_nss** %132, align 8, !dbg !514
  %134 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %133, i32 0, i32 0, !dbg !514
  %135 = getelementptr inbounds %struct.anon, %struct.anon* %134, i32 0, i32 1, !dbg !514
  store %struct.sudo_nss** %129, %struct.sudo_nss*** %135, align 8, !dbg !514
  br label %143, !dbg !514

136:                                              ; preds = %119
  %137 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !516
  %138 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %137, i32 0, i32 0, !dbg !516
  %139 = getelementptr inbounds %struct.anon, %struct.anon* %138, i32 0, i32 1, !dbg !516
  %140 = load %struct.sudo_nss**, %struct.sudo_nss*** %139, align 8, !dbg !516
  %141 = load %struct.sudo_nss_list*, %struct.sudo_nss_list** @snl, align 8, !dbg !516
  %142 = getelementptr inbounds %struct.sudo_nss_list, %struct.sudo_nss_list* %141, i32 0, i32 1, !dbg !516
  store %struct.sudo_nss** %140, %struct.sudo_nss*** %142, align 8, !dbg !516
  br label %143

143:                                              ; preds = %136, %125
  %144 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !510
  %145 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %144, i32 0, i32 0, !dbg !510
  %146 = getelementptr inbounds %struct.anon, %struct.anon* %145, i32 0, i32 0, !dbg !510
  %147 = load %struct.sudo_nss*, %struct.sudo_nss** %146, align 8, !dbg !510
  %148 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !510
  %149 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %148, i32 0, i32 0, !dbg !510
  %150 = getelementptr inbounds %struct.anon, %struct.anon* %149, i32 0, i32 1, !dbg !510
  %151 = load %struct.sudo_nss**, %struct.sudo_nss*** %150, align 8, !dbg !510
  store %struct.sudo_nss* %147, %struct.sudo_nss** %151, align 8, !dbg !510
  br label %152, !dbg !510

152:                                              ; preds = %143
  br label %170, !dbg !518

153:                                              ; preds = %107
  %154 = load i32, i32* %9, align 4, !dbg !519
  %155 = add nsw i32 %154, 1, !dbg !519
  store i32 %155, i32* %9, align 4, !dbg !519
  %156 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !520
  %157 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %156, i32 0, i32 5, !dbg !522
  %158 = load i32 (%struct.sudo_nss*)*, i32 (%struct.sudo_nss*)** %157, align 8, !dbg !522
  %159 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !523
  %160 = call i32 %158(%struct.sudo_nss* %159), !dbg !520
  %161 = icmp eq i32 %160, -1, !dbg !524
  br i1 %161, label %167, label %162, !dbg !525

162:                                              ; preds = %153
  %163 = load %struct.sudo_nss*, %struct.sudo_nss** %6, align 8, !dbg !526
  %164 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %163, i32 0, i32 7, !dbg !527
  %165 = load %struct.sudoers_parse_tree*, %struct.sudoers_parse_tree** %164, align 8, !dbg !527
  %166 = call zeroext i1 @update_defaults(%struct.sudoers_parse_tree* %165, %struct.defaults_list* null, i32 15, i1 zeroext false), !dbg !528
  br i1 %166, label %169, label %167, !dbg !529

167:                                              ; preds = %162, %153
  %168 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0)), !dbg !530
  br label %169, !dbg !532

169:                                              ; preds = %167, %162
  br label %170, !dbg !533

170:                                              ; preds = %169, %152
  %171 = load %struct.sudo_nss*, %struct.sudo_nss** %7, align 8, !dbg !490
  store %struct.sudo_nss* %171, %struct.sudo_nss** %6, align 8, !dbg !490
  br label %90, !dbg !490, !llvm.loop !534

172:                                              ; preds = %98
  %173 = load i32, i32* %9, align 4, !dbg !536
  %174 = icmp eq i32 %173, 0, !dbg !538
  br i1 %174, label %175, label %182, !dbg !539

175:                                              ; preds = %172
  br label %176, !dbg !540

176:                                              ; preds = %175
  %177 = load i32, i32* %10, align 4, !dbg !542
  %178 = or i32 35, %177, !dbg !542
  %179 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0)), !dbg !542
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sudoers_init, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 216, i32 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %179), !dbg !542
  %180 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0)), !dbg !542
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %180), !dbg !542
  br label %181, !dbg !542

181:                                              ; preds = %176
  br label %194, !dbg !544

182:                                              ; preds = %172
  %183 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !545
  %184 = icmp ne %struct.passwd* %183, null, !dbg !545
  br i1 %184, label %185, label %187, !dbg !545

185:                                              ; preds = %182
  %186 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !547
  br label %189, !dbg !545

187:                                              ; preds = %182
  %188 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !548
  br label %189, !dbg !545

189:                                              ; preds = %187, %185
  %190 = phi %struct.passwd* [ %186, %185 ], [ %188, %187 ], !dbg !545
  %191 = call zeroext i1 @set_loginclass(%struct.passwd* %190), !dbg !549
  br i1 %191, label %192, label %193, !dbg !550

192:                                              ; preds = %189
  store i32 1, i32* @sudoers_init.ret, align 4, !dbg !551
  br label %193, !dbg !552

193:                                              ; preds = %192, %189
  br label %194, !dbg !553

194:                                              ; preds = %193, %181
  call void @llvm.dbg.label(metadata !554), !dbg !555
  %195 = call zeroext i1 @restore_perms(), !dbg !556
  br i1 %195, label %197, label %196, !dbg !558

196:                                              ; preds = %194
  store i32 -1, i32* @sudoers_init.ret, align 4, !dbg !559
  br label %197, !dbg !560

197:                                              ; preds = %196, %194
  call void @sudo_warn_set_locale_func_v1(i1 (i1, i32*)* null), !dbg !561
  %198 = load i32, i32* %8, align 4, !dbg !562
  %199 = call zeroext i1 @sudoers_setlocale(i32 %198, i32* null), !dbg !563
  br label %200, !dbg !564

200:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i32* %17, metadata !565, metadata !DIExpression()), !dbg !567
  %201 = load i32, i32* @sudoers_init.ret, align 4, !dbg !567
  store i32 %201, i32* %17, align 4, !dbg !567
  %202 = load i32, i32* %10, align 4, !dbg !567
  %203 = load i32, i32* %17, align 4, !dbg !567
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sudoers_init, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 232, i32 %202, i32 %203), !dbg !567
  %204 = load i32, i32* %17, align 4, !dbg !567
  store i32 %204, i32* %3, align 4, !dbg !567
  br label %205, !dbg !567

205:                                              ; preds = %23, %34, %48, %60, %69, %78, %200
  %206 = load i32, i32* %3, align 4, !dbg !568
  ret i32 %206, !dbg !568
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @sudo_debug_enter_v1(i8*, i8*, i32, i32) #2

declare void @sudo_debug_exit_int_v1(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

declare i32 @sudo_fatal_callback_register_v1(void ()*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define hidden void @sudoers_cleanup() #0 !dbg !569 {
  %1 = alloca %struct.sudo_nss*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.sudo_nss** %1, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata i32* %2, metadata !574, metadata !DIExpression()), !dbg !575
  %3 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !575
  store i32 %3, i32* %2, align 4, !dbg !575
  %4 = load i32, i32* %2, align 4, !dbg !575
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.sudoers_cleanup, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1632, i32 %4), !dbg !575
  %5 = load %struct.sudo_nss_list*, %struct.sudo_nss_list** @snl, align 8, !dbg !576
  %6 = icmp ne %struct.sudo_nss_list* %5, null, !dbg !578
  br i1 %6, label %7, label %26, !dbg !579

7:                                                ; preds = %0
  %8 = load %struct.sudo_nss_list*, %struct.sudo_nss_list** @snl, align 8, !dbg !580
  %9 = getelementptr inbounds %struct.sudo_nss_list, %struct.sudo_nss_list* %8, i32 0, i32 0, !dbg !580
  %10 = load %struct.sudo_nss*, %struct.sudo_nss** %9, align 8, !dbg !580
  store %struct.sudo_nss* %10, %struct.sudo_nss** %1, align 8, !dbg !580
  br label %11, !dbg !580

11:                                               ; preds = %20, %7
  %12 = load %struct.sudo_nss*, %struct.sudo_nss** %1, align 8, !dbg !583
  %13 = icmp ne %struct.sudo_nss* %12, null, !dbg !580
  br i1 %13, label %14, label %25, !dbg !580

14:                                               ; preds = %11
  %15 = load %struct.sudo_nss*, %struct.sudo_nss** %1, align 8, !dbg !585
  %16 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %15, i32 0, i32 2, !dbg !587
  %17 = load i32 (%struct.sudo_nss*)*, i32 (%struct.sudo_nss*)** %16, align 8, !dbg !587
  %18 = load %struct.sudo_nss*, %struct.sudo_nss** %1, align 8, !dbg !588
  %19 = call i32 %17(%struct.sudo_nss* %18), !dbg !585
  br label %20, !dbg !589

20:                                               ; preds = %14
  %21 = load %struct.sudo_nss*, %struct.sudo_nss** %1, align 8, !dbg !583
  %22 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %21, i32 0, i32 0, !dbg !583
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0, !dbg !583
  %24 = load %struct.sudo_nss*, %struct.sudo_nss** %23, align 8, !dbg !583
  store %struct.sudo_nss* %24, %struct.sudo_nss** %1, align 8, !dbg !583
  br label %11, !dbg !583, !llvm.loop !590

25:                                               ; preds = %11
  br label %26, !dbg !592

26:                                               ; preds = %25, %0
  %27 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 78, i32 5) to i8**), align 8, !dbg !593
  %28 = icmp ne i8* %27, null, !dbg !593
  br i1 %28, label %29, label %30, !dbg !595

29:                                               ; preds = %26
  call void @group_plugin_unload(), !dbg !596
  br label %30, !dbg !596

30:                                               ; preds = %29, %26
  call void @sudo_freepwcache(), !dbg !597
  call void @sudo_freegrcache(), !dbg !598
  br label %31, !dbg !599

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4, !dbg !600
  call void @sudo_debug_exit_v1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.sudoers_cleanup, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1644, i32 %32), !dbg !600
  br label %33, !dbg !600

33:                                               ; preds = %31
  ret void, !dbg !602
}

declare zeroext i1 @env_init(i8**) #2

declare zeroext i1 @init_defaults() #2

declare void @sudo_debug_printf2_v1(i8*, i8*, i32, i32, i8*, ...) #2

declare i8* @sudo_warn_gettext_v1(i8*, i8*) #2

declare void @sudo_warnx_nodebug_v1(i8*, ...) #2

declare i32 @sudoers_policy_deserialize_info(i8*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @init_vars(i8** %0) #0 !dbg !603 {
  %2 = alloca i1, align 1
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !606, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.declare(metadata i8* %5, metadata !610, metadata !DIExpression()), !dbg !611
  store i8 0, i8* %5, align 1, !dbg !611
  call void @llvm.dbg.declare(metadata i32* %6, metadata !612, metadata !DIExpression()), !dbg !613
  %15 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !613
  store i32 %15, i32* %6, align 4, !dbg !613
  %16 = load i32, i32* %6, align 4, !dbg !613
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 789, i32 %16), !dbg !613
  %17 = call i8* @setlocale(i32 6, i8* null) #7, !dbg !614
  %18 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 69, i32 5) to i8**), align 8, !dbg !616
  %19 = call zeroext i1 @sudoers_initlocale(i8* %17, i8* %18), !dbg !617
  br i1 %19, label %36, label %20, !dbg !618

20:                                               ; preds = %1
  br label %21, !dbg !619

21:                                               ; preds = %20
  %22 = load i32, i32* %6, align 4, !dbg !621
  %23 = or i32 35, %22, !dbg !621
  %24 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !621
  %25 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !621
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 792, i32 %23, i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* %25), !dbg !621
  %26 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !621
  %27 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !621
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* %27), !dbg !621
  br label %28, !dbg !621

28:                                               ; preds = %21
  br label %29, !dbg !623

29:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %7, metadata !624, metadata !DIExpression()), !dbg !626
  store i8 0, i8* %7, align 1, !dbg !626
  %30 = load i32, i32* %6, align 4, !dbg !626
  %31 = load i8, i8* %7, align 1, !dbg !626
  %32 = trunc i8 %31 to i1, !dbg !626
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 793, i32 %30, i1 zeroext %32), !dbg !626
  %33 = load i8, i8* %7, align 1, !dbg !626
  %34 = trunc i8 %33 to i1, !dbg !626
  store i1 %34, i1* %2, align 1, !dbg !626
  br label %249, !dbg !626

35:                                               ; No predecessors!
  br label %36, !dbg !627

36:                                               ; preds = %35, %1
  %37 = load i8**, i8*** %3, align 8, !dbg !628
  store i8** %37, i8*** %4, align 8, !dbg !630
  br label %38, !dbg !631

38:                                               ; preds = %123, %36
  %39 = load i8**, i8*** %4, align 8, !dbg !632
  %40 = load i8*, i8** %39, align 8, !dbg !634
  %41 = icmp ne i8* %40, null, !dbg !635
  br i1 %41, label %42, label %126, !dbg !635

42:                                               ; preds = %38
  %43 = load i8**, i8*** %4, align 8, !dbg !636
  %44 = load i8*, i8** %43, align 8, !dbg !638
  %45 = load i8, i8* %44, align 1, !dbg !639
  %46 = sext i8 %45 to i32, !dbg !639
  switch i32 %46, label %122 [
    i32 75, label %47
    i32 80, label %65
    i32 83, label %83
  ], !dbg !640

47:                                               ; preds = %42
  %48 = load i8**, i8*** %4, align 8, !dbg !641
  %49 = load i8*, i8** %48, align 8, !dbg !641
  %50 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i64 11) #8, !dbg !641
  %51 = icmp eq i32 %50, 0, !dbg !641
  br i1 %51, label %52, label %64, !dbg !641

52:                                               ; preds = %47
  %53 = load i8**, i8*** %4, align 8, !dbg !641
  %54 = load i8*, i8** %53, align 8, !dbg !641
  %55 = getelementptr inbounds i8, i8* %54, i64 11, !dbg !641
  %56 = load i8, i8* %55, align 1, !dbg !641
  %57 = sext i8 %56 to i32, !dbg !641
  %58 = icmp ne i32 %57, 0, !dbg !641
  br i1 %58, label %59, label %64, !dbg !644

59:                                               ; preds = %52
  %60 = load i8**, i8*** %4, align 8, !dbg !645
  %61 = load i8*, i8** %60, align 8, !dbg !646
  %62 = getelementptr inbounds i8, i8* %61, i64 12, !dbg !647
  %63 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !648
  store i8* %63, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 24), align 8, !dbg !649
  br label %64, !dbg !650

64:                                               ; preds = %59, %52, %47
  br label %122, !dbg !651

65:                                               ; preds = %42
  %66 = load i8**, i8*** %4, align 8, !dbg !652
  %67 = load i8*, i8** %66, align 8, !dbg !652
  %68 = call i32 @strncmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i64 5) #8, !dbg !652
  %69 = icmp eq i32 %68, 0, !dbg !652
  br i1 %69, label %70, label %82, !dbg !652

70:                                               ; preds = %65
  %71 = load i8**, i8*** %4, align 8, !dbg !652
  %72 = load i8*, i8** %71, align 8, !dbg !652
  %73 = getelementptr inbounds i8, i8* %72, i64 5, !dbg !652
  %74 = load i8, i8* %73, align 1, !dbg !652
  %75 = sext i8 %74 to i32, !dbg !652
  %76 = icmp ne i32 %75, 0, !dbg !652
  br i1 %76, label %77, label %82, !dbg !654

77:                                               ; preds = %70
  %78 = load i8**, i8*** %4, align 8, !dbg !655
  %79 = load i8*, i8** %78, align 8, !dbg !656
  %80 = getelementptr inbounds i8, i8* %79, i64 6, !dbg !657
  %81 = getelementptr inbounds i8, i8* %80, i64 -1, !dbg !658
  store i8* %81, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 9), align 8, !dbg !659
  br label %82, !dbg !660

82:                                               ; preds = %77, %70, %65
  br label %122, !dbg !661

83:                                               ; preds = %42
  %84 = load i8**, i8*** %4, align 8, !dbg !662
  %85 = load i8*, i8** %84, align 8, !dbg !662
  %86 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i64 12) #8, !dbg !662
  %87 = icmp eq i32 %86, 0, !dbg !662
  br i1 %87, label %88, label %104, !dbg !662

88:                                               ; preds = %83
  %89 = load i8**, i8*** %4, align 8, !dbg !662
  %90 = load i8*, i8** %89, align 8, !dbg !662
  %91 = getelementptr inbounds i8, i8* %90, i64 12, !dbg !662
  %92 = load i8, i8* %91, align 1, !dbg !662
  %93 = sext i8 %92 to i32, !dbg !662
  %94 = icmp ne i32 %93, 0, !dbg !662
  br i1 %94, label %95, label %104, !dbg !664

95:                                               ; preds = %88
  %96 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 18), align 8, !dbg !665
  %97 = icmp eq i8* %96, null, !dbg !668
  br i1 %97, label %98, label %103, !dbg !669

98:                                               ; preds = %95
  %99 = load i8**, i8*** %4, align 8, !dbg !670
  %100 = load i8*, i8** %99, align 8, !dbg !671
  %101 = getelementptr inbounds i8, i8* %100, i64 13, !dbg !672
  %102 = getelementptr inbounds i8, i8* %101, i64 -1, !dbg !673
  store i8* %102, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 18), align 8, !dbg !674
  br label %103, !dbg !675

103:                                              ; preds = %98, %95
  br label %122, !dbg !676

104:                                              ; preds = %88, %83
  %105 = load i8**, i8*** %4, align 8, !dbg !677
  %106 = load i8*, i8** %105, align 8, !dbg !677
  %107 = call i32 @strncmp(i8* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i64 10) #8, !dbg !677
  %108 = icmp eq i32 %107, 0, !dbg !677
  br i1 %108, label %109, label %121, !dbg !677

109:                                              ; preds = %104
  %110 = load i8**, i8*** %4, align 8, !dbg !677
  %111 = load i8*, i8** %110, align 8, !dbg !677
  %112 = getelementptr inbounds i8, i8* %111, i64 10, !dbg !677
  %113 = load i8, i8* %112, align 1, !dbg !677
  %114 = sext i8 %113 to i32, !dbg !677
  %115 = icmp ne i32 %114, 0, !dbg !677
  br i1 %115, label %116, label %121, !dbg !679

116:                                              ; preds = %109
  %117 = load i8**, i8*** %4, align 8, !dbg !680
  %118 = load i8*, i8** %117, align 8, !dbg !681
  %119 = getelementptr inbounds i8, i8* %118, i64 11, !dbg !682
  %120 = getelementptr inbounds i8, i8* %119, i64 -1, !dbg !683
  store i8* %120, i8** @prev_user, align 8, !dbg !684
  br label %121, !dbg !685

121:                                              ; preds = %116, %109, %104
  br label %122, !dbg !686

122:                                              ; preds = %42, %121, %103, %82, %64
  br label %123, !dbg !687

123:                                              ; preds = %122
  %124 = load i8**, i8*** %4, align 8, !dbg !688
  %125 = getelementptr inbounds i8*, i8** %124, i32 1, !dbg !688
  store i8** %125, i8*** %4, align 8, !dbg !688
  br label %38, !dbg !689, !llvm.loop !690

126:                                              ; preds = %38
  %127 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !692
  %128 = icmp eq %struct.passwd* %127, null, !dbg !694
  br i1 %128, label %129, label %161, !dbg !695

129:                                              ; preds = %126
  %130 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 6), align 8, !dbg !696
  %131 = call %struct.passwd* @sudo_getpwnam(i8* %130), !dbg !699
  store %struct.passwd* %131, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !700
  %132 = icmp eq %struct.passwd* %131, null, !dbg !701
  br i1 %132, label %133, label %160, !dbg !702

133:                                              ; preds = %129
  %134 = load i32, i32* @sudo_mode, align 4, !dbg !703
  %135 = icmp eq i32 %134, 16, !dbg !706
  br i1 %135, label %139, label %136, !dbg !707

136:                                              ; preds = %133
  %137 = load i32, i32* @sudo_mode, align 4, !dbg !708
  %138 = icmp eq i32 %137, 8, !dbg !709
  br i1 %138, label %139, label %155, !dbg !710

139:                                              ; preds = %136, %133
  br label %140, !dbg !711

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4, !dbg !713
  %142 = or i32 35, %141, !dbg !713
  %143 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0)), !dbg !713
  %144 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 39), align 4, !dbg !713
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 835, i32 %142, i8* %143, i32 %144), !dbg !713
  %145 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0)), !dbg !713
  %146 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 39), align 4, !dbg !713
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %145, i32 %146), !dbg !713
  br label %147, !dbg !713

147:                                              ; preds = %140
  br label %148, !dbg !715

148:                                              ; preds = %147
  call void @llvm.dbg.declare(metadata i8* %8, metadata !716, metadata !DIExpression()), !dbg !718
  store i8 0, i8* %8, align 1, !dbg !718
  %149 = load i32, i32* %6, align 4, !dbg !718
  %150 = load i8, i8* %8, align 1, !dbg !718
  %151 = trunc i8 %150 to i1, !dbg !718
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 836, i32 %149, i1 zeroext %151), !dbg !718
  %152 = load i8, i8* %8, align 1, !dbg !718
  %153 = trunc i8 %152 to i1, !dbg !718
  store i1 %153, i1* %2, align 1, !dbg !718
  br label %249, !dbg !718

154:                                              ; No predecessors!
  br label %155, !dbg !719

155:                                              ; preds = %154, %136
  %156 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 6), align 8, !dbg !720
  %157 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 39), align 4, !dbg !721
  %158 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 40), align 8, !dbg !722
  %159 = call %struct.passwd* @sudo_mkpwent(i8* %156, i32 %157, i32 %158, i8* null, i8* null), !dbg !723
  store %struct.passwd* %159, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !724
  store i8 1, i8* %5, align 1, !dbg !725
  br label %160, !dbg !726

160:                                              ; preds = %155, %129
  br label %161, !dbg !727

161:                                              ; preds = %160, %126
  %162 = load %struct.gid_list*, %struct.gid_list** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 25), align 8, !dbg !728
  %163 = icmp eq %struct.gid_list* %162, null, !dbg !730
  br i1 %163, label %164, label %167, !dbg !731

164:                                              ; preds = %161
  %165 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !732
  %166 = call %struct.gid_list* @sudo_get_gidlist(%struct.passwd* %165, i32 0), !dbg !733
  store %struct.gid_list* %166, %struct.gid_list** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 25), align 8, !dbg !734
  br label %167, !dbg !735

167:                                              ; preds = %164, %161
  %168 = call zeroext i1 @set_perms(i32 0), !dbg !736
  br i1 %168, label %177, label %169, !dbg !738

169:                                              ; preds = %167
  br label %170, !dbg !739

170:                                              ; preds = %169
  call void @llvm.dbg.declare(metadata i8* %9, metadata !740, metadata !DIExpression()), !dbg !742
  store i8 0, i8* %9, align 1, !dbg !742
  %171 = load i32, i32* %6, align 4, !dbg !742
  %172 = load i8, i8* %9, align 1, !dbg !742
  %173 = trunc i8 %172 to i1, !dbg !742
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 849, i32 %171, i1 zeroext %173), !dbg !742
  %174 = load i8, i8* %9, align 1, !dbg !742
  %175 = trunc i8 %174 to i1, !dbg !742
  store i1 %175, i1* %2, align 1, !dbg !742
  br label %249, !dbg !742

176:                                              ; No predecessors!
  br label %177, !dbg !742

177:                                              ; preds = %176, %167
  call void @set_callbacks(), !dbg !743
  %178 = load i8, i8* %5, align 1, !dbg !744
  %179 = trunc i8 %178 to i1, !dbg !744
  br i1 %179, label %180, label %190, !dbg !746

180:                                              ; preds = %177
  %181 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 39), align 4, !dbg !747
  %182 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i32 %181), !dbg !749
  br label %183, !dbg !750

183:                                              ; preds = %180
  call void @llvm.dbg.declare(metadata i8* %10, metadata !751, metadata !DIExpression()), !dbg !753
  store i8 0, i8* %10, align 1, !dbg !753
  %184 = load i32, i32* %6, align 4, !dbg !753
  %185 = load i8, i8* %10, align 1, !dbg !753
  %186 = trunc i8 %185 to i1, !dbg !753
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 858, i32 %184, i1 zeroext %186), !dbg !753
  %187 = load i8, i8* %10, align 1, !dbg !753
  %188 = trunc i8 %187 to i1, !dbg !753
  store i1 %188, i1* %2, align 1, !dbg !753
  br label %249, !dbg !753

189:                                              ; No predecessors!
  br label %190, !dbg !754

190:                                              ; preds = %189, %177
  %191 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 8), align 8, !dbg !755
  %192 = icmp ne i8* %191, null, !dbg !757
  br i1 %192, label %193, label %223, !dbg !758

193:                                              ; preds = %190
  %194 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 8), align 8, !dbg !759
  %195 = call zeroext i1 @set_runasgr(i8* %194, i1 zeroext false), !dbg !762
  br i1 %195, label %204, label %196, !dbg !763

196:                                              ; preds = %193
  br label %197, !dbg !764

197:                                              ; preds = %196
  call void @llvm.dbg.declare(metadata i8* %11, metadata !765, metadata !DIExpression()), !dbg !767
  store i8 0, i8* %11, align 1, !dbg !767
  %198 = load i32, i32* %6, align 4, !dbg !767
  %199 = load i8, i8* %11, align 1, !dbg !767
  %200 = trunc i8 %199 to i1, !dbg !767
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 868, i32 %198, i1 zeroext %200), !dbg !767
  %201 = load i8, i8* %11, align 1, !dbg !767
  %202 = trunc i8 %201 to i1, !dbg !767
  store i1 %202, i1* %2, align 1, !dbg !767
  br label %249, !dbg !767

203:                                              ; No predecessors!
  br label %204, !dbg !767

204:                                              ; preds = %203, %193
  %205 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 7), align 8, !dbg !768
  %206 = icmp ne i8* %205, null, !dbg !770
  br i1 %206, label %207, label %209, !dbg !770

207:                                              ; preds = %204
  %208 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 7), align 8, !dbg !771
  br label %211, !dbg !770

209:                                              ; preds = %204
  %210 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 6), align 8, !dbg !772
  br label %211, !dbg !770

211:                                              ; preds = %209, %207
  %212 = phi i8* [ %208, %207 ], [ %210, %209 ], !dbg !770
  %213 = call zeroext i1 @set_runaspw(i8* %212, i1 zeroext false), !dbg !773
  br i1 %213, label %222, label %214, !dbg !774

214:                                              ; preds = %211
  br label %215, !dbg !775

215:                                              ; preds = %214
  call void @llvm.dbg.declare(metadata i8* %12, metadata !776, metadata !DIExpression()), !dbg !778
  store i8 0, i8* %12, align 1, !dbg !778
  %216 = load i32, i32* %6, align 4, !dbg !778
  %217 = load i8, i8* %12, align 1, !dbg !778
  %218 = trunc i8 %217 to i1, !dbg !778
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 871, i32 %216, i1 zeroext %218), !dbg !778
  %219 = load i8, i8* %12, align 1, !dbg !778
  %220 = trunc i8 %219 to i1, !dbg !778
  store i1 %220, i1* %2, align 1, !dbg !778
  br label %249, !dbg !778

221:                                              ; No predecessors!
  br label %222, !dbg !778

222:                                              ; preds = %221, %211
  br label %242, !dbg !779

223:                                              ; preds = %190
  %224 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 7), align 8, !dbg !780
  %225 = icmp ne i8* %224, null, !dbg !783
  br i1 %225, label %226, label %228, !dbg !783

226:                                              ; preds = %223
  %227 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 7), align 8, !dbg !784
  br label %230, !dbg !783

228:                                              ; preds = %223
  %229 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 51, i32 5) to i8**), align 8, !dbg !785
  br label %230, !dbg !783

230:                                              ; preds = %228, %226
  %231 = phi i8* [ %227, %226 ], [ %229, %228 ], !dbg !783
  %232 = call zeroext i1 @set_runaspw(i8* %231, i1 zeroext false), !dbg !786
  br i1 %232, label %241, label %233, !dbg !787

233:                                              ; preds = %230
  br label %234, !dbg !788

234:                                              ; preds = %233
  call void @llvm.dbg.declare(metadata i8* %13, metadata !789, metadata !DIExpression()), !dbg !791
  store i8 0, i8* %13, align 1, !dbg !791
  %235 = load i32, i32* %6, align 4, !dbg !791
  %236 = load i8, i8* %13, align 1, !dbg !791
  %237 = trunc i8 %236 to i1, !dbg !791
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 875, i32 %235, i1 zeroext %237), !dbg !791
  %238 = load i8, i8* %13, align 1, !dbg !791
  %239 = trunc i8 %238 to i1, !dbg !791
  store i1 %239, i1* %2, align 1, !dbg !791
  br label %249, !dbg !791

240:                                              ; No predecessors!
  br label %241, !dbg !791

241:                                              ; preds = %240, %230
  br label %242

242:                                              ; preds = %241, %222
  br label %243, !dbg !792

243:                                              ; preds = %242
  call void @llvm.dbg.declare(metadata i8* %14, metadata !793, metadata !DIExpression()), !dbg !795
  store i8 1, i8* %14, align 1, !dbg !795
  %244 = load i32, i32* %6, align 4, !dbg !795
  %245 = load i8, i8* %14, align 1, !dbg !795
  %246 = trunc i8 %245 to i1, !dbg !795
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.init_vars, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 878, i32 %244, i1 zeroext %246), !dbg !795
  %247 = load i8, i8* %14, align 1, !dbg !795
  %248 = trunc i8 %247 to i1, !dbg !795
  store i1 %248, i1* %2, align 1, !dbg !795
  br label %249, !dbg !795

249:                                              ; preds = %29, %148, %170, %183, %197, %215, %234, %243
  %250 = load i1, i1* %2, align 1, !dbg !796
  ret i1 %250, !dbg !796
}

declare %struct.sudo_nss_list* @sudo_read_nss() #2

declare zeroext i1 @set_perms(i32) #2

declare zeroext i1 @sudoers_setlocale(i32, i32*) #2

declare void @sudo_warn_set_locale_func_v1(i1 (i1, i32*)*) #2

declare zeroext i1 @sudoers_warn_setlocale(i1 zeroext, i32*) #2

declare zeroext i1 @init_parser(i8*, i1 zeroext, i1 zeroext) #2

declare zeroext i1 @update_defaults(%struct.sudoers_parse_tree*, %struct.defaults_list*, i32, i1 zeroext) #2

declare zeroext i1 @log_warningx(i32, i8*, ...) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @set_loginclass(%struct.passwd* %0) #0 !dbg !797 {
  %2 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %2, metadata !800, metadata !DIExpression()), !dbg !801
  ret i1 true, !dbg !802
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare zeroext i1 @restore_perms() #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define hidden i32 @sudoers_policy_main(i32 %0, i8** %1, i32 %2, i8** %3, i1 zeroext %4, i8* %5) #0 !dbg !803 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sudo_nss*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.passwd*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.passwd*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !806, metadata !DIExpression()), !dbg !807
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !808, metadata !DIExpression()), !dbg !809
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !810, metadata !DIExpression()), !dbg !811
  store i8** %3, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !812, metadata !DIExpression()), !dbg !813
  %29 = zext i1 %4 to i8
  store i8 %29, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !814, metadata !DIExpression()), !dbg !815
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !816, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata i8** %13, metadata !818, metadata !DIExpression()), !dbg !819
  store i8* null, i8** %13, align 8, !dbg !819
  call void @llvm.dbg.declare(metadata i32* %14, metadata !820, metadata !DIExpression()), !dbg !821
  store i32 511, i32* %14, align 4, !dbg !821
  call void @llvm.dbg.declare(metadata %struct.sudo_nss** %15, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata i32* %16, metadata !824, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.declare(metadata i32* %17, metadata !826, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.declare(metadata i32* %18, metadata !828, metadata !DIExpression()), !dbg !829
  store i32 -1, i32* %18, align 4, !dbg !829
  call void @llvm.dbg.declare(metadata i32* %19, metadata !830, metadata !DIExpression()), !dbg !831
  %30 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !831
  store i32 %30, i32* %19, align 4, !dbg !831
  %31 = load i32, i32* %19, align 4, !dbg !831
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 339, i32 %31), !dbg !831
  call void @sudo_warn_set_locale_func_v1(i1 (i1, i32*)* @sudoers_warn_setlocale), !dbg !832
  call void @unlimit_nproc(), !dbg !833
  %32 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 39), align 4, !dbg !834
  %33 = icmp eq i32 %32, 0, !dbg !836
  br i1 %33, label %34, label %44, !dbg !837

34:                                               ; preds = %6
  %35 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 15, i32 5) to i32*), align 8, !dbg !838
  %36 = icmp ne i32 %35, 0, !dbg !838
  br i1 %36, label %44, label %37, !dbg !839

37:                                               ; preds = %34
  br label %38, !dbg !840

38:                                               ; preds = %37
  %39 = load i32, i32* %19, align 4, !dbg !842
  %40 = or i32 35, %39, !dbg !842
  %41 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0)), !dbg !842
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 349, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %41), !dbg !842
  %42 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0)), !dbg !842
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %42), !dbg !842
  br label %43, !dbg !842

43:                                               ; preds = %38
  br label %737, !dbg !844

44:                                               ; preds = %34, %6
  %45 = call zeroext i1 @set_perms(i32 0), !dbg !845
  br i1 %45, label %47, label %46, !dbg !847

46:                                               ; preds = %44
  br label %737, !dbg !848

47:                                               ; preds = %44
  %48 = load i8**, i8*** %10, align 8, !dbg !849
  %49 = icmp ne i8** %48, null, !dbg !851
  br i1 %49, label %50, label %57, !dbg !852

50:                                               ; preds = %47
  %51 = load i8**, i8*** %10, align 8, !dbg !853
  %52 = getelementptr inbounds i8*, i8** %51, i64 0, !dbg !853
  %53 = load i8*, i8** %52, align 8, !dbg !853
  %54 = icmp ne i8* %53, null, !dbg !854
  br i1 %54, label %55, label %57, !dbg !855

55:                                               ; preds = %50
  %56 = load i8**, i8*** %10, align 8, !dbg !856
  store i8** %56, i8*** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 26), align 8, !dbg !857
  br label %57, !dbg !858

57:                                               ; preds = %55, %50, %47
  %58 = load i32, i32* %7, align 4, !dbg !859
  %59 = icmp eq i32 %58, 0, !dbg !861
  br i1 %59, label %60, label %86, !dbg !862

60:                                               ; preds = %57
  store i32 1, i32* @NewArgc, align 4, !dbg !863
  %61 = load i32, i32* @NewArgc, align 4, !dbg !865
  %62 = add nsw i32 %61, 1, !dbg !866
  %63 = sext i32 %62 to i64, !dbg !865
  %64 = call i8* @reallocarray(i8* null, i64 %63, i64 8) #7, !dbg !867
  %65 = bitcast i8* %64 to i8**, !dbg !867
  store i8** %65, i8*** @NewArgv, align 8, !dbg !868
  %66 = load i8**, i8*** @NewArgv, align 8, !dbg !869
  %67 = icmp eq i8** %66, null, !dbg !871
  br i1 %67, label %68, label %77, !dbg !872

68:                                               ; preds = %60
  br label %69, !dbg !873

69:                                               ; preds = %68
  %70 = load i32, i32* %19, align 4, !dbg !875
  %71 = or i32 35, %70, !dbg !875
  %72 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !875
  %73 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !875
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 368, i32 %71, i8* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* %73), !dbg !875
  %74 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !875
  %75 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !875
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* %75), !dbg !875
  br label %76, !dbg !875

76:                                               ; preds = %69
  br label %738, !dbg !877

77:                                               ; preds = %60
  %78 = load i8**, i8*** @NewArgv, align 8, !dbg !878
  %79 = bitcast i8** %78 to i8*, !dbg !878
  %80 = call zeroext i1 @sudoers_gc_add(i32 1, i8* %79), !dbg !879
  %81 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !880
  %82 = load i8**, i8*** @NewArgv, align 8, !dbg !881
  %83 = getelementptr inbounds i8*, i8** %82, i64 0, !dbg !881
  store i8* %81, i8** %83, align 8, !dbg !882
  %84 = load i8**, i8*** @NewArgv, align 8, !dbg !883
  %85 = getelementptr inbounds i8*, i8** %84, i64 1, !dbg !883
  store i8* null, i8** %85, align 8, !dbg !884
  br label %153, !dbg !885

86:                                               ; preds = %57
  %87 = load i32, i32* %7, align 4, !dbg !886
  store i32 %87, i32* @NewArgc, align 4, !dbg !888
  %88 = load i32, i32* @NewArgc, align 4, !dbg !889
  %89 = add nsw i32 %88, 2, !dbg !890
  %90 = sext i32 %89 to i64, !dbg !889
  %91 = call i8* @reallocarray(i8* null, i64 %90, i64 8) #7, !dbg !891
  %92 = bitcast i8* %91 to i8**, !dbg !891
  store i8** %92, i8*** @NewArgv, align 8, !dbg !892
  %93 = load i8**, i8*** @NewArgv, align 8, !dbg !893
  %94 = icmp eq i8** %93, null, !dbg !895
  br i1 %94, label %95, label %104, !dbg !896

95:                                               ; preds = %86
  br label %96, !dbg !897

96:                                               ; preds = %95
  %97 = load i32, i32* %19, align 4, !dbg !899
  %98 = or i32 35, %97, !dbg !899
  %99 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !899
  %100 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !899
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 379, i32 %98, i8* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* %100), !dbg !899
  %101 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !899
  %102 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !899
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* %102), !dbg !899
  br label %103, !dbg !899

103:                                              ; preds = %96
  br label %738, !dbg !901

104:                                              ; preds = %86
  %105 = load i8**, i8*** @NewArgv, align 8, !dbg !902
  %106 = bitcast i8** %105 to i8*, !dbg !902
  %107 = call zeroext i1 @sudoers_gc_add(i32 1, i8* %106), !dbg !903
  %108 = load i8**, i8*** @NewArgv, align 8, !dbg !904
  %109 = getelementptr inbounds i8*, i8** %108, i32 1, !dbg !904
  store i8** %109, i8*** @NewArgv, align 8, !dbg !904
  %110 = load i8**, i8*** @NewArgv, align 8, !dbg !905
  %111 = bitcast i8** %110 to i8*, !dbg !906
  %112 = load i8**, i8*** %8, align 8, !dbg !907
  %113 = bitcast i8** %112 to i8*, !dbg !906
  %114 = load i32, i32* %7, align 4, !dbg !908
  %115 = sext i32 %114 to i64, !dbg !908
  %116 = mul i64 %115, 8, !dbg !909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %113, i64 %116, i1 false), !dbg !906
  %117 = load i8**, i8*** @NewArgv, align 8, !dbg !910
  %118 = load i32, i32* @NewArgc, align 4, !dbg !911
  %119 = sext i32 %118 to i64, !dbg !910
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119, !dbg !910
  store i8* null, i8** %120, align 8, !dbg !912
  %121 = load i32, i32* @sudo_mode, align 4, !dbg !913
  %122 = and i32 %121, 262144, !dbg !913
  %123 = icmp ne i32 %122, 0, !dbg !913
  br i1 %123, label %124, label %152, !dbg !915

124:                                              ; preds = %104
  %125 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !916
  %126 = icmp ne %struct.passwd* %125, null, !dbg !917
  br i1 %126, label %127, label %152, !dbg !918

127:                                              ; preds = %124
  %128 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !919
  %129 = getelementptr inbounds %struct.passwd, %struct.passwd* %128, i32 0, i32 6, !dbg !921
  %130 = load i8*, i8** %129, align 8, !dbg !921
  %131 = call noalias i8* @strdup(i8* %130) #7, !dbg !922
  %132 = load i8**, i8*** @NewArgv, align 8, !dbg !923
  %133 = getelementptr inbounds i8*, i8** %132, i64 0, !dbg !923
  store i8* %131, i8** %133, align 8, !dbg !924
  %134 = load i8**, i8*** @NewArgv, align 8, !dbg !925
  %135 = getelementptr inbounds i8*, i8** %134, i64 0, !dbg !925
  %136 = load i8*, i8** %135, align 8, !dbg !925
  %137 = icmp eq i8* %136, null, !dbg !927
  br i1 %137, label %138, label %147, !dbg !928

138:                                              ; preds = %127
  br label %139, !dbg !929

139:                                              ; preds = %138
  %140 = load i32, i32* %19, align 4, !dbg !931
  %141 = or i32 35, %140, !dbg !931
  %142 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !931
  %143 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !931
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 389, i32 %141, i8* %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* %143), !dbg !931
  %144 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !931
  %145 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !931
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* %145), !dbg !931
  br label %146, !dbg !931

146:                                              ; preds = %139
  br label %738, !dbg !933

147:                                              ; preds = %127
  %148 = load i8**, i8*** @NewArgv, align 8, !dbg !934
  %149 = getelementptr inbounds i8*, i8** %148, i64 0, !dbg !934
  %150 = load i8*, i8** %149, align 8, !dbg !934
  %151 = call zeroext i1 @sudoers_gc_add(i32 2, i8* %150), !dbg !935
  br label %152, !dbg !936

152:                                              ; preds = %147, %124, %104
  br label %153

153:                                              ; preds = %152, %77
  %154 = load i32, i32* @sudo_mode, align 4, !dbg !937
  %155 = and i32 %154, 2097152, !dbg !937
  %156 = icmp ne i32 %155, 0, !dbg !937
  br i1 %156, label %157, label %158, !dbg !939

157:                                              ; preds = %153
  store i32 1, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 32, i32 5) to i32*), align 8, !dbg !940
  br label %158, !dbg !941

158:                                              ; preds = %157, %153
  %159 = call i32 @set_cmnd(), !dbg !942
  store i32 %159, i32* @cmnd_status, align 4, !dbg !943
  %160 = load i32, i32* @cmnd_status, align 4, !dbg !944
  %161 = icmp eq i32 %160, 3, !dbg !946
  br i1 %161, label %162, label %163, !dbg !947

162:                                              ; preds = %158
  br label %738, !dbg !948

163:                                              ; preds = %158
  %164 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 32), align 8, !dbg !949
  %165 = icmp sge i32 %164, 0, !dbg !951
  br i1 %165, label %166, label %183, !dbg !952

166:                                              ; preds = %163
  %167 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 32), align 8, !dbg !953
  %168 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 58, i32 5) to i32*), align 8, !dbg !954
  %169 = icmp ne i32 %167, %168, !dbg !955
  br i1 %169, label %170, label %183, !dbg !956

170:                                              ; preds = %166
  %171 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 59, i32 5) to i32*), align 8, !dbg !957
  %172 = icmp ne i32 %171, 0, !dbg !957
  br i1 %172, label %181, label %173, !dbg !960

173:                                              ; preds = %170
  %174 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0)), !dbg !961
  br label %175, !dbg !963

175:                                              ; preds = %173
  %176 = load i32, i32* %19, align 4, !dbg !964
  %177 = or i32 35, %176, !dbg !964
  %178 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0)), !dbg !964
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 410, i32 %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %178), !dbg !964
  %179 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0)), !dbg !964
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %179), !dbg !964
  br label %180, !dbg !964

180:                                              ; preds = %175
  br label %737, !dbg !966

181:                                              ; preds = %170
  %182 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 32), align 8, !dbg !967
  store i32 %182, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 58, i32 5) to i32*), align 8, !dbg !968
  br label %183, !dbg !969

183:                                              ; preds = %181, %166, %163
  %184 = call zeroext i1 @sudoers_setlocale(i32 1, i32* %16), !dbg !970
  %185 = load %struct.sudo_nss_list*, %struct.sudo_nss_list** @snl, align 8, !dbg !971
  %186 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !972
  %187 = load i32, i32* %9, align 4, !dbg !973
  %188 = call i32 @sudoers_lookup(%struct.sudo_nss_list* %185, %struct.passwd* %186, i32* @cmnd_status, i32 %187), !dbg !974
  store i32 %188, i32* %17, align 4, !dbg !975
  %189 = load i32, i32* %17, align 4, !dbg !976
  %190 = and i32 %189, 1, !dbg !976
  %191 = icmp ne i32 %190, 0, !dbg !976
  br i1 %191, label %192, label %193, !dbg !978

192:                                              ; preds = %183
  br label %738, !dbg !979

193:                                              ; preds = %183
  %194 = load i32, i32* %16, align 4, !dbg !981
  %195 = call zeroext i1 @sudoers_setlocale(i32 %194, i32* null), !dbg !982
  %196 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 22), align 8, !dbg !983
  %197 = icmp eq i8* %196, null, !dbg !985
  br i1 %197, label %198, label %212, !dbg !986

198:                                              ; preds = %193
  %199 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !987
  %200 = call noalias i8* @strdup(i8* %199) #7, !dbg !990
  store i8* %200, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 22), align 8, !dbg !991
  %201 = icmp eq i8* %200, null, !dbg !992
  br i1 %201, label %202, label %211, !dbg !993

202:                                              ; preds = %198
  br label %203, !dbg !994

203:                                              ; preds = %202
  %204 = load i32, i32* %19, align 4, !dbg !996
  %205 = or i32 35, %204, !dbg !996
  %206 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !996
  %207 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !996
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 431, i32 %205, i8* %206, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* %207), !dbg !996
  %208 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !996
  %209 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !996
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %208, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* %209), !dbg !996
  br label %210, !dbg !996

210:                                              ; preds = %203
  br label %738, !dbg !998

211:                                              ; preds = %198
  br label %212, !dbg !999

212:                                              ; preds = %211, %193
  %213 = load i8, i8* @unknown_runas_uid, align 1, !dbg !1000
  %214 = trunc i8 %213 to i1, !dbg !1000
  br i1 %214, label %215, label %223, !dbg !1002

215:                                              ; preds = %212
  %216 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 124, i32 5) to i32*), align 8, !dbg !1003
  %217 = icmp ne i32 %216, 0, !dbg !1003
  br i1 %217, label %223, label %218, !dbg !1004

218:                                              ; preds = %215
  %219 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !1005
  %220 = getelementptr inbounds %struct.passwd, %struct.passwd* %219, i32 0, i32 0, !dbg !1007
  %221 = load i8*, i8** %220, align 8, !dbg !1007
  %222 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %221), !dbg !1008
  br label %738, !dbg !1009

223:                                              ; preds = %215, %212
  %224 = load %struct.group*, %struct.group** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 3), align 8, !dbg !1010
  %225 = icmp ne %struct.group* %224, null, !dbg !1012
  br i1 %225, label %226, label %238, !dbg !1013

226:                                              ; preds = %223
  %227 = load i8, i8* @unknown_runas_gid, align 1, !dbg !1014
  %228 = trunc i8 %227 to i1, !dbg !1014
  br i1 %228, label %229, label %237, !dbg !1017

229:                                              ; preds = %226
  %230 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 124, i32 5) to i32*), align 8, !dbg !1018
  %231 = icmp ne i32 %230, 0, !dbg !1018
  br i1 %231, label %237, label %232, !dbg !1019

232:                                              ; preds = %229
  %233 = load %struct.group*, %struct.group** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 3), align 8, !dbg !1020
  %234 = getelementptr inbounds %struct.group, %struct.group* %233, i32 0, i32 0, !dbg !1022
  %235 = load i8*, i8** %234, align 8, !dbg !1022
  %236 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %235), !dbg !1023
  br label %738, !dbg !1024

237:                                              ; preds = %229, %226
  br label %238, !dbg !1025

238:                                              ; preds = %237, %223
  %239 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 47, i32 5) to i8**), align 8, !dbg !1026
  %240 = icmp ne i8* %239, null, !dbg !1026
  br i1 %240, label %241, label %277, !dbg !1028

241:                                              ; preds = %238
  call void @llvm.dbg.declare(metadata %struct.passwd** %20, metadata !1029, metadata !DIExpression()), !dbg !1031
  store %struct.passwd* null, %struct.passwd** %20, align 8, !dbg !1031
  %242 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 47, i32 5) to i8**), align 8, !dbg !1032
  %243 = load i8, i8* %242, align 1, !dbg !1034
  %244 = sext i8 %243 to i32, !dbg !1034
  %245 = icmp eq i32 %244, 35, !dbg !1035
  br i1 %245, label %246, label %256, !dbg !1036

246:                                              ; preds = %241
  call void @llvm.dbg.declare(metadata i8** %21, metadata !1037, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1040, metadata !DIExpression()), !dbg !1041
  %247 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 47, i32 5) to i8**), align 8, !dbg !1042
  %248 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1042
  %249 = call i32 @sudo_strtoid_v2(i8* %248, i8** %21), !dbg !1042
  store i32 %249, i32* %22, align 4, !dbg !1041
  %250 = load i8*, i8** %21, align 8, !dbg !1043
  %251 = icmp eq i8* %250, null, !dbg !1045
  br i1 %251, label %252, label %255, !dbg !1046

252:                                              ; preds = %246
  %253 = load i32, i32* %22, align 4, !dbg !1047
  %254 = call %struct.passwd* @sudo_getpwuid(i32 %253), !dbg !1048
  store %struct.passwd* %254, %struct.passwd** %20, align 8, !dbg !1049
  br label %255, !dbg !1050

255:                                              ; preds = %252, %246
  br label %256, !dbg !1051

256:                                              ; preds = %255, %241
  %257 = load %struct.passwd*, %struct.passwd** %20, align 8, !dbg !1052
  %258 = icmp eq %struct.passwd* %257, null, !dbg !1054
  br i1 %258, label %259, label %262, !dbg !1055

259:                                              ; preds = %256
  %260 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 47, i32 5) to i8**), align 8, !dbg !1056
  %261 = call %struct.passwd* @sudo_getpwnam(i8* %260), !dbg !1057
  store %struct.passwd* %261, %struct.passwd** %20, align 8, !dbg !1058
  br label %262, !dbg !1059

262:                                              ; preds = %259, %256
  %263 = load %struct.passwd*, %struct.passwd** %20, align 8, !dbg !1060
  %264 = icmp ne %struct.passwd* %263, null, !dbg !1062
  br i1 %264, label %265, label %273, !dbg !1063

265:                                              ; preds = %262
  %266 = load %struct.passwd*, %struct.passwd** %20, align 8, !dbg !1064
  %267 = getelementptr inbounds %struct.passwd, %struct.passwd* %266, i32 0, i32 2, !dbg !1066
  %268 = load i32, i32* %267, align 8, !dbg !1066
  store i32 %268, i32* @timestamp_uid, align 4, !dbg !1067
  %269 = load %struct.passwd*, %struct.passwd** %20, align 8, !dbg !1068
  %270 = getelementptr inbounds %struct.passwd, %struct.passwd* %269, i32 0, i32 3, !dbg !1069
  %271 = load i32, i32* %270, align 4, !dbg !1069
  store i32 %271, i32* @timestamp_gid, align 4, !dbg !1070
  %272 = load %struct.passwd*, %struct.passwd** %20, align 8, !dbg !1071
  call void @sudo_pw_delref(%struct.passwd* %272), !dbg !1072
  br label %276, !dbg !1073

273:                                              ; preds = %262
  %274 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 47, i32 5) to i8**), align 8, !dbg !1074
  %275 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8* %274), !dbg !1076
  store i32 0, i32* @timestamp_uid, align 4, !dbg !1077
  store i32 0, i32* @timestamp_gid, align 4, !dbg !1078
  br label %276

276:                                              ; preds = %273, %265
  br label %277, !dbg !1079

277:                                              ; preds = %276, %238
  %278 = load i32, i32* @sudo_mode, align 4, !dbg !1080
  %279 = and i32 %278, 524288, !dbg !1080
  %280 = icmp ne i32 %279, 0, !dbg !1080
  br i1 %280, label %281, label %285, !dbg !1082

281:                                              ; preds = %277
  %282 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 18, i32 5) to i32*), align 8, !dbg !1083
  %283 = icmp ne i32 %282, 0, !dbg !1083
  br i1 %283, label %285, label %284, !dbg !1084

284:                                              ; preds = %281
  store i32 -2, i32* %18, align 4, !dbg !1085
  br label %738, !dbg !1087

285:                                              ; preds = %281, %277
  %286 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 24, i32 5) to i32*), align 8, !dbg !1088
  %287 = icmp ne i32 %286, 0, !dbg !1088
  br i1 %287, label %288, label %298, !dbg !1090

288:                                              ; preds = %285
  %289 = call zeroext i1 @tty_present(), !dbg !1091
  br i1 %289, label %298, label %290, !dbg !1092

290:                                              ; preds = %288
  %291 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)), !dbg !1093
  br label %292, !dbg !1095

292:                                              ; preds = %290
  %293 = load i32, i32* %19, align 4, !dbg !1096
  %294 = or i32 35, %293, !dbg !1096
  %295 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0)), !dbg !1096
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 486, i32 %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %295), !dbg !1096
  %296 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0)), !dbg !1096
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %296), !dbg !1096
  br label %297, !dbg !1096

297:                                              ; preds = %292
  br label %737, !dbg !1098

298:                                              ; preds = %288, %285
  %299 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !1099
  %300 = call zeroext i1 @check_user_shell(%struct.passwd* %299), !dbg !1101
  br i1 %300, label %309, label %301, !dbg !1102

301:                                              ; preds = %298
  %302 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !1103
  %303 = getelementptr inbounds %struct.passwd, %struct.passwd* %302, i32 0, i32 0, !dbg !1105
  %304 = load i8*, i8** %303, align 8, !dbg !1105
  %305 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !1106
  %306 = getelementptr inbounds %struct.passwd, %struct.passwd* %305, i32 0, i32 6, !dbg !1107
  %307 = load i8*, i8** %306, align 8, !dbg !1107
  %308 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %304, i8* %307), !dbg !1108
  br label %737, !dbg !1109

309:                                              ; preds = %298
  %310 = load i32, i32* @sudo_mode, align 4, !dbg !1110
  %311 = and i32 %310, 2, !dbg !1110
  %312 = icmp ne i32 %311, 0, !dbg !1110
  br i1 %312, label %320, label %313, !dbg !1112

313:                                              ; preds = %309
  %314 = load i32, i32* @sudo_mode, align 4, !dbg !1113
  %315 = and i32 %314, 4194304, !dbg !1113
  %316 = icmp ne i32 %315, 0, !dbg !1113
  br i1 %316, label %317, label %321, !dbg !1114

317:                                              ; preds = %313
  %318 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 60, i32 5) to i32*), align 8, !dbg !1115
  %319 = icmp ne i32 %318, 0, !dbg !1115
  br i1 %319, label %320, label %321, !dbg !1116

320:                                              ; preds = %317, %309
  store i32 0, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 61, i32 5) to i32*), align 8, !dbg !1117
  br label %321, !dbg !1118

321:                                              ; preds = %320, %317, %313
  %322 = call zeroext i1 @rebuild_env(), !dbg !1119
  br i1 %322, label %324, label %323, !dbg !1121

323:                                              ; preds = %321
  br label %737, !dbg !1122

324:                                              ; preds = %321
  %325 = load i32, i32* %17, align 4, !dbg !1123
  %326 = load i32, i32* @sudo_mode, align 4, !dbg !1124
  %327 = call i32 @check_user(i32 %325, i32 %326), !dbg !1125
  switch i32 %327, label %341 [
    i32 1, label %328
    i32 0, label %329
  ], !dbg !1126

328:                                              ; preds = %324
  br label %342, !dbg !1127

329:                                              ; preds = %324
  %330 = load i32, i32* %17, align 4, !dbg !1129
  %331 = and i32 %330, 2, !dbg !1129
  %332 = icmp ne i32 %331, 0, !dbg !1129
  br i1 %332, label %340, label %333, !dbg !1131

333:                                              ; preds = %329
  %334 = load i32, i32* %17, align 4, !dbg !1132
  %335 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 36, i32 5) to i32*), align 8, !dbg !1135
  %336 = icmp ule i32 %335, 0, !dbg !1136
  %337 = call zeroext i1 @log_denial(i32 %334, i1 zeroext %336), !dbg !1137
  br i1 %337, label %339, label %338, !dbg !1138

338:                                              ; preds = %333
  br label %738, !dbg !1139

339:                                              ; preds = %333
  br label %340, !dbg !1140

340:                                              ; preds = %339, %329
  br label %737, !dbg !1141

341:                                              ; preds = %324
  br label %738, !dbg !1142

342:                                              ; preds = %328
  %343 = call i32 @check_user_runchroot(), !dbg !1143
  switch i32 %343, label %346 [
    i32 1, label %344
    i32 0, label %345
  ], !dbg !1144

344:                                              ; preds = %342
  br label %347, !dbg !1145

345:                                              ; preds = %342
  br label %737, !dbg !1147

346:                                              ; preds = %342
  br label %738, !dbg !1148

347:                                              ; preds = %344
  %348 = call i32 @check_user_runcwd(), !dbg !1149
  switch i32 %348, label %351 [
    i32 1, label %349
    i32 0, label %350
  ], !dbg !1150

349:                                              ; preds = %347
  br label %352, !dbg !1151

350:                                              ; preds = %347
  br label %737, !dbg !1153

351:                                              ; preds = %347
  br label %738, !dbg !1154

352:                                              ; preds = %349
  %353 = load i32, i32* @sudo_mode, align 4, !dbg !1155
  %354 = and i32 %353, 3, !dbg !1157
  %355 = icmp ne i32 %354, 0, !dbg !1157
  br i1 %355, label %356, label %379, !dbg !1158

356:                                              ; preds = %352
  %357 = load i8*, i8** @prev_user, align 8, !dbg !1159
  %358 = icmp ne i8* %357, null, !dbg !1160
  br i1 %358, label %359, label %379, !dbg !1161

359:                                              ; preds = %356
  %360 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 39), align 4, !dbg !1162
  %361 = icmp eq i32 %360, 0, !dbg !1165
  br i1 %361, label %362, label %378, !dbg !1166

362:                                              ; preds = %359
  %363 = load i8*, i8** @prev_user, align 8, !dbg !1167
  %364 = call i32 @strcmp(i8* %363, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1168
  %365 = icmp ne i32 %364, 0, !dbg !1169
  br i1 %365, label %366, label %378, !dbg !1170

366:                                              ; preds = %362
  call void @llvm.dbg.declare(metadata %struct.passwd** %23, metadata !1171, metadata !DIExpression()), !dbg !1173
  %367 = load i8*, i8** @prev_user, align 8, !dbg !1174
  %368 = call %struct.passwd* @sudo_getpwnam(i8* %367), !dbg !1176
  store %struct.passwd* %368, %struct.passwd** %23, align 8, !dbg !1177
  %369 = icmp ne %struct.passwd* %368, null, !dbg !1178
  br i1 %369, label %370, label %377, !dbg !1179

370:                                              ; preds = %366
  %371 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !1180
  %372 = icmp ne %struct.passwd* %371, null, !dbg !1183
  br i1 %372, label %373, label %375, !dbg !1184

373:                                              ; preds = %370
  %374 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !1185
  call void @sudo_pw_delref(%struct.passwd* %374), !dbg !1186
  br label %375, !dbg !1186

375:                                              ; preds = %373, %370
  %376 = load %struct.passwd*, %struct.passwd** %23, align 8, !dbg !1187
  store %struct.passwd* %376, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !1188
  br label %377, !dbg !1189

377:                                              ; preds = %375, %366
  br label %378, !dbg !1190

378:                                              ; preds = %377, %362, %359
  br label %379, !dbg !1191

379:                                              ; preds = %378, %356, %352
  %380 = load i32, i32* %17, align 4, !dbg !1192
  %381 = and i32 %380, 2, !dbg !1192
  %382 = icmp ne i32 %381, 0, !dbg !1192
  br i1 %382, label %389, label %383, !dbg !1194

383:                                              ; preds = %379
  %384 = load i32, i32* %17, align 4, !dbg !1195
  %385 = load i32, i32* @cmnd_status, align 4, !dbg !1198
  %386 = call zeroext i1 @log_failure(i32 %384, i32 %385), !dbg !1199
  br i1 %386, label %388, label %387, !dbg !1200

387:                                              ; preds = %383
  br label %738, !dbg !1201

388:                                              ; preds = %383
  br label %737, !dbg !1202

389:                                              ; preds = %379
  %390 = call i32 @create_admin_success_flag(), !dbg !1203
  %391 = icmp eq i32 %390, -1, !dbg !1205
  br i1 %391, label %392, label %393, !dbg !1206

392:                                              ; preds = %389
  br label %738, !dbg !1207

393:                                              ; preds = %389
  %394 = load i32, i32* @cmnd_status, align 4, !dbg !1208
  %395 = icmp eq i32 %394, 2, !dbg !1210
  br i1 %395, label %396, label %411, !dbg !1211

396:                                              ; preds = %393
  %397 = load i8**, i8*** @NewArgv, align 8, !dbg !1212
  %398 = call i32 (i8**, i8*, ...) @audit_failure(i8** %397, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0)), !dbg !1214
  br label %399, !dbg !1215

399:                                              ; preds = %396
  %400 = load i32, i32* %19, align 4, !dbg !1216
  %401 = or i32 35, %400, !dbg !1216
  %402 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i64 0, i64 0)), !dbg !1216
  %403 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1216
  %404 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1216
  %405 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1216
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 577, i32 %401, i8* %402, i8* %403, i8* %404, i8* %405), !dbg !1216
  %406 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i64 0, i64 0)), !dbg !1216
  %407 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1216
  %408 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1216
  %409 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1216
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %406, i8* %407, i8* %408, i8* %409), !dbg !1216
  br label %410, !dbg !1216

410:                                              ; preds = %399
  br label %737, !dbg !1218

411:                                              ; preds = %393
  %412 = load i32, i32* @cmnd_status, align 4, !dbg !1219
  %413 = icmp eq i32 %412, 1, !dbg !1221
  br i1 %413, label %414, label %449, !dbg !1222

414:                                              ; preds = %411
  %415 = load i32, i32* @sudo_mode, align 4, !dbg !1223
  %416 = and i32 %415, 256, !dbg !1223
  %417 = icmp ne i32 %416, 0, !dbg !1223
  br i1 %417, label %418, label %436, !dbg !1226

418:                                              ; preds = %414
  %419 = load i8**, i8*** @NewArgv, align 8, !dbg !1227
  %420 = load i8**, i8*** @NewArgv, align 8, !dbg !1229
  %421 = getelementptr inbounds i8*, i8** %420, i64 0, !dbg !1229
  %422 = load i8*, i8** %421, align 8, !dbg !1229
  %423 = call i32 (i8**, i8*, ...) @audit_failure(i8** %419, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8* %422), !dbg !1230
  br label %424, !dbg !1231

424:                                              ; preds = %418
  %425 = load i32, i32* %19, align 4, !dbg !1232
  %426 = or i32 35, %425, !dbg !1232
  %427 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0)), !dbg !1232
  %428 = load i8**, i8*** @NewArgv, align 8, !dbg !1232
  %429 = getelementptr inbounds i8*, i8** %428, i64 0, !dbg !1232
  %430 = load i8*, i8** %429, align 8, !dbg !1232
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 583, i32 %426, i8* %427, i8* %430), !dbg !1232
  %431 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0)), !dbg !1232
  %432 = load i8**, i8*** @NewArgv, align 8, !dbg !1232
  %433 = getelementptr inbounds i8*, i8** %432, i64 0, !dbg !1232
  %434 = load i8*, i8** %433, align 8, !dbg !1232
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %431, i8* %434), !dbg !1232
  br label %435, !dbg !1232

435:                                              ; preds = %424
  br label %448, !dbg !1234

436:                                              ; preds = %414
  %437 = load i8**, i8*** @NewArgv, align 8, !dbg !1235
  %438 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1237
  %439 = call i32 (i8**, i8*, ...) @audit_failure(i8** %437, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8* %438), !dbg !1238
  br label %440, !dbg !1239

440:                                              ; preds = %436
  %441 = load i32, i32* %19, align 4, !dbg !1240
  %442 = or i32 35, %441, !dbg !1240
  %443 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0)), !dbg !1240
  %444 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1240
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 587, i32 %442, i8* %443, i8* %444), !dbg !1240
  %445 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0)), !dbg !1240
  %446 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1240
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %445, i8* %446), !dbg !1240
  br label %447, !dbg !1240

447:                                              ; preds = %440
  br label %448

448:                                              ; preds = %447, %435
  br label %737, !dbg !1242

449:                                              ; preds = %411
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 108, i32 5) to i32*), align 8, !dbg !1243
  %452 = icmp ne i32 %451, 0, !dbg !1243
  br i1 %452, label %464, label %453, !dbg !1245

453:                                              ; preds = %450
  %454 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 37), align 4, !dbg !1246
  %455 = icmp sgt i32 %454, 0, !dbg !1247
  br i1 %455, label %456, label %464, !dbg !1248

456:                                              ; preds = %453
  %457 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0)), !dbg !1249
  br label %458, !dbg !1251

458:                                              ; preds = %456
  %459 = load i32, i32* %19, align 4, !dbg !1252
  %460 = or i32 35, %459, !dbg !1252
  %461 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i64 0, i64 0)), !dbg !1252
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 597, i32 %460, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %461), !dbg !1252
  %462 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i64 0, i64 0)), !dbg !1252
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %462), !dbg !1252
  br label %463, !dbg !1252

463:                                              ; preds = %458
  br label %737, !dbg !1254

464:                                              ; preds = %453, %450
  %465 = load i32, i32* @sudo_mode, align 4, !dbg !1255
  %466 = and i32 %465, 1, !dbg !1255
  %467 = icmp ne i32 %466, 0, !dbg !1255
  br i1 %467, label %468, label %489, !dbg !1257

468:                                              ; preds = %464
  %469 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 60, i32 5) to i32*), align 8, !dbg !1258
  %470 = icmp ne i32 %469, 0, !dbg !1258
  br i1 %470, label %489, label %471, !dbg !1259

471:                                              ; preds = %468
  %472 = load i32, i32* @sudo_mode, align 4, !dbg !1260
  %473 = and i32 %472, 4194304, !dbg !1260
  %474 = icmp ne i32 %473, 0, !dbg !1260
  br i1 %474, label %475, label %483, !dbg !1263

475:                                              ; preds = %471
  %476 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0)), !dbg !1264
  br label %477, !dbg !1266

477:                                              ; preds = %475
  %478 = load i32, i32* %19, align 4, !dbg !1267
  %479 = or i32 35, %478, !dbg !1267
  %480 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0)), !dbg !1267
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 607, i32 %479, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %480), !dbg !1267
  %481 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0)), !dbg !1267
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %481), !dbg !1267
  br label %482, !dbg !1267

482:                                              ; preds = %477
  br label %737, !dbg !1269

483:                                              ; preds = %471
  %484 = load i8**, i8*** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 26), align 8, !dbg !1270
  %485 = call zeroext i1 @validate_env_vars(i8** %484), !dbg !1273
  br i1 %485, label %487, label %486, !dbg !1274

486:                                              ; preds = %483
  br label %737, !dbg !1275

487:                                              ; preds = %483
  br label %488

488:                                              ; preds = %487
  br label %489, !dbg !1276

489:                                              ; preds = %488, %468, %464
  %490 = load i32, i32* @sudo_mode, align 4, !dbg !1277
  %491 = and i32 %490, 3, !dbg !1277
  %492 = icmp ne i32 %491, 0, !dbg !1277
  br i1 %492, label %493, label %518, !dbg !1279

493:                                              ; preds = %489
  %494 = load %struct.list_member*, %struct.list_member** getelementptr inbounds (%struct.list_members, %struct.list_members* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 117, i32 5) to %struct.list_members*), i32 0, i32 0), align 8, !dbg !1280
  %495 = icmp eq %struct.list_member* %494, null, !dbg !1280
  br i1 %495, label %496, label %518, !dbg !1281

496:                                              ; preds = %493
  %497 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 74, i32 5) to i32*), align 8, !dbg !1282
  %498 = icmp ne i32 %497, 0, !dbg !1282
  br i1 %498, label %502, label %499, !dbg !1285

499:                                              ; preds = %496
  %500 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 75, i32 5) to i32*), align 8, !dbg !1286
  %501 = icmp ne i32 %500, 0, !dbg !1286
  br i1 %501, label %502, label %517, !dbg !1287

502:                                              ; preds = %499, %496
  %503 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 80, i32 5) to i8**), align 8, !dbg !1288
  %504 = icmp ne i8* %503, null, !dbg !1288
  br i1 %504, label %505, label %517, !dbg !1289

505:                                              ; preds = %502
  %506 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 79, i32 5) to i8**), align 8, !dbg !1290
  %507 = icmp ne i8* %506, null, !dbg !1290
  br i1 %507, label %508, label %517, !dbg !1291

508:                                              ; preds = %505
  %509 = call i8* @format_iolog_path(), !dbg !1292
  store i8* %509, i8** %13, align 8, !dbg !1295
  %510 = icmp eq i8* %509, null, !dbg !1296
  br i1 %510, label %511, label %516, !dbg !1297

511:                                              ; preds = %508
  %512 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 98, i32 5) to i32*), align 8, !dbg !1298
  %513 = icmp ne i32 %512, 0, !dbg !1298
  br i1 %513, label %515, label %514, !dbg !1301

514:                                              ; preds = %511
  br label %738, !dbg !1302

515:                                              ; preds = %511
  store i32 0, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 74, i32 5) to i32*), align 8, !dbg !1303
  store i32 0, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 75, i32 5) to i32*), align 8, !dbg !1304
  br label %516, !dbg !1305

516:                                              ; preds = %515, %508
  br label %517, !dbg !1306

517:                                              ; preds = %516, %505, %502, %499
  br label %518, !dbg !1307

518:                                              ; preds = %517, %493, %489
  %519 = load i32, i32* @sudo_mode, align 4, !dbg !1308
  %520 = and i32 %519, 65535, !dbg !1309
  switch i32 %520, label %546 [
    i32 256, label %521
    i32 128, label %532
    i32 4, label %545
    i32 1, label %545
    i32 2, label %545
  ], !dbg !1310

521:                                              ; preds = %518
  %522 = load %struct.sudo_nss_list*, %struct.sudo_nss_list** @snl, align 8, !dbg !1311
  %523 = load %struct.passwd*, %struct.passwd** @list_pw, align 8, !dbg !1313
  %524 = icmp ne %struct.passwd* %523, null, !dbg !1313
  br i1 %524, label %525, label %527, !dbg !1313

525:                                              ; preds = %521
  %526 = load %struct.passwd*, %struct.passwd** @list_pw, align 8, !dbg !1314
  br label %529, !dbg !1313

527:                                              ; preds = %521
  %528 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !1315
  br label %529, !dbg !1313

529:                                              ; preds = %527, %525
  %530 = phi %struct.passwd* [ %526, %525 ], [ %528, %527 ], !dbg !1313
  %531 = call i32 @display_cmnd(%struct.sudo_nss_list* %522, %struct.passwd* %530), !dbg !1316
  store i32 %531, i32* %18, align 4, !dbg !1317
  br label %553, !dbg !1318

532:                                              ; preds = %518
  %533 = load %struct.sudo_nss_list*, %struct.sudo_nss_list** @snl, align 8, !dbg !1319
  %534 = load %struct.passwd*, %struct.passwd** @list_pw, align 8, !dbg !1320
  %535 = icmp ne %struct.passwd* %534, null, !dbg !1320
  br i1 %535, label %536, label %538, !dbg !1320

536:                                              ; preds = %532
  %537 = load %struct.passwd*, %struct.passwd** @list_pw, align 8, !dbg !1321
  br label %540, !dbg !1320

538:                                              ; preds = %532
  %539 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 1), align 8, !dbg !1322
  br label %540, !dbg !1320

540:                                              ; preds = %538, %536
  %541 = phi %struct.passwd* [ %537, %536 ], [ %539, %538 ], !dbg !1320
  %542 = load i8, i8* %11, align 1, !dbg !1323
  %543 = trunc i8 %542 to i1, !dbg !1323
  %544 = call i32 @display_privs(%struct.sudo_nss_list* %533, %struct.passwd* %541, i1 zeroext %543), !dbg !1324
  store i32 %544, i32* %18, align 4, !dbg !1325
  br label %553, !dbg !1326

545:                                              ; preds = %518, %518, %518
  store i32 1, i32* %18, align 4, !dbg !1327
  br label %553, !dbg !1328

546:                                              ; preds = %518
  br label %547, !dbg !1329

547:                                              ; preds = %546
  %548 = load i32, i32* %19, align 4, !dbg !1330
  %549 = or i32 35, %548, !dbg !1330
  %550 = load i32, i32* @sudo_mode, align 4, !dbg !1330
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 642, i32 %549, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i32 %550), !dbg !1330
  %551 = load i32, i32* @sudo_mode, align 4, !dbg !1330
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i32 %551), !dbg !1330
  br label %552, !dbg !1330

552:                                              ; preds = %547
  br label %738, !dbg !1332

553:                                              ; preds = %545, %540, %529
  %554 = load %struct.sudo_nss_list*, %struct.sudo_nss_list** @snl, align 8, !dbg !1333
  %555 = getelementptr inbounds %struct.sudo_nss_list, %struct.sudo_nss_list* %554, i32 0, i32 0, !dbg !1333
  %556 = load %struct.sudo_nss*, %struct.sudo_nss** %555, align 8, !dbg !1333
  store %struct.sudo_nss* %556, %struct.sudo_nss** %15, align 8, !dbg !1333
  br label %557, !dbg !1333

557:                                              ; preds = %566, %553
  %558 = load %struct.sudo_nss*, %struct.sudo_nss** %15, align 8, !dbg !1335
  %559 = icmp ne %struct.sudo_nss* %558, null, !dbg !1333
  br i1 %559, label %560, label %571, !dbg !1333

560:                                              ; preds = %557
  %561 = load %struct.sudo_nss*, %struct.sudo_nss** %15, align 8, !dbg !1337
  %562 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %561, i32 0, i32 2, !dbg !1339
  %563 = load i32 (%struct.sudo_nss*)*, i32 (%struct.sudo_nss*)** %562, align 8, !dbg !1339
  %564 = load %struct.sudo_nss*, %struct.sudo_nss** %15, align 8, !dbg !1340
  %565 = call i32 %563(%struct.sudo_nss* %564), !dbg !1337
  br label %566, !dbg !1341

566:                                              ; preds = %560
  %567 = load %struct.sudo_nss*, %struct.sudo_nss** %15, align 8, !dbg !1335
  %568 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %567, i32 0, i32 0, !dbg !1335
  %569 = getelementptr inbounds %struct.anon, %struct.anon* %568, i32 0, i32 0, !dbg !1335
  %570 = load %struct.sudo_nss*, %struct.sudo_nss** %569, align 8, !dbg !1335
  store %struct.sudo_nss* %570, %struct.sudo_nss** %15, align 8, !dbg !1335
  br label %557, !dbg !1335, !llvm.loop !1342

571:                                              ; preds = %557
  %572 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 78, i32 5) to i8**), align 8, !dbg !1344
  %573 = icmp ne i8* %572, null, !dbg !1344
  br i1 %573, label %574, label %575, !dbg !1346

574:                                              ; preds = %571
  call void @group_plugin_unload(), !dbg !1347
  br label %575, !dbg !1347

575:                                              ; preds = %574, %571
  %576 = call zeroext i1 @init_parser(i8* null, i1 zeroext false, i1 zeroext false), !dbg !1348
  %577 = load i32, i32* @sudo_mode, align 4, !dbg !1349
  %578 = and i32 %577, 388, !dbg !1349
  %579 = icmp ne i32 %578, 0, !dbg !1349
  br i1 %579, label %580, label %581, !dbg !1351

580:                                              ; preds = %575
  br label %738, !dbg !1352

581:                                              ; preds = %575
  %582 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 37, i32 5) to i32*), align 8, !dbg !1354
  %583 = icmp ne i32 %582, 511, !dbg !1356
  br i1 %583, label %584, label %593, !dbg !1357

584:                                              ; preds = %581
  %585 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 37, i32 5) to i32*), align 8, !dbg !1358
  store i32 %585, i32* %14, align 4, !dbg !1360
  %586 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 73, i32 5) to i32*), align 8, !dbg !1361
  %587 = icmp ne i32 %586, 0, !dbg !1361
  br i1 %587, label %592, label %588, !dbg !1363

588:                                              ; preds = %584
  %589 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 38), align 8, !dbg !1364
  %590 = load i32, i32* %14, align 4, !dbg !1365
  %591 = or i32 %590, %589, !dbg !1365
  store i32 %591, i32* %14, align 4, !dbg !1365
  br label %592, !dbg !1366

592:                                              ; preds = %588, %584
  br label %593, !dbg !1367

593:                                              ; preds = %592, %581
  %594 = load i32, i32* @sudo_mode, align 4, !dbg !1368
  %595 = and i32 %594, 262144, !dbg !1368
  %596 = icmp ne i32 %595, 0, !dbg !1368
  br i1 %596, label %597, label %646, !dbg !1370

597:                                              ; preds = %593
  call void @llvm.dbg.declare(metadata i8** %24, metadata !1371, metadata !DIExpression()), !dbg !1373
  %598 = load i8**, i8*** @NewArgv, align 8, !dbg !1374
  %599 = getelementptr inbounds i8*, i8** %598, i64 0, !dbg !1374
  %600 = load i8*, i8** %599, align 8, !dbg !1374
  %601 = call i8* @strrchr(i8* %600, i32 47) #8, !dbg !1376
  store i8* %601, i8** %24, align 8, !dbg !1377
  %602 = icmp eq i8* %601, null, !dbg !1378
  br i1 %602, label %603, label %607, !dbg !1379

603:                                              ; preds = %597
  %604 = load i8**, i8*** @NewArgv, align 8, !dbg !1380
  %605 = getelementptr inbounds i8*, i8** %604, i64 0, !dbg !1380
  %606 = load i8*, i8** %605, align 8, !dbg !1380
  store i8* %606, i8** %24, align 8, !dbg !1381
  br label %607, !dbg !1382

607:                                              ; preds = %603, %597
  %608 = load i8*, i8** %24, align 8, !dbg !1383
  store i8 45, i8* %608, align 1, !dbg !1384
  %609 = load i8*, i8** %24, align 8, !dbg !1385
  %610 = load i8**, i8*** @NewArgv, align 8, !dbg !1386
  %611 = getelementptr inbounds i8*, i8** %610, i64 0, !dbg !1386
  store i8* %609, i8** %611, align 8, !dbg !1387
  %612 = load i32, i32* @NewArgc, align 4, !dbg !1388
  %613 = icmp sgt i32 %612, 1, !dbg !1390
  br i1 %613, label %614, label %638, !dbg !1391

614:                                              ; preds = %607
  %615 = load i8**, i8*** @NewArgv, align 8, !dbg !1392
  %616 = getelementptr inbounds i8*, i8** %615, i64 0, !dbg !1392
  %617 = load i8*, i8** %616, align 8, !dbg !1392
  %618 = call i32 @strcmp(i8* %617, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !1393
  %619 = icmp eq i32 %618, 0, !dbg !1394
  br i1 %619, label %620, label %638, !dbg !1395

620:                                              ; preds = %614
  %621 = load i8**, i8*** @NewArgv, align 8, !dbg !1396
  %622 = getelementptr inbounds i8*, i8** %621, i64 1, !dbg !1396
  %623 = load i8*, i8** %622, align 8, !dbg !1396
  %624 = call i32 @strcmp(i8* %623, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !1397
  %625 = icmp eq i32 %624, 0, !dbg !1398
  br i1 %625, label %626, label %638, !dbg !1399

626:                                              ; preds = %620
  %627 = load i8**, i8*** @NewArgv, align 8, !dbg !1400
  %628 = getelementptr inbounds i8*, i8** %627, i32 -1, !dbg !1400
  store i8** %628, i8*** @NewArgv, align 8, !dbg !1400
  %629 = load i32, i32* @NewArgc, align 4, !dbg !1402
  %630 = add nsw i32 %629, 1, !dbg !1402
  store i32 %630, i32* @NewArgc, align 4, !dbg !1402
  %631 = load i8**, i8*** @NewArgv, align 8, !dbg !1403
  %632 = getelementptr inbounds i8*, i8** %631, i64 1, !dbg !1403
  %633 = load i8*, i8** %632, align 8, !dbg !1403
  %634 = load i8**, i8*** @NewArgv, align 8, !dbg !1404
  %635 = getelementptr inbounds i8*, i8** %634, i64 0, !dbg !1404
  store i8* %633, i8** %635, align 8, !dbg !1405
  %636 = load i8**, i8*** @NewArgv, align 8, !dbg !1406
  %637 = getelementptr inbounds i8*, i8** %636, i64 1, !dbg !1406
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8** %637, align 8, !dbg !1407
  br label %638, !dbg !1408

638:                                              ; preds = %626, %620, %614, %607
  %639 = call zeroext i1 @read_env_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i1 zeroext true, i1 zeroext false), !dbg !1409
  br i1 %639, label %645, label %640, !dbg !1411

640:                                              ; preds = %638
  br label %641, !dbg !1412

641:                                              ; preds = %640
  %642 = load i32, i32* %19, align 4, !dbg !1413
  %643 = or i32 51, %642, !dbg !1413
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 697, i32 %643, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0)), !dbg !1413
  call void (i8*, ...) @sudo_warn_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0)), !dbg !1413
  br label %644, !dbg !1413

644:                                              ; preds = %641
  br label %645, !dbg !1413

645:                                              ; preds = %644, %638
  br label %646, !dbg !1415

646:                                              ; preds = %645, %593
  %647 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 68, i32 5) to i8**), align 8, !dbg !1416
  %648 = icmp ne i8* %647, null, !dbg !1416
  br i1 %648, label %649, label %660, !dbg !1418

649:                                              ; preds = %646
  %650 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 68, i32 5) to i8**), align 8, !dbg !1419
  %651 = call zeroext i1 @read_env_file(i8* %650, i1 zeroext false, i1 zeroext true), !dbg !1422
  br i1 %651, label %659, label %652, !dbg !1423

652:                                              ; preds = %649
  br label %653, !dbg !1424

653:                                              ; preds = %652
  %654 = load i32, i32* %19, align 4, !dbg !1425
  %655 = or i32 51, %654, !dbg !1425
  %656 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 68, i32 5) to i8**), align 8, !dbg !1425
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 714, i32 %655, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %656), !dbg !1425
  %657 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 68, i32 5) to i8**), align 8, !dbg !1425
  call void (i8*, ...) @sudo_warn_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %657), !dbg !1425
  br label %658, !dbg !1425

658:                                              ; preds = %653
  br label %659, !dbg !1425

659:                                              ; preds = %658, %649
  br label %660, !dbg !1427

660:                                              ; preds = %659, %646
  %661 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 67, i32 5) to i8**), align 8, !dbg !1428
  %662 = icmp ne i8* %661, null, !dbg !1428
  br i1 %662, label %663, label %674, !dbg !1430

663:                                              ; preds = %660
  %664 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 67, i32 5) to i8**), align 8, !dbg !1431
  %665 = call zeroext i1 @read_env_file(i8* %664, i1 zeroext false, i1 zeroext false), !dbg !1434
  br i1 %665, label %673, label %666, !dbg !1435

666:                                              ; preds = %663
  br label %667, !dbg !1436

667:                                              ; preds = %666
  %668 = load i32, i32* %19, align 4, !dbg !1437
  %669 = or i32 51, %668, !dbg !1437
  %670 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 67, i32 5) to i8**), align 8, !dbg !1437
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 718, i32 %669, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %670), !dbg !1437
  %671 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 67, i32 5) to i8**), align 8, !dbg !1437
  call void (i8*, ...) @sudo_warn_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %671), !dbg !1437
  br label %672, !dbg !1437

672:                                              ; preds = %667
  br label %673, !dbg !1437

673:                                              ; preds = %672, %663
  br label %674, !dbg !1439

674:                                              ; preds = %673, %660
  %675 = load i8**, i8*** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 26), align 8, !dbg !1440
  %676 = call zeroext i1 @insert_env_vars(i8** %675), !dbg !1442
  br i1 %676, label %678, label %677, !dbg !1443

677:                                              ; preds = %674
  br label %738, !dbg !1444

678:                                              ; preds = %674
  %679 = load i32, i32* @sudo_mode, align 4, !dbg !1445
  %680 = and i32 %679, 2, !dbg !1445
  %681 = icmp ne i32 %680, 0, !dbg !1445
  br i1 %681, label %682, label %736, !dbg !1447

682:                                              ; preds = %678
  call void @llvm.dbg.declare(metadata i8*** %25, metadata !1448, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1451, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.declare(metadata i8** %27, metadata !1453, metadata !DIExpression()), !dbg !1454
  %683 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 22), align 8, !dbg !1455
  call void @free(i8* %683) #7, !dbg !1456
  %684 = load i32, i32* @NewArgc, align 4, !dbg !1457
  %685 = sub nsw i32 %684, 1, !dbg !1458
  %686 = load i8**, i8*** @NewArgv, align 8, !dbg !1459
  %687 = getelementptr inbounds i8*, i8** %686, i64 1, !dbg !1460
  %688 = call i8* @find_editor(i32 %685, i8** %687, i32* %26, i8*** %25, i8** null, i8** %27, i1 zeroext false), !dbg !1461
  store i8* %688, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 22), align 8, !dbg !1462
  %689 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 22), align 8, !dbg !1463
  %690 = icmp eq i8* %689, null, !dbg !1465
  br i1 %690, label %691, label %729, !dbg !1466

691:                                              ; preds = %682
  %692 = call i32* @__errno_location() #9, !dbg !1467
  %693 = load i32, i32* %692, align 4, !dbg !1467
  %694 = icmp ne i32 %693, 2, !dbg !1470
  br i1 %694, label %695, label %696, !dbg !1471

695:                                              ; preds = %691
  br label %738, !dbg !1472

696:                                              ; preds = %691
  %697 = load i8**, i8*** @NewArgv, align 8, !dbg !1473
  %698 = load i8*, i8** %27, align 8, !dbg !1474
  %699 = icmp ne i8* %698, null, !dbg !1474
  br i1 %699, label %700, label %702, !dbg !1474

700:                                              ; preds = %696
  %701 = load i8*, i8** %27, align 8, !dbg !1475
  br label %704, !dbg !1474

702:                                              ; preds = %696
  %703 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 53, i32 5) to i8**), align 8, !dbg !1476
  br label %704, !dbg !1474

704:                                              ; preds = %702, %700
  %705 = phi i8* [ %701, %700 ], [ %703, %702 ], !dbg !1474
  %706 = call i32 (i8**, i8*, ...) @audit_failure(i8** %697, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8* %705), !dbg !1477
  br label %707, !dbg !1478

707:                                              ; preds = %704
  %708 = load i32, i32* %19, align 4, !dbg !1479
  %709 = or i32 35, %708, !dbg !1479
  %710 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0)), !dbg !1479
  %711 = load i8*, i8** %27, align 8, !dbg !1479
  %712 = icmp ne i8* %711, null, !dbg !1479
  br i1 %712, label %713, label %715, !dbg !1479

713:                                              ; preds = %707
  %714 = load i8*, i8** %27, align 8, !dbg !1479
  br label %717, !dbg !1479

715:                                              ; preds = %707
  %716 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 53, i32 5) to i8**), align 8, !dbg !1479
  br label %717, !dbg !1479

717:                                              ; preds = %715, %713
  %718 = phi i8* [ %714, %713 ], [ %716, %715 ], !dbg !1479
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 740, i32 %709, i8* %710, i8* %718), !dbg !1479
  %719 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0)), !dbg !1479
  %720 = load i8*, i8** %27, align 8, !dbg !1479
  %721 = icmp ne i8* %720, null, !dbg !1479
  br i1 %721, label %722, label %724, !dbg !1479

722:                                              ; preds = %717
  %723 = load i8*, i8** %27, align 8, !dbg !1479
  br label %726, !dbg !1479

724:                                              ; preds = %717
  %725 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 53, i32 5) to i8**), align 8, !dbg !1479
  br label %726, !dbg !1479

726:                                              ; preds = %724, %722
  %727 = phi i8* [ %723, %722 ], [ %725, %724 ], !dbg !1479
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %719, i8* %727), !dbg !1479
  br label %728, !dbg !1479

728:                                              ; preds = %726
  br label %737, !dbg !1481

729:                                              ; preds = %682
  %730 = load i8**, i8*** %25, align 8, !dbg !1482
  %731 = bitcast i8** %730 to i8*, !dbg !1482
  %732 = call zeroext i1 @sudoers_gc_add(i32 1, i8* %731), !dbg !1483
  %733 = load i8**, i8*** %25, align 8, !dbg !1484
  store i8** %733, i8*** @NewArgv, align 8, !dbg !1485
  %734 = load i32, i32* %26, align 4, !dbg !1486
  store i32 %734, i32* @NewArgc, align 4, !dbg !1487
  %735 = call zeroext i1 @env_swap_old(), !dbg !1488
  br label %736, !dbg !1489

736:                                              ; preds = %729, %678
  br label %738, !dbg !1490

737:                                              ; preds = %728, %486, %482, %463, %448, %410, %388, %350, %345, %340, %323, %301, %297, %180, %46, %43
  call void @llvm.dbg.label(metadata !1491), !dbg !1492
  store i32 0, i32* %18, align 4, !dbg !1493
  br label %738, !dbg !1494

738:                                              ; preds = %737, %736, %695, %677, %580, %552, %514, %392, %387, %351, %346, %341, %338, %284, %232, %218, %210, %192, %162, %146, %103, %76
  call void @llvm.dbg.label(metadata !1495), !dbg !1496
  %739 = load i32, i32* %18, align 4, !dbg !1497
  %740 = icmp eq i32 %739, -1, !dbg !1499
  br i1 %740, label %741, label %743, !dbg !1500

741:                                              ; preds = %738
  %742 = call zeroext i1 @env_init(i8** null), !dbg !1501
  br label %754, !dbg !1503

743:                                              ; preds = %738
  %744 = load i32, i32* %18, align 4, !dbg !1504
  %745 = icmp ne i32 %744, 0, !dbg !1504
  %746 = load i8**, i8*** @NewArgv, align 8, !dbg !1507
  %747 = call i8** @env_get(), !dbg !1508
  %748 = load i32, i32* %14, align 4, !dbg !1509
  %749 = load i8*, i8** %13, align 8, !dbg !1510
  %750 = load i8*, i8** %12, align 8, !dbg !1511
  %751 = call zeroext i1 @sudoers_policy_store_result(i1 zeroext %745, i8** %746, i8** %747, i32 %748, i8* %749, i8* %750), !dbg !1512
  br i1 %751, label %753, label %752, !dbg !1513

752:                                              ; preds = %743
  store i32 -1, i32* %18, align 4, !dbg !1514
  br label %753, !dbg !1515

753:                                              ; preds = %752, %743
  br label %754

754:                                              ; preds = %753, %741
  %755 = call zeroext i1 @rewind_perms(), !dbg !1516
  br i1 %755, label %757, label %756, !dbg !1518

756:                                              ; preds = %754
  store i32 -1, i32* %18, align 4, !dbg !1519
  br label %757, !dbg !1520

757:                                              ; preds = %756, %754
  call void @restore_nproc(), !dbg !1521
  call void @sudo_freepwcache(), !dbg !1522
  call void @sudo_freegrcache(), !dbg !1523
  call void @sudo_warn_set_locale_func_v1(i1 (i1, i32*)* null), !dbg !1524
  br label %758, !dbg !1525

758:                                              ; preds = %757
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1526, metadata !DIExpression()), !dbg !1528
  %759 = load i32, i32* %18, align 4, !dbg !1528
  store i32 %759, i32* %28, align 4, !dbg !1528
  %760 = load i32, i32* %19, align 4, !dbg !1528
  %761 = load i32, i32* %28, align 4, !dbg !1528
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sudoers_policy_main, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 778, i32 %760, i32 %761), !dbg !1528
  %762 = load i32, i32* %28, align 4, !dbg !1528
  br label %763, !dbg !1528

763:                                              ; preds = %758
  ret i32 %762, !dbg !1528
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @unlimit_nproc() #0 !dbg !1529 {
  %1 = alloca %struct.rlimit, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.rlimit* %1, metadata !1530, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1532, metadata !DIExpression()), !dbg !1533
  %3 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 17), align 4, !dbg !1533
  store i32 %3, i32* %2, align 4, !dbg !1533
  %4 = load i32, i32* %2, align 4, !dbg !1533
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.unlimit_nproc, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 124, i32 %4), !dbg !1533
  %5 = call i32 @getrlimit(i32 6, %struct.rlimit* @nproclimit) #7, !dbg !1534
  %6 = icmp ne i32 %5, 0, !dbg !1536
  br i1 %6, label %7, label %12, !dbg !1537

7:                                                ; preds = %0
  br label %8, !dbg !1538

8:                                                ; preds = %7
  %9 = load i32, i32* %2, align 4, !dbg !1539
  %10 = or i32 51, %9, !dbg !1539
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.unlimit_nproc, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 127, i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0)), !dbg !1539
  call void (i8*, ...) @sudo_warn_nodebug_v1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0)), !dbg !1539
  br label %11, !dbg !1539

11:                                               ; preds = %8
  br label %12, !dbg !1539

12:                                               ; preds = %11, %0
  %13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1, !dbg !1541
  store i64 -1, i64* %13, align 8, !dbg !1542
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0, !dbg !1543
  store i64 -1, i64* %14, align 8, !dbg !1544
  %15 = call i32 @setrlimit(i32 6, %struct.rlimit* %1) #7, !dbg !1545
  %16 = icmp ne i32 %15, 0, !dbg !1547
  br i1 %16, label %17, label %29, !dbg !1548

17:                                               ; preds = %12
  %18 = load i64, i64* getelementptr inbounds (%struct.rlimit, %struct.rlimit* @nproclimit, i32 0, i32 1), align 8, !dbg !1549
  %19 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1, !dbg !1551
  store i64 %18, i64* %19, align 8, !dbg !1552
  %20 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0, !dbg !1553
  store i64 %18, i64* %20, align 8, !dbg !1554
  %21 = call i32 @setrlimit(i32 6, %struct.rlimit* %1) #7, !dbg !1555
  %22 = icmp ne i32 %21, 0, !dbg !1557
  br i1 %22, label %23, label %28, !dbg !1558

23:                                               ; preds = %17
  br label %24, !dbg !1559

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4, !dbg !1560
  %26 = or i32 51, %25, !dbg !1560
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.unlimit_nproc, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 132, i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0)), !dbg !1560
  call void (i8*, ...) @sudo_warn_nodebug_v1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0)), !dbg !1560
  br label %27, !dbg !1560

27:                                               ; preds = %24
  br label %28, !dbg !1560

28:                                               ; preds = %27, %17
  br label %29, !dbg !1562

29:                                               ; preds = %28, %12
  br label %30, !dbg !1563

30:                                               ; preds = %29
  %31 = load i32, i32* %2, align 4, !dbg !1564
  call void @sudo_debug_exit_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.unlimit_nproc, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 134, i32 %31), !dbg !1564
  br label %32, !dbg !1564

32:                                               ; preds = %30
  ret void, !dbg !1566
}

; Function Attrs: nounwind
declare i8* @reallocarray(i8*, i64, i64) #3

declare zeroext i1 @sudoers_gc_add(i32, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @set_cmnd() #0 !dbg !1567 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sudo_nss*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.sudo_nss** %2, metadata !1570, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1572, metadata !DIExpression()), !dbg !1573
  store i32 0, i32* %3, align 4, !dbg !1573
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1574, metadata !DIExpression()), !dbg !1575
  %16 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !1575
  store i32 %16, i32* %4, align 4, !dbg !1575
  %17 = load i32, i32* %4, align 4, !dbg !1575
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 922, i32 %17), !dbg !1575
  %18 = call noalias i8* @calloc(i64 1, i64 144) #7, !dbg !1576
  %19 = bitcast i8* %18 to %struct.stat*, !dbg !1576
  store %struct.stat* %19, %struct.stat** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 4), align 8, !dbg !1577
  %20 = load %struct.stat*, %struct.stat** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 4), align 8, !dbg !1578
  %21 = icmp eq %struct.stat* %20, null, !dbg !1580
  br i1 %21, label %22, label %36, !dbg !1581

22:                                               ; preds = %0
  br label %23, !dbg !1582

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4, !dbg !1584
  %25 = or i32 35, %24, !dbg !1584
  %26 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !1584
  %27 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !1584
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 927, i32 %25, i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* %27), !dbg !1584
  %28 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !1584
  %29 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !1584
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* %29), !dbg !1584
  br label %30, !dbg !1584

30:                                               ; preds = %23
  br label %31, !dbg !1586

31:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1587, metadata !DIExpression()), !dbg !1589
  store i32 3, i32* %5, align 4, !dbg !1589
  %32 = load i32, i32* %4, align 4, !dbg !1589
  %33 = load i32, i32* %5, align 4, !dbg !1589
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 928, i32 %32, i32 %33), !dbg !1589
  %34 = load i32, i32* %5, align 4, !dbg !1589
  store i32 %34, i32* %1, align 4, !dbg !1589
  br label %292, !dbg !1589

35:                                               ; No predecessors!
  br label %36, !dbg !1590

36:                                               ; preds = %35, %0
  %37 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1591
  %38 = icmp eq i8* %37, null, !dbg !1593
  br i1 %38, label %39, label %43, !dbg !1594

39:                                               ; preds = %36
  %40 = load i8**, i8*** @NewArgv, align 8, !dbg !1595
  %41 = getelementptr inbounds i8*, i8** %40, i64 0, !dbg !1595
  %42 = load i8*, i8** %41, align 8, !dbg !1595
  store i8* %42, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1596
  br label %43, !dbg !1597

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @sudo_mode, align 4, !dbg !1598
  %45 = and i32 %44, 259, !dbg !1600
  %46 = icmp ne i32 %45, 0, !dbg !1600
  br i1 %46, label %47, label %238, !dbg !1601

47:                                               ; preds = %43
  %48 = load i32, i32* @sudo_mode, align 4, !dbg !1602
  %49 = and i32 %48, 257, !dbg !1602
  %50 = icmp ne i32 %49, 0, !dbg !1602
  br i1 %50, label %51, label %88, !dbg !1605

51:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1606, metadata !DIExpression()), !dbg !1608
  %52 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 16), align 8, !dbg !1609
  store i8* %52, i8** %6, align 8, !dbg !1608
  %53 = load i8*, i8** %6, align 8, !dbg !1610
  %54 = icmp eq i8* %53, null, !dbg !1612
  br i1 %54, label %55, label %64, !dbg !1613

55:                                               ; preds = %51
  %56 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 5) to i8**), align 8, !dbg !1614
  %57 = icmp ne i8* %56, null, !dbg !1615
  br i1 %57, label %58, label %64, !dbg !1616

58:                                               ; preds = %55
  %59 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 5) to i8**), align 8, !dbg !1617
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !1618
  %61 = icmp ne i32 %60, 0, !dbg !1619
  br i1 %61, label %62, label %64, !dbg !1620

62:                                               ; preds = %58
  %63 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 5) to i8**), align 8, !dbg !1621
  store i8* %63, i8** %6, align 8, !dbg !1622
  br label %64, !dbg !1623

64:                                               ; preds = %62, %58, %55, %51
  %65 = load i8*, i8** %6, align 8, !dbg !1624
  %66 = call i32 @set_cmnd_path(i8* %65), !dbg !1625
  store i32 %66, i32* %3, align 4, !dbg !1626
  %67 = load i32, i32* %3, align 4, !dbg !1627
  %68 = icmp eq i32 %67, 3, !dbg !1629
  br i1 %68, label %69, label %87, !dbg !1630

69:                                               ; preds = %64
  %70 = call i32* @__errno_location() #9, !dbg !1631
  %71 = load i32, i32* %70, align 4, !dbg !1631
  %72 = icmp eq i32 %71, 36, !dbg !1634
  br i1 %72, label %73, label %76, !dbg !1635

73:                                               ; preds = %69
  %74 = load i8**, i8*** @NewArgv, align 8, !dbg !1636
  %75 = call i32 (i8**, i8*, ...) @audit_failure(i8** %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0)), !dbg !1638
  br label %76, !dbg !1639

76:                                               ; preds = %73, %69
  %77 = load i8**, i8*** @NewArgv, align 8, !dbg !1640
  %78 = getelementptr inbounds i8*, i8** %77, i64 0, !dbg !1640
  %79 = load i8*, i8** %78, align 8, !dbg !1640
  %80 = call zeroext i1 (i32, i8*, ...) @log_warning(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %79), !dbg !1641
  br label %81, !dbg !1642

81:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1643, metadata !DIExpression()), !dbg !1645
  %82 = load i32, i32* %3, align 4, !dbg !1645
  store i32 %82, i32* %7, align 4, !dbg !1645
  %83 = load i32, i32* %4, align 4, !dbg !1645
  %84 = load i32, i32* %7, align 4, !dbg !1645
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 948, i32 %83, i32 %84), !dbg !1645
  %85 = load i32, i32* %7, align 4, !dbg !1645
  store i32 %85, i32* %1, align 4, !dbg !1645
  br label %292, !dbg !1645

86:                                               ; No predecessors!
  br label %87, !dbg !1646

87:                                               ; preds = %86, %64
  br label %88, !dbg !1647

88:                                               ; preds = %87, %47
  %89 = load i32, i32* @NewArgc, align 4, !dbg !1648
  %90 = icmp sgt i32 %89, 1, !dbg !1650
  br i1 %90, label %91, label %237, !dbg !1651

91:                                               ; preds = %88
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1655, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1657, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1659, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1661, metadata !DIExpression()), !dbg !1662
  store i64 0, i64* %11, align 8, !dbg !1663
  %92 = load i8**, i8*** @NewArgv, align 8, !dbg !1665
  %93 = getelementptr inbounds i8*, i8** %92, i64 1, !dbg !1666
  store i8** %93, i8*** %10, align 8, !dbg !1667
  br label %94, !dbg !1668

94:                                               ; preds = %105, %91
  %95 = load i8**, i8*** %10, align 8, !dbg !1669
  %96 = load i8*, i8** %95, align 8, !dbg !1671
  %97 = icmp ne i8* %96, null, !dbg !1672
  br i1 %97, label %98, label %108, !dbg !1672

98:                                               ; preds = %94
  %99 = load i8**, i8*** %10, align 8, !dbg !1673
  %100 = load i8*, i8** %99, align 8, !dbg !1674
  %101 = call i64 @strlen(i8* %100) #8, !dbg !1675
  %102 = add i64 %101, 1, !dbg !1676
  %103 = load i64, i64* %11, align 8, !dbg !1677
  %104 = add i64 %103, %102, !dbg !1677
  store i64 %104, i64* %11, align 8, !dbg !1677
  br label %105, !dbg !1678

105:                                              ; preds = %98
  %106 = load i8**, i8*** %10, align 8, !dbg !1679
  %107 = getelementptr inbounds i8*, i8** %106, i32 1, !dbg !1679
  store i8** %107, i8*** %10, align 8, !dbg !1679
  br label %94, !dbg !1680, !llvm.loop !1681

108:                                              ; preds = %94
  %109 = load i64, i64* %11, align 8, !dbg !1683
  %110 = icmp eq i64 %109, 0, !dbg !1685
  br i1 %110, label %115, label %111, !dbg !1686

111:                                              ; preds = %108
  %112 = load i64, i64* %11, align 8, !dbg !1687
  %113 = call noalias i8* @malloc(i64 %112) #7, !dbg !1688
  store i8* %113, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 20), align 8, !dbg !1689
  %114 = icmp eq i8* %113, null, !dbg !1690
  br i1 %114, label %115, label %129, !dbg !1691

115:                                              ; preds = %111, %108
  br label %116, !dbg !1692

116:                                              ; preds = %115
  %117 = load i32, i32* %4, align 4, !dbg !1694
  %118 = or i32 35, %117, !dbg !1694
  %119 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !1694
  %120 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !1694
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 961, i32 %118, i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* %120), !dbg !1694
  %121 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !1694
  %122 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !1694
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* %122), !dbg !1694
  br label %123, !dbg !1694

123:                                              ; preds = %116
  br label %124, !dbg !1696

124:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1697, metadata !DIExpression()), !dbg !1699
  store i32 3, i32* %13, align 4, !dbg !1699
  %125 = load i32, i32* %4, align 4, !dbg !1699
  %126 = load i32, i32* %13, align 4, !dbg !1699
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 962, i32 %125, i32 %126), !dbg !1699
  %127 = load i32, i32* %13, align 4, !dbg !1699
  store i32 %127, i32* %1, align 4, !dbg !1699
  br label %292, !dbg !1699

128:                                              ; No predecessors!
  br label %129, !dbg !1700

129:                                              ; preds = %128, %111
  %130 = load i32, i32* @sudo_mode, align 4, !dbg !1701
  %131 = and i32 %130, 393216, !dbg !1701
  %132 = icmp ne i32 %131, 0, !dbg !1701
  br i1 %132, label %133, label %183, !dbg !1703

133:                                              ; preds = %129
  %134 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 20), align 8, !dbg !1704
  store i8* %134, i8** %8, align 8, !dbg !1707
  %135 = load i8**, i8*** @NewArgv, align 8, !dbg !1708
  %136 = getelementptr inbounds i8*, i8** %135, i64 1, !dbg !1709
  store i8** %136, i8*** %10, align 8, !dbg !1710
  br label %137, !dbg !1711

137:                                              ; preds = %177, %133
  %138 = load i8**, i8*** %10, align 8, !dbg !1712
  %139 = load i8*, i8** %138, align 8, !dbg !1714
  store i8* %139, i8** %9, align 8, !dbg !1715
  %140 = icmp ne i8* %139, null, !dbg !1716
  br i1 %140, label %141, label %180, !dbg !1716

141:                                              ; preds = %137
  br label %142, !dbg !1717

142:                                              ; preds = %168, %141
  %143 = load i8*, i8** %9, align 8, !dbg !1719
  %144 = load i8, i8* %143, align 1, !dbg !1720
  %145 = icmp ne i8 %144, 0, !dbg !1717
  br i1 %145, label %146, label %174, !dbg !1717

146:                                              ; preds = %142
  %147 = load i8*, i8** %9, align 8, !dbg !1721
  %148 = getelementptr inbounds i8, i8* %147, i64 0, !dbg !1721
  %149 = load i8, i8* %148, align 1, !dbg !1721
  %150 = sext i8 %149 to i32, !dbg !1721
  %151 = icmp eq i32 %150, 92, !dbg !1724
  br i1 %151, label %152, label %168, !dbg !1725

152:                                              ; preds = %146
  %153 = call i16** @__ctype_b_loc() #9, !dbg !1726
  %154 = load i16*, i16** %153, align 8, !dbg !1726
  %155 = load i8*, i8** %9, align 8, !dbg !1726
  %156 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !1726
  %157 = load i8, i8* %156, align 1, !dbg !1726
  %158 = zext i8 %157 to i32, !dbg !1726
  %159 = sext i32 %158 to i64, !dbg !1726
  %160 = getelementptr inbounds i16, i16* %154, i64 %159, !dbg !1726
  %161 = load i16, i16* %160, align 2, !dbg !1726
  %162 = zext i16 %161 to i32, !dbg !1726
  %163 = and i32 %162, 8192, !dbg !1726
  %164 = icmp ne i32 %163, 0, !dbg !1726
  br i1 %164, label %168, label %165, !dbg !1727

165:                                              ; preds = %152
  %166 = load i8*, i8** %9, align 8, !dbg !1728
  %167 = getelementptr inbounds i8, i8* %166, i32 1, !dbg !1728
  store i8* %167, i8** %9, align 8, !dbg !1728
  br label %168, !dbg !1729

168:                                              ; preds = %165, %152, %146
  %169 = load i8*, i8** %9, align 8, !dbg !1730
  %170 = getelementptr inbounds i8, i8* %169, i32 1, !dbg !1730
  store i8* %170, i8** %9, align 8, !dbg !1730
  %171 = load i8, i8* %169, align 1, !dbg !1731
  %172 = load i8*, i8** %8, align 8, !dbg !1732
  %173 = getelementptr inbounds i8, i8* %172, i32 1, !dbg !1732
  store i8* %173, i8** %8, align 8, !dbg !1732
  store i8 %171, i8* %172, align 1, !dbg !1733
  br label %142, !dbg !1717, !llvm.loop !1734

174:                                              ; preds = %142
  %175 = load i8*, i8** %8, align 8, !dbg !1736
  %176 = getelementptr inbounds i8, i8* %175, i32 1, !dbg !1736
  store i8* %176, i8** %8, align 8, !dbg !1736
  store i8 32, i8* %175, align 1, !dbg !1737
  br label %177, !dbg !1738

177:                                              ; preds = %174
  %178 = load i8**, i8*** %10, align 8, !dbg !1739
  %179 = getelementptr inbounds i8*, i8** %178, i32 1, !dbg !1739
  store i8** %179, i8*** %10, align 8, !dbg !1739
  br label %137, !dbg !1740, !llvm.loop !1741

180:                                              ; preds = %137
  %181 = load i8*, i8** %8, align 8, !dbg !1743
  %182 = getelementptr inbounds i8, i8* %181, i32 -1, !dbg !1743
  store i8* %182, i8** %8, align 8, !dbg !1743
  store i8 0, i8* %182, align 1, !dbg !1744
  br label %236, !dbg !1745

183:                                              ; preds = %129
  %184 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 20), align 8, !dbg !1746
  store i8* %184, i8** %8, align 8, !dbg !1749
  %185 = load i8**, i8*** @NewArgv, align 8, !dbg !1750
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !1751
  store i8** %186, i8*** %10, align 8, !dbg !1752
  br label %187, !dbg !1753

187:                                              ; preds = %230, %183
  %188 = load i8**, i8*** %10, align 8, !dbg !1754
  %189 = load i8*, i8** %188, align 8, !dbg !1756
  %190 = icmp ne i8* %189, null, !dbg !1757
  br i1 %190, label %191, label %233, !dbg !1757

191:                                              ; preds = %187
  %192 = load i8*, i8** %8, align 8, !dbg !1758
  %193 = load i8**, i8*** %10, align 8, !dbg !1758
  %194 = load i8*, i8** %193, align 8, !dbg !1758
  %195 = load i64, i64* %11, align 8, !dbg !1758
  %196 = load i8*, i8** %8, align 8, !dbg !1758
  %197 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 20), align 8, !dbg !1758
  %198 = ptrtoint i8* %196 to i64, !dbg !1758
  %199 = ptrtoint i8* %197 to i64, !dbg !1758
  %200 = sub i64 %198, %199, !dbg !1758
  %201 = sub i64 %195, %200, !dbg !1758
  %202 = call i64 @sudo_strlcpy(i8* %192, i8* %194, i64 %201), !dbg !1758
  store i64 %202, i64* %12, align 8, !dbg !1760
  %203 = load i64, i64* %12, align 8, !dbg !1761
  %204 = load i64, i64* %11, align 8, !dbg !1763
  %205 = load i8*, i8** %8, align 8, !dbg !1764
  %206 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 20), align 8, !dbg !1765
  %207 = ptrtoint i8* %205 to i64, !dbg !1766
  %208 = ptrtoint i8* %206 to i64, !dbg !1766
  %209 = sub i64 %207, %208, !dbg !1766
  %210 = sub i64 %204, %209, !dbg !1767
  %211 = icmp uge i64 %203, %210, !dbg !1768
  br i1 %211, label %212, label %224, !dbg !1769

212:                                              ; preds = %191
  br label %213, !dbg !1770

213:                                              ; preds = %212
  %214 = load i32, i32* %4, align 4, !dbg !1772
  %215 = or i32 35, %214, !dbg !1772
  %216 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0)), !dbg !1772
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 983, i32 %215, i8* %216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0)), !dbg !1772
  %217 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0)), !dbg !1772
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0)), !dbg !1772
  br label %218, !dbg !1772

218:                                              ; preds = %213
  br label %219, !dbg !1774

219:                                              ; preds = %218
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1775, metadata !DIExpression()), !dbg !1777
  store i32 3, i32* %14, align 4, !dbg !1777
  %220 = load i32, i32* %4, align 4, !dbg !1777
  %221 = load i32, i32* %14, align 4, !dbg !1777
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 984, i32 %220, i32 %221), !dbg !1777
  %222 = load i32, i32* %14, align 4, !dbg !1777
  store i32 %222, i32* %1, align 4, !dbg !1777
  br label %292, !dbg !1777

223:                                              ; No predecessors!
  br label %224, !dbg !1778

224:                                              ; preds = %223, %191
  %225 = load i64, i64* %12, align 8, !dbg !1779
  %226 = load i8*, i8** %8, align 8, !dbg !1780
  %227 = getelementptr inbounds i8, i8* %226, i64 %225, !dbg !1780
  store i8* %227, i8** %8, align 8, !dbg !1780
  %228 = load i8*, i8** %8, align 8, !dbg !1781
  %229 = getelementptr inbounds i8, i8* %228, i32 1, !dbg !1781
  store i8* %229, i8** %8, align 8, !dbg !1781
  store i8 32, i8* %228, align 1, !dbg !1782
  br label %230, !dbg !1783

230:                                              ; preds = %224
  %231 = load i8**, i8*** %10, align 8, !dbg !1784
  %232 = getelementptr inbounds i8*, i8** %231, i32 1, !dbg !1784
  store i8** %232, i8*** %10, align 8, !dbg !1784
  br label %187, !dbg !1785, !llvm.loop !1786

233:                                              ; preds = %187
  %234 = load i8*, i8** %8, align 8, !dbg !1788
  %235 = getelementptr inbounds i8, i8* %234, i32 -1, !dbg !1788
  store i8* %235, i8** %8, align 8, !dbg !1788
  store i8 0, i8* %235, align 1, !dbg !1789
  br label %236

236:                                              ; preds = %233, %180
  br label %237, !dbg !1790

237:                                              ; preds = %236, %88
  br label %238, !dbg !1791

238:                                              ; preds = %237, %43
  %239 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1792
  %240 = call i8* @strrchr(i8* %239, i32 47) #8, !dbg !1794
  store i8* %240, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 21), align 8, !dbg !1795
  %241 = icmp ne i8* %240, null, !dbg !1796
  br i1 %241, label %242, label %245, !dbg !1797

242:                                              ; preds = %238
  %243 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 21), align 8, !dbg !1798
  %244 = getelementptr inbounds i8, i8* %243, i32 1, !dbg !1798
  store i8* %244, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 21), align 8, !dbg !1798
  br label %247, !dbg !1799

245:                                              ; preds = %238
  %246 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1800
  store i8* %246, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 21), align 8, !dbg !1801
  br label %247

247:                                              ; preds = %245, %242
  %248 = load i32, i32* @sudo_mode, align 4, !dbg !1802
  %249 = and i32 %248, 1, !dbg !1802
  %250 = icmp ne i32 %249, 0, !dbg !1802
  br i1 %250, label %251, label %266, !dbg !1804

251:                                              ; preds = %247
  %252 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 21), align 8, !dbg !1805
  %253 = call i32 @strcmp(i8* %252, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0)) #8, !dbg !1806
  %254 = icmp eq i32 %253, 0, !dbg !1807
  br i1 %254, label %255, label %266, !dbg !1808

255:                                              ; preds = %251
  %256 = load i32, i32* @sudo_mode, align 4, !dbg !1809
  %257 = and i32 %256, -2, !dbg !1809
  store i32 %257, i32* @sudo_mode, align 4, !dbg !1809
  %258 = load i32, i32* @sudo_mode, align 4, !dbg !1811
  %259 = or i32 %258, 2, !dbg !1811
  store i32 %259, i32* @sudo_mode, align 4, !dbg !1811
  br label %260, !dbg !1812

260:                                              ; preds = %255
  %261 = load i32, i32* %4, align 4, !dbg !1813
  %262 = or i32 35, %261, !dbg !1813
  %263 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.64, i64 0, i64 0)), !dbg !1813
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1003, i32 %262, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %263), !dbg !1813
  %264 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.64, i64 0, i64 0)), !dbg !1813
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %264), !dbg !1813
  br label %265, !dbg !1813

265:                                              ; preds = %260
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1815
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 21), align 8, !dbg !1816
  br label %266, !dbg !1817

266:                                              ; preds = %265, %251, %247
  %267 = load %struct.sudo_nss_list*, %struct.sudo_nss_list** @snl, align 8, !dbg !1818
  %268 = getelementptr inbounds %struct.sudo_nss_list, %struct.sudo_nss_list* %267, i32 0, i32 0, !dbg !1818
  %269 = load %struct.sudo_nss*, %struct.sudo_nss** %268, align 8, !dbg !1818
  store %struct.sudo_nss* %269, %struct.sudo_nss** %2, align 8, !dbg !1818
  br label %270, !dbg !1818

270:                                              ; preds = %281, %266
  %271 = load %struct.sudo_nss*, %struct.sudo_nss** %2, align 8, !dbg !1820
  %272 = icmp ne %struct.sudo_nss* %271, null, !dbg !1818
  br i1 %272, label %273, label %286, !dbg !1818

273:                                              ; preds = %270
  %274 = load %struct.sudo_nss*, %struct.sudo_nss** %2, align 8, !dbg !1822
  %275 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %274, i32 0, i32 7, !dbg !1825
  %276 = load %struct.sudoers_parse_tree*, %struct.sudoers_parse_tree** %275, align 8, !dbg !1825
  %277 = call zeroext i1 @update_defaults(%struct.sudoers_parse_tree* %276, %struct.defaults_list* null, i32 16, i1 zeroext false), !dbg !1826
  br i1 %277, label %280, label %278, !dbg !1827

278:                                              ; preds = %273
  %279 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0)), !dbg !1828
  br label %280, !dbg !1830

280:                                              ; preds = %278, %273
  br label %281, !dbg !1831

281:                                              ; preds = %280
  %282 = load %struct.sudo_nss*, %struct.sudo_nss** %2, align 8, !dbg !1820
  %283 = getelementptr inbounds %struct.sudo_nss, %struct.sudo_nss* %282, i32 0, i32 0, !dbg !1820
  %284 = getelementptr inbounds %struct.anon, %struct.anon* %283, i32 0, i32 0, !dbg !1820
  %285 = load %struct.sudo_nss*, %struct.sudo_nss** %284, align 8, !dbg !1820
  store %struct.sudo_nss* %285, %struct.sudo_nss** %2, align 8, !dbg !1820
  br label %270, !dbg !1820, !llvm.loop !1832

286:                                              ; preds = %270
  br label %287, !dbg !1834

287:                                              ; preds = %286
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1835, metadata !DIExpression()), !dbg !1837
  %288 = load i32, i32* %3, align 4, !dbg !1837
  store i32 %288, i32* %15, align 4, !dbg !1837
  %289 = load i32, i32* %4, align 4, !dbg !1837
  %290 = load i32, i32* %15, align 4, !dbg !1837
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.set_cmnd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1014, i32 %289, i32 %290), !dbg !1837
  %291 = load i32, i32* %15, align 4, !dbg !1837
  store i32 %291, i32* %1, align 4, !dbg !1837
  br label %292, !dbg !1837

292:                                              ; preds = %31, %81, %124, %219, %287
  %293 = load i32, i32* %1, align 4, !dbg !1838
  ret i32 %293, !dbg !1838
}

declare i32 @sudoers_lookup(%struct.sudo_nss_list*, %struct.passwd*, i32*, i32) #2

declare i32 @sudo_strtoid_v2(i8*, i8**) #2

declare %struct.passwd* @sudo_getpwuid(i32) #2

declare %struct.passwd* @sudo_getpwnam(i8*) #2

declare void @sudo_pw_delref(%struct.passwd*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @tty_present() #0 !dbg !1839 {
  %1 = alloca i1, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1842, metadata !DIExpression()), !dbg !1843
  %6 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !1843
  store i32 %6, i32* %2, align 4, !dbg !1843
  %7 = load i32, i32* %2, align 4, !dbg !1843
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.tty_present, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1689, i32 %7), !dbg !1843
  %8 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 11), align 8, !dbg !1844
  %9 = icmp eq i8* %8, null, !dbg !1846
  br i1 %9, label %10, label %25, !dbg !1847

10:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1848, metadata !DIExpression()), !dbg !1850
  %11 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0), i32 2), !dbg !1851
  store i32 %11, i32* %3, align 4, !dbg !1850
  %12 = load i32, i32* %3, align 4, !dbg !1852
  %13 = icmp eq i32 %12, -1, !dbg !1854
  br i1 %13, label %14, label %22, !dbg !1855

14:                                               ; preds = %10
  br label %15, !dbg !1856

15:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1857, metadata !DIExpression()), !dbg !1859
  store i8 0, i8* %4, align 1, !dbg !1859
  %16 = load i32, i32* %2, align 4, !dbg !1859
  %17 = load i8, i8* %4, align 1, !dbg !1859
  %18 = trunc i8 %17 to i1, !dbg !1859
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.tty_present, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1694, i32 %16, i1 zeroext %18), !dbg !1859
  %19 = load i8, i8* %4, align 1, !dbg !1859
  %20 = trunc i8 %19 to i1, !dbg !1859
  store i1 %20, i1* %1, align 1, !dbg !1859
  br label %32, !dbg !1859

21:                                               ; No predecessors!
  br label %22, !dbg !1859

22:                                               ; preds = %21, %10
  %23 = load i32, i32* %3, align 4, !dbg !1860
  %24 = call i32 @close(i32 %23), !dbg !1861
  br label %25, !dbg !1862

25:                                               ; preds = %22, %0
  br label %26, !dbg !1863

26:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1864, metadata !DIExpression()), !dbg !1866
  store i8 1, i8* %5, align 1, !dbg !1866
  %27 = load i32, i32* %2, align 4, !dbg !1866
  %28 = load i8, i8* %5, align 1, !dbg !1866
  %29 = trunc i8 %28 to i1, !dbg !1866
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.tty_present, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1697, i32 %27, i1 zeroext %29), !dbg !1866
  %30 = load i8, i8* %5, align 1, !dbg !1866
  %31 = trunc i8 %30 to i1, !dbg !1866
  store i1 %31, i1* %1, align 1, !dbg !1866
  br label %32, !dbg !1866

32:                                               ; preds = %15, %26
  %33 = load i1, i1* %1, align 1, !dbg !1867
  ret i1 %33, !dbg !1867
}

declare zeroext i1 @check_user_shell(%struct.passwd*) #2

declare zeroext i1 @rebuild_env() #2

declare i32 @check_user(i32, i32) #2

declare zeroext i1 @log_denial(i32, i1 zeroext) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @check_user_runchroot() #0 !dbg !1868 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1869, metadata !DIExpression()), !dbg !1870
  %7 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !1870
  store i32 %7, i32* %2, align 4, !dbg !1870
  %8 = load i32, i32* %2, align 4, !dbg !1870
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_user_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 277, i32 %8), !dbg !1870
  %9 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 16), align 8, !dbg !1871
  %10 = icmp eq i8* %9, null, !dbg !1873
  br i1 %10, label %11, label %20, !dbg !1874

11:                                               ; preds = %0
  br label %12, !dbg !1875

12:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1876, metadata !DIExpression()), !dbg !1878
  store i8 1, i8* %3, align 1, !dbg !1878
  %13 = load i32, i32* %2, align 4, !dbg !1878
  %14 = load i8, i8* %3, align 1, !dbg !1878
  %15 = trunc i8 %14 to i1, !dbg !1878
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_user_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 280, i32 %13, i1 zeroext %15), !dbg !1878
  %16 = load i8, i8* %3, align 1, !dbg !1878
  %17 = trunc i8 %16 to i1, !dbg !1878
  %18 = zext i1 %17 to i32, !dbg !1878
  store i32 %18, i32* %1, align 4, !dbg !1878
  br label %94, !dbg !1878

19:                                               ; No predecessors!
  br label %20, !dbg !1878

20:                                               ; preds = %19, %0
  %21 = load i32, i32* %2, align 4, !dbg !1879
  %22 = or i32 38, %21, !dbg !1879
  %23 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 5) to i8**), align 8, !dbg !1879
  %24 = icmp ne i8* %23, null, !dbg !1879
  br i1 %24, label %25, label %27, !dbg !1879

25:                                               ; preds = %20
  %26 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 5) to i8**), align 8, !dbg !1879
  br label %28, !dbg !1879

27:                                               ; preds = %20
  br label %28, !dbg !1879

28:                                               ; preds = %27, %25
  %29 = phi i8* [ %26, %25 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %27 ], !dbg !1879
  %30 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 16), align 8, !dbg !1879
  %31 = icmp ne i8* %30, null, !dbg !1879
  br i1 %31, label %32, label %34, !dbg !1879

32:                                               ; preds = %28
  %33 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 16), align 8, !dbg !1879
  br label %35, !dbg !1879

34:                                               ; preds = %28
  br label %35, !dbg !1879

35:                                               ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %34 ], !dbg !1879
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_user_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 285, i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0), i8* %29, i8* %36), !dbg !1879
  %37 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 5) to i8**), align 8, !dbg !1880
  %38 = icmp eq i8* %37, null, !dbg !1882
  br i1 %38, label %48, label %39, !dbg !1883

39:                                               ; preds = %35
  %40 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 5) to i8**), align 8, !dbg !1884
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !1885
  %42 = icmp ne i32 %41, 0, !dbg !1886
  br i1 %42, label %43, label %67, !dbg !1887

43:                                               ; preds = %39
  %44 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 5) to i8**), align 8, !dbg !1888
  %45 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 16), align 8, !dbg !1889
  %46 = call i32 @strcmp(i8* %44, i8* %45) #8, !dbg !1890
  %47 = icmp ne i32 %46, 0, !dbg !1891
  br i1 %47, label %48, label %67, !dbg !1892

48:                                               ; preds = %43, %35
  %49 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 16), align 8, !dbg !1893
  %50 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.44, i64 0, i64 0), i8* %49), !dbg !1895
  br label %51, !dbg !1896

51:                                               ; preds = %48
  %52 = load i32, i32* %2, align 4, !dbg !1897
  %53 = or i32 35, %52, !dbg !1897
  %54 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0)), !dbg !1897
  %55 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1897
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_user_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 293, i32 %53, i8* %54, i8* %55), !dbg !1897
  %56 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0)), !dbg !1897
  %57 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1897
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %56, i8* %57), !dbg !1897
  br label %58, !dbg !1897

58:                                               ; preds = %51
  br label %59, !dbg !1899

59:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1900, metadata !DIExpression()), !dbg !1902
  store i8 0, i8* %4, align 1, !dbg !1902
  %60 = load i32, i32* %2, align 4, !dbg !1902
  %61 = load i8, i8* %4, align 1, !dbg !1902
  %62 = trunc i8 %61 to i1, !dbg !1902
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_user_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 294, i32 %60, i1 zeroext %62), !dbg !1902
  %63 = load i8, i8* %4, align 1, !dbg !1902
  %64 = trunc i8 %63 to i1, !dbg !1902
  %65 = zext i1 %64 to i32, !dbg !1902
  store i32 %65, i32* %1, align 4, !dbg !1902
  br label %94, !dbg !1902

66:                                               ; No predecessors!
  br label %67, !dbg !1903

67:                                               ; preds = %66, %43, %39
  %68 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 5) to i8**), align 8, !dbg !1904
  call void @free(i8* %68) #7, !dbg !1905
  %69 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 16), align 8, !dbg !1906
  %70 = call noalias i8* @strdup(i8* %69) #7, !dbg !1908
  store i8* %70, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 5) to i8**), align 8, !dbg !1909
  %71 = icmp eq i8* %70, null, !dbg !1910
  br i1 %71, label %72, label %86, !dbg !1911

72:                                               ; preds = %67
  br label %73, !dbg !1912

73:                                               ; preds = %72
  %74 = load i32, i32* %2, align 4, !dbg !1914
  %75 = or i32 35, %74, !dbg !1914
  %76 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !1914
  %77 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !1914
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_user_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 298, i32 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_user_runchroot, i64 0, i64 0), i8* %77), !dbg !1914
  %78 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !1914
  %79 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !1914
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_user_runchroot, i64 0, i64 0), i8* %79), !dbg !1914
  br label %80, !dbg !1914

80:                                               ; preds = %73
  br label %81, !dbg !1916

81:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1917, metadata !DIExpression()), !dbg !1919
  store i32 -1, i32* %5, align 4, !dbg !1919
  %82 = load i32, i32* %2, align 4, !dbg !1919
  %83 = load i32, i32* %5, align 4, !dbg !1919
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_user_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 299, i32 %82, i32 %83), !dbg !1919
  %84 = load i32, i32* %5, align 4, !dbg !1919
  store i32 %84, i32* %1, align 4, !dbg !1919
  br label %94, !dbg !1919

85:                                               ; No predecessors!
  br label %86, !dbg !1920

86:                                               ; preds = %85, %67
  br label %87, !dbg !1921

87:                                               ; preds = %86
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1922, metadata !DIExpression()), !dbg !1924
  store i8 1, i8* %6, align 1, !dbg !1924
  %88 = load i32, i32* %2, align 4, !dbg !1924
  %89 = load i8, i8* %6, align 1, !dbg !1924
  %90 = trunc i8 %89 to i1, !dbg !1924
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.check_user_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 301, i32 %88, i1 zeroext %90), !dbg !1924
  %91 = load i8, i8* %6, align 1, !dbg !1924
  %92 = trunc i8 %91 to i1, !dbg !1924
  %93 = zext i1 %92 to i32, !dbg !1924
  store i32 %93, i32* %1, align 4, !dbg !1924
  br label %94, !dbg !1924

94:                                               ; preds = %12, %59, %81, %87
  %95 = load i32, i32* %1, align 4, !dbg !1925
  ret i32 %95, !dbg !1925
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @check_user_runcwd() #0 !dbg !1926 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1927, metadata !DIExpression()), !dbg !1928
  %6 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !1928
  store i32 %6, i32* %2, align 4, !dbg !1928
  %7 = load i32, i32* %2, align 4, !dbg !1928
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.check_user_runcwd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 307, i32 %7), !dbg !1928
  %8 = load i32, i32* %2, align 4, !dbg !1929
  %9 = or i32 38, %8, !dbg !1929
  %10 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 128, i32 5) to i8**), align 8, !dbg !1929
  %11 = icmp ne i8* %10, null, !dbg !1929
  br i1 %11, label %12, label %14, !dbg !1929

12:                                               ; preds = %0
  %13 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 128, i32 5) to i8**), align 8, !dbg !1929
  br label %15, !dbg !1929

14:                                               ; preds = %0
  br label %15, !dbg !1929

15:                                               ; preds = %14, %12
  %16 = phi i8* [ %13, %12 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %14 ], !dbg !1929
  %17 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 17), align 8, !dbg !1929
  %18 = icmp ne i8* %17, null, !dbg !1929
  br i1 %18, label %19, label %21, !dbg !1929

19:                                               ; preds = %15
  %20 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 17), align 8, !dbg !1929
  br label %22, !dbg !1929

21:                                               ; preds = %15
  br label %22, !dbg !1929

22:                                               ; preds = %21, %19
  %23 = phi i8* [ %20, %19 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %21 ], !dbg !1929
  %24 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 5), align 8, !dbg !1929
  %25 = icmp ne i8* %24, null, !dbg !1929
  br i1 %25, label %26, label %28, !dbg !1929

26:                                               ; preds = %22
  %27 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 5), align 8, !dbg !1929
  br label %29, !dbg !1929

28:                                               ; preds = %22
  br label %29, !dbg !1929

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %28 ], !dbg !1929
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.check_user_runcwd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 312, i32 %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i64 0, i64 0), i8* %16, i8* %23, i8* %30), !dbg !1929
  %31 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 5), align 8, !dbg !1930
  %32 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 17), align 8, !dbg !1932
  %33 = call i32 @strcmp(i8* %31, i8* %32) #8, !dbg !1933
  %34 = icmp ne i32 %33, 0, !dbg !1934
  br i1 %34, label %35, label %81, !dbg !1935

35:                                               ; preds = %29
  %36 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 128, i32 5) to i8**), align 8, !dbg !1936
  %37 = icmp eq i8* %36, null, !dbg !1939
  br i1 %37, label %42, label %38, !dbg !1940

38:                                               ; preds = %35
  %39 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 128, i32 5) to i8**), align 8, !dbg !1941
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !1942
  %41 = icmp ne i32 %40, 0, !dbg !1943
  br i1 %41, label %42, label %61, !dbg !1944

42:                                               ; preds = %38, %35
  %43 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 17), align 8, !dbg !1945
  %44 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.47, i64 0, i64 0), i8* %43), !dbg !1947
  br label %45, !dbg !1948

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4, !dbg !1949
  %47 = or i32 35, %46, !dbg !1949
  %48 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0)), !dbg !1949
  %49 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1949
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.check_user_runcwd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 319, i32 %47, i8* %48, i8* %49), !dbg !1949
  %50 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0)), !dbg !1949
  %51 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !1949
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %50, i8* %51), !dbg !1949
  br label %52, !dbg !1949

52:                                               ; preds = %45
  br label %53, !dbg !1951

53:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1952, metadata !DIExpression()), !dbg !1954
  store i8 0, i8* %3, align 1, !dbg !1954
  %54 = load i32, i32* %2, align 4, !dbg !1954
  %55 = load i8, i8* %3, align 1, !dbg !1954
  %56 = trunc i8 %55 to i1, !dbg !1954
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.check_user_runcwd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 320, i32 %54, i1 zeroext %56), !dbg !1954
  %57 = load i8, i8* %3, align 1, !dbg !1954
  %58 = trunc i8 %57 to i1, !dbg !1954
  %59 = zext i1 %58 to i32, !dbg !1954
  store i32 %59, i32* %1, align 4, !dbg !1954
  br label %89, !dbg !1954

60:                                               ; No predecessors!
  br label %61, !dbg !1955

61:                                               ; preds = %60, %38
  %62 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 128, i32 5) to i8**), align 8, !dbg !1956
  call void @free(i8* %62) #7, !dbg !1957
  %63 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 17), align 8, !dbg !1958
  %64 = call noalias i8* @strdup(i8* %63) #7, !dbg !1960
  store i8* %64, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 128, i32 5) to i8**), align 8, !dbg !1961
  %65 = icmp eq i8* %64, null, !dbg !1962
  br i1 %65, label %66, label %80, !dbg !1963

66:                                               ; preds = %61
  br label %67, !dbg !1964

67:                                               ; preds = %66
  %68 = load i32, i32* %2, align 4, !dbg !1966
  %69 = or i32 35, %68, !dbg !1966
  %70 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !1966
  %71 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !1966
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.check_user_runcwd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 324, i32 %69, i8* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.check_user_runcwd, i64 0, i64 0), i8* %71), !dbg !1966
  %72 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !1966
  %73 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !1966
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.check_user_runcwd, i64 0, i64 0), i8* %73), !dbg !1966
  br label %74, !dbg !1966

74:                                               ; preds = %67
  br label %75, !dbg !1968

75:                                               ; preds = %74
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1969, metadata !DIExpression()), !dbg !1971
  store i32 -1, i32* %4, align 4, !dbg !1971
  %76 = load i32, i32* %2, align 4, !dbg !1971
  %77 = load i32, i32* %4, align 4, !dbg !1971
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.check_user_runcwd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 325, i32 %76, i32 %77), !dbg !1971
  %78 = load i32, i32* %4, align 4, !dbg !1971
  store i32 %78, i32* %1, align 4, !dbg !1971
  br label %89, !dbg !1971

79:                                               ; No predecessors!
  br label %80, !dbg !1972

80:                                               ; preds = %79, %61
  br label %81, !dbg !1973

81:                                               ; preds = %80, %29
  br label %82, !dbg !1974

82:                                               ; preds = %81
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1975, metadata !DIExpression()), !dbg !1977
  store i8 1, i8* %5, align 1, !dbg !1977
  %83 = load i32, i32* %2, align 4, !dbg !1977
  %84 = load i8, i8* %5, align 1, !dbg !1977
  %85 = trunc i8 %84 to i1, !dbg !1977
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.check_user_runcwd, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 328, i32 %83, i1 zeroext %85), !dbg !1977
  %86 = load i8, i8* %5, align 1, !dbg !1977
  %87 = trunc i8 %86 to i1, !dbg !1977
  %88 = zext i1 %87 to i32, !dbg !1977
  store i32 %88, i32* %1, align 4, !dbg !1977
  br label %89, !dbg !1977

89:                                               ; preds = %53, %75, %82
  %90 = load i32, i32* %1, align 4, !dbg !1978
  ret i32 %90, !dbg !1978
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare zeroext i1 @log_failure(i32, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @create_admin_success_flag() #0 !dbg !1979 {
  ret i32 1, !dbg !1980
}

declare i32 @audit_failure(i8**, i8*, ...) #2

declare zeroext i1 @validate_env_vars(i8**) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i8* @format_iolog_path() #0 !dbg !1981 {
  %1 = alloca [4096 x i8], align 16
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata [4096 x i8]* %1, metadata !1984, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.declare(metadata [4096 x i8]* %2, metadata !1989, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1991, metadata !DIExpression()), !dbg !1992
  store i8* null, i8** %3, align 8, !dbg !1992
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1993, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1995, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1997, metadata !DIExpression()), !dbg !1998
  %8 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !1998
  store i32 %8, i32* %6, align 4, !dbg !1998
  %9 = load i32, i32* %6, align 4, !dbg !1998
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.format_iolog_path, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 247, i32 %9), !dbg !1998
  %10 = call zeroext i1 @sudoers_setlocale(i32 1, i32* %4), !dbg !1999
  %11 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 79, i32 5) to i8**), align 8, !dbg !2000
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0, !dbg !2001
  %13 = load %struct.iolog_path_escape*, %struct.iolog_path_escape** @sudoers_iolog_path_escapes, align 8, !dbg !2002
  %14 = getelementptr inbounds %struct.iolog_path_escape, %struct.iolog_path_escape* %13, i64 1, !dbg !2002
  %15 = call zeroext i1 @expand_iolog_path(i8* %11, i8* %12, i64 4096, %struct.iolog_path_escape* %14, i8* null), !dbg !2003
  %16 = zext i1 %15 to i8, !dbg !2004
  store i8 %16, i8* %5, align 1, !dbg !2004
  %17 = load i8, i8* %5, align 1, !dbg !2005
  %18 = trunc i8 %17 to i1, !dbg !2005
  br i1 %18, label %19, label %27, !dbg !2007

19:                                               ; preds = %0
  %20 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 80, i32 5) to i8**), align 8, !dbg !2008
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !2010
  %22 = load %struct.iolog_path_escape*, %struct.iolog_path_escape** @sudoers_iolog_path_escapes, align 8, !dbg !2011
  %23 = getelementptr inbounds %struct.iolog_path_escape, %struct.iolog_path_escape* %22, i64 0, !dbg !2011
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0, !dbg !2012
  %25 = call zeroext i1 @expand_iolog_path(i8* %20, i8* %21, i64 4096, %struct.iolog_path_escape* %23, i8* %24), !dbg !2013
  %26 = zext i1 %25 to i8, !dbg !2014
  store i8 %26, i8* %5, align 1, !dbg !2014
  br label %27, !dbg !2015

27:                                               ; preds = %19, %0
  %28 = load i32, i32* %4, align 4, !dbg !2016
  %29 = call zeroext i1 @sudoers_setlocale(i32 %28, i32* null), !dbg !2017
  %30 = load i8, i8* %5, align 1, !dbg !2018
  %31 = trunc i8 %30 to i1, !dbg !2018
  br i1 %31, label %33, label %32, !dbg !2020

32:                                               ; preds = %27
  br label %48, !dbg !2021

33:                                               ; preds = %27
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0, !dbg !2022
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !2024
  %36 = call i32 (i8**, i8*, ...) @asprintf(i8** %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* %34, i8* %35) #7, !dbg !2025
  %37 = icmp eq i32 %36, -1, !dbg !2026
  br i1 %37, label %38, label %39, !dbg !2027

38:                                               ; preds = %33
  store i8* null, i8** %3, align 8, !dbg !2028
  br label %48, !dbg !2030

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8, !dbg !2031
  %41 = getelementptr inbounds i8, i8* %40, i64 12, !dbg !2032
  %42 = getelementptr inbounds i8, i8* %41, i64 -1, !dbg !2033
  store i8* %42, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 28), align 8, !dbg !2034
  %43 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 28), align 8, !dbg !2035
  %44 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !2036
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0, !dbg !2037
  %46 = call i64 @strlen(i8* %45) #8, !dbg !2038
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !2039
  store i8* %47, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 27), align 8, !dbg !2040
  br label %48, !dbg !2041

48:                                               ; preds = %39, %38, %32
  call void @llvm.dbg.label(metadata !2042), !dbg !2043
  br label %49, !dbg !2044

49:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2045, metadata !DIExpression()), !dbg !2047
  %50 = load i8*, i8** %3, align 8, !dbg !2047
  store i8* %50, i8** %7, align 8, !dbg !2047
  %51 = load i32, i32* %6, align 4, !dbg !2047
  %52 = load i8*, i8** %7, align 8, !dbg !2047
  call void @sudo_debug_exit_str_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.format_iolog_path, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 271, i32 %51, i8* %52), !dbg !2047
  %53 = load i8*, i8** %7, align 8, !dbg !2047
  br label %54, !dbg !2047

54:                                               ; preds = %49
  ret i8* %53, !dbg !2047
}

declare i32 @display_cmnd(%struct.sudo_nss_list*, %struct.passwd*) #2

declare i32 @display_privs(%struct.sudo_nss_list*, %struct.passwd*, i1 zeroext) #2

declare void @group_plugin_unload() #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

declare zeroext i1 @read_env_file(i8*, i1 zeroext, i1 zeroext) #2

declare void @sudo_warn_nodebug_v1(i8*, ...) #2

declare zeroext i1 @insert_env_vars(i8**) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i8* @find_editor(i32, i8**, i32*, i8***, i8**, i8**, i1 zeroext) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare zeroext i1 @env_swap_old() #2

declare zeroext i1 @sudoers_policy_store_result(i1 zeroext, i8**, i8**, i32, i8*, i8*) #2

declare i8** @env_get() #2

declare zeroext i1 @rewind_perms() #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @restore_nproc() #0 !dbg !2048 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2049, metadata !DIExpression()), !dbg !2050
  %2 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 17), align 4, !dbg !2050
  store i32 %2, i32* %1, align 4, !dbg !2050
  %3 = load i32, i32* %1, align 4, !dbg !2050
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.restore_nproc, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 145, i32 %3), !dbg !2050
  %4 = call i32 @setrlimit(i32 6, %struct.rlimit* @nproclimit) #7, !dbg !2051
  %5 = icmp ne i32 %4, 0, !dbg !2053
  br i1 %5, label %6, label %11, !dbg !2054

6:                                                ; preds = %0
  br label %7, !dbg !2055

7:                                                ; preds = %6
  %8 = load i32, i32* %1, align 4, !dbg !2056
  %9 = or i32 51, %8, !dbg !2056
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.restore_nproc, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 148, i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0)), !dbg !2056
  call void (i8*, ...) @sudo_warn_nodebug_v1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0)), !dbg !2056
  br label %10, !dbg !2056

10:                                               ; preds = %7
  br label %11, !dbg !2056

11:                                               ; preds = %10, %0
  br label %12, !dbg !2058

12:                                               ; preds = %11
  %13 = load i32, i32* %1, align 4, !dbg !2059
  call void @sudo_debug_exit_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.restore_nproc, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 150, i32 %13), !dbg !2059
  br label %14, !dbg !2059

14:                                               ; preds = %12
  ret void, !dbg !2061
}

declare void @sudo_freepwcache() #2

declare void @sudo_freegrcache() #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define hidden i32 @set_cmnd_path(i8* %0) #0 !dbg !2062 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2065, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2067, metadata !DIExpression()), !dbg !2068
  %12 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 9), align 8, !dbg !2069
  store i8* %12, i8** %4, align 8, !dbg !2068
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2070, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2072, metadata !DIExpression()), !dbg !2073
  %13 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2073
  store i32 %13, i32* %6, align 4, !dbg !2073
  %14 = load i32, i32* %6, align 4, !dbg !2073
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.set_cmnd_path, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 890, i32 %14), !dbg !2073
  %15 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 52, i32 5) to i8**), align 8, !dbg !2074
  %16 = icmp ne i8* %15, null, !dbg !2074
  br i1 %16, label %17, label %21, !dbg !2076

17:                                               ; preds = %1
  %18 = call zeroext i1 @user_is_exempt(), !dbg !2077
  br i1 %18, label %21, label %19, !dbg !2078

19:                                               ; preds = %17
  %20 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 52, i32 5) to i8**), align 8, !dbg !2079
  store i8* %20, i8** %4, align 8, !dbg !2080
  br label %21, !dbg !2081

21:                                               ; preds = %19, %17, %1
  %22 = call zeroext i1 @set_perms(i32 5), !dbg !2082
  br i1 %22, label %29, label %23, !dbg !2084

23:                                               ; preds = %21
  br label %24, !dbg !2085

24:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2086, metadata !DIExpression()), !dbg !2088
  store i32 3, i32* %7, align 4, !dbg !2088
  %25 = load i32, i32* %6, align 4, !dbg !2088
  %26 = load i32, i32* %7, align 4, !dbg !2088
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.set_cmnd_path, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 895, i32 %25, i32 %26), !dbg !2088
  %27 = load i32, i32* %7, align 4, !dbg !2088
  store i32 %27, i32* %2, align 4, !dbg !2088
  br label %79, !dbg !2088

28:                                               ; No predecessors!
  br label %29, !dbg !2088

29:                                               ; preds = %28, %21
  %30 = load i8**, i8*** @NewArgv, align 8, !dbg !2089
  %31 = getelementptr inbounds i8*, i8** %30, i64 0, !dbg !2089
  %32 = load i8*, i8** %31, align 8, !dbg !2089
  %33 = load %struct.stat*, %struct.stat** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 4), align 8, !dbg !2090
  %34 = load i8*, i8** %4, align 8, !dbg !2091
  %35 = load i8*, i8** %3, align 8, !dbg !2092
  %36 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 4, i32 5) to i32*), align 8, !dbg !2093
  %37 = call i32 @find_path(i8* %32, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), %struct.stat* %33, i8* %34, i8* %35, i32 %36, i8** null), !dbg !2094
  store i32 %37, i32* %5, align 4, !dbg !2095
  %38 = call zeroext i1 @restore_perms(), !dbg !2096
  br i1 %38, label %45, label %39, !dbg !2098

39:                                               ; preds = %29
  br label %40, !dbg !2099

40:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2100, metadata !DIExpression()), !dbg !2102
  store i32 3, i32* %8, align 4, !dbg !2102
  %41 = load i32, i32* %6, align 4, !dbg !2102
  %42 = load i32, i32* %8, align 4, !dbg !2102
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.set_cmnd_path, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 899, i32 %41, i32 %42), !dbg !2102
  %43 = load i32, i32* %8, align 4, !dbg !2102
  store i32 %43, i32* %2, align 4, !dbg !2102
  br label %79, !dbg !2102

44:                                               ; No predecessors!
  br label %45, !dbg !2102

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %5, align 4, !dbg !2103
  %47 = icmp eq i32 %46, 1, !dbg !2105
  br i1 %47, label %48, label %73, !dbg !2106

48:                                               ; preds = %45
  %49 = call zeroext i1 @set_perms(i32 2), !dbg !2107
  br i1 %49, label %56, label %50, !dbg !2110

50:                                               ; preds = %48
  br label %51, !dbg !2111

51:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2112, metadata !DIExpression()), !dbg !2114
  store i32 0, i32* %9, align 4, !dbg !2114
  %52 = load i32, i32* %6, align 4, !dbg !2114
  %53 = load i32, i32* %9, align 4, !dbg !2114
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.set_cmnd_path, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 903, i32 %52, i32 %53), !dbg !2114
  %54 = load i32, i32* %9, align 4, !dbg !2114
  store i32 %54, i32* %2, align 4, !dbg !2114
  br label %79, !dbg !2114

55:                                               ; No predecessors!
  br label %56, !dbg !2114

56:                                               ; preds = %55, %48
  %57 = load i8**, i8*** @NewArgv, align 8, !dbg !2115
  %58 = getelementptr inbounds i8*, i8** %57, i64 0, !dbg !2115
  %59 = load i8*, i8** %58, align 8, !dbg !2115
  %60 = load %struct.stat*, %struct.stat** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 4), align 8, !dbg !2116
  %61 = load i8*, i8** %4, align 8, !dbg !2117
  %62 = load i8*, i8** %3, align 8, !dbg !2118
  %63 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 4, i32 5) to i32*), align 8, !dbg !2119
  %64 = call i32 @find_path(i8* %59, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), %struct.stat* %60, i8* %61, i8* %62, i32 %63, i8** null), !dbg !2120
  store i32 %64, i32* %5, align 4, !dbg !2121
  %65 = call zeroext i1 @restore_perms(), !dbg !2122
  br i1 %65, label %72, label %66, !dbg !2124

66:                                               ; preds = %56
  br label %67, !dbg !2125

67:                                               ; preds = %66
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2126, metadata !DIExpression()), !dbg !2128
  store i32 3, i32* %10, align 4, !dbg !2128
  %68 = load i32, i32* %6, align 4, !dbg !2128
  %69 = load i32, i32* %10, align 4, !dbg !2128
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.set_cmnd_path, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 907, i32 %68, i32 %69), !dbg !2128
  %70 = load i32, i32* %10, align 4, !dbg !2128
  store i32 %70, i32* %2, align 4, !dbg !2128
  br label %79, !dbg !2128

71:                                               ; No predecessors!
  br label %72, !dbg !2128

72:                                               ; preds = %71, %56
  br label %73, !dbg !2129

73:                                               ; preds = %72, %45
  br label %74, !dbg !2130

74:                                               ; preds = %73
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2131, metadata !DIExpression()), !dbg !2133
  %75 = load i32, i32* %5, align 4, !dbg !2133
  store i32 %75, i32* %11, align 4, !dbg !2133
  %76 = load i32, i32* %6, align 4, !dbg !2133
  %77 = load i32, i32* %11, align 4, !dbg !2133
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.set_cmnd_path, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 910, i32 %76, i32 %77), !dbg !2133
  %78 = load i32, i32* %11, align 4, !dbg !2133
  store i32 %78, i32* %2, align 4, !dbg !2133
  br label %79, !dbg !2133

79:                                               ; preds = %24, %40, %51, %67, %74
  %80 = load i32, i32* %2, align 4, !dbg !2134
  ret i32 %80, !dbg !2134
}

declare zeroext i1 @user_is_exempt() #2

declare i32 @find_path(i8*, i8**, %struct.stat*, i8*, i8*, i32, i8**) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define hidden %struct._IO_FILE* @open_sudoers(i8* %0, i1 zeroext %1, i8* %2) #0 !dbg !2135 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2191, metadata !DIExpression()), !dbg !2192
  %17 = zext i1 %1 to i8
  store i8 %17, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2193, metadata !DIExpression()), !dbg !2194
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2195, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !2197, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !2199, metadata !DIExpression()), !dbg !2200
  store %struct._IO_FILE* null, %struct._IO_FILE** %9, align 8, !dbg !2200
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2201, metadata !DIExpression()), !dbg !2202
  store i8 0, i8* %10, align 1, !dbg !2202
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2203, metadata !DIExpression()), !dbg !2204
  %18 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2204
  store i32 %18, i32* %11, align 4, !dbg !2204
  %19 = load i32, i32* %11, align 4, !dbg !2204
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.open_sudoers, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1027, i32 %19), !dbg !2204
  %20 = call zeroext i1 @set_perms(i32 4), !dbg !2205
  br i1 %20, label %28, label %21, !dbg !2207

21:                                               ; preds = %3
  br label %22, !dbg !2208

22:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2209, metadata !DIExpression()), !dbg !2211
  store i8* null, i8** %12, align 8, !dbg !2211
  %23 = load i32, i32* %11, align 4, !dbg !2211
  %24 = load i8*, i8** %12, align 8, !dbg !2211
  call void @sudo_debug_exit_ptr_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.open_sudoers, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1030, i32 %23, i8* %24), !dbg !2211
  %25 = load i8*, i8** %12, align 8, !dbg !2211
  %26 = bitcast i8* %25 to %struct._IO_FILE*, !dbg !2211
  store %struct._IO_FILE* %26, %struct._IO_FILE** %4, align 8, !dbg !2211
  br label %157, !dbg !2211

27:                                               ; No predecessors!
  br label %28, !dbg !2211

28:                                               ; preds = %27, %3
  br label %29, !dbg !2212

29:                                               ; preds = %114, %28
  call void @llvm.dbg.label(metadata !2213), !dbg !2214
  %30 = load i8*, i8** %5, align 8, !dbg !2215
  %31 = load i32, i32* @sudoers_uid, align 4, !dbg !2215
  %32 = load i32, i32* @sudoers_gid, align 4, !dbg !2215
  %33 = call i32 @sudo_secure_file_v1(i8* %30, i32 %31, i32 %32, %struct.stat* %8), !dbg !2215
  switch i32 %33, label %139 [
    i32 0, label %34
    i32 -1, label %94
    i32 -2, label %121
    i32 -3, label %124
    i32 -4, label %130
    i32 -5, label %133
  ], !dbg !2216

34:                                               ; preds = %29
  %35 = load i32, i32* @sudoers_uid, align 4, !dbg !2217
  %36 = icmp eq i32 %35, 0, !dbg !2220
  br i1 %36, label %37, label %67, !dbg !2221

37:                                               ; preds = %34
  %38 = load i32, i32* @sudoers_mode, align 4, !dbg !2222
  %39 = and i32 %38, 32, !dbg !2222
  %40 = icmp ne i32 %39, 0, !dbg !2222
  br i1 %40, label %41, label %67, !dbg !2223

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !2224
  %43 = load i32, i32* %42, align 8, !dbg !2224
  %44 = and i32 %43, 32, !dbg !2224
  %45 = icmp ne i32 %44, 0, !dbg !2224
  br i1 %45, label %46, label %50, !dbg !2227

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 5, !dbg !2228
  %48 = load i32, i32* %47, align 8, !dbg !2228
  %49 = icmp ne i32 %48, 0, !dbg !2229
  br i1 %49, label %50, label %66, !dbg !2230

50:                                               ; preds = %46, %41
  %51 = load i8, i8* %10, align 1, !dbg !2231
  %52 = trunc i8 %51 to i1, !dbg !2231
  br i1 %52, label %65, label %53, !dbg !2234

53:                                               ; preds = %50
  %54 = call zeroext i1 @restore_perms(), !dbg !2235
  br i1 %54, label %55, label %57, !dbg !2238

55:                                               ; preds = %53
  %56 = call zeroext i1 @set_perms(i32 1), !dbg !2239
  br i1 %56, label %64, label %57, !dbg !2240

57:                                               ; preds = %55, %53
  br label %58, !dbg !2241

58:                                               ; preds = %57
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2242, metadata !DIExpression()), !dbg !2244
  store i8* null, i8** %13, align 8, !dbg !2244
  %59 = load i32, i32* %11, align 4, !dbg !2244
  %60 = load i8*, i8** %13, align 8, !dbg !2244
  call void @sudo_debug_exit_ptr_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.open_sudoers, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1044, i32 %59, i8* %60), !dbg !2244
  %61 = load i8*, i8** %13, align 8, !dbg !2244
  %62 = bitcast i8* %61 to %struct._IO_FILE*, !dbg !2244
  store %struct._IO_FILE* %62, %struct._IO_FILE** %4, align 8, !dbg !2244
  br label %157, !dbg !2244

63:                                               ; No predecessors!
  br label %64, !dbg !2244

64:                                               ; preds = %63, %55
  br label %65, !dbg !2245

65:                                               ; preds = %64, %50
  br label %66, !dbg !2246

66:                                               ; preds = %65, %46
  br label %67, !dbg !2247

67:                                               ; preds = %66, %37, %34
  %68 = load i8*, i8** %5, align 8, !dbg !2248
  %69 = call %struct._IO_FILE* @fopen(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)), !dbg !2250
  store %struct._IO_FILE* %69, %struct._IO_FILE** %9, align 8, !dbg !2251
  %70 = icmp eq %struct._IO_FILE* %69, null, !dbg !2252
  br i1 %70, label %71, label %74, !dbg !2253

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8, !dbg !2254
  %73 = call zeroext i1 (i32, i8*, ...) @log_warning(i32 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* %72), !dbg !2256
  br label %93, !dbg !2257

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8, !dbg !2258
  %76 = load i64, i64* %75, align 8, !dbg !2258
  %77 = icmp ne i64 %76, 0, !dbg !2261
  br i1 %77, label %78, label %87, !dbg !2262

78:                                               ; preds = %74
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !2263
  %80 = call i32 @fgetc(%struct._IO_FILE* %79), !dbg !2264
  %81 = icmp eq i32 %80, -1, !dbg !2265
  br i1 %81, label %82, label %87, !dbg !2266

82:                                               ; preds = %78
  %83 = load i8*, i8** %5, align 8, !dbg !2267
  %84 = call zeroext i1 (i32, i8*, ...) @log_warning(i32 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i8* %83), !dbg !2269
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !2270
  %86 = call i32 @fclose(%struct._IO_FILE* %85), !dbg !2271
  store %struct._IO_FILE* null, %struct._IO_FILE** %9, align 8, !dbg !2272
  br label %92, !dbg !2273

87:                                               ; preds = %78, %74
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !2274
  call void @rewind(%struct._IO_FILE* %88), !dbg !2276
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !2277
  %90 = call i32 @fileno(%struct._IO_FILE* %89) #7, !dbg !2278
  %91 = call i32 (i32, i32, ...) @fcntl(i32 %90, i32 2, i32 1), !dbg !2279
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %71
  br label %140, !dbg !2280

94:                                               ; preds = %29
  %95 = call i32* @__errno_location() #9, !dbg !2281
  %96 = load i32, i32* %95, align 4, !dbg !2281
  %97 = icmp eq i32 %96, 13, !dbg !2283
  br i1 %97, label %98, label %118, !dbg !2284

98:                                               ; preds = %94
  %99 = call i32 @geteuid() #7, !dbg !2285
  %100 = icmp ne i32 %99, 0, !dbg !2286
  br i1 %100, label %101, label %118, !dbg !2287

101:                                              ; preds = %98
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2288, metadata !DIExpression()), !dbg !2290
  %102 = call i32* @__errno_location() #9, !dbg !2291
  %103 = load i32, i32* %102, align 4, !dbg !2291
  store i32 %103, i32* %14, align 4, !dbg !2290
  %104 = call zeroext i1 @restore_perms(), !dbg !2292
  br i1 %104, label %105, label %115, !dbg !2294

105:                                              ; preds = %101
  %106 = call zeroext i1 @set_perms(i32 1), !dbg !2295
  br i1 %106, label %114, label %107, !dbg !2298

107:                                              ; preds = %105
  br label %108, !dbg !2299

108:                                              ; preds = %107
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2300, metadata !DIExpression()), !dbg !2302
  store i8* null, i8** %15, align 8, !dbg !2302
  %109 = load i32, i32* %11, align 4, !dbg !2302
  %110 = load i8*, i8** %15, align 8, !dbg !2302
  call void @sudo_debug_exit_ptr_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.open_sudoers, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1076, i32 %109, i8* %110), !dbg !2302
  %111 = load i8*, i8** %15, align 8, !dbg !2302
  %112 = bitcast i8* %111 to %struct._IO_FILE*, !dbg !2302
  store %struct._IO_FILE* %112, %struct._IO_FILE** %4, align 8, !dbg !2302
  br label %157, !dbg !2302

113:                                              ; No predecessors!
  br label %114, !dbg !2302

114:                                              ; preds = %113, %105
  store i8 1, i8* %10, align 1, !dbg !2303
  br label %29, !dbg !2304

115:                                              ; preds = %101
  %116 = load i32, i32* %14, align 4, !dbg !2305
  %117 = call i32* @__errno_location() #9, !dbg !2306
  store i32 %116, i32* %117, align 4, !dbg !2307
  br label %118, !dbg !2308

118:                                              ; preds = %115, %98, %94
  %119 = load i8*, i8** %5, align 8, !dbg !2309
  %120 = call zeroext i1 (i32, i8*, ...) @log_warning(i32 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8* %119), !dbg !2310
  br label %140, !dbg !2311

121:                                              ; preds = %29
  %122 = load i8*, i8** %5, align 8, !dbg !2312
  %123 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* %122), !dbg !2313
  br label %140, !dbg !2314

124:                                              ; preds = %29
  %125 = load i8*, i8** %5, align 8, !dbg !2315
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 4, !dbg !2316
  %127 = load i32, i32* %126, align 4, !dbg !2316
  %128 = load i32, i32* @sudoers_uid, align 4, !dbg !2317
  %129 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0), i8* %125, i32 %127, i32 %128), !dbg !2318
  br label %140, !dbg !2319

130:                                              ; preds = %29
  %131 = load i8*, i8** %5, align 8, !dbg !2320
  %132 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i8* %131), !dbg !2321
  br label %140, !dbg !2322

133:                                              ; preds = %29
  %134 = load i8*, i8** %5, align 8, !dbg !2323
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 5, !dbg !2324
  %136 = load i32, i32* %135, align 8, !dbg !2324
  %137 = load i32, i32* @sudoers_gid, align 4, !dbg !2325
  %138 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0), i8* %134, i32 %136, i32 %137), !dbg !2326
  br label %140, !dbg !2327

139:                                              ; preds = %29
  br label %140, !dbg !2328

140:                                              ; preds = %139, %133, %130, %124, %121, %118, %93
  %141 = call zeroext i1 @restore_perms(), !dbg !2329
  br i1 %141, label %149, label %142, !dbg !2331

142:                                              ; preds = %140
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !2332
  %144 = icmp ne %struct._IO_FILE* %143, null, !dbg !2335
  br i1 %144, label %145, label %148, !dbg !2336

145:                                              ; preds = %142
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !2337
  %147 = call i32 @fclose(%struct._IO_FILE* %146), !dbg !2339
  store %struct._IO_FILE* null, %struct._IO_FILE** %9, align 8, !dbg !2340
  br label %148, !dbg !2341

148:                                              ; preds = %145, %142
  br label %149, !dbg !2342

149:                                              ; preds = %148, %140
  br label %150, !dbg !2343

150:                                              ; preds = %149
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2344, metadata !DIExpression()), !dbg !2346
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !2346
  %152 = bitcast %struct._IO_FILE* %151 to i8*, !dbg !2346
  store i8* %152, i8** %16, align 8, !dbg !2346
  %153 = load i32, i32* %11, align 4, !dbg !2346
  %154 = load i8*, i8** %16, align 8, !dbg !2346
  call void @sudo_debug_exit_ptr_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.open_sudoers, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1114, i32 %153, i8* %154), !dbg !2346
  %155 = load i8*, i8** %16, align 8, !dbg !2346
  %156 = bitcast i8* %155 to %struct._IO_FILE*, !dbg !2346
  store %struct._IO_FILE* %156, %struct._IO_FILE** %4, align 8, !dbg !2346
  br label %157, !dbg !2346

157:                                              ; preds = %22, %58, %108, %150
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2347
  ret %struct._IO_FILE* %158, !dbg !2347
}

declare void @sudo_debug_exit_ptr_v1(i8*, i8*, i32, i32, i8*) #2

declare i32 @sudo_secure_file_v1(i8*, i32, i32, %struct.stat*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare zeroext i1 @log_warning(i32, i8*, ...) #2

declare i32 @fgetc(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @rewind(%struct._IO_FILE*) #2

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @geteuid() #3

declare void @sudo_debug_exit_v1(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare i32 @getrlimit(i32, %struct.rlimit*) #3

; Function Attrs: nounwind
declare i32 @setrlimit(i32, %struct.rlimit*) #3

declare void @sudo_debug_exit_bool_v1(i8*, i8*, i32, i32, i1 zeroext) #2

declare zeroext i1 @expand_iolog_path(i8*, i8*, i64, %struct.iolog_path_escape*, i8*) #2

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @sudo_debug_exit_str_v1(i8*, i8*, i32, i32, i8*) #2

declare zeroext i1 @sudoers_initlocale(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

declare %struct.passwd* @sudo_mkpwent(i8*, i32, i32, i8*, i8*) #2

declare %struct.gid_list* @sudo_get_gidlist(%struct.passwd*, i32) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @set_callbacks() #0 !dbg !2348 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2349, metadata !DIExpression()), !dbg !2350
  %2 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2350
  store i32 %2, i32* %1, align 4, !dbg !2350
  %3 = load i32, i32* %1, align 4, !dbg !2350
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.set_callbacks, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1571, i32 %3), !dbg !2350
  store i1 (%union.sudo_defs_val*)* @cb_fqdn, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 22, i32 4), align 8, !dbg !2351
  store i1 (%union.sudo_defs_val*)* @cb_group_plugin, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 78, i32 4), align 8, !dbg !2352
  store i1 (%union.sudo_defs_val*)* @cb_runas_default, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 51, i32 4), align 8, !dbg !2353
  store i1 (%union.sudo_defs_val*)* @sudoers_locale_callback, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 69, i32 4), align 8, !dbg !2354
  store i1 (%union.sudo_defs_val*)* @cb_maxseq, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 91, i32 4), align 8, !dbg !2355
  store i1 (%union.sudo_defs_val*)* @cb_iolog_user, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 102, i32 4), align 8, !dbg !2356
  store i1 (%union.sudo_defs_val*)* @cb_iolog_group, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 103, i32 4), align 8, !dbg !2357
  store i1 (%union.sudo_defs_val*)* @cb_iolog_mode, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 104, i32 4), align 8, !dbg !2358
  store i1 (%union.sudo_defs_val*)* @cb_tty_tickets, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 11, i32 4), align 8, !dbg !2359
  store i1 (%union.sudo_defs_val*)* @cb_umask, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 37, i32 4), align 8, !dbg !2360
  store i1 (%union.sudo_defs_val*)* @cb_runchroot, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 129, i32 4), align 8, !dbg !2361
  store i1 (%union.sudo_defs_val*)* @cb_syslog, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 0, i32 4), align 8, !dbg !2362
  store i1 (%union.sudo_defs_val*)* @cb_syslog_goodpri, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 1, i32 4), align 8, !dbg !2363
  store i1 (%union.sudo_defs_val*)* @cb_syslog_badpri, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 2, i32 4), align 8, !dbg !2364
  store i1 (%union.sudo_defs_val*)* @cb_syslog_maxlen, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 101, i32 4), align 8, !dbg !2365
  store i1 (%union.sudo_defs_val*)* @cb_loglinelen, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 33, i32 4), align 8, !dbg !2366
  store i1 (%union.sudo_defs_val*)* @cb_log_host, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 16, i32 4), align 8, !dbg !2367
  store i1 (%union.sudo_defs_val*)* @cb_logfile, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 38, i32 4), align 8, !dbg !2368
  store i1 (%union.sudo_defs_val*)* @cb_log_format, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 130, i32 4), align 8, !dbg !2369
  store i1 (%union.sudo_defs_val*)* @cb_log_year, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 17, i32 4), align 8, !dbg !2370
  store i1 (%union.sudo_defs_val*)* @cb_mailerpath, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 39, i32 4), align 8, !dbg !2371
  store i1 (%union.sudo_defs_val*)* @cb_mailerflags, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 40, i32 4), align 8, !dbg !2372
  store i1 (%union.sudo_defs_val*)* @cb_mailfrom, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 42, i32 4), align 8, !dbg !2373
  store i1 (%union.sudo_defs_val*)* @cb_mailto, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 41, i32 4), align 8, !dbg !2374
  store i1 (%union.sudo_defs_val*)* @cb_mailsub, i1 (%union.sudo_defs_val*)** getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 43, i32 4), align 8, !dbg !2375
  br label %4, !dbg !2376

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !2377
  call void @sudo_debug_exit_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.set_callbacks, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1622, i32 %5), !dbg !2377
  br label %6, !dbg !2377

6:                                                ; preds = %4
  ret void, !dbg !2379
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @set_runasgr(i8* %0, i1 zeroext %1) #0 !dbg !2380 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2383, metadata !DIExpression()), !dbg !2384
  %12 = zext i1 %1 to i8
  store i8 %12, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2385, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.group** %6, metadata !2387, metadata !DIExpression()), !dbg !2388
  store %struct.group* null, %struct.group** %6, align 8, !dbg !2388
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2389, metadata !DIExpression()), !dbg !2390
  %13 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2390
  store i32 %13, i32* %7, align 4, !dbg !2390
  %14 = load i32, i32* %7, align 4, !dbg !2390
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.set_runasgr, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1325, i32 %14), !dbg !2390
  store i8 0, i8* @unknown_runas_gid, align 1, !dbg !2391
  %15 = load i8*, i8** %4, align 8, !dbg !2392
  %16 = load i8, i8* %15, align 1, !dbg !2394
  %17 = sext i8 %16 to i32, !dbg !2394
  %18 = icmp eq i32 %17, 35, !dbg !2395
  br i1 %18, label %19, label %34, !dbg !2396

19:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2400, metadata !DIExpression()), !dbg !2401
  %20 = load i8*, i8** %4, align 8, !dbg !2402
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !2402
  %22 = call i32 @sudo_strtoid_v2(i8* %21, i8** %8), !dbg !2402
  store i32 %22, i32* %9, align 4, !dbg !2401
  %23 = load i8*, i8** %8, align 8, !dbg !2403
  %24 = icmp eq i8* %23, null, !dbg !2405
  br i1 %24, label %25, label %33, !dbg !2406

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4, !dbg !2407
  %27 = call %struct.group* @sudo_getgrgid(i32 %26), !dbg !2410
  store %struct.group* %27, %struct.group** %6, align 8, !dbg !2411
  %28 = icmp eq %struct.group* %27, null, !dbg !2412
  br i1 %28, label %29, label %32, !dbg !2413

29:                                               ; preds = %25
  store i8 1, i8* @unknown_runas_gid, align 1, !dbg !2414
  %30 = load i8*, i8** %4, align 8, !dbg !2416
  %31 = call %struct.group* @sudo_fakegrnam(i8* %30), !dbg !2417
  store %struct.group* %31, %struct.group** %6, align 8, !dbg !2418
  br label %32, !dbg !2419

32:                                               ; preds = %29, %25
  br label %33, !dbg !2420

33:                                               ; preds = %32, %19
  br label %34, !dbg !2421

34:                                               ; preds = %33, %2
  %35 = load %struct.group*, %struct.group** %6, align 8, !dbg !2422
  %36 = icmp eq %struct.group* %35, null, !dbg !2424
  br i1 %36, label %37, label %56, !dbg !2425

37:                                               ; preds = %34
  %38 = load i8*, i8** %4, align 8, !dbg !2426
  %39 = call %struct.group* @sudo_getgrnam(i8* %38), !dbg !2429
  store %struct.group* %39, %struct.group** %6, align 8, !dbg !2430
  %40 = icmp eq %struct.group* %39, null, !dbg !2431
  br i1 %40, label %41, label %55, !dbg !2432

41:                                               ; preds = %37
  %42 = load i8, i8* %5, align 1, !dbg !2433
  %43 = trunc i8 %42 to i1, !dbg !2433
  br i1 %43, label %47, label %44, !dbg !2436

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8, !dbg !2437
  %46 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %45), !dbg !2438
  br label %47, !dbg !2438

47:                                               ; preds = %44, %41
  br label %48, !dbg !2439

48:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2440, metadata !DIExpression()), !dbg !2442
  store i8 0, i8* %10, align 1, !dbg !2442
  %49 = load i32, i32* %7, align 4, !dbg !2442
  %50 = load i8, i8* %10, align 1, !dbg !2442
  %51 = trunc i8 %50 to i1, !dbg !2442
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.set_runasgr, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1342, i32 %49, i1 zeroext %51), !dbg !2442
  %52 = load i8, i8* %10, align 1, !dbg !2442
  %53 = trunc i8 %52 to i1, !dbg !2442
  store i1 %53, i1* %3, align 1, !dbg !2442
  br label %69, !dbg !2442

54:                                               ; No predecessors!
  br label %55, !dbg !2443

55:                                               ; preds = %54, %37
  br label %56, !dbg !2444

56:                                               ; preds = %55, %34
  %57 = load %struct.group*, %struct.group** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 3), align 8, !dbg !2445
  %58 = icmp ne %struct.group* %57, null, !dbg !2447
  br i1 %58, label %59, label %61, !dbg !2448

59:                                               ; preds = %56
  %60 = load %struct.group*, %struct.group** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 3), align 8, !dbg !2449
  call void @sudo_gr_delref(%struct.group* %60), !dbg !2450
  br label %61, !dbg !2450

61:                                               ; preds = %59, %56
  %62 = load %struct.group*, %struct.group** %6, align 8, !dbg !2451
  store %struct.group* %62, %struct.group** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 3), align 8, !dbg !2452
  br label %63, !dbg !2453

63:                                               ; preds = %61
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2454, metadata !DIExpression()), !dbg !2456
  store i8 1, i8* %11, align 1, !dbg !2456
  %64 = load i32, i32* %7, align 4, !dbg !2456
  %65 = load i8, i8* %11, align 1, !dbg !2456
  %66 = trunc i8 %65 to i1, !dbg !2456
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.set_runasgr, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1348, i32 %64, i1 zeroext %66), !dbg !2456
  %67 = load i8, i8* %11, align 1, !dbg !2456
  %68 = trunc i8 %67 to i1, !dbg !2456
  store i1 %68, i1* %3, align 1, !dbg !2456
  br label %69, !dbg !2456

69:                                               ; preds = %48, %63
  %70 = load i1, i1* %3, align 1, !dbg !2457
  ret i1 %70, !dbg !2457
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @set_runaspw(i8* %0, i1 zeroext %1) #0 !dbg !2458 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2459, metadata !DIExpression()), !dbg !2460
  %12 = zext i1 %1 to i8
  store i8 %12, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2461, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.declare(metadata %struct.passwd** %6, metadata !2463, metadata !DIExpression()), !dbg !2464
  store %struct.passwd* null, %struct.passwd** %6, align 8, !dbg !2464
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2465, metadata !DIExpression()), !dbg !2466
  %13 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2466
  store i32 %13, i32* %7, align 4, !dbg !2466
  %14 = load i32, i32* %7, align 4, !dbg !2466
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.set_runaspw, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1291, i32 %14), !dbg !2466
  store i8 0, i8* @unknown_runas_uid, align 1, !dbg !2467
  %15 = load i8*, i8** %4, align 8, !dbg !2468
  %16 = load i8, i8* %15, align 1, !dbg !2470
  %17 = sext i8 %16 to i32, !dbg !2470
  %18 = icmp eq i32 %17, 35, !dbg !2471
  br i1 %18, label %19, label %35, !dbg !2472

19:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2473, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2476, metadata !DIExpression()), !dbg !2477
  %20 = load i8*, i8** %4, align 8, !dbg !2478
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !2478
  %22 = call i32 @sudo_strtoid_v2(i8* %21, i8** %8), !dbg !2478
  store i32 %22, i32* %9, align 4, !dbg !2477
  %23 = load i8*, i8** %8, align 8, !dbg !2479
  %24 = icmp eq i8* %23, null, !dbg !2481
  br i1 %24, label %25, label %34, !dbg !2482

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4, !dbg !2483
  %27 = call %struct.passwd* @sudo_getpwuid(i32 %26), !dbg !2486
  store %struct.passwd* %27, %struct.passwd** %6, align 8, !dbg !2487
  %28 = icmp eq %struct.passwd* %27, null, !dbg !2488
  br i1 %28, label %29, label %33, !dbg !2489

29:                                               ; preds = %25
  store i8 1, i8* @unknown_runas_uid, align 1, !dbg !2490
  %30 = load i8*, i8** %4, align 8, !dbg !2492
  %31 = load i32, i32* getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 40), align 8, !dbg !2493
  %32 = call %struct.passwd* @sudo_fakepwnam(i8* %30, i32 %31), !dbg !2494
  store %struct.passwd* %32, %struct.passwd** %6, align 8, !dbg !2495
  br label %33, !dbg !2496

33:                                               ; preds = %29, %25
  br label %34, !dbg !2497

34:                                               ; preds = %33, %19
  br label %35, !dbg !2498

35:                                               ; preds = %34, %2
  %36 = load %struct.passwd*, %struct.passwd** %6, align 8, !dbg !2499
  %37 = icmp eq %struct.passwd* %36, null, !dbg !2501
  br i1 %37, label %38, label %57, !dbg !2502

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8, !dbg !2503
  %40 = call %struct.passwd* @sudo_getpwnam(i8* %39), !dbg !2506
  store %struct.passwd* %40, %struct.passwd** %6, align 8, !dbg !2507
  %41 = icmp eq %struct.passwd* %40, null, !dbg !2508
  br i1 %41, label %42, label %56, !dbg !2509

42:                                               ; preds = %38
  %43 = load i8, i8* %5, align 1, !dbg !2510
  %44 = trunc i8 %43 to i1, !dbg !2510
  br i1 %44, label %48, label %45, !dbg !2513

45:                                               ; preds = %42
  %46 = load i8*, i8** %4, align 8, !dbg !2514
  %47 = call zeroext i1 (i32, i8*, ...) @log_warningx(i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %46), !dbg !2515
  br label %48, !dbg !2515

48:                                               ; preds = %45, %42
  br label %49, !dbg !2516

49:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2517, metadata !DIExpression()), !dbg !2519
  store i8 0, i8* %10, align 1, !dbg !2519
  %50 = load i32, i32* %7, align 4, !dbg !2519
  %51 = load i8, i8* %10, align 1, !dbg !2519
  %52 = trunc i8 %51 to i1, !dbg !2519
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.set_runaspw, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1308, i32 %50, i1 zeroext %52), !dbg !2519
  %53 = load i8, i8* %10, align 1, !dbg !2519
  %54 = trunc i8 %53 to i1, !dbg !2519
  store i1 %54, i1* %3, align 1, !dbg !2519
  br label %70, !dbg !2519

55:                                               ; No predecessors!
  br label %56, !dbg !2520

56:                                               ; preds = %55, %38
  br label %57, !dbg !2521

57:                                               ; preds = %56, %35
  %58 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !2522
  %59 = icmp ne %struct.passwd* %58, null, !dbg !2524
  br i1 %59, label %60, label %62, !dbg !2525

60:                                               ; preds = %57
  %61 = load %struct.passwd*, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !2526
  call void @sudo_pw_delref(%struct.passwd* %61), !dbg !2527
  br label %62, !dbg !2527

62:                                               ; preds = %60, %57
  %63 = load %struct.passwd*, %struct.passwd** %6, align 8, !dbg !2528
  store %struct.passwd* %63, %struct.passwd** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 2), align 8, !dbg !2529
  br label %64, !dbg !2530

64:                                               ; preds = %62
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2531, metadata !DIExpression()), !dbg !2533
  store i8 1, i8* %11, align 1, !dbg !2533
  %65 = load i32, i32* %7, align 4, !dbg !2533
  %66 = load i8, i8* %11, align 1, !dbg !2533
  %67 = trunc i8 %66 to i1, !dbg !2533
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.set_runaspw, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1314, i32 %65, i1 zeroext %67), !dbg !2533
  %68 = load i8, i8* %11, align 1, !dbg !2533
  %69 = trunc i8 %68 to i1, !dbg !2533
  store i1 %69, i1* %3, align 1, !dbg !2533
  br label %70, !dbg !2533

70:                                               ; preds = %49, %64
  %71 = load i1, i1* %3, align 1, !dbg !2534
  ret i1 %71, !dbg !2534
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_fqdn(%union.sudo_defs_val* %0) #0 !dbg !2535 {
  %2 = alloca i1, align 1
  %3 = alloca %union.sudo_defs_val*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %3, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %3, metadata !2562, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2564, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2568, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2570, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2572, metadata !DIExpression()), !dbg !2573
  %14 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2573
  store i32 %14, i32* %8, align 4, !dbg !2573
  %15 = load i32, i32* %8, align 4, !dbg !2573
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cb_fqdn, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1222, i32 %15), !dbg !2573
  %16 = load %union.sudo_defs_val*, %union.sudo_defs_val** %3, align 8, !dbg !2574
  %17 = icmp ne %union.sudo_defs_val* %16, null, !dbg !2576
  br i1 %17, label %18, label %31, !dbg !2577

18:                                               ; preds = %1
  %19 = load %union.sudo_defs_val*, %union.sudo_defs_val** %3, align 8, !dbg !2578
  %20 = bitcast %union.sudo_defs_val* %19 to i32*, !dbg !2579
  %21 = load i32, i32* %20, align 8, !dbg !2579
  %22 = icmp ne i32 %21, 0, !dbg !2578
  br i1 %22, label %31, label %23, !dbg !2580

23:                                               ; preds = %18
  br label %24, !dbg !2581

24:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2582, metadata !DIExpression()), !dbg !2584
  store i8 1, i8* %9, align 1, !dbg !2584
  %25 = load i32, i32* %8, align 4, !dbg !2584
  %26 = load i8, i8* %9, align 1, !dbg !2584
  %27 = trunc i8 %26 to i1, !dbg !2584
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cb_fqdn, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1226, i32 %25, i1 zeroext %27), !dbg !2584
  %28 = load i8, i8* %9, align 1, !dbg !2584
  %29 = trunc i8 %28 to i1, !dbg !2584
  store i1 %29, i1* %2, align 1, !dbg !2584
  br label %157, !dbg !2584

30:                                               ; No predecessors!
  br label %31, !dbg !2584

31:                                               ; preds = %30, %18, %1
  %32 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 14), align 8, !dbg !2585
  %33 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 12), align 8, !dbg !2586
  %34 = call i32 @strcmp(i8* %32, i8* %33) #8, !dbg !2587
  %35 = icmp ne i32 %34, 0, !dbg !2588
  %36 = zext i1 %35 to i8, !dbg !2589
  store i8 %36, i8* %4, align 1, !dbg !2589
  %37 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 12), align 8, !dbg !2590
  %38 = call i32 @resolve_host(i8* %37, i8** %6, i8** %7), !dbg !2592
  %39 = icmp ne i32 %38, 0, !dbg !2593
  br i1 %39, label %40, label %56, !dbg !2594

40:                                               ; preds = %31
  %41 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 14), align 8, !dbg !2595
  %42 = call i32 @resolve_host(i8* %41, i8** %6, i8** %7), !dbg !2598
  store i32 %42, i32* %5, align 4, !dbg !2599
  %43 = icmp ne i32 %42, 0, !dbg !2600
  br i1 %43, label %44, label %55, !dbg !2601

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4, !dbg !2602
  %46 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 12), align 8, !dbg !2604
  %47 = call zeroext i1 (i32, i32, i8*, ...) @gai_log_warning(i32 12, i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i64 0, i64 0), i8* %46), !dbg !2605
  br label %48, !dbg !2606

48:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2607, metadata !DIExpression()), !dbg !2609
  store i8 0, i8* %10, align 1, !dbg !2609
  %49 = load i32, i32* %8, align 4, !dbg !2609
  %50 = load i8, i8* %10, align 1, !dbg !2609
  %51 = trunc i8 %50 to i1, !dbg !2609
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cb_fqdn, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1236, i32 %49, i1 zeroext %51), !dbg !2609
  %52 = load i8, i8* %10, align 1, !dbg !2609
  %53 = trunc i8 %52 to i1, !dbg !2609
  store i1 %53, i1* %2, align 1, !dbg !2609
  br label %157, !dbg !2609

54:                                               ; No predecessors!
  br label %55, !dbg !2610

55:                                               ; preds = %54, %40
  br label %56, !dbg !2611

56:                                               ; preds = %55, %31
  %57 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 13), align 8, !dbg !2612
  %58 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 12), align 8, !dbg !2614
  %59 = icmp ne i8* %57, %58, !dbg !2615
  br i1 %59, label %60, label %62, !dbg !2616

60:                                               ; preds = %56
  %61 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 13), align 8, !dbg !2617
  call void @free(i8* %61) #7, !dbg !2618
  br label %62, !dbg !2618

62:                                               ; preds = %60, %56
  %63 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 12), align 8, !dbg !2619
  call void @free(i8* %63) #7, !dbg !2620
  %64 = load i8*, i8** %6, align 8, !dbg !2621
  store i8* %64, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 12), align 8, !dbg !2622
  %65 = load i8*, i8** %7, align 8, !dbg !2623
  store i8* %65, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 13), align 8, !dbg !2624
  store i8* null, i8** %7, align 8, !dbg !2625
  store i8* null, i8** %6, align 8, !dbg !2626
  %66 = load i8, i8* %4, align 1, !dbg !2627
  %67 = trunc i8 %66 to i1, !dbg !2627
  br i1 %67, label %68, label %84, !dbg !2629

68:                                               ; preds = %62
  %69 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 14), align 8, !dbg !2630
  %70 = call i32 @resolve_host(i8* %69, i8** %6, i8** %7), !dbg !2633
  store i32 %70, i32* %5, align 4, !dbg !2634
  %71 = icmp ne i32 %70, 0, !dbg !2635
  br i1 %71, label %72, label %83, !dbg !2636

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4, !dbg !2637
  %74 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 14), align 8, !dbg !2639
  %75 = call zeroext i1 (i32, i32, i8*, ...) @gai_log_warning(i32 36, i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i64 0, i64 0), i8* %74), !dbg !2640
  br label %76, !dbg !2641

76:                                               ; preds = %72
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2642, metadata !DIExpression()), !dbg !2644
  store i8 0, i8* %11, align 1, !dbg !2644
  %77 = load i32, i32* %8, align 4, !dbg !2644
  %78 = load i8, i8* %11, align 1, !dbg !2644
  %79 = trunc i8 %78 to i1, !dbg !2644
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cb_fqdn, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1251, i32 %77, i1 zeroext %79), !dbg !2644
  %80 = load i8, i8* %11, align 1, !dbg !2644
  %81 = trunc i8 %80 to i1, !dbg !2644
  store i1 %81, i1* %2, align 1, !dbg !2644
  br label %157, !dbg !2644

82:                                               ; No predecessors!
  br label %83, !dbg !2645

83:                                               ; preds = %82, %68
  br label %128, !dbg !2646

84:                                               ; preds = %62
  %85 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 12), align 8, !dbg !2647
  %86 = call noalias i8* @strdup(i8* %85) #7, !dbg !2650
  store i8* %86, i8** %6, align 8, !dbg !2651
  %87 = icmp ne i8* %86, null, !dbg !2652
  br i1 %87, label %88, label %98, !dbg !2653

88:                                               ; preds = %84
  %89 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 13), align 8, !dbg !2654
  %90 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 12), align 8, !dbg !2657
  %91 = icmp ne i8* %89, %90, !dbg !2658
  br i1 %91, label %92, label %95, !dbg !2659

92:                                               ; preds = %88
  %93 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 13), align 8, !dbg !2660
  %94 = call noalias i8* @strdup(i8* %93) #7, !dbg !2661
  store i8* %94, i8** %7, align 8, !dbg !2662
  br label %97, !dbg !2663

95:                                               ; preds = %88
  %96 = load i8*, i8** %6, align 8, !dbg !2664
  store i8* %96, i8** %7, align 8, !dbg !2665
  br label %97

97:                                               ; preds = %95, %92
  br label %98, !dbg !2666

98:                                               ; preds = %97, %84
  %99 = load i8*, i8** %6, align 8, !dbg !2667
  %100 = icmp eq i8* %99, null, !dbg !2669
  br i1 %100, label %104, label %101, !dbg !2670

101:                                              ; preds = %98
  %102 = load i8*, i8** %7, align 8, !dbg !2671
  %103 = icmp eq i8* %102, null, !dbg !2672
  br i1 %103, label %104, label %127, !dbg !2673

104:                                              ; preds = %101, %98
  %105 = load i8*, i8** %6, align 8, !dbg !2674
  call void @free(i8* %105) #7, !dbg !2676
  %106 = load i8*, i8** %6, align 8, !dbg !2677
  %107 = load i8*, i8** %7, align 8, !dbg !2679
  %108 = icmp ne i8* %106, %107, !dbg !2680
  br i1 %108, label %109, label %111, !dbg !2681

109:                                              ; preds = %104
  %110 = load i8*, i8** %7, align 8, !dbg !2682
  call void @free(i8* %110) #7, !dbg !2683
  br label %111, !dbg !2683

111:                                              ; preds = %109, %104
  br label %112, !dbg !2684

112:                                              ; preds = %111
  %113 = load i32, i32* %8, align 4, !dbg !2685
  %114 = or i32 35, %113, !dbg !2685
  %115 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !2685
  %116 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !2685
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cb_fqdn, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1265, i32 %114, i8* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cb_fqdn, i64 0, i64 0), i8* %116), !dbg !2685
  %117 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !2685
  %118 = call i8* @sudo_warn_gettext_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)), !dbg !2685
  call void (i8*, ...) @sudo_warnx_nodebug_v1(i8* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cb_fqdn, i64 0, i64 0), i8* %118), !dbg !2685
  br label %119, !dbg !2685

119:                                              ; preds = %112
  br label %120, !dbg !2687

120:                                              ; preds = %119
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2688, metadata !DIExpression()), !dbg !2690
  store i8 0, i8* %12, align 1, !dbg !2690
  %121 = load i32, i32* %8, align 4, !dbg !2690
  %122 = load i8, i8* %12, align 1, !dbg !2690
  %123 = trunc i8 %122 to i1, !dbg !2690
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cb_fqdn, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1266, i32 %121, i1 zeroext %123), !dbg !2690
  %124 = load i8, i8* %12, align 1, !dbg !2690
  %125 = trunc i8 %124 to i1, !dbg !2690
  store i1 %125, i1* %2, align 1, !dbg !2690
  br label %157, !dbg !2690

126:                                              ; No predecessors!
  br label %127, !dbg !2691

127:                                              ; preds = %126, %101
  br label %128

128:                                              ; preds = %127, %83
  %129 = load i8*, i8** %6, align 8, !dbg !2692
  %130 = icmp ne i8* %129, null, !dbg !2694
  br i1 %130, label %131, label %144, !dbg !2695

131:                                              ; preds = %128
  %132 = load i8*, i8** %7, align 8, !dbg !2696
  %133 = icmp ne i8* %132, null, !dbg !2697
  br i1 %133, label %134, label %144, !dbg !2698

134:                                              ; preds = %131
  %135 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 15), align 8, !dbg !2699
  %136 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 14), align 8, !dbg !2702
  %137 = icmp ne i8* %135, %136, !dbg !2703
  br i1 %137, label %138, label %140, !dbg !2704

138:                                              ; preds = %134
  %139 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 15), align 8, !dbg !2705
  call void @free(i8* %139) #7, !dbg !2706
  br label %140, !dbg !2706

140:                                              ; preds = %138, %134
  %141 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 14), align 8, !dbg !2707
  call void @free(i8* %141) #7, !dbg !2708
  %142 = load i8*, i8** %6, align 8, !dbg !2709
  store i8* %142, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 14), align 8, !dbg !2710
  %143 = load i8*, i8** %7, align 8, !dbg !2711
  store i8* %143, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 15), align 8, !dbg !2712
  br label %144, !dbg !2713

144:                                              ; preds = %140, %131, %128
  %145 = load i32, i32* %8, align 4, !dbg !2714
  %146 = or i32 38, %145, !dbg !2714
  %147 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 12), align 8, !dbg !2714
  %148 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 13), align 8, !dbg !2714
  %149 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 14), align 8, !dbg !2714
  %150 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 15), align 8, !dbg !2714
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cb_fqdn, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1279, i32 %146, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.56, i64 0, i64 0), i8* %147, i8* %148, i8* %149, i8* %150), !dbg !2714
  br label %151, !dbg !2715

151:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata i8* %13, metadata !2716, metadata !DIExpression()), !dbg !2718
  store i8 1, i8* %13, align 1, !dbg !2718
  %152 = load i32, i32* %8, align 4, !dbg !2718
  %153 = load i8, i8* %13, align 1, !dbg !2718
  %154 = trunc i8 %153 to i1, !dbg !2718
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cb_fqdn, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1280, i32 %152, i1 zeroext %154), !dbg !2718
  %155 = load i8, i8* %13, align 1, !dbg !2718
  %156 = trunc i8 %155 to i1, !dbg !2718
  store i1 %156, i1* %2, align 1, !dbg !2718
  br label %157, !dbg !2718

157:                                              ; preds = %24, %48, %76, %120, %151
  %158 = load i1, i1* %2, align 1, !dbg !2719
  ret i1 %158, !dbg !2719
}

declare zeroext i1 @cb_group_plugin(%union.sudo_defs_val*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_runas_default(%union.sudo_defs_val* %0) #0 !dbg !2720 {
  %2 = alloca i1, align 1
  %3 = alloca %union.sudo_defs_val*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %3, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %3, metadata !2721, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2723, metadata !DIExpression()), !dbg !2724
  %7 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2724
  store i32 %7, i32* %4, align 4, !dbg !2724
  %8 = load i32, i32* %4, align 4, !dbg !2724
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cb_runas_default, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1357, i32 %8), !dbg !2724
  %9 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 7), align 8, !dbg !2725
  %10 = icmp eq i8* %9, null, !dbg !2727
  br i1 %10, label %11, label %27, !dbg !2728

11:                                               ; preds = %1
  %12 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 8), align 8, !dbg !2729
  %13 = icmp eq i8* %12, null, !dbg !2730
  br i1 %13, label %14, label %27, !dbg !2731

14:                                               ; preds = %11
  br label %15, !dbg !2732

15:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2733, metadata !DIExpression()), !dbg !2735
  %16 = load %union.sudo_defs_val*, %union.sudo_defs_val** %3, align 8, !dbg !2735
  %17 = bitcast %union.sudo_defs_val* %16 to i8**, !dbg !2735
  %18 = load i8*, i8** %17, align 8, !dbg !2735
  %19 = call zeroext i1 @set_runaspw(i8* %18, i1 zeroext true), !dbg !2735
  %20 = zext i1 %19 to i8, !dbg !2735
  store i8 %20, i8* %5, align 1, !dbg !2735
  %21 = load i32, i32* %4, align 4, !dbg !2735
  %22 = load i8, i8* %5, align 1, !dbg !2735
  %23 = trunc i8 %22 to i1, !dbg !2735
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cb_runas_default, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1361, i32 %21, i1 zeroext %23), !dbg !2735
  %24 = load i8, i8* %5, align 1, !dbg !2735
  %25 = trunc i8 %24 to i1, !dbg !2735
  store i1 %25, i1* %2, align 1, !dbg !2735
  br label %34, !dbg !2735

26:                                               ; No predecessors!
  br label %27, !dbg !2735

27:                                               ; preds = %26, %11, %1
  br label %28, !dbg !2736

28:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2737, metadata !DIExpression()), !dbg !2739
  store i8 1, i8* %6, align 1, !dbg !2739
  %29 = load i32, i32* %4, align 4, !dbg !2739
  %30 = load i8, i8* %6, align 1, !dbg !2739
  %31 = trunc i8 %30 to i1, !dbg !2739
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cb_runas_default, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1362, i32 %29, i1 zeroext %31), !dbg !2739
  %32 = load i8, i8* %6, align 1, !dbg !2739
  %33 = trunc i8 %32 to i1, !dbg !2739
  store i1 %33, i1* %2, align 1, !dbg !2739
  br label %34, !dbg !2739

34:                                               ; preds = %15, %28
  %35 = load i1, i1* %2, align 1, !dbg !2740
  ret i1 %35, !dbg !2740
}

declare zeroext i1 @sudoers_locale_callback(%union.sudo_defs_val*) #2

declare zeroext i1 @cb_maxseq(%union.sudo_defs_val*) #2

declare zeroext i1 @cb_iolog_user(%union.sudo_defs_val*) #2

declare zeroext i1 @cb_iolog_group(%union.sudo_defs_val*) #2

declare zeroext i1 @cb_iolog_mode(%union.sudo_defs_val*) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_tty_tickets(%union.sudo_defs_val* %0) #0 !dbg !2741 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2742, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2744, metadata !DIExpression()), !dbg !2745
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2745
  store i32 %5, i32* %3, align 4, !dbg !2745
  %6 = load i32, i32* %3, align 4, !dbg !2745
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cb_tty_tickets, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1371, i32 %6), !dbg !2745
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2746
  %8 = bitcast %union.sudo_defs_val* %7 to i32*, !dbg !2748
  %9 = load i32, i32* %8, align 8, !dbg !2748
  %10 = icmp ne i32 %9, 0, !dbg !2746
  br i1 %10, label %11, label %12, !dbg !2749

11:                                               ; preds = %1
  store i32 8, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 111, i32 5) to i32*), align 8, !dbg !2750
  br label %13, !dbg !2751

12:                                               ; preds = %1
  store i32 6, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 111, i32 5) to i32*), align 8, !dbg !2752
  br label %13

13:                                               ; preds = %12, %11
  br label %14, !dbg !2753

14:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2754, metadata !DIExpression()), !dbg !2756
  store i8 1, i8* %4, align 1, !dbg !2756
  %15 = load i32, i32* %3, align 4, !dbg !2756
  %16 = load i8, i8* %4, align 1, !dbg !2756
  %17 = trunc i8 %16 to i1, !dbg !2756
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cb_tty_tickets, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1378, i32 %15, i1 zeroext %17), !dbg !2756
  %18 = load i8, i8* %4, align 1, !dbg !2756
  %19 = trunc i8 %18 to i1, !dbg !2756
  br label %20, !dbg !2756

20:                                               ; preds = %14
  ret i1 %19, !dbg !2756
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_umask(%union.sudo_defs_val* %0) #0 !dbg !2757 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2758, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2760, metadata !DIExpression()), !dbg !2761
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2761
  store i32 %5, i32* %3, align 4, !dbg !2761
  %6 = load i32, i32* %3, align 4, !dbg !2761
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cb_umask, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1387, i32 %6), !dbg !2761
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2762
  %8 = bitcast %union.sudo_defs_val* %7 to i32*, !dbg !2763
  %9 = load i32, i32* %8, align 8, !dbg !2763
  %10 = icmp ne i32 %9, 511, !dbg !2764
  %11 = zext i1 %10 to i8, !dbg !2765
  store i8 %11, i8* @force_umask, align 1, !dbg !2765
  br label %12, !dbg !2766

12:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2767, metadata !DIExpression()), !dbg !2769
  store i8 1, i8* %4, align 1, !dbg !2769
  %13 = load i32, i32* %3, align 4, !dbg !2769
  %14 = load i8, i8* %4, align 1, !dbg !2769
  %15 = trunc i8 %14 to i1, !dbg !2769
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cb_umask, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1392, i32 %13, i1 zeroext %15), !dbg !2769
  %16 = load i8, i8* %4, align 1, !dbg !2769
  %17 = trunc i8 %16 to i1, !dbg !2769
  br label %18, !dbg !2769

18:                                               ; preds = %12
  ret i1 %17, !dbg !2769
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_runchroot(%union.sudo_defs_val* %0) #0 !dbg !2770 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2771, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2773, metadata !DIExpression()), !dbg !2774
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2774
  store i32 %5, i32* %3, align 4, !dbg !2774
  %6 = load i32, i32* %3, align 4, !dbg !2774
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.cb_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1401, i32 %6), !dbg !2774
  %7 = load i32, i32* %3, align 4, !dbg !2775
  %8 = or i32 38, %7, !dbg !2775
  %9 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2775
  %10 = bitcast %union.sudo_defs_val* %9 to i8**, !dbg !2775
  %11 = load i8*, i8** %10, align 8, !dbg !2775
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.cb_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1404, i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0), i8* %11), !dbg !2775
  %12 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !2776
  %13 = icmp ne i8* %12, null, !dbg !2778
  br i1 %13, label %14, label %22, !dbg !2779

14:                                               ; preds = %1
  %15 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2780
  %16 = bitcast %union.sudo_defs_val* %15 to i8**, !dbg !2782
  %17 = load i8*, i8** %16, align 8, !dbg !2782
  %18 = call i32 @set_cmnd_path(i8* %17), !dbg !2783
  store i32 %18, i32* @cmnd_status, align 4, !dbg !2784
  %19 = load i32, i32* %3, align 4, !dbg !2785
  %20 = or i32 38, %19, !dbg !2785
  %21 = load i8*, i8** getelementptr inbounds (%struct.sudo_user, %struct.sudo_user* @sudo_user, i32 0, i32 19), align 8, !dbg !2785
  call void (i8*, i8*, i32, i32, i8*, ...) @sudo_debug_printf2_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.cb_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1409, i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i8* %21), !dbg !2785
  br label %22, !dbg !2786

22:                                               ; preds = %14, %1
  br label %23, !dbg !2787

23:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2788, metadata !DIExpression()), !dbg !2790
  store i8 1, i8* %4, align 1, !dbg !2790
  %24 = load i32, i32* %3, align 4, !dbg !2790
  %25 = load i8, i8* %4, align 1, !dbg !2790
  %26 = trunc i8 %25 to i1, !dbg !2790
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.cb_runchroot, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1412, i32 %24, i1 zeroext %26), !dbg !2790
  %27 = load i8, i8* %4, align 1, !dbg !2790
  %28 = trunc i8 %27 to i1, !dbg !2790
  br label %29, !dbg !2790

29:                                               ; preds = %23
  ret i1 %28, !dbg !2790
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_syslog(%union.sudo_defs_val* %0) #0 !dbg !2791 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2792, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2794, metadata !DIExpression()), !dbg !2795
  %6 = load i8*, i8** bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 38, i32 5) to i8**), align 8, !dbg !2796
  %7 = icmp ne i8* %6, null, !dbg !2796
  %8 = zext i1 %7 to i64, !dbg !2796
  %9 = select i1 %7, i32 2, i32 0, !dbg !2796
  store i32 %9, i32* %3, align 4, !dbg !2795
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2797, metadata !DIExpression()), !dbg !2798
  %10 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2798
  store i32 %10, i32* %4, align 4, !dbg !2798
  %11 = load i32, i32* %4, align 4, !dbg !2798
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cb_syslog, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1443, i32 %11), !dbg !2798
  %12 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2799
  %13 = bitcast %union.sudo_defs_val* %12 to i8**, !dbg !2801
  %14 = load i8*, i8** %13, align 8, !dbg !2801
  %15 = icmp ne i8* %14, null, !dbg !2802
  br i1 %15, label %16, label %19, !dbg !2803

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4, !dbg !2804
  %18 = or i32 %17, 1, !dbg !2804
  store i32 %18, i32* %3, align 4, !dbg !2804
  br label %19, !dbg !2804

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %3, align 4, !dbg !2805
  call void @eventlog_set_type(i32 %20), !dbg !2806
  br label %21, !dbg !2807

21:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2808, metadata !DIExpression()), !dbg !2810
  store i8 1, i8* %5, align 1, !dbg !2810
  %22 = load i32, i32* %4, align 4, !dbg !2810
  %23 = load i8, i8* %5, align 1, !dbg !2810
  %24 = trunc i8 %23 to i1, !dbg !2810
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cb_syslog, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1449, i32 %22, i1 zeroext %24), !dbg !2810
  %25 = load i8, i8* %5, align 1, !dbg !2810
  %26 = trunc i8 %25 to i1, !dbg !2810
  br label %27, !dbg !2810

27:                                               ; preds = %21
  ret i1 %26, !dbg !2810
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_syslog_goodpri(%union.sudo_defs_val* %0) #0 !dbg !2811 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2812, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2814, metadata !DIExpression()), !dbg !2815
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2815
  store i32 %5, i32* %3, align 4, !dbg !2815
  %6 = load i32, i32* %3, align 4, !dbg !2815
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.cb_syslog_goodpri, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1455, i32 %6), !dbg !2815
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2816
  %8 = bitcast %union.sudo_defs_val* %7 to i32*, !dbg !2817
  %9 = load i32, i32* %8, align 8, !dbg !2817
  call void @eventlog_set_syslog_acceptpri(i32 %9), !dbg !2818
  br label %10, !dbg !2819

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2820, metadata !DIExpression()), !dbg !2822
  store i8 1, i8* %4, align 1, !dbg !2822
  %11 = load i32, i32* %3, align 4, !dbg !2822
  %12 = load i8, i8* %4, align 1, !dbg !2822
  %13 = trunc i8 %12 to i1, !dbg !2822
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.cb_syslog_goodpri, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1459, i32 %11, i1 zeroext %13), !dbg !2822
  %14 = load i8, i8* %4, align 1, !dbg !2822
  %15 = trunc i8 %14 to i1, !dbg !2822
  br label %16, !dbg !2822

16:                                               ; preds = %10
  ret i1 %15, !dbg !2822
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_syslog_badpri(%union.sudo_defs_val* %0) #0 !dbg !2823 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2824, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2826, metadata !DIExpression()), !dbg !2827
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2827
  store i32 %5, i32* %3, align 4, !dbg !2827
  %6 = load i32, i32* %3, align 4, !dbg !2827
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cb_syslog_badpri, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1465, i32 %6), !dbg !2827
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2828
  %8 = bitcast %union.sudo_defs_val* %7 to i32*, !dbg !2829
  %9 = load i32, i32* %8, align 8, !dbg !2829
  call void @eventlog_set_syslog_rejectpri(i32 %9), !dbg !2830
  %10 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2831
  %11 = bitcast %union.sudo_defs_val* %10 to i32*, !dbg !2832
  %12 = load i32, i32* %11, align 8, !dbg !2832
  call void @eventlog_set_syslog_alertpri(i32 %12), !dbg !2833
  br label %13, !dbg !2834

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2835, metadata !DIExpression()), !dbg !2837
  store i8 1, i8* %4, align 1, !dbg !2837
  %14 = load i32, i32* %3, align 4, !dbg !2837
  %15 = load i8, i8* %4, align 1, !dbg !2837
  %16 = trunc i8 %15 to i1, !dbg !2837
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cb_syslog_badpri, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1470, i32 %14, i1 zeroext %16), !dbg !2837
  %17 = load i8, i8* %4, align 1, !dbg !2837
  %18 = trunc i8 %17 to i1, !dbg !2837
  br label %19, !dbg !2837

19:                                               ; preds = %13
  ret i1 %18, !dbg !2837
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_syslog_maxlen(%union.sudo_defs_val* %0) #0 !dbg !2838 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2841, metadata !DIExpression()), !dbg !2842
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2842
  store i32 %5, i32* %3, align 4, !dbg !2842
  %6 = load i32, i32* %3, align 4, !dbg !2842
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cb_syslog_maxlen, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1476, i32 %6), !dbg !2842
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2843
  %8 = bitcast %union.sudo_defs_val* %7 to i32*, !dbg !2844
  %9 = load i32, i32* %8, align 8, !dbg !2844
  call void @eventlog_set_syslog_maxlen(i32 %9), !dbg !2845
  br label %10, !dbg !2846

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2847, metadata !DIExpression()), !dbg !2849
  store i8 1, i8* %4, align 1, !dbg !2849
  %11 = load i32, i32* %3, align 4, !dbg !2849
  %12 = load i8, i8* %4, align 1, !dbg !2849
  %13 = trunc i8 %12 to i1, !dbg !2849
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cb_syslog_maxlen, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1480, i32 %11, i1 zeroext %13), !dbg !2849
  %14 = load i8, i8* %4, align 1, !dbg !2849
  %15 = trunc i8 %14 to i1, !dbg !2849
  br label %16, !dbg !2849

16:                                               ; preds = %10
  ret i1 %15, !dbg !2849
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_loglinelen(%union.sudo_defs_val* %0) #0 !dbg !2850 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2851, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2853, metadata !DIExpression()), !dbg !2854
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2854
  store i32 %5, i32* %3, align 4, !dbg !2854
  %6 = load i32, i32* %3, align 4, !dbg !2854
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cb_loglinelen, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1486, i32 %6), !dbg !2854
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2855
  %8 = bitcast %union.sudo_defs_val* %7 to i32*, !dbg !2856
  %9 = load i32, i32* %8, align 8, !dbg !2856
  call void @eventlog_set_file_maxlen(i32 %9), !dbg !2857
  br label %10, !dbg !2858

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2859, metadata !DIExpression()), !dbg !2861
  store i8 1, i8* %4, align 1, !dbg !2861
  %11 = load i32, i32* %3, align 4, !dbg !2861
  %12 = load i8, i8* %4, align 1, !dbg !2861
  %13 = trunc i8 %12 to i1, !dbg !2861
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cb_loglinelen, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1490, i32 %11, i1 zeroext %13), !dbg !2861
  %14 = load i8, i8* %4, align 1, !dbg !2861
  %15 = trunc i8 %14 to i1, !dbg !2861
  br label %16, !dbg !2861

16:                                               ; preds = %10
  ret i1 %15, !dbg !2861
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_log_host(%union.sudo_defs_val* %0) #0 !dbg !2862 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2865, metadata !DIExpression()), !dbg !2866
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2866
  store i32 %5, i32* %3, align 4, !dbg !2866
  %6 = load i32, i32* %3, align 4, !dbg !2866
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cb_log_host, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1506, i32 %6), !dbg !2866
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2867
  %8 = bitcast %union.sudo_defs_val* %7 to i32*, !dbg !2868
  %9 = load i32, i32* %8, align 8, !dbg !2868
  %10 = icmp ne i32 %9, 0, !dbg !2869
  %11 = xor i1 %10, true, !dbg !2869
  call void @eventlog_set_omit_hostname(i1 zeroext %11), !dbg !2870
  br label %12, !dbg !2871

12:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2872, metadata !DIExpression()), !dbg !2874
  store i8 1, i8* %4, align 1, !dbg !2874
  %13 = load i32, i32* %3, align 4, !dbg !2874
  %14 = load i8, i8* %4, align 1, !dbg !2874
  %15 = trunc i8 %14 to i1, !dbg !2874
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cb_log_host, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1510, i32 %13, i1 zeroext %15), !dbg !2874
  %16 = load i8, i8* %4, align 1, !dbg !2874
  %17 = trunc i8 %16 to i1, !dbg !2874
  br label %18, !dbg !2874

18:                                               ; preds = %12
  ret i1 %17, !dbg !2874
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_logfile(%union.sudo_defs_val* %0) #0 !dbg !2875 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2878, metadata !DIExpression()), !dbg !2879
  %6 = load i32, i32* bitcast (%union.sudo_defs_val* getelementptr inbounds ([0 x %struct.sudo_defs_types], [0 x %struct.sudo_defs_types]* @sudo_defs_table, i64 0, i64 0, i32 5) to i32*), align 8, !dbg !2880
  %7 = icmp ne i32 %6, 0, !dbg !2880
  %8 = zext i1 %7 to i64, !dbg !2880
  %9 = select i1 %7, i32 1, i32 0, !dbg !2880
  store i32 %9, i32* %3, align 4, !dbg !2879
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2881, metadata !DIExpression()), !dbg !2882
  %10 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2882
  store i32 %10, i32* %4, align 4, !dbg !2882
  %11 = load i32, i32* %4, align 4, !dbg !2882
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.cb_logfile, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1419, i32 %11), !dbg !2882
  %12 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2883
  %13 = bitcast %union.sudo_defs_val* %12 to i8**, !dbg !2885
  %14 = load i8*, i8** %13, align 8, !dbg !2885
  %15 = icmp ne i8* %14, null, !dbg !2886
  br i1 %15, label %16, label %19, !dbg !2887

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4, !dbg !2888
  %18 = or i32 %17, 2, !dbg !2888
  store i32 %18, i32* %3, align 4, !dbg !2888
  br label %19, !dbg !2888

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %3, align 4, !dbg !2889
  call void @eventlog_set_type(i32 %20), !dbg !2890
  %21 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2891
  %22 = bitcast %union.sudo_defs_val* %21 to i8**, !dbg !2892
  %23 = load i8*, i8** %22, align 8, !dbg !2892
  call void @eventlog_set_logpath(i8* %23), !dbg !2893
  br label %24, !dbg !2894

24:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2895, metadata !DIExpression()), !dbg !2897
  store i8 1, i8* %5, align 1, !dbg !2897
  %25 = load i32, i32* %4, align 4, !dbg !2897
  %26 = load i8, i8* %5, align 1, !dbg !2897
  %27 = trunc i8 %26 to i1, !dbg !2897
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.cb_logfile, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1426, i32 %25, i1 zeroext %27), !dbg !2897
  %28 = load i8, i8* %5, align 1, !dbg !2897
  %29 = trunc i8 %28 to i1, !dbg !2897
  br label %30, !dbg !2897

30:                                               ; preds = %24
  ret i1 %29, !dbg !2897
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_log_format(%union.sudo_defs_val* %0) #0 !dbg !2898 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2901, metadata !DIExpression()), !dbg !2902
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2902
  store i32 %5, i32* %3, align 4, !dbg !2902
  %6 = load i32, i32* %3, align 4, !dbg !2902
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cb_log_format, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1432, i32 %6), !dbg !2902
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2903
  %8 = bitcast %union.sudo_defs_val* %7 to i32*, !dbg !2904
  %9 = load i32, i32* %8, align 8, !dbg !2904
  %10 = icmp eq i32 %9, 10, !dbg !2905
  %11 = zext i1 %10 to i64, !dbg !2903
  %12 = select i1 %10, i32 0, i32 1, !dbg !2903
  call void @eventlog_set_format(i32 %12), !dbg !2906
  br label %13, !dbg !2907

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2908, metadata !DIExpression()), !dbg !2910
  store i8 1, i8* %4, align 1, !dbg !2910
  %14 = load i32, i32* %3, align 4, !dbg !2910
  %15 = load i8, i8* %4, align 1, !dbg !2910
  %16 = trunc i8 %15 to i1, !dbg !2910
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cb_log_format, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1436, i32 %14, i1 zeroext %16), !dbg !2910
  %17 = load i8, i8* %4, align 1, !dbg !2910
  %18 = trunc i8 %17 to i1, !dbg !2910
  br label %19, !dbg !2910

19:                                               ; preds = %13
  ret i1 %18, !dbg !2910
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_log_year(%union.sudo_defs_val* %0) #0 !dbg !2911 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2912, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2914, metadata !DIExpression()), !dbg !2915
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2915
  store i32 %5, i32* %3, align 4, !dbg !2915
  %6 = load i32, i32* %3, align 4, !dbg !2915
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cb_log_year, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1496, i32 %6), !dbg !2915
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2916
  %8 = bitcast %union.sudo_defs_val* %7 to i32*, !dbg !2917
  %9 = load i32, i32* %8, align 8, !dbg !2917
  %10 = icmp ne i32 %9, 0, !dbg !2916
  %11 = zext i1 %10 to i64, !dbg !2916
  %12 = select i1 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), !dbg !2916
  call void @eventlog_set_time_fmt(i8* %12), !dbg !2918
  br label %13, !dbg !2919

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2920, metadata !DIExpression()), !dbg !2922
  store i8 1, i8* %4, align 1, !dbg !2922
  %14 = load i32, i32* %3, align 4, !dbg !2922
  %15 = load i8, i8* %4, align 1, !dbg !2922
  %16 = trunc i8 %15 to i1, !dbg !2922
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cb_log_year, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1500, i32 %14, i1 zeroext %16), !dbg !2922
  %17 = load i8, i8* %4, align 1, !dbg !2922
  %18 = trunc i8 %17 to i1, !dbg !2922
  br label %19, !dbg !2922

19:                                               ; preds = %13
  ret i1 %18, !dbg !2922
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_mailerpath(%union.sudo_defs_val* %0) #0 !dbg !2923 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2926, metadata !DIExpression()), !dbg !2927
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2927
  store i32 %5, i32* %3, align 4, !dbg !2927
  %6 = load i32, i32* %3, align 4, !dbg !2927
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cb_mailerpath, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1516, i32 %6), !dbg !2927
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2928
  %8 = bitcast %union.sudo_defs_val* %7 to i8**, !dbg !2929
  %9 = load i8*, i8** %8, align 8, !dbg !2929
  call void @eventlog_set_mailerpath(i8* %9), !dbg !2930
  br label %10, !dbg !2931

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2932, metadata !DIExpression()), !dbg !2934
  store i8 1, i8* %4, align 1, !dbg !2934
  %11 = load i32, i32* %3, align 4, !dbg !2934
  %12 = load i8, i8* %4, align 1, !dbg !2934
  %13 = trunc i8 %12 to i1, !dbg !2934
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cb_mailerpath, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1520, i32 %11, i1 zeroext %13), !dbg !2934
  %14 = load i8, i8* %4, align 1, !dbg !2934
  %15 = trunc i8 %14 to i1, !dbg !2934
  br label %16, !dbg !2934

16:                                               ; preds = %10
  ret i1 %15, !dbg !2934
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_mailerflags(%union.sudo_defs_val* %0) #0 !dbg !2935 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2938, metadata !DIExpression()), !dbg !2939
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2939
  store i32 %5, i32* %3, align 4, !dbg !2939
  %6 = load i32, i32* %3, align 4, !dbg !2939
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cb_mailerflags, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1526, i32 %6), !dbg !2939
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2940
  %8 = bitcast %union.sudo_defs_val* %7 to i8**, !dbg !2941
  %9 = load i8*, i8** %8, align 8, !dbg !2941
  call void @eventlog_set_mailerflags(i8* %9), !dbg !2942
  br label %10, !dbg !2943

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2944, metadata !DIExpression()), !dbg !2946
  store i8 1, i8* %4, align 1, !dbg !2946
  %11 = load i32, i32* %3, align 4, !dbg !2946
  %12 = load i8, i8* %4, align 1, !dbg !2946
  %13 = trunc i8 %12 to i1, !dbg !2946
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cb_mailerflags, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1530, i32 %11, i1 zeroext %13), !dbg !2946
  %14 = load i8, i8* %4, align 1, !dbg !2946
  %15 = trunc i8 %14 to i1, !dbg !2946
  br label %16, !dbg !2946

16:                                               ; preds = %10
  ret i1 %15, !dbg !2946
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_mailfrom(%union.sudo_defs_val* %0) #0 !dbg !2947 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2948, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2950, metadata !DIExpression()), !dbg !2951
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2951
  store i32 %5, i32* %3, align 4, !dbg !2951
  %6 = load i32, i32* %3, align 4, !dbg !2951
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cb_mailfrom, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1536, i32 %6), !dbg !2951
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2952
  %8 = bitcast %union.sudo_defs_val* %7 to i8**, !dbg !2953
  %9 = load i8*, i8** %8, align 8, !dbg !2953
  call void @eventlog_set_mailfrom(i8* %9), !dbg !2954
  br label %10, !dbg !2955

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2956, metadata !DIExpression()), !dbg !2958
  store i8 1, i8* %4, align 1, !dbg !2958
  %11 = load i32, i32* %3, align 4, !dbg !2958
  %12 = load i8, i8* %4, align 1, !dbg !2958
  %13 = trunc i8 %12 to i1, !dbg !2958
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cb_mailfrom, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1540, i32 %11, i1 zeroext %13), !dbg !2958
  %14 = load i8, i8* %4, align 1, !dbg !2958
  %15 = trunc i8 %14 to i1, !dbg !2958
  br label %16, !dbg !2958

16:                                               ; preds = %10
  ret i1 %15, !dbg !2958
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_mailto(%union.sudo_defs_val* %0) #0 !dbg !2959 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2960, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2962, metadata !DIExpression()), !dbg !2963
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2963
  store i32 %5, i32* %3, align 4, !dbg !2963
  %6 = load i32, i32* %3, align 4, !dbg !2963
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cb_mailto, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1546, i32 %6), !dbg !2963
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2964
  %8 = bitcast %union.sudo_defs_val* %7 to i8**, !dbg !2965
  %9 = load i8*, i8** %8, align 8, !dbg !2965
  call void @eventlog_set_mailto(i8* %9), !dbg !2966
  br label %10, !dbg !2967

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2968, metadata !DIExpression()), !dbg !2970
  store i8 1, i8* %4, align 1, !dbg !2970
  %11 = load i32, i32* %3, align 4, !dbg !2970
  %12 = load i8, i8* %4, align 1, !dbg !2970
  %13 = trunc i8 %12 to i1, !dbg !2970
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cb_mailto, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1550, i32 %11, i1 zeroext %13), !dbg !2970
  %14 = load i8, i8* %4, align 1, !dbg !2970
  %15 = trunc i8 %14 to i1, !dbg !2970
  br label %16, !dbg !2970

16:                                               ; preds = %10
  ret i1 %15, !dbg !2970
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal zeroext i1 @cb_mailsub(%union.sudo_defs_val* %0) #0 !dbg !2971 {
  %2 = alloca %union.sudo_defs_val*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %union.sudo_defs_val* %0, %union.sudo_defs_val** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sudo_defs_val** %2, metadata !2972, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2974, metadata !DIExpression()), !dbg !2975
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !2975
  store i32 %5, i32* %3, align 4, !dbg !2975
  %6 = load i32, i32* %3, align 4, !dbg !2975
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.cb_mailsub, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1556, i32 %6), !dbg !2975
  %7 = load %union.sudo_defs_val*, %union.sudo_defs_val** %2, align 8, !dbg !2976
  %8 = bitcast %union.sudo_defs_val* %7 to i8**, !dbg !2977
  %9 = load i8*, i8** %8, align 8, !dbg !2977
  call void @eventlog_set_mailsub(i8* %9), !dbg !2978
  br label %10, !dbg !2979

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2980, metadata !DIExpression()), !dbg !2982
  store i8 1, i8* %4, align 1, !dbg !2982
  %11 = load i32, i32* %3, align 4, !dbg !2982
  %12 = load i8, i8* %4, align 1, !dbg !2982
  %13 = trunc i8 %12 to i1, !dbg !2982
  call void @sudo_debug_exit_bool_v1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.cb_mailsub, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1560, i32 %11, i1 zeroext %13), !dbg !2982
  %14 = load i8, i8* %4, align 1, !dbg !2982
  %15 = trunc i8 %14 to i1, !dbg !2982
  br label %16, !dbg !2982

16:                                               ; preds = %10
  ret i1 %15, !dbg !2982
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal i32 @resolve_host(i8* %0, i8** %1, i8** %2) #0 !dbg !2983 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2986, metadata !DIExpression()), !dbg !2987
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !2988, metadata !DIExpression()), !dbg !2989
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !2990, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %8, metadata !2992, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.declare(metadata %struct.addrinfo* %9, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3021, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3023, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3025, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3027, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3029, metadata !DIExpression()), !dbg !3030
  %19 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sudoers_subsystem_ids, i64 0, i64 14), align 4, !dbg !3030
  store i32 %19, i32* %14, align 4, !dbg !3030
  %20 = load i32, i32* %14, align 4, !dbg !3030
  call void @sudo_debug_enter_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.resolve_host, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1183, i32 %20), !dbg !3030
  %21 = bitcast %struct.addrinfo* %9 to i8*, !dbg !3031
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 48, i1 false), !dbg !3031
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 1, !dbg !3032
  store i32 0, i32* %22, align 4, !dbg !3033
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 0, !dbg !3034
  store i32 2, i32* %23, align 8, !dbg !3035
  %24 = load i8*, i8** %5, align 8, !dbg !3036
  %25 = call i32 @getaddrinfo(i8* %24, i8* null, %struct.addrinfo* %9, %struct.addrinfo** %8), !dbg !3038
  store i32 %25, i32* %13, align 4, !dbg !3039
  %26 = icmp ne i32 %25, 0, !dbg !3040
  br i1 %26, label %27, label %34, !dbg !3041

27:                                               ; preds = %3
  br label %28, !dbg !3042

28:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3043, metadata !DIExpression()), !dbg !3045
  %29 = load i32, i32* %13, align 4, !dbg !3045
  store i32 %29, i32* %15, align 4, !dbg !3045
  %30 = load i32, i32* %14, align 4, !dbg !3045
  %31 = load i32, i32* %15, align 4, !dbg !3045
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.resolve_host, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1190, i32 %30, i32 %31), !dbg !3045
  %32 = load i32, i32* %15, align 4, !dbg !3045
  store i32 %32, i32* %4, align 4, !dbg !3045
  br label %82, !dbg !3045

33:                                               ; No predecessors!
  br label %34, !dbg !3045

34:                                               ; preds = %33, %3
  %35 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8, !dbg !3046
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 6, !dbg !3048
  %37 = load i8*, i8** %36, align 8, !dbg !3048
  %38 = call noalias i8* @strdup(i8* %37) #7, !dbg !3049
  store i8* %38, i8** %11, align 8, !dbg !3050
  %39 = icmp eq i8* %38, null, !dbg !3051
  br i1 %39, label %40, label %47, !dbg !3052

40:                                               ; preds = %34
  %41 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8, !dbg !3053
  call void @freeaddrinfo(%struct.addrinfo* %41) #7, !dbg !3055
  br label %42, !dbg !3056

42:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3057, metadata !DIExpression()), !dbg !3059
  store i32 -10, i32* %16, align 4, !dbg !3059
  %43 = load i32, i32* %14, align 4, !dbg !3059
  %44 = load i32, i32* %16, align 4, !dbg !3059
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.resolve_host, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1193, i32 %43, i32 %44), !dbg !3059
  %45 = load i32, i32* %16, align 4, !dbg !3059
  store i32 %45, i32* %4, align 4, !dbg !3059
  br label %82, !dbg !3059

46:                                               ; No predecessors!
  br label %47, !dbg !3060

47:                                               ; preds = %46, %34
  %48 = load i8*, i8** %11, align 8, !dbg !3061
  %49 = call i8* @strchr(i8* %48, i32 46) #8, !dbg !3063
  store i8* %49, i8** %10, align 8, !dbg !3064
  %50 = icmp ne i8* %49, null, !dbg !3065
  br i1 %50, label %51, label %70, !dbg !3066

51:                                               ; preds = %47
  %52 = load i8*, i8** %11, align 8, !dbg !3067
  %53 = load i8*, i8** %10, align 8, !dbg !3069
  %54 = load i8*, i8** %11, align 8, !dbg !3070
  %55 = ptrtoint i8* %53 to i64, !dbg !3071
  %56 = ptrtoint i8* %54 to i64, !dbg !3071
  %57 = sub i64 %55, %56, !dbg !3071
  %58 = call noalias i8* @strndup(i8* %52, i64 %57) #7, !dbg !3072
  store i8* %58, i8** %12, align 8, !dbg !3073
  %59 = load i8*, i8** %12, align 8, !dbg !3074
  %60 = icmp eq i8* %59, null, !dbg !3076
  br i1 %60, label %61, label %69, !dbg !3077

61:                                               ; preds = %51
  %62 = load i8*, i8** %11, align 8, !dbg !3078
  call void @free(i8* %62) #7, !dbg !3080
  %63 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8, !dbg !3081
  call void @freeaddrinfo(%struct.addrinfo* %63) #7, !dbg !3082
  br label %64, !dbg !3083

64:                                               ; preds = %61
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3084, metadata !DIExpression()), !dbg !3086
  store i32 -10, i32* %17, align 4, !dbg !3086
  %65 = load i32, i32* %14, align 4, !dbg !3086
  %66 = load i32, i32* %17, align 4, !dbg !3086
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.resolve_host, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1200, i32 %65, i32 %66), !dbg !3086
  %67 = load i32, i32* %17, align 4, !dbg !3086
  store i32 %67, i32* %4, align 4, !dbg !3086
  br label %82, !dbg !3086

68:                                               ; No predecessors!
  br label %69, !dbg !3087

69:                                               ; preds = %68, %51
  br label %72, !dbg !3088

70:                                               ; preds = %47
  %71 = load i8*, i8** %11, align 8, !dbg !3089
  store i8* %71, i8** %12, align 8, !dbg !3091
  br label %72

72:                                               ; preds = %70, %69
  %73 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8, !dbg !3092
  call void @freeaddrinfo(%struct.addrinfo* %73) #7, !dbg !3093
  %74 = load i8*, i8** %11, align 8, !dbg !3094
  %75 = load i8**, i8*** %6, align 8, !dbg !3095
  store i8* %74, i8** %75, align 8, !dbg !3096
  %76 = load i8*, i8** %12, align 8, !dbg !3097
  %77 = load i8**, i8*** %7, align 8, !dbg !3098
  store i8* %76, i8** %77, align 8, !dbg !3099
  br label %78, !dbg !3100

78:                                               ; preds = %72
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3101, metadata !DIExpression()), !dbg !3103
  store i32 0, i32* %18, align 4, !dbg !3103
  %79 = load i32, i32* %14, align 4, !dbg !3103
  %80 = load i32, i32* %18, align 4, !dbg !3103
  call void @sudo_debug_exit_int_v1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.resolve_host, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1209, i32 %79, i32 %80), !dbg !3103
  %81 = load i32, i32* %18, align 4, !dbg !3103
  store i32 %81, i32* %4, align 4, !dbg !3103
  br label %82, !dbg !3103

82:                                               ; preds = %28, %42, %64, %78
  %83 = load i32, i32* %4, align 4, !dbg !3104
  ret i32 %83, !dbg !3104
}

declare zeroext i1 @gai_log_warning(i32, i32, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind
declare noalias i8* @strndup(i8*, i64) #3

declare void @eventlog_set_type(i32) #2

declare void @eventlog_set_syslog_acceptpri(i32) #2

declare void @eventlog_set_syslog_rejectpri(i32) #2

declare void @eventlog_set_syslog_alertpri(i32) #2

declare void @eventlog_set_syslog_maxlen(i32) #2

declare void @eventlog_set_file_maxlen(i32) #2

declare void @eventlog_set_omit_hostname(i1 zeroext) #2

declare void @eventlog_set_logpath(i8*) #2

declare void @eventlog_set_format(i32) #2

declare void @eventlog_set_time_fmt(i8*) #2

declare void @eventlog_set_mailerpath(i8*) #2

declare void @eventlog_set_mailerflags(i8*) #2

declare void @eventlog_set_mailfrom(i8*) #2

declare void @eventlog_set_mailto(i8*) #2

declare void @eventlog_set_mailsub(i8*) #2

declare %struct.group* @sudo_getgrgid(i32) #2

declare %struct.group* @sudo_fakegrnam(i8*) #2

declare %struct.group* @sudo_getgrnam(i8*) #2

declare void @sudo_gr_delref(%struct.group*) #2

declare %struct.passwd* @sudo_fakepwnam(i8*, i32) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

declare i64 @sudo_strlcpy(i8*, i8*, i64) #2

declare i32 @open(i8*, i32, ...) #2

declare i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!406, !407, !408, !409, !410}
!llvm.ident = !{!411}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ret", scope: !2, file: !3, line: 159, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "sudoers_init", scope: !3, file: !3, line: 155, type: !4, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !405)
!3 = !DIFile(filename: "./sudoers.c", directory: "/media/joschua/Daten/Dateien/FAUbox/Uni/13._Semester/MA/Impl/vulns/sudo-1.9.5/plugins/sudoers")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !8}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 10.0.0-4ubuntu1~18.04.2 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !79, globals: !87, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "sudoers.c", directory: "/media/joschua/Daten/Dateien/FAUbox/Uni/13._Semester/MA/Impl/vulns/sudo-1.9.5/plugins/sudoers")
!14 = !{!15, !22, !44, !59, !64}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sudoers_gc_types", file: !16, line: 443, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./sudoers.h", directory: "/media/joschua/Daten/Dateien/FAUbox/Uni/13._Semester/MA/Impl/vulns/sudo-1.9.5/plugins/sudoers")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "GC_UNKNOWN", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "GC_VECTOR", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "GC_PTR", value: 2, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !23, line: 31, baseType: !17, size: 32, elements: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!25 = !DIEnumerator(name: "RLIMIT_CPU", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "RLIMIT_DATA", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "RLIMIT_STACK", value: 3, isUnsigned: true)
!29 = !DIEnumerator(name: "RLIMIT_CORE", value: 4, isUnsigned: true)
!30 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5, isUnsigned: true)
!31 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7, isUnsigned: true)
!32 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7, isUnsigned: true)
!33 = !DIEnumerator(name: "RLIMIT_AS", value: 9, isUnsigned: true)
!34 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6, isUnsigned: true)
!35 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8, isUnsigned: true)
!36 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10, isUnsigned: true)
!37 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11, isUnsigned: true)
!38 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12, isUnsigned: true)
!39 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13, isUnsigned: true)
!40 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14, isUnsigned: true)
!41 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15, isUnsigned: true)
!42 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16, isUnsigned: true)
!43 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "def_tuple", file: !45, line: 268, baseType: !17, size: 32, elements: !46)
!45 = !DIFile(filename: "./def_data.h", directory: "/media/joschua/Daten/Dateien/FAUbox/Uni/13._Semester/MA/Impl/vulns/sudo-1.9.5/plugins/sudoers")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!47 = !DIEnumerator(name: "never", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "once", value: 1, isUnsigned: true)
!49 = !DIEnumerator(name: "always", value: 2, isUnsigned: true)
!50 = !DIEnumerator(name: "any", value: 3, isUnsigned: true)
!51 = !DIEnumerator(name: "all", value: 4, isUnsigned: true)
!52 = !DIEnumerator(name: "digest_only", value: 5, isUnsigned: true)
!53 = !DIEnumerator(name: "global", value: 6, isUnsigned: true)
!54 = !DIEnumerator(name: "ppid", value: 7, isUnsigned: true)
!55 = !DIEnumerator(name: "tty", value: 8, isUnsigned: true)
!56 = !DIEnumerator(name: "kernel", value: 9, isUnsigned: true)
!57 = !DIEnumerator(name: "sudo", value: 10, isUnsigned: true)
!58 = !DIEnumerator(name: "json", value: 11, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eventlog_format", file: !60, line: 43, baseType: !17, size: 32, elements: !61)
!60 = !DIFile(filename: "../../include/sudo_eventlog.h", directory: "/media/joschua/Daten/Dateien/FAUbox/Uni/13._Semester/MA/Impl/vulns/sudo-1.9.5/plugins/sudoers")
!61 = !{!62, !63}
!62 = !DIEnumerator(name: "EVLOG_SUDO", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "EVLOG_JSON", value: 1, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 46, baseType: !17, size: 32, elements: !66)
!65 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!67 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!68 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!69 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!70 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!71 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!72 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!73 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!74 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!75 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!79 = !{!7, !17, !80, !83, !6, !85, !86}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !81, line: 145, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!82 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 46, baseType: !82)
!84 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !{!0, !88, !205, !207, !209, !211, !214, !216, !218, !388, !390, !392, !394, !396, !403}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "sudo_user", scope: !12, file: !3, line: 84, type: !90, isLocal: false, isDefinition: true)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sudo_user", file: !16, line: 82, size: 2368, elements: !91)
!91 = !{!92, !101, !115, !116, !126, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !199, !201, !202}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "submit_time", scope: !90, file: !16, line: 83, baseType: !93, size: 128)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !94, line: 9, size: 128, elements: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!95 = !{!96, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !93, file: !94, line: 11, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !81, line: 148, baseType: !98)
!98 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !93, file: !94, line: 12, baseType: !100, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !81, line: 184, baseType: !98)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pw", scope: !90, file: !16, line: 84, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !104, line: 49, size: 384, elements: !105)
!104 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!105 = !{!106, !107, !108, !110, !112, !113, !114}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !103, file: !104, line: 51, baseType: !10, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !103, file: !104, line: 52, baseType: !10, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !103, file: !104, line: 53, baseType: !109, size: 32, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !81, line: 134, baseType: !17)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !103, file: !104, line: 54, baseType: !111, size: 32, offset: 160)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !81, line: 135, baseType: !17)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !103, file: !104, line: 55, baseType: !10, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !103, file: !104, line: 56, baseType: !10, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !103, file: !104, line: 57, baseType: !10, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_runas_pw", scope: !90, file: !16, line: 85, baseType: !102, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_runas_gr", scope: !90, file: !16, line: 86, baseType: !117, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !119, line: 42, size: 256, elements: !120)
!119 = !DIFile(filename: "/usr/include/grp.h", directory: "")
!120 = !{!121, !122, !123, !124}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !118, file: !119, line: 44, baseType: !10, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !118, file: !119, line: 45, baseType: !10, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !118, file: !119, line: 46, baseType: !111, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !118, file: !119, line: 47, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd_stat", scope: !90, file: !16, line: 87, baseType: !127, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !129, line: 46, size: 1152, elements: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!130 = !{!131, !133, !135, !137, !139, !140, !141, !142, !143, !145, !147, !149, !150, !151, !152}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !128, file: !129, line: 48, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !81, line: 133, baseType: !82)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !128, file: !129, line: 53, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !81, line: 136, baseType: !82)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !128, file: !129, line: 61, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !81, line: 139, baseType: !82)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !128, file: !129, line: 62, baseType: !138, size: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !81, line: 138, baseType: !17)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !128, file: !129, line: 64, baseType: !109, size: 32, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !128, file: !129, line: 65, baseType: !111, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !128, file: !129, line: 67, baseType: !6, size: 32, offset: 288)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !128, file: !129, line: 69, baseType: !132, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !128, file: !129, line: 74, baseType: !144, size: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !81, line: 140, baseType: !98)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !128, file: !129, line: 78, baseType: !146, size: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !81, line: 162, baseType: !98)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !128, file: !129, line: 80, baseType: !148, size: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !81, line: 167, baseType: !98)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !128, file: !129, line: 91, baseType: !93, size: 128, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !128, file: !129, line: 92, baseType: !93, size: 128, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !128, file: !129, line: 93, baseType: !93, size: 128, offset: 832)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !128, file: !129, line: 106, baseType: !153, size: 192, offset: 960)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 192, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 3)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !90, file: !16, line: 88, baseType: !10, size: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !16, line: 89, baseType: !10, size: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "runas_user", scope: !90, file: !16, line: 90, baseType: !10, size: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "runas_group", scope: !90, file: !16, line: 91, baseType: !10, size: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !90, file: !16, line: 92, baseType: !10, size: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !90, file: !16, line: 93, baseType: !10, size: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ttypath", scope: !90, file: !16, line: 94, baseType: !10, size: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !90, file: !16, line: 95, baseType: !10, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "shost", scope: !90, file: !16, line: 96, baseType: !10, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "runhost", scope: !90, file: !16, line: 97, baseType: !10, size: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "srunhost", scope: !90, file: !16, line: 98, baseType: !10, size: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "runchroot", scope: !90, file: !16, line: 99, baseType: !10, size: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "runcwd", scope: !90, file: !16, line: 100, baseType: !10, size: 64, offset: 1152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "prompt", scope: !90, file: !16, line: 101, baseType: !10, size: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd", scope: !90, file: !16, line: 102, baseType: !10, size: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd_args", scope: !90, file: !16, line: 103, baseType: !10, size: 64, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd_base", scope: !90, file: !16, line: 104, baseType: !10, size: 64, offset: 1408)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd_safe", scope: !90, file: !16, line: 105, baseType: !10, size: 64, offset: 1472)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !90, file: !16, line: 106, baseType: !10, size: 64, offset: 1536)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "krb5_ccname", scope: !90, file: !16, line: 107, baseType: !10, size: 64, offset: 1600)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "gid_list", scope: !90, file: !16, line: 108, baseType: !177, size: 64, offset: 1664)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gid_list", file: !16, line: 65, size: 128, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ngids", scope: !178, file: !16, line: 66, baseType: !6, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "gids", scope: !178, file: !16, line: 67, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !184, line: 65, baseType: !111)
!184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!185 = !DIDerivedType(tag: DW_TAG_member, name: "env_vars", scope: !90, file: !16, line: 109, baseType: !8, size: 64, offset: 1728)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "iolog_file", scope: !90, file: !16, line: 118, baseType: !10, size: 64, offset: 1792)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "iolog_path", scope: !90, file: !16, line: 119, baseType: !10, size: 64, offset: 1856)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "gids", scope: !90, file: !16, line: 120, baseType: !182, size: 64, offset: 1920)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "execfd", scope: !90, file: !16, line: 121, baseType: !6, size: 32, offset: 1984)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ngids", scope: !90, file: !16, line: 122, baseType: !6, size: 32, offset: 2016)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "closefrom", scope: !90, file: !16, line: 123, baseType: !6, size: 32, offset: 2048)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !90, file: !16, line: 124, baseType: !6, size: 32, offset: 2080)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cols", scope: !90, file: !16, line: 125, baseType: !6, size: 32, offset: 2112)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !16, line: 126, baseType: !6, size: 32, offset: 2144)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "max_groups", scope: !90, file: !16, line: 127, baseType: !6, size: 32, offset: 2176)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !90, file: !16, line: 128, baseType: !6, size: 32, offset: 2208)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "umask", scope: !90, file: !16, line: 129, baseType: !198, size: 32, offset: 2240)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !184, line: 70, baseType: !138)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !90, file: !16, line: 130, baseType: !200, size: 32, offset: 2272)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !184, line: 80, baseType: !109)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !90, file: !16, line: 131, baseType: !200, size: 32, offset: 2304)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !90, file: !16, line: 132, baseType: !203, size: 32, offset: 2336)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !184, line: 98, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !81, line: 142, baseType: !6)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "list_pw", scope: !12, file: !3, line: 85, type: !102, isLocal: false, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "timestamp_uid", scope: !12, file: !3, line: 86, type: !200, isLocal: false, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "timestamp_gid", scope: !12, file: !3, line: 87, type: !183, isLocal: false, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "force_umask", scope: !12, file: !3, line: 91, type: !213, isLocal: false, isDefinition: true)
!213 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "sudo_mode", scope: !12, file: !3, line: 92, type: !6, isLocal: false, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "prev_user", scope: !12, file: !3, line: 94, type: !10, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "snl", scope: !12, file: !3, line: 95, type: !220, isLocal: true, isDefinition: true)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sudo_nss_list", file: !222, line: 41, size: 128, elements: !223)
!222 = !DIFile(filename: "./sudo_nss.h", directory: "/media/joschua/Daten/Dateien/FAUbox/Uni/13._Semester/MA/Impl/vulns/sudo-1.9.5/plugins/sudoers")
!223 = !{!224, !387}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !221, file: !222, line: 41, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sudo_nss", file: !222, line: 28, size: 640, elements: !227)
!227 = !{!228, !234, !238, !239, !378, !382, !383, !384, !385, !386}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !226, file: !222, line: 29, baseType: !229, size: 128)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !222, line: 29, size: 128, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !229, file: !222, line: 29, baseType: !225, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !229, file: !222, line: 29, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !226, file: !222, line: 30, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!6, !225}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !226, file: !222, line: 31, baseType: !235, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !226, file: !222, line: 32, baseType: !240, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !225}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sudoers_parse_tree", file: !245, line: 281, size: 448, elements: !246)
!245 = !DIFile(filename: "./parse.h", directory: "/media/joschua/Daten/Dateien/FAUbox/Uni/13._Semester/MA/Impl/vulns/sudo-1.9.5/plugins/sudoers")
!246 = !{!247, !370, !371, !374, !377}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "userspecs", scope: !244, file: !245, line: 282, baseType: !248, size: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "userspec_list", file: !245, line: 164, size: 128, elements: !249)
!249 = !{!250, !369}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !248, file: !245, line: 164, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "userspec", file: !245, line: 174, size: 640, elements: !253)
!253 = !{!254, !260, !278, !352, !366, !367, !368}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !252, file: !245, line: 175, baseType: !255, size: 128)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !245, line: 175, size: 128, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !255, file: !245, line: 175, baseType: !251, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !255, file: !245, line: 175, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !252, file: !245, line: 176, baseType: !261, size: 128, offset: 128)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "member_list", file: !245, line: 165, size: 128, elements: !262)
!262 = !{!263, !277}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !261, file: !245, line: 165, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "member", file: !245, line: 231, size: 256, elements: !266)
!266 = !{!267, !273, !274, !276}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !265, file: !245, line: 232, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !265, file: !245, line: 232, size: 128, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !268, file: !245, line: 232, baseType: !264, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !268, file: !245, line: 232, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !245, line: 233, baseType: !10, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !265, file: !245, line: 234, baseType: !275, size: 16, offset: 192)
!275 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !265, file: !245, line: 235, baseType: !275, size: 16, offset: 208)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !261, file: !245, line: 165, baseType: !272, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "privileges", scope: !252, file: !245, line: 177, baseType: !279, size: 128, offset: 256)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "privilege_list", file: !245, line: 166, size: 128, elements: !280)
!280 = !{!281, !351}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !279, file: !245, line: 166, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "privilege", file: !245, line: 187, size: 576, elements: !284)
!284 = !{!285, !291, !292, !293, !328}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !283, file: !245, line: 188, baseType: !286, size: 128)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !283, file: !245, line: 188, size: 128, elements: !287)
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !286, file: !245, line: 188, baseType: !282, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !286, file: !245, line: 188, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ldap_role", scope: !283, file: !245, line: 189, baseType: !10, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "hostlist", scope: !283, file: !245, line: 190, baseType: !261, size: 128, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "cmndlist", scope: !283, file: !245, line: 191, baseType: !294, size: 128, offset: 320)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmndspec_list", file: !245, line: 167, size: 128, elements: !295)
!295 = !{!296, !327}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !294, file: !245, line: 167, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmndspec", file: !245, line: 209, size: 640, elements: !299)
!299 = !{!300, !306, !308, !309, !310, !320, !321, !324, !325, !326}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !298, file: !245, line: 210, baseType: !301, size: 128)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !298, file: !245, line: 210, size: 128, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !301, file: !245, line: 210, baseType: !297, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !301, file: !245, line: 210, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "runasuserlist", scope: !298, file: !245, line: 211, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "runasgrouplist", scope: !298, file: !245, line: 212, baseType: !307, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd", scope: !298, file: !245, line: 213, baseType: !264, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !298, file: !245, line: 214, baseType: !311, size: 32, offset: 320)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmndtag", file: !245, line: 118, size: 32, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nopasswd", scope: !311, file: !245, line: 119, baseType: !6, size: 3, flags: DIFlagBitField, extraData: i64 0)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "noexec", scope: !311, file: !245, line: 120, baseType: !6, size: 3, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "setenv", scope: !311, file: !245, line: 121, baseType: !6, size: 3, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "log_input", scope: !311, file: !245, line: 122, baseType: !6, size: 3, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "log_output", scope: !311, file: !245, line: 123, baseType: !6, size: 3, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "send_mail", scope: !311, file: !245, line: 124, baseType: !6, size: 3, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "follow", scope: !311, file: !245, line: 125, baseType: !6, size: 3, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !298, file: !245, line: 215, baseType: !6, size: 32, offset: 352)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "notbefore", scope: !298, file: !245, line: 216, baseType: !322, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !323, line: 7, baseType: !97)
!323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!324 = !DIDerivedType(tag: DW_TAG_member, name: "notafter", scope: !298, file: !245, line: 217, baseType: !322, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "runcwd", scope: !298, file: !245, line: 218, baseType: !10, size: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "runchroot", scope: !298, file: !245, line: 219, baseType: !10, size: 64, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !294, file: !245, line: 167, baseType: !305, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !283, file: !245, line: 192, baseType: !329, size: 128, offset: 448)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "defaults_list", file: !245, line: 163, size: 128, elements: !330)
!330 = !{!331, !350}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !329, file: !245, line: 163, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "defaults", file: !245, line: 265, size: 512, elements: !334)
!334 = !{!335, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !333, file: !245, line: 266, baseType: !336, size: 128)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !333, file: !245, line: 266, size: 128, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !336, file: !245, line: 266, baseType: !332, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !336, file: !245, line: 266, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !333, file: !245, line: 267, baseType: !10, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !333, file: !245, line: 268, baseType: !10, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "binding", scope: !333, file: !245, line: 269, baseType: !307, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !333, file: !245, line: 270, baseType: !10, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !333, file: !245, line: 271, baseType: !275, size: 16, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !333, file: !245, line: 272, baseType: !11, size: 8, offset: 400)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !333, file: !245, line: 273, baseType: !11, size: 8, offset: 408)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !333, file: !245, line: 274, baseType: !6, size: 32, offset: 416)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !333, file: !245, line: 275, baseType: !6, size: 32, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !329, file: !245, line: 163, baseType: !340, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !279, file: !245, line: 166, baseType: !290, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !252, file: !245, line: 178, baseType: !353, size: 128, offset: 384)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comment_list", file: !245, line: 169, size: 128, elements: !354)
!354 = !{!355, !364}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !353, file: !245, line: 169, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sudoers_comment", file: !245, line: 243, size: 128, elements: !358)
!358 = !{!359, !363}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !357, file: !245, line: 244, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !357, file: !245, line: 244, size: 64, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !360, file: !245, line: 244, baseType: !356, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !357, file: !245, line: 245, baseType: !10, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !353, file: !245, line: 169, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !252, file: !245, line: 179, baseType: !6, size: 32, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !252, file: !245, line: 180, baseType: !6, size: 32, offset: 544)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !252, file: !245, line: 181, baseType: !10, size: 64, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !248, file: !245, line: 164, baseType: !259, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !244, file: !245, line: 283, baseType: !329, size: 128, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !244, file: !245, line: 284, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "rbtree", file: !245, line: 284, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "shost", scope: !244, file: !245, line: 285, baseType: !375, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "lhost", scope: !244, file: !245, line: 285, baseType: !375, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !226, file: !222, line: 33, baseType: !379, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!6, !225, !102}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "getdefs", scope: !226, file: !222, line: 34, baseType: !235, size: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !226, file: !222, line: 35, baseType: !7, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "parse_tree", scope: !226, file: !222, line: 36, baseType: !243, size: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ret_if_found", scope: !226, file: !222, line: 37, baseType: !213, size: 8, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ret_if_notfound", scope: !226, file: !222, line: 38, baseType: !213, size: 8, offset: 584)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !221, file: !222, line: 41, baseType: !233, size: 64, offset: 64)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "unknown_runas_uid", scope: !12, file: !3, line: 96, type: !213, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "unknown_runas_gid", scope: !12, file: !3, line: 97, type: !213, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "NewArgc", scope: !12, file: !3, line: 105, type: !6, isLocal: false, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "NewArgv", scope: !12, file: !3, line: 106, type: !125, isLocal: false, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "nproclimit", scope: !12, file: !3, line: 101, type: !398, isLocal: true, isDefinition: true)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !23, line: 139, size: 128, elements: !399)
!399 = !{!400, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !398, file: !23, line: 142, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !23, line: 131, baseType: !80)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !398, file: !23, line: 144, baseType: !401, size: 64, offset: 64)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "cmnd_status", scope: !12, file: !3, line: 98, type: !6, isLocal: true, isDefinition: true)
!405 = !{}
!406 = !{i32 7, !"Dwarf Version", i32 4}
!407 = !{i32 2, !"Debug Info Version", i32 3}
!408 = !{i32 1, !"wchar_size", i32 4}
!409 = !{i32 7, !"PIC Level", i32 2}
!410 = !{i32 7, !"PIE Level", i32 2}
!411 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
!412 = !DILocalVariable(name: "info", arg: 1, scope: !2, file: !3, line: 155, type: !7)
!413 = !DILocation(line: 155, column: 20, scope: !2)
!414 = !DILocalVariable(name: "envp", arg: 2, scope: !2, file: !3, line: 155, type: !8)
!415 = !DILocation(line: 155, column: 39, scope: !2)
!416 = !DILocalVariable(name: "nss", scope: !2, file: !3, line: 157, type: !225)
!417 = !DILocation(line: 157, column: 22, scope: !2)
!418 = !DILocalVariable(name: "nss_next", scope: !2, file: !3, line: 157, type: !225)
!419 = !DILocation(line: 157, column: 28, scope: !2)
!420 = !DILocalVariable(name: "oldlocale", scope: !2, file: !3, line: 158, type: !6)
!421 = !DILocation(line: 158, column: 9, scope: !2)
!422 = !DILocalVariable(name: "sources", scope: !2, file: !3, line: 158, type: !6)
!423 = !DILocation(line: 158, column: 20, scope: !2)
!424 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2, file: !3, line: 160, type: !425)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!426 = !DILocation(line: 160, column: 5, scope: !2)
!427 = !DILocation(line: 162, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !2, file: !3, line: 162, column: 9)
!429 = !DILocation(line: 162, column: 13, scope: !428)
!430 = !DILocation(line: 162, column: 9, scope: !2)
!431 = !DILocation(line: 163, column: 2, scope: !428)
!432 = !DILocalVariable(name: "sudo_debug_ret", scope: !433, file: !3, line: 163, type: !6)
!433 = distinct !DILexicalBlock(scope: !428, file: !3, line: 163, column: 2)
!434 = !DILocation(line: 163, column: 2, scope: !433)
!435 = !DILocation(line: 165, column: 5, scope: !2)
!436 = !DILocation(line: 168, column: 5, scope: !2)
!437 = !DILocation(line: 171, column: 19, scope: !438)
!438 = distinct !DILexicalBlock(scope: !2, file: !3, line: 171, column: 9)
!439 = !DILocation(line: 171, column: 10, scope: !438)
!440 = !DILocation(line: 171, column: 9, scope: !2)
!441 = !DILocation(line: 172, column: 2, scope: !438)
!442 = !DILocalVariable(name: "sudo_debug_ret", scope: !443, file: !3, line: 172, type: !6)
!443 = distinct !DILexicalBlock(scope: !438, file: !3, line: 172, column: 2)
!444 = !DILocation(line: 172, column: 2, scope: !443)
!445 = !DILocation(line: 175, column: 10, scope: !446)
!446 = distinct !DILexicalBlock(scope: !2, file: !3, line: 175, column: 9)
!447 = !DILocation(line: 175, column: 9, scope: !2)
!448 = !DILocation(line: 176, column: 2, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !3, line: 175, column: 27)
!450 = !DILocation(line: 176, column: 2, scope: !451)
!451 = distinct !DILexicalBlock(scope: !449, file: !3, line: 176, column: 2)
!452 = !DILocation(line: 177, column: 2, scope: !449)
!453 = !DILocalVariable(name: "sudo_debug_ret", scope: !454, file: !3, line: 177, type: !6)
!454 = distinct !DILexicalBlock(scope: !449, file: !3, line: 177, column: 2)
!455 = !DILocation(line: 177, column: 2, scope: !454)
!456 = !DILocation(line: 178, column: 5, scope: !449)
!457 = !DILocation(line: 181, column: 49, scope: !2)
!458 = !DILocation(line: 181, column: 17, scope: !2)
!459 = !DILocation(line: 181, column: 15, scope: !2)
!460 = !DILocation(line: 182, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !2, file: !3, line: 182, column: 9)
!462 = !DILocation(line: 182, column: 9, scope: !2)
!463 = !DILocation(line: 183, column: 2, scope: !461)
!464 = !DILocalVariable(name: "sudo_debug_ret", scope: !465, file: !3, line: 183, type: !6)
!465 = distinct !DILexicalBlock(scope: !461, file: !3, line: 183, column: 2)
!466 = !DILocation(line: 183, column: 2, scope: !465)
!467 = !DILocation(line: 185, column: 20, scope: !468)
!468 = distinct !DILexicalBlock(scope: !2, file: !3, line: 185, column: 9)
!469 = !DILocation(line: 185, column: 10, scope: !468)
!470 = !DILocation(line: 185, column: 9, scope: !2)
!471 = !DILocation(line: 186, column: 2, scope: !468)
!472 = !DILocalVariable(name: "sudo_debug_ret", scope: !473, file: !3, line: 186, type: !6)
!473 = distinct !DILexicalBlock(scope: !468, file: !3, line: 186, column: 2)
!474 = !DILocation(line: 186, column: 2, scope: !473)
!475 = !DILocation(line: 189, column: 11, scope: !2)
!476 = !DILocation(line: 189, column: 9, scope: !2)
!477 = !DILocation(line: 192, column: 10, scope: !478)
!478 = distinct !DILexicalBlock(scope: !2, file: !3, line: 192, column: 9)
!479 = !DILocation(line: 192, column: 9, scope: !2)
!480 = !DILocation(line: 193, column: 2, scope: !478)
!481 = !DILocalVariable(name: "sudo_debug_ret", scope: !482, file: !3, line: 193, type: !6)
!482 = distinct !DILexicalBlock(scope: !478, file: !3, line: 193, column: 2)
!483 = !DILocation(line: 193, column: 2, scope: !482)
!484 = !DILocation(line: 199, column: 5, scope: !2)
!485 = !DILocation(line: 200, column: 5, scope: !2)
!486 = !DILocation(line: 201, column: 17, scope: !2)
!487 = !DILocation(line: 201, column: 5, scope: !2)
!488 = !DILocation(line: 202, column: 5, scope: !489)
!489 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 5)
!490 = !DILocation(line: 202, column: 5, scope: !491)
!491 = distinct !DILexicalBlock(scope: !489, file: !3, line: 202, column: 5)
!492 = !DILocation(line: 0, scope: !491)
!493 = !DILocation(line: 203, column: 6, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 203, column: 6)
!495 = distinct !DILexicalBlock(scope: !491, file: !3, line: 202, column: 53)
!496 = !DILocation(line: 203, column: 11, scope: !494)
!497 = !DILocation(line: 203, column: 16, scope: !494)
!498 = !DILocation(line: 203, column: 21, scope: !494)
!499 = !DILocation(line: 203, column: 27, scope: !494)
!500 = !DILocation(line: 203, column: 49, scope: !494)
!501 = !DILocation(line: 203, column: 54, scope: !494)
!502 = !DILocation(line: 203, column: 60, scope: !494)
!503 = !DILocation(line: 203, column: 31, scope: !494)
!504 = !DILocation(line: 203, column: 36, scope: !494)
!505 = !DILocation(line: 203, column: 47, scope: !494)
!506 = !DILocation(line: 203, column: 66, scope: !494)
!507 = !DILocation(line: 203, column: 6, scope: !495)
!508 = !DILocation(line: 204, column: 6, scope: !509)
!509 = distinct !DILexicalBlock(scope: !494, file: !3, line: 203, column: 75)
!510 = !DILocation(line: 204, column: 6, scope: !511)
!511 = distinct !DILexicalBlock(scope: !509, file: !3, line: 204, column: 6)
!512 = !DILocation(line: 204, column: 6, scope: !513)
!513 = distinct !DILexicalBlock(scope: !511, file: !3, line: 204, column: 6)
!514 = !DILocation(line: 204, column: 6, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !3, line: 204, column: 6)
!516 = !DILocation(line: 204, column: 6, scope: !517)
!517 = distinct !DILexicalBlock(scope: !515, file: !3, line: 204, column: 6)
!518 = !DILocation(line: 205, column: 6, scope: !509)
!519 = !DILocation(line: 208, column: 9, scope: !495)
!520 = !DILocation(line: 209, column: 6, scope: !521)
!521 = distinct !DILexicalBlock(scope: !495, file: !3, line: 209, column: 6)
!522 = !DILocation(line: 209, column: 11, scope: !521)
!523 = !DILocation(line: 209, column: 19, scope: !521)
!524 = !DILocation(line: 209, column: 24, scope: !521)
!525 = !DILocation(line: 209, column: 30, scope: !521)
!526 = !DILocation(line: 209, column: 50, scope: !521)
!527 = !DILocation(line: 209, column: 55, scope: !521)
!528 = !DILocation(line: 209, column: 34, scope: !521)
!529 = !DILocation(line: 209, column: 6, scope: !495)
!530 = !DILocation(line: 211, column: 6, scope: !531)
!531 = distinct !DILexicalBlock(scope: !521, file: !3, line: 210, column: 67)
!532 = !DILocation(line: 213, column: 2, scope: !531)
!533 = !DILocation(line: 214, column: 5, scope: !495)
!534 = distinct !{!534, !488, !535}
!535 = !DILocation(line: 214, column: 5, scope: !489)
!536 = !DILocation(line: 215, column: 9, scope: !537)
!537 = distinct !DILexicalBlock(scope: !2, file: !3, line: 215, column: 9)
!538 = !DILocation(line: 215, column: 17, scope: !537)
!539 = !DILocation(line: 215, column: 9, scope: !2)
!540 = !DILocation(line: 216, column: 2, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !3, line: 215, column: 23)
!542 = !DILocation(line: 216, column: 2, scope: !543)
!543 = distinct !DILexicalBlock(scope: !541, file: !3, line: 216, column: 2)
!544 = !DILocation(line: 217, column: 2, scope: !541)
!545 = !DILocation(line: 221, column: 24, scope: !546)
!546 = distinct !DILexicalBlock(scope: !2, file: !3, line: 221, column: 9)
!547 = !DILocation(line: 221, column: 35, scope: !546)
!548 = !DILocation(line: 221, column: 56, scope: !546)
!549 = !DILocation(line: 221, column: 9, scope: !546)
!550 = !DILocation(line: 221, column: 9, scope: !2)
!551 = !DILocation(line: 222, column: 6, scope: !546)
!552 = !DILocation(line: 222, column: 2, scope: !546)
!553 = !DILocation(line: 221, column: 58, scope: !546)
!554 = !DILabel(scope: !2, name: "cleanup", file: !3, line: 224)
!555 = !DILocation(line: 224, column: 1, scope: !2)
!556 = !DILocation(line: 225, column: 10, scope: !557)
!557 = distinct !DILexicalBlock(scope: !2, file: !3, line: 225, column: 9)
!558 = !DILocation(line: 225, column: 9, scope: !2)
!559 = !DILocation(line: 226, column: 6, scope: !557)
!560 = !DILocation(line: 226, column: 2, scope: !557)
!561 = !DILocation(line: 229, column: 5, scope: !2)
!562 = !DILocation(line: 230, column: 23, scope: !2)
!563 = !DILocation(line: 230, column: 5, scope: !2)
!564 = !DILocation(line: 232, column: 5, scope: !2)
!565 = !DILocalVariable(name: "sudo_debug_ret", scope: !566, file: !3, line: 232, type: !6)
!566 = distinct !DILexicalBlock(scope: !2, file: !3, line: 232, column: 5)
!567 = !DILocation(line: 232, column: 5, scope: !566)
!568 = !DILocation(line: 233, column: 1, scope: !2)
!569 = distinct !DISubprogram(name: "sudoers_cleanup", scope: !3, file: !3, line: 1629, type: !570, scopeLine: 1630, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !405)
!570 = !DISubroutineType(types: !571)
!571 = !{null}
!572 = !DILocalVariable(name: "nss", scope: !569, file: !3, line: 1631, type: !225)
!573 = !DILocation(line: 1631, column: 22, scope: !569)
!574 = !DILocalVariable(name: "sudo_debug_subsys", scope: !569, file: !3, line: 1632, type: !425)
!575 = !DILocation(line: 1632, column: 5, scope: !569)
!576 = !DILocation(line: 1634, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1634, column: 9)
!578 = !DILocation(line: 1634, column: 13, scope: !577)
!579 = !DILocation(line: 1634, column: 9, scope: !569)
!580 = !DILocation(line: 1635, column: 2, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 1635, column: 2)
!582 = distinct !DILexicalBlock(scope: !577, file: !3, line: 1634, column: 22)
!583 = !DILocation(line: 1635, column: 2, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !3, line: 1635, column: 2)
!585 = !DILocation(line: 1636, column: 6, scope: !586)
!586 = distinct !DILexicalBlock(scope: !584, file: !3, line: 1635, column: 35)
!587 = !DILocation(line: 1636, column: 11, scope: !586)
!588 = !DILocation(line: 1636, column: 17, scope: !586)
!589 = !DILocation(line: 1637, column: 2, scope: !586)
!590 = distinct !{!590, !580, !591}
!591 = !DILocation(line: 1637, column: 2, scope: !581)
!592 = !DILocation(line: 1638, column: 5, scope: !582)
!593 = !DILocation(line: 1639, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1639, column: 9)
!595 = !DILocation(line: 1639, column: 9, scope: !569)
!596 = !DILocation(line: 1640, column: 2, scope: !594)
!597 = !DILocation(line: 1641, column: 5, scope: !569)
!598 = !DILocation(line: 1642, column: 5, scope: !569)
!599 = !DILocation(line: 1644, column: 5, scope: !569)
!600 = !DILocation(line: 1644, column: 5, scope: !601)
!601 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1644, column: 5)
!602 = !DILocation(line: 1645, column: 1, scope: !569)
!603 = distinct !DISubprogram(name: "init_vars", scope: !3, file: !3, line: 785, type: !604, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!604 = !DISubroutineType(types: !605)
!605 = !{!213, !8}
!606 = !DILocalVariable(name: "envp", arg: 1, scope: !603, file: !3, line: 785, type: !8)
!607 = !DILocation(line: 785, column: 24, scope: !603)
!608 = !DILocalVariable(name: "ep", scope: !603, file: !3, line: 787, type: !8)
!609 = !DILocation(line: 787, column: 20, scope: !603)
!610 = !DILocalVariable(name: "unknown_user", scope: !603, file: !3, line: 788, type: !213)
!611 = !DILocation(line: 788, column: 10, scope: !603)
!612 = !DILocalVariable(name: "sudo_debug_subsys", scope: !603, file: !3, line: 789, type: !425)
!613 = !DILocation(line: 789, column: 5, scope: !603)
!614 = !DILocation(line: 791, column: 29, scope: !615)
!615 = distinct !DILexicalBlock(scope: !603, file: !3, line: 791, column: 9)
!616 = !DILocation(line: 791, column: 54, scope: !615)
!617 = !DILocation(line: 791, column: 10, scope: !615)
!618 = !DILocation(line: 791, column: 9, scope: !603)
!619 = !DILocation(line: 792, column: 2, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !3, line: 791, column: 75)
!621 = !DILocation(line: 792, column: 2, scope: !622)
!622 = distinct !DILexicalBlock(scope: !620, file: !3, line: 792, column: 2)
!623 = !DILocation(line: 793, column: 2, scope: !620)
!624 = !DILocalVariable(name: "sudo_debug_ret", scope: !625, file: !3, line: 793, type: !213)
!625 = distinct !DILexicalBlock(scope: !620, file: !3, line: 793, column: 2)
!626 = !DILocation(line: 793, column: 2, scope: !625)
!627 = !DILocation(line: 794, column: 5, scope: !620)
!628 = !DILocation(line: 799, column: 15, scope: !629)
!629 = distinct !DILexicalBlock(scope: !603, file: !3, line: 799, column: 5)
!630 = !DILocation(line: 799, column: 13, scope: !629)
!631 = !DILocation(line: 799, column: 10, scope: !629)
!632 = !DILocation(line: 799, column: 22, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !3, line: 799, column: 5)
!634 = !DILocation(line: 799, column: 21, scope: !633)
!635 = !DILocation(line: 799, column: 5, scope: !629)
!636 = !DILocation(line: 800, column: 12, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !3, line: 799, column: 32)
!638 = !DILocation(line: 800, column: 11, scope: !637)
!639 = !DILocation(line: 800, column: 10, scope: !637)
!640 = !DILocation(line: 800, column: 2, scope: !637)
!641 = !DILocation(line: 802, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !3, line: 802, column: 7)
!643 = distinct !DILexicalBlock(scope: !637, file: !3, line: 800, column: 16)
!644 = !DILocation(line: 802, column: 7, scope: !643)
!645 = !DILocation(line: 803, column: 22, scope: !642)
!646 = !DILocation(line: 803, column: 21, scope: !642)
!647 = !DILocation(line: 803, column: 25, scope: !642)
!648 = !DILocation(line: 803, column: 49, scope: !642)
!649 = !DILocation(line: 803, column: 19, scope: !642)
!650 = !DILocation(line: 803, column: 7, scope: !642)
!651 = !DILocation(line: 804, column: 3, scope: !643)
!652 = !DILocation(line: 806, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !643, file: !3, line: 806, column: 7)
!654 = !DILocation(line: 806, column: 7, scope: !643)
!655 = !DILocation(line: 807, column: 20, scope: !653)
!656 = !DILocation(line: 807, column: 19, scope: !653)
!657 = !DILocation(line: 807, column: 23, scope: !653)
!658 = !DILocation(line: 807, column: 41, scope: !653)
!659 = !DILocation(line: 807, column: 17, scope: !653)
!660 = !DILocation(line: 807, column: 7, scope: !653)
!661 = !DILocation(line: 808, column: 3, scope: !643)
!662 = !DILocation(line: 810, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !643, file: !3, line: 810, column: 7)
!664 = !DILocation(line: 810, column: 7, scope: !643)
!665 = !DILocation(line: 812, column: 11, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 812, column: 11)
!667 = distinct !DILexicalBlock(scope: !663, file: !3, line: 810, column: 37)
!668 = !DILocation(line: 812, column: 23, scope: !666)
!669 = !DILocation(line: 812, column: 11, scope: !667)
!670 = !DILocation(line: 813, column: 19, scope: !666)
!671 = !DILocation(line: 813, column: 18, scope: !666)
!672 = !DILocation(line: 813, column: 22, scope: !666)
!673 = !DILocation(line: 813, column: 47, scope: !666)
!674 = !DILocation(line: 813, column: 16, scope: !666)
!675 = !DILocation(line: 813, column: 4, scope: !666)
!676 = !DILocation(line: 814, column: 7, scope: !667)
!677 = !DILocation(line: 816, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !643, file: !3, line: 816, column: 7)
!679 = !DILocation(line: 816, column: 7, scope: !643)
!680 = !DILocation(line: 817, column: 20, scope: !678)
!681 = !DILocation(line: 817, column: 19, scope: !678)
!682 = !DILocation(line: 817, column: 23, scope: !678)
!683 = !DILocation(line: 817, column: 46, scope: !678)
!684 = !DILocation(line: 817, column: 17, scope: !678)
!685 = !DILocation(line: 817, column: 7, scope: !678)
!686 = !DILocation(line: 818, column: 3, scope: !643)
!687 = !DILocation(line: 820, column: 5, scope: !637)
!688 = !DILocation(line: 799, column: 28, scope: !633)
!689 = !DILocation(line: 799, column: 5, scope: !633)
!690 = distinct !{!690, !635, !691}
!691 = !DILocation(line: 820, column: 5, scope: !629)
!692 = !DILocation(line: 827, column: 19, scope: !693)
!693 = distinct !DILexicalBlock(scope: !603, file: !3, line: 827, column: 9)
!694 = !DILocation(line: 827, column: 22, scope: !693)
!695 = !DILocation(line: 827, column: 9, scope: !603)
!696 = !DILocation(line: 828, column: 36, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 828, column: 6)
!698 = distinct !DILexicalBlock(scope: !693, file: !3, line: 827, column: 31)
!699 = !DILocation(line: 828, column: 22, scope: !697)
!700 = !DILocation(line: 828, column: 20, scope: !697)
!701 = !DILocation(line: 828, column: 48, scope: !697)
!702 = !DILocation(line: 828, column: 6, scope: !698)
!703 = !DILocation(line: 834, column: 10, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 834, column: 10)
!705 = distinct !DILexicalBlock(scope: !697, file: !3, line: 828, column: 57)
!706 = !DILocation(line: 834, column: 20, scope: !704)
!707 = !DILocation(line: 834, column: 33, scope: !704)
!708 = !DILocation(line: 834, column: 36, scope: !704)
!709 = !DILocation(line: 834, column: 46, scope: !704)
!710 = !DILocation(line: 834, column: 10, scope: !705)
!711 = !DILocation(line: 835, column: 3, scope: !712)
!712 = distinct !DILexicalBlock(scope: !704, file: !3, line: 834, column: 66)
!713 = !DILocation(line: 835, column: 3, scope: !714)
!714 = distinct !DILexicalBlock(scope: !712, file: !3, line: 835, column: 3)
!715 = !DILocation(line: 836, column: 3, scope: !712)
!716 = !DILocalVariable(name: "sudo_debug_ret", scope: !717, file: !3, line: 836, type: !213)
!717 = distinct !DILexicalBlock(scope: !712, file: !3, line: 836, column: 3)
!718 = !DILocation(line: 836, column: 3, scope: !717)
!719 = !DILocation(line: 837, column: 6, scope: !712)
!720 = !DILocation(line: 840, column: 34, scope: !705)
!721 = !DILocation(line: 840, column: 45, scope: !705)
!722 = !DILocation(line: 840, column: 55, scope: !705)
!723 = !DILocation(line: 840, column: 21, scope: !705)
!724 = !DILocation(line: 840, column: 19, scope: !705)
!725 = !DILocation(line: 841, column: 19, scope: !705)
!726 = !DILocation(line: 842, column: 2, scope: !705)
!727 = !DILocation(line: 843, column: 5, scope: !698)
!728 = !DILocation(line: 844, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !603, file: !3, line: 844, column: 9)
!730 = !DILocation(line: 844, column: 23, scope: !729)
!731 = !DILocation(line: 844, column: 9, scope: !603)
!732 = !DILocation(line: 845, column: 45, scope: !729)
!733 = !DILocation(line: 845, column: 18, scope: !729)
!734 = !DILocation(line: 845, column: 16, scope: !729)
!735 = !DILocation(line: 845, column: 2, scope: !729)
!736 = !DILocation(line: 848, column: 10, scope: !737)
!737 = distinct !DILexicalBlock(scope: !603, file: !3, line: 848, column: 9)
!738 = !DILocation(line: 848, column: 9, scope: !603)
!739 = !DILocation(line: 849, column: 2, scope: !737)
!740 = !DILocalVariable(name: "sudo_debug_ret", scope: !741, file: !3, line: 849, type: !213)
!741 = distinct !DILexicalBlock(scope: !737, file: !3, line: 849, column: 2)
!742 = !DILocation(line: 849, column: 2, scope: !741)
!743 = !DILocation(line: 852, column: 5, scope: !603)
!744 = !DILocation(line: 855, column: 9, scope: !745)
!745 = distinct !DILexicalBlock(scope: !603, file: !3, line: 855, column: 9)
!746 = !DILocation(line: 855, column: 9, scope: !603)
!747 = !DILocation(line: 857, column: 21, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !3, line: 855, column: 23)
!749 = !DILocation(line: 856, column: 2, scope: !748)
!750 = !DILocation(line: 858, column: 2, scope: !748)
!751 = !DILocalVariable(name: "sudo_debug_ret", scope: !752, file: !3, line: 858, type: !213)
!752 = distinct !DILexicalBlock(scope: !748, file: !3, line: 858, column: 2)
!753 = !DILocation(line: 858, column: 2, scope: !752)
!754 = !DILocation(line: 859, column: 5, scope: !748)
!755 = !DILocation(line: 866, column: 19, scope: !756)
!756 = distinct !DILexicalBlock(scope: !603, file: !3, line: 866, column: 9)
!757 = !DILocation(line: 866, column: 31, scope: !756)
!758 = !DILocation(line: 866, column: 9, scope: !603)
!759 = !DILocation(line: 867, column: 29, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 867, column: 6)
!761 = distinct !DILexicalBlock(scope: !756, file: !3, line: 866, column: 40)
!762 = !DILocation(line: 867, column: 7, scope: !760)
!763 = !DILocation(line: 867, column: 6, scope: !761)
!764 = !DILocation(line: 868, column: 6, scope: !760)
!765 = !DILocalVariable(name: "sudo_debug_ret", scope: !766, file: !3, line: 868, type: !213)
!766 = distinct !DILexicalBlock(scope: !760, file: !3, line: 868, column: 6)
!767 = !DILocation(line: 868, column: 6, scope: !766)
!768 = !DILocation(line: 869, column: 29, scope: !769)
!769 = distinct !DILexicalBlock(scope: !761, file: !3, line: 869, column: 6)
!770 = !DILocation(line: 869, column: 19, scope: !769)
!771 = !DILocation(line: 870, column: 13, scope: !769)
!772 = !DILocation(line: 870, column: 26, scope: !769)
!773 = !DILocation(line: 869, column: 7, scope: !769)
!774 = !DILocation(line: 869, column: 6, scope: !761)
!775 = !DILocation(line: 871, column: 6, scope: !769)
!776 = !DILocalVariable(name: "sudo_debug_ret", scope: !777, file: !3, line: 871, type: !213)
!777 = distinct !DILexicalBlock(scope: !769, file: !3, line: 871, column: 6)
!778 = !DILocation(line: 871, column: 6, scope: !777)
!779 = !DILocation(line: 872, column: 5, scope: !761)
!780 = !DILocation(line: 873, column: 29, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 873, column: 6)
!782 = distinct !DILexicalBlock(scope: !756, file: !3, line: 872, column: 12)
!783 = !DILocation(line: 873, column: 19, scope: !781)
!784 = !DILocation(line: 874, column: 13, scope: !781)
!785 = !DILocation(line: 874, column: 26, scope: !781)
!786 = !DILocation(line: 873, column: 7, scope: !781)
!787 = !DILocation(line: 873, column: 6, scope: !782)
!788 = !DILocation(line: 875, column: 6, scope: !781)
!789 = !DILocalVariable(name: "sudo_debug_ret", scope: !790, file: !3, line: 875, type: !213)
!790 = distinct !DILexicalBlock(scope: !781, file: !3, line: 875, column: 6)
!791 = !DILocation(line: 875, column: 6, scope: !790)
!792 = !DILocation(line: 878, column: 5, scope: !603)
!793 = !DILocalVariable(name: "sudo_debug_ret", scope: !794, file: !3, line: 878, type: !213)
!794 = distinct !DILexicalBlock(scope: !603, file: !3, line: 878, column: 5)
!795 = !DILocation(line: 878, column: 5, scope: !794)
!796 = !DILocation(line: 879, column: 1, scope: !603)
!797 = distinct !DISubprogram(name: "set_loginclass", scope: !3, file: !3, line: 1161, type: !798, scopeLine: 1162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!798 = !DISubroutineType(types: !799)
!799 = !{!213, !102}
!800 = !DILocalVariable(name: "pw", arg: 1, scope: !797, file: !3, line: 1161, type: !102)
!801 = !DILocation(line: 1161, column: 31, scope: !797)
!802 = !DILocation(line: 1163, column: 5, scope: !797)
!803 = distinct !DISubprogram(name: "sudoers_policy_main", scope: !3, file: !3, line: 332, type: !804, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !405)
!804 = !DISubroutineType(types: !805)
!805 = !{!6, !6, !8, !6, !125, !213, !7}
!806 = !DILocalVariable(name: "argc", arg: 1, scope: !803, file: !3, line: 332, type: !6)
!807 = !DILocation(line: 332, column: 25, scope: !803)
!808 = !DILocalVariable(name: "argv", arg: 2, scope: !803, file: !3, line: 332, type: !8)
!809 = !DILocation(line: 332, column: 44, scope: !803)
!810 = !DILocalVariable(name: "pwflag", arg: 3, scope: !803, file: !3, line: 332, type: !6)
!811 = !DILocation(line: 332, column: 56, scope: !803)
!812 = !DILocalVariable(name: "env_add", arg: 4, scope: !803, file: !3, line: 332, type: !125)
!813 = !DILocation(line: 332, column: 70, scope: !803)
!814 = !DILocalVariable(name: "verbose", arg: 5, scope: !803, file: !3, line: 333, type: !213)
!815 = !DILocation(line: 333, column: 10, scope: !803)
!816 = !DILocalVariable(name: "closure", arg: 6, scope: !803, file: !3, line: 333, type: !7)
!817 = !DILocation(line: 333, column: 25, scope: !803)
!818 = !DILocalVariable(name: "iolog_path", scope: !803, file: !3, line: 335, type: !10)
!819 = !DILocation(line: 335, column: 11, scope: !803)
!820 = !DILocalVariable(name: "cmnd_umask", scope: !803, file: !3, line: 336, type: !198)
!821 = !DILocation(line: 336, column: 12, scope: !803)
!822 = !DILocalVariable(name: "nss", scope: !803, file: !3, line: 337, type: !225)
!823 = !DILocation(line: 337, column: 22, scope: !803)
!824 = !DILocalVariable(name: "oldlocale", scope: !803, file: !3, line: 338, type: !6)
!825 = !DILocation(line: 338, column: 9, scope: !803)
!826 = !DILocalVariable(name: "validated", scope: !803, file: !3, line: 338, type: !6)
!827 = !DILocation(line: 338, column: 20, scope: !803)
!828 = !DILocalVariable(name: "ret", scope: !803, file: !3, line: 338, type: !6)
!829 = !DILocation(line: 338, column: 31, scope: !803)
!830 = !DILocalVariable(name: "sudo_debug_subsys", scope: !803, file: !3, line: 339, type: !425)
!831 = !DILocation(line: 339, column: 5, scope: !803)
!832 = !DILocation(line: 341, column: 5, scope: !803)
!833 = !DILocation(line: 343, column: 5, scope: !803)
!834 = !DILocation(line: 346, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !803, file: !3, line: 346, column: 9)
!836 = !DILocation(line: 346, column: 18, scope: !835)
!837 = !DILocation(line: 346, column: 23, scope: !835)
!838 = !DILocation(line: 346, column: 27, scope: !835)
!839 = !DILocation(line: 346, column: 9, scope: !803)
!840 = !DILocation(line: 348, column: 2, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !3, line: 346, column: 42)
!842 = !DILocation(line: 348, column: 2, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !3, line: 348, column: 2)
!844 = !DILocation(line: 350, column: 2, scope: !841)
!845 = !DILocation(line: 353, column: 10, scope: !846)
!846 = distinct !DILexicalBlock(scope: !803, file: !3, line: 353, column: 9)
!847 = !DILocation(line: 353, column: 9, scope: !803)
!848 = !DILocation(line: 354, column: 2, scope: !846)
!849 = !DILocation(line: 357, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !803, file: !3, line: 357, column: 9)
!851 = !DILocation(line: 357, column: 17, scope: !850)
!852 = !DILocation(line: 357, column: 25, scope: !850)
!853 = !DILocation(line: 357, column: 28, scope: !850)
!854 = !DILocation(line: 357, column: 39, scope: !850)
!855 = !DILocation(line: 357, column: 9, scope: !803)
!856 = !DILocation(line: 358, column: 23, scope: !850)
!857 = !DILocation(line: 358, column: 21, scope: !850)
!858 = !DILocation(line: 358, column: 2, scope: !850)
!859 = !DILocation(line: 364, column: 9, scope: !860)
!860 = distinct !DILexicalBlock(scope: !803, file: !3, line: 364, column: 9)
!861 = !DILocation(line: 364, column: 14, scope: !860)
!862 = !DILocation(line: 364, column: 9, scope: !803)
!863 = !DILocation(line: 365, column: 10, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !3, line: 364, column: 20)
!865 = !DILocation(line: 366, column: 31, scope: !864)
!866 = !DILocation(line: 366, column: 39, scope: !864)
!867 = !DILocation(line: 366, column: 12, scope: !864)
!868 = !DILocation(line: 366, column: 10, scope: !864)
!869 = !DILocation(line: 367, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !864, file: !3, line: 367, column: 6)
!871 = !DILocation(line: 367, column: 14, scope: !870)
!872 = !DILocation(line: 367, column: 6, scope: !864)
!873 = !DILocation(line: 368, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !3, line: 367, column: 23)
!875 = !DILocation(line: 368, column: 6, scope: !876)
!876 = distinct !DILexicalBlock(scope: !874, file: !3, line: 368, column: 6)
!877 = !DILocation(line: 369, column: 6, scope: !874)
!878 = !DILocation(line: 371, column: 28, scope: !864)
!879 = !DILocation(line: 371, column: 2, scope: !864)
!880 = !DILocation(line: 372, column: 15, scope: !864)
!881 = !DILocation(line: 372, column: 2, scope: !864)
!882 = !DILocation(line: 372, column: 13, scope: !864)
!883 = !DILocation(line: 373, column: 2, scope: !864)
!884 = !DILocation(line: 373, column: 13, scope: !864)
!885 = !DILocation(line: 374, column: 5, scope: !864)
!886 = !DILocation(line: 376, column: 12, scope: !887)
!887 = distinct !DILexicalBlock(scope: !860, file: !3, line: 374, column: 12)
!888 = !DILocation(line: 376, column: 10, scope: !887)
!889 = !DILocation(line: 377, column: 31, scope: !887)
!890 = !DILocation(line: 377, column: 39, scope: !887)
!891 = !DILocation(line: 377, column: 12, scope: !887)
!892 = !DILocation(line: 377, column: 10, scope: !887)
!893 = !DILocation(line: 378, column: 6, scope: !894)
!894 = distinct !DILexicalBlock(scope: !887, file: !3, line: 378, column: 6)
!895 = !DILocation(line: 378, column: 14, scope: !894)
!896 = !DILocation(line: 378, column: 6, scope: !887)
!897 = !DILocation(line: 379, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !894, file: !3, line: 378, column: 23)
!899 = !DILocation(line: 379, column: 6, scope: !900)
!900 = distinct !DILexicalBlock(scope: !898, file: !3, line: 379, column: 6)
!901 = !DILocation(line: 380, column: 6, scope: !898)
!902 = !DILocation(line: 382, column: 28, scope: !887)
!903 = !DILocation(line: 382, column: 2, scope: !887)
!904 = !DILocation(line: 383, column: 9, scope: !887)
!905 = !DILocation(line: 384, column: 9, scope: !887)
!906 = !DILocation(line: 384, column: 2, scope: !887)
!907 = !DILocation(line: 384, column: 18, scope: !887)
!908 = !DILocation(line: 384, column: 24, scope: !887)
!909 = !DILocation(line: 384, column: 29, scope: !887)
!910 = !DILocation(line: 385, column: 2, scope: !887)
!911 = !DILocation(line: 385, column: 10, scope: !887)
!912 = !DILocation(line: 385, column: 19, scope: !887)
!913 = !DILocation(line: 386, column: 6, scope: !914)
!914 = distinct !DILexicalBlock(scope: !887, file: !3, line: 386, column: 6)
!915 = !DILocation(line: 386, column: 41, scope: !914)
!916 = !DILocation(line: 386, column: 44, scope: !914)
!917 = !DILocation(line: 386, column: 53, scope: !914)
!918 = !DILocation(line: 386, column: 6, scope: !887)
!919 = !DILocation(line: 387, column: 26, scope: !920)
!920 = distinct !DILexicalBlock(scope: !914, file: !3, line: 386, column: 62)
!921 = !DILocation(line: 387, column: 36, scope: !920)
!922 = !DILocation(line: 387, column: 19, scope: !920)
!923 = !DILocation(line: 387, column: 6, scope: !920)
!924 = !DILocation(line: 387, column: 17, scope: !920)
!925 = !DILocation(line: 388, column: 10, scope: !926)
!926 = distinct !DILexicalBlock(scope: !920, file: !3, line: 388, column: 10)
!927 = !DILocation(line: 388, column: 21, scope: !926)
!928 = !DILocation(line: 388, column: 10, scope: !920)
!929 = !DILocation(line: 389, column: 3, scope: !930)
!930 = distinct !DILexicalBlock(scope: !926, file: !3, line: 388, column: 30)
!931 = !DILocation(line: 389, column: 3, scope: !932)
!932 = distinct !DILexicalBlock(scope: !930, file: !3, line: 389, column: 3)
!933 = !DILocation(line: 390, column: 3, scope: !930)
!934 = !DILocation(line: 392, column: 29, scope: !920)
!935 = !DILocation(line: 392, column: 6, scope: !920)
!936 = !DILocation(line: 393, column: 2, scope: !920)
!937 = !DILocation(line: 397, column: 9, scope: !938)
!938 = distinct !DILexicalBlock(scope: !803, file: !3, line: 397, column: 9)
!939 = !DILocation(line: 397, column: 9, scope: !803)
!940 = !DILocation(line: 398, column: 22, scope: !938)
!941 = !DILocation(line: 398, column: 2, scope: !938)
!942 = !DILocation(line: 401, column: 19, scope: !803)
!943 = !DILocation(line: 401, column: 17, scope: !803)
!944 = !DILocation(line: 402, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !803, file: !3, line: 402, column: 9)
!946 = !DILocation(line: 402, column: 21, scope: !945)
!947 = !DILocation(line: 402, column: 9, scope: !803)
!948 = !DILocation(line: 403, column: 2, scope: !945)
!949 = !DILocation(line: 406, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !803, file: !3, line: 406, column: 9)
!951 = !DILocation(line: 406, column: 24, scope: !950)
!952 = !DILocation(line: 406, column: 29, scope: !950)
!953 = !DILocation(line: 406, column: 32, scope: !950)
!954 = !DILocation(line: 406, column: 50, scope: !950)
!955 = !DILocation(line: 406, column: 47, scope: !950)
!956 = !DILocation(line: 406, column: 9, scope: !803)
!957 = !DILocation(line: 407, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !3, line: 407, column: 6)
!959 = distinct !DILexicalBlock(scope: !950, file: !3, line: 406, column: 65)
!960 = !DILocation(line: 407, column: 6, scope: !959)
!961 = !DILocation(line: 408, column: 6, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 407, column: 31)
!963 = !DILocation(line: 410, column: 6, scope: !962)
!964 = !DILocation(line: 410, column: 6, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !3, line: 410, column: 6)
!966 = !DILocation(line: 411, column: 6, scope: !962)
!967 = !DILocation(line: 413, column: 18, scope: !959)
!968 = !DILocation(line: 413, column: 16, scope: !959)
!969 = !DILocation(line: 414, column: 5, scope: !959)
!970 = !DILocation(line: 419, column: 5, scope: !803)
!971 = !DILocation(line: 420, column: 32, scope: !803)
!972 = !DILocation(line: 420, column: 47, scope: !803)
!973 = !DILocation(line: 420, column: 65, scope: !803)
!974 = !DILocation(line: 420, column: 17, scope: !803)
!975 = !DILocation(line: 420, column: 15, scope: !803)
!976 = !DILocation(line: 421, column: 9, scope: !977)
!977 = distinct !DILexicalBlock(scope: !803, file: !3, line: 421, column: 9)
!978 = !DILocation(line: 421, column: 9, scope: !803)
!979 = !DILocation(line: 423, column: 2, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 421, column: 43)
!981 = !DILocation(line: 427, column: 23, scope: !803)
!982 = !DILocation(line: 427, column: 5, scope: !803)
!983 = !DILocation(line: 429, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !803, file: !3, line: 429, column: 9)
!985 = !DILocation(line: 429, column: 19, scope: !984)
!986 = !DILocation(line: 429, column: 9, scope: !803)
!987 = !DILocation(line: 430, column: 26, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 430, column: 6)
!989 = distinct !DILexicalBlock(scope: !984, file: !3, line: 429, column: 28)
!990 = !DILocation(line: 430, column: 19, scope: !988)
!991 = !DILocation(line: 430, column: 17, scope: !988)
!992 = !DILocation(line: 430, column: 38, scope: !988)
!993 = !DILocation(line: 430, column: 6, scope: !989)
!994 = !DILocation(line: 431, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !988, file: !3, line: 430, column: 47)
!996 = !DILocation(line: 431, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !995, file: !3, line: 431, column: 6)
!998 = !DILocation(line: 432, column: 6, scope: !995)
!999 = !DILocation(line: 434, column: 5, scope: !989)
!1000 = !DILocation(line: 437, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !803, file: !3, line: 437, column: 9)
!1002 = !DILocation(line: 437, column: 27, scope: !1001)
!1003 = !DILocation(line: 437, column: 31, scope: !1001)
!1004 = !DILocation(line: 437, column: 9, scope: !803)
!1005 = !DILocation(line: 438, column: 51, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 437, column: 59)
!1007 = !DILocation(line: 438, column: 61, scope: !1006)
!1008 = !DILocation(line: 438, column: 2, scope: !1006)
!1009 = !DILocation(line: 439, column: 2, scope: !1006)
!1010 = !DILocation(line: 441, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !803, file: !3, line: 441, column: 9)
!1012 = !DILocation(line: 441, column: 18, scope: !1011)
!1013 = !DILocation(line: 441, column: 9, scope: !803)
!1014 = !DILocation(line: 442, column: 6, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 442, column: 6)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 441, column: 27)
!1017 = !DILocation(line: 442, column: 24, scope: !1015)
!1018 = !DILocation(line: 442, column: 28, scope: !1015)
!1019 = !DILocation(line: 442, column: 6, scope: !1016)
!1020 = !DILocation(line: 444, column: 3, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 442, column: 56)
!1022 = !DILocation(line: 444, column: 13, scope: !1021)
!1023 = !DILocation(line: 443, column: 6, scope: !1021)
!1024 = !DILocation(line: 445, column: 6, scope: !1021)
!1025 = !DILocation(line: 447, column: 5, scope: !1016)
!1026 = !DILocation(line: 452, column: 9, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !803, file: !3, line: 452, column: 9)
!1028 = !DILocation(line: 452, column: 9, scope: !803)
!1029 = !DILocalVariable(name: "pw", scope: !1030, file: !3, line: 453, type: !102)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 452, column: 29)
!1031 = !DILocation(line: 453, column: 17, scope: !1030)
!1032 = !DILocation(line: 455, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 455, column: 6)
!1034 = !DILocation(line: 455, column: 6, scope: !1033)
!1035 = !DILocation(line: 455, column: 26, scope: !1033)
!1036 = !DILocation(line: 455, column: 6, scope: !1030)
!1037 = !DILocalVariable(name: "errstr", scope: !1038, file: !3, line: 456, type: !375)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 455, column: 34)
!1039 = !DILocation(line: 456, column: 18, scope: !1038)
!1040 = !DILocalVariable(name: "uid", scope: !1038, file: !3, line: 457, type: !200)
!1041 = !DILocation(line: 457, column: 12, scope: !1038)
!1042 = !DILocation(line: 457, column: 18, scope: !1038)
!1043 = !DILocation(line: 458, column: 10, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 458, column: 10)
!1045 = !DILocation(line: 458, column: 17, scope: !1044)
!1046 = !DILocation(line: 458, column: 10, scope: !1038)
!1047 = !DILocation(line: 459, column: 22, scope: !1044)
!1048 = !DILocation(line: 459, column: 8, scope: !1044)
!1049 = !DILocation(line: 459, column: 6, scope: !1044)
!1050 = !DILocation(line: 459, column: 3, scope: !1044)
!1051 = !DILocation(line: 460, column: 2, scope: !1038)
!1052 = !DILocation(line: 461, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 461, column: 6)
!1054 = !DILocation(line: 461, column: 9, scope: !1053)
!1055 = !DILocation(line: 461, column: 6, scope: !1030)
!1056 = !DILocation(line: 462, column: 25, scope: !1053)
!1057 = !DILocation(line: 462, column: 11, scope: !1053)
!1058 = !DILocation(line: 462, column: 9, scope: !1053)
!1059 = !DILocation(line: 462, column: 6, scope: !1053)
!1060 = !DILocation(line: 463, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 463, column: 6)
!1062 = !DILocation(line: 463, column: 9, scope: !1061)
!1063 = !DILocation(line: 463, column: 6, scope: !1030)
!1064 = !DILocation(line: 464, column: 22, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 463, column: 18)
!1066 = !DILocation(line: 464, column: 26, scope: !1065)
!1067 = !DILocation(line: 464, column: 20, scope: !1065)
!1068 = !DILocation(line: 465, column: 22, scope: !1065)
!1069 = !DILocation(line: 465, column: 26, scope: !1065)
!1070 = !DILocation(line: 465, column: 20, scope: !1065)
!1071 = !DILocation(line: 466, column: 21, scope: !1065)
!1072 = !DILocation(line: 466, column: 6, scope: !1065)
!1073 = !DILocation(line: 467, column: 2, scope: !1065)
!1074 = !DILocation(line: 470, column: 45, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 467, column: 9)
!1076 = !DILocation(line: 469, column: 6, scope: !1075)
!1077 = !DILocation(line: 471, column: 20, scope: !1075)
!1078 = !DILocation(line: 472, column: 20, scope: !1075)
!1079 = !DILocation(line: 474, column: 5, scope: !1030)
!1080 = !DILocation(line: 477, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !803, file: !3, line: 477, column: 9)
!1082 = !DILocation(line: 477, column: 46, scope: !1081)
!1083 = !DILocation(line: 477, column: 50, scope: !1081)
!1084 = !DILocation(line: 477, column: 9, scope: !803)
!1085 = !DILocation(line: 479, column: 6, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 477, column: 68)
!1087 = !DILocation(line: 480, column: 2, scope: !1086)
!1088 = !DILocation(line: 484, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !803, file: !3, line: 484, column: 9)
!1090 = !DILocation(line: 484, column: 24, scope: !1089)
!1091 = !DILocation(line: 484, column: 28, scope: !1089)
!1092 = !DILocation(line: 484, column: 9, scope: !803)
!1093 = !DILocation(line: 485, column: 2, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 484, column: 43)
!1095 = !DILocation(line: 486, column: 2, scope: !1094)
!1096 = !DILocation(line: 486, column: 2, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 486, column: 2)
!1098 = !DILocation(line: 487, column: 2, scope: !1094)
!1099 = !DILocation(line: 491, column: 27, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !803, file: !3, line: 491, column: 9)
!1101 = !DILocation(line: 491, column: 10, scope: !1100)
!1102 = !DILocation(line: 491, column: 9, scope: !803)
!1103 = !DILocation(line: 494, column: 6, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 491, column: 38)
!1105 = !DILocation(line: 494, column: 16, scope: !1104)
!1106 = !DILocation(line: 494, column: 25, scope: !1104)
!1107 = !DILocation(line: 494, column: 35, scope: !1104)
!1108 = !DILocation(line: 492, column: 2, scope: !1104)
!1109 = !DILocation(line: 495, column: 2, scope: !1104)
!1110 = !DILocation(line: 502, column: 9, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !803, file: !3, line: 502, column: 9)
!1112 = !DILocation(line: 502, column: 37, scope: !1111)
!1113 = !DILocation(line: 503, column: 3, scope: !1111)
!1114 = !DILocation(line: 503, column: 39, scope: !1111)
!1115 = !DILocation(line: 503, column: 42, scope: !1111)
!1116 = !DILocation(line: 502, column: 9, scope: !803)
!1117 = !DILocation(line: 504, column: 16, scope: !1111)
!1118 = !DILocation(line: 504, column: 2, scope: !1111)
!1119 = !DILocation(line: 507, column: 10, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !803, file: !3, line: 507, column: 9)
!1121 = !DILocation(line: 507, column: 9, scope: !803)
!1122 = !DILocation(line: 508, column: 2, scope: !1120)
!1123 = !DILocation(line: 511, column: 24, scope: !803)
!1124 = !DILocation(line: 511, column: 35, scope: !803)
!1125 = !DILocation(line: 511, column: 13, scope: !803)
!1126 = !DILocation(line: 511, column: 5, scope: !803)
!1127 = !DILocation(line: 514, column: 2, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !803, file: !3, line: 511, column: 47)
!1129 = !DILocation(line: 517, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 517, column: 6)
!1131 = !DILocation(line: 517, column: 6, scope: !1128)
!1132 = !DILocation(line: 519, column: 22, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 519, column: 10)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 517, column: 43)
!1135 = !DILocation(line: 519, column: 33, scope: !1133)
!1136 = !DILocation(line: 519, column: 50, scope: !1133)
!1137 = !DILocation(line: 519, column: 11, scope: !1133)
!1138 = !DILocation(line: 519, column: 10, scope: !1134)
!1139 = !DILocation(line: 520, column: 3, scope: !1133)
!1140 = !DILocation(line: 521, column: 2, scope: !1134)
!1141 = !DILocation(line: 522, column: 2, scope: !1128)
!1142 = !DILocation(line: 525, column: 2, scope: !1128)
!1143 = !DILocation(line: 529, column: 13, scope: !803)
!1144 = !DILocation(line: 529, column: 5, scope: !803)
!1145 = !DILocation(line: 531, column: 2, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !803, file: !3, line: 529, column: 37)
!1147 = !DILocation(line: 533, column: 2, scope: !1146)
!1148 = !DILocation(line: 535, column: 2, scope: !1146)
!1149 = !DILocation(line: 539, column: 13, scope: !803)
!1150 = !DILocation(line: 539, column: 5, scope: !803)
!1151 = !DILocation(line: 541, column: 2, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !803, file: !3, line: 539, column: 34)
!1153 = !DILocation(line: 543, column: 2, scope: !1152)
!1154 = !DILocation(line: 545, column: 2, scope: !1152)
!1155 = !DILocation(line: 550, column: 9, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !803, file: !3, line: 550, column: 9)
!1157 = !DILocation(line: 550, column: 19, scope: !1156)
!1158 = !DILocation(line: 550, column: 44, scope: !1156)
!1159 = !DILocation(line: 550, column: 47, scope: !1156)
!1160 = !DILocation(line: 550, column: 57, scope: !1156)
!1161 = !DILocation(line: 550, column: 9, scope: !803)
!1162 = !DILocation(line: 551, column: 6, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 551, column: 6)
!1164 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 550, column: 66)
!1165 = !DILocation(line: 551, column: 15, scope: !1163)
!1166 = !DILocation(line: 551, column: 20, scope: !1163)
!1167 = !DILocation(line: 551, column: 30, scope: !1163)
!1168 = !DILocation(line: 551, column: 23, scope: !1163)
!1169 = !DILocation(line: 551, column: 49, scope: !1163)
!1170 = !DILocation(line: 551, column: 6, scope: !1164)
!1171 = !DILocalVariable(name: "pw", scope: !1172, file: !3, line: 552, type: !102)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 551, column: 55)
!1173 = !DILocation(line: 552, column: 21, scope: !1172)
!1174 = !DILocation(line: 554, column: 30, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 554, column: 10)
!1176 = !DILocation(line: 554, column: 16, scope: !1175)
!1177 = !DILocation(line: 554, column: 14, scope: !1175)
!1178 = !DILocation(line: 554, column: 42, scope: !1175)
!1179 = !DILocation(line: 554, column: 10, scope: !1172)
!1180 = !DILocation(line: 555, column: 21, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 555, column: 11)
!1182 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 554, column: 51)
!1183 = !DILocation(line: 555, column: 24, scope: !1181)
!1184 = !DILocation(line: 555, column: 11, scope: !1182)
!1185 = !DILocation(line: 556, column: 29, scope: !1181)
!1186 = !DILocation(line: 556, column: 4, scope: !1181)
!1187 = !DILocation(line: 557, column: 22, scope: !1182)
!1188 = !DILocation(line: 557, column: 20, scope: !1182)
!1189 = !DILocation(line: 558, column: 6, scope: !1182)
!1190 = !DILocation(line: 559, column: 2, scope: !1172)
!1191 = !DILocation(line: 560, column: 5, scope: !1164)
!1192 = !DILocation(line: 563, column: 10, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !803, file: !3, line: 563, column: 9)
!1194 = !DILocation(line: 563, column: 9, scope: !803)
!1195 = !DILocation(line: 565, column: 19, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 565, column: 6)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 563, column: 46)
!1198 = !DILocation(line: 565, column: 30, scope: !1196)
!1199 = !DILocation(line: 565, column: 7, scope: !1196)
!1200 = !DILocation(line: 565, column: 6, scope: !1197)
!1201 = !DILocation(line: 566, column: 6, scope: !1196)
!1202 = !DILocation(line: 567, column: 2, scope: !1197)
!1203 = !DILocation(line: 571, column: 9, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !803, file: !3, line: 571, column: 9)
!1205 = !DILocation(line: 571, column: 37, scope: !1204)
!1206 = !DILocation(line: 571, column: 9, scope: !803)
!1207 = !DILocation(line: 572, column: 2, scope: !1204)
!1208 = !DILocation(line: 575, column: 9, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !803, file: !3, line: 575, column: 9)
!1210 = !DILocation(line: 575, column: 21, scope: !1209)
!1211 = !DILocation(line: 575, column: 9, scope: !803)
!1212 = !DILocation(line: 576, column: 16, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 575, column: 39)
!1214 = !DILocation(line: 576, column: 2, scope: !1213)
!1215 = !DILocation(line: 577, column: 2, scope: !1213)
!1216 = !DILocation(line: 577, column: 2, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 577, column: 2)
!1218 = !DILocation(line: 578, column: 2, scope: !1213)
!1219 = !DILocation(line: 579, column: 16, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 579, column: 16)
!1221 = !DILocation(line: 579, column: 28, scope: !1220)
!1222 = !DILocation(line: 579, column: 16, scope: !1209)
!1223 = !DILocation(line: 580, column: 6, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 580, column: 6)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 579, column: 42)
!1226 = !DILocation(line: 580, column: 6, scope: !1225)
!1227 = !DILocation(line: 581, column: 20, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 580, column: 36)
!1229 = !DILocation(line: 582, column: 3, scope: !1228)
!1230 = !DILocation(line: 581, column: 6, scope: !1228)
!1231 = !DILocation(line: 583, column: 6, scope: !1228)
!1232 = !DILocation(line: 583, column: 6, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 583, column: 6)
!1234 = !DILocation(line: 584, column: 2, scope: !1228)
!1235 = !DILocation(line: 585, column: 20, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 584, column: 9)
!1237 = !DILocation(line: 586, column: 3, scope: !1236)
!1238 = !DILocation(line: 585, column: 6, scope: !1236)
!1239 = !DILocation(line: 587, column: 6, scope: !1236)
!1240 = !DILocation(line: 587, column: 6, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 587, column: 6)
!1242 = !DILocation(line: 589, column: 2, scope: !1225)
!1243 = !DILocation(line: 593, column: 10, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !803, file: !3, line: 593, column: 9)
!1245 = !DILocation(line: 593, column: 36, scope: !1244)
!1246 = !DILocation(line: 593, column: 39, scope: !1244)
!1247 = !DILocation(line: 593, column: 52, scope: !1244)
!1248 = !DILocation(line: 593, column: 9, scope: !803)
!1249 = !DILocation(line: 594, column: 2, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 593, column: 57)
!1251 = !DILocation(line: 596, column: 2, scope: !1250)
!1252 = !DILocation(line: 596, column: 2, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 596, column: 2)
!1254 = !DILocation(line: 598, column: 2, scope: !1250)
!1255 = !DILocation(line: 602, column: 9, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !803, file: !3, line: 602, column: 9)
!1257 = !DILocation(line: 602, column: 36, scope: !1256)
!1258 = !DILocation(line: 602, column: 40, scope: !1256)
!1259 = !DILocation(line: 602, column: 9, scope: !803)
!1260 = !DILocation(line: 603, column: 6, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 603, column: 6)
!1262 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 602, column: 52)
!1263 = !DILocation(line: 603, column: 6, scope: !1262)
!1264 = !DILocation(line: 604, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 603, column: 43)
!1266 = !DILocation(line: 606, column: 6, scope: !1265)
!1267 = !DILocation(line: 606, column: 6, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 606, column: 6)
!1269 = !DILocation(line: 608, column: 6, scope: !1265)
!1270 = !DILocation(line: 610, column: 39, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 610, column: 10)
!1272 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 609, column: 9)
!1273 = !DILocation(line: 610, column: 11, scope: !1271)
!1274 = !DILocation(line: 610, column: 10, scope: !1272)
!1275 = !DILocation(line: 611, column: 3, scope: !1271)
!1276 = !DILocation(line: 613, column: 5, scope: !1262)
!1277 = !DILocation(line: 615, column: 9, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !803, file: !3, line: 615, column: 9)
!1279 = !DILocation(line: 615, column: 50, scope: !1278)
!1280 = !DILocation(line: 615, column: 54, scope: !1278)
!1281 = !DILocation(line: 615, column: 9, scope: !803)
!1282 = !DILocation(line: 616, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 616, column: 6)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 615, column: 69)
!1285 = !DILocation(line: 616, column: 21, scope: !1283)
!1286 = !DILocation(line: 616, column: 24, scope: !1283)
!1287 = !DILocation(line: 616, column: 40, scope: !1283)
!1288 = !DILocation(line: 616, column: 43, scope: !1283)
!1289 = !DILocation(line: 616, column: 58, scope: !1283)
!1290 = !DILocation(line: 616, column: 61, scope: !1283)
!1291 = !DILocation(line: 616, column: 6, scope: !1284)
!1292 = !DILocation(line: 617, column: 24, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 617, column: 10)
!1294 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 616, column: 76)
!1295 = !DILocation(line: 617, column: 22, scope: !1293)
!1296 = !DILocation(line: 617, column: 45, scope: !1293)
!1297 = !DILocation(line: 617, column: 10, scope: !1294)
!1298 = !DILocation(line: 618, column: 8, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 618, column: 7)
!1300 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 617, column: 54)
!1301 = !DILocation(line: 618, column: 7, scope: !1300)
!1302 = !DILocation(line: 619, column: 7, scope: !1299)
!1303 = !DILocation(line: 621, column: 17, scope: !1300)
!1304 = !DILocation(line: 622, column: 18, scope: !1300)
!1305 = !DILocation(line: 623, column: 6, scope: !1300)
!1306 = !DILocation(line: 624, column: 2, scope: !1294)
!1307 = !DILocation(line: 625, column: 5, scope: !1284)
!1308 = !DILocation(line: 627, column: 13, scope: !803)
!1309 = !DILocation(line: 627, column: 23, scope: !803)
!1310 = !DILocation(line: 627, column: 5, scope: !803)
!1311 = !DILocation(line: 629, column: 25, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !803, file: !3, line: 627, column: 36)
!1313 = !DILocation(line: 629, column: 30, scope: !1312)
!1314 = !DILocation(line: 629, column: 40, scope: !1312)
!1315 = !DILocation(line: 629, column: 60, scope: !1312)
!1316 = !DILocation(line: 629, column: 12, scope: !1312)
!1317 = !DILocation(line: 629, column: 10, scope: !1312)
!1318 = !DILocation(line: 630, column: 6, scope: !1312)
!1319 = !DILocation(line: 632, column: 26, scope: !1312)
!1320 = !DILocation(line: 632, column: 31, scope: !1312)
!1321 = !DILocation(line: 632, column: 41, scope: !1312)
!1322 = !DILocation(line: 632, column: 61, scope: !1312)
!1323 = !DILocation(line: 632, column: 65, scope: !1312)
!1324 = !DILocation(line: 632, column: 12, scope: !1312)
!1325 = !DILocation(line: 632, column: 10, scope: !1312)
!1326 = !DILocation(line: 633, column: 6, scope: !1312)
!1327 = !DILocation(line: 638, column: 10, scope: !1312)
!1328 = !DILocation(line: 639, column: 6, scope: !1312)
!1329 = !DILocation(line: 642, column: 6, scope: !1312)
!1330 = !DILocation(line: 642, column: 6, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 642, column: 6)
!1332 = !DILocation(line: 643, column: 6, scope: !1312)
!1333 = !DILocation(line: 647, column: 5, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !803, file: !3, line: 647, column: 5)
!1335 = !DILocation(line: 647, column: 5, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 647, column: 5)
!1337 = !DILocation(line: 648, column: 2, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 647, column: 38)
!1339 = !DILocation(line: 648, column: 7, scope: !1338)
!1340 = !DILocation(line: 648, column: 13, scope: !1338)
!1341 = !DILocation(line: 649, column: 5, scope: !1338)
!1342 = distinct !{!1342, !1333, !1343}
!1343 = !DILocation(line: 649, column: 5, scope: !1334)
!1344 = !DILocation(line: 650, column: 9, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !803, file: !3, line: 650, column: 9)
!1346 = !DILocation(line: 650, column: 9, scope: !803)
!1347 = !DILocation(line: 651, column: 2, scope: !1345)
!1348 = !DILocation(line: 652, column: 5, scope: !803)
!1349 = !DILocation(line: 654, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !803, file: !3, line: 654, column: 9)
!1351 = !DILocation(line: 654, column: 9, scope: !803)
!1352 = !DILocation(line: 656, column: 2, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 654, column: 65)
!1354 = !DILocation(line: 664, column: 9, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !803, file: !3, line: 664, column: 9)
!1356 = !DILocation(line: 664, column: 19, scope: !1355)
!1357 = !DILocation(line: 664, column: 9, scope: !803)
!1358 = !DILocation(line: 665, column: 15, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 664, column: 35)
!1360 = !DILocation(line: 665, column: 13, scope: !1359)
!1361 = !DILocation(line: 666, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 666, column: 6)
!1363 = !DILocation(line: 666, column: 6, scope: !1359)
!1364 = !DILocation(line: 667, column: 20, scope: !1362)
!1365 = !DILocation(line: 667, column: 17, scope: !1362)
!1366 = !DILocation(line: 667, column: 6, scope: !1362)
!1367 = !DILocation(line: 668, column: 5, scope: !1359)
!1368 = !DILocation(line: 670, column: 9, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !803, file: !3, line: 670, column: 9)
!1370 = !DILocation(line: 670, column: 9, scope: !803)
!1371 = !DILocalVariable(name: "p", scope: !1372, file: !3, line: 671, type: !10)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 670, column: 45)
!1373 = !DILocation(line: 671, column: 8, scope: !1372)
!1374 = !DILocation(line: 674, column: 19, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 674, column: 6)
!1376 = !DILocation(line: 674, column: 11, scope: !1375)
!1377 = !DILocation(line: 674, column: 9, scope: !1375)
!1378 = !DILocation(line: 674, column: 37, scope: !1375)
!1379 = !DILocation(line: 674, column: 6, scope: !1372)
!1380 = !DILocation(line: 675, column: 10, scope: !1375)
!1381 = !DILocation(line: 675, column: 8, scope: !1375)
!1382 = !DILocation(line: 675, column: 6, scope: !1375)
!1383 = !DILocation(line: 676, column: 3, scope: !1372)
!1384 = !DILocation(line: 676, column: 5, scope: !1372)
!1385 = !DILocation(line: 677, column: 15, scope: !1372)
!1386 = !DILocation(line: 677, column: 2, scope: !1372)
!1387 = !DILocation(line: 677, column: 13, scope: !1372)
!1388 = !DILocation(line: 685, column: 6, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 685, column: 6)
!1390 = !DILocation(line: 685, column: 14, scope: !1389)
!1391 = !DILocation(line: 685, column: 18, scope: !1389)
!1392 = !DILocation(line: 685, column: 28, scope: !1389)
!1393 = !DILocation(line: 685, column: 21, scope: !1389)
!1394 = !DILocation(line: 685, column: 49, scope: !1389)
!1395 = !DILocation(line: 685, column: 54, scope: !1389)
!1396 = !DILocation(line: 686, column: 13, scope: !1389)
!1397 = !DILocation(line: 686, column: 6, scope: !1389)
!1398 = !DILocation(line: 686, column: 31, scope: !1389)
!1399 = !DILocation(line: 685, column: 6, scope: !1372)
!1400 = !DILocation(line: 688, column: 13, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 686, column: 37)
!1402 = !DILocation(line: 689, column: 13, scope: !1401)
!1403 = !DILocation(line: 690, column: 19, scope: !1401)
!1404 = !DILocation(line: 690, column: 6, scope: !1401)
!1405 = !DILocation(line: 690, column: 17, scope: !1401)
!1406 = !DILocation(line: 691, column: 6, scope: !1401)
!1407 = !DILocation(line: 691, column: 17, scope: !1401)
!1408 = !DILocation(line: 692, column: 2, scope: !1401)
!1409 = !DILocation(line: 696, column: 7, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 696, column: 6)
!1411 = !DILocation(line: 696, column: 6, scope: !1372)
!1412 = !DILocation(line: 697, column: 6, scope: !1410)
!1413 = !DILocation(line: 697, column: 6, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 697, column: 6)
!1415 = !DILocation(line: 709, column: 5, scope: !1372)
!1416 = !DILocation(line: 712, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !803, file: !3, line: 712, column: 9)
!1418 = !DILocation(line: 712, column: 9, scope: !803)
!1419 = !DILocation(line: 713, column: 21, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 713, column: 6)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 712, column: 34)
!1422 = !DILocation(line: 713, column: 7, scope: !1420)
!1423 = !DILocation(line: 713, column: 6, scope: !1421)
!1424 = !DILocation(line: 714, column: 6, scope: !1420)
!1425 = !DILocation(line: 714, column: 6, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 714, column: 6)
!1427 = !DILocation(line: 715, column: 5, scope: !1421)
!1428 = !DILocation(line: 716, column: 9, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !803, file: !3, line: 716, column: 9)
!1430 = !DILocation(line: 716, column: 9, scope: !803)
!1431 = !DILocation(line: 717, column: 21, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 717, column: 6)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 716, column: 23)
!1434 = !DILocation(line: 717, column: 7, scope: !1432)
!1435 = !DILocation(line: 717, column: 6, scope: !1433)
!1436 = !DILocation(line: 718, column: 6, scope: !1432)
!1437 = !DILocation(line: 718, column: 6, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 718, column: 6)
!1439 = !DILocation(line: 719, column: 5, scope: !1433)
!1440 = !DILocation(line: 722, column: 36, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !803, file: !3, line: 722, column: 9)
!1442 = !DILocation(line: 722, column: 10, scope: !1441)
!1443 = !DILocation(line: 722, column: 9, scope: !803)
!1444 = !DILocation(line: 723, column: 2, scope: !1441)
!1445 = !DILocation(line: 726, column: 9, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !803, file: !3, line: 726, column: 9)
!1447 = !DILocation(line: 726, column: 9, scope: !803)
!1448 = !DILocalVariable(name: "edit_argv", scope: !1449, file: !3, line: 727, type: !125)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 726, column: 38)
!1450 = !DILocation(line: 727, column: 9, scope: !1449)
!1451 = !DILocalVariable(name: "edit_argc", scope: !1449, file: !3, line: 728, type: !6)
!1452 = !DILocation(line: 728, column: 6, scope: !1449)
!1453 = !DILocalVariable(name: "env_editor", scope: !1449, file: !3, line: 729, type: !375)
!1454 = !DILocation(line: 729, column: 14, scope: !1449)
!1455 = !DILocation(line: 731, column: 7, scope: !1449)
!1456 = !DILocation(line: 731, column: 2, scope: !1449)
!1457 = !DILocation(line: 732, column: 26, scope: !1449)
!1458 = !DILocation(line: 732, column: 34, scope: !1449)
!1459 = !DILocation(line: 732, column: 39, scope: !1449)
!1460 = !DILocation(line: 732, column: 47, scope: !1449)
!1461 = !DILocation(line: 732, column: 14, scope: !1449)
!1462 = !DILocation(line: 732, column: 12, scope: !1449)
!1463 = !DILocation(line: 734, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 734, column: 6)
!1465 = !DILocation(line: 734, column: 16, scope: !1464)
!1466 = !DILocation(line: 734, column: 6, scope: !1449)
!1467 = !DILocation(line: 735, column: 10, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 735, column: 10)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 734, column: 25)
!1470 = !DILocation(line: 735, column: 16, scope: !1468)
!1471 = !DILocation(line: 735, column: 10, scope: !1469)
!1472 = !DILocation(line: 736, column: 3, scope: !1468)
!1473 = !DILocation(line: 737, column: 20, scope: !1469)
!1474 = !DILocation(line: 738, column: 3, scope: !1469)
!1475 = !DILocation(line: 738, column: 16, scope: !1469)
!1476 = !DILocation(line: 738, column: 29, scope: !1469)
!1477 = !DILocation(line: 737, column: 6, scope: !1469)
!1478 = !DILocation(line: 739, column: 6, scope: !1469)
!1479 = !DILocation(line: 739, column: 6, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 739, column: 6)
!1481 = !DILocation(line: 741, column: 6, scope: !1469)
!1482 = !DILocation(line: 743, column: 28, scope: !1449)
!1483 = !DILocation(line: 743, column: 2, scope: !1449)
!1484 = !DILocation(line: 744, column: 12, scope: !1449)
!1485 = !DILocation(line: 744, column: 10, scope: !1449)
!1486 = !DILocation(line: 745, column: 12, scope: !1449)
!1487 = !DILocation(line: 745, column: 10, scope: !1449)
!1488 = !DILocation(line: 748, column: 2, scope: !1449)
!1489 = !DILocation(line: 749, column: 5, scope: !1449)
!1490 = !DILocation(line: 751, column: 5, scope: !803)
!1491 = !DILabel(scope: !803, name: "bad", file: !3, line: 753)
!1492 = !DILocation(line: 753, column: 1, scope: !803)
!1493 = !DILocation(line: 754, column: 9, scope: !803)
!1494 = !DILocation(line: 754, column: 5, scope: !803)
!1495 = !DILabel(scope: !803, name: "done", file: !3, line: 756)
!1496 = !DILocation(line: 756, column: 1, scope: !803)
!1497 = !DILocation(line: 757, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !803, file: !3, line: 757, column: 9)
!1499 = !DILocation(line: 757, column: 13, scope: !1498)
!1500 = !DILocation(line: 757, column: 9, scope: !803)
!1501 = !DILocation(line: 759, column: 8, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 757, column: 20)
!1503 = !DILocation(line: 760, column: 5, scope: !1502)
!1504 = !DILocation(line: 762, column: 35, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 762, column: 6)
!1506 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 760, column: 12)
!1507 = !DILocation(line: 762, column: 40, scope: !1505)
!1508 = !DILocation(line: 762, column: 49, scope: !1505)
!1509 = !DILocation(line: 762, column: 60, scope: !1505)
!1510 = !DILocation(line: 763, column: 3, scope: !1505)
!1511 = !DILocation(line: 763, column: 15, scope: !1505)
!1512 = !DILocation(line: 762, column: 7, scope: !1505)
!1513 = !DILocation(line: 762, column: 6, scope: !1506)
!1514 = !DILocation(line: 764, column: 10, scope: !1505)
!1515 = !DILocation(line: 764, column: 6, scope: !1505)
!1516 = !DILocation(line: 767, column: 10, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !803, file: !3, line: 767, column: 9)
!1518 = !DILocation(line: 767, column: 9, scope: !803)
!1519 = !DILocation(line: 768, column: 6, scope: !1517)
!1520 = !DILocation(line: 768, column: 2, scope: !1517)
!1521 = !DILocation(line: 770, column: 5, scope: !803)
!1522 = !DILocation(line: 773, column: 5, scope: !803)
!1523 = !DILocation(line: 774, column: 5, scope: !803)
!1524 = !DILocation(line: 776, column: 5, scope: !803)
!1525 = !DILocation(line: 778, column: 5, scope: !803)
!1526 = !DILocalVariable(name: "sudo_debug_ret", scope: !1527, file: !3, line: 778, type: !6)
!1527 = distinct !DILexicalBlock(scope: !803, file: !3, line: 778, column: 5)
!1528 = !DILocation(line: 778, column: 5, scope: !1527)
!1529 = distinct !DISubprogram(name: "unlimit_nproc", scope: !3, file: !3, line: 120, type: !570, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!1530 = !DILocalVariable(name: "rl", scope: !1529, file: !3, line: 123, type: !398)
!1531 = !DILocation(line: 123, column: 19, scope: !1529)
!1532 = !DILocalVariable(name: "sudo_debug_subsys", scope: !1529, file: !3, line: 124, type: !425)
!1533 = !DILocation(line: 124, column: 5, scope: !1529)
!1534 = !DILocation(line: 126, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 126, column: 9)
!1536 = !DILocation(line: 126, column: 46, scope: !1535)
!1537 = !DILocation(line: 126, column: 9, scope: !1529)
!1538 = !DILocation(line: 127, column: 6, scope: !1535)
!1539 = !DILocation(line: 127, column: 6, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 127, column: 6)
!1541 = !DILocation(line: 128, column: 22, scope: !1529)
!1542 = !DILocation(line: 128, column: 31, scope: !1529)
!1543 = !DILocation(line: 128, column: 8, scope: !1529)
!1544 = !DILocation(line: 128, column: 17, scope: !1529)
!1545 = !DILocation(line: 129, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 129, column: 9)
!1547 = !DILocation(line: 129, column: 38, scope: !1546)
!1548 = !DILocation(line: 129, column: 9, scope: !1529)
!1549 = !DILocation(line: 130, column: 41, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 129, column: 44)
!1551 = !DILocation(line: 130, column: 19, scope: !1550)
!1552 = !DILocation(line: 130, column: 28, scope: !1550)
!1553 = !DILocation(line: 130, column: 5, scope: !1550)
!1554 = !DILocation(line: 130, column: 14, scope: !1550)
!1555 = !DILocation(line: 131, column: 6, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 131, column: 6)
!1557 = !DILocation(line: 131, column: 35, scope: !1556)
!1558 = !DILocation(line: 131, column: 6, scope: !1550)
!1559 = !DILocation(line: 132, column: 6, scope: !1556)
!1560 = !DILocation(line: 132, column: 6, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 132, column: 6)
!1562 = !DILocation(line: 133, column: 5, scope: !1550)
!1563 = !DILocation(line: 134, column: 5, scope: !1529)
!1564 = !DILocation(line: 134, column: 5, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 134, column: 5)
!1566 = !DILocation(line: 136, column: 1, scope: !1529)
!1567 = distinct !DISubprogram(name: "set_cmnd", scope: !3, file: !3, line: 918, type: !1568, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!6}
!1570 = !DILocalVariable(name: "nss", scope: !1567, file: !3, line: 920, type: !225)
!1571 = !DILocation(line: 920, column: 22, scope: !1567)
!1572 = !DILocalVariable(name: "ret", scope: !1567, file: !3, line: 921, type: !6)
!1573 = !DILocation(line: 921, column: 9, scope: !1567)
!1574 = !DILocalVariable(name: "sudo_debug_subsys", scope: !1567, file: !3, line: 922, type: !425)
!1575 = !DILocation(line: 922, column: 5, scope: !1567)
!1576 = !DILocation(line: 925, column: 17, scope: !1567)
!1577 = !DILocation(line: 925, column: 15, scope: !1567)
!1578 = !DILocation(line: 926, column: 9, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 926, column: 9)
!1580 = !DILocation(line: 926, column: 19, scope: !1579)
!1581 = !DILocation(line: 926, column: 9, scope: !1567)
!1582 = !DILocation(line: 927, column: 2, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 926, column: 28)
!1584 = !DILocation(line: 927, column: 2, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 927, column: 2)
!1586 = !DILocation(line: 928, column: 2, scope: !1583)
!1587 = !DILocalVariable(name: "sudo_debug_ret", scope: !1588, file: !3, line: 928, type: !6)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 928, column: 2)
!1589 = !DILocation(line: 928, column: 2, scope: !1588)
!1590 = !DILocation(line: 929, column: 5, scope: !1583)
!1591 = !DILocation(line: 932, column: 9, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 932, column: 9)
!1593 = !DILocation(line: 932, column: 19, scope: !1592)
!1594 = !DILocation(line: 932, column: 9, scope: !1567)
!1595 = !DILocation(line: 933, column: 14, scope: !1592)
!1596 = !DILocation(line: 933, column: 12, scope: !1592)
!1597 = !DILocation(line: 933, column: 2, scope: !1592)
!1598 = !DILocation(line: 935, column: 9, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 935, column: 9)
!1600 = !DILocation(line: 935, column: 19, scope: !1599)
!1601 = !DILocation(line: 935, column: 9, scope: !1567)
!1602 = !DILocation(line: 936, column: 6, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 936, column: 6)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 935, column: 58)
!1605 = !DILocation(line: 936, column: 6, scope: !1604)
!1606 = !DILocalVariable(name: "runchroot", scope: !1607, file: !3, line: 937, type: !375)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 936, column: 47)
!1608 = !DILocation(line: 937, column: 18, scope: !1607)
!1609 = !DILocation(line: 937, column: 30, scope: !1607)
!1610 = !DILocation(line: 938, column: 10, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 938, column: 10)
!1612 = !DILocation(line: 938, column: 20, scope: !1611)
!1613 = !DILocation(line: 938, column: 28, scope: !1611)
!1614 = !DILocation(line: 938, column: 31, scope: !1611)
!1615 = !DILocation(line: 938, column: 45, scope: !1611)
!1616 = !DILocation(line: 938, column: 53, scope: !1611)
!1617 = !DILocation(line: 939, column: 14, scope: !1611)
!1618 = !DILocation(line: 939, column: 7, scope: !1611)
!1619 = !DILocation(line: 939, column: 34, scope: !1611)
!1620 = !DILocation(line: 938, column: 10, scope: !1607)
!1621 = !DILocation(line: 940, column: 15, scope: !1611)
!1622 = !DILocation(line: 940, column: 13, scope: !1611)
!1623 = !DILocation(line: 940, column: 3, scope: !1611)
!1624 = !DILocation(line: 942, column: 26, scope: !1607)
!1625 = !DILocation(line: 942, column: 12, scope: !1607)
!1626 = !DILocation(line: 942, column: 10, scope: !1607)
!1627 = !DILocation(line: 943, column: 10, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 943, column: 10)
!1629 = !DILocation(line: 943, column: 14, scope: !1628)
!1630 = !DILocation(line: 943, column: 10, scope: !1607)
!1631 = !DILocation(line: 944, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 944, column: 7)
!1633 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 943, column: 34)
!1634 = !DILocation(line: 944, column: 13, scope: !1632)
!1635 = !DILocation(line: 944, column: 7, scope: !1633)
!1636 = !DILocation(line: 945, column: 21, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 944, column: 30)
!1638 = !DILocation(line: 945, column: 7, scope: !1637)
!1639 = !DILocation(line: 946, column: 3, scope: !1637)
!1640 = !DILocation(line: 947, column: 24, scope: !1633)
!1641 = !DILocation(line: 947, column: 3, scope: !1633)
!1642 = !DILocation(line: 948, column: 3, scope: !1633)
!1643 = !DILocalVariable(name: "sudo_debug_ret", scope: !1644, file: !3, line: 948, type: !6)
!1644 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 948, column: 3)
!1645 = !DILocation(line: 948, column: 3, scope: !1644)
!1646 = !DILocation(line: 949, column: 6, scope: !1633)
!1647 = !DILocation(line: 950, column: 2, scope: !1607)
!1648 = !DILocation(line: 953, column: 6, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 953, column: 6)
!1650 = !DILocation(line: 953, column: 14, scope: !1649)
!1651 = !DILocation(line: 953, column: 6, scope: !1604)
!1652 = !DILocalVariable(name: "to", scope: !1653, file: !3, line: 954, type: !10)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 953, column: 19)
!1654 = !DILocation(line: 954, column: 12, scope: !1653)
!1655 = !DILocalVariable(name: "from", scope: !1653, file: !3, line: 954, type: !10)
!1656 = !DILocation(line: 954, column: 17, scope: !1653)
!1657 = !DILocalVariable(name: "av", scope: !1653, file: !3, line: 954, type: !125)
!1658 = !DILocation(line: 954, column: 25, scope: !1653)
!1659 = !DILocalVariable(name: "size", scope: !1653, file: !3, line: 955, type: !83)
!1660 = !DILocation(line: 955, column: 13, scope: !1653)
!1661 = !DILocalVariable(name: "n", scope: !1653, file: !3, line: 955, type: !83)
!1662 = !DILocation(line: 955, column: 19, scope: !1653)
!1663 = !DILocation(line: 958, column: 16, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 958, column: 6)
!1665 = !DILocation(line: 958, column: 26, scope: !1664)
!1666 = !DILocation(line: 958, column: 34, scope: !1664)
!1667 = !DILocation(line: 958, column: 24, scope: !1664)
!1668 = !DILocation(line: 958, column: 11, scope: !1664)
!1669 = !DILocation(line: 958, column: 40, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 958, column: 6)
!1671 = !DILocation(line: 958, column: 39, scope: !1670)
!1672 = !DILocation(line: 958, column: 6, scope: !1664)
!1673 = !DILocation(line: 959, column: 19, scope: !1670)
!1674 = !DILocation(line: 959, column: 18, scope: !1670)
!1675 = !DILocation(line: 959, column: 11, scope: !1670)
!1676 = !DILocation(line: 959, column: 23, scope: !1670)
!1677 = !DILocation(line: 959, column: 8, scope: !1670)
!1678 = !DILocation(line: 959, column: 3, scope: !1670)
!1679 = !DILocation(line: 958, column: 46, scope: !1670)
!1680 = !DILocation(line: 958, column: 6, scope: !1670)
!1681 = distinct !{!1681, !1672, !1682}
!1682 = !DILocation(line: 959, column: 25, scope: !1664)
!1683 = !DILocation(line: 960, column: 10, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 960, column: 10)
!1685 = !DILocation(line: 960, column: 15, scope: !1684)
!1686 = !DILocation(line: 960, column: 20, scope: !1684)
!1687 = !DILocation(line: 960, column: 43, scope: !1684)
!1688 = !DILocation(line: 960, column: 36, scope: !1684)
!1689 = !DILocation(line: 960, column: 34, scope: !1684)
!1690 = !DILocation(line: 960, column: 50, scope: !1684)
!1691 = !DILocation(line: 960, column: 10, scope: !1653)
!1692 = !DILocation(line: 961, column: 3, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 960, column: 59)
!1694 = !DILocation(line: 961, column: 3, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 961, column: 3)
!1696 = !DILocation(line: 962, column: 3, scope: !1693)
!1697 = !DILocalVariable(name: "sudo_debug_ret", scope: !1698, file: !3, line: 962, type: !6)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 962, column: 3)
!1699 = !DILocation(line: 962, column: 3, scope: !1698)
!1700 = !DILocation(line: 963, column: 6, scope: !1693)
!1701 = !DILocation(line: 964, column: 10, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 964, column: 10)
!1703 = !DILocation(line: 964, column: 10, scope: !1653)
!1704 = !DILocation(line: 970, column: 13, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 970, column: 3)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 964, column: 57)
!1707 = !DILocation(line: 970, column: 11, scope: !1705)
!1708 = !DILocation(line: 970, column: 29, scope: !1705)
!1709 = !DILocation(line: 970, column: 37, scope: !1705)
!1710 = !DILocation(line: 970, column: 27, scope: !1705)
!1711 = !DILocation(line: 970, column: 8, scope: !1705)
!1712 = !DILocation(line: 970, column: 51, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 970, column: 3)
!1714 = !DILocation(line: 970, column: 50, scope: !1713)
!1715 = !DILocation(line: 970, column: 48, scope: !1713)
!1716 = !DILocation(line: 970, column: 3, scope: !1705)
!1717 = !DILocation(line: 971, column: 7, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 970, column: 62)
!1719 = !DILocation(line: 971, column: 15, scope: !1718)
!1720 = !DILocation(line: 971, column: 14, scope: !1718)
!1721 = !DILocation(line: 972, column: 8, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 972, column: 8)
!1723 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 971, column: 21)
!1724 = !DILocation(line: 972, column: 16, scope: !1722)
!1725 = !DILocation(line: 972, column: 24, scope: !1722)
!1726 = !DILocation(line: 972, column: 28, scope: !1722)
!1727 = !DILocation(line: 972, column: 8, scope: !1723)
!1728 = !DILocation(line: 973, column: 12, scope: !1722)
!1729 = !DILocation(line: 973, column: 8, scope: !1722)
!1730 = !DILocation(line: 974, column: 17, scope: !1723)
!1731 = !DILocation(line: 974, column: 12, scope: !1723)
!1732 = !DILocation(line: 974, column: 7, scope: !1723)
!1733 = !DILocation(line: 974, column: 10, scope: !1723)
!1734 = distinct !{!1734, !1717, !1735}
!1735 = !DILocation(line: 975, column: 7, scope: !1718)
!1736 = !DILocation(line: 976, column: 10, scope: !1718)
!1737 = !DILocation(line: 976, column: 13, scope: !1718)
!1738 = !DILocation(line: 977, column: 3, scope: !1718)
!1739 = !DILocation(line: 970, column: 58, scope: !1713)
!1740 = !DILocation(line: 970, column: 3, scope: !1713)
!1741 = distinct !{!1741, !1716, !1742}
!1742 = !DILocation(line: 977, column: 3, scope: !1705)
!1743 = !DILocation(line: 978, column: 4, scope: !1706)
!1744 = !DILocation(line: 978, column: 9, scope: !1706)
!1745 = !DILocation(line: 979, column: 6, scope: !1706)
!1746 = !DILocation(line: 980, column: 13, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 980, column: 3)
!1748 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 979, column: 13)
!1749 = !DILocation(line: 980, column: 11, scope: !1747)
!1750 = !DILocation(line: 980, column: 29, scope: !1747)
!1751 = !DILocation(line: 980, column: 37, scope: !1747)
!1752 = !DILocation(line: 980, column: 27, scope: !1747)
!1753 = !DILocation(line: 980, column: 8, scope: !1747)
!1754 = !DILocation(line: 980, column: 43, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 980, column: 3)
!1756 = !DILocation(line: 980, column: 42, scope: !1755)
!1757 = !DILocation(line: 980, column: 3, scope: !1747)
!1758 = !DILocation(line: 981, column: 11, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 980, column: 53)
!1760 = !DILocation(line: 981, column: 9, scope: !1759)
!1761 = !DILocation(line: 982, column: 11, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 982, column: 11)
!1763 = !DILocation(line: 982, column: 16, scope: !1762)
!1764 = !DILocation(line: 982, column: 24, scope: !1762)
!1765 = !DILocation(line: 982, column: 29, scope: !1762)
!1766 = !DILocation(line: 982, column: 27, scope: !1762)
!1767 = !DILocation(line: 982, column: 21, scope: !1762)
!1768 = !DILocation(line: 982, column: 13, scope: !1762)
!1769 = !DILocation(line: 982, column: 11, scope: !1759)
!1770 = !DILocation(line: 983, column: 4, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 982, column: 41)
!1772 = !DILocation(line: 983, column: 4, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 983, column: 4)
!1774 = !DILocation(line: 984, column: 4, scope: !1771)
!1775 = !DILocalVariable(name: "sudo_debug_ret", scope: !1776, file: !3, line: 984, type: !6)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 984, column: 4)
!1777 = !DILocation(line: 984, column: 4, scope: !1776)
!1778 = !DILocation(line: 985, column: 7, scope: !1771)
!1779 = !DILocation(line: 986, column: 13, scope: !1759)
!1780 = !DILocation(line: 986, column: 10, scope: !1759)
!1781 = !DILocation(line: 987, column: 10, scope: !1759)
!1782 = !DILocation(line: 987, column: 13, scope: !1759)
!1783 = !DILocation(line: 988, column: 3, scope: !1759)
!1784 = !DILocation(line: 980, column: 49, scope: !1755)
!1785 = !DILocation(line: 980, column: 3, scope: !1755)
!1786 = distinct !{!1786, !1757, !1787}
!1787 = !DILocation(line: 988, column: 3, scope: !1747)
!1788 = !DILocation(line: 989, column: 4, scope: !1748)
!1789 = !DILocation(line: 989, column: 9, scope: !1748)
!1790 = !DILocation(line: 991, column: 2, scope: !1653)
!1791 = !DILocation(line: 992, column: 5, scope: !1604)
!1792 = !DILocation(line: 994, column: 30, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 994, column: 9)
!1794 = !DILocation(line: 994, column: 22, scope: !1793)
!1795 = !DILocation(line: 994, column: 20, scope: !1793)
!1796 = !DILocation(line: 994, column: 47, scope: !1793)
!1797 = !DILocation(line: 994, column: 9, scope: !1567)
!1798 = !DILocation(line: 995, column: 11, scope: !1793)
!1799 = !DILocation(line: 995, column: 2, scope: !1793)
!1800 = !DILocation(line: 997, column: 14, scope: !1793)
!1801 = !DILocation(line: 997, column: 12, scope: !1793)
!1802 = !DILocation(line: 1000, column: 9, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 1000, column: 9)
!1804 = !DILocation(line: 1000, column: 36, scope: !1803)
!1805 = !DILocation(line: 1000, column: 46, scope: !1803)
!1806 = !DILocation(line: 1000, column: 39, scope: !1803)
!1807 = !DILocation(line: 1000, column: 69, scope: !1803)
!1808 = !DILocation(line: 1000, column: 9, scope: !1567)
!1809 = !DILocation(line: 1001, column: 2, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1000, column: 75)
!1811 = !DILocation(line: 1002, column: 2, scope: !1810)
!1812 = !DILocation(line: 1003, column: 2, scope: !1810)
!1813 = !DILocation(line: 1003, column: 2, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1003, column: 2)
!1815 = !DILocation(line: 1004, column: 24, scope: !1810)
!1816 = !DILocation(line: 1004, column: 12, scope: !1810)
!1817 = !DILocation(line: 1005, column: 5, scope: !1810)
!1818 = !DILocation(line: 1007, column: 5, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 1007, column: 5)
!1820 = !DILocation(line: 1007, column: 5, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1007, column: 5)
!1822 = !DILocation(line: 1008, column: 23, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 1008, column: 6)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 1007, column: 38)
!1825 = !DILocation(line: 1008, column: 28, scope: !1823)
!1826 = !DILocation(line: 1008, column: 7, scope: !1823)
!1827 = !DILocation(line: 1008, column: 6, scope: !1824)
!1828 = !DILocation(line: 1009, column: 6, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 1008, column: 67)
!1830 = !DILocation(line: 1011, column: 2, scope: !1829)
!1831 = !DILocation(line: 1012, column: 5, scope: !1824)
!1832 = distinct !{!1832, !1818, !1833}
!1833 = !DILocation(line: 1012, column: 5, scope: !1819)
!1834 = !DILocation(line: 1014, column: 5, scope: !1567)
!1835 = !DILocalVariable(name: "sudo_debug_ret", scope: !1836, file: !3, line: 1014, type: !6)
!1836 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 1014, column: 5)
!1837 = !DILocation(line: 1014, column: 5, scope: !1836)
!1838 = !DILocation(line: 1015, column: 1, scope: !1567)
!1839 = distinct !DISubprogram(name: "tty_present", scope: !3, file: !3, line: 1687, type: !1840, scopeLine: 1688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!213}
!1842 = !DILocalVariable(name: "sudo_debug_subsys", scope: !1839, file: !3, line: 1689, type: !425)
!1843 = !DILocation(line: 1689, column: 5, scope: !1839)
!1844 = !DILocation(line: 1691, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 1691, column: 9)
!1846 = !DILocation(line: 1691, column: 22, scope: !1845)
!1847 = !DILocation(line: 1691, column: 9, scope: !1839)
!1848 = !DILocalVariable(name: "fd", scope: !1849, file: !3, line: 1692, type: !6)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 1691, column: 31)
!1850 = !DILocation(line: 1692, column: 6, scope: !1849)
!1851 = !DILocation(line: 1692, column: 11, scope: !1849)
!1852 = !DILocation(line: 1693, column: 6, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 1693, column: 6)
!1854 = !DILocation(line: 1693, column: 9, scope: !1853)
!1855 = !DILocation(line: 1693, column: 6, scope: !1849)
!1856 = !DILocation(line: 1694, column: 6, scope: !1853)
!1857 = !DILocalVariable(name: "sudo_debug_ret", scope: !1858, file: !3, line: 1694, type: !213)
!1858 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 1694, column: 6)
!1859 = !DILocation(line: 1694, column: 6, scope: !1858)
!1860 = !DILocation(line: 1695, column: 8, scope: !1849)
!1861 = !DILocation(line: 1695, column: 2, scope: !1849)
!1862 = !DILocation(line: 1696, column: 5, scope: !1849)
!1863 = !DILocation(line: 1697, column: 5, scope: !1839)
!1864 = !DILocalVariable(name: "sudo_debug_ret", scope: !1865, file: !3, line: 1697, type: !213)
!1865 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 1697, column: 5)
!1866 = !DILocation(line: 1697, column: 5, scope: !1865)
!1867 = !DILocation(line: 1698, column: 1, scope: !1839)
!1868 = distinct !DISubprogram(name: "check_user_runchroot", scope: !3, file: !3, line: 275, type: !1568, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!1869 = !DILocalVariable(name: "sudo_debug_subsys", scope: !1868, file: !3, line: 277, type: !425)
!1870 = !DILocation(line: 277, column: 5, scope: !1868)
!1871 = !DILocation(line: 279, column: 9, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 279, column: 9)
!1873 = !DILocation(line: 279, column: 24, scope: !1872)
!1874 = !DILocation(line: 279, column: 9, scope: !1868)
!1875 = !DILocation(line: 280, column: 2, scope: !1872)
!1876 = !DILocalVariable(name: "sudo_debug_ret", scope: !1877, file: !3, line: 280, type: !213)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 280, column: 2)
!1878 = !DILocation(line: 280, column: 2, scope: !1877)
!1879 = !DILocation(line: 282, column: 5, scope: !1868)
!1880 = !DILocation(line: 287, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 287, column: 9)
!1882 = !DILocation(line: 287, column: 23, scope: !1881)
!1883 = !DILocation(line: 287, column: 31, scope: !1881)
!1884 = !DILocation(line: 287, column: 42, scope: !1881)
!1885 = !DILocation(line: 287, column: 35, scope: !1881)
!1886 = !DILocation(line: 287, column: 62, scope: !1881)
!1887 = !DILocation(line: 287, column: 67, scope: !1881)
!1888 = !DILocation(line: 288, column: 13, scope: !1881)
!1889 = !DILocation(line: 288, column: 28, scope: !1881)
!1890 = !DILocation(line: 288, column: 6, scope: !1881)
!1891 = !DILocation(line: 288, column: 44, scope: !1881)
!1892 = !DILocation(line: 287, column: 9, scope: !1868)
!1893 = !DILocation(line: 291, column: 6, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 288, column: 51)
!1895 = !DILocation(line: 289, column: 2, scope: !1894)
!1896 = !DILocation(line: 292, column: 2, scope: !1894)
!1897 = !DILocation(line: 292, column: 2, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 292, column: 2)
!1899 = !DILocation(line: 294, column: 2, scope: !1894)
!1900 = !DILocalVariable(name: "sudo_debug_ret", scope: !1901, file: !3, line: 294, type: !213)
!1901 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 294, column: 2)
!1902 = !DILocation(line: 294, column: 2, scope: !1901)
!1903 = !DILocation(line: 295, column: 5, scope: !1894)
!1904 = !DILocation(line: 296, column: 10, scope: !1868)
!1905 = !DILocation(line: 296, column: 5, scope: !1868)
!1906 = !DILocation(line: 297, column: 33, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 297, column: 9)
!1908 = !DILocation(line: 297, column: 26, scope: !1907)
!1909 = !DILocation(line: 297, column: 24, scope: !1907)
!1910 = !DILocation(line: 297, column: 50, scope: !1907)
!1911 = !DILocation(line: 297, column: 9, scope: !1868)
!1912 = !DILocation(line: 298, column: 2, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 297, column: 59)
!1914 = !DILocation(line: 298, column: 2, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 298, column: 2)
!1916 = !DILocation(line: 299, column: 2, scope: !1913)
!1917 = !DILocalVariable(name: "sudo_debug_ret", scope: !1918, file: !3, line: 299, type: !6)
!1918 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 299, column: 2)
!1919 = !DILocation(line: 299, column: 2, scope: !1918)
!1920 = !DILocation(line: 300, column: 5, scope: !1913)
!1921 = !DILocation(line: 301, column: 5, scope: !1868)
!1922 = !DILocalVariable(name: "sudo_debug_ret", scope: !1923, file: !3, line: 301, type: !213)
!1923 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 301, column: 5)
!1924 = !DILocation(line: 301, column: 5, scope: !1923)
!1925 = !DILocation(line: 302, column: 1, scope: !1868)
!1926 = distinct !DISubprogram(name: "check_user_runcwd", scope: !3, file: !3, line: 305, type: !1568, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!1927 = !DILocalVariable(name: "sudo_debug_subsys", scope: !1926, file: !3, line: 307, type: !425)
!1928 = !DILocation(line: 307, column: 5, scope: !1926)
!1929 = !DILocation(line: 309, column: 5, scope: !1926)
!1930 = !DILocation(line: 314, column: 16, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 314, column: 9)
!1932 = !DILocation(line: 314, column: 26, scope: !1931)
!1933 = !DILocation(line: 314, column: 9, scope: !1931)
!1934 = !DILocation(line: 314, column: 39, scope: !1931)
!1935 = !DILocation(line: 314, column: 9, scope: !1926)
!1936 = !DILocation(line: 315, column: 6, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 315, column: 6)
!1938 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 314, column: 45)
!1939 = !DILocation(line: 315, column: 17, scope: !1937)
!1940 = !DILocation(line: 315, column: 25, scope: !1937)
!1941 = !DILocation(line: 315, column: 35, scope: !1937)
!1942 = !DILocation(line: 315, column: 28, scope: !1937)
!1943 = !DILocation(line: 315, column: 52, scope: !1937)
!1944 = !DILocation(line: 315, column: 6, scope: !1938)
!1945 = !DILocation(line: 317, column: 53, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 315, column: 58)
!1947 = !DILocation(line: 316, column: 6, scope: !1946)
!1948 = !DILocation(line: 318, column: 6, scope: !1946)
!1949 = !DILocation(line: 318, column: 6, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 318, column: 6)
!1951 = !DILocation(line: 320, column: 6, scope: !1946)
!1952 = !DILocalVariable(name: "sudo_debug_ret", scope: !1953, file: !3, line: 320, type: !213)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 320, column: 6)
!1954 = !DILocation(line: 320, column: 6, scope: !1953)
!1955 = !DILocation(line: 321, column: 2, scope: !1946)
!1956 = !DILocation(line: 322, column: 7, scope: !1938)
!1957 = !DILocation(line: 322, column: 2, scope: !1938)
!1958 = !DILocation(line: 323, column: 27, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 323, column: 6)
!1960 = !DILocation(line: 323, column: 20, scope: !1959)
!1961 = !DILocation(line: 323, column: 18, scope: !1959)
!1962 = !DILocation(line: 323, column: 41, scope: !1959)
!1963 = !DILocation(line: 323, column: 6, scope: !1938)
!1964 = !DILocation(line: 324, column: 6, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 323, column: 50)
!1966 = !DILocation(line: 324, column: 6, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 324, column: 6)
!1968 = !DILocation(line: 325, column: 6, scope: !1965)
!1969 = !DILocalVariable(name: "sudo_debug_ret", scope: !1970, file: !3, line: 325, type: !6)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 325, column: 6)
!1971 = !DILocation(line: 325, column: 6, scope: !1970)
!1972 = !DILocation(line: 326, column: 2, scope: !1965)
!1973 = !DILocation(line: 327, column: 5, scope: !1938)
!1974 = !DILocation(line: 328, column: 5, scope: !1926)
!1975 = !DILocalVariable(name: "sudo_debug_ret", scope: !1976, file: !3, line: 328, type: !213)
!1976 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 328, column: 5)
!1977 = !DILocation(line: 328, column: 5, scope: !1976)
!1978 = !DILocation(line: 329, column: 1, scope: !1926)
!1979 = distinct !DISubprogram(name: "create_admin_success_flag", scope: !3, file: !3, line: 1679, type: !1568, scopeLine: 1680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!1980 = !DILocation(line: 1682, column: 5, scope: !1979)
!1981 = distinct !DISubprogram(name: "format_iolog_path", scope: !3, file: !3, line: 241, type: !1982, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!10}
!1984 = !DILocalVariable(name: "dir", scope: !1981, file: !3, line: 243, type: !1985)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32768, elements: !1986)
!1986 = !{!1987}
!1987 = !DISubrange(count: 4096)
!1988 = !DILocation(line: 243, column: 10, scope: !1981)
!1989 = !DILocalVariable(name: "file", scope: !1981, file: !3, line: 243, type: !1985)
!1990 = !DILocation(line: 243, column: 25, scope: !1981)
!1991 = !DILocalVariable(name: "iolog_path", scope: !1981, file: !3, line: 244, type: !10)
!1992 = !DILocation(line: 244, column: 11, scope: !1981)
!1993 = !DILocalVariable(name: "oldlocale", scope: !1981, file: !3, line: 245, type: !6)
!1994 = !DILocation(line: 245, column: 9, scope: !1981)
!1995 = !DILocalVariable(name: "ok", scope: !1981, file: !3, line: 246, type: !213)
!1996 = !DILocation(line: 246, column: 10, scope: !1981)
!1997 = !DILocalVariable(name: "sudo_debug_subsys", scope: !1981, file: !3, line: 247, type: !425)
!1998 = !DILocation(line: 247, column: 5, scope: !1981)
!1999 = !DILocation(line: 250, column: 5, scope: !1981)
!2000 = !DILocation(line: 251, column: 28, scope: !1981)
!2001 = !DILocation(line: 251, column: 43, scope: !1981)
!2002 = !DILocation(line: 252, column: 3, scope: !1981)
!2003 = !DILocation(line: 251, column: 10, scope: !1981)
!2004 = !DILocation(line: 251, column: 8, scope: !1981)
!2005 = !DILocation(line: 253, column: 9, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 253, column: 9)
!2007 = !DILocation(line: 253, column: 9, scope: !1981)
!2008 = !DILocation(line: 254, column: 25, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 253, column: 13)
!2010 = !DILocation(line: 254, column: 41, scope: !2009)
!2011 = !DILocation(line: 255, column: 7, scope: !2009)
!2012 = !DILocation(line: 255, column: 38, scope: !2009)
!2013 = !DILocation(line: 254, column: 7, scope: !2009)
!2014 = !DILocation(line: 254, column: 5, scope: !2009)
!2015 = !DILocation(line: 256, column: 5, scope: !2009)
!2016 = !DILocation(line: 257, column: 23, scope: !1981)
!2017 = !DILocation(line: 257, column: 5, scope: !1981)
!2018 = !DILocation(line: 258, column: 10, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 258, column: 9)
!2020 = !DILocation(line: 258, column: 9, scope: !1981)
!2021 = !DILocation(line: 259, column: 2, scope: !2019)
!2022 = !DILocation(line: 261, column: 51, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 261, column: 9)
!2024 = !DILocation(line: 261, column: 56, scope: !2023)
!2025 = !DILocation(line: 261, column: 9, scope: !2023)
!2026 = !DILocation(line: 261, column: 62, scope: !2023)
!2027 = !DILocation(line: 261, column: 9, scope: !1981)
!2028 = !DILocation(line: 262, column: 13, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 261, column: 69)
!2030 = !DILocation(line: 263, column: 2, scope: !2029)
!2031 = !DILocation(line: 267, column: 28, scope: !1981)
!2032 = !DILocation(line: 267, column: 39, scope: !1981)
!2033 = !DILocation(line: 267, column: 63, scope: !1981)
!2034 = !DILocation(line: 267, column: 26, scope: !1981)
!2035 = !DILocation(line: 268, column: 38, scope: !1981)
!2036 = !DILocation(line: 268, column: 49, scope: !1981)
!2037 = !DILocation(line: 268, column: 62, scope: !1981)
!2038 = !DILocation(line: 268, column: 55, scope: !1981)
!2039 = !DILocation(line: 268, column: 53, scope: !1981)
!2040 = !DILocation(line: 268, column: 26, scope: !1981)
!2041 = !DILocation(line: 268, column: 5, scope: !1981)
!2042 = !DILabel(scope: !1981, name: "done", file: !3, line: 270)
!2043 = !DILocation(line: 270, column: 1, scope: !1981)
!2044 = !DILocation(line: 271, column: 5, scope: !1981)
!2045 = !DILocalVariable(name: "sudo_debug_ret", scope: !2046, file: !3, line: 271, type: !10)
!2046 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 271, column: 5)
!2047 = !DILocation(line: 271, column: 5, scope: !2046)
!2048 = distinct !DISubprogram(name: "restore_nproc", scope: !3, file: !3, line: 142, type: !570, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2049 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2048, file: !3, line: 145, type: !425)
!2050 = !DILocation(line: 145, column: 5, scope: !2048)
!2051 = !DILocation(line: 147, column: 9, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 147, column: 9)
!2053 = !DILocation(line: 147, column: 46, scope: !2052)
!2054 = !DILocation(line: 147, column: 9, scope: !2048)
!2055 = !DILocation(line: 148, column: 2, scope: !2052)
!2056 = !DILocation(line: 148, column: 2, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 148, column: 2)
!2058 = !DILocation(line: 150, column: 5, scope: !2048)
!2059 = !DILocation(line: 150, column: 5, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 150, column: 5)
!2061 = !DILocation(line: 152, column: 1, scope: !2048)
!2062 = distinct !DISubprogram(name: "set_cmnd_path", scope: !3, file: !3, line: 886, type: !2063, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!6, !375}
!2065 = !DILocalVariable(name: "runchroot", arg: 1, scope: !2062, file: !3, line: 886, type: !375)
!2066 = !DILocation(line: 886, column: 27, scope: !2062)
!2067 = !DILocalVariable(name: "path", scope: !2062, file: !3, line: 888, type: !10)
!2068 = !DILocation(line: 888, column: 11, scope: !2062)
!2069 = !DILocation(line: 888, column: 18, scope: !2062)
!2070 = !DILocalVariable(name: "ret", scope: !2062, file: !3, line: 889, type: !6)
!2071 = !DILocation(line: 889, column: 9, scope: !2062)
!2072 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2062, file: !3, line: 890, type: !425)
!2073 = !DILocation(line: 890, column: 5, scope: !2062)
!2074 = !DILocation(line: 892, column: 9, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 892, column: 9)
!2076 = !DILocation(line: 892, column: 25, scope: !2075)
!2077 = !DILocation(line: 892, column: 29, scope: !2075)
!2078 = !DILocation(line: 892, column: 9, scope: !2062)
!2079 = !DILocation(line: 893, column: 9, scope: !2075)
!2080 = !DILocation(line: 893, column: 7, scope: !2075)
!2081 = !DILocation(line: 893, column: 2, scope: !2075)
!2082 = !DILocation(line: 894, column: 10, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 894, column: 9)
!2084 = !DILocation(line: 894, column: 9, scope: !2062)
!2085 = !DILocation(line: 895, column: 2, scope: !2083)
!2086 = !DILocalVariable(name: "sudo_debug_ret", scope: !2087, file: !3, line: 895, type: !6)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 895, column: 2)
!2088 = !DILocation(line: 895, column: 2, scope: !2087)
!2089 = !DILocation(line: 896, column: 21, scope: !2062)
!2090 = !DILocation(line: 896, column: 45, scope: !2062)
!2091 = !DILocation(line: 896, column: 56, scope: !2062)
!2092 = !DILocation(line: 897, column: 2, scope: !2062)
!2093 = !DILocation(line: 897, column: 13, scope: !2062)
!2094 = !DILocation(line: 896, column: 11, scope: !2062)
!2095 = !DILocation(line: 896, column: 9, scope: !2062)
!2096 = !DILocation(line: 898, column: 10, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 898, column: 9)
!2098 = !DILocation(line: 898, column: 9, scope: !2062)
!2099 = !DILocation(line: 899, column: 2, scope: !2097)
!2100 = !DILocalVariable(name: "sudo_debug_ret", scope: !2101, file: !3, line: 899, type: !6)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 899, column: 2)
!2102 = !DILocation(line: 899, column: 2, scope: !2101)
!2103 = !DILocation(line: 900, column: 9, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 900, column: 9)
!2105 = !DILocation(line: 900, column: 13, scope: !2104)
!2106 = !DILocation(line: 900, column: 9, scope: !2062)
!2107 = !DILocation(line: 902, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 902, column: 6)
!2109 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 900, column: 27)
!2110 = !DILocation(line: 902, column: 6, scope: !2109)
!2111 = !DILocation(line: 903, column: 6, scope: !2108)
!2112 = !DILocalVariable(name: "sudo_debug_ret", scope: !2113, file: !3, line: 903, type: !6)
!2113 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 903, column: 6)
!2114 = !DILocation(line: 903, column: 6, scope: !2113)
!2115 = !DILocation(line: 904, column: 18, scope: !2109)
!2116 = !DILocation(line: 904, column: 42, scope: !2109)
!2117 = !DILocation(line: 904, column: 53, scope: !2109)
!2118 = !DILocation(line: 905, column: 6, scope: !2109)
!2119 = !DILocation(line: 905, column: 17, scope: !2109)
!2120 = !DILocation(line: 904, column: 8, scope: !2109)
!2121 = !DILocation(line: 904, column: 6, scope: !2109)
!2122 = !DILocation(line: 906, column: 7, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 906, column: 6)
!2124 = !DILocation(line: 906, column: 6, scope: !2109)
!2125 = !DILocation(line: 907, column: 6, scope: !2123)
!2126 = !DILocalVariable(name: "sudo_debug_ret", scope: !2127, file: !3, line: 907, type: !6)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 907, column: 6)
!2128 = !DILocation(line: 907, column: 6, scope: !2127)
!2129 = !DILocation(line: 908, column: 5, scope: !2109)
!2130 = !DILocation(line: 910, column: 5, scope: !2062)
!2131 = !DILocalVariable(name: "sudo_debug_ret", scope: !2132, file: !3, line: 910, type: !6)
!2132 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 910, column: 5)
!2133 = !DILocation(line: 910, column: 5, scope: !2132)
!2134 = !DILocation(line: 911, column: 1, scope: !2062)
!2135 = distinct !DISubprogram(name: "open_sudoers", scope: !3, file: !3, line: 1022, type: !2136, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!2138, !375, !213, !2190}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2140, line: 7, baseType: !2141)
!2140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2142, line: 245, size: 1728, elements: !2143)
!2142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/libio.h", directory: "")
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2164, !2165, !2166, !2167, !2168, !2169, !2171, !2175, !2178, !2180, !2181, !2182, !2183, !2184, !2185, !2186}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2141, file: !2142, line: 246, baseType: !6, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2141, file: !2142, line: 251, baseType: !10, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2141, file: !2142, line: 252, baseType: !10, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2141, file: !2142, line: 253, baseType: !10, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2141, file: !2142, line: 254, baseType: !10, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2141, file: !2142, line: 255, baseType: !10, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2141, file: !2142, line: 256, baseType: !10, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2141, file: !2142, line: 257, baseType: !10, size: 64, offset: 448)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2141, file: !2142, line: 258, baseType: !10, size: 64, offset: 512)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2141, file: !2142, line: 260, baseType: !10, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2141, file: !2142, line: 261, baseType: !10, size: 64, offset: 640)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2141, file: !2142, line: 262, baseType: !10, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2141, file: !2142, line: 264, baseType: !2157, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2142, line: 160, size: 192, elements: !2159)
!2159 = !{!2160, !2161, !2163}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2158, file: !2142, line: 161, baseType: !2157, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2158, file: !2142, line: 162, baseType: !2162, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2158, file: !2142, line: 166, baseType: !6, size: 32, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2141, file: !2142, line: 266, baseType: !2162, size: 64, offset: 832)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2141, file: !2142, line: 268, baseType: !6, size: 32, offset: 896)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2141, file: !2142, line: 272, baseType: !6, size: 32, offset: 928)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2141, file: !2142, line: 274, baseType: !144, size: 64, offset: 960)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2141, file: !2142, line: 278, baseType: !86, size: 16, offset: 1024)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2141, file: !2142, line: 279, baseType: !2170, size: 8, offset: 1040)
!2170 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2141, file: !2142, line: 280, baseType: !2172, size: 8, offset: 1048)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !2173)
!2173 = !{!2174}
!2174 = !DISubrange(count: 1)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2141, file: !2142, line: 284, baseType: !2176, size: 64, offset: 1088)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2142, line: 154, baseType: null)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2141, file: !2142, line: 293, baseType: !2179, size: 64, offset: 1152)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !81, line: 141, baseType: !98)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2141, file: !2142, line: 301, baseType: !7, size: 64, offset: 1216)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2141, file: !2142, line: 302, baseType: !7, size: 64, offset: 1280)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2141, file: !2142, line: 303, baseType: !7, size: 64, offset: 1344)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2141, file: !2142, line: 304, baseType: !7, size: 64, offset: 1408)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2141, file: !2142, line: 306, baseType: !83, size: 64, offset: 1472)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2141, file: !2142, line: 307, baseType: !6, size: 32, offset: 1536)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2141, file: !2142, line: 309, baseType: !2187, size: 160, offset: 1568)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !2188)
!2188 = !{!2189}
!2189 = !DISubrange(count: 20)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!2191 = !DILocalVariable(name: "file", arg: 1, scope: !2135, file: !3, line: 1022, type: !375)
!2192 = !DILocation(line: 1022, column: 26, scope: !2135)
!2193 = !DILocalVariable(name: "doedit", arg: 2, scope: !2135, file: !3, line: 1022, type: !213)
!2194 = !DILocation(line: 1022, column: 37, scope: !2135)
!2195 = !DILocalVariable(name: "keepopen", arg: 3, scope: !2135, file: !3, line: 1022, type: !2190)
!2196 = !DILocation(line: 1022, column: 51, scope: !2135)
!2197 = !DILocalVariable(name: "sb", scope: !2135, file: !3, line: 1024, type: !128)
!2198 = !DILocation(line: 1024, column: 17, scope: !2135)
!2199 = !DILocalVariable(name: "fp", scope: !2135, file: !3, line: 1025, type: !2138)
!2200 = !DILocation(line: 1025, column: 11, scope: !2135)
!2201 = !DILocalVariable(name: "perm_root", scope: !2135, file: !3, line: 1026, type: !213)
!2202 = !DILocation(line: 1026, column: 10, scope: !2135)
!2203 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2135, file: !3, line: 1027, type: !425)
!2204 = !DILocation(line: 1027, column: 5, scope: !2135)
!2205 = !DILocation(line: 1029, column: 10, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 1029, column: 9)
!2207 = !DILocation(line: 1029, column: 9, scope: !2135)
!2208 = !DILocation(line: 1030, column: 2, scope: !2206)
!2209 = !DILocalVariable(name: "sudo_debug_ret", scope: !2210, file: !3, line: 1030, type: !7)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 1030, column: 2)
!2211 = !DILocation(line: 1030, column: 2, scope: !2210)
!2212 = !DILocation(line: 1029, column: 32, scope: !2206)
!2213 = !DILabel(scope: !2135, name: "again", file: !3, line: 1032)
!2214 = !DILocation(line: 1032, column: 1, scope: !2135)
!2215 = !DILocation(line: 1033, column: 13, scope: !2135)
!2216 = !DILocation(line: 1033, column: 5, scope: !2135)
!2217 = !DILocation(line: 1040, column: 10, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 1040, column: 10)
!2219 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 1033, column: 68)
!2220 = !DILocation(line: 1040, column: 22, scope: !2218)
!2221 = !DILocation(line: 1040, column: 34, scope: !2218)
!2222 = !DILocation(line: 1040, column: 37, scope: !2218)
!2223 = !DILocation(line: 1040, column: 10, scope: !2219)
!2224 = !DILocation(line: 1041, column: 8, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 1041, column: 7)
!2226 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1040, column: 67)
!2227 = !DILocation(line: 1041, column: 35, scope: !2225)
!2228 = !DILocation(line: 1041, column: 41, scope: !2225)
!2229 = !DILocation(line: 1041, column: 48, scope: !2225)
!2230 = !DILocation(line: 1041, column: 7, scope: !2226)
!2231 = !DILocation(line: 1042, column: 12, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 1042, column: 11)
!2233 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 1041, column: 64)
!2234 = !DILocation(line: 1042, column: 11, scope: !2233)
!2235 = !DILocation(line: 1043, column: 9, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 1043, column: 8)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 1042, column: 23)
!2238 = !DILocation(line: 1043, column: 25, scope: !2236)
!2239 = !DILocation(line: 1043, column: 29, scope: !2236)
!2240 = !DILocation(line: 1043, column: 8, scope: !2237)
!2241 = !DILocation(line: 1044, column: 8, scope: !2236)
!2242 = !DILocalVariable(name: "sudo_debug_ret", scope: !2243, file: !3, line: 1044, type: !7)
!2243 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 1044, column: 8)
!2244 = !DILocation(line: 1044, column: 8, scope: !2243)
!2245 = !DILocation(line: 1045, column: 7, scope: !2237)
!2246 = !DILocation(line: 1046, column: 3, scope: !2233)
!2247 = !DILocation(line: 1047, column: 6, scope: !2226)
!2248 = !DILocation(line: 1052, column: 22, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 1052, column: 10)
!2250 = !DILocation(line: 1052, column: 16, scope: !2249)
!2251 = !DILocation(line: 1052, column: 14, scope: !2249)
!2252 = !DILocation(line: 1052, column: 34, scope: !2249)
!2253 = !DILocation(line: 1052, column: 10, scope: !2219)
!2254 = !DILocation(line: 1053, column: 56, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1052, column: 43)
!2256 = !DILocation(line: 1053, column: 3, scope: !2255)
!2257 = !DILocation(line: 1054, column: 6, scope: !2255)
!2258 = !DILocation(line: 1055, column: 10, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 1055, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1054, column: 13)
!2261 = !DILocation(line: 1055, column: 18, scope: !2259)
!2262 = !DILocation(line: 1055, column: 23, scope: !2259)
!2263 = !DILocation(line: 1055, column: 32, scope: !2259)
!2264 = !DILocation(line: 1055, column: 26, scope: !2259)
!2265 = !DILocation(line: 1055, column: 36, scope: !2259)
!2266 = !DILocation(line: 1055, column: 7, scope: !2260)
!2267 = !DILocation(line: 1057, column: 29, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 1055, column: 44)
!2269 = !DILocation(line: 1056, column: 7, scope: !2268)
!2270 = !DILocation(line: 1058, column: 14, scope: !2268)
!2271 = !DILocation(line: 1058, column: 7, scope: !2268)
!2272 = !DILocation(line: 1059, column: 10, scope: !2268)
!2273 = !DILocation(line: 1060, column: 3, scope: !2268)
!2274 = !DILocation(line: 1062, column: 14, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 1060, column: 10)
!2276 = !DILocation(line: 1062, column: 7, scope: !2275)
!2277 = !DILocation(line: 1063, column: 27, scope: !2275)
!2278 = !DILocation(line: 1063, column: 20, scope: !2275)
!2279 = !DILocation(line: 1063, column: 14, scope: !2275)
!2280 = !DILocation(line: 1066, column: 6, scope: !2219)
!2281 = !DILocation(line: 1072, column: 10, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 1072, column: 10)
!2283 = !DILocation(line: 1072, column: 16, scope: !2282)
!2284 = !DILocation(line: 1072, column: 26, scope: !2282)
!2285 = !DILocation(line: 1072, column: 29, scope: !2282)
!2286 = !DILocation(line: 1072, column: 39, scope: !2282)
!2287 = !DILocation(line: 1072, column: 10, scope: !2219)
!2288 = !DILocalVariable(name: "serrno", scope: !2289, file: !3, line: 1073, type: !6)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1072, column: 52)
!2290 = !DILocation(line: 1073, column: 7, scope: !2289)
!2291 = !DILocation(line: 1073, column: 16, scope: !2289)
!2292 = !DILocation(line: 1074, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 1074, column: 7)
!2294 = !DILocation(line: 1074, column: 7, scope: !2289)
!2295 = !DILocation(line: 1075, column: 12, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 1075, column: 11)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 1074, column: 24)
!2298 = !DILocation(line: 1075, column: 11, scope: !2297)
!2299 = !DILocation(line: 1076, column: 4, scope: !2296)
!2300 = !DILocalVariable(name: "sudo_debug_ret", scope: !2301, file: !3, line: 1076, type: !7)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 1076, column: 4)
!2302 = !DILocation(line: 1076, column: 4, scope: !2301)
!2303 = !DILocation(line: 1077, column: 17, scope: !2297)
!2304 = !DILocation(line: 1078, column: 7, scope: !2297)
!2305 = !DILocation(line: 1080, column: 11, scope: !2289)
!2306 = !DILocation(line: 1080, column: 3, scope: !2289)
!2307 = !DILocation(line: 1080, column: 9, scope: !2289)
!2308 = !DILocation(line: 1081, column: 6, scope: !2289)
!2309 = !DILocation(line: 1082, column: 59, scope: !2219)
!2310 = !DILocation(line: 1082, column: 6, scope: !2219)
!2311 = !DILocation(line: 1083, column: 6, scope: !2219)
!2312 = !DILocation(line: 1086, column: 35, scope: !2219)
!2313 = !DILocation(line: 1085, column: 6, scope: !2219)
!2314 = !DILocation(line: 1087, column: 6, scope: !2219)
!2315 = !DILocation(line: 1090, column: 46, scope: !2219)
!2316 = !DILocation(line: 1091, column: 21, scope: !2219)
!2317 = !DILocation(line: 1091, column: 44, scope: !2219)
!2318 = !DILocation(line: 1089, column: 6, scope: !2219)
!2319 = !DILocation(line: 1092, column: 6, scope: !2219)
!2320 = !DILocation(line: 1094, column: 63, scope: !2219)
!2321 = !DILocation(line: 1094, column: 6, scope: !2219)
!2322 = !DILocation(line: 1095, column: 6, scope: !2219)
!2323 = !DILocation(line: 1098, column: 46, scope: !2219)
!2324 = !DILocation(line: 1099, column: 21, scope: !2219)
!2325 = !DILocation(line: 1099, column: 44, scope: !2219)
!2326 = !DILocation(line: 1097, column: 6, scope: !2219)
!2327 = !DILocation(line: 1100, column: 6, scope: !2219)
!2328 = !DILocation(line: 1103, column: 6, scope: !2219)
!2329 = !DILocation(line: 1106, column: 10, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 1106, column: 9)
!2331 = !DILocation(line: 1106, column: 9, scope: !2135)
!2332 = !DILocation(line: 1108, column: 6, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1108, column: 6)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 1106, column: 27)
!2335 = !DILocation(line: 1108, column: 9, scope: !2333)
!2336 = !DILocation(line: 1108, column: 6, scope: !2334)
!2337 = !DILocation(line: 1109, column: 13, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 1108, column: 18)
!2339 = !DILocation(line: 1109, column: 6, scope: !2338)
!2340 = !DILocation(line: 1110, column: 9, scope: !2338)
!2341 = !DILocation(line: 1111, column: 2, scope: !2338)
!2342 = !DILocation(line: 1112, column: 5, scope: !2334)
!2343 = !DILocation(line: 1114, column: 5, scope: !2135)
!2344 = !DILocalVariable(name: "sudo_debug_ret", scope: !2345, file: !3, line: 1114, type: !7)
!2345 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 1114, column: 5)
!2346 = !DILocation(line: 1114, column: 5, scope: !2345)
!2347 = !DILocation(line: 1115, column: 1, scope: !2135)
!2348 = distinct !DISubprogram(name: "set_callbacks", scope: !3, file: !3, line: 1569, type: !570, scopeLine: 1570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2349 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2348, file: !3, line: 1571, type: !425)
!2350 = !DILocation(line: 1571, column: 5, scope: !2348)
!2351 = !DILocation(line: 1574, column: 38, scope: !2348)
!2352 = !DILocation(line: 1577, column: 46, scope: !2348)
!2353 = !DILocation(line: 1580, column: 47, scope: !2348)
!2354 = !DILocation(line: 1583, column: 48, scope: !2348)
!2355 = !DILocation(line: 1586, column: 40, scope: !2348)
!2356 = !DILocation(line: 1589, column: 44, scope: !2348)
!2357 = !DILocation(line: 1592, column: 45, scope: !2348)
!2358 = !DILocation(line: 1595, column: 44, scope: !2348)
!2359 = !DILocation(line: 1598, column: 45, scope: !2348)
!2360 = !DILocation(line: 1601, column: 39, scope: !2348)
!2361 = !DILocation(line: 1604, column: 43, scope: !2348)
!2362 = !DILocation(line: 1607, column: 40, scope: !2348)
!2363 = !DILocation(line: 1608, column: 48, scope: !2348)
!2364 = !DILocation(line: 1609, column: 47, scope: !2348)
!2365 = !DILocation(line: 1610, column: 47, scope: !2348)
!2366 = !DILocation(line: 1611, column: 44, scope: !2348)
!2367 = !DILocation(line: 1612, column: 42, scope: !2348)
!2368 = !DILocation(line: 1613, column: 41, scope: !2348)
!2369 = !DILocation(line: 1614, column: 44, scope: !2348)
!2370 = !DILocation(line: 1615, column: 42, scope: !2348)
!2371 = !DILocation(line: 1616, column: 44, scope: !2348)
!2372 = !DILocation(line: 1617, column: 45, scope: !2348)
!2373 = !DILocation(line: 1618, column: 42, scope: !2348)
!2374 = !DILocation(line: 1619, column: 40, scope: !2348)
!2375 = !DILocation(line: 1620, column: 41, scope: !2348)
!2376 = !DILocation(line: 1622, column: 5, scope: !2348)
!2377 = !DILocation(line: 1622, column: 5, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 1622, column: 5)
!2379 = !DILocation(line: 1623, column: 1, scope: !2348)
!2380 = distinct !DISubprogram(name: "set_runasgr", scope: !3, file: !3, line: 1322, type: !2381, scopeLine: 1323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!213, !375, !213}
!2383 = !DILocalVariable(name: "group", arg: 1, scope: !2380, file: !3, line: 1322, type: !375)
!2384 = !DILocation(line: 1322, column: 25, scope: !2380)
!2385 = !DILocalVariable(name: "quiet", arg: 2, scope: !2380, file: !3, line: 1322, type: !213)
!2386 = !DILocation(line: 1322, column: 37, scope: !2380)
!2387 = !DILocalVariable(name: "gr", scope: !2380, file: !3, line: 1324, type: !117)
!2388 = !DILocation(line: 1324, column: 19, scope: !2380)
!2389 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2380, file: !3, line: 1325, type: !425)
!2390 = !DILocation(line: 1325, column: 5, scope: !2380)
!2391 = !DILocation(line: 1327, column: 23, scope: !2380)
!2392 = !DILocation(line: 1328, column: 10, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1328, column: 9)
!2394 = !DILocation(line: 1328, column: 9, scope: !2393)
!2395 = !DILocation(line: 1328, column: 16, scope: !2393)
!2396 = !DILocation(line: 1328, column: 9, scope: !2380)
!2397 = !DILocalVariable(name: "errstr", scope: !2398, file: !3, line: 1329, type: !375)
!2398 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1328, column: 24)
!2399 = !DILocation(line: 1329, column: 14, scope: !2398)
!2400 = !DILocalVariable(name: "gid", scope: !2398, file: !3, line: 1330, type: !183)
!2401 = !DILocation(line: 1330, column: 8, scope: !2398)
!2402 = !DILocation(line: 1330, column: 14, scope: !2398)
!2403 = !DILocation(line: 1331, column: 6, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 1331, column: 6)
!2405 = !DILocation(line: 1331, column: 13, scope: !2404)
!2406 = !DILocation(line: 1331, column: 6, scope: !2398)
!2407 = !DILocation(line: 1332, column: 30, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 1332, column: 10)
!2409 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 1331, column: 22)
!2410 = !DILocation(line: 1332, column: 16, scope: !2408)
!2411 = !DILocation(line: 1332, column: 14, scope: !2408)
!2412 = !DILocation(line: 1332, column: 36, scope: !2408)
!2413 = !DILocation(line: 1332, column: 10, scope: !2409)
!2414 = !DILocation(line: 1333, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1332, column: 45)
!2416 = !DILocation(line: 1334, column: 23, scope: !2415)
!2417 = !DILocation(line: 1334, column: 8, scope: !2415)
!2418 = !DILocation(line: 1334, column: 6, scope: !2415)
!2419 = !DILocation(line: 1335, column: 6, scope: !2415)
!2420 = !DILocation(line: 1336, column: 2, scope: !2409)
!2421 = !DILocation(line: 1337, column: 5, scope: !2398)
!2422 = !DILocation(line: 1338, column: 9, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1338, column: 9)
!2424 = !DILocation(line: 1338, column: 12, scope: !2423)
!2425 = !DILocation(line: 1338, column: 9, scope: !2380)
!2426 = !DILocation(line: 1339, column: 26, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1339, column: 6)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 1338, column: 21)
!2429 = !DILocation(line: 1339, column: 12, scope: !2427)
!2430 = !DILocation(line: 1339, column: 10, scope: !2427)
!2431 = !DILocation(line: 1339, column: 34, scope: !2427)
!2432 = !DILocation(line: 1339, column: 6, scope: !2428)
!2433 = !DILocation(line: 1340, column: 11, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 1340, column: 10)
!2435 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 1339, column: 43)
!2436 = !DILocation(line: 1340, column: 10, scope: !2435)
!2437 = !DILocation(line: 1341, column: 53, scope: !2434)
!2438 = !DILocation(line: 1341, column: 3, scope: !2434)
!2439 = !DILocation(line: 1342, column: 6, scope: !2435)
!2440 = !DILocalVariable(name: "sudo_debug_ret", scope: !2441, file: !3, line: 1342, type: !213)
!2441 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 1342, column: 6)
!2442 = !DILocation(line: 1342, column: 6, scope: !2441)
!2443 = !DILocation(line: 1343, column: 2, scope: !2435)
!2444 = !DILocation(line: 1344, column: 5, scope: !2428)
!2445 = !DILocation(line: 1345, column: 9, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1345, column: 9)
!2447 = !DILocation(line: 1345, column: 18, scope: !2446)
!2448 = !DILocation(line: 1345, column: 9, scope: !2380)
!2449 = !DILocation(line: 1346, column: 17, scope: !2446)
!2450 = !DILocation(line: 1346, column: 2, scope: !2446)
!2451 = !DILocation(line: 1347, column: 16, scope: !2380)
!2452 = !DILocation(line: 1347, column: 14, scope: !2380)
!2453 = !DILocation(line: 1348, column: 5, scope: !2380)
!2454 = !DILocalVariable(name: "sudo_debug_ret", scope: !2455, file: !3, line: 1348, type: !213)
!2455 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1348, column: 5)
!2456 = !DILocation(line: 1348, column: 5, scope: !2455)
!2457 = !DILocation(line: 1349, column: 1, scope: !2380)
!2458 = distinct !DISubprogram(name: "set_runaspw", scope: !3, file: !3, line: 1288, type: !2381, scopeLine: 1289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2459 = !DILocalVariable(name: "user", arg: 1, scope: !2458, file: !3, line: 1288, type: !375)
!2460 = !DILocation(line: 1288, column: 25, scope: !2458)
!2461 = !DILocalVariable(name: "quiet", arg: 2, scope: !2458, file: !3, line: 1288, type: !213)
!2462 = !DILocation(line: 1288, column: 36, scope: !2458)
!2463 = !DILocalVariable(name: "pw", scope: !2458, file: !3, line: 1290, type: !102)
!2464 = !DILocation(line: 1290, column: 20, scope: !2458)
!2465 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2458, file: !3, line: 1291, type: !425)
!2466 = !DILocation(line: 1291, column: 5, scope: !2458)
!2467 = !DILocation(line: 1293, column: 23, scope: !2458)
!2468 = !DILocation(line: 1294, column: 10, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 1294, column: 9)
!2470 = !DILocation(line: 1294, column: 9, scope: !2469)
!2471 = !DILocation(line: 1294, column: 15, scope: !2469)
!2472 = !DILocation(line: 1294, column: 9, scope: !2458)
!2473 = !DILocalVariable(name: "errstr", scope: !2474, file: !3, line: 1295, type: !375)
!2474 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 1294, column: 23)
!2475 = !DILocation(line: 1295, column: 14, scope: !2474)
!2476 = !DILocalVariable(name: "uid", scope: !2474, file: !3, line: 1296, type: !200)
!2477 = !DILocation(line: 1296, column: 8, scope: !2474)
!2478 = !DILocation(line: 1296, column: 14, scope: !2474)
!2479 = !DILocation(line: 1297, column: 6, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1297, column: 6)
!2481 = !DILocation(line: 1297, column: 13, scope: !2480)
!2482 = !DILocation(line: 1297, column: 6, scope: !2474)
!2483 = !DILocation(line: 1298, column: 30, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1298, column: 10)
!2485 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1297, column: 22)
!2486 = !DILocation(line: 1298, column: 16, scope: !2484)
!2487 = !DILocation(line: 1298, column: 14, scope: !2484)
!2488 = !DILocation(line: 1298, column: 36, scope: !2484)
!2489 = !DILocation(line: 1298, column: 10, scope: !2485)
!2490 = !DILocation(line: 1299, column: 21, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1298, column: 45)
!2492 = !DILocation(line: 1300, column: 23, scope: !2491)
!2493 = !DILocation(line: 1300, column: 29, scope: !2491)
!2494 = !DILocation(line: 1300, column: 8, scope: !2491)
!2495 = !DILocation(line: 1300, column: 6, scope: !2491)
!2496 = !DILocation(line: 1301, column: 6, scope: !2491)
!2497 = !DILocation(line: 1302, column: 2, scope: !2485)
!2498 = !DILocation(line: 1303, column: 5, scope: !2474)
!2499 = !DILocation(line: 1304, column: 9, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 1304, column: 9)
!2501 = !DILocation(line: 1304, column: 12, scope: !2500)
!2502 = !DILocation(line: 1304, column: 9, scope: !2458)
!2503 = !DILocation(line: 1305, column: 26, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1305, column: 6)
!2505 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1304, column: 21)
!2506 = !DILocation(line: 1305, column: 12, scope: !2504)
!2507 = !DILocation(line: 1305, column: 10, scope: !2504)
!2508 = !DILocation(line: 1305, column: 33, scope: !2504)
!2509 = !DILocation(line: 1305, column: 6, scope: !2505)
!2510 = !DILocation(line: 1306, column: 11, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 1306, column: 10)
!2512 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1305, column: 42)
!2513 = !DILocation(line: 1306, column: 10, scope: !2512)
!2514 = !DILocation(line: 1307, column: 52, scope: !2511)
!2515 = !DILocation(line: 1307, column: 3, scope: !2511)
!2516 = !DILocation(line: 1308, column: 6, scope: !2512)
!2517 = !DILocalVariable(name: "sudo_debug_ret", scope: !2518, file: !3, line: 1308, type: !213)
!2518 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 1308, column: 6)
!2519 = !DILocation(line: 1308, column: 6, scope: !2518)
!2520 = !DILocation(line: 1309, column: 2, scope: !2512)
!2521 = !DILocation(line: 1310, column: 5, scope: !2505)
!2522 = !DILocation(line: 1311, column: 9, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 1311, column: 9)
!2524 = !DILocation(line: 1311, column: 18, scope: !2523)
!2525 = !DILocation(line: 1311, column: 9, scope: !2458)
!2526 = !DILocation(line: 1312, column: 17, scope: !2523)
!2527 = !DILocation(line: 1312, column: 2, scope: !2523)
!2528 = !DILocation(line: 1313, column: 16, scope: !2458)
!2529 = !DILocation(line: 1313, column: 14, scope: !2458)
!2530 = !DILocation(line: 1314, column: 5, scope: !2458)
!2531 = !DILocalVariable(name: "sudo_debug_ret", scope: !2532, file: !3, line: 1314, type: !213)
!2532 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 1314, column: 5)
!2533 = !DILocation(line: 1314, column: 5, scope: !2532)
!2534 = !DILocation(line: 1315, column: 1, scope: !2458)
!2535 = distinct !DISubprogram(name: "cb_fqdn", scope: !3, file: !3, line: 1217, type: !2536, scopeLine: 1218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!213, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2540)
!2540 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sudo_defs_val", file: !2541, line: 50, size: 128, elements: !2542)
!2541 = !DIFile(filename: "./defaults.h", directory: "/media/joschua/Daten/Dateien/FAUbox/Uni/13._Semester/MA/Impl/vulns/sudo-1.9.5/plugins/sudoers")
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !2540, file: !2541, line: 51, baseType: !6, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "ival", scope: !2540, file: !2541, line: 52, baseType: !6, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "uival", scope: !2540, file: !2541, line: 53, baseType: !17, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "tuple", scope: !2540, file: !2541, line: 54, baseType: !44, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2540, file: !2541, line: 55, baseType: !10, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2540, file: !2541, line: 56, baseType: !198, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "tspec", scope: !2540, file: !2541, line: 57, baseType: !93, size: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2540, file: !2541, line: 58, baseType: !2551, size: 64)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_members", file: !2541, line: 36, size: 64, elements: !2552)
!2552 = !{!2553}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "slh_first", scope: !2551, file: !2541, line: 36, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_member", file: !2541, line: 31, size: 128, elements: !2556)
!2556 = !{!2557, !2561}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2555, file: !2541, line: 32, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !2541, line: 32, size: 64, elements: !2559)
!2559 = !{!2560}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "sle_next", scope: !2558, file: !2541, line: 32, baseType: !2554, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2555, file: !2541, line: 33, baseType: !10, size: 64, offset: 64)
!2562 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2535, file: !3, line: 1217, type: !2538)
!2563 = !DILocation(line: 1217, column: 36, scope: !2535)
!2564 = !DILocalVariable(name: "remote", scope: !2535, file: !3, line: 1219, type: !213)
!2565 = !DILocation(line: 1219, column: 10, scope: !2535)
!2566 = !DILocalVariable(name: "rc", scope: !2535, file: !3, line: 1220, type: !6)
!2567 = !DILocation(line: 1220, column: 9, scope: !2535)
!2568 = !DILocalVariable(name: "lhost", scope: !2535, file: !3, line: 1221, type: !10)
!2569 = !DILocation(line: 1221, column: 11, scope: !2535)
!2570 = !DILocalVariable(name: "shost", scope: !2535, file: !3, line: 1221, type: !10)
!2571 = !DILocation(line: 1221, column: 19, scope: !2535)
!2572 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2535, file: !3, line: 1222, type: !425)
!2573 = !DILocation(line: 1222, column: 5, scope: !2535)
!2574 = !DILocation(line: 1225, column: 9, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1225, column: 9)
!2576 = !DILocation(line: 1225, column: 15, scope: !2575)
!2577 = !DILocation(line: 1225, column: 23, scope: !2575)
!2578 = !DILocation(line: 1225, column: 27, scope: !2575)
!2579 = !DILocation(line: 1225, column: 34, scope: !2575)
!2580 = !DILocation(line: 1225, column: 9, scope: !2535)
!2581 = !DILocation(line: 1226, column: 2, scope: !2575)
!2582 = !DILocalVariable(name: "sudo_debug_ret", scope: !2583, file: !3, line: 1226, type: !213)
!2583 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 1226, column: 2)
!2584 = !DILocation(line: 1226, column: 2, scope: !2583)
!2585 = !DILocation(line: 1229, column: 21, scope: !2535)
!2586 = !DILocation(line: 1229, column: 35, scope: !2535)
!2587 = !DILocation(line: 1229, column: 14, scope: !2535)
!2588 = !DILocation(line: 1229, column: 46, scope: !2535)
!2589 = !DILocation(line: 1229, column: 12, scope: !2535)
!2590 = !DILocation(line: 1232, column: 22, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1232, column: 9)
!2592 = !DILocation(line: 1232, column: 9, scope: !2591)
!2593 = !DILocation(line: 1232, column: 49, scope: !2591)
!2594 = !DILocation(line: 1232, column: 9, scope: !2535)
!2595 = !DILocation(line: 1233, column: 25, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 1233, column: 6)
!2597 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1232, column: 55)
!2598 = !DILocation(line: 1233, column: 12, scope: !2596)
!2599 = !DILocation(line: 1233, column: 10, scope: !2596)
!2600 = !DILocation(line: 1233, column: 56, scope: !2596)
!2601 = !DILocation(line: 1233, column: 6, scope: !2597)
!2602 = !DILocation(line: 1234, column: 51, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1233, column: 62)
!2604 = !DILocation(line: 1235, column: 36, scope: !2603)
!2605 = !DILocation(line: 1234, column: 6, scope: !2603)
!2606 = !DILocation(line: 1236, column: 6, scope: !2603)
!2607 = !DILocalVariable(name: "sudo_debug_ret", scope: !2608, file: !3, line: 1236, type: !213)
!2608 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1236, column: 6)
!2609 = !DILocation(line: 1236, column: 6, scope: !2608)
!2610 = !DILocation(line: 1237, column: 2, scope: !2603)
!2611 = !DILocation(line: 1238, column: 5, scope: !2597)
!2612 = !DILocation(line: 1239, column: 9, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1239, column: 9)
!2614 = !DILocation(line: 1239, column: 23, scope: !2613)
!2615 = !DILocation(line: 1239, column: 20, scope: !2613)
!2616 = !DILocation(line: 1239, column: 9, scope: !2535)
!2617 = !DILocation(line: 1240, column: 7, scope: !2613)
!2618 = !DILocation(line: 1240, column: 2, scope: !2613)
!2619 = !DILocation(line: 1241, column: 10, scope: !2535)
!2620 = !DILocation(line: 1241, column: 5, scope: !2535)
!2621 = !DILocation(line: 1242, column: 17, scope: !2535)
!2622 = !DILocation(line: 1242, column: 15, scope: !2535)
!2623 = !DILocation(line: 1243, column: 18, scope: !2535)
!2624 = !DILocation(line: 1243, column: 16, scope: !2535)
!2625 = !DILocation(line: 1246, column: 19, scope: !2535)
!2626 = !DILocation(line: 1246, column: 11, scope: !2535)
!2627 = !DILocation(line: 1247, column: 9, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1247, column: 9)
!2629 = !DILocation(line: 1247, column: 9, scope: !2535)
!2630 = !DILocation(line: 1248, column: 25, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1248, column: 6)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1247, column: 17)
!2633 = !DILocation(line: 1248, column: 12, scope: !2631)
!2634 = !DILocation(line: 1248, column: 10, scope: !2631)
!2635 = !DILocation(line: 1248, column: 56, scope: !2631)
!2636 = !DILocation(line: 1248, column: 6, scope: !2632)
!2637 = !DILocation(line: 1249, column: 48, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 1248, column: 62)
!2639 = !DILocation(line: 1250, column: 36, scope: !2638)
!2640 = !DILocation(line: 1249, column: 6, scope: !2638)
!2641 = !DILocation(line: 1251, column: 6, scope: !2638)
!2642 = !DILocalVariable(name: "sudo_debug_ret", scope: !2643, file: !3, line: 1251, type: !213)
!2643 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1251, column: 6)
!2644 = !DILocation(line: 1251, column: 6, scope: !2643)
!2645 = !DILocation(line: 1252, column: 2, scope: !2638)
!2646 = !DILocation(line: 1253, column: 5, scope: !2632)
!2647 = !DILocation(line: 1255, column: 22, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1255, column: 6)
!2649 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1253, column: 12)
!2650 = !DILocation(line: 1255, column: 15, scope: !2648)
!2651 = !DILocation(line: 1255, column: 13, scope: !2648)
!2652 = !DILocation(line: 1255, column: 34, scope: !2648)
!2653 = !DILocation(line: 1255, column: 6, scope: !2649)
!2654 = !DILocation(line: 1256, column: 10, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 1256, column: 10)
!2656 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 1255, column: 43)
!2657 = !DILocation(line: 1256, column: 24, scope: !2655)
!2658 = !DILocation(line: 1256, column: 21, scope: !2655)
!2659 = !DILocation(line: 1256, column: 10, scope: !2656)
!2660 = !DILocation(line: 1257, column: 18, scope: !2655)
!2661 = !DILocation(line: 1257, column: 11, scope: !2655)
!2662 = !DILocation(line: 1257, column: 9, scope: !2655)
!2663 = !DILocation(line: 1257, column: 3, scope: !2655)
!2664 = !DILocation(line: 1259, column: 11, scope: !2655)
!2665 = !DILocation(line: 1259, column: 9, scope: !2655)
!2666 = !DILocation(line: 1260, column: 2, scope: !2656)
!2667 = !DILocation(line: 1261, column: 6, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1261, column: 6)
!2669 = !DILocation(line: 1261, column: 12, scope: !2668)
!2670 = !DILocation(line: 1261, column: 20, scope: !2668)
!2671 = !DILocation(line: 1261, column: 23, scope: !2668)
!2672 = !DILocation(line: 1261, column: 29, scope: !2668)
!2673 = !DILocation(line: 1261, column: 6, scope: !2649)
!2674 = !DILocation(line: 1262, column: 11, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1261, column: 38)
!2676 = !DILocation(line: 1262, column: 6, scope: !2675)
!2677 = !DILocation(line: 1263, column: 10, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1263, column: 10)
!2679 = !DILocation(line: 1263, column: 19, scope: !2678)
!2680 = !DILocation(line: 1263, column: 16, scope: !2678)
!2681 = !DILocation(line: 1263, column: 10, scope: !2675)
!2682 = !DILocation(line: 1264, column: 8, scope: !2678)
!2683 = !DILocation(line: 1264, column: 3, scope: !2678)
!2684 = !DILocation(line: 1265, column: 6, scope: !2675)
!2685 = !DILocation(line: 1265, column: 6, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1265, column: 6)
!2687 = !DILocation(line: 1266, column: 6, scope: !2675)
!2688 = !DILocalVariable(name: "sudo_debug_ret", scope: !2689, file: !3, line: 1266, type: !213)
!2689 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1266, column: 6)
!2690 = !DILocation(line: 1266, column: 6, scope: !2689)
!2691 = !DILocation(line: 1267, column: 2, scope: !2675)
!2692 = !DILocation(line: 1269, column: 9, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1269, column: 9)
!2694 = !DILocation(line: 1269, column: 15, scope: !2693)
!2695 = !DILocation(line: 1269, column: 23, scope: !2693)
!2696 = !DILocation(line: 1269, column: 26, scope: !2693)
!2697 = !DILocation(line: 1269, column: 32, scope: !2693)
!2698 = !DILocation(line: 1269, column: 9, scope: !2535)
!2699 = !DILocation(line: 1270, column: 6, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 1270, column: 6)
!2701 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1269, column: 41)
!2702 = !DILocation(line: 1270, column: 23, scope: !2700)
!2703 = !DILocation(line: 1270, column: 20, scope: !2700)
!2704 = !DILocation(line: 1270, column: 6, scope: !2701)
!2705 = !DILocation(line: 1271, column: 11, scope: !2700)
!2706 = !DILocation(line: 1271, column: 6, scope: !2700)
!2707 = !DILocation(line: 1272, column: 7, scope: !2701)
!2708 = !DILocation(line: 1272, column: 2, scope: !2701)
!2709 = !DILocation(line: 1273, column: 17, scope: !2701)
!2710 = !DILocation(line: 1273, column: 15, scope: !2701)
!2711 = !DILocation(line: 1274, column: 18, scope: !2701)
!2712 = !DILocation(line: 1274, column: 16, scope: !2701)
!2713 = !DILocation(line: 1275, column: 5, scope: !2701)
!2714 = !DILocation(line: 1277, column: 5, scope: !2535)
!2715 = !DILocation(line: 1280, column: 5, scope: !2535)
!2716 = !DILocalVariable(name: "sudo_debug_ret", scope: !2717, file: !3, line: 1280, type: !213)
!2717 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1280, column: 5)
!2718 = !DILocation(line: 1280, column: 5, scope: !2717)
!2719 = !DILocation(line: 1281, column: 1, scope: !2535)
!2720 = distinct !DISubprogram(name: "cb_runas_default", scope: !3, file: !3, line: 1355, type: !2536, scopeLine: 1356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2721 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2720, file: !3, line: 1355, type: !2538)
!2722 = !DILocation(line: 1355, column: 45, scope: !2720)
!2723 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2720, file: !3, line: 1357, type: !425)
!2724 = !DILocation(line: 1357, column: 5, scope: !2720)
!2725 = !DILocation(line: 1360, column: 19, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 1360, column: 9)
!2727 = !DILocation(line: 1360, column: 30, scope: !2726)
!2728 = !DILocation(line: 1360, column: 38, scope: !2726)
!2729 = !DILocation(line: 1360, column: 51, scope: !2726)
!2730 = !DILocation(line: 1360, column: 63, scope: !2726)
!2731 = !DILocation(line: 1360, column: 9, scope: !2720)
!2732 = !DILocation(line: 1361, column: 2, scope: !2726)
!2733 = !DILocalVariable(name: "sudo_debug_ret", scope: !2734, file: !3, line: 1361, type: !213)
!2734 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1361, column: 2)
!2735 = !DILocation(line: 1361, column: 2, scope: !2734)
!2736 = !DILocation(line: 1362, column: 5, scope: !2720)
!2737 = !DILocalVariable(name: "sudo_debug_ret", scope: !2738, file: !3, line: 1362, type: !213)
!2738 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 1362, column: 5)
!2739 = !DILocation(line: 1362, column: 5, scope: !2738)
!2740 = !DILocation(line: 1363, column: 1, scope: !2720)
!2741 = distinct !DISubprogram(name: "cb_tty_tickets", scope: !3, file: !3, line: 1369, type: !2536, scopeLine: 1370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2742 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2741, file: !3, line: 1369, type: !2538)
!2743 = !DILocation(line: 1369, column: 43, scope: !2741)
!2744 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2741, file: !3, line: 1371, type: !425)
!2745 = !DILocation(line: 1371, column: 5, scope: !2741)
!2746 = !DILocation(line: 1374, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1374, column: 9)
!2748 = !DILocation(line: 1374, column: 16, scope: !2747)
!2749 = !DILocation(line: 1374, column: 9, scope: !2741)
!2750 = !DILocation(line: 1375, column: 21, scope: !2747)
!2751 = !DILocation(line: 1375, column: 2, scope: !2747)
!2752 = !DILocation(line: 1377, column: 21, scope: !2747)
!2753 = !DILocation(line: 1378, column: 5, scope: !2741)
!2754 = !DILocalVariable(name: "sudo_debug_ret", scope: !2755, file: !3, line: 1378, type: !213)
!2755 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1378, column: 5)
!2756 = !DILocation(line: 1378, column: 5, scope: !2755)
!2757 = distinct !DISubprogram(name: "cb_umask", scope: !3, file: !3, line: 1385, type: !2536, scopeLine: 1386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2758 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2757, file: !3, line: 1385, type: !2538)
!2759 = !DILocation(line: 1385, column: 37, scope: !2757)
!2760 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2757, file: !3, line: 1387, type: !425)
!2761 = !DILocation(line: 1387, column: 5, scope: !2757)
!2762 = !DILocation(line: 1390, column: 19, scope: !2757)
!2763 = !DILocation(line: 1390, column: 26, scope: !2757)
!2764 = !DILocation(line: 1390, column: 31, scope: !2757)
!2765 = !DILocation(line: 1390, column: 17, scope: !2757)
!2766 = !DILocation(line: 1392, column: 5, scope: !2757)
!2767 = !DILocalVariable(name: "sudo_debug_ret", scope: !2768, file: !3, line: 1392, type: !213)
!2768 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 1392, column: 5)
!2769 = !DILocation(line: 1392, column: 5, scope: !2768)
!2770 = distinct !DISubprogram(name: "cb_runchroot", scope: !3, file: !3, line: 1399, type: !2536, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2771 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2770, file: !3, line: 1399, type: !2538)
!2772 = !DILocation(line: 1399, column: 41, scope: !2770)
!2773 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2770, file: !3, line: 1401, type: !425)
!2774 = !DILocation(line: 1401, column: 5, scope: !2770)
!2775 = !DILocation(line: 1403, column: 5, scope: !2770)
!2776 = !DILocation(line: 1405, column: 9, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1405, column: 9)
!2778 = !DILocation(line: 1405, column: 19, scope: !2777)
!2779 = !DILocation(line: 1405, column: 9, scope: !2770)
!2780 = !DILocation(line: 1407, column: 30, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 1405, column: 28)
!2782 = !DILocation(line: 1407, column: 37, scope: !2781)
!2783 = !DILocation(line: 1407, column: 16, scope: !2781)
!2784 = !DILocation(line: 1407, column: 14, scope: !2781)
!2785 = !DILocation(line: 1408, column: 2, scope: !2781)
!2786 = !DILocation(line: 1410, column: 5, scope: !2781)
!2787 = !DILocation(line: 1412, column: 5, scope: !2770)
!2788 = !DILocalVariable(name: "sudo_debug_ret", scope: !2789, file: !3, line: 1412, type: !213)
!2789 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1412, column: 5)
!2790 = !DILocation(line: 1412, column: 5, scope: !2789)
!2791 = distinct !DISubprogram(name: "cb_syslog", scope: !3, file: !3, line: 1440, type: !2536, scopeLine: 1441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2792 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2791, file: !3, line: 1440, type: !2538)
!2793 = !DILocation(line: 1440, column: 38, scope: !2791)
!2794 = !DILocalVariable(name: "logtype", scope: !2791, file: !3, line: 1442, type: !6)
!2795 = !DILocation(line: 1442, column: 9, scope: !2791)
!2796 = !DILocation(line: 1442, column: 19, scope: !2791)
!2797 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2791, file: !3, line: 1443, type: !425)
!2798 = !DILocation(line: 1443, column: 5, scope: !2791)
!2799 = !DILocation(line: 1445, column: 9, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 1445, column: 9)
!2801 = !DILocation(line: 1445, column: 16, scope: !2800)
!2802 = !DILocation(line: 1445, column: 20, scope: !2800)
!2803 = !DILocation(line: 1445, column: 9, scope: !2791)
!2804 = !DILocation(line: 1446, column: 2, scope: !2800)
!2805 = !DILocation(line: 1447, column: 23, scope: !2791)
!2806 = !DILocation(line: 1447, column: 5, scope: !2791)
!2807 = !DILocation(line: 1449, column: 5, scope: !2791)
!2808 = !DILocalVariable(name: "sudo_debug_ret", scope: !2809, file: !3, line: 1449, type: !213)
!2809 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 1449, column: 5)
!2810 = !DILocation(line: 1449, column: 5, scope: !2809)
!2811 = distinct !DISubprogram(name: "cb_syslog_goodpri", scope: !3, file: !3, line: 1453, type: !2536, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2812 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2811, file: !3, line: 1453, type: !2538)
!2813 = !DILocation(line: 1453, column: 46, scope: !2811)
!2814 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2811, file: !3, line: 1455, type: !425)
!2815 = !DILocation(line: 1455, column: 5, scope: !2811)
!2816 = !DILocation(line: 1457, column: 35, scope: !2811)
!2817 = !DILocation(line: 1457, column: 42, scope: !2811)
!2818 = !DILocation(line: 1457, column: 5, scope: !2811)
!2819 = !DILocation(line: 1459, column: 5, scope: !2811)
!2820 = !DILocalVariable(name: "sudo_debug_ret", scope: !2821, file: !3, line: 1459, type: !213)
!2821 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 1459, column: 5)
!2822 = !DILocation(line: 1459, column: 5, scope: !2821)
!2823 = distinct !DISubprogram(name: "cb_syslog_badpri", scope: !3, file: !3, line: 1463, type: !2536, scopeLine: 1464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2824 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2823, file: !3, line: 1463, type: !2538)
!2825 = !DILocation(line: 1463, column: 45, scope: !2823)
!2826 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2823, file: !3, line: 1465, type: !425)
!2827 = !DILocation(line: 1465, column: 5, scope: !2823)
!2828 = !DILocation(line: 1467, column: 35, scope: !2823)
!2829 = !DILocation(line: 1467, column: 42, scope: !2823)
!2830 = !DILocation(line: 1467, column: 5, scope: !2823)
!2831 = !DILocation(line: 1468, column: 34, scope: !2823)
!2832 = !DILocation(line: 1468, column: 41, scope: !2823)
!2833 = !DILocation(line: 1468, column: 5, scope: !2823)
!2834 = !DILocation(line: 1470, column: 5, scope: !2823)
!2835 = !DILocalVariable(name: "sudo_debug_ret", scope: !2836, file: !3, line: 1470, type: !213)
!2836 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1470, column: 5)
!2837 = !DILocation(line: 1470, column: 5, scope: !2836)
!2838 = distinct !DISubprogram(name: "cb_syslog_maxlen", scope: !3, file: !3, line: 1474, type: !2536, scopeLine: 1475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2839 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2838, file: !3, line: 1474, type: !2538)
!2840 = !DILocation(line: 1474, column: 45, scope: !2838)
!2841 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2838, file: !3, line: 1476, type: !425)
!2842 = !DILocation(line: 1476, column: 5, scope: !2838)
!2843 = !DILocation(line: 1478, column: 32, scope: !2838)
!2844 = !DILocation(line: 1478, column: 39, scope: !2838)
!2845 = !DILocation(line: 1478, column: 5, scope: !2838)
!2846 = !DILocation(line: 1480, column: 5, scope: !2838)
!2847 = !DILocalVariable(name: "sudo_debug_ret", scope: !2848, file: !3, line: 1480, type: !213)
!2848 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1480, column: 5)
!2849 = !DILocation(line: 1480, column: 5, scope: !2848)
!2850 = distinct !DISubprogram(name: "cb_loglinelen", scope: !3, file: !3, line: 1484, type: !2536, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2851 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2850, file: !3, line: 1484, type: !2538)
!2852 = !DILocation(line: 1484, column: 42, scope: !2850)
!2853 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2850, file: !3, line: 1486, type: !425)
!2854 = !DILocation(line: 1486, column: 5, scope: !2850)
!2855 = !DILocation(line: 1488, column: 30, scope: !2850)
!2856 = !DILocation(line: 1488, column: 37, scope: !2850)
!2857 = !DILocation(line: 1488, column: 5, scope: !2850)
!2858 = !DILocation(line: 1490, column: 5, scope: !2850)
!2859 = !DILocalVariable(name: "sudo_debug_ret", scope: !2860, file: !3, line: 1490, type: !213)
!2860 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 1490, column: 5)
!2861 = !DILocation(line: 1490, column: 5, scope: !2860)
!2862 = distinct !DISubprogram(name: "cb_log_host", scope: !3, file: !3, line: 1504, type: !2536, scopeLine: 1505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2863 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2862, file: !3, line: 1504, type: !2538)
!2864 = !DILocation(line: 1504, column: 40, scope: !2862)
!2865 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2862, file: !3, line: 1506, type: !425)
!2866 = !DILocation(line: 1506, column: 5, scope: !2862)
!2867 = !DILocation(line: 1508, column: 33, scope: !2862)
!2868 = !DILocation(line: 1508, column: 40, scope: !2862)
!2869 = !DILocation(line: 1508, column: 32, scope: !2862)
!2870 = !DILocation(line: 1508, column: 5, scope: !2862)
!2871 = !DILocation(line: 1510, column: 5, scope: !2862)
!2872 = !DILocalVariable(name: "sudo_debug_ret", scope: !2873, file: !3, line: 1510, type: !213)
!2873 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1510, column: 5)
!2874 = !DILocation(line: 1510, column: 5, scope: !2873)
!2875 = distinct !DISubprogram(name: "cb_logfile", scope: !3, file: !3, line: 1416, type: !2536, scopeLine: 1417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2876 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2875, file: !3, line: 1416, type: !2538)
!2877 = !DILocation(line: 1416, column: 39, scope: !2875)
!2878 = !DILocalVariable(name: "logtype", scope: !2875, file: !3, line: 1418, type: !6)
!2879 = !DILocation(line: 1418, column: 9, scope: !2875)
!2880 = !DILocation(line: 1418, column: 19, scope: !2875)
!2881 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2875, file: !3, line: 1419, type: !425)
!2882 = !DILocation(line: 1419, column: 5, scope: !2875)
!2883 = !DILocation(line: 1421, column: 9, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 1421, column: 9)
!2885 = !DILocation(line: 1421, column: 16, scope: !2884)
!2886 = !DILocation(line: 1421, column: 20, scope: !2884)
!2887 = !DILocation(line: 1421, column: 9, scope: !2875)
!2888 = !DILocation(line: 1422, column: 2, scope: !2884)
!2889 = !DILocation(line: 1423, column: 23, scope: !2875)
!2890 = !DILocation(line: 1423, column: 5, scope: !2875)
!2891 = !DILocation(line: 1424, column: 26, scope: !2875)
!2892 = !DILocation(line: 1424, column: 33, scope: !2875)
!2893 = !DILocation(line: 1424, column: 5, scope: !2875)
!2894 = !DILocation(line: 1426, column: 5, scope: !2875)
!2895 = !DILocalVariable(name: "sudo_debug_ret", scope: !2896, file: !3, line: 1426, type: !213)
!2896 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 1426, column: 5)
!2897 = !DILocation(line: 1426, column: 5, scope: !2896)
!2898 = distinct !DISubprogram(name: "cb_log_format", scope: !3, file: !3, line: 1430, type: !2536, scopeLine: 1431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2899 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2898, file: !3, line: 1430, type: !2538)
!2900 = !DILocation(line: 1430, column: 42, scope: !2898)
!2901 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2898, file: !3, line: 1432, type: !425)
!2902 = !DILocation(line: 1432, column: 5, scope: !2898)
!2903 = !DILocation(line: 1434, column: 25, scope: !2898)
!2904 = !DILocation(line: 1434, column: 32, scope: !2898)
!2905 = !DILocation(line: 1434, column: 38, scope: !2898)
!2906 = !DILocation(line: 1434, column: 5, scope: !2898)
!2907 = !DILocation(line: 1436, column: 5, scope: !2898)
!2908 = !DILocalVariable(name: "sudo_debug_ret", scope: !2909, file: !3, line: 1436, type: !213)
!2909 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 1436, column: 5)
!2910 = !DILocation(line: 1436, column: 5, scope: !2909)
!2911 = distinct !DISubprogram(name: "cb_log_year", scope: !3, file: !3, line: 1494, type: !2536, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2912 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2911, file: !3, line: 1494, type: !2538)
!2913 = !DILocation(line: 1494, column: 40, scope: !2911)
!2914 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2911, file: !3, line: 1496, type: !425)
!2915 = !DILocation(line: 1496, column: 5, scope: !2911)
!2916 = !DILocation(line: 1498, column: 27, scope: !2911)
!2917 = !DILocation(line: 1498, column: 34, scope: !2911)
!2918 = !DILocation(line: 1498, column: 5, scope: !2911)
!2919 = !DILocation(line: 1500, column: 5, scope: !2911)
!2920 = !DILocalVariable(name: "sudo_debug_ret", scope: !2921, file: !3, line: 1500, type: !213)
!2921 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 1500, column: 5)
!2922 = !DILocation(line: 1500, column: 5, scope: !2921)
!2923 = distinct !DISubprogram(name: "cb_mailerpath", scope: !3, file: !3, line: 1514, type: !2536, scopeLine: 1515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2924 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2923, file: !3, line: 1514, type: !2538)
!2925 = !DILocation(line: 1514, column: 42, scope: !2923)
!2926 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2923, file: !3, line: 1516, type: !425)
!2927 = !DILocation(line: 1516, column: 5, scope: !2923)
!2928 = !DILocation(line: 1518, column: 29, scope: !2923)
!2929 = !DILocation(line: 1518, column: 36, scope: !2923)
!2930 = !DILocation(line: 1518, column: 5, scope: !2923)
!2931 = !DILocation(line: 1520, column: 5, scope: !2923)
!2932 = !DILocalVariable(name: "sudo_debug_ret", scope: !2933, file: !3, line: 1520, type: !213)
!2933 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 1520, column: 5)
!2934 = !DILocation(line: 1520, column: 5, scope: !2933)
!2935 = distinct !DISubprogram(name: "cb_mailerflags", scope: !3, file: !3, line: 1524, type: !2536, scopeLine: 1525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2936 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2935, file: !3, line: 1524, type: !2538)
!2937 = !DILocation(line: 1524, column: 43, scope: !2935)
!2938 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2935, file: !3, line: 1526, type: !425)
!2939 = !DILocation(line: 1526, column: 5, scope: !2935)
!2940 = !DILocation(line: 1528, column: 30, scope: !2935)
!2941 = !DILocation(line: 1528, column: 37, scope: !2935)
!2942 = !DILocation(line: 1528, column: 5, scope: !2935)
!2943 = !DILocation(line: 1530, column: 5, scope: !2935)
!2944 = !DILocalVariable(name: "sudo_debug_ret", scope: !2945, file: !3, line: 1530, type: !213)
!2945 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 1530, column: 5)
!2946 = !DILocation(line: 1530, column: 5, scope: !2945)
!2947 = distinct !DISubprogram(name: "cb_mailfrom", scope: !3, file: !3, line: 1534, type: !2536, scopeLine: 1535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2948 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2947, file: !3, line: 1534, type: !2538)
!2949 = !DILocation(line: 1534, column: 40, scope: !2947)
!2950 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2947, file: !3, line: 1536, type: !425)
!2951 = !DILocation(line: 1536, column: 5, scope: !2947)
!2952 = !DILocation(line: 1538, column: 27, scope: !2947)
!2953 = !DILocation(line: 1538, column: 34, scope: !2947)
!2954 = !DILocation(line: 1538, column: 5, scope: !2947)
!2955 = !DILocation(line: 1540, column: 5, scope: !2947)
!2956 = !DILocalVariable(name: "sudo_debug_ret", scope: !2957, file: !3, line: 1540, type: !213)
!2957 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 1540, column: 5)
!2958 = !DILocation(line: 1540, column: 5, scope: !2957)
!2959 = distinct !DISubprogram(name: "cb_mailto", scope: !3, file: !3, line: 1544, type: !2536, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2960 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2959, file: !3, line: 1544, type: !2538)
!2961 = !DILocation(line: 1544, column: 38, scope: !2959)
!2962 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2959, file: !3, line: 1546, type: !425)
!2963 = !DILocation(line: 1546, column: 5, scope: !2959)
!2964 = !DILocation(line: 1548, column: 25, scope: !2959)
!2965 = !DILocation(line: 1548, column: 32, scope: !2959)
!2966 = !DILocation(line: 1548, column: 5, scope: !2959)
!2967 = !DILocation(line: 1550, column: 5, scope: !2959)
!2968 = !DILocalVariable(name: "sudo_debug_ret", scope: !2969, file: !3, line: 1550, type: !213)
!2969 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1550, column: 5)
!2970 = !DILocation(line: 1550, column: 5, scope: !2969)
!2971 = distinct !DISubprogram(name: "cb_mailsub", scope: !3, file: !3, line: 1554, type: !2536, scopeLine: 1555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2972 = !DILocalVariable(name: "sd_un", arg: 1, scope: !2971, file: !3, line: 1554, type: !2538)
!2973 = !DILocation(line: 1554, column: 39, scope: !2971)
!2974 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2971, file: !3, line: 1556, type: !425)
!2975 = !DILocation(line: 1556, column: 5, scope: !2971)
!2976 = !DILocation(line: 1558, column: 26, scope: !2971)
!2977 = !DILocation(line: 1558, column: 33, scope: !2971)
!2978 = !DILocation(line: 1558, column: 5, scope: !2971)
!2979 = !DILocation(line: 1560, column: 5, scope: !2971)
!2980 = !DILocalVariable(name: "sudo_debug_ret", scope: !2981, file: !3, line: 1560, type: !213)
!2981 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 1560, column: 5)
!2982 = !DILocation(line: 1560, column: 5, scope: !2981)
!2983 = distinct !DISubprogram(name: "resolve_host", scope: !3, file: !3, line: 1178, type: !2984, scopeLine: 1179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !12, retainedNodes: !405)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!6, !375, !125, !125}
!2986 = !DILocalVariable(name: "host", arg: 1, scope: !2983, file: !3, line: 1178, type: !375)
!2987 = !DILocation(line: 1178, column: 26, scope: !2983)
!2988 = !DILocalVariable(name: "longp", arg: 2, scope: !2983, file: !3, line: 1178, type: !125)
!2989 = !DILocation(line: 1178, column: 39, scope: !2983)
!2990 = !DILocalVariable(name: "shortp", arg: 3, scope: !2983, file: !3, line: 1178, type: !125)
!2991 = !DILocation(line: 1178, column: 53, scope: !2983)
!2992 = !DILocalVariable(name: "res0", scope: !2983, file: !3, line: 1180, type: !2993)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !2995, line: 565, size: 384, elements: !2996)
!2995 = !DIFile(filename: "/usr/include/netdb.h", directory: "")
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3005, !3016, !3017}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !2994, file: !2995, line: 567, baseType: !6, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !2994, file: !2995, line: 568, baseType: !6, size: 32, offset: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !2994, file: !2995, line: 569, baseType: !6, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !2994, file: !2995, line: 570, baseType: !6, size: 32, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !2994, file: !2995, line: 571, baseType: !3002, size: 32, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !3003, line: 33, baseType: !3004)
!3003 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !81, line: 197, baseType: !17)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !2994, file: !2995, line: 572, baseType: !3006, size: 64, offset: 192)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !3003, line: 175, size: 128, elements: !3008)
!3008 = !{!3009, !3012}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !3007, file: !3003, line: 177, baseType: !3010, size: 16)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !3011, line: 28, baseType: !86)
!3011 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !3007, file: !3003, line: 178, baseType: !3013, size: 112, offset: 16)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 112, elements: !3014)
!3014 = !{!3015}
!3015 = !DISubrange(count: 14)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !2994, file: !2995, line: 573, baseType: !10, size: 64, offset: 256)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !2994, file: !2995, line: 574, baseType: !2993, size: 64, offset: 320)
!3018 = !DILocation(line: 1180, column: 22, scope: !2983)
!3019 = !DILocalVariable(name: "hint", scope: !2983, file: !3, line: 1180, type: !2994)
!3020 = !DILocation(line: 1180, column: 28, scope: !2983)
!3021 = !DILocalVariable(name: "cp", scope: !2983, file: !3, line: 1181, type: !10)
!3022 = !DILocation(line: 1181, column: 11, scope: !2983)
!3023 = !DILocalVariable(name: "lname", scope: !2983, file: !3, line: 1181, type: !10)
!3024 = !DILocation(line: 1181, column: 16, scope: !2983)
!3025 = !DILocalVariable(name: "sname", scope: !2983, file: !3, line: 1181, type: !10)
!3026 = !DILocation(line: 1181, column: 24, scope: !2983)
!3027 = !DILocalVariable(name: "ret", scope: !2983, file: !3, line: 1182, type: !6)
!3028 = !DILocation(line: 1182, column: 9, scope: !2983)
!3029 = !DILocalVariable(name: "sudo_debug_subsys", scope: !2983, file: !3, line: 1183, type: !425)
!3030 = !DILocation(line: 1183, column: 5, scope: !2983)
!3031 = !DILocation(line: 1185, column: 5, scope: !2983)
!3032 = !DILocation(line: 1186, column: 10, scope: !2983)
!3033 = !DILocation(line: 1186, column: 20, scope: !2983)
!3034 = !DILocation(line: 1187, column: 10, scope: !2983)
!3035 = !DILocation(line: 1187, column: 19, scope: !2983)
!3036 = !DILocation(line: 1189, column: 28, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1189, column: 9)
!3038 = !DILocation(line: 1189, column: 16, scope: !3037)
!3039 = !DILocation(line: 1189, column: 14, scope: !3037)
!3040 = !DILocation(line: 1189, column: 55, scope: !3037)
!3041 = !DILocation(line: 1189, column: 9, scope: !2983)
!3042 = !DILocation(line: 1190, column: 2, scope: !3037)
!3043 = !DILocalVariable(name: "sudo_debug_ret", scope: !3044, file: !3, line: 1190, type: !6)
!3044 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1190, column: 2)
!3045 = !DILocation(line: 1190, column: 2, scope: !3044)
!3046 = !DILocation(line: 1191, column: 25, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1191, column: 9)
!3048 = !DILocation(line: 1191, column: 31, scope: !3047)
!3049 = !DILocation(line: 1191, column: 18, scope: !3047)
!3050 = !DILocation(line: 1191, column: 16, scope: !3047)
!3051 = !DILocation(line: 1191, column: 46, scope: !3047)
!3052 = !DILocation(line: 1191, column: 9, scope: !2983)
!3053 = !DILocation(line: 1192, column: 15, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 1191, column: 55)
!3055 = !DILocation(line: 1192, column: 2, scope: !3054)
!3056 = !DILocation(line: 1193, column: 2, scope: !3054)
!3057 = !DILocalVariable(name: "sudo_debug_ret", scope: !3058, file: !3, line: 1193, type: !6)
!3058 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 1193, column: 2)
!3059 = !DILocation(line: 1193, column: 2, scope: !3058)
!3060 = !DILocation(line: 1194, column: 5, scope: !3054)
!3061 = !DILocation(line: 1195, column: 22, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1195, column: 9)
!3063 = !DILocation(line: 1195, column: 15, scope: !3062)
!3064 = !DILocation(line: 1195, column: 13, scope: !3062)
!3065 = !DILocation(line: 1195, column: 35, scope: !3062)
!3066 = !DILocation(line: 1195, column: 9, scope: !2983)
!3067 = !DILocation(line: 1196, column: 18, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 1195, column: 44)
!3069 = !DILocation(line: 1196, column: 34, scope: !3068)
!3070 = !DILocation(line: 1196, column: 39, scope: !3068)
!3071 = !DILocation(line: 1196, column: 37, scope: !3068)
!3072 = !DILocation(line: 1196, column: 10, scope: !3068)
!3073 = !DILocation(line: 1196, column: 8, scope: !3068)
!3074 = !DILocation(line: 1197, column: 6, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 1197, column: 6)
!3076 = !DILocation(line: 1197, column: 12, scope: !3075)
!3077 = !DILocation(line: 1197, column: 6, scope: !3068)
!3078 = !DILocation(line: 1198, column: 11, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 1197, column: 21)
!3080 = !DILocation(line: 1198, column: 6, scope: !3079)
!3081 = !DILocation(line: 1199, column: 19, scope: !3079)
!3082 = !DILocation(line: 1199, column: 6, scope: !3079)
!3083 = !DILocation(line: 1200, column: 6, scope: !3079)
!3084 = !DILocalVariable(name: "sudo_debug_ret", scope: !3085, file: !3, line: 1200, type: !6)
!3085 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 1200, column: 6)
!3086 = !DILocation(line: 1200, column: 6, scope: !3085)
!3087 = !DILocation(line: 1201, column: 2, scope: !3079)
!3088 = !DILocation(line: 1202, column: 5, scope: !3068)
!3089 = !DILocation(line: 1203, column: 10, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 1202, column: 12)
!3091 = !DILocation(line: 1203, column: 8, scope: !3090)
!3092 = !DILocation(line: 1205, column: 18, scope: !2983)
!3093 = !DILocation(line: 1205, column: 5, scope: !2983)
!3094 = !DILocation(line: 1206, column: 14, scope: !2983)
!3095 = !DILocation(line: 1206, column: 6, scope: !2983)
!3096 = !DILocation(line: 1206, column: 12, scope: !2983)
!3097 = !DILocation(line: 1207, column: 15, scope: !2983)
!3098 = !DILocation(line: 1207, column: 6, scope: !2983)
!3099 = !DILocation(line: 1207, column: 13, scope: !2983)
!3100 = !DILocation(line: 1209, column: 5, scope: !2983)
!3101 = !DILocalVariable(name: "sudo_debug_ret", scope: !3102, file: !3, line: 1209, type: !6)
!3102 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1209, column: 5)
!3103 = !DILocation(line: 1209, column: 5, scope: !3102)
!3104 = !DILocation(line: 1210, column: 1, scope: !2983)
