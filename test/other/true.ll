; ModuleID = './test/true.bc'
source_filename = "./test/true.bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [61 x i8] c"Usage: %s [ignored command line arguments]\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating success.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@emit_ancillary_info.infomap = internal constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16, !dbg !0
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@Version = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), align 8, !dbg !25
@.str.29 = private unnamed_addr constant [5 x i8] c"8.24\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@file_name = internal global i8* null, align 8, !dbg !31
@ignore_EPIPE = internal global i8 0, align 1, !dbg !40
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = internal global i32 1, align 4, !dbg !41
@program_name = internal global i8* null, align 8, !dbg !49
@program_invocation_short_name = external global i8*, align 8
@program_invocation_name = external global i8*, align 8
@.str.41 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.42 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.43 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@quoting_style_args = internal constant [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.53, i32 0, i32 0), i8* null], align 16, !dbg !56
@quoting_style_vals = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16, !dbg !139
@quote_quoting_options = internal global %struct.quoting_options { i32 6, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !140
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !141
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !142
@nslots = internal global i32 1, align 4, !dbg !143
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !144
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !145
@.str.46 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.47 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.48 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.49 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.4.50 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.5.51 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.6.52 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.7.53 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@.str.11.54 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.12.55 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.13.56 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.14.57 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.15.58 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.16.59 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@.str.8.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.10.61 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.9.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.66 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.67 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.68 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.69 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.70 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.71 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.72 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.73 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.74 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.75 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.76 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.77 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.78 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.79 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.80 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.81 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.82 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.83 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.84 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = internal constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !146
@.str.1.95 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.101 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.108 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.109 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@charset_aliases = internal global i8* null, align 8, !dbg !155
@.str.2.110 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.3.111 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.112 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.5.113 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.114 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(i32 %status) #0 !dbg !546 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !549, metadata !DIExpression()), !dbg !550
  %call = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0)) #10, !dbg !551
  %0 = load i8*, i8** @program_name, align 8, !dbg !552
  %1 = load i8*, i8** @program_name, align 8, !dbg !553
  %call1 = call i32 (i8*, ...) @printf(i8* %call, i8* %0, i8* %1), !dbg !554
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0)) #10, !dbg !555
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %call2), !dbg !556
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0)) #10, !dbg !557
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !557
  %call5 = call i32 @fputs_unlocked(i8* %call4, %struct._IO_FILE* %2), !dbg !557
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0)) #10, !dbg !558
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !558
  %call7 = call i32 @fputs_unlocked(i8* %call6, %struct._IO_FILE* %3), !dbg !558
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i32 0, i32 0)) #10, !dbg !559
  %call9 = call i32 (i8*, ...) @printf(i8* %call8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !560
  call void @emit_ancillary_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !561
  %4 = load i32, i32* %status.addr, align 4, !dbg !562
  call void @exit(i32 %4) #14, !dbg !563
  unreachable, !dbg !563

return:                                           ; No predecessors!
  ret void, !dbg !564
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #5 !dbg !565 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !569, metadata !DIExpression()), !dbg !570
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !571, metadata !DIExpression()), !dbg !572
  %0 = load i32, i32* %argc.addr, align 4, !dbg !573
  %cmp = icmp eq i32 %0, 2, !dbg !575
  br i1 %cmp, label %if.then, label %if.end.13, !dbg !576

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8, !dbg !577
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0, !dbg !577
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !577
  call void @set_program_name(i8* %2), !dbg !579
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0)) #10, !dbg !580
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0)) #10, !dbg !581
  %call2 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)) #10, !dbg !582
  %call3 = call i32 @atexit(void ()* @close_stdout) #10, !dbg !583
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !584
  %arrayidx4 = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !584
  %4 = load i8*, i8** %arrayidx4, align 8, !dbg !584
  %call5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #15, !dbg !584
  %cmp6 = icmp eq i32 %call5, 0, !dbg !584
  br i1 %cmp6, label %if.then.7, label %if.end, !dbg !586

if.then.7:                                        ; preds = %if.then
  call void @usage(i32 0) #16, !dbg !587
  unreachable, !dbg !587

if.end:                                           ; preds = %if.then
  %5 = load i8**, i8*** %argv.addr, align 8, !dbg !588
  %arrayidx8 = getelementptr inbounds i8*, i8** %5, i64 1, !dbg !588
  %6 = load i8*, i8** %arrayidx8, align 8, !dbg !588
  %call9 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #15, !dbg !588
  %cmp10 = icmp eq i32 %call9, 0, !dbg !588
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !590

if.then.11:                                       ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !591
  %8 = load i8*, i8** @Version, align 8, !dbg !592
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* null), !dbg !593
  br label %if.end.12, !dbg !593

if.end.12:                                        ; preds = %if.then.11, %if.end
  br label %if.end.13, !dbg !594

if.end.13:                                        ; preds = %if.end.12, %entry
  ret i32 0, !dbg !595
}

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #3

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_ancillary_info(i8* %program) #7 !dbg !2 {
entry:
  %program.addr = alloca i8*, align 8
  %node = alloca i8*, align 8
  %map_prog = alloca %struct.infomap*, align 8
  %lc_messages = alloca i8*, align 8
  store i8* %program, i8** %program.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %program.addr, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata i8** %node, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load i8*, i8** %program.addr, align 8, !dbg !600
  store i8* %0, i8** %node, align 8, !dbg !599
  call void @llvm.dbg.declare(metadata %struct.infomap** %map_prog, metadata !601, metadata !DIExpression()), !dbg !603
  store %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i32 0, i32 0), %struct.infomap** %map_prog, align 8, !dbg !603
  br label %while.cond, !dbg !604

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !dbg !605
  %program1 = getelementptr inbounds %struct.infomap, %struct.infomap* %1, i32 0, i32 0, !dbg !608
  %2 = load i8*, i8** %program1, align 8, !dbg !608
  %tobool = icmp ne i8* %2, null, !dbg !609
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !610

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %program.addr, align 8, !dbg !611
  %4 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !dbg !611
  %program2 = getelementptr inbounds %struct.infomap, %struct.infomap* %4, i32 0, i32 0, !dbg !611
  %5 = load i8*, i8** %program2, align 8, !dbg !611
  %call = call i32 @strcmp(i8* %3, i8* %5) #15, !dbg !611
  %cmp = icmp eq i32 %call, 0, !dbg !611
  %lnot = xor i1 %cmp, true, !dbg !613
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %while.body, label %while.end, !dbg !614

while.body:                                       ; preds = %land.end
  %7 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !dbg !616
  %incdec.ptr = getelementptr inbounds %struct.infomap, %struct.infomap* %7, i32 1, !dbg !616
  store %struct.infomap* %incdec.ptr, %struct.infomap** %map_prog, align 8, !dbg !616
  br label %while.cond, !dbg !604

while.end:                                        ; preds = %land.end
  %8 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !dbg !617
  %node3 = getelementptr inbounds %struct.infomap, %struct.infomap* %8, i32 0, i32 1, !dbg !619
  %9 = load i8*, i8** %node3, align 8, !dbg !619
  %tobool4 = icmp ne i8* %9, null, !dbg !617
  br i1 %tobool4, label %if.then, label %if.end, !dbg !620

if.then:                                          ; preds = %while.end
  %10 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !dbg !621
  %node5 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i32 0, i32 1, !dbg !622
  %11 = load i8*, i8** %node5, align 8, !dbg !622
  store i8* %11, i8** %node, align 8, !dbg !623
  br label %if.end, !dbg !624

if.end:                                           ; preds = %if.then, %while.end
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0)) #10, !dbg !625
  %call7 = call i32 (i8*, ...) @printf(i8* %call6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0)), !dbg !626
  call void @llvm.dbg.declare(metadata i8** %lc_messages, metadata !627, metadata !DIExpression()), !dbg !628
  %call8 = call i8* @setlocale(i32 5, i8* null) #10, !dbg !629
  store i8* %call8, i8** %lc_messages, align 8, !dbg !628
  %12 = load i8*, i8** %lc_messages, align 8, !dbg !630
  %tobool9 = icmp ne i8* %12, null, !dbg !630
  br i1 %tobool9, label %land.lhs.true, label %if.end.15, !dbg !632

land.lhs.true:                                    ; preds = %if.end
  %13 = load i8*, i8** %lc_messages, align 8, !dbg !633
  %call10 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i64 3) #15, !dbg !633
  %tobool11 = icmp ne i32 %call10, 0, !dbg !633
  br i1 %tobool11, label %if.then.12, label %if.end.15, !dbg !635

if.then.12:                                       ; preds = %land.lhs.true
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i32 0, i32 0)) #10, !dbg !636
  %14 = load i8*, i8** %program.addr, align 8, !dbg !638
  %call14 = call i32 (i8*, ...) @printf(i8* %call13, i8* %14), !dbg !639
  br label %if.end.15, !dbg !640

if.end.15:                                        ; preds = %if.then.12, %land.lhs.true, %if.end
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !641
  %15 = load i8*, i8** %program.addr, align 8, !dbg !642
  %call17 = call i32 (i8*, ...) @printf(i8* %call16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i8* %15), !dbg !643
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0)) #10, !dbg !644
  %16 = load i8*, i8** %node, align 8, !dbg !645
  %17 = load i8*, i8** %node, align 8, !dbg !646
  %18 = load i8*, i8** %program.addr, align 8, !dbg !647
  %cmp19 = icmp eq i8* %17, %18, !dbg !648
  %cond = select i1 %cmp19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), !dbg !646
  %call20 = call i32 (i8*, ...) @printf(i8* %call18, i8* %16, i8* %cond), !dbg !649
  ret void, !dbg !650
}

; Function Attrs: nounwind uwtable
define internal void @close_stdout_set_file_name(i8* %file) #5 !dbg !651 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %file.addr, metadata !652, metadata !DIExpression()), !dbg !653
  %0 = load i8*, i8** %file.addr, align 8, !dbg !654
  store i8* %0, i8** @file_name, align 8, !dbg !655
  ret void, !dbg !656
}

; Function Attrs: nounwind uwtable
define internal void @close_stdout_set_ignore_EPIPE(i1 zeroext %ignore) #5 !dbg !657 {
entry:
  %ignore.addr = alloca i8, align 1
  %frombool = zext i1 %ignore to i8
  store i8 %frombool, i8* %ignore.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ignore.addr, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load i8, i8* %ignore.addr, align 1, !dbg !662
  %tobool = trunc i8 %0 to i1, !dbg !662
  %frombool1 = zext i1 %tobool to i8, !dbg !663
  store i8 %frombool1, i8* @ignore_EPIPE, align 1, !dbg !663
  ret void, !dbg !664
}

; Function Attrs: nounwind uwtable
define internal void @close_stdout() #5 !dbg !665 {
entry:
  %write_error = alloca i8*, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668
  %call = call i32 @close_stream(%struct._IO_FILE* %0), !dbg !670
  %cmp = icmp ne i32 %call, 0, !dbg !671
  br i1 %cmp, label %land.lhs.true, label %if.end.10, !dbg !672

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* @ignore_EPIPE, align 1, !dbg !673
  %tobool = trunc i8 %1 to i1, !dbg !673
  br i1 %tobool, label %land.lhs.true.1, label %if.then, !dbg !675

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %call2 = call i32* @__errno_location() #17, !dbg !676
  %2 = load i32, i32* %call2, align 4, !dbg !676
  %cmp3 = icmp eq i32 %2, 32, !dbg !678
  br i1 %cmp3, label %if.end.10, label %if.then, !dbg !679

if.then:                                          ; preds = %land.lhs.true.1, %land.lhs.true
  call void @llvm.dbg.declare(metadata i8** %write_error, metadata !680, metadata !DIExpression()), !dbg !682
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0)) #10, !dbg !683
  store i8* %call4, i8** %write_error, align 8, !dbg !682
  %3 = load i8*, i8** @file_name, align 8, !dbg !684
  %tobool5 = icmp ne i8* %3, null, !dbg !684
  br i1 %tobool5, label %if.then.6, label %if.else, !dbg !686

if.then.6:                                        ; preds = %if.then
  %call7 = call i32* @__errno_location() #17, !dbg !687
  %4 = load i32, i32* %call7, align 4, !dbg !687
  %5 = load i8*, i8** @file_name, align 8, !dbg !688
  %call8 = call i8* @quotearg_colon(i8* %5), !dbg !689
  %6 = load i8*, i8** %write_error, align 8, !dbg !690
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i32 0, i32 0), i8* %call8, i8* %6), !dbg !691
  br label %if.end, !dbg !691

if.else:                                          ; preds = %if.then
  %call9 = call i32* @__errno_location() #17, !dbg !692
  %7 = load i32, i32* %call9, align 4, !dbg !692
  %8 = load i8*, i8** %write_error, align 8, !dbg !693
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i32 0, i32 0), i8* %8), !dbg !694
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %9 = load volatile i32, i32* @exit_failure, align 4, !dbg !695
  call void @_exit(i32 %9) #16, !dbg !696
  unreachable, !dbg !696

if.end.10:                                        ; preds = %land.lhs.true.1, %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !697
  %call11 = call i32 @close_stream(%struct._IO_FILE* %10), !dbg !699
  %cmp12 = icmp ne i32 %call11, 0, !dbg !700
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !701

if.then.13:                                       ; preds = %if.end.10
  %11 = load volatile i32, i32* @exit_failure, align 4, !dbg !702
  call void @_exit(i32 %11) #16, !dbg !703
  unreachable, !dbg !703

if.end.14:                                        ; preds = %if.end.10
  ret void, !dbg !704
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

declare void @error(i32, i32, i8*, ...) #2

; Function Attrs: noreturn
declare void @_exit(i32) #9

; Function Attrs: nounwind uwtable
define internal void @set_program_name(i8* %argv0) #5 !dbg !705 {
entry:
  %argv0.addr = alloca i8*, align 8
  %slash = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %argv0, i8** %argv0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %argv0.addr, metadata !706, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.declare(metadata i8** %slash, metadata !708, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.declare(metadata i8** %base, metadata !710, metadata !DIExpression()), !dbg !711
  %0 = load i8*, i8** %argv0.addr, align 8, !dbg !712
  %cmp = icmp eq i8* %0, null, !dbg !714
  br i1 %cmp, label %if.then, label %if.end, !dbg !715

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !716
  %call = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %1), !dbg !718
  call void @abort() #14, !dbg !719
  unreachable, !dbg !719

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %argv0.addr, align 8, !dbg !720
  %call1 = call i8* @strrchr(i8* %2, i32 47) #15, !dbg !721
  store i8* %call1, i8** %slash, align 8, !dbg !722
  %3 = load i8*, i8** %slash, align 8, !dbg !723
  %cmp2 = icmp ne i8* %3, null, !dbg !724
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !723

cond.true:                                        ; preds = %if.end
  %4 = load i8*, i8** %slash, align 8, !dbg !725
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !727
  br label %cond.end, !dbg !723

cond.false:                                       ; preds = %if.end
  %5 = load i8*, i8** %argv0.addr, align 8, !dbg !728
  br label %cond.end, !dbg !723

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %5, %cond.false ], !dbg !723
  store i8* %cond, i8** %base, align 8, !dbg !730
  %6 = load i8*, i8** %base, align 8, !dbg !733
  %7 = load i8*, i8** %argv0.addr, align 8, !dbg !735
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64, !dbg !736
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !736
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !736
  %cmp3 = icmp sge i64 %sub.ptr.sub, 7, !dbg !737
  br i1 %cmp3, label %land.lhs.true, label %if.end.13, !dbg !738

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i8*, i8** %base, align 8, !dbg !739
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 -7, !dbg !741
  %call5 = call i32 @strncmp(i8* %add.ptr4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.42, i32 0, i32 0), i64 7) #15, !dbg !742
  %cmp6 = icmp eq i32 %call5, 0, !dbg !743
  br i1 %cmp6, label %if.then.7, label %if.end.13, !dbg !744

if.then.7:                                        ; preds = %land.lhs.true
  %9 = load i8*, i8** %base, align 8, !dbg !745
  store i8* %9, i8** %argv0.addr, align 8, !dbg !747
  %10 = load i8*, i8** %base, align 8, !dbg !748
  %call8 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.43, i32 0, i32 0), i64 3) #15, !dbg !750
  %cmp9 = icmp eq i32 %call8, 0, !dbg !751
  br i1 %cmp9, label %if.then.10, label %if.end.12, !dbg !752

if.then.10:                                       ; preds = %if.then.7
  %11 = load i8*, i8** %base, align 8, !dbg !753
  %add.ptr11 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !755
  store i8* %add.ptr11, i8** %argv0.addr, align 8, !dbg !756
  %12 = load i8*, i8** %argv0.addr, align 8, !dbg !757
  store i8* %12, i8** @program_invocation_short_name, align 8, !dbg !758
  br label %if.end.12, !dbg !759

if.end.12:                                        ; preds = %if.then.10, %if.then.7
  br label %if.end.13, !dbg !760

if.end.13:                                        ; preds = %if.end.12, %land.lhs.true, %cond.end
  %13 = load i8*, i8** %argv0.addr, align 8, !dbg !761
  store i8* %13, i8** @program_name, align 8, !dbg !762
  %14 = load i8*, i8** %argv0.addr, align 8, !dbg !763
  store i8* %14, i8** @program_invocation_name, align 8, !dbg !764
  ret void, !dbg !765
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: nounwind uwtable
define internal %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) #5 !dbg !766 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %p = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !770, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.declare(metadata i32* %e, metadata !772, metadata !DIExpression()), !dbg !773
  %call = call i32* @__errno_location() #17, !dbg !774
  %0 = load i32, i32* %call, align 4, !dbg !774
  store i32 %0, i32* %e, align 4, !dbg !773
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %p, metadata !775, metadata !DIExpression()), !dbg !776
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !777
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !777
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !777

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !778
  br label %cond.end, !dbg !777

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !780

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !777
  %3 = bitcast %struct.quoting_options* %cond to i8*, !dbg !782
  %call1 = call i8* @xmemdup(i8* %3, i64 56), !dbg !785
  %4 = bitcast i8* %call1 to %struct.quoting_options*, !dbg !785
  store %struct.quoting_options* %4, %struct.quoting_options** %p, align 8, !dbg !776
  %5 = load i32, i32* %e, align 4, !dbg !786
  %call2 = call i32* @__errno_location() #17, !dbg !787
  store i32 %5, i32* %call2, align 4, !dbg !788
  %6 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !789
  ret %struct.quoting_options* %6, !dbg !790
}

; Function Attrs: nounwind uwtable
define internal i32 @get_quoting_style(%struct.quoting_options* %o) #5 !dbg !791 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !794, metadata !DIExpression()), !dbg !795
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !796
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !796
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !796

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !797
  br label %cond.end, !dbg !796

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !799

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !796
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 0, !dbg !801
  %2 = load i32, i32* %style, align 4, !dbg !801
  ret i32 %2, !dbg !804
}

; Function Attrs: nounwind uwtable
define internal void @set_quoting_style(%struct.quoting_options* %o, i32 %s) #5 !dbg !805 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %s.addr = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !808, metadata !DIExpression()), !dbg !809
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !810, metadata !DIExpression()), !dbg !811
  %0 = load i32, i32* %s.addr, align 4, !dbg !812
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !813
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !813
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !813

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !814
  br label %cond.end, !dbg !813

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !816

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !813
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 0, !dbg !818
  store i32 %0, i32* %style, align 4, !dbg !821
  ret void, !dbg !822
}

; Function Attrs: nounwind uwtable
define internal i32 @set_char_quoting(%struct.quoting_options* %o, i8 signext %c, i32 %i) #5 !dbg !823 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %c.addr = alloca i8, align 1
  %i.addr = alloca i32, align 4
  %uc = alloca i8, align 1
  %p = alloca i32*, align 8
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !826, metadata !DIExpression()), !dbg !827
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !828, metadata !DIExpression()), !dbg !829
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata i8* %uc, metadata !832, metadata !DIExpression()), !dbg !833
  %0 = load i8, i8* %c.addr, align 1, !dbg !834
  store i8 %0, i8* %uc, align 1, !dbg !833
  call void @llvm.dbg.declare(metadata i32** %p, metadata !835, metadata !DIExpression()), !dbg !837
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !838
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !838
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !838

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !839
  br label %cond.end, !dbg !838

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !841

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !838
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 2, !dbg !843
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !846
  %3 = load i8, i8* %uc, align 1, !dbg !847
  %conv = zext i8 %3 to i64, !dbg !847
  %div = udiv i64 %conv, 32, !dbg !848
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 %div, !dbg !849
  store i32* %add.ptr, i32** %p, align 8, !dbg !837
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !850, metadata !DIExpression()), !dbg !851
  %4 = load i8, i8* %uc, align 1, !dbg !852
  %conv1 = zext i8 %4 to i64, !dbg !852
  %rem = urem i64 %conv1, 32, !dbg !853
  %conv2 = trunc i64 %rem to i32, !dbg !852
  store i32 %conv2, i32* %shift, align 4, !dbg !851
  call void @llvm.dbg.declare(metadata i32* %r, metadata !854, metadata !DIExpression()), !dbg !855
  %5 = load i32*, i32** %p, align 8, !dbg !856
  %6 = load i32, i32* %5, align 4, !dbg !857
  %7 = load i32, i32* %shift, align 4, !dbg !858
  %shr = lshr i32 %6, %7, !dbg !859
  %and = and i32 %shr, 1, !dbg !860
  store i32 %and, i32* %r, align 4, !dbg !855
  %8 = load i32, i32* %i.addr, align 4, !dbg !861
  %and3 = and i32 %8, 1, !dbg !862
  %9 = load i32, i32* %r, align 4, !dbg !863
  %xor = xor i32 %and3, %9, !dbg !864
  %10 = load i32, i32* %shift, align 4, !dbg !865
  %shl = shl i32 %xor, %10, !dbg !866
  %11 = load i32*, i32** %p, align 8, !dbg !867
  %12 = load i32, i32* %11, align 4, !dbg !868
  %xor4 = xor i32 %12, %shl, !dbg !868
  store i32 %xor4, i32* %11, align 4, !dbg !868
  %13 = load i32, i32* %r, align 4, !dbg !869
  ret i32 %13, !dbg !870
}

; Function Attrs: nounwind uwtable
define internal i32 @set_quoting_flags(%struct.quoting_options* %o, i32 %i) #5 !dbg !871 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %i.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !874, metadata !DIExpression()), !dbg !875
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !876, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.declare(metadata i32* %r, metadata !878, metadata !DIExpression()), !dbg !879
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !880
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !880
  br i1 %tobool, label %if.end, label %if.then, !dbg !882

if.then:                                          ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %o.addr, align 8, !dbg !883
  br label %if.end, !dbg !884

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !885
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %1, i32 0, i32 1, !dbg !886
  %2 = load i32, i32* %flags, align 4, !dbg !886
  store i32 %2, i32* %r, align 4, !dbg !887
  %3 = load i32, i32* %i.addr, align 4, !dbg !888
  %4 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !889
  %flags1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i32 0, i32 1, !dbg !890
  store i32 %3, i32* %flags1, align 4, !dbg !891
  %5 = load i32, i32* %r, align 4, !dbg !892
  ret i32 %5, !dbg !893
}

; Function Attrs: nounwind uwtable
define internal void @set_custom_quoting(%struct.quoting_options* %o, i8* %left_quote, i8* %right_quote) #5 !dbg !894 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !897, metadata !DIExpression()), !dbg !898
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !899, metadata !DIExpression()), !dbg !900
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !901, metadata !DIExpression()), !dbg !902
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !903
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !903
  br i1 %tobool, label %if.end, label %if.then, !dbg !905

if.then:                                          ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %o.addr, align 8, !dbg !906
  br label %if.end, !dbg !907

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !908
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %1, i32 0, i32 0, !dbg !909
  store i32 8, i32* %style, align 4, !dbg !910
  %2 = load i8*, i8** %left_quote.addr, align 8, !dbg !911
  %tobool1 = icmp ne i8* %2, null, !dbg !911
  br i1 %tobool1, label %lor.lhs.false, label %if.then.3, !dbg !913

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i8*, i8** %right_quote.addr, align 8, !dbg !914
  %tobool2 = icmp ne i8* %3, null, !dbg !914
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !916

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  call void @abort() #14, !dbg !917
  unreachable, !dbg !917

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i8*, i8** %left_quote.addr, align 8, !dbg !918
  %5 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !919
  %left_quote5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i32 0, i32 3, !dbg !920
  store i8* %4, i8** %left_quote5, align 8, !dbg !921
  %6 = load i8*, i8** %right_quote.addr, align 8, !dbg !922
  %7 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !923
  %right_quote6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i32 0, i32 4, !dbg !924
  store i8* %6, i8** %right_quote6, align 8, !dbg !925
  ret void, !dbg !926
}

; Function Attrs: nounwind uwtable
define internal i64 @quotearg_buffer(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, %struct.quoting_options* %o) #5 !dbg !927 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %r = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !932, metadata !DIExpression()), !dbg !933
  store i64 %buffersize, i64* %buffersize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %buffersize.addr, metadata !934, metadata !DIExpression()), !dbg !935
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !936, metadata !DIExpression()), !dbg !937
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !938, metadata !DIExpression()), !dbg !939
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %p, metadata !942, metadata !DIExpression()), !dbg !943
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !944
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !944
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !944

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !945
  br label %cond.end, !dbg !944

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !947

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !944
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8, !dbg !949
  call void @llvm.dbg.declare(metadata i32* %e, metadata !952, metadata !DIExpression()), !dbg !953
  %call = call i32* @__errno_location() #17, !dbg !954
  %2 = load i32, i32* %call, align 4, !dbg !954
  store i32 %2, i32* %e, align 4, !dbg !953
  call void @llvm.dbg.declare(metadata i64* %r, metadata !955, metadata !DIExpression()), !dbg !956
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !957
  %4 = load i64, i64* %buffersize.addr, align 8, !dbg !958
  %5 = load i8*, i8** %arg.addr, align 8, !dbg !959
  %6 = load i64, i64* %argsize.addr, align 8, !dbg !960
  %7 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !961
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i32 0, i32 0, !dbg !962
  %8 = load i32, i32* %style, align 4, !dbg !962
  %9 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !963
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 1, !dbg !964
  %10 = load i32, i32* %flags, align 4, !dbg !964
  %11 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !965
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 2, !dbg !966
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !965
  %12 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !967
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 3, !dbg !968
  %13 = load i8*, i8** %left_quote, align 8, !dbg !968
  %14 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !969
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 4, !dbg !970
  %15 = load i8*, i8** %right_quote, align 8, !dbg !970
  %call1 = call i64 @quotearg_buffer_restyled(i8* %3, i64 %4, i8* %5, i64 %6, i32 %8, i32 %10, i32* %arraydecay, i8* %13, i8* %15), !dbg !971
  store i64 %call1, i64* %r, align 8, !dbg !956
  %16 = load i32, i32* %e, align 4, !dbg !972
  %call2 = call i32* @__errno_location() #17, !dbg !973
  store i32 %16, i32* %call2, align 4, !dbg !974
  %17 = load i64, i64* %r, align 8, !dbg !975
  ret i64 %17, !dbg !976
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_alloc(i8* %arg, i64 %argsize, %struct.quoting_options* %o) #5 !dbg !977 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !980, metadata !DIExpression()), !dbg !981
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !982, metadata !DIExpression()), !dbg !983
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !984, metadata !DIExpression()), !dbg !985
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !986
  %1 = load i64, i64* %argsize.addr, align 8, !dbg !987
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !988
  %call = call i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* null, %struct.quoting_options* %2), !dbg !989
  ret i8* %call, !dbg !990
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_alloc_mem(i8* %arg, i64 %argsize, i64* %size, %struct.quoting_options* %o) #5 !dbg !991 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %size.addr = alloca i64*, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %flags = alloca i32, align 4
  %bufsize = alloca i64, align 8
  %buf = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !994, metadata !DIExpression()), !dbg !995
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !996, metadata !DIExpression()), !dbg !997
  store i64* %size, i64** %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %size.addr, metadata !998, metadata !DIExpression()), !dbg !999
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !1000, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %p, metadata !1002, metadata !DIExpression()), !dbg !1003
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1004
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !1004
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1004

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1005
  br label %cond.end, !dbg !1004

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1007

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !1004
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8, !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %e, metadata !1012, metadata !DIExpression()), !dbg !1013
  %call = call i32* @__errno_location() #17, !dbg !1014
  %2 = load i32, i32* %call, align 4, !dbg !1014
  store i32 %2, i32* %e, align 4, !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !1015, metadata !DIExpression()), !dbg !1016
  %3 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1017
  %flags1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i32 0, i32 1, !dbg !1018
  %4 = load i32, i32* %flags1, align 4, !dbg !1018
  %5 = load i64*, i64** %size.addr, align 8, !dbg !1019
  %tobool2 = icmp ne i64* %5, null, !dbg !1019
  %cond3 = select i1 %tobool2, i32 0, i32 1, !dbg !1019
  %or = or i32 %4, %cond3, !dbg !1020
  store i32 %or, i32* %flags, align 4, !dbg !1016
  call void @llvm.dbg.declare(metadata i64* %bufsize, metadata !1021, metadata !DIExpression()), !dbg !1022
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1023
  %7 = load i64, i64* %argsize.addr, align 8, !dbg !1024
  %8 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1025
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %8, i32 0, i32 0, !dbg !1026
  %9 = load i32, i32* %style, align 4, !dbg !1026
  %10 = load i32, i32* %flags, align 4, !dbg !1027
  %11 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1028
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 2, !dbg !1029
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !1028
  %12 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1030
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 3, !dbg !1031
  %13 = load i8*, i8** %left_quote, align 8, !dbg !1031
  %14 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1032
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 4, !dbg !1033
  %15 = load i8*, i8** %right_quote, align 8, !dbg !1033
  %call4 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %6, i64 %7, i32 %9, i32 %10, i32* %arraydecay, i8* %13, i8* %15), !dbg !1034
  %add = add i64 %call4, 1, !dbg !1035
  store i64 %add, i64* %bufsize, align 8, !dbg !1022
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !1036, metadata !DIExpression()), !dbg !1037
  %16 = load i64, i64* %bufsize, align 8, !dbg !1038
  %call5 = call noalias i8* @xcharalloc(i64 %16), !dbg !1039
  store i8* %call5, i8** %buf, align 8, !dbg !1037
  %17 = load i8*, i8** %buf, align 8, !dbg !1040
  %18 = load i64, i64* %bufsize, align 8, !dbg !1041
  %19 = load i8*, i8** %arg.addr, align 8, !dbg !1042
  %20 = load i64, i64* %argsize.addr, align 8, !dbg !1043
  %21 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1044
  %style6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 0, !dbg !1045
  %22 = load i32, i32* %style6, align 4, !dbg !1045
  %23 = load i32, i32* %flags, align 4, !dbg !1046
  %24 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1047
  %quote_these_too7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 2, !dbg !1048
  %arraydecay8 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too7, i32 0, i32 0, !dbg !1047
  %25 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1049
  %left_quote9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %25, i32 0, i32 3, !dbg !1050
  %26 = load i8*, i8** %left_quote9, align 8, !dbg !1050
  %27 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1051
  %right_quote10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 4, !dbg !1052
  %28 = load i8*, i8** %right_quote10, align 8, !dbg !1052
  %call11 = call i64 @quotearg_buffer_restyled(i8* %17, i64 %18, i8* %19, i64 %20, i32 %22, i32 %23, i32* %arraydecay8, i8* %26, i8* %28), !dbg !1053
  %29 = load i32, i32* %e, align 4, !dbg !1054
  %call12 = call i32* @__errno_location() #17, !dbg !1055
  store i32 %29, i32* %call12, align 4, !dbg !1056
  %30 = load i64*, i64** %size.addr, align 8, !dbg !1057
  %tobool13 = icmp ne i64* %30, null, !dbg !1057
  br i1 %tobool13, label %if.then, label %if.end, !dbg !1059

if.then:                                          ; preds = %cond.end
  %31 = load i64, i64* %bufsize, align 8, !dbg !1060
  %sub = sub i64 %31, 1, !dbg !1061
  %32 = load i64*, i64** %size.addr, align 8, !dbg !1062
  store i64 %sub, i64* %32, align 8, !dbg !1063
  br label %if.end, !dbg !1064

if.end:                                           ; preds = %if.then, %cond.end
  %33 = load i8*, i8** %buf, align 8, !dbg !1065
  ret i8* %33, !dbg !1066
}

; Function Attrs: nounwind uwtable
define internal void @quotearg_free() #5 !dbg !1067 {
entry:
  %sv = alloca %struct.slotvec*, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %sv, metadata !1068, metadata !DIExpression()), !dbg !1069
  %0 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1070
  store %struct.slotvec* %0, %struct.slotvec** %sv, align 8, !dbg !1069
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1071, metadata !DIExpression()), !dbg !1072
  store i32 1, i32* %i, align 4, !dbg !1073
  br label %for.cond, !dbg !1075

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !1076
  %2 = load i32, i32* @nslots, align 4, !dbg !1080
  %cmp = icmp ult i32 %1, %2, !dbg !1081
  br i1 %cmp, label %for.body, label %for.end, !dbg !1082

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !1083
  %idxprom = zext i32 %3 to i64, !dbg !1084
  %4 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !1084
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %4, i64 %idxprom, !dbg !1084
  %val = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 1, !dbg !1085
  %5 = load i8*, i8** %val, align 8, !dbg !1085
  call void @free(i8* %5) #10, !dbg !1086
  br label %for.inc, !dbg !1086

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !1087
  %inc = add i32 %6, 1, !dbg !1087
  store i32 %inc, i32* %i, align 4, !dbg !1087
  br label %for.cond, !dbg !1088

for.end:                                          ; preds = %for.cond
  %7 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !1089
  %arrayidx1 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %7, i64 0, !dbg !1089
  %val2 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx1, i32 0, i32 1, !dbg !1091
  %8 = load i8*, i8** %val2, align 8, !dbg !1091
  %cmp3 = icmp ne i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), !dbg !1092
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1093

if.then:                                          ; preds = %for.end
  %9 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !1094
  %arrayidx4 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 0, !dbg !1094
  %val5 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx4, i32 0, i32 1, !dbg !1096
  %10 = load i8*, i8** %val5, align 8, !dbg !1096
  call void @free(i8* %10) #10, !dbg !1097
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !1098
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !1099
  br label %if.end, !dbg !1100

if.end:                                           ; preds = %if.then, %for.end
  %11 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !1101
  %cmp6 = icmp ne %struct.slotvec* %11, @slotvec0, !dbg !1103
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1104

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !1105
  %13 = bitcast %struct.slotvec* %12 to i8*, !dbg !1105
  call void @free(i8* %13) #10, !dbg !1107
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1108
  br label %if.end.8, !dbg !1109

if.end.8:                                         ; preds = %if.then.7, %if.end
  store i32 1, i32* @nslots, align 4, !dbg !1110
  ret void, !dbg !1111
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n(i32 %n, i8* %arg) #5 !dbg !1112 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1115, metadata !DIExpression()), !dbg !1116
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1117, metadata !DIExpression()), !dbg !1118
  %0 = load i32, i32* %n.addr, align 4, !dbg !1119
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1120
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !1121
  ret i8* %call, !dbg !1122
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_mem(i32 %n, i8* %arg, i64 %argsize) #5 !dbg !1123 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1126, metadata !DIExpression()), !dbg !1127
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1128, metadata !DIExpression()), !dbg !1129
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1130, metadata !DIExpression()), !dbg !1131
  %0 = load i32, i32* %n.addr, align 4, !dbg !1132
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1133
  %2 = load i64, i64* %argsize.addr, align 8, !dbg !1134
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* @default_quoting_options), !dbg !1135
  ret i8* %call, !dbg !1136
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg(i8* %arg) #5 !dbg !1137 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1140, metadata !DIExpression()), !dbg !1141
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1142
  %call = call i8* @quotearg_n(i32 0, i8* %0), !dbg !1143
  ret i8* %call, !dbg !1144
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_mem(i8* %arg, i64 %argsize) #5 !dbg !1145 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1148, metadata !DIExpression()), !dbg !1149
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1150, metadata !DIExpression()), !dbg !1151
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1152
  %1 = load i64, i64* %argsize.addr, align 8, !dbg !1153
  %call = call i8* @quotearg_n_mem(i32 0, i8* %0, i64 %1), !dbg !1154
  ret i8* %call, !dbg !1155
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) #5 !dbg !1156 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1159, metadata !DIExpression()), !dbg !1160
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !1161, metadata !DIExpression()), !dbg !1162
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1163, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %o, metadata !1165, metadata !DIExpression()), !dbg !1166
  %0 = load i32, i32* %s.addr, align 4, !dbg !1167
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !1168
  %1 = load i32, i32* %n.addr, align 4, !dbg !1169
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !1170
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 -1, %struct.quoting_options* %o), !dbg !1171
  ret i8* %call, !dbg !1172
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_style_mem(i32 %n, i32 %s, i8* %arg, i64 %argsize) #5 !dbg !1173 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1176, metadata !DIExpression()), !dbg !1177
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %o, metadata !1184, metadata !DIExpression()), !dbg !1185
  %0 = load i32, i32* %s.addr, align 4, !dbg !1186
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !1187
  %1 = load i32, i32* %n.addr, align 4, !dbg !1188
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !1189
  %3 = load i64, i64* %argsize.addr, align 8, !dbg !1190
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 %3, %struct.quoting_options* %o), !dbg !1191
  ret i8* %call, !dbg !1192
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_style(i32 %s, i8* %arg) #5 !dbg !1193 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !1196, metadata !DIExpression()), !dbg !1197
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1198, metadata !DIExpression()), !dbg !1199
  %0 = load i32, i32* %s.addr, align 4, !dbg !1200
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1201
  %call = call i8* @quotearg_n_style(i32 0, i32 %0, i8* %1), !dbg !1202
  ret i8* %call, !dbg !1203
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_style_mem(i32 %s, i8* %arg, i64 %argsize) #5 !dbg !1204 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !1207, metadata !DIExpression()), !dbg !1208
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1209, metadata !DIExpression()), !dbg !1210
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1211, metadata !DIExpression()), !dbg !1212
  %0 = load i32, i32* %s.addr, align 4, !dbg !1213
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1214
  %2 = load i64, i64* %argsize.addr, align 8, !dbg !1215
  %call = call i8* @quotearg_n_style_mem(i32 0, i32 %0, i8* %1, i64 %2), !dbg !1216
  ret i8* %call, !dbg !1217
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_char_mem(i8* %arg, i64 %argsize, i8 signext %ch) #5 !dbg !1218 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %ch.addr = alloca i8, align 1
  %options = alloca %struct.quoting_options, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1221, metadata !DIExpression()), !dbg !1222
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1223, metadata !DIExpression()), !dbg !1224
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ch.addr, metadata !1225, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %options, metadata !1227, metadata !DIExpression()), !dbg !1228
  %0 = bitcast %struct.quoting_options* %options to i8*, !dbg !1229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !1229
  %1 = load i8, i8* %ch.addr, align 1, !dbg !1230
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %1, i32 1), !dbg !1231
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !1232
  %3 = load i64, i64* %argsize.addr, align 8, !dbg !1233
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* %options), !dbg !1234
  ret i8* %call1, !dbg !1235
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_char(i8* %arg, i8 signext %ch) #5 !dbg !1236 {
entry:
  %arg.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1239, metadata !DIExpression()), !dbg !1240
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ch.addr, metadata !1241, metadata !DIExpression()), !dbg !1242
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1243
  %1 = load i8, i8* %ch.addr, align 1, !dbg !1244
  %call = call i8* @quotearg_char_mem(i8* %0, i64 -1, i8 signext %1), !dbg !1245
  ret i8* %call, !dbg !1246
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_colon(i8* %arg) #5 !dbg !1247 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1248, metadata !DIExpression()), !dbg !1249
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1250
  %call = call i8* @quotearg_char(i8* %0, i8 signext 58), !dbg !1251
  ret i8* %call, !dbg !1252
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_colon_mem(i8* %arg, i64 %argsize) #5 !dbg !1253 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1254, metadata !DIExpression()), !dbg !1255
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1256, metadata !DIExpression()), !dbg !1257
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1258
  %1 = load i64, i64* %argsize.addr, align 8, !dbg !1259
  %call = call i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext 58), !dbg !1260
  ret i8* %call, !dbg !1261
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_custom(i32 %n, i8* %left_quote, i8* %right_quote, i8* %arg) #5 !dbg !1262 {
entry:
  %n.addr = alloca i32, align 4
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1265, metadata !DIExpression()), !dbg !1266
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1267, metadata !DIExpression()), !dbg !1268
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1269, metadata !DIExpression()), !dbg !1270
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1271, metadata !DIExpression()), !dbg !1272
  %0 = load i32, i32* %n.addr, align 4, !dbg !1273
  %1 = load i8*, i8** %left_quote.addr, align 8, !dbg !1274
  %2 = load i8*, i8** %right_quote.addr, align 8, !dbg !1275
  %3 = load i8*, i8** %arg.addr, align 8, !dbg !1276
  %call = call i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 -1), !dbg !1277
  ret i8* %call, !dbg !1278
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_custom_mem(i32 %n, i8* %left_quote, i8* %right_quote, i8* %arg, i64 %argsize) #5 !dbg !1279 {
entry:
  %n.addr = alloca i32, align 4
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1282, metadata !DIExpression()), !dbg !1283
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1284, metadata !DIExpression()), !dbg !1285
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1286, metadata !DIExpression()), !dbg !1287
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1288, metadata !DIExpression()), !dbg !1289
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1290, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %o, metadata !1292, metadata !DIExpression()), !dbg !1293
  %0 = bitcast %struct.quoting_options* %o to i8*, !dbg !1294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !1294
  %1 = load i8*, i8** %left_quote.addr, align 8, !dbg !1295
  %2 = load i8*, i8** %right_quote.addr, align 8, !dbg !1296
  call void @set_custom_quoting(%struct.quoting_options* %o, i8* %1, i8* %2), !dbg !1297
  %3 = load i32, i32* %n.addr, align 4, !dbg !1298
  %4 = load i8*, i8** %arg.addr, align 8, !dbg !1299
  %5 = load i64, i64* %argsize.addr, align 8, !dbg !1300
  %call = call i8* @quotearg_n_options(i32 %3, i8* %4, i64 %5, %struct.quoting_options* %o), !dbg !1301
  ret i8* %call, !dbg !1302
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_custom(i8* %left_quote, i8* %right_quote, i8* %arg) #5 !dbg !1303 {
entry:
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1306, metadata !DIExpression()), !dbg !1307
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1308, metadata !DIExpression()), !dbg !1309
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1310, metadata !DIExpression()), !dbg !1311
  %0 = load i8*, i8** %left_quote.addr, align 8, !dbg !1312
  %1 = load i8*, i8** %right_quote.addr, align 8, !dbg !1313
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !1314
  %call = call i8* @quotearg_n_custom(i32 0, i8* %0, i8* %1, i8* %2), !dbg !1315
  ret i8* %call, !dbg !1316
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_custom_mem(i8* %left_quote, i8* %right_quote, i8* %arg, i64 %argsize) #5 !dbg !1317 {
entry:
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1320, metadata !DIExpression()), !dbg !1321
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1322, metadata !DIExpression()), !dbg !1323
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1324, metadata !DIExpression()), !dbg !1325
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1326, metadata !DIExpression()), !dbg !1327
  %0 = load i8*, i8** %left_quote.addr, align 8, !dbg !1328
  %1 = load i8*, i8** %right_quote.addr, align 8, !dbg !1329
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !1330
  %3 = load i64, i64* %argsize.addr, align 8, !dbg !1331
  %call = call i8* @quotearg_n_custom_mem(i32 0, i8* %0, i8* %1, i8* %2, i64 %3), !dbg !1332
  ret i8* %call, !dbg !1333
}

; Function Attrs: nounwind uwtable
define internal i8* @quote_n_mem(i32 %n, i8* %arg, i64 %argsize) #5 !dbg !1334 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1337, metadata !DIExpression()), !dbg !1338
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1339, metadata !DIExpression()), !dbg !1340
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1341, metadata !DIExpression()), !dbg !1342
  %0 = load i32, i32* %n.addr, align 4, !dbg !1343
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1344
  %2 = load i64, i64* %argsize.addr, align 8, !dbg !1345
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* @quote_quoting_options), !dbg !1346
  ret i8* %call, !dbg !1347
}

; Function Attrs: nounwind uwtable
define internal i8* @quote_mem(i8* %arg, i64 %argsize) #5 !dbg !1348 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1351, metadata !DIExpression()), !dbg !1352
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1353, metadata !DIExpression()), !dbg !1354
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1355
  %1 = load i64, i64* %argsize.addr, align 8, !dbg !1356
  %call = call i8* @quote_n_mem(i32 0, i8* %0, i64 %1), !dbg !1357
  ret i8* %call, !dbg !1358
}

; Function Attrs: nounwind uwtable
define internal i8* @quote_n(i32 %n, i8* %arg) #5 !dbg !1359 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1362, metadata !DIExpression()), !dbg !1363
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1364, metadata !DIExpression()), !dbg !1365
  %0 = load i32, i32* %n.addr, align 4, !dbg !1366
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1367
  %call = call i8* @quote_n_mem(i32 %0, i8* %1, i64 -1), !dbg !1368
  ret i8* %call, !dbg !1369
}

; Function Attrs: nounwind uwtable
define internal i8* @quote(i8* %arg) #5 !dbg !1370 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1373, metadata !DIExpression()), !dbg !1374
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1375
  %call = call i8* @quote_n(i32 0, i8* %0), !dbg !1376
  ret i8* %call, !dbg !1377
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) #3

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) #6

; Function Attrs: nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, i32 %quoting_style, i32 %flags, i32* %quote_these_too, i8* %left_quote, i8* %right_quote) #5 !dbg !1378 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %quoting_style.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %quote_these_too.addr = alloca i32*, align 8
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %quote_string = alloca i8*, align 8
  %quote_string_len = alloca i64, align 8
  %backslash_escapes = alloca i8, align 1
  %unibyte_locale = alloca i8, align 1
  %elide_outer_quotes = alloca i8, align 1
  %c = alloca i8, align 1
  %esc = alloca i8, align 1
  %is_right_quote = alloca i8, align 1
  %m = alloca i64, align 8
  %printable = alloca i8, align 1
  %mbstate = alloca %struct.__mbstate_t, align 4
  %w = alloca i32, align 4
  %bytes = alloca i64, align 8
  %j = alloca i64, align 8
  %ilim = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1383, metadata !DIExpression()), !dbg !1384
  store i64 %buffersize, i64* %buffersize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %buffersize.addr, metadata !1385, metadata !DIExpression()), !dbg !1386
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1387, metadata !DIExpression()), !dbg !1388
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1389, metadata !DIExpression()), !dbg !1390
  store i32 %quoting_style, i32* %quoting_style.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %quoting_style.addr, metadata !1391, metadata !DIExpression()), !dbg !1392
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1393, metadata !DIExpression()), !dbg !1394
  store i32* %quote_these_too, i32** %quote_these_too.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %quote_these_too.addr, metadata !1395, metadata !DIExpression()), !dbg !1396
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1399, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1401, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.declare(metadata i64* %len, metadata !1403, metadata !DIExpression()), !dbg !1404
  store i64 0, i64* %len, align 8, !dbg !1404
  call void @llvm.dbg.declare(metadata i8** %quote_string, metadata !1405, metadata !DIExpression()), !dbg !1406
  store i8* null, i8** %quote_string, align 8, !dbg !1406
  call void @llvm.dbg.declare(metadata i64* %quote_string_len, metadata !1407, metadata !DIExpression()), !dbg !1408
  store i64 0, i64* %quote_string_len, align 8, !dbg !1408
  call void @llvm.dbg.declare(metadata i8* %backslash_escapes, metadata !1409, metadata !DIExpression()), !dbg !1410
  store i8 0, i8* %backslash_escapes, align 1, !dbg !1410
  call void @llvm.dbg.declare(metadata i8* %unibyte_locale, metadata !1411, metadata !DIExpression()), !dbg !1412
  %call = call i64 @__ctype_get_mb_cur_max() #10, !dbg !1413
  %cmp = icmp eq i64 %call, 1, !dbg !1414
  %frombool = zext i1 %cmp to i8, !dbg !1412
  store i8 %frombool, i8* %unibyte_locale, align 1, !dbg !1412
  call void @llvm.dbg.declare(metadata i8* %elide_outer_quotes, metadata !1415, metadata !DIExpression()), !dbg !1416
  %0 = load i32, i32* %flags.addr, align 4, !dbg !1417
  %and = and i32 %0, 2, !dbg !1418
  %cmp1 = icmp ne i32 %and, 0, !dbg !1419
  %frombool2 = zext i1 %cmp1 to i8, !dbg !1416
  store i8 %frombool2, i8* %elide_outer_quotes, align 1, !dbg !1416
  %1 = load i32, i32* %quoting_style.addr, align 4, !dbg !1420
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.3
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.8
    i32 7, label %sw.bb.8
    i32 8, label %sw.bb.8
    i32 1, label %sw.bb.26
    i32 2, label %sw.bb.27
    i32 0, label %sw.bb.38
  ], !dbg !1421

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %quoting_style.addr, align 4, !dbg !1422
  store i8 1, i8* %elide_outer_quotes, align 1, !dbg !1424
  br label %sw.bb.3, !dbg !1425

sw.bb.3:                                          ; preds = %sw.bb, %entry
  %2 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1426
  %tobool = trunc i8 %2 to i1, !dbg !1426
  br i1 %tobool, label %if.end.6, label %if.then, !dbg !1428

if.then:                                          ; preds = %sw.bb.3
  br label %do.body, !dbg !1429

do.body:                                          ; preds = %if.then
  %3 = load i64, i64* %len, align 8, !dbg !1430
  %4 = load i64, i64* %buffersize.addr, align 8, !dbg !1430
  %cmp4 = icmp ult i64 %3, %4, !dbg !1430
  br i1 %cmp4, label %if.then.5, label %if.end, !dbg !1434

if.then.5:                                        ; preds = %do.body
  %5 = load i64, i64* %len, align 8, !dbg !1435
  %6 = load i8*, i8** %buffer.addr, align 8, !dbg !1435
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %5, !dbg !1435
  store i8 34, i8* %arrayidx, align 1, !dbg !1435
  br label %if.end, !dbg !1435

if.end:                                           ; preds = %if.then.5, %do.body
  %7 = load i64, i64* %len, align 8, !dbg !1437
  %inc = add i64 %7, 1, !dbg !1437
  store i64 %inc, i64* %len, align 8, !dbg !1437
  br label %do.end, !dbg !1437

do.end:                                           ; preds = %if.end
  br label %if.end.6, !dbg !1440

if.end.6:                                         ; preds = %do.end, %sw.bb.3
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1442
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.60, i32 0, i32 0), i8** %quote_string, align 8, !dbg !1443
  store i64 1, i64* %quote_string_len, align 8, !dbg !1444
  br label %sw.epilog, !dbg !1445

sw.bb.7:                                          ; preds = %entry
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1446
  store i8 0, i8* %elide_outer_quotes, align 1, !dbg !1447
  br label %sw.epilog, !dbg !1448

sw.bb.8:                                          ; preds = %entry, %entry, %entry
  %8 = load i32, i32* %quoting_style.addr, align 4, !dbg !1449
  %cmp9 = icmp ne i32 %8, 8, !dbg !1452
  br i1 %cmp9, label %if.then.10, label %if.end.13, !dbg !1453

if.then.10:                                       ; preds = %sw.bb.8
  %9 = load i32, i32* %quoting_style.addr, align 4, !dbg !1454
  %call11 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.62, i32 0, i32 0), i32 %9), !dbg !1456
  store i8* %call11, i8** %left_quote.addr, align 8, !dbg !1457
  %10 = load i32, i32* %quoting_style.addr, align 4, !dbg !1458
  %call12 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i32 0, i32 0), i32 %10), !dbg !1459
  store i8* %call12, i8** %right_quote.addr, align 8, !dbg !1460
  br label %if.end.13, !dbg !1461

if.end.13:                                        ; preds = %if.then.10, %sw.bb.8
  %11 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1462
  %tobool14 = trunc i8 %11 to i1, !dbg !1462
  br i1 %tobool14, label %if.end.24, label %if.then.15, !dbg !1464

if.then.15:                                       ; preds = %if.end.13
  %12 = load i8*, i8** %left_quote.addr, align 8, !dbg !1465
  store i8* %12, i8** %quote_string, align 8, !dbg !1467
  br label %for.cond, !dbg !1468

for.cond:                                         ; preds = %for.inc, %if.then.15
  %13 = load i8*, i8** %quote_string, align 8, !dbg !1469
  %14 = load i8, i8* %13, align 1, !dbg !1473
  %tobool16 = icmp ne i8 %14, 0, !dbg !1474
  br i1 %tobool16, label %for.body, label %for.end, !dbg !1474

for.body:                                         ; preds = %for.cond
  br label %do.body.17, !dbg !1475

do.body.17:                                       ; preds = %for.body
  %15 = load i64, i64* %len, align 8, !dbg !1476
  %16 = load i64, i64* %buffersize.addr, align 8, !dbg !1476
  %cmp18 = icmp ult i64 %15, %16, !dbg !1476
  br i1 %cmp18, label %if.then.19, label %if.end.21, !dbg !1480

if.then.19:                                       ; preds = %do.body.17
  %17 = load i8*, i8** %quote_string, align 8, !dbg !1481
  %18 = load i8, i8* %17, align 1, !dbg !1481
  %19 = load i64, i64* %len, align 8, !dbg !1481
  %20 = load i8*, i8** %buffer.addr, align 8, !dbg !1481
  %arrayidx20 = getelementptr inbounds i8, i8* %20, i64 %19, !dbg !1481
  store i8 %18, i8* %arrayidx20, align 1, !dbg !1481
  br label %if.end.21, !dbg !1481

if.end.21:                                        ; preds = %if.then.19, %do.body.17
  %21 = load i64, i64* %len, align 8, !dbg !1483
  %inc22 = add i64 %21, 1, !dbg !1483
  store i64 %inc22, i64* %len, align 8, !dbg !1483
  br label %do.end.23, !dbg !1483

do.end.23:                                        ; preds = %if.end.21
  br label %for.inc, !dbg !1486

for.inc:                                          ; preds = %do.end.23
  %22 = load i8*, i8** %quote_string, align 8, !dbg !1488
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1, !dbg !1488
  store i8* %incdec.ptr, i8** %quote_string, align 8, !dbg !1488
  br label %for.cond, !dbg !1489

for.end:                                          ; preds = %for.cond
  br label %if.end.24, !dbg !1490

if.end.24:                                        ; preds = %for.end, %if.end.13
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1491
  %23 = load i8*, i8** %right_quote.addr, align 8, !dbg !1492
  store i8* %23, i8** %quote_string, align 8, !dbg !1493
  %24 = load i8*, i8** %quote_string, align 8, !dbg !1494
  %call25 = call i64 @strlen(i8* %24) #15, !dbg !1495
  store i64 %call25, i64* %quote_string_len, align 8, !dbg !1496
  br label %sw.epilog, !dbg !1497

sw.bb.26:                                         ; preds = %entry
  store i32 2, i32* %quoting_style.addr, align 4, !dbg !1498
  store i8 1, i8* %elide_outer_quotes, align 1, !dbg !1499
  br label %sw.bb.27, !dbg !1500

sw.bb.27:                                         ; preds = %sw.bb.26, %entry
  %25 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1501
  %tobool28 = trunc i8 %25 to i1, !dbg !1501
  br i1 %tobool28, label %if.end.37, label %if.then.29, !dbg !1503

if.then.29:                                       ; preds = %sw.bb.27
  br label %do.body.30, !dbg !1504

do.body.30:                                       ; preds = %if.then.29
  %26 = load i64, i64* %len, align 8, !dbg !1505
  %27 = load i64, i64* %buffersize.addr, align 8, !dbg !1505
  %cmp31 = icmp ult i64 %26, %27, !dbg !1505
  br i1 %cmp31, label %if.then.32, label %if.end.34, !dbg !1509

if.then.32:                                       ; preds = %do.body.30
  %28 = load i64, i64* %len, align 8, !dbg !1510
  %29 = load i8*, i8** %buffer.addr, align 8, !dbg !1510
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !1510
  store i8 39, i8* %arrayidx33, align 1, !dbg !1510
  br label %if.end.34, !dbg !1510

if.end.34:                                        ; preds = %if.then.32, %do.body.30
  %30 = load i64, i64* %len, align 8, !dbg !1512
  %inc35 = add i64 %30, 1, !dbg !1512
  store i64 %inc35, i64* %len, align 8, !dbg !1512
  br label %do.end.36, !dbg !1512

do.end.36:                                        ; preds = %if.end.34
  br label %if.end.37, !dbg !1515

if.end.37:                                        ; preds = %do.end.36, %sw.bb.27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i32 0, i32 0), i8** %quote_string, align 8, !dbg !1517
  store i64 1, i64* %quote_string_len, align 8, !dbg !1518
  br label %sw.epilog, !dbg !1519

sw.bb.38:                                         ; preds = %entry
  store i8 0, i8* %elide_outer_quotes, align 1, !dbg !1520
  br label %sw.epilog, !dbg !1521

sw.default:                                       ; preds = %entry
  call void @abort() #14, !dbg !1522
  unreachable, !dbg !1522

sw.epilog:                                        ; preds = %sw.bb.38, %if.end.37, %if.end.24, %sw.bb.7, %if.end.6
  store i64 0, i64* %i, align 8, !dbg !1523
  br label %for.cond.39, !dbg !1525

for.cond.39:                                      ; preds = %for.inc.483, %sw.epilog
  %31 = load i64, i64* %argsize.addr, align 8, !dbg !1526
  %cmp40 = icmp eq i64 %31, -1, !dbg !1530
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !1531

cond.true:                                        ; preds = %for.cond.39
  %32 = load i64, i64* %i, align 8, !dbg !1532
  %33 = load i8*, i8** %arg.addr, align 8, !dbg !1534
  %arrayidx41 = getelementptr inbounds i8, i8* %33, i64 %32, !dbg !1534
  %34 = load i8, i8* %arrayidx41, align 1, !dbg !1534
  %conv = sext i8 %34 to i32, !dbg !1534
  %cmp42 = icmp eq i32 %conv, 0, !dbg !1535
  %conv43 = zext i1 %cmp42 to i32, !dbg !1535
  br label %cond.end, !dbg !1531

cond.false:                                       ; preds = %for.cond.39
  %35 = load i64, i64* %i, align 8, !dbg !1536
  %36 = load i64, i64* %argsize.addr, align 8, !dbg !1538
  %cmp44 = icmp eq i64 %35, %36, !dbg !1539
  %conv45 = zext i1 %cmp44 to i32, !dbg !1539
  br label %cond.end, !dbg !1531

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv43, %cond.true ], [ %conv45, %cond.false ], !dbg !1531
  %tobool46 = icmp ne i32 %cond, 0, !dbg !1540
  %lnot = xor i1 %tobool46, true, !dbg !1540
  br i1 %lnot, label %for.body.47, label %for.end.485, !dbg !1543

for.body.47:                                      ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i8* %c, metadata !1544, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.declare(metadata i8* %esc, metadata !1547, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.declare(metadata i8* %is_right_quote, metadata !1549, metadata !DIExpression()), !dbg !1550
  store i8 0, i8* %is_right_quote, align 1, !dbg !1550
  %37 = load i8, i8* %backslash_escapes, align 1, !dbg !1551
  %tobool48 = trunc i8 %37 to i1, !dbg !1551
  br i1 %tobool48, label %land.lhs.true, label %if.end.72, !dbg !1553

land.lhs.true:                                    ; preds = %for.body.47
  %38 = load i64, i64* %quote_string_len, align 8, !dbg !1554
  %tobool50 = icmp ne i64 %38, 0, !dbg !1554
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.72, !dbg !1556

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %39 = load i64, i64* %i, align 8, !dbg !1557
  %40 = load i64, i64* %quote_string_len, align 8, !dbg !1558
  %add = add i64 %39, %40, !dbg !1559
  %41 = load i64, i64* %argsize.addr, align 8, !dbg !1560
  %cmp52 = icmp eq i64 %41, -1, !dbg !1561
  br i1 %cmp52, label %land.lhs.true.54, label %cond.false.59, !dbg !1562

land.lhs.true.54:                                 ; preds = %land.lhs.true.51
  %42 = load i64, i64* %quote_string_len, align 8, !dbg !1563
  %cmp55 = icmp ult i64 1, %42, !dbg !1564
  br i1 %cmp55, label %cond.true.57, label %cond.false.59, !dbg !1560

cond.true.57:                                     ; preds = %land.lhs.true.54
  %43 = load i8*, i8** %arg.addr, align 8, !dbg !1565
  %call58 = call i64 @strlen(i8* %43) #15, !dbg !1566
  store i64 %call58, i64* %argsize.addr, align 8, !dbg !1567
  br label %cond.end.60, !dbg !1560

cond.false.59:                                    ; preds = %land.lhs.true.54, %land.lhs.true.51
  %44 = load i64, i64* %argsize.addr, align 8, !dbg !1568
  br label %cond.end.60, !dbg !1560

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.57
  %cond61 = phi i64 [ %call58, %cond.true.57 ], [ %44, %cond.false.59 ], !dbg !1560
  %cmp62 = icmp ule i64 %add, %cond61, !dbg !1569
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.72, !dbg !1572

land.lhs.true.64:                                 ; preds = %cond.end.60
  %45 = load i8*, i8** %arg.addr, align 8, !dbg !1573
  %46 = load i64, i64* %i, align 8, !dbg !1574
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !1575
  %47 = load i8*, i8** %quote_string, align 8, !dbg !1576
  %48 = load i64, i64* %quote_string_len, align 8, !dbg !1577
  %call65 = call i32 @memcmp(i8* %add.ptr, i8* %47, i64 %48) #15, !dbg !1578
  %cmp66 = icmp eq i32 %call65, 0, !dbg !1579
  br i1 %cmp66, label %if.then.68, label %if.end.72, !dbg !1580

if.then.68:                                       ; preds = %land.lhs.true.64
  %49 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1581
  %tobool69 = trunc i8 %49 to i1, !dbg !1581
  br i1 %tobool69, label %if.then.70, label %if.end.71, !dbg !1584

if.then.70:                                       ; preds = %if.then.68
  br label %force_outer_quoting_style, !dbg !1585

if.end.71:                                        ; preds = %if.then.68
  store i8 1, i8* %is_right_quote, align 1, !dbg !1586
  br label %if.end.72, !dbg !1587

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true.64, %cond.end.60, %land.lhs.true, %for.body.47
  %50 = load i64, i64* %i, align 8, !dbg !1588
  %51 = load i8*, i8** %arg.addr, align 8, !dbg !1589
  %arrayidx73 = getelementptr inbounds i8, i8* %51, i64 %50, !dbg !1589
  %52 = load i8, i8* %arrayidx73, align 1, !dbg !1589
  store i8 %52, i8* %c, align 1, !dbg !1590
  %53 = load i8, i8* %c, align 1, !dbg !1591
  %conv74 = zext i8 %53 to i32, !dbg !1591
  switch i32 %conv74, label %sw.default.279 [
    i32 0, label %sw.bb.75
    i32 63, label %sw.bb.127
    i32 7, label %sw.bb.193
    i32 8, label %sw.bb.194
    i32 12, label %sw.bb.195
    i32 10, label %sw.bb.196
    i32 13, label %sw.bb.197
    i32 9, label %sw.bb.198
    i32 11, label %sw.bb.199
    i32 92, label %sw.bb.200
    i32 123, label %sw.bb.220
    i32 125, label %sw.bb.220
    i32 35, label %sw.bb.233
    i32 126, label %sw.bb.233
    i32 32, label %sw.bb.238
    i32 33, label %sw.bb.238
    i32 34, label %sw.bb.238
    i32 36, label %sw.bb.238
    i32 38, label %sw.bb.238
    i32 40, label %sw.bb.238
    i32 41, label %sw.bb.238
    i32 42, label %sw.bb.238
    i32 59, label %sw.bb.238
    i32 60, label %sw.bb.238
    i32 61, label %sw.bb.238
    i32 62, label %sw.bb.238
    i32 91, label %sw.bb.238
    i32 94, label %sw.bb.238
    i32 96, label %sw.bb.238
    i32 124, label %sw.bb.238
    i32 39, label %sw.bb.246
    i32 37, label %sw.bb.278
    i32 43, label %sw.bb.278
    i32 44, label %sw.bb.278
    i32 45, label %sw.bb.278
    i32 46, label %sw.bb.278
    i32 47, label %sw.bb.278
    i32 48, label %sw.bb.278
    i32 49, label %sw.bb.278
    i32 50, label %sw.bb.278
    i32 51, label %sw.bb.278
    i32 52, label %sw.bb.278
    i32 53, label %sw.bb.278
    i32 54, label %sw.bb.278
    i32 55, label %sw.bb.278
    i32 56, label %sw.bb.278
    i32 57, label %sw.bb.278
    i32 58, label %sw.bb.278
    i32 65, label %sw.bb.278
    i32 66, label %sw.bb.278
    i32 67, label %sw.bb.278
    i32 68, label %sw.bb.278
    i32 69, label %sw.bb.278
    i32 70, label %sw.bb.278
    i32 71, label %sw.bb.278
    i32 72, label %sw.bb.278
    i32 73, label %sw.bb.278
    i32 74, label %sw.bb.278
    i32 75, label %sw.bb.278
    i32 76, label %sw.bb.278
    i32 77, label %sw.bb.278
    i32 78, label %sw.bb.278
    i32 79, label %sw.bb.278
    i32 80, label %sw.bb.278
    i32 81, label %sw.bb.278
    i32 82, label %sw.bb.278
    i32 83, label %sw.bb.278
    i32 84, label %sw.bb.278
    i32 85, label %sw.bb.278
    i32 86, label %sw.bb.278
    i32 87, label %sw.bb.278
    i32 88, label %sw.bb.278
    i32 89, label %sw.bb.278
    i32 90, label %sw.bb.278
    i32 93, label %sw.bb.278
    i32 95, label %sw.bb.278
    i32 97, label %sw.bb.278
    i32 98, label %sw.bb.278
    i32 99, label %sw.bb.278
    i32 100, label %sw.bb.278
    i32 101, label %sw.bb.278
    i32 102, label %sw.bb.278
    i32 103, label %sw.bb.278
    i32 104, label %sw.bb.278
    i32 105, label %sw.bb.278
    i32 106, label %sw.bb.278
    i32 107, label %sw.bb.278
    i32 108, label %sw.bb.278
    i32 109, label %sw.bb.278
    i32 110, label %sw.bb.278
    i32 111, label %sw.bb.278
    i32 112, label %sw.bb.278
    i32 113, label %sw.bb.278
    i32 114, label %sw.bb.278
    i32 115, label %sw.bb.278
    i32 116, label %sw.bb.278
    i32 117, label %sw.bb.278
    i32 118, label %sw.bb.278
    i32 119, label %sw.bb.278
    i32 120, label %sw.bb.278
    i32 121, label %sw.bb.278
    i32 122, label %sw.bb.278
  ], !dbg !1592

sw.bb.75:                                         ; preds = %if.end.72
  %54 = load i8, i8* %backslash_escapes, align 1, !dbg !1593
  %tobool76 = trunc i8 %54 to i1, !dbg !1593
  br i1 %tobool76, label %if.then.77, label %if.else, !dbg !1596

if.then.77:                                       ; preds = %sw.bb.75
  %55 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1597
  %tobool78 = trunc i8 %55 to i1, !dbg !1597
  br i1 %tobool78, label %if.then.79, label %if.end.80, !dbg !1600

if.then.79:                                       ; preds = %if.then.77
  br label %force_outer_quoting_style, !dbg !1601

if.end.80:                                        ; preds = %if.then.77
  br label %do.body.81, !dbg !1602

do.body.81:                                       ; preds = %if.end.80
  %56 = load i64, i64* %len, align 8, !dbg !1603
  %57 = load i64, i64* %buffersize.addr, align 8, !dbg !1603
  %cmp82 = icmp ult i64 %56, %57, !dbg !1603
  br i1 %cmp82, label %if.then.84, label %if.end.86, !dbg !1607

if.then.84:                                       ; preds = %do.body.81
  %58 = load i64, i64* %len, align 8, !dbg !1608
  %59 = load i8*, i8** %buffer.addr, align 8, !dbg !1608
  %arrayidx85 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !1608
  store i8 92, i8* %arrayidx85, align 1, !dbg !1608
  br label %if.end.86, !dbg !1608

if.end.86:                                        ; preds = %if.then.84, %do.body.81
  %60 = load i64, i64* %len, align 8, !dbg !1610
  %inc87 = add i64 %60, 1, !dbg !1610
  store i64 %inc87, i64* %len, align 8, !dbg !1610
  br label %do.end.88, !dbg !1610

do.end.88:                                        ; preds = %if.end.86
  %61 = load i64, i64* %i, align 8, !dbg !1613
  %add89 = add i64 %61, 1, !dbg !1615
  %62 = load i64, i64* %argsize.addr, align 8, !dbg !1616
  %cmp90 = icmp ult i64 %add89, %62, !dbg !1617
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.121, !dbg !1618

land.lhs.true.92:                                 ; preds = %do.end.88
  %63 = load i64, i64* %i, align 8, !dbg !1619
  %add93 = add i64 %63, 1, !dbg !1621
  %64 = load i8*, i8** %arg.addr, align 8, !dbg !1622
  %arrayidx94 = getelementptr inbounds i8, i8* %64, i64 %add93, !dbg !1622
  %65 = load i8, i8* %arrayidx94, align 1, !dbg !1622
  %conv95 = sext i8 %65 to i32, !dbg !1622
  %cmp96 = icmp sle i32 48, %conv95, !dbg !1623
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.121, !dbg !1624

land.lhs.true.98:                                 ; preds = %land.lhs.true.92
  %66 = load i64, i64* %i, align 8, !dbg !1625
  %add99 = add i64 %66, 1, !dbg !1627
  %67 = load i8*, i8** %arg.addr, align 8, !dbg !1628
  %arrayidx100 = getelementptr inbounds i8, i8* %67, i64 %add99, !dbg !1628
  %68 = load i8, i8* %arrayidx100, align 1, !dbg !1628
  %conv101 = sext i8 %68 to i32, !dbg !1628
  %cmp102 = icmp sle i32 %conv101, 57, !dbg !1629
  br i1 %cmp102, label %if.then.104, label %if.end.121, !dbg !1630

if.then.104:                                      ; preds = %land.lhs.true.98
  br label %do.body.105, !dbg !1631

do.body.105:                                      ; preds = %if.then.104
  %69 = load i64, i64* %len, align 8, !dbg !1633
  %70 = load i64, i64* %buffersize.addr, align 8, !dbg !1633
  %cmp106 = icmp ult i64 %69, %70, !dbg !1633
  br i1 %cmp106, label %if.then.108, label %if.end.110, !dbg !1637

if.then.108:                                      ; preds = %do.body.105
  %71 = load i64, i64* %len, align 8, !dbg !1638
  %72 = load i8*, i8** %buffer.addr, align 8, !dbg !1638
  %arrayidx109 = getelementptr inbounds i8, i8* %72, i64 %71, !dbg !1638
  store i8 48, i8* %arrayidx109, align 1, !dbg !1638
  br label %if.end.110, !dbg !1638

if.end.110:                                       ; preds = %if.then.108, %do.body.105
  %73 = load i64, i64* %len, align 8, !dbg !1640
  %inc111 = add i64 %73, 1, !dbg !1640
  store i64 %inc111, i64* %len, align 8, !dbg !1640
  br label %do.end.112, !dbg !1640

do.end.112:                                       ; preds = %if.end.110
  br label %do.body.113, !dbg !1643

do.body.113:                                      ; preds = %do.end.112
  %74 = load i64, i64* %len, align 8, !dbg !1644
  %75 = load i64, i64* %buffersize.addr, align 8, !dbg !1644
  %cmp114 = icmp ult i64 %74, %75, !dbg !1644
  br i1 %cmp114, label %if.then.116, label %if.end.118, !dbg !1648

if.then.116:                                      ; preds = %do.body.113
  %76 = load i64, i64* %len, align 8, !dbg !1649
  %77 = load i8*, i8** %buffer.addr, align 8, !dbg !1649
  %arrayidx117 = getelementptr inbounds i8, i8* %77, i64 %76, !dbg !1649
  store i8 48, i8* %arrayidx117, align 1, !dbg !1649
  br label %if.end.118, !dbg !1649

if.end.118:                                       ; preds = %if.then.116, %do.body.113
  %78 = load i64, i64* %len, align 8, !dbg !1651
  %inc119 = add i64 %78, 1, !dbg !1651
  store i64 %inc119, i64* %len, align 8, !dbg !1651
  br label %do.end.120, !dbg !1651

do.end.120:                                       ; preds = %if.end.118
  br label %if.end.121, !dbg !1654

if.end.121:                                       ; preds = %do.end.120, %land.lhs.true.98, %land.lhs.true.92, %do.end.88
  store i8 48, i8* %c, align 1, !dbg !1655
  br label %if.end.126, !dbg !1656

if.else:                                          ; preds = %sw.bb.75
  %79 = load i32, i32* %flags.addr, align 4, !dbg !1657
  %and122 = and i32 %79, 1, !dbg !1659
  %tobool123 = icmp ne i32 %and122, 0, !dbg !1659
  br i1 %tobool123, label %if.then.124, label %if.end.125, !dbg !1660

if.then.124:                                      ; preds = %if.else
  br label %for.inc.483, !dbg !1661

if.end.125:                                       ; preds = %if.else
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.121
  br label %sw.epilog.443, !dbg !1662

sw.bb.127:                                        ; preds = %if.end.72
  %80 = load i32, i32* %quoting_style.addr, align 4, !dbg !1663
  switch i32 %80, label %sw.default.191 [
    i32 2, label %sw.bb.128
    i32 3, label %sw.bb.132
  ], !dbg !1664

sw.bb.128:                                        ; preds = %sw.bb.127
  %81 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1665
  %tobool129 = trunc i8 %81 to i1, !dbg !1665
  br i1 %tobool129, label %if.then.130, label %if.end.131, !dbg !1668

if.then.130:                                      ; preds = %sw.bb.128
  br label %force_outer_quoting_style, !dbg !1669

if.end.131:                                       ; preds = %sw.bb.128
  br label %sw.epilog.192, !dbg !1670

sw.bb.132:                                        ; preds = %sw.bb.127
  %82 = load i32, i32* %flags.addr, align 4, !dbg !1671
  %and133 = and i32 %82, 4, !dbg !1673
  %tobool134 = icmp ne i32 %and133, 0, !dbg !1673
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.190, !dbg !1674

land.lhs.true.135:                                ; preds = %sw.bb.132
  %83 = load i64, i64* %i, align 8, !dbg !1675
  %add136 = add i64 %83, 2, !dbg !1677
  %84 = load i64, i64* %argsize.addr, align 8, !dbg !1678
  %cmp137 = icmp ult i64 %add136, %84, !dbg !1679
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.190, !dbg !1680

land.lhs.true.139:                                ; preds = %land.lhs.true.135
  %85 = load i64, i64* %i, align 8, !dbg !1681
  %add140 = add i64 %85, 1, !dbg !1683
  %86 = load i8*, i8** %arg.addr, align 8, !dbg !1684
  %arrayidx141 = getelementptr inbounds i8, i8* %86, i64 %add140, !dbg !1684
  %87 = load i8, i8* %arrayidx141, align 1, !dbg !1684
  %conv142 = sext i8 %87 to i32, !dbg !1684
  %cmp143 = icmp eq i32 %conv142, 63, !dbg !1685
  br i1 %cmp143, label %if.then.145, label %if.end.190, !dbg !1686

if.then.145:                                      ; preds = %land.lhs.true.139
  %88 = load i64, i64* %i, align 8, !dbg !1687
  %add146 = add i64 %88, 2, !dbg !1688
  %89 = load i8*, i8** %arg.addr, align 8, !dbg !1689
  %arrayidx147 = getelementptr inbounds i8, i8* %89, i64 %add146, !dbg !1689
  %90 = load i8, i8* %arrayidx147, align 1, !dbg !1689
  %conv148 = sext i8 %90 to i32, !dbg !1689
  switch i32 %conv148, label %sw.default.188 [
    i32 33, label %sw.bb.149
    i32 39, label %sw.bb.149
    i32 40, label %sw.bb.149
    i32 41, label %sw.bb.149
    i32 45, label %sw.bb.149
    i32 47, label %sw.bb.149
    i32 60, label %sw.bb.149
    i32 61, label %sw.bb.149
    i32 62, label %sw.bb.149
  ], !dbg !1690

sw.bb.149:                                        ; preds = %if.then.145, %if.then.145, %if.then.145, %if.then.145, %if.then.145, %if.then.145, %if.then.145, %if.then.145, %if.then.145
  %91 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1691
  %tobool150 = trunc i8 %91 to i1, !dbg !1691
  br i1 %tobool150, label %if.then.151, label %if.end.152, !dbg !1694

if.then.151:                                      ; preds = %sw.bb.149
  br label %force_outer_quoting_style, !dbg !1695

if.end.152:                                       ; preds = %sw.bb.149
  %92 = load i64, i64* %i, align 8, !dbg !1696
  %add153 = add i64 %92, 2, !dbg !1697
  %93 = load i8*, i8** %arg.addr, align 8, !dbg !1698
  %arrayidx154 = getelementptr inbounds i8, i8* %93, i64 %add153, !dbg !1698
  %94 = load i8, i8* %arrayidx154, align 1, !dbg !1698
  store i8 %94, i8* %c, align 1, !dbg !1699
  %95 = load i64, i64* %i, align 8, !dbg !1700
  %add155 = add i64 %95, 2, !dbg !1700
  store i64 %add155, i64* %i, align 8, !dbg !1700
  br label %do.body.156, !dbg !1701

do.body.156:                                      ; preds = %if.end.152
  %96 = load i64, i64* %len, align 8, !dbg !1702
  %97 = load i64, i64* %buffersize.addr, align 8, !dbg !1702
  %cmp157 = icmp ult i64 %96, %97, !dbg !1702
  br i1 %cmp157, label %if.then.159, label %if.end.161, !dbg !1706

if.then.159:                                      ; preds = %do.body.156
  %98 = load i64, i64* %len, align 8, !dbg !1707
  %99 = load i8*, i8** %buffer.addr, align 8, !dbg !1707
  %arrayidx160 = getelementptr inbounds i8, i8* %99, i64 %98, !dbg !1707
  store i8 63, i8* %arrayidx160, align 1, !dbg !1707
  br label %if.end.161, !dbg !1707

if.end.161:                                       ; preds = %if.then.159, %do.body.156
  %100 = load i64, i64* %len, align 8, !dbg !1709
  %inc162 = add i64 %100, 1, !dbg !1709
  store i64 %inc162, i64* %len, align 8, !dbg !1709
  br label %do.end.163, !dbg !1709

do.end.163:                                       ; preds = %if.end.161
  br label %do.body.164, !dbg !1712

do.body.164:                                      ; preds = %do.end.163
  %101 = load i64, i64* %len, align 8, !dbg !1713
  %102 = load i64, i64* %buffersize.addr, align 8, !dbg !1713
  %cmp165 = icmp ult i64 %101, %102, !dbg !1713
  br i1 %cmp165, label %if.then.167, label %if.end.169, !dbg !1717

if.then.167:                                      ; preds = %do.body.164
  %103 = load i64, i64* %len, align 8, !dbg !1718
  %104 = load i8*, i8** %buffer.addr, align 8, !dbg !1718
  %arrayidx168 = getelementptr inbounds i8, i8* %104, i64 %103, !dbg !1718
  store i8 34, i8* %arrayidx168, align 1, !dbg !1718
  br label %if.end.169, !dbg !1718

if.end.169:                                       ; preds = %if.then.167, %do.body.164
  %105 = load i64, i64* %len, align 8, !dbg !1720
  %inc170 = add i64 %105, 1, !dbg !1720
  store i64 %inc170, i64* %len, align 8, !dbg !1720
  br label %do.end.171, !dbg !1720

do.end.171:                                       ; preds = %if.end.169
  br label %do.body.172, !dbg !1723

do.body.172:                                      ; preds = %do.end.171
  %106 = load i64, i64* %len, align 8, !dbg !1724
  %107 = load i64, i64* %buffersize.addr, align 8, !dbg !1724
  %cmp173 = icmp ult i64 %106, %107, !dbg !1724
  br i1 %cmp173, label %if.then.175, label %if.end.177, !dbg !1728

if.then.175:                                      ; preds = %do.body.172
  %108 = load i64, i64* %len, align 8, !dbg !1729
  %109 = load i8*, i8** %buffer.addr, align 8, !dbg !1729
  %arrayidx176 = getelementptr inbounds i8, i8* %109, i64 %108, !dbg !1729
  store i8 34, i8* %arrayidx176, align 1, !dbg !1729
  br label %if.end.177, !dbg !1729

if.end.177:                                       ; preds = %if.then.175, %do.body.172
  %110 = load i64, i64* %len, align 8, !dbg !1731
  %inc178 = add i64 %110, 1, !dbg !1731
  store i64 %inc178, i64* %len, align 8, !dbg !1731
  br label %do.end.179, !dbg !1731

do.end.179:                                       ; preds = %if.end.177
  br label %do.body.180, !dbg !1734

do.body.180:                                      ; preds = %do.end.179
  %111 = load i64, i64* %len, align 8, !dbg !1735
  %112 = load i64, i64* %buffersize.addr, align 8, !dbg !1735
  %cmp181 = icmp ult i64 %111, %112, !dbg !1735
  br i1 %cmp181, label %if.then.183, label %if.end.185, !dbg !1739

if.then.183:                                      ; preds = %do.body.180
  %113 = load i64, i64* %len, align 8, !dbg !1740
  %114 = load i8*, i8** %buffer.addr, align 8, !dbg !1740
  %arrayidx184 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !1740
  store i8 63, i8* %arrayidx184, align 1, !dbg !1740
  br label %if.end.185, !dbg !1740

if.end.185:                                       ; preds = %if.then.183, %do.body.180
  %115 = load i64, i64* %len, align 8, !dbg !1742
  %inc186 = add i64 %115, 1, !dbg !1742
  store i64 %inc186, i64* %len, align 8, !dbg !1742
  br label %do.end.187, !dbg !1742

do.end.187:                                       ; preds = %if.end.185
  br label %sw.epilog.189, !dbg !1745

sw.default.188:                                   ; preds = %if.then.145
  br label %sw.epilog.189, !dbg !1746

sw.epilog.189:                                    ; preds = %sw.default.188, %do.end.187
  br label %if.end.190, !dbg !1747

if.end.190:                                       ; preds = %sw.epilog.189, %land.lhs.true.139, %land.lhs.true.135, %sw.bb.132
  br label %sw.epilog.192, !dbg !1748

sw.default.191:                                   ; preds = %sw.bb.127
  br label %sw.epilog.192, !dbg !1749

sw.epilog.192:                                    ; preds = %sw.default.191, %if.end.190, %if.end.131
  br label %sw.epilog.443, !dbg !1750

sw.bb.193:                                        ; preds = %if.end.72
  store i8 97, i8* %esc, align 1, !dbg !1751
  br label %c_escape, !dbg !1752

sw.bb.194:                                        ; preds = %if.end.72
  store i8 98, i8* %esc, align 1, !dbg !1753
  br label %c_escape, !dbg !1754

sw.bb.195:                                        ; preds = %if.end.72
  store i8 102, i8* %esc, align 1, !dbg !1755
  br label %c_escape, !dbg !1756

sw.bb.196:                                        ; preds = %if.end.72
  store i8 110, i8* %esc, align 1, !dbg !1757
  br label %c_and_shell_escape, !dbg !1758

sw.bb.197:                                        ; preds = %if.end.72
  store i8 114, i8* %esc, align 1, !dbg !1759
  br label %c_and_shell_escape, !dbg !1760

sw.bb.198:                                        ; preds = %if.end.72
  store i8 116, i8* %esc, align 1, !dbg !1761
  br label %c_and_shell_escape, !dbg !1762

sw.bb.199:                                        ; preds = %if.end.72
  store i8 118, i8* %esc, align 1, !dbg !1763
  br label %c_escape, !dbg !1764

sw.bb.200:                                        ; preds = %if.end.72
  %116 = load i8, i8* %c, align 1, !dbg !1765
  store i8 %116, i8* %esc, align 1, !dbg !1766
  %117 = load i8, i8* %backslash_escapes, align 1, !dbg !1767
  %tobool201 = trunc i8 %117 to i1, !dbg !1767
  br i1 %tobool201, label %land.lhs.true.203, label %if.end.209, !dbg !1769

land.lhs.true.203:                                ; preds = %sw.bb.200
  %118 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1770
  %tobool204 = trunc i8 %118 to i1, !dbg !1770
  br i1 %tobool204, label %land.lhs.true.206, label %if.end.209, !dbg !1772

land.lhs.true.206:                                ; preds = %land.lhs.true.203
  %119 = load i64, i64* %quote_string_len, align 8, !dbg !1773
  %tobool207 = icmp ne i64 %119, 0, !dbg !1773
  br i1 %tobool207, label %if.then.208, label %if.end.209, !dbg !1775

if.then.208:                                      ; preds = %land.lhs.true.206
  br label %store_c, !dbg !1776

if.end.209:                                       ; preds = %land.lhs.true.206, %land.lhs.true.203, %sw.bb.200
  br label %c_and_shell_escape, !dbg !1777

c_and_shell_escape:                               ; preds = %if.end.209, %sw.bb.198, %sw.bb.197, %sw.bb.196
  %120 = load i32, i32* %quoting_style.addr, align 4, !dbg !1781
  %cmp210 = icmp eq i32 %120, 2, !dbg !1783
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.216, !dbg !1784

land.lhs.true.212:                                ; preds = %c_and_shell_escape
  %121 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1785
  %tobool213 = trunc i8 %121 to i1, !dbg !1785
  br i1 %tobool213, label %if.then.215, label %if.end.216, !dbg !1787

if.then.215:                                      ; preds = %land.lhs.true.212
  br label %force_outer_quoting_style, !dbg !1788

if.end.216:                                       ; preds = %land.lhs.true.212, %c_and_shell_escape
  br label %c_escape, !dbg !1789

c_escape:                                         ; preds = %if.end.216, %sw.bb.199, %sw.bb.195, %sw.bb.194, %sw.bb.193
  %122 = load i8, i8* %backslash_escapes, align 1, !dbg !1791
  %tobool217 = trunc i8 %122 to i1, !dbg !1791
  br i1 %tobool217, label %if.then.218, label %if.end.219, !dbg !1793

if.then.218:                                      ; preds = %c_escape
  %123 = load i8, i8* %esc, align 1, !dbg !1794
  store i8 %123, i8* %c, align 1, !dbg !1796
  br label %store_escape, !dbg !1797

if.end.219:                                       ; preds = %c_escape
  br label %sw.epilog.443, !dbg !1798

sw.bb.220:                                        ; preds = %if.end.72, %if.end.72
  %124 = load i64, i64* %argsize.addr, align 8, !dbg !1799
  %cmp221 = icmp eq i64 %124, -1, !dbg !1801
  br i1 %cmp221, label %cond.true.223, label %cond.false.228, !dbg !1802

cond.true.223:                                    ; preds = %sw.bb.220
  %125 = load i8*, i8** %arg.addr, align 8, !dbg !1803
  %arrayidx224 = getelementptr inbounds i8, i8* %125, i64 1, !dbg !1803
  %126 = load i8, i8* %arrayidx224, align 1, !dbg !1803
  %conv225 = sext i8 %126 to i32, !dbg !1803
  %cmp226 = icmp eq i32 %conv225, 0, !dbg !1805
  br i1 %cmp226, label %if.end.232, label %if.then.231, !dbg !1799

cond.false.228:                                   ; preds = %sw.bb.220
  %127 = load i64, i64* %argsize.addr, align 8, !dbg !1806
  %cmp229 = icmp eq i64 %127, 1, !dbg !1808
  br i1 %cmp229, label %if.end.232, label %if.then.231, !dbg !1802

if.then.231:                                      ; preds = %cond.false.228, %cond.true.223
  br label %sw.epilog.443, !dbg !1809

if.end.232:                                       ; preds = %cond.false.228, %cond.true.223
  br label %sw.bb.233, !dbg !1810

sw.bb.233:                                        ; preds = %if.end.232, %if.end.72, %if.end.72
  %128 = load i64, i64* %i, align 8, !dbg !1813
  %cmp234 = icmp ne i64 %128, 0, !dbg !1815
  br i1 %cmp234, label %if.then.236, label %if.end.237, !dbg !1816

if.then.236:                                      ; preds = %sw.bb.233
  br label %sw.epilog.443, !dbg !1817

if.end.237:                                       ; preds = %sw.bb.233
  br label %sw.bb.238, !dbg !1818

sw.bb.238:                                        ; preds = %if.end.237, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72
  %129 = load i32, i32* %quoting_style.addr, align 4, !dbg !1820
  %cmp239 = icmp eq i32 %129, 2, !dbg !1822
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.245, !dbg !1823

land.lhs.true.241:                                ; preds = %sw.bb.238
  %130 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1824
  %tobool242 = trunc i8 %130 to i1, !dbg !1824
  br i1 %tobool242, label %if.then.244, label %if.end.245, !dbg !1826

if.then.244:                                      ; preds = %land.lhs.true.241
  br label %force_outer_quoting_style, !dbg !1827

if.end.245:                                       ; preds = %land.lhs.true.241, %sw.bb.238
  br label %sw.epilog.443, !dbg !1828

sw.bb.246:                                        ; preds = %if.end.72
  %131 = load i32, i32* %quoting_style.addr, align 4, !dbg !1829
  %cmp247 = icmp eq i32 %131, 2, !dbg !1831
  br i1 %cmp247, label %if.then.249, label %if.end.277, !dbg !1832

if.then.249:                                      ; preds = %sw.bb.246
  %132 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1833
  %tobool250 = trunc i8 %132 to i1, !dbg !1833
  br i1 %tobool250, label %if.then.251, label %if.end.252, !dbg !1836

if.then.251:                                      ; preds = %if.then.249
  br label %force_outer_quoting_style, !dbg !1837

if.end.252:                                       ; preds = %if.then.249
  br label %do.body.253, !dbg !1838

do.body.253:                                      ; preds = %if.end.252
  %133 = load i64, i64* %len, align 8, !dbg !1839
  %134 = load i64, i64* %buffersize.addr, align 8, !dbg !1839
  %cmp254 = icmp ult i64 %133, %134, !dbg !1839
  br i1 %cmp254, label %if.then.256, label %if.end.258, !dbg !1843

if.then.256:                                      ; preds = %do.body.253
  %135 = load i64, i64* %len, align 8, !dbg !1844
  %136 = load i8*, i8** %buffer.addr, align 8, !dbg !1844
  %arrayidx257 = getelementptr inbounds i8, i8* %136, i64 %135, !dbg !1844
  store i8 39, i8* %arrayidx257, align 1, !dbg !1844
  br label %if.end.258, !dbg !1844

if.end.258:                                       ; preds = %if.then.256, %do.body.253
  %137 = load i64, i64* %len, align 8, !dbg !1846
  %inc259 = add i64 %137, 1, !dbg !1846
  store i64 %inc259, i64* %len, align 8, !dbg !1846
  br label %do.end.260, !dbg !1846

do.end.260:                                       ; preds = %if.end.258
  br label %do.body.261, !dbg !1849

do.body.261:                                      ; preds = %do.end.260
  %138 = load i64, i64* %len, align 8, !dbg !1850
  %139 = load i64, i64* %buffersize.addr, align 8, !dbg !1850
  %cmp262 = icmp ult i64 %138, %139, !dbg !1850
  br i1 %cmp262, label %if.then.264, label %if.end.266, !dbg !1854

if.then.264:                                      ; preds = %do.body.261
  %140 = load i64, i64* %len, align 8, !dbg !1855
  %141 = load i8*, i8** %buffer.addr, align 8, !dbg !1855
  %arrayidx265 = getelementptr inbounds i8, i8* %141, i64 %140, !dbg !1855
  store i8 92, i8* %arrayidx265, align 1, !dbg !1855
  br label %if.end.266, !dbg !1855

if.end.266:                                       ; preds = %if.then.264, %do.body.261
  %142 = load i64, i64* %len, align 8, !dbg !1857
  %inc267 = add i64 %142, 1, !dbg !1857
  store i64 %inc267, i64* %len, align 8, !dbg !1857
  br label %do.end.268, !dbg !1857

do.end.268:                                       ; preds = %if.end.266
  br label %do.body.269, !dbg !1860

do.body.269:                                      ; preds = %do.end.268
  %143 = load i64, i64* %len, align 8, !dbg !1861
  %144 = load i64, i64* %buffersize.addr, align 8, !dbg !1861
  %cmp270 = icmp ult i64 %143, %144, !dbg !1861
  br i1 %cmp270, label %if.then.272, label %if.end.274, !dbg !1865

if.then.272:                                      ; preds = %do.body.269
  %145 = load i64, i64* %len, align 8, !dbg !1866
  %146 = load i8*, i8** %buffer.addr, align 8, !dbg !1866
  %arrayidx273 = getelementptr inbounds i8, i8* %146, i64 %145, !dbg !1866
  store i8 39, i8* %arrayidx273, align 1, !dbg !1866
  br label %if.end.274, !dbg !1866

if.end.274:                                       ; preds = %if.then.272, %do.body.269
  %147 = load i64, i64* %len, align 8, !dbg !1868
  %inc275 = add i64 %147, 1, !dbg !1868
  store i64 %inc275, i64* %len, align 8, !dbg !1868
  br label %do.end.276, !dbg !1868

do.end.276:                                       ; preds = %if.end.274
  br label %if.end.277, !dbg !1871

if.end.277:                                       ; preds = %do.end.276, %sw.bb.246
  br label %sw.epilog.443, !dbg !1872

sw.bb.278:                                        ; preds = %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72
  br label %sw.epilog.443, !dbg !1873

sw.default.279:                                   ; preds = %if.end.72
  call void @llvm.dbg.declare(metadata i64* %m, metadata !1874, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.declare(metadata i8* %printable, metadata !1877, metadata !DIExpression()), !dbg !1878
  %148 = load i8, i8* %unibyte_locale, align 1, !dbg !1879
  %tobool280 = trunc i8 %148 to i1, !dbg !1879
  br i1 %tobool280, label %if.then.281, label %if.else.290, !dbg !1881

if.then.281:                                      ; preds = %sw.default.279
  store i64 1, i64* %m, align 8, !dbg !1882
  %149 = load i8, i8* %c, align 1, !dbg !1884
  %conv282 = zext i8 %149 to i32, !dbg !1884
  %idxprom = sext i32 %conv282 to i64, !dbg !1884
  %call283 = call i16** @__ctype_b_loc() #17, !dbg !1884
  %150 = load i16*, i16** %call283, align 8, !dbg !1884
  %arrayidx284 = getelementptr inbounds i16, i16* %150, i64 %idxprom, !dbg !1884
  %151 = load i16, i16* %arrayidx284, align 2, !dbg !1884
  %conv285 = zext i16 %151 to i32, !dbg !1884
  %and286 = and i32 %conv285, 16384, !dbg !1884
  %cmp287 = icmp ne i32 %and286, 0, !dbg !1885
  %frombool289 = zext i1 %cmp287 to i8, !dbg !1886
  store i8 %frombool289, i8* %printable, align 1, !dbg !1886
  br label %if.end.354, !dbg !1887

if.else.290:                                      ; preds = %sw.default.279
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %mbstate, metadata !1888, metadata !DIExpression()), !dbg !1904
  %152 = bitcast %struct.__mbstate_t* %mbstate to i8*, !dbg !1905
  call void @llvm.memset.p0i8.i64(i8* align 4 %152, i8 0, i64 8, i1 false), !dbg !1905
  store i64 0, i64* %m, align 8, !dbg !1906
  store i8 1, i8* %printable, align 1, !dbg !1907
  %153 = load i64, i64* %argsize.addr, align 8, !dbg !1908
  %cmp291 = icmp eq i64 %153, -1, !dbg !1910
  br i1 %cmp291, label %if.then.293, label %if.end.295, !dbg !1911

if.then.293:                                      ; preds = %if.else.290
  %154 = load i8*, i8** %arg.addr, align 8, !dbg !1912
  %call294 = call i64 @strlen(i8* %154) #15, !dbg !1913
  store i64 %call294, i64* %argsize.addr, align 8, !dbg !1914
  br label %if.end.295, !dbg !1915

if.end.295:                                       ; preds = %if.then.293, %if.else.290
  br label %do.body.296, !dbg !1916

do.body.296:                                      ; preds = %do.cond, %if.end.295
  call void @llvm.dbg.declare(metadata i32* %w, metadata !1917, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !1921, metadata !DIExpression()), !dbg !1922
  %155 = load i64, i64* %i, align 8, !dbg !1923
  %156 = load i64, i64* %m, align 8, !dbg !1924
  %add297 = add i64 %155, %156, !dbg !1925
  %157 = load i8*, i8** %arg.addr, align 8, !dbg !1926
  %arrayidx298 = getelementptr inbounds i8, i8* %157, i64 %add297, !dbg !1926
  %158 = load i64, i64* %argsize.addr, align 8, !dbg !1927
  %159 = load i64, i64* %i, align 8, !dbg !1928
  %160 = load i64, i64* %m, align 8, !dbg !1929
  %add299 = add i64 %159, %160, !dbg !1930
  %sub = sub i64 %158, %add299, !dbg !1931
  %call300 = call i64 @rpl_mbrtowc(i32* %w, i8* %arrayidx298, i64 %sub, %struct.__mbstate_t* %mbstate), !dbg !1932
  store i64 %call300, i64* %bytes, align 8, !dbg !1922
  %161 = load i64, i64* %bytes, align 8, !dbg !1933
  %cmp301 = icmp eq i64 %161, 0, !dbg !1935
  br i1 %cmp301, label %if.then.303, label %if.else.304, !dbg !1936

if.then.303:                                      ; preds = %do.body.296
  br label %do.end.353, !dbg !1937

if.else.304:                                      ; preds = %do.body.296
  %162 = load i64, i64* %bytes, align 8, !dbg !1938
  %cmp305 = icmp eq i64 %162, -1, !dbg !1940
  br i1 %cmp305, label %if.then.307, label %if.else.308, !dbg !1941

if.then.307:                                      ; preds = %if.else.304
  store i8 0, i8* %printable, align 1, !dbg !1942
  br label %do.end.353, !dbg !1944

if.else.308:                                      ; preds = %if.else.304
  %163 = load i64, i64* %bytes, align 8, !dbg !1945
  %cmp309 = icmp eq i64 %163, -2, !dbg !1947
  br i1 %cmp309, label %if.then.311, label %if.else.320, !dbg !1948

if.then.311:                                      ; preds = %if.else.308
  store i8 0, i8* %printable, align 1, !dbg !1949
  br label %while.cond, !dbg !1951

while.cond:                                       ; preds = %while.body, %if.then.311
  %164 = load i64, i64* %i, align 8, !dbg !1952
  %165 = load i64, i64* %m, align 8, !dbg !1955
  %add312 = add i64 %164, %165, !dbg !1956
  %166 = load i64, i64* %argsize.addr, align 8, !dbg !1957
  %cmp313 = icmp ult i64 %add312, %166, !dbg !1958
  br i1 %cmp313, label %land.rhs, label %land.end, !dbg !1959

land.rhs:                                         ; preds = %while.cond
  %167 = load i64, i64* %i, align 8, !dbg !1960
  %168 = load i64, i64* %m, align 8, !dbg !1962
  %add315 = add i64 %167, %168, !dbg !1963
  %169 = load i8*, i8** %arg.addr, align 8, !dbg !1964
  %arrayidx316 = getelementptr inbounds i8, i8* %169, i64 %add315, !dbg !1964
  %170 = load i8, i8* %arrayidx316, align 1, !dbg !1964
  %conv317 = sext i8 %170 to i32, !dbg !1964
  %tobool318 = icmp ne i32 %conv317, 0, !dbg !1959
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %171 = phi i1 [ false, %while.cond ], [ %tobool318, %land.rhs ]
  br i1 %171, label %while.body, label %while.end, !dbg !1965

while.body:                                       ; preds = %land.end
  %172 = load i64, i64* %m, align 8, !dbg !1967
  %inc319 = add i64 %172, 1, !dbg !1967
  store i64 %inc319, i64* %m, align 8, !dbg !1967
  br label %while.cond, !dbg !1951

while.end:                                        ; preds = %land.end
  br label %do.end.353, !dbg !1968

if.else.320:                                      ; preds = %if.else.308
  %173 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1969
  %tobool321 = trunc i8 %173 to i1, !dbg !1969
  br i1 %tobool321, label %land.lhs.true.323, label %if.end.341, !dbg !1972

land.lhs.true.323:                                ; preds = %if.else.320
  %174 = load i32, i32* %quoting_style.addr, align 4, !dbg !1973
  %cmp324 = icmp eq i32 %174, 2, !dbg !1975
  br i1 %cmp324, label %if.then.326, label %if.end.341, !dbg !1976

if.then.326:                                      ; preds = %land.lhs.true.323
  call void @llvm.dbg.declare(metadata i64* %j, metadata !1977, metadata !DIExpression()), !dbg !1979
  store i64 1, i64* %j, align 8, !dbg !1980
  br label %for.cond.327, !dbg !1982

for.cond.327:                                     ; preds = %for.inc.338, %if.then.326
  %175 = load i64, i64* %j, align 8, !dbg !1983
  %176 = load i64, i64* %bytes, align 8, !dbg !1987
  %cmp328 = icmp ult i64 %175, %176, !dbg !1988
  br i1 %cmp328, label %for.body.330, label %for.end.340, !dbg !1989

for.body.330:                                     ; preds = %for.cond.327
  %177 = load i64, i64* %i, align 8, !dbg !1990
  %178 = load i64, i64* %m, align 8, !dbg !1991
  %add331 = add i64 %177, %178, !dbg !1992
  %179 = load i64, i64* %j, align 8, !dbg !1993
  %add332 = add i64 %add331, %179, !dbg !1994
  %180 = load i8*, i8** %arg.addr, align 8, !dbg !1995
  %arrayidx333 = getelementptr inbounds i8, i8* %180, i64 %add332, !dbg !1995
  %181 = load i8, i8* %arrayidx333, align 1, !dbg !1995
  %conv334 = sext i8 %181 to i32, !dbg !1995
  switch i32 %conv334, label %sw.default.336 [
    i32 91, label %sw.bb.335
    i32 92, label %sw.bb.335
    i32 94, label %sw.bb.335
    i32 96, label %sw.bb.335
    i32 124, label %sw.bb.335
  ], !dbg !1996

sw.bb.335:                                        ; preds = %for.body.330, %for.body.330, %for.body.330, %for.body.330, %for.body.330
  br label %force_outer_quoting_style, !dbg !1997

sw.default.336:                                   ; preds = %for.body.330
  br label %sw.epilog.337, !dbg !1999

sw.epilog.337:                                    ; preds = %sw.default.336
  br label %for.inc.338, !dbg !2000

for.inc.338:                                      ; preds = %sw.epilog.337
  %182 = load i64, i64* %j, align 8, !dbg !2001
  %inc339 = add i64 %182, 1, !dbg !2001
  store i64 %inc339, i64* %j, align 8, !dbg !2001
  br label %for.cond.327, !dbg !2002

for.end.340:                                      ; preds = %for.cond.327
  br label %if.end.341, !dbg !2003

if.end.341:                                       ; preds = %for.end.340, %land.lhs.true.323, %if.else.320
  %183 = load i32, i32* %w, align 4, !dbg !2004
  %call342 = call i32 @iswprint(i32 %183) #10, !dbg !2006
  %tobool343 = icmp ne i32 %call342, 0, !dbg !2006
  br i1 %tobool343, label %if.end.345, label %if.then.344, !dbg !2007

if.then.344:                                      ; preds = %if.end.341
  store i8 0, i8* %printable, align 1, !dbg !2008
  br label %if.end.345, !dbg !2009

if.end.345:                                       ; preds = %if.then.344, %if.end.341
  %184 = load i64, i64* %bytes, align 8, !dbg !2010
  %185 = load i64, i64* %m, align 8, !dbg !2011
  %add346 = add i64 %185, %184, !dbg !2011
  store i64 %add346, i64* %m, align 8, !dbg !2011
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.345
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348
  br label %do.cond, !dbg !2012

do.cond:                                          ; preds = %if.end.349
  %call350 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #15, !dbg !2013
  %tobool351 = icmp ne i32 %call350, 0, !dbg !2014
  %lnot352 = xor i1 %tobool351, true, !dbg !2014
  br i1 %lnot352, label %do.body.296, label %do.end.353, !dbg !2012

do.end.353:                                       ; preds = %do.cond, %while.end, %if.then.307, %if.then.303
  br label %if.end.354

if.end.354:                                       ; preds = %do.end.353, %if.then.281
  %186 = load i64, i64* %m, align 8, !dbg !2015
  %cmp355 = icmp ult i64 1, %186, !dbg !2017
  br i1 %cmp355, label %if.then.361, label %lor.lhs.false, !dbg !2018

lor.lhs.false:                                    ; preds = %if.end.354
  %187 = load i8, i8* %backslash_escapes, align 1, !dbg !2019
  %tobool357 = trunc i8 %187 to i1, !dbg !2019
  br i1 %tobool357, label %land.lhs.true.359, label %if.end.442, !dbg !2021

land.lhs.true.359:                                ; preds = %lor.lhs.false
  %188 = load i8, i8* %printable, align 1, !dbg !2022
  %tobool360 = trunc i8 %188 to i1, !dbg !2022
  br i1 %tobool360, label %if.end.442, label %if.then.361, !dbg !2024

if.then.361:                                      ; preds = %land.lhs.true.359, %if.end.354
  call void @llvm.dbg.declare(metadata i64* %ilim, metadata !2025, metadata !DIExpression()), !dbg !2027
  %189 = load i64, i64* %i, align 8, !dbg !2028
  %190 = load i64, i64* %m, align 8, !dbg !2029
  %add362 = add i64 %189, %190, !dbg !2030
  store i64 %add362, i64* %ilim, align 8, !dbg !2027
  br label %for.cond.363, !dbg !2031

for.cond.363:                                     ; preds = %do.end.438, %if.then.361
  %191 = load i8, i8* %backslash_escapes, align 1, !dbg !2032
  %tobool364 = trunc i8 %191 to i1, !dbg !2032
  br i1 %tobool364, label %land.lhs.true.366, label %if.else.411, !dbg !2037

land.lhs.true.366:                                ; preds = %for.cond.363
  %192 = load i8, i8* %printable, align 1, !dbg !2038
  %tobool367 = trunc i8 %192 to i1, !dbg !2038
  br i1 %tobool367, label %if.else.411, label %if.then.368, !dbg !2040

if.then.368:                                      ; preds = %land.lhs.true.366
  %193 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2041
  %tobool369 = trunc i8 %193 to i1, !dbg !2041
  br i1 %tobool369, label %if.then.370, label %if.end.371, !dbg !2044

if.then.370:                                      ; preds = %if.then.368
  br label %force_outer_quoting_style, !dbg !2045

if.end.371:                                       ; preds = %if.then.368
  br label %do.body.372, !dbg !2046

do.body.372:                                      ; preds = %if.end.371
  %194 = load i64, i64* %len, align 8, !dbg !2047
  %195 = load i64, i64* %buffersize.addr, align 8, !dbg !2047
  %cmp373 = icmp ult i64 %194, %195, !dbg !2047
  br i1 %cmp373, label %if.then.375, label %if.end.377, !dbg !2051

if.then.375:                                      ; preds = %do.body.372
  %196 = load i64, i64* %len, align 8, !dbg !2052
  %197 = load i8*, i8** %buffer.addr, align 8, !dbg !2052
  %arrayidx376 = getelementptr inbounds i8, i8* %197, i64 %196, !dbg !2052
  store i8 92, i8* %arrayidx376, align 1, !dbg !2052
  br label %if.end.377, !dbg !2052

if.end.377:                                       ; preds = %if.then.375, %do.body.372
  %198 = load i64, i64* %len, align 8, !dbg !2054
  %inc378 = add i64 %198, 1, !dbg !2054
  store i64 %inc378, i64* %len, align 8, !dbg !2054
  br label %do.end.380, !dbg !2054

do.end.380:                                       ; preds = %if.end.377
  br label %do.body.381, !dbg !2057

do.body.381:                                      ; preds = %do.end.380
  %199 = load i64, i64* %len, align 8, !dbg !2058
  %200 = load i64, i64* %buffersize.addr, align 8, !dbg !2058
  %cmp382 = icmp ult i64 %199, %200, !dbg !2058
  br i1 %cmp382, label %if.then.384, label %if.end.389, !dbg !2062

if.then.384:                                      ; preds = %do.body.381
  %201 = load i8, i8* %c, align 1, !dbg !2063
  %conv385 = zext i8 %201 to i32, !dbg !2063
  %shr = ashr i32 %conv385, 6, !dbg !2063
  %add386 = add nsw i32 48, %shr, !dbg !2063
  %conv387 = trunc i32 %add386 to i8, !dbg !2063
  %202 = load i64, i64* %len, align 8, !dbg !2063
  %203 = load i8*, i8** %buffer.addr, align 8, !dbg !2063
  %arrayidx388 = getelementptr inbounds i8, i8* %203, i64 %202, !dbg !2063
  store i8 %conv387, i8* %arrayidx388, align 1, !dbg !2063
  br label %if.end.389, !dbg !2063

if.end.389:                                       ; preds = %if.then.384, %do.body.381
  %204 = load i64, i64* %len, align 8, !dbg !2065
  %inc390 = add i64 %204, 1, !dbg !2065
  store i64 %inc390, i64* %len, align 8, !dbg !2065
  br label %do.end.392, !dbg !2065

do.end.392:                                       ; preds = %if.end.389
  br label %do.body.393, !dbg !2068

do.body.393:                                      ; preds = %do.end.392
  %205 = load i64, i64* %len, align 8, !dbg !2069
  %206 = load i64, i64* %buffersize.addr, align 8, !dbg !2069
  %cmp394 = icmp ult i64 %205, %206, !dbg !2069
  br i1 %cmp394, label %if.then.396, label %if.end.403, !dbg !2073

if.then.396:                                      ; preds = %do.body.393
  %207 = load i8, i8* %c, align 1, !dbg !2074
  %conv397 = zext i8 %207 to i32, !dbg !2074
  %shr398 = ashr i32 %conv397, 3, !dbg !2074
  %and399 = and i32 %shr398, 7, !dbg !2074
  %add400 = add nsw i32 48, %and399, !dbg !2074
  %conv401 = trunc i32 %add400 to i8, !dbg !2074
  %208 = load i64, i64* %len, align 8, !dbg !2074
  %209 = load i8*, i8** %buffer.addr, align 8, !dbg !2074
  %arrayidx402 = getelementptr inbounds i8, i8* %209, i64 %208, !dbg !2074
  store i8 %conv401, i8* %arrayidx402, align 1, !dbg !2074
  br label %if.end.403, !dbg !2074

if.end.403:                                       ; preds = %if.then.396, %do.body.393
  %210 = load i64, i64* %len, align 8, !dbg !2076
  %inc404 = add i64 %210, 1, !dbg !2076
  store i64 %inc404, i64* %len, align 8, !dbg !2076
  br label %do.end.406, !dbg !2076

do.end.406:                                       ; preds = %if.end.403
  %211 = load i8, i8* %c, align 1, !dbg !2079
  %conv407 = zext i8 %211 to i32, !dbg !2079
  %and408 = and i32 %conv407, 7, !dbg !2080
  %add409 = add nsw i32 48, %and408, !dbg !2081
  %conv410 = trunc i32 %add409 to i8, !dbg !2082
  store i8 %conv410, i8* %c, align 1, !dbg !2083
  br label %if.end.424, !dbg !2084

if.else.411:                                      ; preds = %land.lhs.true.366, %for.cond.363
  %212 = load i8, i8* %is_right_quote, align 1, !dbg !2085
  %tobool412 = trunc i8 %212 to i1, !dbg !2085
  br i1 %tobool412, label %if.then.413, label %if.end.423, !dbg !2087

if.then.413:                                      ; preds = %if.else.411
  br label %do.body.414, !dbg !2088

do.body.414:                                      ; preds = %if.then.413
  %213 = load i64, i64* %len, align 8, !dbg !2090
  %214 = load i64, i64* %buffersize.addr, align 8, !dbg !2090
  %cmp415 = icmp ult i64 %213, %214, !dbg !2090
  br i1 %cmp415, label %if.then.417, label %if.end.419, !dbg !2094

if.then.417:                                      ; preds = %do.body.414
  %215 = load i64, i64* %len, align 8, !dbg !2095
  %216 = load i8*, i8** %buffer.addr, align 8, !dbg !2095
  %arrayidx418 = getelementptr inbounds i8, i8* %216, i64 %215, !dbg !2095
  store i8 92, i8* %arrayidx418, align 1, !dbg !2095
  br label %if.end.419, !dbg !2095

if.end.419:                                       ; preds = %if.then.417, %do.body.414
  %217 = load i64, i64* %len, align 8, !dbg !2097
  %inc420 = add i64 %217, 1, !dbg !2097
  store i64 %inc420, i64* %len, align 8, !dbg !2097
  br label %do.end.422, !dbg !2097

do.end.422:                                       ; preds = %if.end.419
  store i8 0, i8* %is_right_quote, align 1, !dbg !2100
  br label %if.end.423, !dbg !2101

if.end.423:                                       ; preds = %do.end.422, %if.else.411
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %do.end.406
  %218 = load i64, i64* %ilim, align 8, !dbg !2102
  %219 = load i64, i64* %i, align 8, !dbg !2104
  %add425 = add i64 %219, 1, !dbg !2105
  %cmp426 = icmp ule i64 %218, %add425, !dbg !2106
  br i1 %cmp426, label %if.then.428, label %if.end.429, !dbg !2107

if.then.428:                                      ; preds = %if.end.424
  br label %for.end.441, !dbg !2108

if.end.429:                                       ; preds = %if.end.424
  br label %do.body.430, !dbg !2109

do.body.430:                                      ; preds = %if.end.429
  %220 = load i64, i64* %len, align 8, !dbg !2110
  %221 = load i64, i64* %buffersize.addr, align 8, !dbg !2110
  %cmp431 = icmp ult i64 %220, %221, !dbg !2110
  br i1 %cmp431, label %if.then.433, label %if.end.435, !dbg !2114

if.then.433:                                      ; preds = %do.body.430
  %222 = load i8, i8* %c, align 1, !dbg !2115
  %223 = load i64, i64* %len, align 8, !dbg !2115
  %224 = load i8*, i8** %buffer.addr, align 8, !dbg !2115
  %arrayidx434 = getelementptr inbounds i8, i8* %224, i64 %223, !dbg !2115
  store i8 %222, i8* %arrayidx434, align 1, !dbg !2115
  br label %if.end.435, !dbg !2115

if.end.435:                                       ; preds = %if.then.433, %do.body.430
  %225 = load i64, i64* %len, align 8, !dbg !2117
  %inc436 = add i64 %225, 1, !dbg !2117
  store i64 %inc436, i64* %len, align 8, !dbg !2117
  br label %do.end.438, !dbg !2117

do.end.438:                                       ; preds = %if.end.435
  %226 = load i64, i64* %i, align 8, !dbg !2120
  %inc439 = add i64 %226, 1, !dbg !2120
  store i64 %inc439, i64* %i, align 8, !dbg !2120
  %227 = load i8*, i8** %arg.addr, align 8, !dbg !2121
  %arrayidx440 = getelementptr inbounds i8, i8* %227, i64 %inc439, !dbg !2121
  %228 = load i8, i8* %arrayidx440, align 1, !dbg !2121
  store i8 %228, i8* %c, align 1, !dbg !2122
  br label %for.cond.363, !dbg !2123

for.end.441:                                      ; preds = %if.then.428
  br label %store_c, !dbg !2124

if.end.442:                                       ; preds = %land.lhs.true.359, %lor.lhs.false
  br label %sw.epilog.443, !dbg !2125

sw.epilog.443:                                    ; preds = %if.end.442, %sw.bb.278, %if.end.277, %if.end.245, %if.then.236, %if.then.231, %if.end.219, %sw.epilog.192, %if.end.126
  %229 = load i8, i8* %backslash_escapes, align 1, !dbg !2126
  %tobool444 = trunc i8 %229 to i1, !dbg !2126
  br i1 %tobool444, label %land.lhs.true.449, label %lor.lhs.false.446, !dbg !2128

lor.lhs.false.446:                                ; preds = %sw.epilog.443
  %230 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2129
  %tobool447 = trunc i8 %230 to i1, !dbg !2129
  br i1 %tobool447, label %land.lhs.true.449, label %land.lhs.true.458, !dbg !2131

land.lhs.true.449:                                ; preds = %lor.lhs.false.446, %sw.epilog.443
  %231 = load i32*, i32** %quote_these_too.addr, align 8, !dbg !2132
  %tobool450 = icmp ne i32* %231, null, !dbg !2132
  br i1 %tobool450, label %land.lhs.true.451, label %land.lhs.true.458, !dbg !2133

land.lhs.true.451:                                ; preds = %land.lhs.true.449
  %232 = load i8, i8* %c, align 1, !dbg !2134
  %conv452 = zext i8 %232 to i64, !dbg !2134
  %div = udiv i64 %conv452, 32, !dbg !2135
  %233 = load i32*, i32** %quote_these_too.addr, align 8, !dbg !2136
  %arrayidx453 = getelementptr inbounds i32, i32* %233, i64 %div, !dbg !2136
  %234 = load i32, i32* %arrayidx453, align 4, !dbg !2136
  %235 = load i8, i8* %c, align 1, !dbg !2137
  %conv454 = zext i8 %235 to i64, !dbg !2137
  %rem = urem i64 %conv454, 32, !dbg !2138
  %sh_prom = trunc i64 %rem to i32, !dbg !2139
  %shr455 = lshr i32 %234, %sh_prom, !dbg !2139
  %and456 = and i32 %shr455, 1, !dbg !2140
  %tobool457 = icmp ne i32 %and456, 0, !dbg !2140
  br i1 %tobool457, label %if.end.461, label %land.lhs.true.458, !dbg !2141

land.lhs.true.458:                                ; preds = %land.lhs.true.451, %land.lhs.true.449, %lor.lhs.false.446
  %236 = load i8, i8* %is_right_quote, align 1, !dbg !2142
  %tobool459 = trunc i8 %236 to i1, !dbg !2142
  br i1 %tobool459, label %if.end.461, label %if.then.460, !dbg !2144

if.then.460:                                      ; preds = %land.lhs.true.458
  br label %store_c, !dbg !2145

if.end.461:                                       ; preds = %land.lhs.true.458, %land.lhs.true.451
  br label %store_escape, !dbg !2146

store_escape:                                     ; preds = %if.end.461, %if.then.218
  %237 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2147
  %tobool462 = trunc i8 %237 to i1, !dbg !2147
  br i1 %tobool462, label %if.then.463, label %if.end.464, !dbg !2149

if.then.463:                                      ; preds = %store_escape
  br label %force_outer_quoting_style, !dbg !2150

if.end.464:                                       ; preds = %store_escape
  br label %do.body.465, !dbg !2151

do.body.465:                                      ; preds = %if.end.464
  %238 = load i64, i64* %len, align 8, !dbg !2152
  %239 = load i64, i64* %buffersize.addr, align 8, !dbg !2152
  %cmp466 = icmp ult i64 %238, %239, !dbg !2152
  br i1 %cmp466, label %if.then.468, label %if.end.470, !dbg !2156

if.then.468:                                      ; preds = %do.body.465
  %240 = load i64, i64* %len, align 8, !dbg !2157
  %241 = load i8*, i8** %buffer.addr, align 8, !dbg !2157
  %arrayidx469 = getelementptr inbounds i8, i8* %241, i64 %240, !dbg !2157
  store i8 92, i8* %arrayidx469, align 1, !dbg !2157
  br label %if.end.470, !dbg !2157

if.end.470:                                       ; preds = %if.then.468, %do.body.465
  %242 = load i64, i64* %len, align 8, !dbg !2159
  %inc471 = add i64 %242, 1, !dbg !2159
  store i64 %inc471, i64* %len, align 8, !dbg !2159
  br label %do.end.473, !dbg !2159

do.end.473:                                       ; preds = %if.end.470
  br label %store_c, !dbg !2162

store_c:                                          ; preds = %do.end.473, %if.then.460, %for.end.441, %if.then.208
  br label %do.body.474, !dbg !2164

do.body.474:                                      ; preds = %store_c
  %243 = load i64, i64* %len, align 8, !dbg !2165
  %244 = load i64, i64* %buffersize.addr, align 8, !dbg !2165
  %cmp475 = icmp ult i64 %243, %244, !dbg !2165
  br i1 %cmp475, label %if.then.477, label %if.end.479, !dbg !2169

if.then.477:                                      ; preds = %do.body.474
  %245 = load i8, i8* %c, align 1, !dbg !2170
  %246 = load i64, i64* %len, align 8, !dbg !2170
  %247 = load i8*, i8** %buffer.addr, align 8, !dbg !2170
  %arrayidx478 = getelementptr inbounds i8, i8* %247, i64 %246, !dbg !2170
  store i8 %245, i8* %arrayidx478, align 1, !dbg !2170
  br label %if.end.479, !dbg !2170

if.end.479:                                       ; preds = %if.then.477, %do.body.474
  %248 = load i64, i64* %len, align 8, !dbg !2172
  %inc480 = add i64 %248, 1, !dbg !2172
  store i64 %inc480, i64* %len, align 8, !dbg !2172
  br label %do.end.482, !dbg !2172

do.end.482:                                       ; preds = %if.end.479
  br label %for.inc.483, !dbg !2175

for.inc.483:                                      ; preds = %do.end.482, %if.then.124
  %249 = load i64, i64* %i, align 8, !dbg !2176
  %inc484 = add i64 %249, 1, !dbg !2176
  store i64 %inc484, i64* %i, align 8, !dbg !2176
  br label %for.cond.39, !dbg !2177

for.end.485:                                      ; preds = %cond.end
  %250 = load i64, i64* %len, align 8, !dbg !2178
  %cmp486 = icmp eq i64 %250, 0, !dbg !2180
  br i1 %cmp486, label %land.lhs.true.488, label %if.end.495, !dbg !2181

land.lhs.true.488:                                ; preds = %for.end.485
  %251 = load i32, i32* %quoting_style.addr, align 4, !dbg !2182
  %cmp489 = icmp eq i32 %251, 2, !dbg !2184
  br i1 %cmp489, label %land.lhs.true.491, label %if.end.495, !dbg !2185

land.lhs.true.491:                                ; preds = %land.lhs.true.488
  %252 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2186
  %tobool492 = trunc i8 %252 to i1, !dbg !2186
  br i1 %tobool492, label %if.then.494, label %if.end.495, !dbg !2187

if.then.494:                                      ; preds = %land.lhs.true.491
  br label %force_outer_quoting_style, !dbg !2188

if.end.495:                                       ; preds = %land.lhs.true.491, %land.lhs.true.488, %for.end.485
  %253 = load i8*, i8** %quote_string, align 8, !dbg !2189
  %tobool496 = icmp ne i8* %253, null, !dbg !2189
  br i1 %tobool496, label %land.lhs.true.497, label %if.end.515, !dbg !2191

land.lhs.true.497:                                ; preds = %if.end.495
  %254 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2192
  %tobool498 = trunc i8 %254 to i1, !dbg !2192
  br i1 %tobool498, label %if.end.515, label %if.then.499, !dbg !2194

if.then.499:                                      ; preds = %land.lhs.true.497
  br label %for.cond.500, !dbg !2195

for.cond.500:                                     ; preds = %for.inc.512, %if.then.499
  %255 = load i8*, i8** %quote_string, align 8, !dbg !2196
  %256 = load i8, i8* %255, align 1, !dbg !2201
  %tobool501 = icmp ne i8 %256, 0, !dbg !2202
  br i1 %tobool501, label %for.body.502, label %for.end.514, !dbg !2202

for.body.502:                                     ; preds = %for.cond.500
  br label %do.body.503, !dbg !2203

do.body.503:                                      ; preds = %for.body.502
  %257 = load i64, i64* %len, align 8, !dbg !2204
  %258 = load i64, i64* %buffersize.addr, align 8, !dbg !2204
  %cmp504 = icmp ult i64 %257, %258, !dbg !2204
  br i1 %cmp504, label %if.then.506, label %if.end.508, !dbg !2208

if.then.506:                                      ; preds = %do.body.503
  %259 = load i8*, i8** %quote_string, align 8, !dbg !2209
  %260 = load i8, i8* %259, align 1, !dbg !2209
  %261 = load i64, i64* %len, align 8, !dbg !2209
  %262 = load i8*, i8** %buffer.addr, align 8, !dbg !2209
  %arrayidx507 = getelementptr inbounds i8, i8* %262, i64 %261, !dbg !2209
  store i8 %260, i8* %arrayidx507, align 1, !dbg !2209
  br label %if.end.508, !dbg !2209

if.end.508:                                       ; preds = %if.then.506, %do.body.503
  %263 = load i64, i64* %len, align 8, !dbg !2211
  %inc509 = add i64 %263, 1, !dbg !2211
  store i64 %inc509, i64* %len, align 8, !dbg !2211
  br label %do.end.511, !dbg !2211

do.end.511:                                       ; preds = %if.end.508
  br label %for.inc.512, !dbg !2214

for.inc.512:                                      ; preds = %do.end.511
  %264 = load i8*, i8** %quote_string, align 8, !dbg !2216
  %incdec.ptr513 = getelementptr inbounds i8, i8* %264, i32 1, !dbg !2216
  store i8* %incdec.ptr513, i8** %quote_string, align 8, !dbg !2216
  br label %for.cond.500, !dbg !2217

for.end.514:                                      ; preds = %for.cond.500
  br label %if.end.515, !dbg !2218

if.end.515:                                       ; preds = %for.end.514, %land.lhs.true.497, %if.end.495
  %265 = load i64, i64* %len, align 8, !dbg !2219
  %266 = load i64, i64* %buffersize.addr, align 8, !dbg !2221
  %cmp516 = icmp ult i64 %265, %266, !dbg !2222
  br i1 %cmp516, label %if.then.518, label %if.end.520, !dbg !2223

if.then.518:                                      ; preds = %if.end.515
  %267 = load i64, i64* %len, align 8, !dbg !2224
  %268 = load i8*, i8** %buffer.addr, align 8, !dbg !2225
  %arrayidx519 = getelementptr inbounds i8, i8* %268, i64 %267, !dbg !2225
  store i8 0, i8* %arrayidx519, align 1, !dbg !2226
  br label %if.end.520, !dbg !2225

if.end.520:                                       ; preds = %if.then.518, %if.end.515
  %269 = load i64, i64* %len, align 8, !dbg !2227
  store i64 %269, i64* %retval, !dbg !2228
  br label %return, !dbg !2228

force_outer_quoting_style:                        ; preds = %if.then.494, %if.then.463, %if.then.370, %sw.bb.335, %if.then.251, %if.then.244, %if.then.215, %if.then.151, %if.then.130, %if.then.79, %if.then.70
  %270 = load i8*, i8** %buffer.addr, align 8, !dbg !2229
  %271 = load i64, i64* %buffersize.addr, align 8, !dbg !2230
  %272 = load i8*, i8** %arg.addr, align 8, !dbg !2231
  %273 = load i64, i64* %argsize.addr, align 8, !dbg !2232
  %274 = load i32, i32* %quoting_style.addr, align 4, !dbg !2233
  %275 = load i32, i32* %flags.addr, align 4, !dbg !2234
  %and521 = and i32 %275, -3, !dbg !2235
  %276 = load i8*, i8** %left_quote.addr, align 8, !dbg !2236
  %277 = load i8*, i8** %right_quote.addr, align 8, !dbg !2237
  %call522 = call i64 @quotearg_buffer_restyled(i8* %270, i64 %271, i8* %272, i64 %273, i32 %274, i32 %and521, i32* null, i8* %276, i8* %277), !dbg !2238
  store i64 %call522, i64* %retval, !dbg !2239
  br label %return, !dbg !2239

return:                                           ; preds = %force_outer_quoting_style, %if.end.520
  %278 = load i64, i64* %retval, !dbg !2240
  ret i64 %278, !dbg !2240
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_options(i32 %n, i8* %arg, i64 %argsize, %struct.quoting_options* %options) #5 !dbg !2241 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %options.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %n0 = alloca i32, align 4
  %sv = alloca %struct.slotvec*, align 8
  %n1 = alloca i64, align 8
  %preallocated = alloca i8, align 1
  %size = alloca i64, align 8
  %val = alloca i8*, align 8
  %flags = alloca i32, align 4
  %qsize = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !2244, metadata !DIExpression()), !dbg !2245
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !2246, metadata !DIExpression()), !dbg !2247
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !2248, metadata !DIExpression()), !dbg !2249
  store %struct.quoting_options* %options, %struct.quoting_options** %options.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %options.addr, metadata !2250, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.declare(metadata i32* %e, metadata !2252, metadata !DIExpression()), !dbg !2253
  %call = call i32* @__errno_location() #17, !dbg !2254
  %0 = load i32, i32* %call, align 4, !dbg !2254
  store i32 %0, i32* %e, align 4, !dbg !2253
  call void @llvm.dbg.declare(metadata i32* %n0, metadata !2255, metadata !DIExpression()), !dbg !2256
  %1 = load i32, i32* %n.addr, align 4, !dbg !2257
  store i32 %1, i32* %n0, align 4, !dbg !2256
  call void @llvm.dbg.declare(metadata %struct.slotvec** %sv, metadata !2258, metadata !DIExpression()), !dbg !2259
  %2 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2260
  store %struct.slotvec* %2, %struct.slotvec** %sv, align 8, !dbg !2259
  %3 = load i32, i32* %n.addr, align 4, !dbg !2261
  %cmp = icmp slt i32 %3, 0, !dbg !2263
  br i1 %cmp, label %if.then, label %if.end, !dbg !2264

if.then:                                          ; preds = %entry
  call void @abort() #14, !dbg !2265
  unreachable, !dbg !2265

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @nslots, align 4, !dbg !2266
  %5 = load i32, i32* %n0, align 4, !dbg !2268
  %cmp1 = icmp ule i32 %4, %5, !dbg !2269
  br i1 %cmp1, label %if.then.2, label %if.end.17, !dbg !2270

if.then.2:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %n1, metadata !2271, metadata !DIExpression()), !dbg !2273
  %6 = load i32, i32* %n0, align 4, !dbg !2274
  %add = add i32 %6, 1, !dbg !2275
  %conv = zext i32 %add to i64, !dbg !2274
  store i64 %conv, i64* %n1, align 8, !dbg !2273
  call void @llvm.dbg.declare(metadata i8* %preallocated, metadata !2276, metadata !DIExpression()), !dbg !2277
  %7 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2278
  %cmp3 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2279
  %frombool = zext i1 %cmp3 to i8, !dbg !2277
  store i8 %frombool, i8* %preallocated, align 1, !dbg !2277
  %8 = load i64, i64* %n1, align 8, !dbg !2280
  %cmp5 = icmp ult i64 1152921504606846975, %8, !dbg !2280
  br i1 %cmp5, label %if.then.7, label %if.end.8, !dbg !2282

if.then.7:                                        ; preds = %if.then.2
  call void @xalloc_die() #16, !dbg !2283
  unreachable, !dbg !2283

if.end.8:                                         ; preds = %if.then.2
  %9 = load i8, i8* %preallocated, align 1, !dbg !2284
  %tobool = trunc i8 %9 to i1, !dbg !2284
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2284

cond.true:                                        ; preds = %if.end.8
  br label %cond.end, !dbg !2285

cond.false:                                       ; preds = %if.end.8
  %10 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2287
  br label %cond.end, !dbg !2284

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.slotvec* [ null, %cond.true ], [ %10, %cond.false ], !dbg !2284
  %11 = bitcast %struct.slotvec* %cond to i8*, !dbg !2289
  %12 = load i64, i64* %n1, align 8, !dbg !2292
  %mul = mul i64 %12, 16, !dbg !2293
  %call10 = call i8* @xrealloc(i8* %11, i64 %mul), !dbg !2294
  %13 = bitcast i8* %call10 to %struct.slotvec*, !dbg !2294
  store %struct.slotvec* %13, %struct.slotvec** %sv, align 8, !dbg !2295
  store %struct.slotvec* %13, %struct.slotvec** @slotvec, align 8, !dbg !2296
  %14 = load i8, i8* %preallocated, align 1, !dbg !2297
  %tobool11 = trunc i8 %14 to i1, !dbg !2297
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !2299

if.then.12:                                       ; preds = %cond.end
  %15 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2300
  %16 = bitcast %struct.slotvec* %15 to i8*, !dbg !2301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2301
  br label %if.end.13, !dbg !2302

if.end.13:                                        ; preds = %if.then.12, %cond.end
  %17 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2303
  %18 = load i32, i32* @nslots, align 4, !dbg !2304
  %idx.ext = zext i32 %18 to i64, !dbg !2305
  %add.ptr = getelementptr inbounds %struct.slotvec, %struct.slotvec* %17, i64 %idx.ext, !dbg !2305
  %19 = bitcast %struct.slotvec* %add.ptr to i8*, !dbg !2306
  %20 = load i64, i64* %n1, align 8, !dbg !2307
  %21 = load i32, i32* @nslots, align 4, !dbg !2308
  %conv14 = zext i32 %21 to i64, !dbg !2308
  %sub = sub i64 %20, %conv14, !dbg !2309
  %mul15 = mul i64 %sub, 16, !dbg !2310
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 %mul15, i1 false), !dbg !2306
  %22 = load i64, i64* %n1, align 8, !dbg !2311
  %conv16 = trunc i64 %22 to i32, !dbg !2311
  store i32 %conv16, i32* @nslots, align 4, !dbg !2312
  br label %if.end.17, !dbg !2313

if.end.17:                                        ; preds = %if.end.13, %if.end
  call void @llvm.dbg.declare(metadata i64* %size, metadata !2314, metadata !DIExpression()), !dbg !2316
  %23 = load i32, i32* %n.addr, align 4, !dbg !2317
  %idxprom = sext i32 %23 to i64, !dbg !2318
  %24 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2318
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %idxprom, !dbg !2318
  %size18 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 0, !dbg !2319
  %25 = load i64, i64* %size18, align 8, !dbg !2319
  store i64 %25, i64* %size, align 8, !dbg !2316
  call void @llvm.dbg.declare(metadata i8** %val, metadata !2320, metadata !DIExpression()), !dbg !2321
  %26 = load i32, i32* %n.addr, align 4, !dbg !2322
  %idxprom19 = sext i32 %26 to i64, !dbg !2323
  %27 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2323
  %arrayidx20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %27, i64 %idxprom19, !dbg !2323
  %val21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx20, i32 0, i32 1, !dbg !2324
  %28 = load i8*, i8** %val21, align 8, !dbg !2324
  store i8* %28, i8** %val, align 8, !dbg !2321
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !2325, metadata !DIExpression()), !dbg !2326
  %29 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2327
  %flags22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %29, i32 0, i32 1, !dbg !2328
  %30 = load i32, i32* %flags22, align 4, !dbg !2328
  %or = or i32 %30, 1, !dbg !2329
  store i32 %or, i32* %flags, align 4, !dbg !2326
  call void @llvm.dbg.declare(metadata i64* %qsize, metadata !2330, metadata !DIExpression()), !dbg !2331
  %31 = load i8*, i8** %val, align 8, !dbg !2332
  %32 = load i64, i64* %size, align 8, !dbg !2333
  %33 = load i8*, i8** %arg.addr, align 8, !dbg !2334
  %34 = load i64, i64* %argsize.addr, align 8, !dbg !2335
  %35 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2336
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %35, i32 0, i32 0, !dbg !2337
  %36 = load i32, i32* %style, align 4, !dbg !2337
  %37 = load i32, i32* %flags, align 4, !dbg !2338
  %38 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2339
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %38, i32 0, i32 2, !dbg !2340
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !2339
  %39 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2341
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 3, !dbg !2342
  %40 = load i8*, i8** %left_quote, align 8, !dbg !2342
  %41 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2343
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %41, i32 0, i32 4, !dbg !2344
  %42 = load i8*, i8** %right_quote, align 8, !dbg !2344
  %call23 = call i64 @quotearg_buffer_restyled(i8* %31, i64 %32, i8* %33, i64 %34, i32 %36, i32 %37, i32* %arraydecay, i8* %40, i8* %42), !dbg !2345
  store i64 %call23, i64* %qsize, align 8, !dbg !2331
  %43 = load i64, i64* %size, align 8, !dbg !2346
  %44 = load i64, i64* %qsize, align 8, !dbg !2348
  %cmp24 = icmp ule i64 %43, %44, !dbg !2349
  br i1 %cmp24, label %if.then.26, label %if.end.45, !dbg !2350

if.then.26:                                       ; preds = %if.end.17
  %45 = load i64, i64* %qsize, align 8, !dbg !2351
  %add27 = add i64 %45, 1, !dbg !2353
  store i64 %add27, i64* %size, align 8, !dbg !2354
  %46 = load i32, i32* %n.addr, align 4, !dbg !2355
  %idxprom28 = sext i32 %46 to i64, !dbg !2356
  %47 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2356
  %arrayidx29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %47, i64 %idxprom28, !dbg !2356
  %size30 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx29, i32 0, i32 0, !dbg !2357
  store i64 %add27, i64* %size30, align 8, !dbg !2358
  %48 = load i8*, i8** %val, align 8, !dbg !2359
  %cmp31 = icmp ne i8* %48, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), !dbg !2361
  br i1 %cmp31, label %if.then.33, label %if.end.34, !dbg !2362

if.then.33:                                       ; preds = %if.then.26
  %49 = load i8*, i8** %val, align 8, !dbg !2363
  call void @free(i8* %49) #10, !dbg !2364
  br label %if.end.34, !dbg !2364

if.end.34:                                        ; preds = %if.then.33, %if.then.26
  %50 = load i64, i64* %size, align 8, !dbg !2365
  %call35 = call noalias i8* @xcharalloc(i64 %50), !dbg !2366
  store i8* %call35, i8** %val, align 8, !dbg !2367
  %51 = load i32, i32* %n.addr, align 4, !dbg !2368
  %idxprom36 = sext i32 %51 to i64, !dbg !2369
  %52 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2369
  %arrayidx37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %52, i64 %idxprom36, !dbg !2369
  %val38 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx37, i32 0, i32 1, !dbg !2370
  store i8* %call35, i8** %val38, align 8, !dbg !2371
  %53 = load i8*, i8** %val, align 8, !dbg !2372
  %54 = load i64, i64* %size, align 8, !dbg !2373
  %55 = load i8*, i8** %arg.addr, align 8, !dbg !2374
  %56 = load i64, i64* %argsize.addr, align 8, !dbg !2375
  %57 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2376
  %style39 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %57, i32 0, i32 0, !dbg !2377
  %58 = load i32, i32* %style39, align 4, !dbg !2377
  %59 = load i32, i32* %flags, align 4, !dbg !2378
  %60 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2379
  %quote_these_too40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %60, i32 0, i32 2, !dbg !2380
  %arraydecay41 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too40, i32 0, i32 0, !dbg !2379
  %61 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2381
  %left_quote42 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2382
  %62 = load i8*, i8** %left_quote42, align 8, !dbg !2382
  %63 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2383
  %right_quote43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %63, i32 0, i32 4, !dbg !2384
  %64 = load i8*, i8** %right_quote43, align 8, !dbg !2384
  %call44 = call i64 @quotearg_buffer_restyled(i8* %53, i64 %54, i8* %55, i64 %56, i32 %58, i32 %59, i32* %arraydecay41, i8* %62, i8* %64), !dbg !2385
  br label %if.end.45, !dbg !2386

if.end.45:                                        ; preds = %if.end.34, %if.end.17
  %65 = load i32, i32* %e, align 4, !dbg !2387
  %call46 = call i32* @__errno_location() #17, !dbg !2388
  store i32 %65, i32* %call46, align 4, !dbg !2389
  %66 = load i8*, i8** %val, align 8, !dbg !2390
  ret i8* %66, !dbg !2391
}

; Function Attrs: nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret %agg.result, i32 %style) #5 !dbg !2392 {
entry:
  %style.addr = alloca i32, align 4
  %o = alloca %struct.quoting_options, align 8
  store i32 %style, i32* %style.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %style.addr, metadata !2395, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %o, metadata !2397, metadata !DIExpression()), !dbg !2398
  %0 = bitcast %struct.quoting_options* %o to i8*, !dbg !2398
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !2398
  %1 = load i32, i32* %style.addr, align 4, !dbg !2399
  %cmp = icmp eq i32 %1, 8, !dbg !2401
  br i1 %cmp, label %if.then, label %if.end, !dbg !2402

if.then:                                          ; preds = %entry
  call void @abort() #14, !dbg !2403
  unreachable, !dbg !2403

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %style.addr, align 4, !dbg !2404
  %style1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %o, i32 0, i32 0, !dbg !2405
  store i32 %2, i32* %style1, align 4, !dbg !2406
  %3 = bitcast %struct.quoting_options* %agg.result to i8*, !dbg !2407
  %4 = bitcast %struct.quoting_options* %o to i8*, !dbg !2407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 56, i1 false), !dbg !2407
  ret void, !dbg !2408
}

; Function Attrs: nounwind uwtable
define internal i8* @gettext_quote(i8* %msgid, i32 %s) #5 !dbg !2409 {
entry:
  %retval = alloca i8*, align 8
  %msgid.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %translation = alloca i8*, align 8
  %locale_code = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msgid.addr, metadata !2412, metadata !DIExpression()), !dbg !2413
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !2414, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.declare(metadata i8** %translation, metadata !2416, metadata !DIExpression()), !dbg !2417
  %0 = load i8*, i8** %msgid.addr, align 8, !dbg !2418
  %call = call i8* @gettext(i8* %0) #10, !dbg !2418
  store i8* %call, i8** %translation, align 8, !dbg !2417
  call void @llvm.dbg.declare(metadata i8** %locale_code, metadata !2419, metadata !DIExpression()), !dbg !2420
  %1 = load i8*, i8** %translation, align 8, !dbg !2421
  %2 = load i8*, i8** %msgid.addr, align 8, !dbg !2423
  %cmp = icmp ne i8* %1, %2, !dbg !2424
  br i1 %cmp, label %if.then, label %if.end, !dbg !2425

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %translation, align 8, !dbg !2426
  store i8* %3, i8** %retval, !dbg !2427
  br label %return, !dbg !2427

if.end:                                           ; preds = %entry
  %call1 = call i8* @locale_charset(), !dbg !2428
  store i8* %call1, i8** %locale_code, align 8, !dbg !2429
  %4 = load i8*, i8** %locale_code, align 8, !dbg !2430
  %call2 = call i32 @c_strcasecmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11.54, i32 0, i32 0)) #15, !dbg !2430
  %cmp3 = icmp eq i32 %call2, 0, !dbg !2430
  br i1 %cmp3, label %if.then.4, label %if.end.7, !dbg !2432

if.then.4:                                        ; preds = %if.end
  %5 = load i8*, i8** %msgid.addr, align 8, !dbg !2433
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0, !dbg !2433
  %6 = load i8, i8* %arrayidx, align 1, !dbg !2433
  %conv = sext i8 %6 to i32, !dbg !2433
  %cmp5 = icmp eq i32 %conv, 96, !dbg !2434
  %cond = select i1 %cmp5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.55, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13.56, i32 0, i32 0), !dbg !2433
  store i8* %cond, i8** %retval, !dbg !2435
  br label %return, !dbg !2435

if.end.7:                                         ; preds = %if.end
  %7 = load i8*, i8** %locale_code, align 8, !dbg !2436
  %call8 = call i32 @c_strcasecmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14.57, i32 0, i32 0)) #15, !dbg !2436
  %cmp9 = icmp eq i32 %call8, 0, !dbg !2436
  br i1 %cmp9, label %if.then.11, label %if.end.17, !dbg !2438

if.then.11:                                       ; preds = %if.end.7
  %8 = load i8*, i8** %msgid.addr, align 8, !dbg !2439
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !2439
  %9 = load i8, i8* %arrayidx12, align 1, !dbg !2439
  %conv13 = sext i8 %9 to i32, !dbg !2439
  %cmp14 = icmp eq i32 %conv13, 96, !dbg !2440
  %cond16 = select i1 %cmp14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16.59, i32 0, i32 0), !dbg !2439
  store i8* %cond16, i8** %retval, !dbg !2441
  br label %return, !dbg !2441

if.end.17:                                        ; preds = %if.end.7
  %10 = load i32, i32* %s.addr, align 4, !dbg !2442
  %cmp18 = icmp eq i32 %10, 7, !dbg !2443
  %cond20 = select i1 %cmp18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i32 0, i32 0), !dbg !2442
  store i8* %cond20, i8** %retval, !dbg !2444
  br label %return, !dbg !2444

return:                                           ; preds = %if.end.17, %if.then.11, %if.then.4, %if.then
  %11 = load i8*, i8** %retval, !dbg !2445
  ret i8* %11, !dbg !2445
}

; Function Attrs: nounwind uwtable
define internal void @version_etc_arn(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** %authors, i64 %n_authors) #5 !dbg !2446 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca i8**, align 8
  %n_authors.addr = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !2505, metadata !DIExpression()), !dbg !2506
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %command_name.addr, metadata !2507, metadata !DIExpression()), !dbg !2508
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %package.addr, metadata !2509, metadata !DIExpression()), !dbg !2510
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %version.addr, metadata !2511, metadata !DIExpression()), !dbg !2512
  store i8** %authors, i8*** %authors.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %authors.addr, metadata !2513, metadata !DIExpression()), !dbg !2514
  store i64 %n_authors, i64* %n_authors.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n_authors.addr, metadata !2515, metadata !DIExpression()), !dbg !2516
  %0 = load i8*, i8** %command_name.addr, align 8, !dbg !2517
  %tobool = icmp ne i8* %0, null, !dbg !2517
  br i1 %tobool, label %if.then, label %if.else, !dbg !2519

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2520
  %2 = load i8*, i8** %command_name.addr, align 8, !dbg !2521
  %3 = load i8*, i8** %package.addr, align 8, !dbg !2522
  %4 = load i8*, i8** %version.addr, align 8, !dbg !2523
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* %2, i8* %3, i8* %4), !dbg !2524
  br label %if.end, !dbg !2524

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2525
  %6 = load i8*, i8** %package.addr, align 8, !dbg !2526
  %7 = load i8*, i8** %version.addr, align 8, !dbg !2527
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.66, i32 0, i32 0), i8* %6, i8* %7), !dbg !2528
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2529
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.67, i32 0, i32 0)) #10, !dbg !2530
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* %call2, i32 2015), !dbg !2531
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.68, i32 0, i32 0)) #10, !dbg !2532
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2532
  %call5 = call i32 @fputs_unlocked(i8* %call4, %struct._IO_FILE* %9), !dbg !2532
  %10 = load i64, i64* %n_authors.addr, align 8, !dbg !2533
  switch i64 %10, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.6
    i64 2, label %sw.bb.9
    i64 3, label %sw.bb.14
    i64 4, label %sw.bb.20
    i64 5, label %sw.bb.27
    i64 6, label %sw.bb.35
    i64 7, label %sw.bb.44
    i64 8, label %sw.bb.54
    i64 9, label %sw.bb.65
  ], !dbg !2534

sw.bb:                                            ; preds = %if.end
  call void @abort() #14, !dbg !2535
  unreachable, !dbg !2535

sw.bb.6:                                          ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2537
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.69, i32 0, i32 0)) #10, !dbg !2538
  %12 = load i8**, i8*** %authors.addr, align 8, !dbg !2539
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 0, !dbg !2539
  %13 = load i8*, i8** %arrayidx, align 8, !dbg !2539
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* %call7, i8* %13), !dbg !2540
  br label %sw.epilog, !dbg !2541

sw.bb.9:                                          ; preds = %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2542
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.70, i32 0, i32 0)) #10, !dbg !2543
  %15 = load i8**, i8*** %authors.addr, align 8, !dbg !2544
  %arrayidx11 = getelementptr inbounds i8*, i8** %15, i64 0, !dbg !2544
  %16 = load i8*, i8** %arrayidx11, align 8, !dbg !2544
  %17 = load i8**, i8*** %authors.addr, align 8, !dbg !2545
  %arrayidx12 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !2545
  %18 = load i8*, i8** %arrayidx12, align 8, !dbg !2545
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* %call10, i8* %16, i8* %18), !dbg !2546
  br label %sw.epilog, !dbg !2547

sw.bb.14:                                         ; preds = %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2548
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.71, i32 0, i32 0)) #10, !dbg !2549
  %20 = load i8**, i8*** %authors.addr, align 8, !dbg !2550
  %arrayidx16 = getelementptr inbounds i8*, i8** %20, i64 0, !dbg !2550
  %21 = load i8*, i8** %arrayidx16, align 8, !dbg !2550
  %22 = load i8**, i8*** %authors.addr, align 8, !dbg !2551
  %arrayidx17 = getelementptr inbounds i8*, i8** %22, i64 1, !dbg !2551
  %23 = load i8*, i8** %arrayidx17, align 8, !dbg !2551
  %24 = load i8**, i8*** %authors.addr, align 8, !dbg !2552
  %arrayidx18 = getelementptr inbounds i8*, i8** %24, i64 2, !dbg !2552
  %25 = load i8*, i8** %arrayidx18, align 8, !dbg !2552
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* %call15, i8* %21, i8* %23, i8* %25), !dbg !2553
  br label %sw.epilog, !dbg !2554

sw.bb.20:                                         ; preds = %if.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2555
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.72, i32 0, i32 0)) #10, !dbg !2556
  %27 = load i8**, i8*** %authors.addr, align 8, !dbg !2557
  %arrayidx22 = getelementptr inbounds i8*, i8** %27, i64 0, !dbg !2557
  %28 = load i8*, i8** %arrayidx22, align 8, !dbg !2557
  %29 = load i8**, i8*** %authors.addr, align 8, !dbg !2558
  %arrayidx23 = getelementptr inbounds i8*, i8** %29, i64 1, !dbg !2558
  %30 = load i8*, i8** %arrayidx23, align 8, !dbg !2558
  %31 = load i8**, i8*** %authors.addr, align 8, !dbg !2559
  %arrayidx24 = getelementptr inbounds i8*, i8** %31, i64 2, !dbg !2559
  %32 = load i8*, i8** %arrayidx24, align 8, !dbg !2559
  %33 = load i8**, i8*** %authors.addr, align 8, !dbg !2560
  %arrayidx25 = getelementptr inbounds i8*, i8** %33, i64 3, !dbg !2560
  %34 = load i8*, i8** %arrayidx25, align 8, !dbg !2560
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* %call21, i8* %28, i8* %30, i8* %32, i8* %34), !dbg !2561
  br label %sw.epilog, !dbg !2562

sw.bb.27:                                         ; preds = %if.end
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2563
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.73, i32 0, i32 0)) #10, !dbg !2564
  %36 = load i8**, i8*** %authors.addr, align 8, !dbg !2565
  %arrayidx29 = getelementptr inbounds i8*, i8** %36, i64 0, !dbg !2565
  %37 = load i8*, i8** %arrayidx29, align 8, !dbg !2565
  %38 = load i8**, i8*** %authors.addr, align 8, !dbg !2566
  %arrayidx30 = getelementptr inbounds i8*, i8** %38, i64 1, !dbg !2566
  %39 = load i8*, i8** %arrayidx30, align 8, !dbg !2566
  %40 = load i8**, i8*** %authors.addr, align 8, !dbg !2567
  %arrayidx31 = getelementptr inbounds i8*, i8** %40, i64 2, !dbg !2567
  %41 = load i8*, i8** %arrayidx31, align 8, !dbg !2567
  %42 = load i8**, i8*** %authors.addr, align 8, !dbg !2568
  %arrayidx32 = getelementptr inbounds i8*, i8** %42, i64 3, !dbg !2568
  %43 = load i8*, i8** %arrayidx32, align 8, !dbg !2568
  %44 = load i8**, i8*** %authors.addr, align 8, !dbg !2569
  %arrayidx33 = getelementptr inbounds i8*, i8** %44, i64 4, !dbg !2569
  %45 = load i8*, i8** %arrayidx33, align 8, !dbg !2569
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* %call28, i8* %37, i8* %39, i8* %41, i8* %43, i8* %45), !dbg !2570
  br label %sw.epilog, !dbg !2571

sw.bb.35:                                         ; preds = %if.end
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2572
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.74, i32 0, i32 0)) #10, !dbg !2573
  %47 = load i8**, i8*** %authors.addr, align 8, !dbg !2574
  %arrayidx37 = getelementptr inbounds i8*, i8** %47, i64 0, !dbg !2574
  %48 = load i8*, i8** %arrayidx37, align 8, !dbg !2574
  %49 = load i8**, i8*** %authors.addr, align 8, !dbg !2575
  %arrayidx38 = getelementptr inbounds i8*, i8** %49, i64 1, !dbg !2575
  %50 = load i8*, i8** %arrayidx38, align 8, !dbg !2575
  %51 = load i8**, i8*** %authors.addr, align 8, !dbg !2576
  %arrayidx39 = getelementptr inbounds i8*, i8** %51, i64 2, !dbg !2576
  %52 = load i8*, i8** %arrayidx39, align 8, !dbg !2576
  %53 = load i8**, i8*** %authors.addr, align 8, !dbg !2577
  %arrayidx40 = getelementptr inbounds i8*, i8** %53, i64 3, !dbg !2577
  %54 = load i8*, i8** %arrayidx40, align 8, !dbg !2577
  %55 = load i8**, i8*** %authors.addr, align 8, !dbg !2578
  %arrayidx41 = getelementptr inbounds i8*, i8** %55, i64 4, !dbg !2578
  %56 = load i8*, i8** %arrayidx41, align 8, !dbg !2578
  %57 = load i8**, i8*** %authors.addr, align 8, !dbg !2579
  %arrayidx42 = getelementptr inbounds i8*, i8** %57, i64 5, !dbg !2579
  %58 = load i8*, i8** %arrayidx42, align 8, !dbg !2579
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* %call36, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56, i8* %58), !dbg !2580
  br label %sw.epilog, !dbg !2581

sw.bb.44:                                         ; preds = %if.end
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2582
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.75, i32 0, i32 0)) #10, !dbg !2583
  %60 = load i8**, i8*** %authors.addr, align 8, !dbg !2584
  %arrayidx46 = getelementptr inbounds i8*, i8** %60, i64 0, !dbg !2584
  %61 = load i8*, i8** %arrayidx46, align 8, !dbg !2584
  %62 = load i8**, i8*** %authors.addr, align 8, !dbg !2585
  %arrayidx47 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2585
  %63 = load i8*, i8** %arrayidx47, align 8, !dbg !2585
  %64 = load i8**, i8*** %authors.addr, align 8, !dbg !2586
  %arrayidx48 = getelementptr inbounds i8*, i8** %64, i64 2, !dbg !2586
  %65 = load i8*, i8** %arrayidx48, align 8, !dbg !2586
  %66 = load i8**, i8*** %authors.addr, align 8, !dbg !2587
  %arrayidx49 = getelementptr inbounds i8*, i8** %66, i64 3, !dbg !2587
  %67 = load i8*, i8** %arrayidx49, align 8, !dbg !2587
  %68 = load i8**, i8*** %authors.addr, align 8, !dbg !2588
  %arrayidx50 = getelementptr inbounds i8*, i8** %68, i64 4, !dbg !2588
  %69 = load i8*, i8** %arrayidx50, align 8, !dbg !2588
  %70 = load i8**, i8*** %authors.addr, align 8, !dbg !2589
  %arrayidx51 = getelementptr inbounds i8*, i8** %70, i64 5, !dbg !2589
  %71 = load i8*, i8** %arrayidx51, align 8, !dbg !2589
  %72 = load i8**, i8*** %authors.addr, align 8, !dbg !2590
  %arrayidx52 = getelementptr inbounds i8*, i8** %72, i64 6, !dbg !2590
  %73 = load i8*, i8** %arrayidx52, align 8, !dbg !2590
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* %call45, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71, i8* %73), !dbg !2591
  br label %sw.epilog, !dbg !2592

sw.bb.54:                                         ; preds = %if.end
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2593
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.76, i32 0, i32 0)) #10, !dbg !2594
  %75 = load i8**, i8*** %authors.addr, align 8, !dbg !2595
  %arrayidx56 = getelementptr inbounds i8*, i8** %75, i64 0, !dbg !2595
  %76 = load i8*, i8** %arrayidx56, align 8, !dbg !2595
  %77 = load i8**, i8*** %authors.addr, align 8, !dbg !2596
  %arrayidx57 = getelementptr inbounds i8*, i8** %77, i64 1, !dbg !2596
  %78 = load i8*, i8** %arrayidx57, align 8, !dbg !2596
  %79 = load i8**, i8*** %authors.addr, align 8, !dbg !2597
  %arrayidx58 = getelementptr inbounds i8*, i8** %79, i64 2, !dbg !2597
  %80 = load i8*, i8** %arrayidx58, align 8, !dbg !2597
  %81 = load i8**, i8*** %authors.addr, align 8, !dbg !2598
  %arrayidx59 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2598
  %82 = load i8*, i8** %arrayidx59, align 8, !dbg !2598
  %83 = load i8**, i8*** %authors.addr, align 8, !dbg !2599
  %arrayidx60 = getelementptr inbounds i8*, i8** %83, i64 4, !dbg !2599
  %84 = load i8*, i8** %arrayidx60, align 8, !dbg !2599
  %85 = load i8**, i8*** %authors.addr, align 8, !dbg !2600
  %arrayidx61 = getelementptr inbounds i8*, i8** %85, i64 5, !dbg !2600
  %86 = load i8*, i8** %arrayidx61, align 8, !dbg !2600
  %87 = load i8**, i8*** %authors.addr, align 8, !dbg !2601
  %arrayidx62 = getelementptr inbounds i8*, i8** %87, i64 6, !dbg !2601
  %88 = load i8*, i8** %arrayidx62, align 8, !dbg !2601
  %89 = load i8**, i8*** %authors.addr, align 8, !dbg !2602
  %arrayidx63 = getelementptr inbounds i8*, i8** %89, i64 7, !dbg !2602
  %90 = load i8*, i8** %arrayidx63, align 8, !dbg !2602
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* %call55, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86, i8* %88, i8* %90), !dbg !2603
  br label %sw.epilog, !dbg !2604

sw.bb.65:                                         ; preds = %if.end
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2605
  %call66 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.77, i32 0, i32 0)) #10, !dbg !2606
  %92 = load i8**, i8*** %authors.addr, align 8, !dbg !2607
  %arrayidx67 = getelementptr inbounds i8*, i8** %92, i64 0, !dbg !2607
  %93 = load i8*, i8** %arrayidx67, align 8, !dbg !2607
  %94 = load i8**, i8*** %authors.addr, align 8, !dbg !2608
  %arrayidx68 = getelementptr inbounds i8*, i8** %94, i64 1, !dbg !2608
  %95 = load i8*, i8** %arrayidx68, align 8, !dbg !2608
  %96 = load i8**, i8*** %authors.addr, align 8, !dbg !2609
  %arrayidx69 = getelementptr inbounds i8*, i8** %96, i64 2, !dbg !2609
  %97 = load i8*, i8** %arrayidx69, align 8, !dbg !2609
  %98 = load i8**, i8*** %authors.addr, align 8, !dbg !2610
  %arrayidx70 = getelementptr inbounds i8*, i8** %98, i64 3, !dbg !2610
  %99 = load i8*, i8** %arrayidx70, align 8, !dbg !2610
  %100 = load i8**, i8*** %authors.addr, align 8, !dbg !2611
  %arrayidx71 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2611
  %101 = load i8*, i8** %arrayidx71, align 8, !dbg !2611
  %102 = load i8**, i8*** %authors.addr, align 8, !dbg !2612
  %arrayidx72 = getelementptr inbounds i8*, i8** %102, i64 5, !dbg !2612
  %103 = load i8*, i8** %arrayidx72, align 8, !dbg !2612
  %104 = load i8**, i8*** %authors.addr, align 8, !dbg !2613
  %arrayidx73 = getelementptr inbounds i8*, i8** %104, i64 6, !dbg !2613
  %105 = load i8*, i8** %arrayidx73, align 8, !dbg !2613
  %106 = load i8**, i8*** %authors.addr, align 8, !dbg !2614
  %arrayidx74 = getelementptr inbounds i8*, i8** %106, i64 7, !dbg !2614
  %107 = load i8*, i8** %arrayidx74, align 8, !dbg !2614
  %108 = load i8**, i8*** %authors.addr, align 8, !dbg !2615
  %arrayidx75 = getelementptr inbounds i8*, i8** %108, i64 8, !dbg !2615
  %109 = load i8*, i8** %arrayidx75, align 8, !dbg !2615
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* %call66, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105, i8* %107, i8* %109), !dbg !2616
  br label %sw.epilog, !dbg !2617

sw.default:                                       ; preds = %if.end
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2618
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.78, i32 0, i32 0)) #10, !dbg !2619
  %111 = load i8**, i8*** %authors.addr, align 8, !dbg !2620
  %arrayidx78 = getelementptr inbounds i8*, i8** %111, i64 0, !dbg !2620
  %112 = load i8*, i8** %arrayidx78, align 8, !dbg !2620
  %113 = load i8**, i8*** %authors.addr, align 8, !dbg !2621
  %arrayidx79 = getelementptr inbounds i8*, i8** %113, i64 1, !dbg !2621
  %114 = load i8*, i8** %arrayidx79, align 8, !dbg !2621
  %115 = load i8**, i8*** %authors.addr, align 8, !dbg !2622
  %arrayidx80 = getelementptr inbounds i8*, i8** %115, i64 2, !dbg !2622
  %116 = load i8*, i8** %arrayidx80, align 8, !dbg !2622
  %117 = load i8**, i8*** %authors.addr, align 8, !dbg !2623
  %arrayidx81 = getelementptr inbounds i8*, i8** %117, i64 3, !dbg !2623
  %118 = load i8*, i8** %arrayidx81, align 8, !dbg !2623
  %119 = load i8**, i8*** %authors.addr, align 8, !dbg !2624
  %arrayidx82 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2624
  %120 = load i8*, i8** %arrayidx82, align 8, !dbg !2624
  %121 = load i8**, i8*** %authors.addr, align 8, !dbg !2625
  %arrayidx83 = getelementptr inbounds i8*, i8** %121, i64 5, !dbg !2625
  %122 = load i8*, i8** %arrayidx83, align 8, !dbg !2625
  %123 = load i8**, i8*** %authors.addr, align 8, !dbg !2626
  %arrayidx84 = getelementptr inbounds i8*, i8** %123, i64 6, !dbg !2626
  %124 = load i8*, i8** %arrayidx84, align 8, !dbg !2626
  %125 = load i8**, i8*** %authors.addr, align 8, !dbg !2627
  %arrayidx85 = getelementptr inbounds i8*, i8** %125, i64 7, !dbg !2627
  %126 = load i8*, i8** %arrayidx85, align 8, !dbg !2627
  %127 = load i8**, i8*** %authors.addr, align 8, !dbg !2628
  %arrayidx86 = getelementptr inbounds i8*, i8** %127, i64 8, !dbg !2628
  %128 = load i8*, i8** %arrayidx86, align 8, !dbg !2628
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* %call77, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124, i8* %126, i8* %128), !dbg !2629
  br label %sw.epilog, !dbg !2630

sw.epilog:                                        ; preds = %sw.default, %sw.bb.65, %sw.bb.54, %sw.bb.44, %sw.bb.35, %sw.bb.27, %sw.bb.20, %sw.bb.14, %sw.bb.9, %sw.bb.6
  ret void, !dbg !2631
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @version_etc_ar(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** %authors) #5 !dbg !2632 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca i8**, align 8
  %n_authors = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !2635, metadata !DIExpression()), !dbg !2636
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %command_name.addr, metadata !2637, metadata !DIExpression()), !dbg !2638
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %package.addr, metadata !2639, metadata !DIExpression()), !dbg !2640
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %version.addr, metadata !2641, metadata !DIExpression()), !dbg !2642
  store i8** %authors, i8*** %authors.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %authors.addr, metadata !2643, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.declare(metadata i64* %n_authors, metadata !2645, metadata !DIExpression()), !dbg !2646
  store i64 0, i64* %n_authors, align 8, !dbg !2647
  br label %for.cond, !dbg !2649

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n_authors, align 8, !dbg !2650
  %1 = load i8**, i8*** %authors.addr, align 8, !dbg !2654
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %0, !dbg !2654
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !2654
  %tobool = icmp ne i8* %2, null, !dbg !2655
  br i1 %tobool, label %for.body, label %for.end, !dbg !2655

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !2656

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %n_authors, align 8, !dbg !2658
  %inc = add i64 %3, 1, !dbg !2658
  store i64 %inc, i64* %n_authors, align 8, !dbg !2658
  br label %for.cond, !dbg !2660

for.end:                                          ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2661
  %5 = load i8*, i8** %command_name.addr, align 8, !dbg !2662
  %6 = load i8*, i8** %package.addr, align 8, !dbg !2663
  %7 = load i8*, i8** %version.addr, align 8, !dbg !2664
  %8 = load i8**, i8*** %authors.addr, align 8, !dbg !2665
  %9 = load i64, i64* %n_authors, align 8, !dbg !2666
  call void @version_etc_arn(%struct._IO_FILE* %4, i8* %5, i8* %6, i8* %7, i8** %8, i64 %9), !dbg !2667
  ret void, !dbg !2668
}

; Function Attrs: nounwind uwtable
define internal void @version_etc_va(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, %struct.__va_list_tag* %authors) #5 !dbg !2669 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca %struct.__va_list_tag*, align 8
  %n_authors = alloca i64, align 8
  %authtab = alloca [10 x i8*], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !2680, metadata !DIExpression()), !dbg !2681
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %command_name.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %package.addr, metadata !2684, metadata !DIExpression()), !dbg !2685
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %version.addr, metadata !2686, metadata !DIExpression()), !dbg !2687
  store %struct.__va_list_tag* %authors, %struct.__va_list_tag** %authors.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %authors.addr, metadata !2688, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.declare(metadata i64* %n_authors, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata [10 x i8*]* %authtab, metadata !2692, metadata !DIExpression()), !dbg !2696
  store i64 0, i64* %n_authors, align 8, !dbg !2697
  br label %for.cond, !dbg !2699

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n_authors, align 8, !dbg !2700
  %cmp = icmp ult i64 %0, 10, !dbg !2702
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2703

land.rhs:                                         ; preds = %for.cond
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8, !dbg !2704
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i32 0, i32 0, !dbg !2704
  %gp_offset = load i32, i32* %gp_offset_p, !dbg !2704
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !2704
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2704

vaarg.in_reg:                                     ; preds = %land.rhs
  %2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i32 0, i32 3, !dbg !2706
  %reg_save_area = load i8*, i8** %2, !dbg !2706
  %3 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !2706
  %4 = bitcast i8* %3 to i8**, !dbg !2706
  %5 = add i32 %gp_offset, 8, !dbg !2706
  store i32 %5, i32* %gp_offset_p, !dbg !2706
  br label %vaarg.end, !dbg !2706

vaarg.in_mem:                                     ; preds = %land.rhs
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i32 0, i32 2, !dbg !2708
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, !dbg !2708
  %6 = bitcast i8* %overflow_arg_area to i8**, !dbg !2708
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !2708
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !2708
  br label %vaarg.end, !dbg !2708

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ], !dbg !2710
  %7 = load i8*, i8** %vaarg.addr, !dbg !2711
  %8 = load i64, i64* %n_authors, align 8, !dbg !2714
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %authtab, i32 0, i64 %8, !dbg !2715
  store i8* %7, i8** %arrayidx, align 8, !dbg !2716
  %cmp1 = icmp ne i8* %7, null, !dbg !2717
  br label %land.end

land.end:                                         ; preds = %vaarg.end, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp1, %vaarg.end ]
  br i1 %9, label %for.body, label %for.end, !dbg !2718

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !2719

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %n_authors, align 8, !dbg !2721
  %inc = add i64 %10, 1, !dbg !2721
  store i64 %inc, i64* %n_authors, align 8, !dbg !2721
  br label %for.cond, !dbg !2722

for.end:                                          ; preds = %land.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2723
  %12 = load i8*, i8** %command_name.addr, align 8, !dbg !2724
  %13 = load i8*, i8** %package.addr, align 8, !dbg !2725
  %14 = load i8*, i8** %version.addr, align 8, !dbg !2726
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %authtab, i32 0, i32 0, !dbg !2727
  %15 = load i64, i64* %n_authors, align 8, !dbg !2728
  call void @version_etc_arn(%struct._IO_FILE* %11, i8* %12, i8* %13, i8* %14, i8** %arraydecay, i64 %15), !dbg !2729
  ret void, !dbg !2730
}

; Function Attrs: nounwind uwtable
define internal void @version_etc(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, ...) #5 !dbg !2731 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !2734, metadata !DIExpression()), !dbg !2735
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %command_name.addr, metadata !2736, metadata !DIExpression()), !dbg !2737
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %package.addr, metadata !2738, metadata !DIExpression()), !dbg !2739
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %version.addr, metadata !2740, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %authors, metadata !2742, metadata !DIExpression()), !dbg !2748
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !2749
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2749
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2749
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2750
  %1 = load i8*, i8** %command_name.addr, align 8, !dbg !2751
  %2 = load i8*, i8** %package.addr, align 8, !dbg !2752
  %3 = load i8*, i8** %version.addr, align 8, !dbg !2753
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !2754
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* %arraydecay2), !dbg !2755
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !2756
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !2756
  call void @llvm.va_end(i8* %arraydecay34), !dbg !2756
  ret void, !dbg !2757
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind uwtable
define internal void @emit_bug_reporting_address() #5 !dbg !2758 {
entry:
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i32 0, i32 0)) #10, !dbg !2759
  %call1 = call i32 (i8*, ...) @printf(i8* %call, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i32 0, i32 0)), !dbg !2760
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.81, i32 0, i32 0)) #10, !dbg !2761
  %call3 = call i32 (i8*, ...) @printf(i8* %call2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.82, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.83, i32 0, i32 0)), !dbg !2762
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.84, i32 0, i32 0)) #10, !dbg !2763
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2763
  %call5 = call i32 @fputs_unlocked(i8* %call4, %struct._IO_FILE* %0), !dbg !2763
  ret void, !dbg !2764
}

; Function Attrs: inlinehint nounwind uwtable
define internal noalias i8* @xnmalloc(i64 %n, i64 %s) #7 !dbg !2765 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2768, metadata !DIExpression()), !dbg !2769
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !2770, metadata !DIExpression()), !dbg !2771
  %0 = load i64, i64* %s.addr, align 8, !dbg !2772
  %div = udiv i64 -1, %0, !dbg !2772
  %1 = load i64, i64* %n.addr, align 8, !dbg !2772
  %cmp = icmp ult i64 %div, %1, !dbg !2772
  br i1 %cmp, label %if.then, label %if.end, !dbg !2774

if.then:                                          ; preds = %entry
  call void @xalloc_die() #16, !dbg !2775
  unreachable, !dbg !2775

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %n.addr, align 8, !dbg !2776
  %3 = load i64, i64* %s.addr, align 8, !dbg !2777
  %mul = mul i64 %2, %3, !dbg !2778
  %call = call noalias i8* @xmalloc(i64 %mul), !dbg !2779
  ret i8* %call, !dbg !2780
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @xmalloc(i64 %n) #5 !dbg !2781 {
entry:
  %n.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2783, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2785, metadata !DIExpression()), !dbg !2786
  %0 = load i64, i64* %n.addr, align 8, !dbg !2787
  %call = call noalias i8* @malloc(i64 %0) #10, !dbg !2788
  store i8* %call, i8** %p, align 8, !dbg !2786
  %1 = load i8*, i8** %p, align 8, !dbg !2789
  %tobool = icmp ne i8* %1, null, !dbg !2789
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2791

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %n.addr, align 8, !dbg !2792
  %cmp = icmp ne i64 %2, 0, !dbg !2794
  br i1 %cmp, label %if.then, label %if.end, !dbg !2795

if.then:                                          ; preds = %land.lhs.true
  call void @xalloc_die() #16, !dbg !2796
  unreachable, !dbg !2796

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %p, align 8, !dbg !2797
  ret i8* %3, !dbg !2798
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @xnrealloc(i8* %p, i64 %n, i64 %s) #7 !dbg !2799 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2802, metadata !DIExpression()), !dbg !2803
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2804, metadata !DIExpression()), !dbg !2805
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !2806, metadata !DIExpression()), !dbg !2807
  %0 = load i64, i64* %s.addr, align 8, !dbg !2808
  %div = udiv i64 -1, %0, !dbg !2808
  %1 = load i64, i64* %n.addr, align 8, !dbg !2808
  %cmp = icmp ult i64 %div, %1, !dbg !2808
  br i1 %cmp, label %if.then, label %if.end, !dbg !2810

if.then:                                          ; preds = %entry
  call void @xalloc_die() #16, !dbg !2811
  unreachable, !dbg !2811

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !2812
  %3 = load i64, i64* %n.addr, align 8, !dbg !2813
  %4 = load i64, i64* %s.addr, align 8, !dbg !2814
  %mul = mul i64 %3, %4, !dbg !2815
  %call = call i8* @xrealloc(i8* %2, i64 %mul), !dbg !2816
  ret i8* %call, !dbg !2817
}

; Function Attrs: nounwind uwtable
define internal i8* @xrealloc(i8* %p, i64 %n) #5 !dbg !2818 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2821, metadata !DIExpression()), !dbg !2822
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2823, metadata !DIExpression()), !dbg !2824
  %0 = load i64, i64* %n.addr, align 8, !dbg !2825
  %tobool = icmp ne i64 %0, 0, !dbg !2825
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2827

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8, !dbg !2828
  %tobool1 = icmp ne i8* %1, null, !dbg !2828
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2830

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %p.addr, align 8, !dbg !2831
  call void @free(i8* %2) #10, !dbg !2833
  store i8* null, i8** %retval, !dbg !2834
  br label %return, !dbg !2834

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %p.addr, align 8, !dbg !2835
  %4 = load i64, i64* %n.addr, align 8, !dbg !2836
  %call = call i8* @realloc(i8* %3, i64 %4) #10, !dbg !2837
  store i8* %call, i8** %p.addr, align 8, !dbg !2838
  %5 = load i8*, i8** %p.addr, align 8, !dbg !2839
  %tobool2 = icmp ne i8* %5, null, !dbg !2839
  br i1 %tobool2, label %if.end.6, label %land.lhs.true.3, !dbg !2841

land.lhs.true.3:                                  ; preds = %if.end
  %6 = load i64, i64* %n.addr, align 8, !dbg !2842
  %tobool4 = icmp ne i64 %6, 0, !dbg !2842
  br i1 %tobool4, label %if.then.5, label %if.end.6, !dbg !2844

if.then.5:                                        ; preds = %land.lhs.true.3
  call void @xalloc_die() #16, !dbg !2845
  unreachable, !dbg !2845

if.end.6:                                         ; preds = %land.lhs.true.3, %if.end
  %7 = load i8*, i8** %p.addr, align 8, !dbg !2846
  store i8* %7, i8** %retval, !dbg !2847
  br label %return, !dbg !2847

return:                                           ; preds = %if.end.6, %if.then
  %8 = load i8*, i8** %retval, !dbg !2848
  ret i8* %8, !dbg !2848
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @x2nrealloc(i8* %p, i64* %pn, i64 %s) #7 !dbg !513 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2849, metadata !DIExpression()), !dbg !2850
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %pn.addr, metadata !2851, metadata !DIExpression()), !dbg !2852
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.declare(metadata i64* %n, metadata !2855, metadata !DIExpression()), !dbg !2856
  %0 = load i64*, i64** %pn.addr, align 8, !dbg !2857
  %1 = load i64, i64* %0, align 8, !dbg !2858
  store i64 %1, i64* %n, align 8, !dbg !2856
  %2 = load i8*, i8** %p.addr, align 8, !dbg !2859
  %tobool = icmp ne i8* %2, null, !dbg !2859
  br i1 %tobool, label %if.else, label %if.then, !dbg !2861

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %n, align 8, !dbg !2862
  %tobool1 = icmp ne i64 %3, 0, !dbg !2862
  br i1 %tobool1, label %if.end, label %if.then.2, !dbg !2865

if.then.2:                                        ; preds = %if.then
  %4 = load i64, i64* %s.addr, align 8, !dbg !2866
  %div = udiv i64 128, %4, !dbg !2868
  store i64 %div, i64* %n, align 8, !dbg !2869
  %5 = load i64, i64* %n, align 8, !dbg !2870
  %tobool3 = icmp ne i64 %5, 0, !dbg !2871
  %lnot = xor i1 %tobool3, true, !dbg !2871
  %lnot.ext = zext i1 %lnot to i32, !dbg !2871
  %conv = sext i32 %lnot.ext to i64, !dbg !2871
  %6 = load i64, i64* %n, align 8, !dbg !2872
  %add = add i64 %6, %conv, !dbg !2872
  store i64 %add, i64* %n, align 8, !dbg !2872
  br label %if.end, !dbg !2873

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.11, !dbg !2874

if.else:                                          ; preds = %entry
  %7 = load i64, i64* %s.addr, align 8, !dbg !2875
  %div4 = udiv i64 -6148914691236517206, %7, !dbg !2878
  %8 = load i64, i64* %n, align 8, !dbg !2879
  %cmp = icmp ule i64 %div4, %8, !dbg !2880
  br i1 %cmp, label %if.then.6, label %if.end.7, !dbg !2881

if.then.6:                                        ; preds = %if.else
  call void @xalloc_die() #16, !dbg !2882
  unreachable, !dbg !2882

if.end.7:                                         ; preds = %if.else
  %9 = load i64, i64* %n, align 8, !dbg !2883
  %div8 = udiv i64 %9, 2, !dbg !2884
  %add9 = add i64 %div8, 1, !dbg !2885
  %10 = load i64, i64* %n, align 8, !dbg !2886
  %add10 = add i64 %10, %add9, !dbg !2886
  store i64 %add10, i64* %n, align 8, !dbg !2886
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.7, %if.end
  %11 = load i64, i64* %n, align 8, !dbg !2887
  %12 = load i64*, i64** %pn.addr, align 8, !dbg !2888
  store i64 %11, i64* %12, align 8, !dbg !2889
  %13 = load i8*, i8** %p.addr, align 8, !dbg !2890
  %14 = load i64, i64* %n, align 8, !dbg !2891
  %15 = load i64, i64* %s.addr, align 8, !dbg !2892
  %mul = mul i64 %14, %15, !dbg !2893
  %call = call i8* @xrealloc(i8* %13, i64 %mul), !dbg !2894
  ret i8* %call, !dbg !2895
}

; Function Attrs: inlinehint nounwind uwtable
define internal noalias i8* @xcharalloc(i64 %n) #7 !dbg !2896 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2899, metadata !DIExpression()), !dbg !2900
  %0 = load i64, i64* %n.addr, align 8, !dbg !2901
  %call = call noalias i8* @xmalloc(i64 %0), !dbg !2901
  ret i8* %call, !dbg !2902
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i8* @x2realloc(i8* %p, i64* %pn) #5 !dbg !2903 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2906, metadata !DIExpression()), !dbg !2907
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %pn.addr, metadata !2908, metadata !DIExpression()), !dbg !2909
  %0 = load i8*, i8** %p.addr, align 8, !dbg !2910
  %1 = load i64*, i64** %pn.addr, align 8, !dbg !2911
  %call = call i8* @x2nrealloc(i8* %0, i64* %1, i64 1), !dbg !2912
  ret i8* %call, !dbg !2913
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @xzalloc(i64 %s) #5 !dbg !2914 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !2915, metadata !DIExpression()), !dbg !2916
  %0 = load i64, i64* %s.addr, align 8, !dbg !2917
  %call = call noalias i8* @xmalloc(i64 %0), !dbg !2918
  %1 = load i64, i64* %s.addr, align 8, !dbg !2919
  call void @llvm.memset.p0i8.i64(i8* align 1 %call, i8 0, i64 %1, i1 false), !dbg !2920
  ret i8* %call, !dbg !2921
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @xcalloc(i64 %n, i64 %s) #5 !dbg !2922 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2923, metadata !DIExpression()), !dbg !2924
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !2925, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2927, metadata !DIExpression()), !dbg !2928
  %0 = load i64, i64* %n.addr, align 8, !dbg !2929
  %1 = load i64, i64* %s.addr, align 8, !dbg !2931
  %call = call i8* @rpl_calloc(i64 %0, i64 %1), !dbg !2932
  store i8* %call, i8** %p, align 8, !dbg !2933
  %tobool = icmp ne i8* %call, null, !dbg !2933
  br i1 %tobool, label %if.end, label %if.then, !dbg !2934

if.then:                                          ; preds = %entry
  call void @xalloc_die() #16, !dbg !2935
  unreachable, !dbg !2935

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p, align 8, !dbg !2936
  ret i8* %2, !dbg !2937
}

; Function Attrs: nounwind uwtable
define internal i8* @xmemdup(i8* %p, i64 %s) #5 !dbg !2938 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2943, metadata !DIExpression()), !dbg !2944
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !2945, metadata !DIExpression()), !dbg !2946
  %0 = load i64, i64* %s.addr, align 8, !dbg !2947
  %call = call noalias i8* @xmalloc(i64 %0), !dbg !2948
  %1 = load i8*, i8** %p.addr, align 8, !dbg !2949
  %2 = load i64, i64* %s.addr, align 8, !dbg !2950
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %call, i8* align 1 %1, i64 %2, i1 false), !dbg !2951
  ret i8* %call, !dbg !2952
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @xstrdup(i8* %string) #5 !dbg !2953 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !2954, metadata !DIExpression()), !dbg !2955
  %0 = load i8*, i8** %string.addr, align 8, !dbg !2956
  %1 = load i8*, i8** %string.addr, align 8, !dbg !2957
  %call = call i64 @strlen(i8* %1) #15, !dbg !2958
  %add = add i64 %call, 1, !dbg !2959
  %call1 = call i8* @xmemdup(i8* %0, i64 %add), !dbg !2960
  ret i8* %call1, !dbg !2961
}

; Function Attrs: noreturn nounwind uwtable
define internal void @xalloc_die() #0 !dbg !2962 {
entry:
  %0 = load volatile i32, i32* @exit_failure, align 4, !dbg !2963
  %call = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.95, i32 0, i32 0)) #10, !dbg !2964
  call void (i32, i32, i8*, ...) @error(i32 %0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* %call), !dbg !2965
  call void @abort() #14, !dbg !2966
  unreachable, !dbg !2966

return:                                           ; No predecessors!
  ret void, !dbg !2967
}

; Function Attrs: nounwind uwtable
define internal i8* @rpl_calloc(i64 %n, i64 %s) #5 !dbg !2968 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  %bytes = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2969, metadata !DIExpression()), !dbg !2970
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !2971, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.declare(metadata i8** %result, metadata !2973, metadata !DIExpression()), !dbg !2974
  %0 = load i64, i64* %n.addr, align 8, !dbg !2975
  %cmp = icmp eq i64 %0, 0, !dbg !2977
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2978

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %s.addr, align 8, !dbg !2979
  %cmp1 = icmp eq i64 %1, 0, !dbg !2981
  br i1 %cmp1, label %if.then, label %if.else, !dbg !2982

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 1, i64* %n.addr, align 8, !dbg !2983
  store i64 1, i64* %s.addr, align 8, !dbg !2985
  br label %if.end.4, !dbg !2986

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2987, metadata !DIExpression()), !dbg !2989
  %2 = load i64, i64* %n.addr, align 8, !dbg !2990
  %3 = load i64, i64* %s.addr, align 8, !dbg !2991
  %mul = mul i64 %2, %3, !dbg !2992
  store i64 %mul, i64* %bytes, align 8, !dbg !2989
  %4 = load i64, i64* %bytes, align 8, !dbg !2993
  %5 = load i64, i64* %s.addr, align 8, !dbg !2995
  %div = udiv i64 %4, %5, !dbg !2996
  %6 = load i64, i64* %n.addr, align 8, !dbg !2997
  %cmp2 = icmp ne i64 %div, %6, !dbg !2998
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !2999

if.then.3:                                        ; preds = %if.else
  %call = call i32* @__errno_location() #17, !dbg !3000
  store i32 12, i32* %call, align 4, !dbg !3002
  store i8* null, i8** %retval, !dbg !3003
  br label %return, !dbg !3003

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i64, i64* %n.addr, align 8, !dbg !3004
  %8 = load i64, i64* %s.addr, align 8, !dbg !3005
  %call5 = call noalias i8* @calloc(i64 %7, i64 %8) #10, !dbg !3006
  store i8* %call5, i8** %result, align 8, !dbg !3007
  %9 = load i8*, i8** %result, align 8, !dbg !3008
  store i8* %9, i8** %retval, !dbg !3009
  br label %return, !dbg !3009

return:                                           ; preds = %if.end.4, %if.then.3
  %10 = load i8*, i8** %retval, !dbg !3010
  ret i8* %10, !dbg !3010
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal i64 @rpl_mbrtowc(i32* %pwc, i8* %s, i64 %n, %struct.__mbstate_t* %ps) #5 !dbg !3011 {
entry:
  %retval = alloca i64, align 8
  %pwc.addr = alloca i32*, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %ps.addr = alloca %struct.__mbstate_t*, align 8
  store i32* %pwc, i32** %pwc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %pwc.addr, metadata !3026, metadata !DIExpression()), !dbg !3027
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !3028, metadata !DIExpression()), !dbg !3029
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3030, metadata !DIExpression()), !dbg !3031
  store %struct.__mbstate_t* %ps, %struct.__mbstate_t** %ps.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %ps.addr, metadata !3032, metadata !DIExpression()), !dbg !3033
  %0 = load i8*, i8** %s.addr, align 8, !dbg !3034
  %cmp = icmp eq i8* %0, null, !dbg !3036
  br i1 %cmp, label %if.then, label %if.end, !dbg !3037

if.then:                                          ; preds = %entry
  store i32* null, i32** %pwc.addr, align 8, !dbg !3038
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.101, i32 0, i32 0), i8** %s.addr, align 8, !dbg !3040
  store i64 1, i64* %n.addr, align 8, !dbg !3041
  br label %if.end, !dbg !3042

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %n.addr, align 8, !dbg !3043
  %cmp1 = icmp eq i64 %1, 0, !dbg !3045
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !3046

if.then.2:                                        ; preds = %if.end
  store i64 -2, i64* %retval, !dbg !3047
  br label %return, !dbg !3047

if.end.3:                                         ; preds = %if.end
  %2 = load i32*, i32** %pwc.addr, align 8, !dbg !3048
  %3 = load i8*, i8** %s.addr, align 8, !dbg !3050
  %4 = load i64, i64* %n.addr, align 8, !dbg !3051
  %5 = load %struct.__mbstate_t*, %struct.__mbstate_t** %ps.addr, align 8, !dbg !3052
  %call = call i64 @mbrtowc(i32* %2, i8* %3, i64 %4, %struct.__mbstate_t* %5) #10, !dbg !3053
  store i64 %call, i64* %retval, !dbg !3054
  br label %return, !dbg !3054

return:                                           ; preds = %if.end.3, %if.then.2
  %6 = load i64, i64* %retval, !dbg !3055
  ret i64 %6, !dbg !3055
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #3

; Function Attrs: nounwind readonly uwtable
define internal i32 @c_strcasecmp(i8* %s1, i8* %s2) #11 !dbg !3056 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  store i8* %s1, i8** %s1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s1.addr, metadata !3059, metadata !DIExpression()), !dbg !3060
  store i8* %s2, i8** %s2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s2.addr, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.declare(metadata i8** %p1, metadata !3063, metadata !DIExpression()), !dbg !3064
  %0 = load i8*, i8** %s1.addr, align 8, !dbg !3065
  store i8* %0, i8** %p1, align 8, !dbg !3064
  call void @llvm.dbg.declare(metadata i8** %p2, metadata !3066, metadata !DIExpression()), !dbg !3067
  %1 = load i8*, i8** %s2.addr, align 8, !dbg !3068
  store i8* %1, i8** %p2, align 8, !dbg !3067
  call void @llvm.dbg.declare(metadata i8* %c1, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.declare(metadata i8* %c2, metadata !3071, metadata !DIExpression()), !dbg !3072
  %2 = load i8*, i8** %p1, align 8, !dbg !3073
  %3 = load i8*, i8** %p2, align 8, !dbg !3075
  %cmp = icmp eq i8* %2, %3, !dbg !3076
  br i1 %cmp, label %if.then, label %if.end, !dbg !3077

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !3078
  br label %return, !dbg !3078

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3079

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load i8*, i8** %p1, align 8, !dbg !3080
  %5 = load i8, i8* %4, align 1, !dbg !3082
  %conv = zext i8 %5 to i32, !dbg !3082
  %call = call i32 @c_tolower(i32 %conv) #17, !dbg !3083
  %conv1 = trunc i32 %call to i8, !dbg !3083
  store i8 %conv1, i8* %c1, align 1, !dbg !3084
  %6 = load i8*, i8** %p2, align 8, !dbg !3085
  %7 = load i8, i8* %6, align 1, !dbg !3086
  %conv2 = zext i8 %7 to i32, !dbg !3086
  %call3 = call i32 @c_tolower(i32 %conv2) #17, !dbg !3087
  %conv4 = trunc i32 %call3 to i8, !dbg !3087
  store i8 %conv4, i8* %c2, align 1, !dbg !3088
  %8 = load i8, i8* %c1, align 1, !dbg !3089
  %conv5 = zext i8 %8 to i32, !dbg !3089
  %cmp6 = icmp eq i32 %conv5, 0, !dbg !3091
  br i1 %cmp6, label %if.then.8, label %if.end.9, !dbg !3092

if.then.8:                                        ; preds = %do.body
  br label %do.end, !dbg !3093

if.end.9:                                         ; preds = %do.body
  %9 = load i8*, i8** %p1, align 8, !dbg !3094
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1, !dbg !3094
  store i8* %incdec.ptr, i8** %p1, align 8, !dbg !3094
  %10 = load i8*, i8** %p2, align 8, !dbg !3095
  %incdec.ptr10 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !3095
  store i8* %incdec.ptr10, i8** %p2, align 8, !dbg !3095
  br label %do.cond, !dbg !3096

do.cond:                                          ; preds = %if.end.9
  %11 = load i8, i8* %c1, align 1, !dbg !3097
  %conv11 = zext i8 %11 to i32, !dbg !3097
  %12 = load i8, i8* %c2, align 1, !dbg !3098
  %conv12 = zext i8 %12 to i32, !dbg !3098
  %cmp13 = icmp eq i32 %conv11, %conv12, !dbg !3099
  br i1 %cmp13, label %do.body, label %do.end, !dbg !3096

do.end:                                           ; preds = %do.cond, %if.then.8
  %13 = load i8, i8* %c1, align 1, !dbg !3100
  %conv15 = zext i8 %13 to i32, !dbg !3100
  %14 = load i8, i8* %c2, align 1, !dbg !3102
  %conv16 = zext i8 %14 to i32, !dbg !3102
  %sub = sub nsw i32 %conv15, %conv16, !dbg !3103
  store i32 %sub, i32* %retval, !dbg !3104
  br label %return, !dbg !3104

return:                                           ; preds = %do.end, %if.then
  %15 = load i32, i32* %retval, !dbg !3105
  ret i32 %15, !dbg !3105
}

; Function Attrs: nounwind uwtable
define internal i32 @close_stream(%struct._IO_FILE* %stream) #5 !dbg !3106 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %some_pending = alloca i8, align 1
  %prev_fail = alloca i8, align 1
  %fclose_fail = alloca i8, align 1
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !3149, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.declare(metadata i8* %some_pending, metadata !3151, metadata !DIExpression()), !dbg !3153
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3154
  %call = call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3155
  %cmp = icmp ne i64 %call, 0, !dbg !3156
  %frombool = zext i1 %cmp to i8, !dbg !3153
  store i8 %frombool, i8* %some_pending, align 1, !dbg !3153
  call void @llvm.dbg.declare(metadata i8* %prev_fail, metadata !3157, metadata !DIExpression()), !dbg !3158
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3159
  %call1 = call i32 @ferror_unlocked(%struct._IO_FILE* %1) #10, !dbg !3159
  %cmp2 = icmp ne i32 %call1, 0, !dbg !3160
  %frombool3 = zext i1 %cmp2 to i8, !dbg !3158
  store i8 %frombool3, i8* %prev_fail, align 1, !dbg !3158
  call void @llvm.dbg.declare(metadata i8* %fclose_fail, metadata !3161, metadata !DIExpression()), !dbg !3162
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3163
  %call4 = call i32 @rpl_fclose(%struct._IO_FILE* %2), !dbg !3164
  %cmp5 = icmp ne i32 %call4, 0, !dbg !3165
  %frombool6 = zext i1 %cmp5 to i8, !dbg !3162
  store i8 %frombool6, i8* %fclose_fail, align 1, !dbg !3162
  %3 = load i8, i8* %prev_fail, align 1, !dbg !3166
  %tobool = trunc i8 %3 to i1, !dbg !3166
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3168

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8, i8* %fclose_fail, align 1, !dbg !3169
  %tobool7 = trunc i8 %4 to i1, !dbg !3169
  br i1 %tobool7, label %land.lhs.true, label %if.end.15, !dbg !3171

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8, i8* %some_pending, align 1, !dbg !3172
  %tobool8 = trunc i8 %5 to i1, !dbg !3172
  br i1 %tobool8, label %if.then, label %lor.lhs.false.9, !dbg !3174

lor.lhs.false.9:                                  ; preds = %land.lhs.true
  %call10 = call i32* @__errno_location() #17, !dbg !3175
  %6 = load i32, i32* %call10, align 4, !dbg !3175
  %cmp11 = icmp ne i32 %6, 9, !dbg !3177
  br i1 %cmp11, label %if.then, label %if.end.15, !dbg !3178

if.then:                                          ; preds = %lor.lhs.false.9, %land.lhs.true, %entry
  %7 = load i8, i8* %fclose_fail, align 1, !dbg !3179
  %tobool12 = trunc i8 %7 to i1, !dbg !3179
  br i1 %tobool12, label %if.end, label %if.then.13, !dbg !3182

if.then.13:                                       ; preds = %if.then
  %call14 = call i32* @__errno_location() #17, !dbg !3183
  store i32 0, i32* %call14, align 4, !dbg !3184
  br label %if.end, !dbg !3183

if.end:                                           ; preds = %if.then.13, %if.then
  store i32 -1, i32* %retval, !dbg !3185
  br label %return, !dbg !3185

if.end.15:                                        ; preds = %lor.lhs.false.9, %lor.lhs.false
  store i32 0, i32* %retval, !dbg !3186
  br label %return, !dbg !3186

return:                                           ; preds = %if.end.15, %if.end
  %8 = load i32, i32* %retval, !dbg !3187
  ret i32 %8, !dbg !3187
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i8* @locale_charset() #5 !dbg !3188 {
entry:
  %codeset = alloca i8*, align 8
  %aliases = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %codeset, metadata !3191, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.declare(metadata i8** %aliases, metadata !3193, metadata !DIExpression()), !dbg !3194
  %call = call i8* @nl_langinfo(i32 14) #10, !dbg !3195
  store i8* %call, i8** %codeset, align 8, !dbg !3196
  %0 = load i8*, i8** %codeset, align 8, !dbg !3197
  %cmp = icmp eq i8* %0, null, !dbg !3199
  br i1 %cmp, label %if.then, label %if.end, !dbg !3200

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.108, i32 0, i32 0), i8** %codeset, align 8, !dbg !3201
  br label %if.end, !dbg !3202

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i8* @get_charset_aliases(), !dbg !3203
  store i8* %call1, i8** %aliases, align 8, !dbg !3205
  br label %for.cond, !dbg !3206

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i8*, i8** %aliases, align 8, !dbg !3207
  %2 = load i8, i8* %1, align 1, !dbg !3209
  %conv = sext i8 %2 to i32, !dbg !3209
  %cmp2 = icmp ne i32 %conv, 0, !dbg !3210
  br i1 %cmp2, label %for.body, label %for.end, !dbg !3211

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %codeset, align 8, !dbg !3212
  %4 = load i8*, i8** %aliases, align 8, !dbg !3214
  %call4 = call i32 @strcmp(i8* %3, i8* %4) #15, !dbg !3215
  %cmp5 = icmp eq i32 %call4, 0, !dbg !3216
  br i1 %cmp5, label %if.then.14, label %lor.lhs.false, !dbg !3217

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8*, i8** %aliases, align 8, !dbg !3218
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0, !dbg !3218
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3218
  %conv7 = sext i8 %6 to i32, !dbg !3218
  %cmp8 = icmp eq i32 %conv7, 42, !dbg !3220
  br i1 %cmp8, label %land.lhs.true, label %if.end.17, !dbg !3221

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i8*, i8** %aliases, align 8, !dbg !3222
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3222
  %8 = load i8, i8* %arrayidx10, align 1, !dbg !3222
  %conv11 = sext i8 %8 to i32, !dbg !3222
  %cmp12 = icmp eq i32 %conv11, 0, !dbg !3224
  br i1 %cmp12, label %if.then.14, label %if.end.17, !dbg !3225

if.then.14:                                       ; preds = %land.lhs.true, %for.body
  %9 = load i8*, i8** %aliases, align 8, !dbg !3226
  %10 = load i8*, i8** %aliases, align 8, !dbg !3228
  %call15 = call i64 @strlen(i8* %10) #15, !dbg !3229
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %call15, !dbg !3230
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !3231
  store i8* %add.ptr16, i8** %codeset, align 8, !dbg !3232
  br label %for.end, !dbg !3233

if.end.17:                                        ; preds = %land.lhs.true, %lor.lhs.false
  br label %for.inc, !dbg !3234

for.inc:                                          ; preds = %if.end.17
  %11 = load i8*, i8** %aliases, align 8, !dbg !3236
  %call18 = call i64 @strlen(i8* %11) #15, !dbg !3237
  %add = add i64 %call18, 1, !dbg !3238
  %12 = load i8*, i8** %aliases, align 8, !dbg !3239
  %add.ptr19 = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !3239
  store i8* %add.ptr19, i8** %aliases, align 8, !dbg !3239
  %13 = load i8*, i8** %aliases, align 8, !dbg !3240
  %call20 = call i64 @strlen(i8* %13) #15, !dbg !3241
  %add21 = add i64 %call20, 1, !dbg !3242
  %14 = load i8*, i8** %aliases, align 8, !dbg !3243
  %add.ptr22 = getelementptr inbounds i8, i8* %14, i64 %add21, !dbg !3243
  store i8* %add.ptr22, i8** %aliases, align 8, !dbg !3243
  br label %for.cond, !dbg !3244

for.end:                                          ; preds = %if.then.14, %for.cond
  %15 = load i8*, i8** %codeset, align 8, !dbg !3245
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 0, !dbg !3245
  %16 = load i8, i8* %arrayidx23, align 1, !dbg !3245
  %conv24 = sext i8 %16 to i32, !dbg !3245
  %cmp25 = icmp eq i32 %conv24, 0, !dbg !3247
  br i1 %cmp25, label %if.then.27, label %if.end.28, !dbg !3248

if.then.27:                                       ; preds = %for.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.109, i32 0, i32 0), i8** %codeset, align 8, !dbg !3249
  br label %if.end.28, !dbg !3250

if.end.28:                                        ; preds = %if.then.27, %for.end
  %17 = load i8*, i8** %codeset, align 8, !dbg !3251
  ret i8* %17, !dbg !3252
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #3

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #3

declare i32 @close(i32) #2

declare i32 @getc_unlocked(%struct._IO_FILE*) #2

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @get_charset_aliases() #5 !dbg !3253 {
entry:
  %cp = alloca i8*, align 8
  %dir = alloca i8*, align 8
  %base = alloca i8*, align 8
  %file_name = alloca i8*, align 8
  %dir_len = alloca i64, align 8
  %base_len = alloca i64, align 8
  %add_slash = alloca i32, align 4
  %fd = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %res_ptr = alloca i8*, align 8
  %res_size = alloca i64, align 8
  %c = alloca i32, align 4
  %buf1 = alloca [51 x i8], align 16
  %buf2 = alloca [51 x i8], align 16
  %l1 = alloca i64, align 8
  %l2 = alloca i64, align 8
  %old_res_ptr = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %cp, metadata !3254, metadata !DIExpression()), !dbg !3255
  %0 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3256
  store i8* %0, i8** %cp, align 8, !dbg !3257
  %1 = load i8*, i8** %cp, align 8, !dbg !3258
  %cmp = icmp eq i8* %1, null, !dbg !3260
  br i1 %cmp, label %if.then, label %if.end.124, !dbg !3261

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %dir, metadata !3262, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.declare(metadata i8** %base, metadata !3265, metadata !DIExpression()), !dbg !3266
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.110, i32 0, i32 0), i8** %base, align 8, !dbg !3266
  call void @llvm.dbg.declare(metadata i8** %file_name, metadata !3267, metadata !DIExpression()), !dbg !3268
  %call = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.111, i32 0, i32 0)) #10, !dbg !3269
  store i8* %call, i8** %dir, align 8, !dbg !3270
  %2 = load i8*, i8** %dir, align 8, !dbg !3271
  %cmp1 = icmp eq i8* %2, null, !dbg !3273
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false, !dbg !3274

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i8*, i8** %dir, align 8, !dbg !3275
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0, !dbg !3275
  %4 = load i8, i8* %arrayidx, align 1, !dbg !3275
  %conv = sext i8 %4 to i32, !dbg !3275
  %cmp2 = icmp eq i32 %conv, 0, !dbg !3277
  br i1 %cmp2, label %if.then.4, label %if.end, !dbg !3278

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.112, i32 0, i32 0), i8** %dir, align 8, !dbg !3279
  br label %if.end, !dbg !3280

if.end:                                           ; preds = %if.then.4, %lor.lhs.false
  call void @llvm.dbg.declare(metadata i64* %dir_len, metadata !3281, metadata !DIExpression()), !dbg !3283
  %5 = load i8*, i8** %dir, align 8, !dbg !3284
  %call5 = call i64 @strlen(i8* %5) #15, !dbg !3285
  store i64 %call5, i64* %dir_len, align 8, !dbg !3283
  call void @llvm.dbg.declare(metadata i64* %base_len, metadata !3286, metadata !DIExpression()), !dbg !3287
  %6 = load i8*, i8** %base, align 8, !dbg !3288
  %call6 = call i64 @strlen(i8* %6) #15, !dbg !3289
  store i64 %call6, i64* %base_len, align 8, !dbg !3287
  call void @llvm.dbg.declare(metadata i32* %add_slash, metadata !3290, metadata !DIExpression()), !dbg !3291
  %7 = load i64, i64* %dir_len, align 8, !dbg !3292
  %cmp7 = icmp ugt i64 %7, 0, !dbg !3293
  br i1 %cmp7, label %land.rhs, label %land.end, !dbg !3294

land.rhs:                                         ; preds = %if.end
  %8 = load i64, i64* %dir_len, align 8, !dbg !3295
  %sub = sub i64 %8, 1, !dbg !3295
  %9 = load i8*, i8** %dir, align 8, !dbg !3295
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 %sub, !dbg !3295
  %10 = load i8, i8* %arrayidx9, align 1, !dbg !3295
  %conv10 = sext i8 %10 to i32, !dbg !3295
  %cmp11 = icmp eq i32 %conv10, 47, !dbg !3295
  %lnot = xor i1 %cmp11, true, !dbg !3297
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %11 = phi i1 [ false, %if.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %11 to i32, !dbg !3298
  store i32 %land.ext, i32* %add_slash, align 4, !dbg !3291
  %12 = load i64, i64* %dir_len, align 8, !dbg !3300
  %13 = load i32, i32* %add_slash, align 4, !dbg !3301
  %conv13 = sext i32 %13 to i64, !dbg !3301
  %add = add i64 %12, %conv13, !dbg !3302
  %14 = load i64, i64* %base_len, align 8, !dbg !3303
  %add14 = add i64 %add, %14, !dbg !3304
  %add15 = add i64 %add14, 1, !dbg !3305
  %call16 = call noalias i8* @malloc(i64 %add15) #10, !dbg !3306
  store i8* %call16, i8** %file_name, align 8, !dbg !3307
  %15 = load i8*, i8** %file_name, align 8, !dbg !3308
  %cmp17 = icmp ne i8* %15, null, !dbg !3310
  br i1 %cmp17, label %if.then.19, label %if.end.25, !dbg !3311

if.then.19:                                       ; preds = %land.end
  %16 = load i8*, i8** %file_name, align 8, !dbg !3312
  %17 = load i8*, i8** %dir, align 8, !dbg !3314
  %18 = load i64, i64* %dir_len, align 8, !dbg !3315
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %17, i64 %18, i1 false), !dbg !3316
  %19 = load i32, i32* %add_slash, align 4, !dbg !3317
  %tobool = icmp ne i32 %19, 0, !dbg !3317
  br i1 %tobool, label %if.then.20, label %if.end.22, !dbg !3319

if.then.20:                                       ; preds = %if.then.19
  %20 = load i64, i64* %dir_len, align 8, !dbg !3320
  %21 = load i8*, i8** %file_name, align 8, !dbg !3321
  %arrayidx21 = getelementptr inbounds i8, i8* %21, i64 %20, !dbg !3321
  store i8 47, i8* %arrayidx21, align 1, !dbg !3322
  br label %if.end.22, !dbg !3321

if.end.22:                                        ; preds = %if.then.20, %if.then.19
  %22 = load i8*, i8** %file_name, align 8, !dbg !3323
  %23 = load i64, i64* %dir_len, align 8, !dbg !3324
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !3325
  %24 = load i32, i32* %add_slash, align 4, !dbg !3326
  %idx.ext = sext i32 %24 to i64, !dbg !3327
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext, !dbg !3327
  %25 = load i8*, i8** %base, align 8, !dbg !3328
  %26 = load i64, i64* %base_len, align 8, !dbg !3329
  %add24 = add i64 %26, 1, !dbg !3330
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr23, i8* align 1 %25, i64 %add24, i1 false), !dbg !3331
  br label %if.end.25, !dbg !3332

if.end.25:                                        ; preds = %if.end.22, %land.end
  %27 = load i8*, i8** %file_name, align 8, !dbg !3333
  %cmp26 = icmp eq i8* %27, null, !dbg !3335
  br i1 %cmp26, label %if.then.28, label %if.else, !dbg !3336

if.then.28:                                       ; preds = %if.end.25
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.108, i32 0, i32 0), i8** %cp, align 8, !dbg !3337
  br label %if.end.123, !dbg !3338

if.else:                                          ; preds = %if.end.25
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !3339, metadata !DIExpression()), !dbg !3341
  %28 = load i8*, i8** %file_name, align 8, !dbg !3342
  %call29 = call i32 (i8*, i32, ...) @open(i8* %28, i32 131072), !dbg !3343
  store i32 %call29, i32* %fd, align 4, !dbg !3344
  %29 = load i32, i32* %fd, align 4, !dbg !3345
  %cmp30 = icmp slt i32 %29, 0, !dbg !3347
  br i1 %cmp30, label %if.then.32, label %if.else.33, !dbg !3348

if.then.32:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.108, i32 0, i32 0), i8** %cp, align 8, !dbg !3349
  br label %if.end.122, !dbg !3350

if.else.33:                                       ; preds = %if.else
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !3351, metadata !DIExpression()), !dbg !3393
  %30 = load i32, i32* %fd, align 4, !dbg !3394
  %call34 = call %struct._IO_FILE* @fdopen(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.113, i32 0, i32 0)) #10, !dbg !3395
  store %struct._IO_FILE* %call34, %struct._IO_FILE** %fp, align 8, !dbg !3396
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3397
  %cmp35 = icmp eq %struct._IO_FILE* %31, null, !dbg !3399
  br i1 %cmp35, label %if.then.37, label %if.else.39, !dbg !3400

if.then.37:                                       ; preds = %if.else.33
  %32 = load i32, i32* %fd, align 4, !dbg !3401
  %call38 = call i32 @close(i32 %32), !dbg !3403
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.108, i32 0, i32 0), i8** %cp, align 8, !dbg !3404
  br label %if.end.121, !dbg !3405

if.else.39:                                       ; preds = %if.else.33
  call void @llvm.dbg.declare(metadata i8** %res_ptr, metadata !3406, metadata !DIExpression()), !dbg !3408
  store i8* null, i8** %res_ptr, align 8, !dbg !3408
  call void @llvm.dbg.declare(metadata i64* %res_size, metadata !3409, metadata !DIExpression()), !dbg !3410
  store i64 0, i64* %res_size, align 8, !dbg !3410
  br label %for.cond, !dbg !3411

for.cond:                                         ; preds = %if.end.99, %if.end.67, %if.then.53, %if.else.39
  call void @llvm.dbg.declare(metadata i32* %c, metadata !3412, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.declare(metadata [51 x i8]* %buf1, metadata !3417, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.declare(metadata [51 x i8]* %buf2, metadata !3422, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.declare(metadata i64* %l1, metadata !3424, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.declare(metadata i64* %l2, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.declare(metadata i8** %old_res_ptr, metadata !3428, metadata !DIExpression()), !dbg !3429
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3430
  %call40 = call i32 @getc_unlocked(%struct._IO_FILE* %33), !dbg !3431
  store i32 %call40, i32* %c, align 4, !dbg !3432
  %34 = load i32, i32* %c, align 4, !dbg !3433
  %cmp41 = icmp eq i32 %34, -1, !dbg !3435
  br i1 %cmp41, label %if.then.43, label %if.end.44, !dbg !3436

if.then.43:                                       ; preds = %for.cond
  br label %for.end, !dbg !3437

if.end.44:                                        ; preds = %for.cond
  %35 = load i32, i32* %c, align 4, !dbg !3438
  %cmp45 = icmp eq i32 %35, 10, !dbg !3440
  br i1 %cmp45, label %if.then.53, label %lor.lhs.false.47, !dbg !3441

lor.lhs.false.47:                                 ; preds = %if.end.44
  %36 = load i32, i32* %c, align 4, !dbg !3442
  %cmp48 = icmp eq i32 %36, 32, !dbg !3444
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false.50, !dbg !3445

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.47
  %37 = load i32, i32* %c, align 4, !dbg !3446
  %cmp51 = icmp eq i32 %37, 9, !dbg !3448
  br i1 %cmp51, label %if.then.53, label %if.end.54, !dbg !3449

if.then.53:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.47, %if.end.44
  br label %for.cond, !dbg !3450

if.end.54:                                        ; preds = %lor.lhs.false.50
  %38 = load i32, i32* %c, align 4, !dbg !3451
  %cmp55 = icmp eq i32 %38, 35, !dbg !3453
  br i1 %cmp55, label %if.then.57, label %if.end.68, !dbg !3454

if.then.57:                                       ; preds = %if.end.54
  br label %do.body, !dbg !3455

do.body:                                          ; preds = %lor.end, %if.then.57
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3457
  %call58 = call i32 @getc_unlocked(%struct._IO_FILE* %39), !dbg !3459
  store i32 %call58, i32* %c, align 4, !dbg !3460
  br label %do.cond, !dbg !3461

do.cond:                                          ; preds = %do.body
  %40 = load i32, i32* %c, align 4, !dbg !3462
  %cmp59 = icmp eq i32 %40, -1, !dbg !3463
  br i1 %cmp59, label %lor.end, label %lor.rhs, !dbg !3464

lor.rhs:                                          ; preds = %do.cond
  %41 = load i32, i32* %c, align 4, !dbg !3465
  %cmp61 = icmp eq i32 %41, 10, !dbg !3467
  br label %lor.end, !dbg !3464

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %42 = phi i1 [ true, %do.cond ], [ %cmp61, %lor.rhs ]
  %lnot63 = xor i1 %42, true, !dbg !3468
  br i1 %lnot63, label %do.body, label %do.end, !dbg !3461

do.end:                                           ; preds = %lor.end
  %43 = load i32, i32* %c, align 4, !dbg !3470
  %cmp64 = icmp eq i32 %43, -1, !dbg !3472
  br i1 %cmp64, label %if.then.66, label %if.end.67, !dbg !3473

if.then.66:                                       ; preds = %do.end
  br label %for.end, !dbg !3474

if.end.67:                                        ; preds = %do.end
  br label %for.cond, !dbg !3475

if.end.68:                                        ; preds = %if.end.54
  %44 = load i32, i32* %c, align 4, !dbg !3476
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3477
  %call69 = call i32 @ungetc(i32 %44, %struct._IO_FILE* %45), !dbg !3478
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3479
  %arraydecay = getelementptr inbounds [51 x i8], [51 x i8]* %buf1, i32 0, i32 0, !dbg !3481
  %arraydecay70 = getelementptr inbounds [51 x i8], [51 x i8]* %buf2, i32 0, i32 0, !dbg !3482
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.114, i32 0, i32 0), i8* %arraydecay, i8* %arraydecay70), !dbg !3483
  %cmp72 = icmp slt i32 %call71, 2, !dbg !3484
  br i1 %cmp72, label %if.then.74, label %if.end.75, !dbg !3485

if.then.74:                                       ; preds = %if.end.68
  br label %for.end, !dbg !3486

if.end.75:                                        ; preds = %if.end.68
  %arraydecay76 = getelementptr inbounds [51 x i8], [51 x i8]* %buf1, i32 0, i32 0, !dbg !3487
  %call77 = call i64 @strlen(i8* %arraydecay76) #15, !dbg !3488
  store i64 %call77, i64* %l1, align 8, !dbg !3489
  %arraydecay78 = getelementptr inbounds [51 x i8], [51 x i8]* %buf2, i32 0, i32 0, !dbg !3490
  %call79 = call i64 @strlen(i8* %arraydecay78) #15, !dbg !3491
  store i64 %call79, i64* %l2, align 8, !dbg !3492
  %47 = load i8*, i8** %res_ptr, align 8, !dbg !3493
  store i8* %47, i8** %old_res_ptr, align 8, !dbg !3494
  %48 = load i64, i64* %res_size, align 8, !dbg !3495
  %cmp80 = icmp eq i64 %48, 0, !dbg !3497
  br i1 %cmp80, label %if.then.82, label %if.else.88, !dbg !3498

if.then.82:                                       ; preds = %if.end.75
  %49 = load i64, i64* %l1, align 8, !dbg !3499
  %add83 = add i64 %49, 1, !dbg !3501
  %50 = load i64, i64* %l2, align 8, !dbg !3502
  %add84 = add i64 %add83, %50, !dbg !3503
  %add85 = add i64 %add84, 1, !dbg !3504
  store i64 %add85, i64* %res_size, align 8, !dbg !3505
  %51 = load i64, i64* %res_size, align 8, !dbg !3506
  %add86 = add i64 %51, 1, !dbg !3507
  %call87 = call noalias i8* @malloc(i64 %add86) #10, !dbg !3508
  store i8* %call87, i8** %res_ptr, align 8, !dbg !3509
  br label %if.end.95, !dbg !3510

if.else.88:                                       ; preds = %if.end.75
  %52 = load i64, i64* %l1, align 8, !dbg !3511
  %add89 = add i64 %52, 1, !dbg !3513
  %53 = load i64, i64* %l2, align 8, !dbg !3514
  %add90 = add i64 %add89, %53, !dbg !3515
  %add91 = add i64 %add90, 1, !dbg !3516
  %54 = load i64, i64* %res_size, align 8, !dbg !3517
  %add92 = add i64 %54, %add91, !dbg !3517
  store i64 %add92, i64* %res_size, align 8, !dbg !3517
  %55 = load i8*, i8** %res_ptr, align 8, !dbg !3518
  %56 = load i64, i64* %res_size, align 8, !dbg !3519
  %add93 = add i64 %56, 1, !dbg !3520
  %call94 = call i8* @realloc(i8* %55, i64 %add93) #10, !dbg !3521
  store i8* %call94, i8** %res_ptr, align 8, !dbg !3522
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.88, %if.then.82
  %57 = load i8*, i8** %res_ptr, align 8, !dbg !3523
  %cmp96 = icmp eq i8* %57, null, !dbg !3525
  br i1 %cmp96, label %if.then.98, label %if.end.99, !dbg !3526

if.then.98:                                       ; preds = %if.end.95
  store i64 0, i64* %res_size, align 8, !dbg !3527
  %58 = load i8*, i8** %old_res_ptr, align 8, !dbg !3529
  call void @free(i8* %58) #10, !dbg !3530
  br label %for.end, !dbg !3531

if.end.99:                                        ; preds = %if.end.95
  %59 = load i8*, i8** %res_ptr, align 8, !dbg !3532
  %60 = load i64, i64* %res_size, align 8, !dbg !3533
  %add.ptr100 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !3534
  %61 = load i64, i64* %l2, align 8, !dbg !3535
  %add101 = add i64 %61, 1, !dbg !3536
  %idx.neg = sub i64 0, %add101, !dbg !3537
  %add.ptr102 = getelementptr inbounds i8, i8* %add.ptr100, i64 %idx.neg, !dbg !3537
  %62 = load i64, i64* %l1, align 8, !dbg !3538
  %add103 = add i64 %62, 1, !dbg !3539
  %idx.neg104 = sub i64 0, %add103, !dbg !3540
  %add.ptr105 = getelementptr inbounds i8, i8* %add.ptr102, i64 %idx.neg104, !dbg !3540
  %arraydecay106 = getelementptr inbounds [51 x i8], [51 x i8]* %buf1, i32 0, i32 0, !dbg !3541
  %call107 = call i8* @strcpy(i8* %add.ptr105, i8* %arraydecay106) #10, !dbg !3542
  %63 = load i8*, i8** %res_ptr, align 8, !dbg !3543
  %64 = load i64, i64* %res_size, align 8, !dbg !3544
  %add.ptr108 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !3545
  %65 = load i64, i64* %l2, align 8, !dbg !3546
  %add109 = add i64 %65, 1, !dbg !3547
  %idx.neg110 = sub i64 0, %add109, !dbg !3548
  %add.ptr111 = getelementptr inbounds i8, i8* %add.ptr108, i64 %idx.neg110, !dbg !3548
  %arraydecay112 = getelementptr inbounds [51 x i8], [51 x i8]* %buf2, i32 0, i32 0, !dbg !3549
  %call113 = call i8* @strcpy(i8* %add.ptr111, i8* %arraydecay112) #10, !dbg !3550
  br label %for.cond, !dbg !3551

for.end:                                          ; preds = %if.then.98, %if.then.74, %if.then.66, %if.then.43
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3552
  %call114 = call i32 @rpl_fclose(%struct._IO_FILE* %66), !dbg !3553
  %67 = load i64, i64* %res_size, align 8, !dbg !3554
  %cmp115 = icmp eq i64 %67, 0, !dbg !3556
  br i1 %cmp115, label %if.then.117, label %if.else.118, !dbg !3557

if.then.117:                                      ; preds = %for.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.108, i32 0, i32 0), i8** %cp, align 8, !dbg !3558
  br label %if.end.120, !dbg !3559

if.else.118:                                      ; preds = %for.end
  %68 = load i8*, i8** %res_ptr, align 8, !dbg !3560
  %69 = load i64, i64* %res_size, align 8, !dbg !3562
  %add.ptr119 = getelementptr inbounds i8, i8* %68, i64 %69, !dbg !3563
  store i8 0, i8* %add.ptr119, align 1, !dbg !3564
  %70 = load i8*, i8** %res_ptr, align 8, !dbg !3565
  store i8* %70, i8** %cp, align 8, !dbg !3566
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.118, %if.then.117
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.37
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.32
  %71 = load i8*, i8** %file_name, align 8, !dbg !3567
  call void @free(i8* %71) #10, !dbg !3568
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.28
  %72 = load i8*, i8** %cp, align 8, !dbg !3569
  store volatile i8* %72, i8** @charset_aliases, align 8, !dbg !3570
  br label %if.end.124, !dbg !3571

if.end.124:                                       ; preds = %if.end.123, %entry
  %73 = load i8*, i8** %cp, align 8, !dbg !3572
  ret i8* %73, !dbg !3573
}

; Function Attrs: nounwind uwtable
define internal i32 @rpl_fclose(%struct._IO_FILE* nonnull %fp) #5 !dbg !3574 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %saved_errno = alloca i32, align 4
  %fd = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !3617, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.declare(metadata i32* %saved_errno, metadata !3619, metadata !DIExpression()), !dbg !3620
  store i32 0, i32* %saved_errno, align 4, !dbg !3620
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !3621, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3623, metadata !DIExpression()), !dbg !3624
  store i32 0, i32* %result, align 4, !dbg !3624
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3625
  %call = call i32 @fileno(%struct._IO_FILE* %0) #10, !dbg !3626
  store i32 %call, i32* %fd, align 4, !dbg !3627
  %1 = load i32, i32* %fd, align 4, !dbg !3628
  %cmp = icmp slt i32 %1, 0, !dbg !3630
  br i1 %cmp, label %if.then, label %if.end, !dbg !3631

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3632
  %call1 = call i32 @fclose(%struct._IO_FILE* %2), !dbg !3633
  store i32 %call1, i32* %retval, !dbg !3634
  br label %return, !dbg !3634

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3635
  %call2 = call i32 @__freading(%struct._IO_FILE* %3) #10, !dbg !3635
  %cmp3 = icmp ne i32 %call2, 0, !dbg !3635
  br i1 %cmp3, label %lor.lhs.false, label %land.lhs.true, !dbg !3637

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3638
  %call4 = call i32 @fileno(%struct._IO_FILE* %4) #10, !dbg !3640
  %call5 = call i64 @lseek(i32 %call4, i64 0, i32 1) #10, !dbg !3641
  %cmp6 = icmp ne i64 %call5, -1, !dbg !3642
  br i1 %cmp6, label %land.lhs.true, label %if.end.10, !dbg !3643

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3644
  %call7 = call i32 @rpl_fflush(%struct._IO_FILE* %5), !dbg !3645
  %tobool = icmp ne i32 %call7, 0, !dbg !3645
  br i1 %tobool, label %if.then.8, label %if.end.10, !dbg !3646

if.then.8:                                        ; preds = %land.lhs.true
  %call9 = call i32* @__errno_location() #17, !dbg !3647
  %6 = load i32, i32* %call9, align 4, !dbg !3647
  store i32 %6, i32* %saved_errno, align 4, !dbg !3648
  br label %if.end.10, !dbg !3649

if.end.10:                                        ; preds = %if.then.8, %land.lhs.true, %lor.lhs.false
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3650
  %call11 = call i32 @fclose(%struct._IO_FILE* %7), !dbg !3651
  store i32 %call11, i32* %result, align 4, !dbg !3652
  %8 = load i32, i32* %saved_errno, align 4, !dbg !3653
  %cmp12 = icmp ne i32 %8, 0, !dbg !3655
  br i1 %cmp12, label %if.then.13, label %if.end.15, !dbg !3656

if.then.13:                                       ; preds = %if.end.10
  %9 = load i32, i32* %saved_errno, align 4, !dbg !3657
  %call14 = call i32* @__errno_location() #17, !dbg !3659
  store i32 %9, i32* %call14, align 4, !dbg !3660
  store i32 -1, i32* %result, align 4, !dbg !3661
  br label %if.end.15, !dbg !3662

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  %10 = load i32, i32* %result, align 4, !dbg !3663
  store i32 %10, i32* %retval, !dbg !3664
  br label %return, !dbg !3664

return:                                           ; preds = %if.end.15, %if.then
  %11 = load i32, i32* %retval, !dbg !3665
  ret i32 %11, !dbg !3665
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @rpl_fflush(%struct._IO_FILE* %stream) #5 !dbg !3666 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !3709, metadata !DIExpression()), !dbg !3710
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3711
  %cmp = icmp eq %struct._IO_FILE* %0, null, !dbg !3713
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3714

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3715
  %call = call i32 @__freading(%struct._IO_FILE* %1) #10, !dbg !3715
  %cmp1 = icmp ne i32 %call, 0, !dbg !3715
  br i1 %cmp1, label %if.end, label %if.then, !dbg !3717

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3718
  %call2 = call i32 @fflush(%struct._IO_FILE* %2), !dbg !3719
  store i32 %call2, i32* %retval, !dbg !3720
  br label %return, !dbg !3720

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3721
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %3), !dbg !3722
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3723
  %call3 = call i32 @fflush(%struct._IO_FILE* %4), !dbg !3724
  store i32 %call3, i32* %retval, !dbg !3725
  br label %return, !dbg !3725

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, !dbg !3726
  ret i32 %5, !dbg !3726
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %fp) #5 !dbg !3727 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !3730, metadata !DIExpression()), !dbg !3731
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3732
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 0, !dbg !3734
  %1 = load i32, i32* %_flags, align 4, !dbg !3734
  %and = and i32 %1, 256, !dbg !3735
  %tobool = icmp ne i32 %and, 0, !dbg !3735
  br i1 %tobool, label %if.then, label %if.end, !dbg !3736

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3737
  %call = call i32 @rpl_fseeko(%struct._IO_FILE* %2, i64 0, i32 1), !dbg !3738
  br label %if.end, !dbg !3738

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3739
}

; Function Attrs: nounwind uwtable
define internal i32 @rpl_fseeko(%struct._IO_FILE* nonnull %fp, i64 %offset, i32 %whence) #5 !dbg !3740 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %pos = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !3784, metadata !DIExpression()), !dbg !3785
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !3786, metadata !DIExpression()), !dbg !3787
  store i32 %whence, i32* %whence.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %whence.addr, metadata !3788, metadata !DIExpression()), !dbg !3789
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3790
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 2, !dbg !3792
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !3792
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3793
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 1, !dbg !3794
  %3 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !3794
  %cmp = icmp eq i8* %1, %3, !dbg !3795
  br i1 %cmp, label %land.lhs.true, label %if.end.7, !dbg !3796

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3797
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i32 0, i32 5, !dbg !3799
  %5 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !3799
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3800
  %_IO_write_base = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i32 0, i32 4, !dbg !3801
  %7 = load i8*, i8** %_IO_write_base, align 8, !dbg !3801
  %cmp1 = icmp eq i8* %5, %7, !dbg !3802
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.7, !dbg !3803

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3804
  %_IO_save_base = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %8, i32 0, i32 9, !dbg !3805
  %9 = load i8*, i8** %_IO_save_base, align 8, !dbg !3805
  %cmp3 = icmp eq i8* %9, null, !dbg !3806
  br i1 %cmp3, label %if.then, label %if.end.7, !dbg !3807

if.then:                                          ; preds = %land.lhs.true.2
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !3808, metadata !DIExpression()), !dbg !3810
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3811
  %call = call i32 @fileno(%struct._IO_FILE* %10) #10, !dbg !3812
  %11 = load i64, i64* %offset.addr, align 8, !dbg !3813
  %12 = load i32, i32* %whence.addr, align 4, !dbg !3814
  %call4 = call i64 @lseek(i32 %call, i64 %11, i32 %12) #10, !dbg !3815
  store i64 %call4, i64* %pos, align 8, !dbg !3810
  %13 = load i64, i64* %pos, align 8, !dbg !3816
  %cmp5 = icmp eq i64 %13, -1, !dbg !3818
  br i1 %cmp5, label %if.then.6, label %if.end, !dbg !3819

if.then.6:                                        ; preds = %if.then
  store i32 -1, i32* %retval, !dbg !3820
  br label %return, !dbg !3820

if.end:                                           ; preds = %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3822
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i32 0, i32 0, !dbg !3823
  %15 = load i32, i32* %_flags, align 4, !dbg !3824
  %and = and i32 %15, -17, !dbg !3824
  store i32 %and, i32* %_flags, align 4, !dbg !3824
  %16 = load i64, i64* %pos, align 8, !dbg !3825
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3826
  %_offset = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 21, !dbg !3827
  store i64 %16, i64* %_offset, align 8, !dbg !3828
  store i32 0, i32* %retval, !dbg !3829
  br label %return, !dbg !3829

if.end.7:                                         ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3830
  %19 = load i64, i64* %offset.addr, align 8, !dbg !3831
  %20 = load i32, i32* %whence.addr, align 4, !dbg !3832
  %call8 = call i32 @fseeko(%struct._IO_FILE* %18, i64 %19, i32 %20), !dbg !3833
  store i32 %call8, i32* %retval, !dbg !3834
  br label %return, !dbg !3834

return:                                           ; preds = %if.end.7, %if.end, %if.then.6
  %21 = load i32, i32* %retval, !dbg !3835
  ret i32 %21, !dbg !3835
}

declare i32 @fseeko(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isascii(i32 %c) #12 !dbg !3836 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3839, metadata !DIExpression()), !dbg !3840
  %0 = load i32, i32* %c.addr, align 4, !dbg !3841
  %cmp = icmp sge i32 %0, 0, !dbg !3842
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3843

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3844
  %cmp1 = icmp sle i32 %1, 127, !dbg !3846
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !3847
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isalnum(i32 %c) #12 !dbg !3849 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3850, metadata !DIExpression()), !dbg !3851
  %0 = load i32, i32* %c.addr, align 4, !dbg !3852
  %cmp = icmp sge i32 %0, 48, !dbg !3853
  br i1 %cmp, label %land.lhs.true, label %lor.rhs, !dbg !3854

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3855
  %cmp1 = icmp sle i32 %1, 57, !dbg !3857
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !3858

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %c.addr, align 4, !dbg !3859
  %and = and i32 %2, -33, !dbg !3860
  %cmp2 = icmp sge i32 %and, 65, !dbg !3861
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !3862

land.rhs:                                         ; preds = %lor.rhs
  %3 = load i32, i32* %c.addr, align 4, !dbg !3863
  %and3 = and i32 %3, -33, !dbg !3865
  %cmp4 = icmp sle i32 %and3, 90, !dbg !3866
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  br label %lor.end, !dbg !3867

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %5 = phi i1 [ true, %land.lhs.true ], [ %4, %land.end ]
  ret i1 %5, !dbg !3869
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isalpha(i32 %c) #12 !dbg !3870 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3871, metadata !DIExpression()), !dbg !3872
  %0 = load i32, i32* %c.addr, align 4, !dbg !3873
  %and = and i32 %0, -33, !dbg !3874
  %cmp = icmp sge i32 %and, 65, !dbg !3875
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3876

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3877
  %and1 = and i32 %1, -33, !dbg !3879
  %cmp2 = icmp sle i32 %and1, 90, !dbg !3880
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %2, !dbg !3881
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isblank(i32 %c) #12 !dbg !3883 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3884, metadata !DIExpression()), !dbg !3885
  %0 = load i32, i32* %c.addr, align 4, !dbg !3886
  %cmp = icmp eq i32 %0, 32, !dbg !3887
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3888

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3889
  %cmp1 = icmp eq i32 %1, 9, !dbg !3891
  br label %lor.end, !dbg !3888

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %2, !dbg !3892
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_iscntrl(i32 %c) #12 !dbg !3895 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3896, metadata !DIExpression()), !dbg !3897
  %0 = load i32, i32* %c.addr, align 4, !dbg !3898
  %and = and i32 %0, -32, !dbg !3899
  %cmp = icmp eq i32 %and, 0, !dbg !3900
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3901

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3902
  %cmp1 = icmp eq i32 %1, 127, !dbg !3904
  br label %lor.end, !dbg !3901

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %2, !dbg !3905
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isdigit(i32 %c) #12 !dbg !3908 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3909, metadata !DIExpression()), !dbg !3910
  %0 = load i32, i32* %c.addr, align 4, !dbg !3911
  %cmp = icmp sge i32 %0, 48, !dbg !3912
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3913

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3914
  %cmp1 = icmp sle i32 %1, 57, !dbg !3916
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !3917
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_islower(i32 %c) #12 !dbg !3919 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3920, metadata !DIExpression()), !dbg !3921
  %0 = load i32, i32* %c.addr, align 4, !dbg !3922
  %cmp = icmp sge i32 %0, 97, !dbg !3923
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3924

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3925
  %cmp1 = icmp sle i32 %1, 122, !dbg !3927
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !3928
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isgraph(i32 %c) #12 !dbg !3930 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3931, metadata !DIExpression()), !dbg !3932
  %0 = load i32, i32* %c.addr, align 4, !dbg !3933
  %cmp = icmp sge i32 %0, 33, !dbg !3934
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3935

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3936
  %cmp1 = icmp sle i32 %1, 126, !dbg !3938
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !3939
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isprint(i32 %c) #12 !dbg !3941 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3942, metadata !DIExpression()), !dbg !3943
  %0 = load i32, i32* %c.addr, align 4, !dbg !3944
  %cmp = icmp sge i32 %0, 32, !dbg !3945
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3946

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3947
  %cmp1 = icmp sle i32 %1, 126, !dbg !3949
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !3950
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_ispunct(i32 %c) #12 !dbg !3952 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3953, metadata !DIExpression()), !dbg !3954
  %0 = load i32, i32* %c.addr, align 4, !dbg !3955
  %cmp = icmp sge i32 %0, 33, !dbg !3956
  br i1 %cmp, label %land.lhs.true, label %land.end.9, !dbg !3957

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3958
  %cmp1 = icmp sle i32 %1, 126, !dbg !3960
  br i1 %cmp1, label %land.rhs, label %land.end.9, !dbg !3961

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4, !dbg !3962
  %cmp2 = icmp sge i32 %2, 48, !dbg !3963
  br i1 %cmp2, label %land.lhs.true.3, label %lor.rhs, !dbg !3964

land.lhs.true.3:                                  ; preds = %land.rhs
  %3 = load i32, i32* %c.addr, align 4, !dbg !3965
  %cmp4 = icmp sle i32 %3, 57, !dbg !3967
  br i1 %cmp4, label %lor.end, label %lor.rhs, !dbg !3968

lor.rhs:                                          ; preds = %land.lhs.true.3, %land.rhs
  %4 = load i32, i32* %c.addr, align 4, !dbg !3969
  %and = and i32 %4, -33, !dbg !3970
  %cmp5 = icmp sge i32 %and, 65, !dbg !3971
  br i1 %cmp5, label %land.rhs.6, label %land.end, !dbg !3972

land.rhs.6:                                       ; preds = %lor.rhs
  %5 = load i32, i32* %c.addr, align 4, !dbg !3973
  %and7 = and i32 %5, -33, !dbg !3974
  %cmp8 = icmp sle i32 %and7, 90, !dbg !3975
  br label %land.end

land.end:                                         ; preds = %land.rhs.6, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp8, %land.rhs.6 ]
  br label %lor.end, !dbg !3976

lor.end:                                          ; preds = %land.end, %land.lhs.true.3
  %7 = phi i1 [ true, %land.lhs.true.3 ], [ %6, %land.end ]
  %lnot = xor i1 %7, true, !dbg !3978
  br label %land.end.9

land.end.9:                                       ; preds = %lor.end, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %lor.end ]
  ret i1 %8, !dbg !3979
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isspace(i32 %c) #12 !dbg !3980 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3981, metadata !DIExpression()), !dbg !3982
  %0 = load i32, i32* %c.addr, align 4, !dbg !3983
  %cmp = icmp eq i32 %0, 32, !dbg !3984
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !3985

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3986
  %cmp1 = icmp eq i32 %1, 9, !dbg !3988
  br i1 %cmp1, label %lor.end, label %lor.lhs.false.2, !dbg !3989

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4, !dbg !3990
  %cmp3 = icmp eq i32 %2, 10, !dbg !3992
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4, !dbg !3993

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %c.addr, align 4, !dbg !3994
  %cmp5 = icmp eq i32 %3, 11, !dbg !3995
  br i1 %cmp5, label %lor.end, label %lor.lhs.false.6, !dbg !3996

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %4 = load i32, i32* %c.addr, align 4, !dbg !3997
  %cmp7 = icmp eq i32 %4, 12, !dbg !3999
  br i1 %cmp7, label %lor.end, label %lor.rhs, !dbg !4000

lor.rhs:                                          ; preds = %lor.lhs.false.6
  %5 = load i32, i32* %c.addr, align 4, !dbg !4001
  %cmp8 = icmp eq i32 %5, 13, !dbg !4003
  br label %lor.end, !dbg !4000

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false.2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp8, %lor.rhs ]
  ret i1 %6, !dbg !4004
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isupper(i32 %c) #12 !dbg !4005 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4006, metadata !DIExpression()), !dbg !4007
  %0 = load i32, i32* %c.addr, align 4, !dbg !4008
  %cmp = icmp sge i32 %0, 65, !dbg !4009
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4010

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4011
  %cmp1 = icmp sle i32 %1, 90, !dbg !4013
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !4014
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isxdigit(i32 %c) #12 !dbg !4016 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4017, metadata !DIExpression()), !dbg !4018
  %0 = load i32, i32* %c.addr, align 4, !dbg !4019
  %cmp = icmp sge i32 %0, 48, !dbg !4020
  br i1 %cmp, label %land.lhs.true, label %lor.rhs, !dbg !4021

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4022
  %cmp1 = icmp sle i32 %1, 57, !dbg !4024
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !4025

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %c.addr, align 4, !dbg !4026
  %and = and i32 %2, -33, !dbg !4027
  %cmp2 = icmp sge i32 %and, 65, !dbg !4028
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !4029

land.rhs:                                         ; preds = %lor.rhs
  %3 = load i32, i32* %c.addr, align 4, !dbg !4030
  %and3 = and i32 %3, -33, !dbg !4032
  %cmp4 = icmp sle i32 %and3, 70, !dbg !4033
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  br label %lor.end, !dbg !4034

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %5 = phi i1 [ true, %land.lhs.true ], [ %4, %land.end ]
  ret i1 %5, !dbg !4036
}

; Function Attrs: nounwind readnone uwtable
define internal i32 @c_tolower(i32 %c) #12 !dbg !4037 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4040, metadata !DIExpression()), !dbg !4041
  %0 = load i32, i32* %c.addr, align 4, !dbg !4042
  %cmp = icmp sge i32 %0, 65, !dbg !4043
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4044

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4045
  %cmp1 = icmp sle i32 %1, 90, !dbg !4047
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4042

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4, !dbg !4048
  %sub = sub nsw i32 %2, 65, !dbg !4050
  %add = add nsw i32 %sub, 97, !dbg !4051
  br label %cond.end, !dbg !4042

cond.false:                                       ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %c.addr, align 4, !dbg !4052
  br label %cond.end, !dbg !4042

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %3, %cond.false ], !dbg !4042
  ret i32 %cond, !dbg !4055
}

; Function Attrs: nounwind readnone uwtable
define internal i32 @c_toupper(i32 %c) #12 !dbg !4058 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4059, metadata !DIExpression()), !dbg !4060
  %0 = load i32, i32* %c.addr, align 4, !dbg !4061
  %cmp = icmp sge i32 %0, 97, !dbg !4062
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4063

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4064
  %cmp1 = icmp sle i32 %1, 122, !dbg !4066
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4061

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4, !dbg !4067
  %sub = sub nsw i32 %2, 97, !dbg !4069
  %add = add nsw i32 %sub, 65, !dbg !4070
  br label %cond.end, !dbg !4061

cond.false:                                       ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %c.addr, align 4, !dbg !4071
  br label %cond.end, !dbg !4061

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %3, %cond.false ], !dbg !4061
  ret i32 %cond, !dbg !4074
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nounwind willreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }

!llvm.dbg.cu = !{!9, !27, !33, !43, !51, !58, !501, !148, !508, !520, !522, !524, !527, !533, !157, !535, !537, !539, !541}
!llvm.ident = !{!543, !543, !543, !543, !543, !543, !543, !543, !543, !543, !543, !543, !543, !543, !543, !543, !543, !543, !543}
!llvm.module.flags = !{!544, !545}

!0 = distinct !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = !DIGlobalVariable(name: "infomap", scope: !2, file: !3, line: 571, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 569, type: !4, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !11)
!3 = !DIFile(filename: "../src/system.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !12, globals: !15)
!10 = !DIFile(filename: "../src/true.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!11 = !{}
!12 = !{!13, !14}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!15 = !{!16}
!16 = distinct !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 896, align: 64, elements: !23)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !2, file: !3, line: 571, size: 128, align: 64, elements: !20)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !19, file: !3, line: 571, baseType: !6, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !19, file: !3, line: 571, baseType: !6, size: 64, align: 64, offset: 64)
!23 = !{!24}
!24 = !DISubrange(count: 7)
!25 = distinct !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = !DIGlobalVariable(name: "Version", scope: !27, file: !28, line: 2, type: !6, isLocal: false, isDefinition: true)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !29)
!28 = !DIFile(filename: "src/version.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!29 = !{!30}
!30 = distinct !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!31 = distinct !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = !DIGlobalVariable(name: "file_name", scope: !33, file: !34, line: 36, type: !6, isLocal: true, isDefinition: true)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !35)
!34 = !DIFile(filename: "../lib/closeout.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!35 = !{!36, !37}
!36 = distinct !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!37 = distinct !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = !DIGlobalVariable(name: "ignore_EPIPE", scope: !33, file: !34, line: 46, type: !39, isLocal: true, isDefinition: true)
!39 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!40 = distinct !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!41 = distinct !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = !DIGlobalVariable(name: "exit_failure", scope: !43, file: !44, line: 24, type: !47, isLocal: false, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !45)
!44 = !DIFile(filename: "../lib/exitfail.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!45 = !{!46}
!46 = distinct !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = distinct !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = !DIGlobalVariable(name: "program_name", scope: !51, file: !52, line: 33, type: !6, isLocal: false, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !53, globals: !54)
!52 = !DIFile(filename: "../lib/progname.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!53 = !{!14, !13}
!54 = !{!55}
!55 = distinct !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!56 = distinct !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = !DIGlobalVariable(name: "quoting_style_args", scope: !58, file: !59, line: 75, type: !135, isLocal: false, isDefinition: true)
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !93, globals: !98)
!59 = !DIFile(filename: "../lib/quotearg.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!60 = !{!61, !73, !78}
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !62, line: 32, size: 32, align: 32, elements: !63)
!62 = !DIFile(filename: "../lib/quotearg.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72}
!64 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!65 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!66 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!67 = !DIEnumerator(name: "c_quoting_style", value: 3)
!68 = !DIEnumerator(name: "c_maybe_quoting_style", value: 4)
!69 = !DIEnumerator(name: "escape_quoting_style", value: 5)
!70 = !DIEnumerator(name: "locale_quoting_style", value: 6)
!71 = !DIEnumerator(name: "clocale_quoting_style", value: 7)
!72 = !DIEnumerator(name: "custom_quoting_style", value: 8)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !62, line: 211, size: 32, align: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!76 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!77 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 46, size: 32, align: 32, elements: !80)
!79 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!81 = !DIEnumerator(name: "_ISupper", value: 256)
!82 = !DIEnumerator(name: "_ISlower", value: 512)
!83 = !DIEnumerator(name: "_ISalpha", value: 1024)
!84 = !DIEnumerator(name: "_ISdigit", value: 2048)
!85 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!86 = !DIEnumerator(name: "_ISspace", value: 8192)
!87 = !DIEnumerator(name: "_ISprint", value: 16384)
!88 = !DIEnumerator(name: "_ISgraph", value: 32768)
!89 = !DIEnumerator(name: "_ISblank", value: 1)
!90 = !DIEnumerator(name: "_IScntrl", value: 2)
!91 = !DIEnumerator(name: "_ISpunct", value: 4)
!92 = !DIEnumerator(name: "_ISalnum", value: 8)
!93 = !{!94, !48, !97}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/usr/data/lobo/llvm/llvm-3.7.0/build/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!98 = !{!99, !100, !106, !117, !119, !124, !131, !133}
!99 = distinct !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!100 = distinct !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = !DIGlobalVariable(name: "quoting_style_vals", scope: !58, file: !59, line: 89, type: !102, isLocal: false, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, align: 32, elements: !104)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!104 = !{!105}
!105 = !DISubrange(count: 8)
!106 = distinct !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = !DIGlobalVariable(name: "quote_quoting_options", scope: !58, file: !59, line: 938, type: !108, isLocal: false, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !59, line: 55, size: 448, align: 64, elements: !109)
!109 = !{!110, !111, !112, !115, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !108, file: !59, line: 58, baseType: !61, size: 32, align: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !59, line: 61, baseType: !48, size: 32, align: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !108, file: !59, line: 65, baseType: !113, size: 256, align: 32, offset: 64)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, align: 32, elements: !104)
!114 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !108, file: !59, line: 68, baseType: !6, size: 64, align: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !108, file: !59, line: 71, baseType: !6, size: 64, align: 64, offset: 384)
!117 = distinct !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = !DIGlobalVariable(name: "default_quoting_options", scope: !58, file: !59, line: 102, type: !108, isLocal: true, isDefinition: true)
!119 = distinct !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = !DIGlobalVariable(name: "slot0", scope: !58, file: !59, line: 731, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, align: 8, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 256)
!124 = distinct !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = !DIGlobalVariable(name: "slotvec", scope: !58, file: !59, line: 734, type: !126, isLocal: true, isDefinition: true)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !59, line: 723, size: 128, align: 64, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !127, file: !59, line: 725, baseType: !94, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !127, file: !59, line: 726, baseType: !13, size: 64, align: 64, offset: 64)
!131 = distinct !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = !DIGlobalVariable(name: "nslots", scope: !58, file: !59, line: 732, type: !114, isLocal: true, isDefinition: true)
!133 = distinct !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = !DIGlobalVariable(name: "slotvec0", scope: !58, file: !59, line: 733, type: !127, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 576, align: 64, elements: !137)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!137 = !{!138}
!138 = !DISubrange(count: 9)
!139 = distinct !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!140 = distinct !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!141 = distinct !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!142 = distinct !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!143 = distinct !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!144 = distinct !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!145 = distinct !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!146 = distinct !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = !DIGlobalVariable(name: "version_etc_copyright", scope: !148, file: !149, line: 26, type: !152, isLocal: false, isDefinition: true)
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !150)
!149 = !DIFile(filename: "../lib/version-etc-fsf.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!150 = !{!151}
!151 = distinct !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, align: 8, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 47)
!155 = distinct !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = !DIGlobalVariable(name: "charset_aliases", scope: !157, file: !158, line: 120, type: !500, isLocal: true, isDefinition: true)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !159, retainedTypes: !53, globals: !498)
!158 = !DIFile(filename: "../lib/localcharset.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!159 = !{!160}
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !161, line: 41, size: 32, align: 32, elements: !162)
!161 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497}
!163 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!164 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!165 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!166 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!167 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!168 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!169 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!170 = !DIEnumerator(name: "DAY_1", value: 131079)
!171 = !DIEnumerator(name: "DAY_2", value: 131080)
!172 = !DIEnumerator(name: "DAY_3", value: 131081)
!173 = !DIEnumerator(name: "DAY_4", value: 131082)
!174 = !DIEnumerator(name: "DAY_5", value: 131083)
!175 = !DIEnumerator(name: "DAY_6", value: 131084)
!176 = !DIEnumerator(name: "DAY_7", value: 131085)
!177 = !DIEnumerator(name: "ABMON_1", value: 131086)
!178 = !DIEnumerator(name: "ABMON_2", value: 131087)
!179 = !DIEnumerator(name: "ABMON_3", value: 131088)
!180 = !DIEnumerator(name: "ABMON_4", value: 131089)
!181 = !DIEnumerator(name: "ABMON_5", value: 131090)
!182 = !DIEnumerator(name: "ABMON_6", value: 131091)
!183 = !DIEnumerator(name: "ABMON_7", value: 131092)
!184 = !DIEnumerator(name: "ABMON_8", value: 131093)
!185 = !DIEnumerator(name: "ABMON_9", value: 131094)
!186 = !DIEnumerator(name: "ABMON_10", value: 131095)
!187 = !DIEnumerator(name: "ABMON_11", value: 131096)
!188 = !DIEnumerator(name: "ABMON_12", value: 131097)
!189 = !DIEnumerator(name: "MON_1", value: 131098)
!190 = !DIEnumerator(name: "MON_2", value: 131099)
!191 = !DIEnumerator(name: "MON_3", value: 131100)
!192 = !DIEnumerator(name: "MON_4", value: 131101)
!193 = !DIEnumerator(name: "MON_5", value: 131102)
!194 = !DIEnumerator(name: "MON_6", value: 131103)
!195 = !DIEnumerator(name: "MON_7", value: 131104)
!196 = !DIEnumerator(name: "MON_8", value: 131105)
!197 = !DIEnumerator(name: "MON_9", value: 131106)
!198 = !DIEnumerator(name: "MON_10", value: 131107)
!199 = !DIEnumerator(name: "MON_11", value: 131108)
!200 = !DIEnumerator(name: "MON_12", value: 131109)
!201 = !DIEnumerator(name: "AM_STR", value: 131110)
!202 = !DIEnumerator(name: "PM_STR", value: 131111)
!203 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!204 = !DIEnumerator(name: "D_FMT", value: 131113)
!205 = !DIEnumerator(name: "T_FMT", value: 131114)
!206 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!207 = !DIEnumerator(name: "ERA", value: 131116)
!208 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!209 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!210 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!211 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!212 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!213 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!214 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!215 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!216 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!217 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!218 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!219 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!220 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!221 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!222 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!223 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!224 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!225 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!226 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!227 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!228 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!229 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!230 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!231 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!232 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!233 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!234 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!235 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!236 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!237 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!238 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!239 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!240 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!241 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!242 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!243 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!244 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!245 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!246 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!247 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!248 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!249 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!250 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!251 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!252 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!253 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!254 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!255 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!256 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!257 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!258 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!259 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!260 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!261 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!262 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!263 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!264 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!265 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!266 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!267 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!268 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!269 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!270 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!271 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!272 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!273 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!274 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!275 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!276 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!277 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!278 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!279 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!280 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!281 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!282 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!283 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!284 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!285 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!286 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!287 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!288 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!289 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!290 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!291 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!292 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!293 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!294 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!295 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!296 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!297 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!298 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!299 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!300 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!301 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!302 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!303 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!304 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!305 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!306 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!307 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!308 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!309 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!310 = !DIEnumerator(name: "CODESET", value: 14)
!311 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!312 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!313 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!314 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!315 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!316 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!317 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!318 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!319 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!320 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!321 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!322 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!323 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!324 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!325 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!326 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!327 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!328 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!329 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!331 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!332 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!333 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!337 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!338 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!339 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!340 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!341 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!342 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!343 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!344 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!345 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!346 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!347 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!348 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!349 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!350 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!351 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!352 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!353 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!354 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!355 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!356 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!357 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!358 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!359 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!360 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!361 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!362 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!363 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!364 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!365 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!366 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!367 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!368 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!369 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!370 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!371 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!372 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!373 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!374 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!375 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!376 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!377 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!378 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!379 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!380 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!381 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!382 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!383 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!384 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!385 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!386 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!387 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!388 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!389 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!390 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!391 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!392 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!393 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!394 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!395 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!396 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!397 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!398 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!399 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!400 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!401 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!402 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!403 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!404 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!405 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!406 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!407 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!408 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!409 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!410 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!411 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!412 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!413 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!414 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!415 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!416 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!417 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!418 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!419 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!420 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!421 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!422 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!423 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!424 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!425 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!426 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!427 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!428 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!429 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!430 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!431 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!432 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!433 = !DIEnumerator(name: "THOUSEP", value: 65537)
!434 = !DIEnumerator(name: "__GROUPING", value: 65538)
!435 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!436 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!437 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!438 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!439 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!440 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!441 = !DIEnumerator(name: "__YESSTR", value: 327682)
!442 = !DIEnumerator(name: "__NOSTR", value: 327683)
!443 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!444 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!445 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!446 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!447 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!448 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!449 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!450 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!451 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!452 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!453 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!454 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!455 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!456 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!457 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!458 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!459 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!460 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!461 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!462 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!463 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!464 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!465 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!466 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!467 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!468 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!469 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!470 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!471 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!472 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!473 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!474 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!475 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!476 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!477 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!478 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!479 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!480 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!481 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!482 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!483 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!484 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!485 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!486 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!487 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!488 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!489 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!490 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!491 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!492 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!493 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!494 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!495 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!496 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!497 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!498 = !{!499}
!499 = distinct !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!500 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!501 = distinct !DICompileUnit(language: DW_LANG_C99, file: !502, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !503, retainedTypes: !507)
!502 = !DIFile(filename: "../lib/version-etc.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!503 = !{!504}
!504 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !502, line: 41, size: 32, align: 32, elements: !505)
!505 = !{!506}
!506 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2015)
!507 = !{!14}
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !510, retainedTypes: !519)
!509 = !DIFile(filename: "../lib/xmalloc.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!510 = !{!511}
!511 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !513, file: !512, line: 191, size: 32, align: 32, elements: !517)
!512 = !DIFile(filename: "../lib/xalloc.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!513 = distinct !DISubprogram(name: "x2nrealloc", scope: !512, file: !512, line: 179, type: !514, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!514 = !DISubroutineType(types: !515)
!515 = !{!14, !14, !516, !94}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!517 = !{!518}
!518 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!519 = !{!94, !13, !14}
!520 = distinct !DICompileUnit(language: DW_LANG_C99, file: !521, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!521 = !DIFile(filename: "../lib/xalloc-die.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !507)
!523 = !DIFile(filename: "../lib/calloc.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!524 = distinct !DICompileUnit(language: DW_LANG_C99, file: !525, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !526)
!525 = !DIFile(filename: "../lib/mbrtowc.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!526 = !{!14, !94}
!527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !528, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !529)
!528 = !DIFile(filename: "../lib/c-strcasecmp.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!534 = !DIFile(filename: "../lib/close-stream.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!535 = distinct !DICompileUnit(language: DW_LANG_C99, file: !536, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!536 = !DIFile(filename: "../lib/fclose.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !507)
!538 = !DIFile(filename: "../lib/fflush.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!539 = distinct !DICompileUnit(language: DW_LANG_C99, file: !540, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !507)
!540 = !DIFile(filename: "../lib/fseeko.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!541 = distinct !DICompileUnit(language: DW_LANG_C99, file: !542, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!542 = !DIFile(filename: "../lib/c-ctype.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!543 = !{!"clang version 3.7.0 (tags/RELEASE_370/final 255017)"}
!544 = !{i32 2, !"Dwarf Version", i32 4}
!545 = !{i32 2, !"Debug Info Version", i32 3}
!546 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 36, type: !547, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !48}
!549 = !DILocalVariable(name: "status", arg: 1, scope: !546, file: !10, line: 36, type: !48)
!550 = !DILocation(line: 36, column: 12, scope: !546)
!551 = !DILocation(line: 38, column: 11, scope: !546)
!552 = !DILocation(line: 42, column: 11, scope: !546)
!553 = !DILocation(line: 42, column: 25, scope: !546)
!554 = !DILocation(line: 38, column: 3, scope: !546)
!555 = !DILocation(line: 44, column: 11, scope: !546)
!556 = !DILocation(line: 43, column: 3, scope: !546)
!557 = !DILocation(line: 47, column: 3, scope: !546)
!558 = !DILocation(line: 48, column: 3, scope: !546)
!559 = !DILocation(line: 49, column: 11, scope: !546)
!560 = !DILocation(line: 49, column: 3, scope: !546)
!561 = !DILocation(line: 50, column: 3, scope: !546)
!562 = !DILocation(line: 51, column: 9, scope: !546)
!563 = !DILocation(line: 51, column: 3, scope: !546)
!564 = !DILocation(line: 52, column: 1, scope: !546)
!565 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 55, type: !566, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!566 = !DISubroutineType(types: !567)
!567 = !{!48, !48, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!569 = !DILocalVariable(name: "argc", arg: 1, scope: !565, file: !10, line: 55, type: !48)
!570 = !DILocation(line: 55, column: 11, scope: !565)
!571 = !DILocalVariable(name: "argv", arg: 2, scope: !565, file: !10, line: 55, type: !568)
!572 = !DILocation(line: 55, column: 24, scope: !565)
!573 = !DILocation(line: 59, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !565, file: !10, line: 59, column: 7)
!575 = !DILocation(line: 59, column: 12, scope: !574)
!576 = !DILocation(line: 59, column: 7, scope: !565)
!577 = !DILocation(line: 62, column: 25, scope: !578)
!578 = distinct !DILexicalBlock(scope: !574, file: !10, line: 60, column: 5)
!579 = !DILocation(line: 62, column: 7, scope: !578)
!580 = !DILocation(line: 63, column: 7, scope: !578)
!581 = !DILocation(line: 64, column: 7, scope: !578)
!582 = !DILocation(line: 65, column: 7, scope: !578)
!583 = !DILocation(line: 69, column: 7, scope: !578)
!584 = !DILocation(line: 71, column: 11, scope: !585)
!585 = distinct !DILexicalBlock(scope: !578, file: !10, line: 71, column: 11)
!586 = !DILocation(line: 71, column: 11, scope: !578)
!587 = !DILocation(line: 72, column: 9, scope: !585)
!588 = !DILocation(line: 74, column: 11, scope: !589)
!589 = distinct !DILexicalBlock(scope: !578, file: !10, line: 74, column: 11)
!590 = !DILocation(line: 74, column: 11, scope: !578)
!591 = !DILocation(line: 75, column: 22, scope: !589)
!592 = !DILocation(line: 75, column: 58, scope: !589)
!593 = !DILocation(line: 75, column: 9, scope: !589)
!594 = !DILocation(line: 77, column: 5, scope: !578)
!595 = !DILocation(line: 79, column: 3, scope: !565)
!596 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 569, type: !6)
!597 = !DILocation(line: 569, column: 34, scope: !2)
!598 = !DILocalVariable(name: "node", scope: !2, file: !3, line: 581, type: !6)
!599 = !DILocation(line: 581, column: 15, scope: !2)
!600 = !DILocation(line: 581, column: 22, scope: !2)
!601 = !DILocalVariable(name: "map_prog", scope: !2, file: !3, line: 582, type: !602)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!603 = !DILocation(line: 582, column: 25, scope: !2)
!604 = !DILocation(line: 584, column: 3, scope: !2)
!605 = !DILocation(line: 584, column: 10, scope: !606)
!606 = !DILexicalBlockFile(scope: !607, file: !3, discriminator: 4)
!607 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 1)
!608 = !DILocation(line: 584, column: 20, scope: !2)
!609 = !DILocation(line: 584, column: 10, scope: !2)
!610 = !DILocation(line: 584, column: 28, scope: !2)
!611 = !DILocation(line: 584, column: 33, scope: !612)
!612 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 2)
!613 = !DILocation(line: 584, column: 31, scope: !2)
!614 = !DILocation(line: 584, column: 3, scope: !615)
!615 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 3)
!616 = !DILocation(line: 585, column: 13, scope: !2)
!617 = !DILocation(line: 587, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !2, file: !3, line: 587, column: 7)
!619 = !DILocation(line: 587, column: 17, scope: !618)
!620 = !DILocation(line: 587, column: 7, scope: !2)
!621 = !DILocation(line: 588, column: 12, scope: !618)
!622 = !DILocation(line: 588, column: 22, scope: !618)
!623 = !DILocation(line: 588, column: 10, scope: !618)
!624 = !DILocation(line: 588, column: 5, scope: !618)
!625 = !DILocation(line: 590, column: 11, scope: !2)
!626 = !DILocation(line: 590, column: 3, scope: !2)
!627 = !DILocalVariable(name: "lc_messages", scope: !2, file: !3, line: 594, type: !6)
!628 = !DILocation(line: 594, column: 15, scope: !2)
!629 = !DILocation(line: 594, column: 29, scope: !2)
!630 = !DILocation(line: 595, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !2, file: !3, line: 595, column: 7)
!632 = !DILocation(line: 595, column: 19, scope: !631)
!633 = !DILocation(line: 595, column: 22, scope: !634)
!634 = !DILexicalBlockFile(scope: !631, file: !3, discriminator: 1)
!635 = !DILocation(line: 595, column: 7, scope: !2)
!636 = !DILocation(line: 601, column: 15, scope: !637)
!637 = distinct !DILexicalBlock(scope: !631, file: !3, line: 596, column: 5)
!638 = !DILocation(line: 602, column: 61, scope: !637)
!639 = !DILocation(line: 601, column: 7, scope: !637)
!640 = !DILocation(line: 603, column: 5, scope: !637)
!641 = !DILocation(line: 604, column: 11, scope: !2)
!642 = !DILocation(line: 605, column: 24, scope: !2)
!643 = !DILocation(line: 604, column: 3, scope: !2)
!644 = !DILocation(line: 606, column: 11, scope: !2)
!645 = !DILocation(line: 607, column: 11, scope: !2)
!646 = !DILocation(line: 607, column: 17, scope: !2)
!647 = !DILocation(line: 607, column: 25, scope: !2)
!648 = !DILocation(line: 607, column: 22, scope: !2)
!649 = !DILocation(line: 606, column: 3, scope: !2)
!650 = !DILocation(line: 608, column: 1, scope: !2)
!651 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !34, file: !34, line: 41, type: !4, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !11)
!652 = !DILocalVariable(name: "file", arg: 1, scope: !651, file: !34, line: 41, type: !6)
!653 = !DILocation(line: 41, column: 41, scope: !651)
!654 = !DILocation(line: 43, column: 15, scope: !651)
!655 = !DILocation(line: 43, column: 13, scope: !651)
!656 = !DILocation(line: 44, column: 1, scope: !651)
!657 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !34, file: !34, line: 78, type: !658, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !11)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !39}
!660 = !DILocalVariable(name: "ignore", arg: 1, scope: !657, file: !34, line: 78, type: !39)
!661 = !DILocation(line: 78, column: 37, scope: !657)
!662 = !DILocation(line: 80, column: 18, scope: !657)
!663 = !DILocation(line: 80, column: 16, scope: !657)
!664 = !DILocation(line: 81, column: 1, scope: !657)
!665 = distinct !DISubprogram(name: "close_stdout", scope: !34, file: !34, line: 107, type: !666, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !11)
!666 = !DISubroutineType(types: !667)
!667 = !{null}
!668 = !DILocation(line: 109, column: 21, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !34, line: 109, column: 7)
!670 = !DILocation(line: 109, column: 7, scope: !669)
!671 = !DILocation(line: 109, column: 29, scope: !669)
!672 = !DILocation(line: 110, column: 7, scope: !669)
!673 = !DILocation(line: 110, column: 12, scope: !674)
!674 = !DILexicalBlockFile(scope: !669, file: !34, discriminator: 1)
!675 = !DILocation(line: 110, column: 25, scope: !669)
!676 = !DILocation(line: 110, column: 28, scope: !677)
!677 = !DILexicalBlockFile(scope: !669, file: !34, discriminator: 2)
!678 = !DILocation(line: 110, column: 34, scope: !669)
!679 = !DILocation(line: 109, column: 7, scope: !665)
!680 = !DILocalVariable(name: "write_error", scope: !681, file: !34, line: 112, type: !6)
!681 = distinct !DILexicalBlock(scope: !669, file: !34, line: 111, column: 5)
!682 = !DILocation(line: 112, column: 19, scope: !681)
!683 = !DILocation(line: 112, column: 33, scope: !681)
!684 = !DILocation(line: 113, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !34, line: 113, column: 11)
!686 = !DILocation(line: 113, column: 11, scope: !681)
!687 = !DILocation(line: 114, column: 19, scope: !685)
!688 = !DILocation(line: 114, column: 52, scope: !685)
!689 = !DILocation(line: 114, column: 36, scope: !685)
!690 = !DILocation(line: 115, column: 16, scope: !685)
!691 = !DILocation(line: 114, column: 9, scope: !685)
!692 = !DILocation(line: 117, column: 19, scope: !685)
!693 = !DILocation(line: 117, column: 32, scope: !685)
!694 = !DILocation(line: 117, column: 9, scope: !685)
!695 = !DILocation(line: 119, column: 14, scope: !681)
!696 = !DILocation(line: 119, column: 7, scope: !681)
!697 = !DILocation(line: 122, column: 22, scope: !698)
!698 = distinct !DILexicalBlock(scope: !665, file: !34, line: 122, column: 8)
!699 = !DILocation(line: 122, column: 8, scope: !698)
!700 = !DILocation(line: 122, column: 30, scope: !698)
!701 = !DILocation(line: 122, column: 8, scope: !665)
!702 = !DILocation(line: 123, column: 13, scope: !698)
!703 = !DILocation(line: 123, column: 6, scope: !698)
!704 = !DILocation(line: 124, column: 1, scope: !665)
!705 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !4, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !11)
!706 = !DILocalVariable(name: "argv0", arg: 1, scope: !705, file: !52, line: 39, type: !6)
!707 = !DILocation(line: 39, column: 31, scope: !705)
!708 = !DILocalVariable(name: "slash", scope: !705, file: !52, line: 46, type: !6)
!709 = !DILocation(line: 46, column: 15, scope: !705)
!710 = !DILocalVariable(name: "base", scope: !705, file: !52, line: 47, type: !6)
!711 = !DILocation(line: 47, column: 15, scope: !705)
!712 = !DILocation(line: 51, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !705, file: !52, line: 51, column: 7)
!714 = !DILocation(line: 51, column: 13, scope: !713)
!715 = !DILocation(line: 51, column: 7, scope: !705)
!716 = !DILocation(line: 55, column: 14, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !52, line: 52, column: 5)
!718 = !DILocation(line: 54, column: 7, scope: !717)
!719 = !DILocation(line: 56, column: 7, scope: !717)
!720 = !DILocation(line: 59, column: 20, scope: !705)
!721 = !DILocation(line: 59, column: 11, scope: !705)
!722 = !DILocation(line: 59, column: 9, scope: !705)
!723 = !DILocation(line: 60, column: 11, scope: !705)
!724 = !DILocation(line: 60, column: 17, scope: !705)
!725 = !DILocation(line: 60, column: 27, scope: !726)
!726 = !DILexicalBlockFile(scope: !705, file: !52, discriminator: 1)
!727 = !DILocation(line: 60, column: 33, scope: !705)
!728 = !DILocation(line: 60, column: 39, scope: !729)
!729 = !DILexicalBlockFile(scope: !705, file: !52, discriminator: 2)
!730 = !DILocation(line: 60, column: 8, scope: !731)
!731 = !DILexicalBlockFile(scope: !732, file: !52, discriminator: 4)
!732 = !DILexicalBlockFile(scope: !705, file: !52, discriminator: 3)
!733 = !DILocation(line: 61, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !705, file: !52, line: 61, column: 7)
!735 = !DILocation(line: 61, column: 14, scope: !734)
!736 = !DILocation(line: 61, column: 12, scope: !734)
!737 = !DILocation(line: 61, column: 20, scope: !734)
!738 = !DILocation(line: 61, column: 25, scope: !734)
!739 = !DILocation(line: 61, column: 37, scope: !740)
!740 = !DILexicalBlockFile(scope: !734, file: !52, discriminator: 1)
!741 = !DILocation(line: 61, column: 42, scope: !734)
!742 = !DILocation(line: 61, column: 28, scope: !734)
!743 = !DILocation(line: 61, column: 61, scope: !734)
!744 = !DILocation(line: 61, column: 7, scope: !705)
!745 = !DILocation(line: 63, column: 15, scope: !746)
!746 = distinct !DILexicalBlock(scope: !734, file: !52, line: 62, column: 5)
!747 = !DILocation(line: 63, column: 13, scope: !746)
!748 = !DILocation(line: 64, column: 20, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !52, line: 64, column: 11)
!750 = !DILocation(line: 64, column: 11, scope: !749)
!751 = !DILocation(line: 64, column: 36, scope: !749)
!752 = !DILocation(line: 64, column: 11, scope: !746)
!753 = !DILocation(line: 66, column: 19, scope: !754)
!754 = distinct !DILexicalBlock(scope: !749, file: !52, line: 65, column: 9)
!755 = !DILocation(line: 66, column: 24, scope: !754)
!756 = !DILocation(line: 66, column: 17, scope: !754)
!757 = !DILocation(line: 70, column: 52, scope: !754)
!758 = !DILocation(line: 70, column: 41, scope: !754)
!759 = !DILocation(line: 72, column: 9, scope: !754)
!760 = !DILocation(line: 73, column: 5, scope: !746)
!761 = !DILocation(line: 84, column: 18, scope: !705)
!762 = !DILocation(line: 84, column: 16, scope: !705)
!763 = !DILocation(line: 90, column: 38, scope: !705)
!764 = !DILocation(line: 90, column: 27, scope: !705)
!765 = !DILocation(line: 92, column: 1, scope: !705)
!766 = distinct !DISubprogram(name: "clone_quoting_options", scope: !59, file: !59, line: 108, type: !767, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!767 = !DISubroutineType(types: !768)
!768 = !{!769, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!770 = !DILocalVariable(name: "o", arg: 1, scope: !766, file: !59, line: 108, type: !769)
!771 = !DILocation(line: 108, column: 48, scope: !766)
!772 = !DILocalVariable(name: "e", scope: !766, file: !59, line: 110, type: !48)
!773 = !DILocation(line: 110, column: 7, scope: !766)
!774 = !DILocation(line: 110, column: 11, scope: !766)
!775 = !DILocalVariable(name: "p", scope: !766, file: !59, line: 111, type: !769)
!776 = !DILocation(line: 111, column: 27, scope: !766)
!777 = !DILocation(line: 111, column: 40, scope: !766)
!778 = !DILocation(line: 111, column: 44, scope: !779)
!779 = !DILexicalBlockFile(scope: !766, file: !59, discriminator: 1)
!780 = !DILocation(line: 111, column: 40, scope: !781)
!781 = !DILexicalBlockFile(scope: !766, file: !59, discriminator: 2)
!782 = !DILocation(line: 111, column: 40, scope: !783)
!783 = !DILexicalBlockFile(scope: !784, file: !59, discriminator: 4)
!784 = !DILexicalBlockFile(scope: !766, file: !59, discriminator: 3)
!785 = !DILocation(line: 111, column: 31, scope: !766)
!786 = !DILocation(line: 113, column: 11, scope: !766)
!787 = !DILocation(line: 113, column: 3, scope: !766)
!788 = !DILocation(line: 113, column: 9, scope: !766)
!789 = !DILocation(line: 114, column: 10, scope: !766)
!790 = !DILocation(line: 114, column: 3, scope: !766)
!791 = distinct !DISubprogram(name: "get_quoting_style", scope: !59, file: !59, line: 119, type: !792, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!792 = !DISubroutineType(types: !793)
!793 = !{!61, !769}
!794 = !DILocalVariable(name: "o", arg: 1, scope: !791, file: !59, line: 119, type: !769)
!795 = !DILocation(line: 119, column: 44, scope: !791)
!796 = !DILocation(line: 121, column: 11, scope: !791)
!797 = !DILocation(line: 121, column: 15, scope: !798)
!798 = !DILexicalBlockFile(scope: !791, file: !59, discriminator: 1)
!799 = !DILocation(line: 121, column: 11, scope: !800)
!800 = !DILexicalBlockFile(scope: !791, file: !59, discriminator: 2)
!801 = !DILocation(line: 121, column: 46, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !59, discriminator: 4)
!803 = !DILexicalBlockFile(scope: !791, file: !59, discriminator: 3)
!804 = !DILocation(line: 121, column: 3, scope: !791)
!805 = distinct !DISubprogram(name: "set_quoting_style", scope: !59, file: !59, line: 127, type: !806, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !769, !61}
!808 = !DILocalVariable(name: "o", arg: 1, scope: !805, file: !59, line: 127, type: !769)
!809 = !DILocation(line: 127, column: 44, scope: !805)
!810 = !DILocalVariable(name: "s", arg: 2, scope: !805, file: !59, line: 127, type: !61)
!811 = !DILocation(line: 127, column: 66, scope: !805)
!812 = !DILocation(line: 129, column: 47, scope: !805)
!813 = !DILocation(line: 129, column: 4, scope: !805)
!814 = !DILocation(line: 129, column: 8, scope: !815)
!815 = !DILexicalBlockFile(scope: !805, file: !59, discriminator: 1)
!816 = !DILocation(line: 129, column: 4, scope: !817)
!817 = !DILexicalBlockFile(scope: !805, file: !59, discriminator: 2)
!818 = !DILocation(line: 129, column: 39, scope: !819)
!819 = !DILexicalBlockFile(scope: !820, file: !59, discriminator: 4)
!820 = !DILexicalBlockFile(scope: !805, file: !59, discriminator: 3)
!821 = !DILocation(line: 129, column: 45, scope: !805)
!822 = !DILocation(line: 130, column: 1, scope: !805)
!823 = distinct !DISubprogram(name: "set_char_quoting", scope: !59, file: !59, line: 138, type: !824, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!824 = !DISubroutineType(types: !825)
!825 = !{!48, !769, !8, !48}
!826 = !DILocalVariable(name: "o", arg: 1, scope: !823, file: !59, line: 138, type: !769)
!827 = !DILocation(line: 138, column: 43, scope: !823)
!828 = !DILocalVariable(name: "c", arg: 2, scope: !823, file: !59, line: 138, type: !8)
!829 = !DILocation(line: 138, column: 51, scope: !823)
!830 = !DILocalVariable(name: "i", arg: 3, scope: !823, file: !59, line: 138, type: !48)
!831 = !DILocation(line: 138, column: 58, scope: !823)
!832 = !DILocalVariable(name: "uc", scope: !823, file: !59, line: 140, type: !532)
!833 = !DILocation(line: 140, column: 17, scope: !823)
!834 = !DILocation(line: 140, column: 22, scope: !823)
!835 = !DILocalVariable(name: "p", scope: !823, file: !59, line: 141, type: !836)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!837 = !DILocation(line: 141, column: 17, scope: !823)
!838 = !DILocation(line: 142, column: 6, scope: !823)
!839 = !DILocation(line: 142, column: 10, scope: !840)
!840 = !DILexicalBlockFile(scope: !823, file: !59, discriminator: 1)
!841 = !DILocation(line: 142, column: 6, scope: !842)
!842 = !DILexicalBlockFile(scope: !823, file: !59, discriminator: 2)
!843 = !DILocation(line: 142, column: 41, scope: !844)
!844 = !DILexicalBlockFile(scope: !845, file: !59, discriminator: 4)
!845 = !DILexicalBlockFile(scope: !823, file: !59, discriminator: 3)
!846 = !DILocation(line: 142, column: 5, scope: !823)
!847 = !DILocation(line: 142, column: 59, scope: !823)
!848 = !DILocation(line: 142, column: 62, scope: !823)
!849 = !DILocation(line: 142, column: 57, scope: !823)
!850 = !DILocalVariable(name: "shift", scope: !823, file: !59, line: 143, type: !48)
!851 = !DILocation(line: 143, column: 7, scope: !823)
!852 = !DILocation(line: 143, column: 15, scope: !823)
!853 = !DILocation(line: 143, column: 18, scope: !823)
!854 = !DILocalVariable(name: "r", scope: !823, file: !59, line: 144, type: !48)
!855 = !DILocation(line: 144, column: 7, scope: !823)
!856 = !DILocation(line: 144, column: 13, scope: !823)
!857 = !DILocation(line: 144, column: 12, scope: !823)
!858 = !DILocation(line: 144, column: 18, scope: !823)
!859 = !DILocation(line: 144, column: 15, scope: !823)
!860 = !DILocation(line: 144, column: 25, scope: !823)
!861 = !DILocation(line: 145, column: 11, scope: !823)
!862 = !DILocation(line: 145, column: 13, scope: !823)
!863 = !DILocation(line: 145, column: 20, scope: !823)
!864 = !DILocation(line: 145, column: 18, scope: !823)
!865 = !DILocation(line: 145, column: 26, scope: !823)
!866 = !DILocation(line: 145, column: 23, scope: !823)
!867 = !DILocation(line: 145, column: 4, scope: !823)
!868 = !DILocation(line: 145, column: 6, scope: !823)
!869 = !DILocation(line: 146, column: 10, scope: !823)
!870 = !DILocation(line: 146, column: 3, scope: !823)
!871 = distinct !DISubprogram(name: "set_quoting_flags", scope: !59, file: !59, line: 154, type: !872, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!872 = !DISubroutineType(types: !873)
!873 = !{!48, !769, !48}
!874 = !DILocalVariable(name: "o", arg: 1, scope: !871, file: !59, line: 154, type: !769)
!875 = !DILocation(line: 154, column: 44, scope: !871)
!876 = !DILocalVariable(name: "i", arg: 2, scope: !871, file: !59, line: 154, type: !48)
!877 = !DILocation(line: 154, column: 51, scope: !871)
!878 = !DILocalVariable(name: "r", scope: !871, file: !59, line: 156, type: !48)
!879 = !DILocation(line: 156, column: 7, scope: !871)
!880 = !DILocation(line: 157, column: 8, scope: !881)
!881 = distinct !DILexicalBlock(scope: !871, file: !59, line: 157, column: 7)
!882 = !DILocation(line: 157, column: 7, scope: !871)
!883 = !DILocation(line: 158, column: 7, scope: !881)
!884 = !DILocation(line: 158, column: 5, scope: !881)
!885 = !DILocation(line: 159, column: 7, scope: !871)
!886 = !DILocation(line: 159, column: 10, scope: !871)
!887 = !DILocation(line: 159, column: 5, scope: !871)
!888 = !DILocation(line: 160, column: 14, scope: !871)
!889 = !DILocation(line: 160, column: 3, scope: !871)
!890 = !DILocation(line: 160, column: 6, scope: !871)
!891 = !DILocation(line: 160, column: 12, scope: !871)
!892 = !DILocation(line: 161, column: 10, scope: !871)
!893 = !DILocation(line: 161, column: 3, scope: !871)
!894 = distinct !DISubprogram(name: "set_custom_quoting", scope: !59, file: !59, line: 165, type: !895, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !769, !6, !6}
!897 = !DILocalVariable(name: "o", arg: 1, scope: !894, file: !59, line: 165, type: !769)
!898 = !DILocation(line: 165, column: 45, scope: !894)
!899 = !DILocalVariable(name: "left_quote", arg: 2, scope: !894, file: !59, line: 166, type: !6)
!900 = !DILocation(line: 166, column: 33, scope: !894)
!901 = !DILocalVariable(name: "right_quote", arg: 3, scope: !894, file: !59, line: 166, type: !6)
!902 = !DILocation(line: 166, column: 57, scope: !894)
!903 = !DILocation(line: 168, column: 8, scope: !904)
!904 = distinct !DILexicalBlock(scope: !894, file: !59, line: 168, column: 7)
!905 = !DILocation(line: 168, column: 7, scope: !894)
!906 = !DILocation(line: 169, column: 7, scope: !904)
!907 = !DILocation(line: 169, column: 5, scope: !904)
!908 = !DILocation(line: 170, column: 3, scope: !894)
!909 = !DILocation(line: 170, column: 6, scope: !894)
!910 = !DILocation(line: 170, column: 12, scope: !894)
!911 = !DILocation(line: 171, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !894, file: !59, line: 171, column: 7)
!913 = !DILocation(line: 171, column: 19, scope: !912)
!914 = !DILocation(line: 171, column: 23, scope: !915)
!915 = !DILexicalBlockFile(scope: !912, file: !59, discriminator: 1)
!916 = !DILocation(line: 171, column: 7, scope: !894)
!917 = !DILocation(line: 172, column: 5, scope: !912)
!918 = !DILocation(line: 173, column: 19, scope: !894)
!919 = !DILocation(line: 173, column: 3, scope: !894)
!920 = !DILocation(line: 173, column: 6, scope: !894)
!921 = !DILocation(line: 173, column: 17, scope: !894)
!922 = !DILocation(line: 174, column: 20, scope: !894)
!923 = !DILocation(line: 174, column: 3, scope: !894)
!924 = !DILocation(line: 174, column: 6, scope: !894)
!925 = !DILocation(line: 174, column: 18, scope: !894)
!926 = !DILocation(line: 175, column: 1, scope: !894)
!927 = distinct !DISubprogram(name: "quotearg_buffer", scope: !59, file: !59, line: 673, type: !928, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!928 = !DISubroutineType(types: !929)
!929 = !{!94, !13, !94, !6, !94, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64, align: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!932 = !DILocalVariable(name: "buffer", arg: 1, scope: !927, file: !59, line: 673, type: !13)
!933 = !DILocation(line: 673, column: 24, scope: !927)
!934 = !DILocalVariable(name: "buffersize", arg: 2, scope: !927, file: !59, line: 673, type: !94)
!935 = !DILocation(line: 673, column: 39, scope: !927)
!936 = !DILocalVariable(name: "arg", arg: 3, scope: !927, file: !59, line: 674, type: !6)
!937 = !DILocation(line: 674, column: 30, scope: !927)
!938 = !DILocalVariable(name: "argsize", arg: 4, scope: !927, file: !59, line: 674, type: !94)
!939 = !DILocation(line: 674, column: 42, scope: !927)
!940 = !DILocalVariable(name: "o", arg: 5, scope: !927, file: !59, line: 675, type: !930)
!941 = !DILocation(line: 675, column: 48, scope: !927)
!942 = !DILocalVariable(name: "p", scope: !927, file: !59, line: 677, type: !930)
!943 = !DILocation(line: 677, column: 33, scope: !927)
!944 = !DILocation(line: 677, column: 37, scope: !927)
!945 = !DILocation(line: 677, column: 41, scope: !946)
!946 = !DILexicalBlockFile(scope: !927, file: !59, discriminator: 1)
!947 = !DILocation(line: 677, column: 37, scope: !948)
!948 = !DILexicalBlockFile(scope: !927, file: !59, discriminator: 2)
!949 = !DILocation(line: 677, column: 33, scope: !950)
!950 = !DILexicalBlockFile(scope: !951, file: !59, discriminator: 4)
!951 = !DILexicalBlockFile(scope: !927, file: !59, discriminator: 3)
!952 = !DILocalVariable(name: "e", scope: !927, file: !59, line: 678, type: !48)
!953 = !DILocation(line: 678, column: 7, scope: !927)
!954 = !DILocation(line: 678, column: 11, scope: !927)
!955 = !DILocalVariable(name: "r", scope: !927, file: !59, line: 679, type: !94)
!956 = !DILocation(line: 679, column: 10, scope: !927)
!957 = !DILocation(line: 679, column: 40, scope: !927)
!958 = !DILocation(line: 679, column: 48, scope: !927)
!959 = !DILocation(line: 679, column: 60, scope: !927)
!960 = !DILocation(line: 679, column: 65, scope: !927)
!961 = !DILocation(line: 680, column: 40, scope: !927)
!962 = !DILocation(line: 680, column: 43, scope: !927)
!963 = !DILocation(line: 680, column: 50, scope: !927)
!964 = !DILocation(line: 680, column: 53, scope: !927)
!965 = !DILocation(line: 680, column: 60, scope: !927)
!966 = !DILocation(line: 680, column: 63, scope: !927)
!967 = !DILocation(line: 681, column: 40, scope: !927)
!968 = !DILocation(line: 681, column: 43, scope: !927)
!969 = !DILocation(line: 681, column: 55, scope: !927)
!970 = !DILocation(line: 681, column: 58, scope: !927)
!971 = !DILocation(line: 679, column: 14, scope: !927)
!972 = !DILocation(line: 682, column: 11, scope: !927)
!973 = !DILocation(line: 682, column: 3, scope: !927)
!974 = !DILocation(line: 682, column: 9, scope: !927)
!975 = !DILocation(line: 683, column: 10, scope: !927)
!976 = !DILocation(line: 683, column: 3, scope: !927)
!977 = distinct !DISubprogram(name: "quotearg_alloc", scope: !59, file: !59, line: 688, type: !978, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!978 = !DISubroutineType(types: !979)
!979 = !{!13, !6, !94, !930}
!980 = !DILocalVariable(name: "arg", arg: 1, scope: !977, file: !59, line: 688, type: !6)
!981 = !DILocation(line: 688, column: 29, scope: !977)
!982 = !DILocalVariable(name: "argsize", arg: 2, scope: !977, file: !59, line: 688, type: !94)
!983 = !DILocation(line: 688, column: 41, scope: !977)
!984 = !DILocalVariable(name: "o", arg: 3, scope: !977, file: !59, line: 689, type: !930)
!985 = !DILocation(line: 689, column: 47, scope: !977)
!986 = !DILocation(line: 691, column: 30, scope: !977)
!987 = !DILocation(line: 691, column: 35, scope: !977)
!988 = !DILocation(line: 691, column: 50, scope: !977)
!989 = !DILocation(line: 691, column: 10, scope: !977)
!990 = !DILocation(line: 691, column: 3, scope: !977)
!991 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !59, file: !59, line: 701, type: !992, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!992 = !DISubroutineType(types: !993)
!993 = !{!13, !6, !94, !516, !930}
!994 = !DILocalVariable(name: "arg", arg: 1, scope: !991, file: !59, line: 701, type: !6)
!995 = !DILocation(line: 701, column: 33, scope: !991)
!996 = !DILocalVariable(name: "argsize", arg: 2, scope: !991, file: !59, line: 701, type: !94)
!997 = !DILocation(line: 701, column: 45, scope: !991)
!998 = !DILocalVariable(name: "size", arg: 3, scope: !991, file: !59, line: 701, type: !516)
!999 = !DILocation(line: 701, column: 62, scope: !991)
!1000 = !DILocalVariable(name: "o", arg: 4, scope: !991, file: !59, line: 702, type: !930)
!1001 = !DILocation(line: 702, column: 51, scope: !991)
!1002 = !DILocalVariable(name: "p", scope: !991, file: !59, line: 704, type: !930)
!1003 = !DILocation(line: 704, column: 33, scope: !991)
!1004 = !DILocation(line: 704, column: 37, scope: !991)
!1005 = !DILocation(line: 704, column: 41, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !991, file: !59, discriminator: 1)
!1007 = !DILocation(line: 704, column: 37, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !991, file: !59, discriminator: 2)
!1009 = !DILocation(line: 704, column: 33, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1011, file: !59, discriminator: 4)
!1011 = !DILexicalBlockFile(scope: !991, file: !59, discriminator: 3)
!1012 = !DILocalVariable(name: "e", scope: !991, file: !59, line: 705, type: !48)
!1013 = !DILocation(line: 705, column: 7, scope: !991)
!1014 = !DILocation(line: 705, column: 11, scope: !991)
!1015 = !DILocalVariable(name: "flags", scope: !991, file: !59, line: 707, type: !48)
!1016 = !DILocation(line: 707, column: 7, scope: !991)
!1017 = !DILocation(line: 707, column: 15, scope: !991)
!1018 = !DILocation(line: 707, column: 18, scope: !991)
!1019 = !DILocation(line: 707, column: 27, scope: !991)
!1020 = !DILocation(line: 707, column: 24, scope: !991)
!1021 = !DILocalVariable(name: "bufsize", scope: !991, file: !59, line: 708, type: !94)
!1022 = !DILocation(line: 708, column: 10, scope: !991)
!1023 = !DILocation(line: 708, column: 52, scope: !991)
!1024 = !DILocation(line: 708, column: 57, scope: !991)
!1025 = !DILocation(line: 708, column: 66, scope: !991)
!1026 = !DILocation(line: 708, column: 69, scope: !991)
!1027 = !DILocation(line: 709, column: 46, scope: !991)
!1028 = !DILocation(line: 709, column: 53, scope: !991)
!1029 = !DILocation(line: 709, column: 56, scope: !991)
!1030 = !DILocation(line: 710, column: 46, scope: !991)
!1031 = !DILocation(line: 710, column: 49, scope: !991)
!1032 = !DILocation(line: 711, column: 46, scope: !991)
!1033 = !DILocation(line: 711, column: 49, scope: !991)
!1034 = !DILocation(line: 708, column: 20, scope: !991)
!1035 = !DILocation(line: 711, column: 62, scope: !991)
!1036 = !DILocalVariable(name: "buf", scope: !991, file: !59, line: 712, type: !13)
!1037 = !DILocation(line: 712, column: 9, scope: !991)
!1038 = !DILocation(line: 712, column: 27, scope: !991)
!1039 = !DILocation(line: 712, column: 15, scope: !991)
!1040 = !DILocation(line: 713, column: 29, scope: !991)
!1041 = !DILocation(line: 713, column: 34, scope: !991)
!1042 = !DILocation(line: 713, column: 43, scope: !991)
!1043 = !DILocation(line: 713, column: 48, scope: !991)
!1044 = !DILocation(line: 713, column: 57, scope: !991)
!1045 = !DILocation(line: 713, column: 60, scope: !991)
!1046 = !DILocation(line: 713, column: 67, scope: !991)
!1047 = !DILocation(line: 714, column: 29, scope: !991)
!1048 = !DILocation(line: 714, column: 32, scope: !991)
!1049 = !DILocation(line: 715, column: 29, scope: !991)
!1050 = !DILocation(line: 715, column: 32, scope: !991)
!1051 = !DILocation(line: 715, column: 44, scope: !991)
!1052 = !DILocation(line: 715, column: 47, scope: !991)
!1053 = !DILocation(line: 713, column: 3, scope: !991)
!1054 = !DILocation(line: 716, column: 11, scope: !991)
!1055 = !DILocation(line: 716, column: 3, scope: !991)
!1056 = !DILocation(line: 716, column: 9, scope: !991)
!1057 = !DILocation(line: 717, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !991, file: !59, line: 717, column: 7)
!1059 = !DILocation(line: 717, column: 7, scope: !991)
!1060 = !DILocation(line: 718, column: 13, scope: !1058)
!1061 = !DILocation(line: 718, column: 21, scope: !1058)
!1062 = !DILocation(line: 718, column: 6, scope: !1058)
!1063 = !DILocation(line: 718, column: 11, scope: !1058)
!1064 = !DILocation(line: 718, column: 5, scope: !1058)
!1065 = !DILocation(line: 719, column: 10, scope: !991)
!1066 = !DILocation(line: 719, column: 3, scope: !991)
!1067 = distinct !DISubprogram(name: "quotearg_free", scope: !59, file: !59, line: 737, type: !666, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1068 = !DILocalVariable(name: "sv", scope: !1067, file: !59, line: 739, type: !126)
!1069 = !DILocation(line: 739, column: 19, scope: !1067)
!1070 = !DILocation(line: 739, column: 24, scope: !1067)
!1071 = !DILocalVariable(name: "i", scope: !1067, file: !59, line: 740, type: !114)
!1072 = !DILocation(line: 740, column: 16, scope: !1067)
!1073 = !DILocation(line: 741, column: 10, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1067, file: !59, line: 741, column: 3)
!1075 = !DILocation(line: 741, column: 8, scope: !1074)
!1076 = !DILocation(line: 741, column: 15, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1078, file: !59, discriminator: 2)
!1078 = !DILexicalBlockFile(scope: !1079, file: !59, discriminator: 1)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !59, line: 741, column: 3)
!1080 = !DILocation(line: 741, column: 19, scope: !1079)
!1081 = !DILocation(line: 741, column: 17, scope: !1079)
!1082 = !DILocation(line: 741, column: 3, scope: !1074)
!1083 = !DILocation(line: 742, column: 14, scope: !1079)
!1084 = !DILocation(line: 742, column: 11, scope: !1079)
!1085 = !DILocation(line: 742, column: 17, scope: !1079)
!1086 = !DILocation(line: 742, column: 5, scope: !1079)
!1087 = !DILocation(line: 741, column: 28, scope: !1079)
!1088 = !DILocation(line: 741, column: 3, scope: !1079)
!1089 = !DILocation(line: 743, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1067, file: !59, line: 743, column: 7)
!1091 = !DILocation(line: 743, column: 13, scope: !1090)
!1092 = !DILocation(line: 743, column: 17, scope: !1090)
!1093 = !DILocation(line: 743, column: 7, scope: !1067)
!1094 = !DILocation(line: 745, column: 13, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !59, line: 744, column: 5)
!1096 = !DILocation(line: 745, column: 19, scope: !1095)
!1097 = !DILocation(line: 745, column: 7, scope: !1095)
!1098 = !DILocation(line: 746, column: 21, scope: !1095)
!1099 = !DILocation(line: 747, column: 20, scope: !1095)
!1100 = !DILocation(line: 748, column: 5, scope: !1095)
!1101 = !DILocation(line: 749, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1067, file: !59, line: 749, column: 7)
!1103 = !DILocation(line: 749, column: 10, scope: !1102)
!1104 = !DILocation(line: 749, column: 7, scope: !1067)
!1105 = !DILocation(line: 751, column: 13, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !59, line: 750, column: 5)
!1107 = !DILocation(line: 751, column: 7, scope: !1106)
!1108 = !DILocation(line: 752, column: 15, scope: !1106)
!1109 = !DILocation(line: 753, column: 5, scope: !1106)
!1110 = !DILocation(line: 754, column: 10, scope: !1067)
!1111 = !DILocation(line: 755, column: 1, scope: !1067)
!1112 = distinct !DISubprogram(name: "quotearg_n", scope: !59, file: !59, line: 826, type: !1113, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!13, !48, !6}
!1115 = !DILocalVariable(name: "n", arg: 1, scope: !1112, file: !59, line: 826, type: !48)
!1116 = !DILocation(line: 826, column: 17, scope: !1112)
!1117 = !DILocalVariable(name: "arg", arg: 2, scope: !1112, file: !59, line: 826, type: !6)
!1118 = !DILocation(line: 826, column: 32, scope: !1112)
!1119 = !DILocation(line: 828, column: 30, scope: !1112)
!1120 = !DILocation(line: 828, column: 33, scope: !1112)
!1121 = !DILocation(line: 828, column: 10, scope: !1112)
!1122 = !DILocation(line: 828, column: 3, scope: !1112)
!1123 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !59, file: !59, line: 832, type: !1124, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!13, !48, !6, !94}
!1126 = !DILocalVariable(name: "n", arg: 1, scope: !1123, file: !59, line: 832, type: !48)
!1127 = !DILocation(line: 832, column: 21, scope: !1123)
!1128 = !DILocalVariable(name: "arg", arg: 2, scope: !1123, file: !59, line: 832, type: !6)
!1129 = !DILocation(line: 832, column: 36, scope: !1123)
!1130 = !DILocalVariable(name: "argsize", arg: 3, scope: !1123, file: !59, line: 832, type: !94)
!1131 = !DILocation(line: 832, column: 48, scope: !1123)
!1132 = !DILocation(line: 834, column: 30, scope: !1123)
!1133 = !DILocation(line: 834, column: 33, scope: !1123)
!1134 = !DILocation(line: 834, column: 38, scope: !1123)
!1135 = !DILocation(line: 834, column: 10, scope: !1123)
!1136 = !DILocation(line: 834, column: 3, scope: !1123)
!1137 = distinct !DISubprogram(name: "quotearg", scope: !59, file: !59, line: 838, type: !1138, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!13, !6}
!1140 = !DILocalVariable(name: "arg", arg: 1, scope: !1137, file: !59, line: 838, type: !6)
!1141 = !DILocation(line: 838, column: 23, scope: !1137)
!1142 = !DILocation(line: 840, column: 25, scope: !1137)
!1143 = !DILocation(line: 840, column: 10, scope: !1137)
!1144 = !DILocation(line: 840, column: 3, scope: !1137)
!1145 = distinct !DISubprogram(name: "quotearg_mem", scope: !59, file: !59, line: 844, type: !1146, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!13, !6, !94}
!1148 = !DILocalVariable(name: "arg", arg: 1, scope: !1145, file: !59, line: 844, type: !6)
!1149 = !DILocation(line: 844, column: 27, scope: !1145)
!1150 = !DILocalVariable(name: "argsize", arg: 2, scope: !1145, file: !59, line: 844, type: !94)
!1151 = !DILocation(line: 844, column: 39, scope: !1145)
!1152 = !DILocation(line: 846, column: 29, scope: !1145)
!1153 = !DILocation(line: 846, column: 34, scope: !1145)
!1154 = !DILocation(line: 846, column: 10, scope: !1145)
!1155 = !DILocation(line: 846, column: 3, scope: !1145)
!1156 = distinct !DISubprogram(name: "quotearg_n_style", scope: !59, file: !59, line: 850, type: !1157, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!13, !48, !61, !6}
!1159 = !DILocalVariable(name: "n", arg: 1, scope: !1156, file: !59, line: 850, type: !48)
!1160 = !DILocation(line: 850, column: 23, scope: !1156)
!1161 = !DILocalVariable(name: "s", arg: 2, scope: !1156, file: !59, line: 850, type: !61)
!1162 = !DILocation(line: 850, column: 45, scope: !1156)
!1163 = !DILocalVariable(name: "arg", arg: 3, scope: !1156, file: !59, line: 850, type: !6)
!1164 = !DILocation(line: 850, column: 60, scope: !1156)
!1165 = !DILocalVariable(name: "o", scope: !1156, file: !59, line: 852, type: !931)
!1166 = !DILocation(line: 852, column: 32, scope: !1156)
!1167 = !DILocation(line: 852, column: 64, scope: !1156)
!1168 = !DILocation(line: 852, column: 36, scope: !1156)
!1169 = !DILocation(line: 853, column: 30, scope: !1156)
!1170 = !DILocation(line: 853, column: 33, scope: !1156)
!1171 = !DILocation(line: 853, column: 10, scope: !1156)
!1172 = !DILocation(line: 853, column: 3, scope: !1156)
!1173 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !59, file: !59, line: 857, type: !1174, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!13, !48, !61, !6, !94}
!1176 = !DILocalVariable(name: "n", arg: 1, scope: !1173, file: !59, line: 857, type: !48)
!1177 = !DILocation(line: 857, column: 27, scope: !1173)
!1178 = !DILocalVariable(name: "s", arg: 2, scope: !1173, file: !59, line: 857, type: !61)
!1179 = !DILocation(line: 857, column: 49, scope: !1173)
!1180 = !DILocalVariable(name: "arg", arg: 3, scope: !1173, file: !59, line: 858, type: !6)
!1181 = !DILocation(line: 858, column: 35, scope: !1173)
!1182 = !DILocalVariable(name: "argsize", arg: 4, scope: !1173, file: !59, line: 858, type: !94)
!1183 = !DILocation(line: 858, column: 47, scope: !1173)
!1184 = !DILocalVariable(name: "o", scope: !1173, file: !59, line: 860, type: !931)
!1185 = !DILocation(line: 860, column: 32, scope: !1173)
!1186 = !DILocation(line: 860, column: 64, scope: !1173)
!1187 = !DILocation(line: 860, column: 36, scope: !1173)
!1188 = !DILocation(line: 861, column: 30, scope: !1173)
!1189 = !DILocation(line: 861, column: 33, scope: !1173)
!1190 = !DILocation(line: 861, column: 38, scope: !1173)
!1191 = !DILocation(line: 861, column: 10, scope: !1173)
!1192 = !DILocation(line: 861, column: 3, scope: !1173)
!1193 = distinct !DISubprogram(name: "quotearg_style", scope: !59, file: !59, line: 865, type: !1194, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!13, !61, !6}
!1196 = !DILocalVariable(name: "s", arg: 1, scope: !1193, file: !59, line: 865, type: !61)
!1197 = !DILocation(line: 865, column: 36, scope: !1193)
!1198 = !DILocalVariable(name: "arg", arg: 2, scope: !1193, file: !59, line: 865, type: !6)
!1199 = !DILocation(line: 865, column: 51, scope: !1193)
!1200 = !DILocation(line: 867, column: 31, scope: !1193)
!1201 = !DILocation(line: 867, column: 34, scope: !1193)
!1202 = !DILocation(line: 867, column: 10, scope: !1193)
!1203 = !DILocation(line: 867, column: 3, scope: !1193)
!1204 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !59, file: !59, line: 871, type: !1205, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!13, !61, !6, !94}
!1207 = !DILocalVariable(name: "s", arg: 1, scope: !1204, file: !59, line: 871, type: !61)
!1208 = !DILocation(line: 871, column: 40, scope: !1204)
!1209 = !DILocalVariable(name: "arg", arg: 2, scope: !1204, file: !59, line: 871, type: !6)
!1210 = !DILocation(line: 871, column: 55, scope: !1204)
!1211 = !DILocalVariable(name: "argsize", arg: 3, scope: !1204, file: !59, line: 871, type: !94)
!1212 = !DILocation(line: 871, column: 67, scope: !1204)
!1213 = !DILocation(line: 873, column: 35, scope: !1204)
!1214 = !DILocation(line: 873, column: 38, scope: !1204)
!1215 = !DILocation(line: 873, column: 43, scope: !1204)
!1216 = !DILocation(line: 873, column: 10, scope: !1204)
!1217 = !DILocation(line: 873, column: 3, scope: !1204)
!1218 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !59, file: !59, line: 877, type: !1219, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!13, !6, !94, !8}
!1221 = !DILocalVariable(name: "arg", arg: 1, scope: !1218, file: !59, line: 877, type: !6)
!1222 = !DILocation(line: 877, column: 32, scope: !1218)
!1223 = !DILocalVariable(name: "argsize", arg: 2, scope: !1218, file: !59, line: 877, type: !94)
!1224 = !DILocation(line: 877, column: 44, scope: !1218)
!1225 = !DILocalVariable(name: "ch", arg: 3, scope: !1218, file: !59, line: 877, type: !8)
!1226 = !DILocation(line: 877, column: 58, scope: !1218)
!1227 = !DILocalVariable(name: "options", scope: !1218, file: !59, line: 879, type: !108)
!1228 = !DILocation(line: 879, column: 26, scope: !1218)
!1229 = !DILocation(line: 880, column: 13, scope: !1218)
!1230 = !DILocation(line: 881, column: 31, scope: !1218)
!1231 = !DILocation(line: 881, column: 3, scope: !1218)
!1232 = !DILocation(line: 882, column: 33, scope: !1218)
!1233 = !DILocation(line: 882, column: 38, scope: !1218)
!1234 = !DILocation(line: 882, column: 10, scope: !1218)
!1235 = !DILocation(line: 882, column: 3, scope: !1218)
!1236 = distinct !DISubprogram(name: "quotearg_char", scope: !59, file: !59, line: 886, type: !1237, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!13, !6, !8}
!1239 = !DILocalVariable(name: "arg", arg: 1, scope: !1236, file: !59, line: 886, type: !6)
!1240 = !DILocation(line: 886, column: 28, scope: !1236)
!1241 = !DILocalVariable(name: "ch", arg: 2, scope: !1236, file: !59, line: 886, type: !8)
!1242 = !DILocation(line: 886, column: 38, scope: !1236)
!1243 = !DILocation(line: 888, column: 29, scope: !1236)
!1244 = !DILocation(line: 888, column: 44, scope: !1236)
!1245 = !DILocation(line: 888, column: 10, scope: !1236)
!1246 = !DILocation(line: 888, column: 3, scope: !1236)
!1247 = distinct !DISubprogram(name: "quotearg_colon", scope: !59, file: !59, line: 892, type: !1138, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1248 = !DILocalVariable(name: "arg", arg: 1, scope: !1247, file: !59, line: 892, type: !6)
!1249 = !DILocation(line: 892, column: 29, scope: !1247)
!1250 = !DILocation(line: 894, column: 25, scope: !1247)
!1251 = !DILocation(line: 894, column: 10, scope: !1247)
!1252 = !DILocation(line: 894, column: 3, scope: !1247)
!1253 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !59, file: !59, line: 898, type: !1146, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1254 = !DILocalVariable(name: "arg", arg: 1, scope: !1253, file: !59, line: 898, type: !6)
!1255 = !DILocation(line: 898, column: 33, scope: !1253)
!1256 = !DILocalVariable(name: "argsize", arg: 2, scope: !1253, file: !59, line: 898, type: !94)
!1257 = !DILocation(line: 898, column: 45, scope: !1253)
!1258 = !DILocation(line: 900, column: 29, scope: !1253)
!1259 = !DILocation(line: 900, column: 34, scope: !1253)
!1260 = !DILocation(line: 900, column: 10, scope: !1253)
!1261 = !DILocation(line: 900, column: 3, scope: !1253)
!1262 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !59, file: !59, line: 904, type: !1263, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!13, !48, !6, !6, !6}
!1265 = !DILocalVariable(name: "n", arg: 1, scope: !1262, file: !59, line: 904, type: !48)
!1266 = !DILocation(line: 904, column: 24, scope: !1262)
!1267 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1262, file: !59, line: 904, type: !6)
!1268 = !DILocation(line: 904, column: 39, scope: !1262)
!1269 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1262, file: !59, line: 905, type: !6)
!1270 = !DILocation(line: 905, column: 32, scope: !1262)
!1271 = !DILocalVariable(name: "arg", arg: 4, scope: !1262, file: !59, line: 905, type: !6)
!1272 = !DILocation(line: 905, column: 57, scope: !1262)
!1273 = !DILocation(line: 907, column: 33, scope: !1262)
!1274 = !DILocation(line: 907, column: 36, scope: !1262)
!1275 = !DILocation(line: 907, column: 48, scope: !1262)
!1276 = !DILocation(line: 907, column: 61, scope: !1262)
!1277 = !DILocation(line: 907, column: 10, scope: !1262)
!1278 = !DILocation(line: 907, column: 3, scope: !1262)
!1279 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !59, file: !59, line: 912, type: !1280, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!13, !48, !6, !6, !6, !94}
!1282 = !DILocalVariable(name: "n", arg: 1, scope: !1279, file: !59, line: 912, type: !48)
!1283 = !DILocation(line: 912, column: 28, scope: !1279)
!1284 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1279, file: !59, line: 912, type: !6)
!1285 = !DILocation(line: 912, column: 43, scope: !1279)
!1286 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1279, file: !59, line: 913, type: !6)
!1287 = !DILocation(line: 913, column: 36, scope: !1279)
!1288 = !DILocalVariable(name: "arg", arg: 4, scope: !1279, file: !59, line: 914, type: !6)
!1289 = !DILocation(line: 914, column: 36, scope: !1279)
!1290 = !DILocalVariable(name: "argsize", arg: 5, scope: !1279, file: !59, line: 914, type: !94)
!1291 = !DILocation(line: 914, column: 48, scope: !1279)
!1292 = !DILocalVariable(name: "o", scope: !1279, file: !59, line: 916, type: !108)
!1293 = !DILocation(line: 916, column: 26, scope: !1279)
!1294 = !DILocation(line: 916, column: 30, scope: !1279)
!1295 = !DILocation(line: 917, column: 27, scope: !1279)
!1296 = !DILocation(line: 917, column: 39, scope: !1279)
!1297 = !DILocation(line: 917, column: 3, scope: !1279)
!1298 = !DILocation(line: 918, column: 30, scope: !1279)
!1299 = !DILocation(line: 918, column: 33, scope: !1279)
!1300 = !DILocation(line: 918, column: 38, scope: !1279)
!1301 = !DILocation(line: 918, column: 10, scope: !1279)
!1302 = !DILocation(line: 918, column: 3, scope: !1279)
!1303 = distinct !DISubprogram(name: "quotearg_custom", scope: !59, file: !59, line: 922, type: !1304, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!13, !6, !6, !6}
!1306 = !DILocalVariable(name: "left_quote", arg: 1, scope: !1303, file: !59, line: 922, type: !6)
!1307 = !DILocation(line: 922, column: 30, scope: !1303)
!1308 = !DILocalVariable(name: "right_quote", arg: 2, scope: !1303, file: !59, line: 922, type: !6)
!1309 = !DILocation(line: 922, column: 54, scope: !1303)
!1310 = !DILocalVariable(name: "arg", arg: 3, scope: !1303, file: !59, line: 923, type: !6)
!1311 = !DILocation(line: 923, column: 30, scope: !1303)
!1312 = !DILocation(line: 925, column: 32, scope: !1303)
!1313 = !DILocation(line: 925, column: 44, scope: !1303)
!1314 = !DILocation(line: 925, column: 57, scope: !1303)
!1315 = !DILocation(line: 925, column: 10, scope: !1303)
!1316 = !DILocation(line: 925, column: 3, scope: !1303)
!1317 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !59, file: !59, line: 929, type: !1318, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!13, !6, !6, !6, !94}
!1320 = !DILocalVariable(name: "left_quote", arg: 1, scope: !1317, file: !59, line: 929, type: !6)
!1321 = !DILocation(line: 929, column: 34, scope: !1317)
!1322 = !DILocalVariable(name: "right_quote", arg: 2, scope: !1317, file: !59, line: 929, type: !6)
!1323 = !DILocation(line: 929, column: 58, scope: !1317)
!1324 = !DILocalVariable(name: "arg", arg: 3, scope: !1317, file: !59, line: 930, type: !6)
!1325 = !DILocation(line: 930, column: 34, scope: !1317)
!1326 = !DILocalVariable(name: "argsize", arg: 4, scope: !1317, file: !59, line: 930, type: !94)
!1327 = !DILocation(line: 930, column: 46, scope: !1317)
!1328 = !DILocation(line: 932, column: 36, scope: !1317)
!1329 = !DILocation(line: 932, column: 48, scope: !1317)
!1330 = !DILocation(line: 932, column: 61, scope: !1317)
!1331 = !DILocation(line: 933, column: 33, scope: !1317)
!1332 = !DILocation(line: 932, column: 10, scope: !1317)
!1333 = !DILocation(line: 932, column: 3, scope: !1317)
!1334 = distinct !DISubprogram(name: "quote_n_mem", scope: !59, file: !59, line: 947, type: !1335, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!6, !48, !6, !94}
!1337 = !DILocalVariable(name: "n", arg: 1, scope: !1334, file: !59, line: 947, type: !48)
!1338 = !DILocation(line: 947, column: 18, scope: !1334)
!1339 = !DILocalVariable(name: "arg", arg: 2, scope: !1334, file: !59, line: 947, type: !6)
!1340 = !DILocation(line: 947, column: 33, scope: !1334)
!1341 = !DILocalVariable(name: "argsize", arg: 3, scope: !1334, file: !59, line: 947, type: !94)
!1342 = !DILocation(line: 947, column: 45, scope: !1334)
!1343 = !DILocation(line: 949, column: 30, scope: !1334)
!1344 = !DILocation(line: 949, column: 33, scope: !1334)
!1345 = !DILocation(line: 949, column: 38, scope: !1334)
!1346 = !DILocation(line: 949, column: 10, scope: !1334)
!1347 = !DILocation(line: 949, column: 3, scope: !1334)
!1348 = distinct !DISubprogram(name: "quote_mem", scope: !59, file: !59, line: 953, type: !1349, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!6, !6, !94}
!1351 = !DILocalVariable(name: "arg", arg: 1, scope: !1348, file: !59, line: 953, type: !6)
!1352 = !DILocation(line: 953, column: 24, scope: !1348)
!1353 = !DILocalVariable(name: "argsize", arg: 2, scope: !1348, file: !59, line: 953, type: !94)
!1354 = !DILocation(line: 953, column: 36, scope: !1348)
!1355 = !DILocation(line: 955, column: 26, scope: !1348)
!1356 = !DILocation(line: 955, column: 31, scope: !1348)
!1357 = !DILocation(line: 955, column: 10, scope: !1348)
!1358 = !DILocation(line: 955, column: 3, scope: !1348)
!1359 = distinct !DISubprogram(name: "quote_n", scope: !59, file: !59, line: 959, type: !1360, scopeLine: 960, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!6, !48, !6}
!1362 = !DILocalVariable(name: "n", arg: 1, scope: !1359, file: !59, line: 959, type: !48)
!1363 = !DILocation(line: 959, column: 14, scope: !1359)
!1364 = !DILocalVariable(name: "arg", arg: 2, scope: !1359, file: !59, line: 959, type: !6)
!1365 = !DILocation(line: 959, column: 29, scope: !1359)
!1366 = !DILocation(line: 961, column: 23, scope: !1359)
!1367 = !DILocation(line: 961, column: 26, scope: !1359)
!1368 = !DILocation(line: 961, column: 10, scope: !1359)
!1369 = !DILocation(line: 961, column: 3, scope: !1359)
!1370 = distinct !DISubprogram(name: "quote", scope: !59, file: !59, line: 965, type: !1371, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!6, !6}
!1373 = !DILocalVariable(name: "arg", arg: 1, scope: !1370, file: !59, line: 965, type: !6)
!1374 = !DILocation(line: 965, column: 20, scope: !1370)
!1375 = !DILocation(line: 967, column: 22, scope: !1370)
!1376 = !DILocation(line: 967, column: 10, scope: !1370)
!1377 = !DILocation(line: 967, column: 3, scope: !1370)
!1378 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !59, file: !59, line: 242, type: !1379, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !58, retainedNodes: !11)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!94, !13, !94, !6, !94, !61, !48, !1381, !6, !6}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64, align: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!1383 = !DILocalVariable(name: "buffer", arg: 1, scope: !1378, file: !59, line: 242, type: !13)
!1384 = !DILocation(line: 242, column: 33, scope: !1378)
!1385 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1378, file: !59, line: 242, type: !94)
!1386 = !DILocation(line: 242, column: 48, scope: !1378)
!1387 = !DILocalVariable(name: "arg", arg: 3, scope: !1378, file: !59, line: 243, type: !6)
!1388 = !DILocation(line: 243, column: 39, scope: !1378)
!1389 = !DILocalVariable(name: "argsize", arg: 4, scope: !1378, file: !59, line: 243, type: !94)
!1390 = !DILocation(line: 243, column: 51, scope: !1378)
!1391 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1378, file: !59, line: 244, type: !61)
!1392 = !DILocation(line: 244, column: 46, scope: !1378)
!1393 = !DILocalVariable(name: "flags", arg: 6, scope: !1378, file: !59, line: 244, type: !48)
!1394 = !DILocation(line: 244, column: 65, scope: !1378)
!1395 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1378, file: !59, line: 245, type: !1381)
!1396 = !DILocation(line: 245, column: 47, scope: !1378)
!1397 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1378, file: !59, line: 246, type: !6)
!1398 = !DILocation(line: 246, column: 39, scope: !1378)
!1399 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1378, file: !59, line: 247, type: !6)
!1400 = !DILocation(line: 247, column: 39, scope: !1378)
!1401 = !DILocalVariable(name: "i", scope: !1378, file: !59, line: 249, type: !94)
!1402 = !DILocation(line: 249, column: 10, scope: !1378)
!1403 = !DILocalVariable(name: "len", scope: !1378, file: !59, line: 250, type: !94)
!1404 = !DILocation(line: 250, column: 10, scope: !1378)
!1405 = !DILocalVariable(name: "quote_string", scope: !1378, file: !59, line: 251, type: !6)
!1406 = !DILocation(line: 251, column: 15, scope: !1378)
!1407 = !DILocalVariable(name: "quote_string_len", scope: !1378, file: !59, line: 252, type: !94)
!1408 = !DILocation(line: 252, column: 10, scope: !1378)
!1409 = !DILocalVariable(name: "backslash_escapes", scope: !1378, file: !59, line: 253, type: !39)
!1410 = !DILocation(line: 253, column: 8, scope: !1378)
!1411 = !DILocalVariable(name: "unibyte_locale", scope: !1378, file: !59, line: 254, type: !39)
!1412 = !DILocation(line: 254, column: 8, scope: !1378)
!1413 = !DILocation(line: 254, column: 25, scope: !1378)
!1414 = !DILocation(line: 254, column: 36, scope: !1378)
!1415 = !DILocalVariable(name: "elide_outer_quotes", scope: !1378, file: !59, line: 255, type: !39)
!1416 = !DILocation(line: 255, column: 8, scope: !1378)
!1417 = !DILocation(line: 255, column: 30, scope: !1378)
!1418 = !DILocation(line: 255, column: 36, scope: !1378)
!1419 = !DILocation(line: 255, column: 61, scope: !1378)
!1420 = !DILocation(line: 266, column: 11, scope: !1378)
!1421 = !DILocation(line: 266, column: 3, scope: !1378)
!1422 = !DILocation(line: 269, column: 21, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1378, file: !59, line: 267, column: 5)
!1424 = !DILocation(line: 270, column: 26, scope: !1423)
!1425 = !DILocation(line: 270, column: 7, scope: !1423)
!1426 = !DILocation(line: 273, column: 12, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !59, line: 273, column: 11)
!1428 = !DILocation(line: 273, column: 11, scope: !1423)
!1429 = !DILocation(line: 274, column: 9, scope: !1427)
!1430 = !DILocation(line: 274, column: 9, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1432, file: !59, discriminator: 1)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !59, line: 274, column: 9)
!1433 = distinct !DILexicalBlock(scope: !1427, file: !59, line: 274, column: 9)
!1434 = !DILocation(line: 274, column: 9, scope: !1433)
!1435 = !DILocation(line: 274, column: 9, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1432, file: !59, discriminator: 2)
!1437 = !DILocation(line: 274, column: 9, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1439, file: !59, discriminator: 4)
!1439 = !DILexicalBlockFile(scope: !1433, file: !59, discriminator: 3)
!1440 = !DILocation(line: 274, column: 9, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1433, file: !59, discriminator: 5)
!1442 = !DILocation(line: 275, column: 25, scope: !1423)
!1443 = !DILocation(line: 276, column: 20, scope: !1423)
!1444 = !DILocation(line: 277, column: 24, scope: !1423)
!1445 = !DILocation(line: 278, column: 7, scope: !1423)
!1446 = !DILocation(line: 281, column: 25, scope: !1423)
!1447 = !DILocation(line: 282, column: 26, scope: !1423)
!1448 = !DILocation(line: 283, column: 7, scope: !1423)
!1449 = !DILocation(line: 289, column: 13, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !59, line: 289, column: 13)
!1451 = distinct !DILexicalBlock(scope: !1423, file: !59, line: 288, column: 7)
!1452 = !DILocation(line: 289, column: 27, scope: !1450)
!1453 = !DILocation(line: 289, column: 13, scope: !1451)
!1454 = !DILocation(line: 312, column: 50, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !59, line: 290, column: 11)
!1456 = !DILocation(line: 312, column: 26, scope: !1455)
!1457 = !DILocation(line: 312, column: 24, scope: !1455)
!1458 = !DILocation(line: 313, column: 51, scope: !1455)
!1459 = !DILocation(line: 313, column: 27, scope: !1455)
!1460 = !DILocation(line: 313, column: 25, scope: !1455)
!1461 = !DILocation(line: 314, column: 11, scope: !1455)
!1462 = !DILocation(line: 315, column: 14, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1451, file: !59, line: 315, column: 13)
!1464 = !DILocation(line: 315, column: 13, scope: !1451)
!1465 = !DILocation(line: 316, column: 31, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !59, line: 316, column: 11)
!1467 = !DILocation(line: 316, column: 29, scope: !1466)
!1468 = !DILocation(line: 316, column: 16, scope: !1466)
!1469 = !DILocation(line: 316, column: 44, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1471, file: !59, discriminator: 2)
!1471 = !DILexicalBlockFile(scope: !1472, file: !59, discriminator: 1)
!1472 = distinct !DILexicalBlock(scope: !1466, file: !59, line: 316, column: 11)
!1473 = !DILocation(line: 316, column: 43, scope: !1472)
!1474 = !DILocation(line: 316, column: 11, scope: !1466)
!1475 = !DILocation(line: 317, column: 13, scope: !1472)
!1476 = !DILocation(line: 317, column: 13, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1478, file: !59, discriminator: 1)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !59, line: 317, column: 13)
!1479 = distinct !DILexicalBlock(scope: !1472, file: !59, line: 317, column: 13)
!1480 = !DILocation(line: 317, column: 13, scope: !1479)
!1481 = !DILocation(line: 317, column: 13, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1478, file: !59, discriminator: 2)
!1483 = !DILocation(line: 317, column: 13, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1485, file: !59, discriminator: 4)
!1485 = !DILexicalBlockFile(scope: !1479, file: !59, discriminator: 3)
!1486 = !DILocation(line: 317, column: 13, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1479, file: !59, discriminator: 5)
!1488 = !DILocation(line: 316, column: 70, scope: !1472)
!1489 = !DILocation(line: 316, column: 11, scope: !1472)
!1490 = !DILocation(line: 317, column: 13, scope: !1466)
!1491 = !DILocation(line: 318, column: 27, scope: !1451)
!1492 = !DILocation(line: 319, column: 24, scope: !1451)
!1493 = !DILocation(line: 319, column: 22, scope: !1451)
!1494 = !DILocation(line: 320, column: 36, scope: !1451)
!1495 = !DILocation(line: 320, column: 28, scope: !1451)
!1496 = !DILocation(line: 320, column: 26, scope: !1451)
!1497 = !DILocation(line: 322, column: 7, scope: !1423)
!1498 = !DILocation(line: 325, column: 21, scope: !1423)
!1499 = !DILocation(line: 326, column: 26, scope: !1423)
!1500 = !DILocation(line: 326, column: 7, scope: !1423)
!1501 = !DILocation(line: 329, column: 12, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1423, file: !59, line: 329, column: 11)
!1503 = !DILocation(line: 329, column: 11, scope: !1423)
!1504 = !DILocation(line: 330, column: 9, scope: !1502)
!1505 = !DILocation(line: 330, column: 9, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1507, file: !59, discriminator: 1)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !59, line: 330, column: 9)
!1508 = distinct !DILexicalBlock(scope: !1502, file: !59, line: 330, column: 9)
!1509 = !DILocation(line: 330, column: 9, scope: !1508)
!1510 = !DILocation(line: 330, column: 9, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1507, file: !59, discriminator: 2)
!1512 = !DILocation(line: 330, column: 9, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1514, file: !59, discriminator: 4)
!1514 = !DILexicalBlockFile(scope: !1508, file: !59, discriminator: 3)
!1515 = !DILocation(line: 330, column: 9, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1508, file: !59, discriminator: 5)
!1517 = !DILocation(line: 331, column: 20, scope: !1423)
!1518 = !DILocation(line: 332, column: 24, scope: !1423)
!1519 = !DILocation(line: 333, column: 7, scope: !1423)
!1520 = !DILocation(line: 336, column: 26, scope: !1423)
!1521 = !DILocation(line: 337, column: 7, scope: !1423)
!1522 = !DILocation(line: 340, column: 7, scope: !1423)
!1523 = !DILocation(line: 343, column: 10, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1378, file: !59, line: 343, column: 3)
!1525 = !DILocation(line: 343, column: 8, scope: !1524)
!1526 = !DILocation(line: 343, column: 19, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1528, file: !59, discriminator: 6)
!1528 = !DILexicalBlockFile(scope: !1529, file: !59, discriminator: 1)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !59, line: 343, column: 3)
!1530 = !DILocation(line: 343, column: 27, scope: !1529)
!1531 = !DILocation(line: 343, column: 19, scope: !1529)
!1532 = !DILocation(line: 343, column: 45, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1529, file: !59, discriminator: 2)
!1534 = !DILocation(line: 343, column: 41, scope: !1529)
!1535 = !DILocation(line: 343, column: 48, scope: !1529)
!1536 = !DILocation(line: 343, column: 58, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1529, file: !59, discriminator: 3)
!1538 = !DILocation(line: 343, column: 63, scope: !1529)
!1539 = !DILocation(line: 343, column: 60, scope: !1529)
!1540 = !DILocation(line: 343, column: 16, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1542, file: !59, discriminator: 5)
!1542 = !DILexicalBlockFile(scope: !1529, file: !59, discriminator: 4)
!1543 = !DILocation(line: 343, column: 3, scope: !1524)
!1544 = !DILocalVariable(name: "c", scope: !1545, file: !59, line: 345, type: !532)
!1545 = distinct !DILexicalBlock(scope: !1529, file: !59, line: 344, column: 5)
!1546 = !DILocation(line: 345, column: 21, scope: !1545)
!1547 = !DILocalVariable(name: "esc", scope: !1545, file: !59, line: 346, type: !532)
!1548 = !DILocation(line: 346, column: 21, scope: !1545)
!1549 = !DILocalVariable(name: "is_right_quote", scope: !1545, file: !59, line: 347, type: !39)
!1550 = !DILocation(line: 347, column: 12, scope: !1545)
!1551 = !DILocation(line: 349, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1545, file: !59, line: 349, column: 11)
!1553 = !DILocation(line: 350, column: 11, scope: !1552)
!1554 = !DILocation(line: 350, column: 14, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1552, file: !59, discriminator: 1)
!1556 = !DILocation(line: 351, column: 11, scope: !1552)
!1557 = !DILocation(line: 351, column: 15, scope: !1555)
!1558 = !DILocation(line: 351, column: 19, scope: !1552)
!1559 = !DILocation(line: 351, column: 17, scope: !1552)
!1560 = !DILocation(line: 352, column: 19, scope: !1552)
!1561 = !DILocation(line: 352, column: 27, scope: !1552)
!1562 = !DILocation(line: 352, column: 39, scope: !1552)
!1563 = !DILocation(line: 352, column: 46, scope: !1555)
!1564 = !DILocation(line: 352, column: 44, scope: !1552)
!1565 = !DILocation(line: 356, column: 40, scope: !1552)
!1566 = !DILocation(line: 356, column: 32, scope: !1552)
!1567 = !DILocation(line: 356, column: 30, scope: !1552)
!1568 = !DILocation(line: 356, column: 48, scope: !1552)
!1569 = !DILocation(line: 352, column: 15, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1571, file: !59, discriminator: 3)
!1571 = !DILexicalBlockFile(scope: !1552, file: !59, discriminator: 2)
!1572 = !DILocation(line: 357, column: 11, scope: !1552)
!1573 = !DILocation(line: 357, column: 22, scope: !1555)
!1574 = !DILocation(line: 357, column: 28, scope: !1552)
!1575 = !DILocation(line: 357, column: 26, scope: !1552)
!1576 = !DILocation(line: 357, column: 31, scope: !1552)
!1577 = !DILocation(line: 357, column: 45, scope: !1552)
!1578 = !DILocation(line: 357, column: 14, scope: !1552)
!1579 = !DILocation(line: 357, column: 63, scope: !1552)
!1580 = !DILocation(line: 349, column: 11, scope: !1545)
!1581 = !DILocation(line: 359, column: 15, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !59, line: 359, column: 15)
!1583 = distinct !DILexicalBlock(scope: !1552, file: !59, line: 358, column: 9)
!1584 = !DILocation(line: 359, column: 15, scope: !1583)
!1585 = !DILocation(line: 360, column: 13, scope: !1582)
!1586 = !DILocation(line: 361, column: 26, scope: !1583)
!1587 = !DILocation(line: 362, column: 9, scope: !1583)
!1588 = !DILocation(line: 364, column: 15, scope: !1545)
!1589 = !DILocation(line: 364, column: 11, scope: !1545)
!1590 = !DILocation(line: 364, column: 9, scope: !1545)
!1591 = !DILocation(line: 365, column: 15, scope: !1545)
!1592 = !DILocation(line: 365, column: 7, scope: !1545)
!1593 = !DILocation(line: 368, column: 15, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !59, line: 368, column: 15)
!1595 = distinct !DILexicalBlock(scope: !1545, file: !59, line: 366, column: 9)
!1596 = !DILocation(line: 368, column: 15, scope: !1595)
!1597 = !DILocation(line: 370, column: 19, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !59, line: 370, column: 19)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !59, line: 369, column: 13)
!1600 = !DILocation(line: 370, column: 19, scope: !1599)
!1601 = !DILocation(line: 371, column: 17, scope: !1598)
!1602 = !DILocation(line: 372, column: 15, scope: !1599)
!1603 = !DILocation(line: 372, column: 15, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1605, file: !59, discriminator: 1)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !59, line: 372, column: 15)
!1606 = distinct !DILexicalBlock(scope: !1599, file: !59, line: 372, column: 15)
!1607 = !DILocation(line: 372, column: 15, scope: !1606)
!1608 = !DILocation(line: 372, column: 15, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1605, file: !59, discriminator: 2)
!1610 = !DILocation(line: 372, column: 15, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1612, file: !59, discriminator: 4)
!1612 = !DILexicalBlockFile(scope: !1606, file: !59, discriminator: 3)
!1613 = !DILocation(line: 378, column: 19, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1599, file: !59, line: 378, column: 19)
!1615 = !DILocation(line: 378, column: 21, scope: !1614)
!1616 = !DILocation(line: 378, column: 27, scope: !1614)
!1617 = !DILocation(line: 378, column: 25, scope: !1614)
!1618 = !DILocation(line: 378, column: 35, scope: !1614)
!1619 = !DILocation(line: 378, column: 49, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1614, file: !59, discriminator: 1)
!1621 = !DILocation(line: 378, column: 51, scope: !1614)
!1622 = !DILocation(line: 378, column: 45, scope: !1614)
!1623 = !DILocation(line: 378, column: 42, scope: !1614)
!1624 = !DILocation(line: 378, column: 56, scope: !1614)
!1625 = !DILocation(line: 378, column: 63, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1614, file: !59, discriminator: 2)
!1627 = !DILocation(line: 378, column: 65, scope: !1614)
!1628 = !DILocation(line: 378, column: 59, scope: !1614)
!1629 = !DILocation(line: 378, column: 70, scope: !1614)
!1630 = !DILocation(line: 378, column: 19, scope: !1599)
!1631 = !DILocation(line: 380, column: 19, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1614, file: !59, line: 379, column: 17)
!1633 = !DILocation(line: 380, column: 19, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1635, file: !59, discriminator: 1)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !59, line: 380, column: 19)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !59, line: 380, column: 19)
!1637 = !DILocation(line: 380, column: 19, scope: !1636)
!1638 = !DILocation(line: 380, column: 19, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1635, file: !59, discriminator: 2)
!1640 = !DILocation(line: 380, column: 19, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1642, file: !59, discriminator: 4)
!1642 = !DILexicalBlockFile(scope: !1636, file: !59, discriminator: 3)
!1643 = !DILocation(line: 381, column: 19, scope: !1632)
!1644 = !DILocation(line: 381, column: 19, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1646, file: !59, discriminator: 1)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !59, line: 381, column: 19)
!1647 = distinct !DILexicalBlock(scope: !1632, file: !59, line: 381, column: 19)
!1648 = !DILocation(line: 381, column: 19, scope: !1647)
!1649 = !DILocation(line: 381, column: 19, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1646, file: !59, discriminator: 2)
!1651 = !DILocation(line: 381, column: 19, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1653, file: !59, discriminator: 4)
!1653 = !DILexicalBlockFile(scope: !1647, file: !59, discriminator: 3)
!1654 = !DILocation(line: 382, column: 17, scope: !1632)
!1655 = !DILocation(line: 383, column: 17, scope: !1599)
!1656 = !DILocation(line: 388, column: 13, scope: !1599)
!1657 = !DILocation(line: 389, column: 20, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1594, file: !59, line: 389, column: 20)
!1659 = !DILocation(line: 389, column: 26, scope: !1658)
!1660 = !DILocation(line: 389, column: 20, scope: !1594)
!1661 = !DILocation(line: 390, column: 13, scope: !1658)
!1662 = !DILocation(line: 391, column: 11, scope: !1595)
!1663 = !DILocation(line: 394, column: 19, scope: !1595)
!1664 = !DILocation(line: 394, column: 11, scope: !1595)
!1665 = !DILocation(line: 397, column: 19, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !59, line: 397, column: 19)
!1667 = distinct !DILexicalBlock(scope: !1595, file: !59, line: 395, column: 13)
!1668 = !DILocation(line: 397, column: 19, scope: !1667)
!1669 = !DILocation(line: 398, column: 17, scope: !1666)
!1670 = !DILocation(line: 399, column: 15, scope: !1667)
!1671 = !DILocation(line: 402, column: 20, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !59, line: 402, column: 19)
!1673 = !DILocation(line: 402, column: 26, scope: !1672)
!1674 = !DILocation(line: 403, column: 19, scope: !1672)
!1675 = !DILocation(line: 403, column: 22, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1672, file: !59, discriminator: 1)
!1677 = !DILocation(line: 403, column: 24, scope: !1672)
!1678 = !DILocation(line: 403, column: 30, scope: !1672)
!1679 = !DILocation(line: 403, column: 28, scope: !1672)
!1680 = !DILocation(line: 403, column: 38, scope: !1672)
!1681 = !DILocation(line: 403, column: 45, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1672, file: !59, discriminator: 2)
!1683 = !DILocation(line: 403, column: 47, scope: !1672)
!1684 = !DILocation(line: 403, column: 41, scope: !1672)
!1685 = !DILocation(line: 403, column: 52, scope: !1672)
!1686 = !DILocation(line: 402, column: 19, scope: !1667)
!1687 = !DILocation(line: 404, column: 29, scope: !1672)
!1688 = !DILocation(line: 404, column: 31, scope: !1672)
!1689 = !DILocation(line: 404, column: 25, scope: !1672)
!1690 = !DILocation(line: 404, column: 17, scope: !1672)
!1691 = !DILocation(line: 411, column: 25, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !59, line: 411, column: 25)
!1693 = distinct !DILexicalBlock(scope: !1672, file: !59, line: 405, column: 19)
!1694 = !DILocation(line: 411, column: 25, scope: !1693)
!1695 = !DILocation(line: 412, column: 23, scope: !1692)
!1696 = !DILocation(line: 413, column: 29, scope: !1693)
!1697 = !DILocation(line: 413, column: 31, scope: !1693)
!1698 = !DILocation(line: 413, column: 25, scope: !1693)
!1699 = !DILocation(line: 413, column: 23, scope: !1693)
!1700 = !DILocation(line: 414, column: 23, scope: !1693)
!1701 = !DILocation(line: 415, column: 21, scope: !1693)
!1702 = !DILocation(line: 415, column: 21, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1704, file: !59, discriminator: 1)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !59, line: 415, column: 21)
!1705 = distinct !DILexicalBlock(scope: !1693, file: !59, line: 415, column: 21)
!1706 = !DILocation(line: 415, column: 21, scope: !1705)
!1707 = !DILocation(line: 415, column: 21, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1704, file: !59, discriminator: 2)
!1709 = !DILocation(line: 415, column: 21, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1711, file: !59, discriminator: 4)
!1711 = !DILexicalBlockFile(scope: !1705, file: !59, discriminator: 3)
!1712 = !DILocation(line: 416, column: 21, scope: !1693)
!1713 = !DILocation(line: 416, column: 21, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1715, file: !59, discriminator: 1)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !59, line: 416, column: 21)
!1716 = distinct !DILexicalBlock(scope: !1693, file: !59, line: 416, column: 21)
!1717 = !DILocation(line: 416, column: 21, scope: !1716)
!1718 = !DILocation(line: 416, column: 21, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1715, file: !59, discriminator: 2)
!1720 = !DILocation(line: 416, column: 21, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1722, file: !59, discriminator: 4)
!1722 = !DILexicalBlockFile(scope: !1716, file: !59, discriminator: 3)
!1723 = !DILocation(line: 417, column: 21, scope: !1693)
!1724 = !DILocation(line: 417, column: 21, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1726, file: !59, discriminator: 1)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !59, line: 417, column: 21)
!1727 = distinct !DILexicalBlock(scope: !1693, file: !59, line: 417, column: 21)
!1728 = !DILocation(line: 417, column: 21, scope: !1727)
!1729 = !DILocation(line: 417, column: 21, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1726, file: !59, discriminator: 2)
!1731 = !DILocation(line: 417, column: 21, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1733, file: !59, discriminator: 4)
!1733 = !DILexicalBlockFile(scope: !1727, file: !59, discriminator: 3)
!1734 = !DILocation(line: 418, column: 21, scope: !1693)
!1735 = !DILocation(line: 418, column: 21, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !59, discriminator: 1)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !59, line: 418, column: 21)
!1738 = distinct !DILexicalBlock(scope: !1693, file: !59, line: 418, column: 21)
!1739 = !DILocation(line: 418, column: 21, scope: !1738)
!1740 = !DILocation(line: 418, column: 21, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1737, file: !59, discriminator: 2)
!1742 = !DILocation(line: 418, column: 21, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1744, file: !59, discriminator: 4)
!1744 = !DILexicalBlockFile(scope: !1738, file: !59, discriminator: 3)
!1745 = !DILocation(line: 419, column: 21, scope: !1693)
!1746 = !DILocation(line: 422, column: 21, scope: !1693)
!1747 = !DILocation(line: 423, column: 19, scope: !1693)
!1748 = !DILocation(line: 424, column: 15, scope: !1667)
!1749 = !DILocation(line: 427, column: 15, scope: !1667)
!1750 = !DILocation(line: 429, column: 11, scope: !1595)
!1751 = !DILocation(line: 431, column: 24, scope: !1595)
!1752 = !DILocation(line: 431, column: 31, scope: !1595)
!1753 = !DILocation(line: 432, column: 24, scope: !1595)
!1754 = !DILocation(line: 432, column: 31, scope: !1595)
!1755 = !DILocation(line: 433, column: 24, scope: !1595)
!1756 = !DILocation(line: 433, column: 31, scope: !1595)
!1757 = !DILocation(line: 434, column: 24, scope: !1595)
!1758 = !DILocation(line: 434, column: 31, scope: !1595)
!1759 = !DILocation(line: 435, column: 24, scope: !1595)
!1760 = !DILocation(line: 435, column: 31, scope: !1595)
!1761 = !DILocation(line: 436, column: 24, scope: !1595)
!1762 = !DILocation(line: 436, column: 31, scope: !1595)
!1763 = !DILocation(line: 437, column: 24, scope: !1595)
!1764 = !DILocation(line: 437, column: 31, scope: !1595)
!1765 = !DILocation(line: 438, column: 26, scope: !1595)
!1766 = !DILocation(line: 438, column: 24, scope: !1595)
!1767 = !DILocation(line: 441, column: 15, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1595, file: !59, line: 441, column: 15)
!1769 = !DILocation(line: 441, column: 33, scope: !1768)
!1770 = !DILocation(line: 441, column: 36, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1768, file: !59, discriminator: 1)
!1772 = !DILocation(line: 441, column: 55, scope: !1768)
!1773 = !DILocation(line: 441, column: 58, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1768, file: !59, discriminator: 3)
!1775 = !DILocation(line: 441, column: 15, scope: !1595)
!1776 = !DILocation(line: 442, column: 13, scope: !1768)
!1777 = !DILocation(line: 441, column: 58, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1779, file: !59, discriminator: 5)
!1779 = !DILexicalBlockFile(scope: !1780, file: !59, discriminator: 4)
!1780 = !DILexicalBlockFile(scope: !1768, file: !59, discriminator: 2)
!1781 = !DILocation(line: 445, column: 15, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1595, file: !59, line: 445, column: 15)
!1783 = !DILocation(line: 445, column: 29, scope: !1782)
!1784 = !DILocation(line: 446, column: 15, scope: !1782)
!1785 = !DILocation(line: 446, column: 18, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1782, file: !59, discriminator: 1)
!1787 = !DILocation(line: 445, column: 15, scope: !1595)
!1788 = !DILocation(line: 447, column: 13, scope: !1782)
!1789 = !DILocation(line: 446, column: 18, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1782, file: !59, discriminator: 2)
!1791 = !DILocation(line: 450, column: 15, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1595, file: !59, line: 450, column: 15)
!1793 = !DILocation(line: 450, column: 15, scope: !1595)
!1794 = !DILocation(line: 452, column: 19, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1792, file: !59, line: 451, column: 13)
!1796 = !DILocation(line: 452, column: 17, scope: !1795)
!1797 = !DILocation(line: 453, column: 15, scope: !1795)
!1798 = !DILocation(line: 455, column: 11, scope: !1595)
!1799 = !DILocation(line: 458, column: 18, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1595, file: !59, line: 458, column: 15)
!1801 = !DILocation(line: 458, column: 26, scope: !1800)
!1802 = !DILocation(line: 458, column: 15, scope: !1595)
!1803 = !DILocation(line: 458, column: 40, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1800, file: !59, discriminator: 1)
!1805 = !DILocation(line: 458, column: 47, scope: !1800)
!1806 = !DILocation(line: 458, column: 57, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1800, file: !59, discriminator: 2)
!1808 = !DILocation(line: 458, column: 65, scope: !1800)
!1809 = !DILocation(line: 459, column: 13, scope: !1800)
!1810 = !DILocation(line: 458, column: 69, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1812, file: !59, discriminator: 4)
!1812 = !DILexicalBlockFile(scope: !1800, file: !59, discriminator: 3)
!1813 = !DILocation(line: 462, column: 15, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1595, file: !59, line: 462, column: 15)
!1815 = !DILocation(line: 462, column: 17, scope: !1814)
!1816 = !DILocation(line: 462, column: 15, scope: !1595)
!1817 = !DILocation(line: 463, column: 13, scope: !1814)
!1818 = !DILocation(line: 462, column: 20, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1814, file: !59, discriminator: 1)
!1820 = !DILocation(line: 478, column: 15, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1595, file: !59, line: 478, column: 15)
!1822 = !DILocation(line: 478, column: 29, scope: !1821)
!1823 = !DILocation(line: 479, column: 15, scope: !1821)
!1824 = !DILocation(line: 479, column: 18, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1821, file: !59, discriminator: 1)
!1826 = !DILocation(line: 478, column: 15, scope: !1595)
!1827 = !DILocation(line: 480, column: 13, scope: !1821)
!1828 = !DILocation(line: 481, column: 11, scope: !1595)
!1829 = !DILocation(line: 484, column: 15, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1595, file: !59, line: 484, column: 15)
!1831 = !DILocation(line: 484, column: 29, scope: !1830)
!1832 = !DILocation(line: 484, column: 15, scope: !1595)
!1833 = !DILocation(line: 486, column: 19, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !59, line: 486, column: 19)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !59, line: 485, column: 13)
!1836 = !DILocation(line: 486, column: 19, scope: !1835)
!1837 = !DILocation(line: 487, column: 17, scope: !1834)
!1838 = !DILocation(line: 488, column: 15, scope: !1835)
!1839 = !DILocation(line: 488, column: 15, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !59, discriminator: 1)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !59, line: 488, column: 15)
!1842 = distinct !DILexicalBlock(scope: !1835, file: !59, line: 488, column: 15)
!1843 = !DILocation(line: 488, column: 15, scope: !1842)
!1844 = !DILocation(line: 488, column: 15, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1841, file: !59, discriminator: 2)
!1846 = !DILocation(line: 488, column: 15, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1848, file: !59, discriminator: 4)
!1848 = !DILexicalBlockFile(scope: !1842, file: !59, discriminator: 3)
!1849 = !DILocation(line: 489, column: 15, scope: !1835)
!1850 = !DILocation(line: 489, column: 15, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1852, file: !59, discriminator: 1)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !59, line: 489, column: 15)
!1853 = distinct !DILexicalBlock(scope: !1835, file: !59, line: 489, column: 15)
!1854 = !DILocation(line: 489, column: 15, scope: !1853)
!1855 = !DILocation(line: 489, column: 15, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1852, file: !59, discriminator: 2)
!1857 = !DILocation(line: 489, column: 15, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1859, file: !59, discriminator: 4)
!1859 = !DILexicalBlockFile(scope: !1853, file: !59, discriminator: 3)
!1860 = !DILocation(line: 490, column: 15, scope: !1835)
!1861 = !DILocation(line: 490, column: 15, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1863, file: !59, discriminator: 1)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !59, line: 490, column: 15)
!1864 = distinct !DILexicalBlock(scope: !1835, file: !59, line: 490, column: 15)
!1865 = !DILocation(line: 490, column: 15, scope: !1864)
!1866 = !DILocation(line: 490, column: 15, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1863, file: !59, discriminator: 2)
!1868 = !DILocation(line: 490, column: 15, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1870, file: !59, discriminator: 4)
!1870 = !DILexicalBlockFile(scope: !1864, file: !59, discriminator: 3)
!1871 = !DILocation(line: 491, column: 13, scope: !1835)
!1872 = !DILocation(line: 492, column: 11, scope: !1595)
!1873 = !DILocation(line: 516, column: 11, scope: !1595)
!1874 = !DILocalVariable(name: "m", scope: !1875, file: !59, line: 526, type: !94)
!1875 = distinct !DILexicalBlock(scope: !1595, file: !59, line: 524, column: 11)
!1876 = !DILocation(line: 526, column: 20, scope: !1875)
!1877 = !DILocalVariable(name: "printable", scope: !1875, file: !59, line: 528, type: !39)
!1878 = !DILocation(line: 528, column: 18, scope: !1875)
!1879 = !DILocation(line: 530, column: 17, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1875, file: !59, line: 530, column: 17)
!1881 = !DILocation(line: 530, column: 17, scope: !1875)
!1882 = !DILocation(line: 532, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !59, line: 531, column: 15)
!1884 = !DILocation(line: 533, column: 29, scope: !1883)
!1885 = !DILocation(line: 533, column: 41, scope: !1883)
!1886 = !DILocation(line: 533, column: 27, scope: !1883)
!1887 = !DILocation(line: 534, column: 15, scope: !1883)
!1888 = !DILocalVariable(name: "mbstate", scope: !1889, file: !59, line: 537, type: !1890)
!1889 = distinct !DILexicalBlock(scope: !1880, file: !59, line: 536, column: 15)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1891, line: 106, baseType: !1892)
!1891 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1891, line: 94, baseType: !1893)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, file: !1891, line: 82, size: 64, align: 32, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1893, file: !1891, line: 84, baseType: !48, size: 32, align: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1893, file: !1891, line: 93, baseType: !1897, size: 32, align: 32, offset: 32)
!1897 = !DICompositeType(tag: DW_TAG_union_type, scope: !1893, file: !1891, line: 85, size: 32, align: 32, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1897, file: !1891, line: 88, baseType: !114, size: 32, align: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1897, file: !1891, line: 92, baseType: !1901, size: 32, align: 8)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, align: 8, elements: !1902)
!1902 = !{!1903}
!1903 = !DISubrange(count: 4)
!1904 = !DILocation(line: 537, column: 27, scope: !1889)
!1905 = !DILocation(line: 538, column: 17, scope: !1889)
!1906 = !DILocation(line: 540, column: 19, scope: !1889)
!1907 = !DILocation(line: 541, column: 27, scope: !1889)
!1908 = !DILocation(line: 542, column: 21, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1889, file: !59, line: 542, column: 21)
!1910 = !DILocation(line: 542, column: 29, scope: !1909)
!1911 = !DILocation(line: 542, column: 21, scope: !1889)
!1912 = !DILocation(line: 543, column: 37, scope: !1909)
!1913 = !DILocation(line: 543, column: 29, scope: !1909)
!1914 = !DILocation(line: 543, column: 27, scope: !1909)
!1915 = !DILocation(line: 543, column: 19, scope: !1909)
!1916 = !DILocation(line: 545, column: 17, scope: !1889)
!1917 = !DILocalVariable(name: "w", scope: !1918, file: !59, line: 547, type: !1919)
!1918 = distinct !DILexicalBlock(scope: !1889, file: !59, line: 546, column: 19)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !48)
!1920 = !DILocation(line: 547, column: 29, scope: !1918)
!1921 = !DILocalVariable(name: "bytes", scope: !1918, file: !59, line: 548, type: !94)
!1922 = !DILocation(line: 548, column: 28, scope: !1918)
!1923 = !DILocation(line: 548, column: 54, scope: !1918)
!1924 = !DILocation(line: 548, column: 58, scope: !1918)
!1925 = !DILocation(line: 548, column: 56, scope: !1918)
!1926 = !DILocation(line: 548, column: 50, scope: !1918)
!1927 = !DILocation(line: 549, column: 45, scope: !1918)
!1928 = !DILocation(line: 549, column: 56, scope: !1918)
!1929 = !DILocation(line: 549, column: 60, scope: !1918)
!1930 = !DILocation(line: 549, column: 58, scope: !1918)
!1931 = !DILocation(line: 549, column: 53, scope: !1918)
!1932 = !DILocation(line: 548, column: 36, scope: !1918)
!1933 = !DILocation(line: 550, column: 25, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1918, file: !59, line: 550, column: 25)
!1935 = !DILocation(line: 550, column: 31, scope: !1934)
!1936 = !DILocation(line: 550, column: 25, scope: !1918)
!1937 = !DILocation(line: 551, column: 23, scope: !1934)
!1938 = !DILocation(line: 552, column: 30, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !59, line: 552, column: 30)
!1940 = !DILocation(line: 552, column: 36, scope: !1939)
!1941 = !DILocation(line: 552, column: 30, scope: !1934)
!1942 = !DILocation(line: 554, column: 35, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !59, line: 553, column: 23)
!1944 = !DILocation(line: 555, column: 25, scope: !1943)
!1945 = !DILocation(line: 557, column: 30, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1939, file: !59, line: 557, column: 30)
!1947 = !DILocation(line: 557, column: 36, scope: !1946)
!1948 = !DILocation(line: 557, column: 30, scope: !1939)
!1949 = !DILocation(line: 559, column: 35, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !59, line: 558, column: 23)
!1951 = !DILocation(line: 560, column: 25, scope: !1950)
!1952 = !DILocation(line: 560, column: 32, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1954, file: !59, discriminator: 4)
!1954 = !DILexicalBlockFile(scope: !1950, file: !59, discriminator: 1)
!1955 = !DILocation(line: 560, column: 36, scope: !1950)
!1956 = !DILocation(line: 560, column: 34, scope: !1950)
!1957 = !DILocation(line: 560, column: 40, scope: !1950)
!1958 = !DILocation(line: 560, column: 38, scope: !1950)
!1959 = !DILocation(line: 560, column: 48, scope: !1950)
!1960 = !DILocation(line: 560, column: 55, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1950, file: !59, discriminator: 2)
!1962 = !DILocation(line: 560, column: 59, scope: !1950)
!1963 = !DILocation(line: 560, column: 57, scope: !1950)
!1964 = !DILocation(line: 560, column: 51, scope: !1950)
!1965 = !DILocation(line: 560, column: 25, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1950, file: !59, discriminator: 3)
!1967 = !DILocation(line: 561, column: 28, scope: !1950)
!1968 = !DILocation(line: 562, column: 25, scope: !1950)
!1969 = !DILocation(line: 570, column: 44, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !59, line: 570, column: 29)
!1971 = distinct !DILexicalBlock(scope: !1946, file: !59, line: 565, column: 23)
!1972 = !DILocation(line: 571, column: 29, scope: !1970)
!1973 = !DILocation(line: 571, column: 32, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1970, file: !59, discriminator: 1)
!1975 = !DILocation(line: 571, column: 46, scope: !1970)
!1976 = !DILocation(line: 570, column: 29, scope: !1971)
!1977 = !DILocalVariable(name: "j", scope: !1978, file: !59, line: 573, type: !94)
!1978 = distinct !DILexicalBlock(scope: !1970, file: !59, line: 572, column: 27)
!1979 = !DILocation(line: 573, column: 36, scope: !1978)
!1980 = !DILocation(line: 574, column: 36, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1978, file: !59, line: 574, column: 29)
!1982 = !DILocation(line: 574, column: 34, scope: !1981)
!1983 = !DILocation(line: 574, column: 41, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !1985, file: !59, discriminator: 2)
!1985 = !DILexicalBlockFile(scope: !1986, file: !59, discriminator: 1)
!1986 = distinct !DILexicalBlock(scope: !1981, file: !59, line: 574, column: 29)
!1987 = !DILocation(line: 574, column: 45, scope: !1986)
!1988 = !DILocation(line: 574, column: 43, scope: !1986)
!1989 = !DILocation(line: 574, column: 29, scope: !1981)
!1990 = !DILocation(line: 575, column: 43, scope: !1986)
!1991 = !DILocation(line: 575, column: 47, scope: !1986)
!1992 = !DILocation(line: 575, column: 45, scope: !1986)
!1993 = !DILocation(line: 575, column: 51, scope: !1986)
!1994 = !DILocation(line: 575, column: 49, scope: !1986)
!1995 = !DILocation(line: 575, column: 39, scope: !1986)
!1996 = !DILocation(line: 575, column: 31, scope: !1986)
!1997 = !DILocation(line: 579, column: 35, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1986, file: !59, line: 576, column: 33)
!1999 = !DILocation(line: 582, column: 35, scope: !1998)
!2000 = !DILocation(line: 583, column: 33, scope: !1998)
!2001 = !DILocation(line: 574, column: 53, scope: !1986)
!2002 = !DILocation(line: 574, column: 29, scope: !1986)
!2003 = !DILocation(line: 584, column: 27, scope: !1978)
!2004 = !DILocation(line: 586, column: 41, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1971, file: !59, line: 586, column: 29)
!2006 = !DILocation(line: 586, column: 31, scope: !2005)
!2007 = !DILocation(line: 586, column: 29, scope: !1971)
!2008 = !DILocation(line: 587, column: 37, scope: !2005)
!2009 = !DILocation(line: 587, column: 27, scope: !2005)
!2010 = !DILocation(line: 588, column: 30, scope: !1971)
!2011 = !DILocation(line: 588, column: 27, scope: !1971)
!2012 = !DILocation(line: 590, column: 19, scope: !1918)
!2013 = !DILocation(line: 591, column: 26, scope: !1889)
!2014 = !DILocation(line: 591, column: 24, scope: !1889)
!2015 = !DILocation(line: 594, column: 21, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1875, file: !59, line: 594, column: 17)
!2017 = !DILocation(line: 594, column: 19, scope: !2016)
!2018 = !DILocation(line: 594, column: 23, scope: !2016)
!2019 = !DILocation(line: 594, column: 27, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2016, file: !59, discriminator: 1)
!2021 = !DILocation(line: 594, column: 45, scope: !2016)
!2022 = !DILocation(line: 594, column: 50, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2016, file: !59, discriminator: 2)
!2024 = !DILocation(line: 594, column: 17, scope: !1875)
!2025 = !DILocalVariable(name: "ilim", scope: !2026, file: !59, line: 598, type: !94)
!2026 = distinct !DILexicalBlock(scope: !2016, file: !59, line: 595, column: 15)
!2027 = !DILocation(line: 598, column: 24, scope: !2026)
!2028 = !DILocation(line: 598, column: 31, scope: !2026)
!2029 = !DILocation(line: 598, column: 35, scope: !2026)
!2030 = !DILocation(line: 598, column: 33, scope: !2026)
!2031 = !DILocation(line: 600, column: 17, scope: !2026)
!2032 = !DILocation(line: 602, column: 25, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !59, line: 602, column: 25)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !59, line: 601, column: 19)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !59, line: 600, column: 17)
!2036 = distinct !DILexicalBlock(scope: !2026, file: !59, line: 600, column: 17)
!2037 = !DILocation(line: 602, column: 43, scope: !2033)
!2038 = !DILocation(line: 602, column: 48, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2033, file: !59, discriminator: 1)
!2040 = !DILocation(line: 602, column: 25, scope: !2034)
!2041 = !DILocation(line: 604, column: 29, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !59, line: 604, column: 29)
!2043 = distinct !DILexicalBlock(scope: !2033, file: !59, line: 603, column: 23)
!2044 = !DILocation(line: 604, column: 29, scope: !2043)
!2045 = !DILocation(line: 605, column: 27, scope: !2042)
!2046 = !DILocation(line: 606, column: 25, scope: !2043)
!2047 = !DILocation(line: 606, column: 25, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2049, file: !59, discriminator: 1)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !59, line: 606, column: 25)
!2050 = distinct !DILexicalBlock(scope: !2043, file: !59, line: 606, column: 25)
!2051 = !DILocation(line: 606, column: 25, scope: !2050)
!2052 = !DILocation(line: 606, column: 25, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2049, file: !59, discriminator: 2)
!2054 = !DILocation(line: 606, column: 25, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !2056, file: !59, discriminator: 4)
!2056 = !DILexicalBlockFile(scope: !2050, file: !59, discriminator: 3)
!2057 = !DILocation(line: 607, column: 25, scope: !2043)
!2058 = !DILocation(line: 607, column: 25, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2060, file: !59, discriminator: 1)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !59, line: 607, column: 25)
!2061 = distinct !DILexicalBlock(scope: !2043, file: !59, line: 607, column: 25)
!2062 = !DILocation(line: 607, column: 25, scope: !2061)
!2063 = !DILocation(line: 607, column: 25, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2060, file: !59, discriminator: 2)
!2065 = !DILocation(line: 607, column: 25, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2067, file: !59, discriminator: 4)
!2067 = !DILexicalBlockFile(scope: !2061, file: !59, discriminator: 3)
!2068 = !DILocation(line: 608, column: 25, scope: !2043)
!2069 = !DILocation(line: 608, column: 25, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2071, file: !59, discriminator: 1)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !59, line: 608, column: 25)
!2072 = distinct !DILexicalBlock(scope: !2043, file: !59, line: 608, column: 25)
!2073 = !DILocation(line: 608, column: 25, scope: !2072)
!2074 = !DILocation(line: 608, column: 25, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2071, file: !59, discriminator: 2)
!2076 = !DILocation(line: 608, column: 25, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2078, file: !59, discriminator: 4)
!2078 = !DILexicalBlockFile(scope: !2072, file: !59, discriminator: 3)
!2079 = !DILocation(line: 609, column: 36, scope: !2043)
!2080 = !DILocation(line: 609, column: 38, scope: !2043)
!2081 = !DILocation(line: 609, column: 33, scope: !2043)
!2082 = !DILocation(line: 609, column: 29, scope: !2043)
!2083 = !DILocation(line: 609, column: 27, scope: !2043)
!2084 = !DILocation(line: 610, column: 23, scope: !2043)
!2085 = !DILocation(line: 611, column: 30, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2033, file: !59, line: 611, column: 30)
!2087 = !DILocation(line: 611, column: 30, scope: !2033)
!2088 = !DILocation(line: 613, column: 25, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2086, file: !59, line: 612, column: 23)
!2090 = !DILocation(line: 613, column: 25, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2092, file: !59, discriminator: 1)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !59, line: 613, column: 25)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !59, line: 613, column: 25)
!2094 = !DILocation(line: 613, column: 25, scope: !2093)
!2095 = !DILocation(line: 613, column: 25, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2092, file: !59, discriminator: 2)
!2097 = !DILocation(line: 613, column: 25, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2099, file: !59, discriminator: 4)
!2099 = !DILexicalBlockFile(scope: !2093, file: !59, discriminator: 3)
!2100 = !DILocation(line: 614, column: 40, scope: !2089)
!2101 = !DILocation(line: 615, column: 23, scope: !2089)
!2102 = !DILocation(line: 616, column: 25, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2034, file: !59, line: 616, column: 25)
!2104 = !DILocation(line: 616, column: 33, scope: !2103)
!2105 = !DILocation(line: 616, column: 35, scope: !2103)
!2106 = !DILocation(line: 616, column: 30, scope: !2103)
!2107 = !DILocation(line: 616, column: 25, scope: !2034)
!2108 = !DILocation(line: 617, column: 23, scope: !2103)
!2109 = !DILocation(line: 618, column: 21, scope: !2034)
!2110 = !DILocation(line: 618, column: 21, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2112, file: !59, discriminator: 1)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !59, line: 618, column: 21)
!2113 = distinct !DILexicalBlock(scope: !2034, file: !59, line: 618, column: 21)
!2114 = !DILocation(line: 618, column: 21, scope: !2113)
!2115 = !DILocation(line: 618, column: 21, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2112, file: !59, discriminator: 2)
!2117 = !DILocation(line: 618, column: 21, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2119, file: !59, discriminator: 4)
!2119 = !DILexicalBlockFile(scope: !2113, file: !59, discriminator: 3)
!2120 = !DILocation(line: 619, column: 29, scope: !2034)
!2121 = !DILocation(line: 619, column: 25, scope: !2034)
!2122 = !DILocation(line: 619, column: 23, scope: !2034)
!2123 = !DILocation(line: 600, column: 17, scope: !2035)
!2124 = !DILocation(line: 622, column: 17, scope: !2026)
!2125 = !DILocation(line: 625, column: 9, scope: !1595)
!2126 = !DILocation(line: 627, column: 15, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1545, file: !59, line: 627, column: 11)
!2128 = !DILocation(line: 627, column: 33, scope: !2127)
!2129 = !DILocation(line: 627, column: 36, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2127, file: !59, discriminator: 1)
!2131 = !DILocation(line: 628, column: 14, scope: !2127)
!2132 = !DILocation(line: 628, column: 17, scope: !2130)
!2133 = !DILocation(line: 629, column: 14, scope: !2127)
!2134 = !DILocation(line: 629, column: 33, scope: !2130)
!2135 = !DILocation(line: 629, column: 35, scope: !2127)
!2136 = !DILocation(line: 629, column: 17, scope: !2127)
!2137 = !DILocation(line: 629, column: 51, scope: !2127)
!2138 = !DILocation(line: 629, column: 53, scope: !2127)
!2139 = !DILocation(line: 629, column: 47, scope: !2127)
!2140 = !DILocation(line: 629, column: 65, scope: !2127)
!2141 = !DILocation(line: 630, column: 11, scope: !2127)
!2142 = !DILocation(line: 630, column: 15, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2127, file: !59, discriminator: 2)
!2144 = !DILocation(line: 627, column: 11, scope: !1545)
!2145 = !DILocation(line: 631, column: 9, scope: !2127)
!2146 = !DILocation(line: 630, column: 15, scope: !2130)
!2147 = !DILocation(line: 634, column: 11, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1545, file: !59, line: 634, column: 11)
!2149 = !DILocation(line: 634, column: 11, scope: !1545)
!2150 = !DILocation(line: 635, column: 9, scope: !2148)
!2151 = !DILocation(line: 636, column: 7, scope: !1545)
!2152 = !DILocation(line: 636, column: 7, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2154, file: !59, discriminator: 1)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !59, line: 636, column: 7)
!2155 = distinct !DILexicalBlock(scope: !1545, file: !59, line: 636, column: 7)
!2156 = !DILocation(line: 636, column: 7, scope: !2155)
!2157 = !DILocation(line: 636, column: 7, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2154, file: !59, discriminator: 2)
!2159 = !DILocation(line: 636, column: 7, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2161, file: !59, discriminator: 4)
!2161 = !DILexicalBlockFile(scope: !2155, file: !59, discriminator: 3)
!2162 = !DILocation(line: 636, column: 7, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2155, file: !59, discriminator: 5)
!2164 = !DILocation(line: 639, column: 7, scope: !1545)
!2165 = !DILocation(line: 639, column: 7, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2167, file: !59, discriminator: 1)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !59, line: 639, column: 7)
!2168 = distinct !DILexicalBlock(scope: !1545, file: !59, line: 639, column: 7)
!2169 = !DILocation(line: 639, column: 7, scope: !2168)
!2170 = !DILocation(line: 639, column: 7, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2167, file: !59, discriminator: 2)
!2172 = !DILocation(line: 639, column: 7, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2174, file: !59, discriminator: 4)
!2174 = !DILexicalBlockFile(scope: !2168, file: !59, discriminator: 3)
!2175 = !DILocation(line: 640, column: 5, scope: !1545)
!2176 = !DILocation(line: 343, column: 75, scope: !1529)
!2177 = !DILocation(line: 343, column: 3, scope: !1529)
!2178 = !DILocation(line: 642, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !1378, file: !59, line: 642, column: 7)
!2180 = !DILocation(line: 642, column: 11, scope: !2179)
!2181 = !DILocation(line: 642, column: 16, scope: !2179)
!2182 = !DILocation(line: 642, column: 19, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2179, file: !59, discriminator: 1)
!2184 = !DILocation(line: 642, column: 33, scope: !2179)
!2185 = !DILocation(line: 643, column: 7, scope: !2179)
!2186 = !DILocation(line: 643, column: 10, scope: !2183)
!2187 = !DILocation(line: 642, column: 7, scope: !1378)
!2188 = !DILocation(line: 644, column: 5, scope: !2179)
!2189 = !DILocation(line: 646, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1378, file: !59, line: 646, column: 7)
!2191 = !DILocation(line: 646, column: 20, scope: !2190)
!2192 = !DILocation(line: 646, column: 24, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2190, file: !59, discriminator: 1)
!2194 = !DILocation(line: 646, column: 7, scope: !1378)
!2195 = !DILocation(line: 647, column: 5, scope: !2190)
!2196 = !DILocation(line: 647, column: 13, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !59, discriminator: 2)
!2198 = !DILexicalBlockFile(scope: !2199, file: !59, discriminator: 1)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !59, line: 647, column: 5)
!2200 = distinct !DILexicalBlock(scope: !2190, file: !59, line: 647, column: 5)
!2201 = !DILocation(line: 647, column: 12, scope: !2199)
!2202 = !DILocation(line: 647, column: 5, scope: !2200)
!2203 = !DILocation(line: 648, column: 7, scope: !2199)
!2204 = !DILocation(line: 648, column: 7, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2206, file: !59, discriminator: 1)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !59, line: 648, column: 7)
!2207 = distinct !DILexicalBlock(scope: !2199, file: !59, line: 648, column: 7)
!2208 = !DILocation(line: 648, column: 7, scope: !2207)
!2209 = !DILocation(line: 648, column: 7, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2206, file: !59, discriminator: 2)
!2211 = !DILocation(line: 648, column: 7, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2213, file: !59, discriminator: 4)
!2213 = !DILexicalBlockFile(scope: !2207, file: !59, discriminator: 3)
!2214 = !DILocation(line: 648, column: 7, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2207, file: !59, discriminator: 5)
!2216 = !DILocation(line: 647, column: 39, scope: !2199)
!2217 = !DILocation(line: 647, column: 5, scope: !2199)
!2218 = !DILocation(line: 648, column: 7, scope: !2200)
!2219 = !DILocation(line: 650, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1378, file: !59, line: 650, column: 7)
!2221 = !DILocation(line: 650, column: 13, scope: !2220)
!2222 = !DILocation(line: 650, column: 11, scope: !2220)
!2223 = !DILocation(line: 650, column: 7, scope: !1378)
!2224 = !DILocation(line: 651, column: 12, scope: !2220)
!2225 = !DILocation(line: 651, column: 5, scope: !2220)
!2226 = !DILocation(line: 651, column: 17, scope: !2220)
!2227 = !DILocation(line: 652, column: 10, scope: !1378)
!2228 = !DILocation(line: 652, column: 3, scope: !1378)
!2229 = !DILocation(line: 657, column: 36, scope: !1378)
!2230 = !DILocation(line: 657, column: 44, scope: !1378)
!2231 = !DILocation(line: 657, column: 56, scope: !1378)
!2232 = !DILocation(line: 657, column: 61, scope: !1378)
!2233 = !DILocation(line: 658, column: 36, scope: !1378)
!2234 = !DILocation(line: 659, column: 36, scope: !1378)
!2235 = !DILocation(line: 659, column: 42, scope: !1378)
!2236 = !DILocation(line: 660, column: 36, scope: !1378)
!2237 = !DILocation(line: 660, column: 48, scope: !1378)
!2238 = !DILocation(line: 657, column: 10, scope: !1378)
!2239 = !DILocation(line: 657, column: 3, scope: !1378)
!2240 = !DILocation(line: 661, column: 1, scope: !1378)
!2241 = distinct !DISubprogram(name: "quotearg_n_options", scope: !59, file: !59, line: 766, type: !2242, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !58, retainedNodes: !11)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!13, !48, !6, !94, !930}
!2244 = !DILocalVariable(name: "n", arg: 1, scope: !2241, file: !59, line: 766, type: !48)
!2245 = !DILocation(line: 766, column: 25, scope: !2241)
!2246 = !DILocalVariable(name: "arg", arg: 2, scope: !2241, file: !59, line: 766, type: !6)
!2247 = !DILocation(line: 766, column: 40, scope: !2241)
!2248 = !DILocalVariable(name: "argsize", arg: 3, scope: !2241, file: !59, line: 766, type: !94)
!2249 = !DILocation(line: 766, column: 52, scope: !2241)
!2250 = !DILocalVariable(name: "options", arg: 4, scope: !2241, file: !59, line: 767, type: !930)
!2251 = !DILocation(line: 767, column: 51, scope: !2241)
!2252 = !DILocalVariable(name: "e", scope: !2241, file: !59, line: 769, type: !48)
!2253 = !DILocation(line: 769, column: 7, scope: !2241)
!2254 = !DILocation(line: 769, column: 11, scope: !2241)
!2255 = !DILocalVariable(name: "n0", scope: !2241, file: !59, line: 771, type: !114)
!2256 = !DILocation(line: 771, column: 16, scope: !2241)
!2257 = !DILocation(line: 771, column: 21, scope: !2241)
!2258 = !DILocalVariable(name: "sv", scope: !2241, file: !59, line: 772, type: !126)
!2259 = !DILocation(line: 772, column: 19, scope: !2241)
!2260 = !DILocation(line: 772, column: 24, scope: !2241)
!2261 = !DILocation(line: 774, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2241, file: !59, line: 774, column: 7)
!2263 = !DILocation(line: 774, column: 9, scope: !2262)
!2264 = !DILocation(line: 774, column: 7, scope: !2241)
!2265 = !DILocation(line: 775, column: 5, scope: !2262)
!2266 = !DILocation(line: 777, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2241, file: !59, line: 777, column: 7)
!2268 = !DILocation(line: 777, column: 17, scope: !2267)
!2269 = !DILocation(line: 777, column: 14, scope: !2267)
!2270 = !DILocation(line: 777, column: 7, scope: !2241)
!2271 = !DILocalVariable(name: "n1", scope: !2272, file: !59, line: 784, type: !94)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !59, line: 778, column: 5)
!2273 = !DILocation(line: 784, column: 14, scope: !2272)
!2274 = !DILocation(line: 784, column: 19, scope: !2272)
!2275 = !DILocation(line: 784, column: 22, scope: !2272)
!2276 = !DILocalVariable(name: "preallocated", scope: !2272, file: !59, line: 785, type: !39)
!2277 = !DILocation(line: 785, column: 12, scope: !2272)
!2278 = !DILocation(line: 785, column: 28, scope: !2272)
!2279 = !DILocation(line: 785, column: 31, scope: !2272)
!2280 = !DILocation(line: 787, column: 11, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2272, file: !59, line: 787, column: 11)
!2282 = !DILocation(line: 787, column: 11, scope: !2272)
!2283 = !DILocation(line: 788, column: 9, scope: !2281)
!2284 = !DILocation(line: 790, column: 32, scope: !2272)
!2285 = !DILocation(line: 790, column: 32, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2272, file: !59, discriminator: 1)
!2287 = !DILocation(line: 790, column: 54, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2272, file: !59, discriminator: 2)
!2289 = !DILocation(line: 790, column: 32, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2291, file: !59, discriminator: 4)
!2291 = !DILexicalBlockFile(scope: !2272, file: !59, discriminator: 3)
!2292 = !DILocation(line: 790, column: 58, scope: !2272)
!2293 = !DILocation(line: 790, column: 61, scope: !2272)
!2294 = !DILocation(line: 790, column: 22, scope: !2272)
!2295 = !DILocation(line: 790, column: 20, scope: !2272)
!2296 = !DILocation(line: 790, column: 15, scope: !2272)
!2297 = !DILocation(line: 791, column: 11, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2272, file: !59, line: 791, column: 11)
!2299 = !DILocation(line: 791, column: 11, scope: !2272)
!2300 = !DILocation(line: 792, column: 10, scope: !2298)
!2301 = !DILocation(line: 792, column: 15, scope: !2298)
!2302 = !DILocation(line: 792, column: 9, scope: !2298)
!2303 = !DILocation(line: 793, column: 15, scope: !2272)
!2304 = !DILocation(line: 793, column: 20, scope: !2272)
!2305 = !DILocation(line: 793, column: 18, scope: !2272)
!2306 = !DILocation(line: 793, column: 7, scope: !2272)
!2307 = !DILocation(line: 793, column: 32, scope: !2272)
!2308 = !DILocation(line: 793, column: 37, scope: !2272)
!2309 = !DILocation(line: 793, column: 35, scope: !2272)
!2310 = !DILocation(line: 793, column: 45, scope: !2272)
!2311 = !DILocation(line: 794, column: 16, scope: !2272)
!2312 = !DILocation(line: 794, column: 14, scope: !2272)
!2313 = !DILocation(line: 795, column: 5, scope: !2272)
!2314 = !DILocalVariable(name: "size", scope: !2315, file: !59, line: 798, type: !94)
!2315 = distinct !DILexicalBlock(scope: !2241, file: !59, line: 797, column: 3)
!2316 = !DILocation(line: 798, column: 12, scope: !2315)
!2317 = !DILocation(line: 798, column: 22, scope: !2315)
!2318 = !DILocation(line: 798, column: 19, scope: !2315)
!2319 = !DILocation(line: 798, column: 25, scope: !2315)
!2320 = !DILocalVariable(name: "val", scope: !2315, file: !59, line: 799, type: !13)
!2321 = !DILocation(line: 799, column: 11, scope: !2315)
!2322 = !DILocation(line: 799, column: 20, scope: !2315)
!2323 = !DILocation(line: 799, column: 17, scope: !2315)
!2324 = !DILocation(line: 799, column: 23, scope: !2315)
!2325 = !DILocalVariable(name: "flags", scope: !2315, file: !59, line: 801, type: !48)
!2326 = !DILocation(line: 801, column: 9, scope: !2315)
!2327 = !DILocation(line: 801, column: 17, scope: !2315)
!2328 = !DILocation(line: 801, column: 26, scope: !2315)
!2329 = !DILocation(line: 801, column: 32, scope: !2315)
!2330 = !DILocalVariable(name: "qsize", scope: !2315, file: !59, line: 802, type: !94)
!2331 = !DILocation(line: 802, column: 12, scope: !2315)
!2332 = !DILocation(line: 802, column: 46, scope: !2315)
!2333 = !DILocation(line: 802, column: 51, scope: !2315)
!2334 = !DILocation(line: 802, column: 57, scope: !2315)
!2335 = !DILocation(line: 802, column: 62, scope: !2315)
!2336 = !DILocation(line: 803, column: 46, scope: !2315)
!2337 = !DILocation(line: 803, column: 55, scope: !2315)
!2338 = !DILocation(line: 803, column: 62, scope: !2315)
!2339 = !DILocation(line: 804, column: 46, scope: !2315)
!2340 = !DILocation(line: 804, column: 55, scope: !2315)
!2341 = !DILocation(line: 805, column: 46, scope: !2315)
!2342 = !DILocation(line: 805, column: 55, scope: !2315)
!2343 = !DILocation(line: 806, column: 46, scope: !2315)
!2344 = !DILocation(line: 806, column: 55, scope: !2315)
!2345 = !DILocation(line: 802, column: 20, scope: !2315)
!2346 = !DILocation(line: 808, column: 9, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2315, file: !59, line: 808, column: 9)
!2348 = !DILocation(line: 808, column: 17, scope: !2347)
!2349 = !DILocation(line: 808, column: 14, scope: !2347)
!2350 = !DILocation(line: 808, column: 9, scope: !2315)
!2351 = !DILocation(line: 810, column: 29, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2347, file: !59, line: 809, column: 7)
!2353 = !DILocation(line: 810, column: 35, scope: !2352)
!2354 = !DILocation(line: 810, column: 27, scope: !2352)
!2355 = !DILocation(line: 810, column: 12, scope: !2352)
!2356 = !DILocation(line: 810, column: 9, scope: !2352)
!2357 = !DILocation(line: 810, column: 15, scope: !2352)
!2358 = !DILocation(line: 810, column: 20, scope: !2352)
!2359 = !DILocation(line: 811, column: 13, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2352, file: !59, line: 811, column: 13)
!2361 = !DILocation(line: 811, column: 17, scope: !2360)
!2362 = !DILocation(line: 811, column: 13, scope: !2352)
!2363 = !DILocation(line: 812, column: 17, scope: !2360)
!2364 = !DILocation(line: 812, column: 11, scope: !2360)
!2365 = !DILocation(line: 813, column: 39, scope: !2352)
!2366 = !DILocation(line: 813, column: 27, scope: !2352)
!2367 = !DILocation(line: 813, column: 25, scope: !2352)
!2368 = !DILocation(line: 813, column: 12, scope: !2352)
!2369 = !DILocation(line: 813, column: 9, scope: !2352)
!2370 = !DILocation(line: 813, column: 15, scope: !2352)
!2371 = !DILocation(line: 813, column: 19, scope: !2352)
!2372 = !DILocation(line: 814, column: 35, scope: !2352)
!2373 = !DILocation(line: 814, column: 40, scope: !2352)
!2374 = !DILocation(line: 814, column: 46, scope: !2352)
!2375 = !DILocation(line: 814, column: 51, scope: !2352)
!2376 = !DILocation(line: 814, column: 60, scope: !2352)
!2377 = !DILocation(line: 814, column: 69, scope: !2352)
!2378 = !DILocation(line: 815, column: 35, scope: !2352)
!2379 = !DILocation(line: 815, column: 42, scope: !2352)
!2380 = !DILocation(line: 815, column: 51, scope: !2352)
!2381 = !DILocation(line: 816, column: 35, scope: !2352)
!2382 = !DILocation(line: 816, column: 44, scope: !2352)
!2383 = !DILocation(line: 817, column: 35, scope: !2352)
!2384 = !DILocation(line: 817, column: 44, scope: !2352)
!2385 = !DILocation(line: 814, column: 9, scope: !2352)
!2386 = !DILocation(line: 818, column: 7, scope: !2352)
!2387 = !DILocation(line: 820, column: 13, scope: !2315)
!2388 = !DILocation(line: 820, column: 5, scope: !2315)
!2389 = !DILocation(line: 820, column: 11, scope: !2315)
!2390 = !DILocation(line: 821, column: 12, scope: !2315)
!2391 = !DILocation(line: 821, column: 5, scope: !2315)
!2392 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !59, file: !59, line: 179, type: !2393, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !58, retainedNodes: !11)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!108, !61}
!2395 = !DILocalVariable(name: "style", arg: 1, scope: !2392, file: !59, line: 179, type: !61)
!2396 = !DILocation(line: 179, column: 48, scope: !2392)
!2397 = !DILocalVariable(name: "o", scope: !2392, file: !59, line: 181, type: !108)
!2398 = !DILocation(line: 181, column: 26, scope: !2392)
!2399 = !DILocation(line: 182, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2392, file: !59, line: 182, column: 7)
!2401 = !DILocation(line: 182, column: 13, scope: !2400)
!2402 = !DILocation(line: 182, column: 7, scope: !2392)
!2403 = !DILocation(line: 183, column: 5, scope: !2400)
!2404 = !DILocation(line: 184, column: 13, scope: !2392)
!2405 = !DILocation(line: 184, column: 5, scope: !2392)
!2406 = !DILocation(line: 184, column: 11, scope: !2392)
!2407 = !DILocation(line: 185, column: 10, scope: !2392)
!2408 = !DILocation(line: 185, column: 3, scope: !2392)
!2409 = distinct !DISubprogram(name: "gettext_quote", scope: !59, file: !59, line: 193, type: !2410, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !58, retainedNodes: !11)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!6, !6, !61}
!2412 = !DILocalVariable(name: "msgid", arg: 1, scope: !2409, file: !59, line: 193, type: !6)
!2413 = !DILocation(line: 193, column: 28, scope: !2409)
!2414 = !DILocalVariable(name: "s", arg: 2, scope: !2409, file: !59, line: 193, type: !61)
!2415 = !DILocation(line: 193, column: 54, scope: !2409)
!2416 = !DILocalVariable(name: "translation", scope: !2409, file: !59, line: 195, type: !6)
!2417 = !DILocation(line: 195, column: 15, scope: !2409)
!2418 = !DILocation(line: 195, column: 29, scope: !2409)
!2419 = !DILocalVariable(name: "locale_code", scope: !2409, file: !59, line: 196, type: !6)
!2420 = !DILocation(line: 196, column: 15, scope: !2409)
!2421 = !DILocation(line: 198, column: 7, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2409, file: !59, line: 198, column: 7)
!2423 = !DILocation(line: 198, column: 22, scope: !2422)
!2424 = !DILocation(line: 198, column: 19, scope: !2422)
!2425 = !DILocation(line: 198, column: 7, scope: !2409)
!2426 = !DILocation(line: 199, column: 12, scope: !2422)
!2427 = !DILocation(line: 199, column: 5, scope: !2422)
!2428 = !DILocation(line: 219, column: 17, scope: !2409)
!2429 = !DILocation(line: 219, column: 15, scope: !2409)
!2430 = !DILocation(line: 220, column: 7, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2409, file: !59, line: 220, column: 7)
!2432 = !DILocation(line: 220, column: 7, scope: !2409)
!2433 = !DILocation(line: 221, column: 12, scope: !2431)
!2434 = !DILocation(line: 221, column: 21, scope: !2431)
!2435 = !DILocation(line: 221, column: 5, scope: !2431)
!2436 = !DILocation(line: 222, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2409, file: !59, line: 222, column: 7)
!2438 = !DILocation(line: 222, column: 7, scope: !2409)
!2439 = !DILocation(line: 223, column: 12, scope: !2437)
!2440 = !DILocation(line: 223, column: 21, scope: !2437)
!2441 = !DILocation(line: 223, column: 5, scope: !2437)
!2442 = !DILocation(line: 225, column: 11, scope: !2409)
!2443 = !DILocation(line: 225, column: 13, scope: !2409)
!2444 = !DILocation(line: 225, column: 3, scope: !2409)
!2445 = !DILocation(line: 226, column: 1, scope: !2409)
!2446 = distinct !DISubprogram(name: "version_etc_arn", scope: !502, file: !502, line: 62, type: !2447, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !501, retainedNodes: !11)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !2449, !6, !6, !6, !2504, !94}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64, align: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2451, line: 48, baseType: !2452)
!2451 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2453, line: 245, size: 1728, align: 64, elements: !2454)
!2453 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2475, !2476, !2477, !2478, !2482, !2483, !2485, !2489, !2492, !2494, !2495, !2496, !2497, !2498, !2499, !2500}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2452, file: !2453, line: 246, baseType: !48, size: 32, align: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2452, file: !2453, line: 251, baseType: !13, size: 64, align: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2452, file: !2453, line: 252, baseType: !13, size: 64, align: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2452, file: !2453, line: 253, baseType: !13, size: 64, align: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2452, file: !2453, line: 254, baseType: !13, size: 64, align: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2452, file: !2453, line: 255, baseType: !13, size: 64, align: 64, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2452, file: !2453, line: 256, baseType: !13, size: 64, align: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2452, file: !2453, line: 257, baseType: !13, size: 64, align: 64, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2452, file: !2453, line: 258, baseType: !13, size: 64, align: 64, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2452, file: !2453, line: 260, baseType: !13, size: 64, align: 64, offset: 576)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2452, file: !2453, line: 261, baseType: !13, size: 64, align: 64, offset: 640)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2452, file: !2453, line: 262, baseType: !13, size: 64, align: 64, offset: 704)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2452, file: !2453, line: 264, baseType: !2468, size: 64, align: 64, offset: 768)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64, align: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2453, line: 160, size: 192, align: 64, elements: !2470)
!2470 = !{!2471, !2472, !2474}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2469, file: !2453, line: 161, baseType: !2468, size: 64, align: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2469, file: !2453, line: 162, baseType: !2473, size: 64, align: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64, align: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2469, file: !2453, line: 166, baseType: !48, size: 32, align: 32, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2452, file: !2453, line: 266, baseType: !2473, size: 64, align: 64, offset: 832)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2452, file: !2453, line: 268, baseType: !48, size: 32, align: 32, offset: 896)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2452, file: !2453, line: 272, baseType: !48, size: 32, align: 32, offset: 928)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2452, file: !2453, line: 274, baseType: !2479, size: 64, align: 64, offset: 960)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2480, line: 131, baseType: !2481)
!2480 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!2481 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2452, file: !2453, line: 278, baseType: !97, size: 16, align: 16, offset: 1024)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2452, file: !2453, line: 279, baseType: !2484, size: 8, align: 8, offset: 1040)
!2484 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2452, file: !2453, line: 280, baseType: !2486, size: 8, align: 8, offset: 1048)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, align: 8, elements: !2487)
!2487 = !{!2488}
!2488 = !DISubrange(count: 1)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2452, file: !2453, line: 284, baseType: !2490, size: 64, align: 64, offset: 1088)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64, align: 64)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2453, line: 154, baseType: null)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2452, file: !2453, line: 293, baseType: !2493, size: 64, align: 64, offset: 1152)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2480, line: 132, baseType: !2481)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2452, file: !2453, line: 302, baseType: !14, size: 64, align: 64, offset: 1216)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2452, file: !2453, line: 303, baseType: !14, size: 64, align: 64, offset: 1280)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2452, file: !2453, line: 304, baseType: !14, size: 64, align: 64, offset: 1344)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2452, file: !2453, line: 305, baseType: !14, size: 64, align: 64, offset: 1408)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2452, file: !2453, line: 306, baseType: !94, size: 64, align: 64, offset: 1472)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2452, file: !2453, line: 308, baseType: !48, size: 32, align: 32, offset: 1536)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2452, file: !2453, line: 310, baseType: !2501, size: 160, align: 8, offset: 1568)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, align: 8, elements: !2502)
!2502 = !{!2503}
!2503 = !DISubrange(count: 20)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!2505 = !DILocalVariable(name: "stream", arg: 1, scope: !2446, file: !502, line: 62, type: !2449)
!2506 = !DILocation(line: 62, column: 24, scope: !2446)
!2507 = !DILocalVariable(name: "command_name", arg: 2, scope: !2446, file: !502, line: 63, type: !6)
!2508 = !DILocation(line: 63, column: 30, scope: !2446)
!2509 = !DILocalVariable(name: "package", arg: 3, scope: !2446, file: !502, line: 63, type: !6)
!2510 = !DILocation(line: 63, column: 56, scope: !2446)
!2511 = !DILocalVariable(name: "version", arg: 4, scope: !2446, file: !502, line: 64, type: !6)
!2512 = !DILocation(line: 64, column: 30, scope: !2446)
!2513 = !DILocalVariable(name: "authors", arg: 5, scope: !2446, file: !502, line: 65, type: !2504)
!2514 = !DILocation(line: 65, column: 39, scope: !2446)
!2515 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2446, file: !502, line: 65, type: !94)
!2516 = !DILocation(line: 65, column: 55, scope: !2446)
!2517 = !DILocation(line: 67, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2446, file: !502, line: 67, column: 7)
!2519 = !DILocation(line: 67, column: 7, scope: !2446)
!2520 = !DILocation(line: 68, column: 14, scope: !2518)
!2521 = !DILocation(line: 68, column: 38, scope: !2518)
!2522 = !DILocation(line: 68, column: 52, scope: !2518)
!2523 = !DILocation(line: 68, column: 61, scope: !2518)
!2524 = !DILocation(line: 68, column: 5, scope: !2518)
!2525 = !DILocation(line: 70, column: 14, scope: !2518)
!2526 = !DILocation(line: 70, column: 33, scope: !2518)
!2527 = !DILocation(line: 70, column: 42, scope: !2518)
!2528 = !DILocation(line: 70, column: 5, scope: !2518)
!2529 = !DILocation(line: 84, column: 12, scope: !2446)
!2530 = !DILocation(line: 84, column: 43, scope: !2446)
!2531 = !DILocation(line: 84, column: 3, scope: !2446)
!2532 = !DILocation(line: 86, column: 3, scope: !2446)
!2533 = !DILocation(line: 95, column: 11, scope: !2446)
!2534 = !DILocation(line: 95, column: 3, scope: !2446)
!2535 = !DILocation(line: 99, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2446, file: !502, line: 96, column: 5)
!2537 = !DILocation(line: 102, column: 16, scope: !2536)
!2538 = !DILocation(line: 102, column: 24, scope: !2536)
!2539 = !DILocation(line: 102, column: 47, scope: !2536)
!2540 = !DILocation(line: 102, column: 7, scope: !2536)
!2541 = !DILocation(line: 103, column: 7, scope: !2536)
!2542 = !DILocation(line: 106, column: 16, scope: !2536)
!2543 = !DILocation(line: 106, column: 24, scope: !2536)
!2544 = !DILocation(line: 106, column: 54, scope: !2536)
!2545 = !DILocation(line: 106, column: 66, scope: !2536)
!2546 = !DILocation(line: 106, column: 7, scope: !2536)
!2547 = !DILocation(line: 107, column: 7, scope: !2536)
!2548 = !DILocation(line: 110, column: 16, scope: !2536)
!2549 = !DILocation(line: 110, column: 24, scope: !2536)
!2550 = !DILocation(line: 111, column: 16, scope: !2536)
!2551 = !DILocation(line: 111, column: 28, scope: !2536)
!2552 = !DILocation(line: 111, column: 40, scope: !2536)
!2553 = !DILocation(line: 110, column: 7, scope: !2536)
!2554 = !DILocation(line: 112, column: 7, scope: !2536)
!2555 = !DILocation(line: 117, column: 16, scope: !2536)
!2556 = !DILocation(line: 117, column: 24, scope: !2536)
!2557 = !DILocation(line: 118, column: 16, scope: !2536)
!2558 = !DILocation(line: 118, column: 28, scope: !2536)
!2559 = !DILocation(line: 118, column: 40, scope: !2536)
!2560 = !DILocation(line: 118, column: 52, scope: !2536)
!2561 = !DILocation(line: 117, column: 7, scope: !2536)
!2562 = !DILocation(line: 119, column: 7, scope: !2536)
!2563 = !DILocation(line: 124, column: 16, scope: !2536)
!2564 = !DILocation(line: 124, column: 24, scope: !2536)
!2565 = !DILocation(line: 125, column: 16, scope: !2536)
!2566 = !DILocation(line: 125, column: 28, scope: !2536)
!2567 = !DILocation(line: 125, column: 40, scope: !2536)
!2568 = !DILocation(line: 125, column: 52, scope: !2536)
!2569 = !DILocation(line: 125, column: 64, scope: !2536)
!2570 = !DILocation(line: 124, column: 7, scope: !2536)
!2571 = !DILocation(line: 126, column: 7, scope: !2536)
!2572 = !DILocation(line: 131, column: 16, scope: !2536)
!2573 = !DILocation(line: 131, column: 24, scope: !2536)
!2574 = !DILocation(line: 132, column: 16, scope: !2536)
!2575 = !DILocation(line: 132, column: 28, scope: !2536)
!2576 = !DILocation(line: 132, column: 40, scope: !2536)
!2577 = !DILocation(line: 132, column: 52, scope: !2536)
!2578 = !DILocation(line: 132, column: 64, scope: !2536)
!2579 = !DILocation(line: 133, column: 16, scope: !2536)
!2580 = !DILocation(line: 131, column: 7, scope: !2536)
!2581 = !DILocation(line: 134, column: 7, scope: !2536)
!2582 = !DILocation(line: 139, column: 16, scope: !2536)
!2583 = !DILocation(line: 139, column: 24, scope: !2536)
!2584 = !DILocation(line: 140, column: 16, scope: !2536)
!2585 = !DILocation(line: 140, column: 28, scope: !2536)
!2586 = !DILocation(line: 140, column: 40, scope: !2536)
!2587 = !DILocation(line: 140, column: 52, scope: !2536)
!2588 = !DILocation(line: 140, column: 64, scope: !2536)
!2589 = !DILocation(line: 141, column: 16, scope: !2536)
!2590 = !DILocation(line: 141, column: 28, scope: !2536)
!2591 = !DILocation(line: 139, column: 7, scope: !2536)
!2592 = !DILocation(line: 142, column: 7, scope: !2536)
!2593 = !DILocation(line: 147, column: 16, scope: !2536)
!2594 = !DILocation(line: 147, column: 24, scope: !2536)
!2595 = !DILocation(line: 149, column: 17, scope: !2536)
!2596 = !DILocation(line: 149, column: 29, scope: !2536)
!2597 = !DILocation(line: 149, column: 41, scope: !2536)
!2598 = !DILocation(line: 149, column: 53, scope: !2536)
!2599 = !DILocation(line: 149, column: 65, scope: !2536)
!2600 = !DILocation(line: 150, column: 17, scope: !2536)
!2601 = !DILocation(line: 150, column: 29, scope: !2536)
!2602 = !DILocation(line: 150, column: 41, scope: !2536)
!2603 = !DILocation(line: 147, column: 7, scope: !2536)
!2604 = !DILocation(line: 151, column: 7, scope: !2536)
!2605 = !DILocation(line: 156, column: 16, scope: !2536)
!2606 = !DILocation(line: 156, column: 24, scope: !2536)
!2607 = !DILocation(line: 158, column: 16, scope: !2536)
!2608 = !DILocation(line: 158, column: 28, scope: !2536)
!2609 = !DILocation(line: 158, column: 40, scope: !2536)
!2610 = !DILocation(line: 158, column: 52, scope: !2536)
!2611 = !DILocation(line: 158, column: 64, scope: !2536)
!2612 = !DILocation(line: 159, column: 16, scope: !2536)
!2613 = !DILocation(line: 159, column: 28, scope: !2536)
!2614 = !DILocation(line: 159, column: 40, scope: !2536)
!2615 = !DILocation(line: 159, column: 52, scope: !2536)
!2616 = !DILocation(line: 156, column: 7, scope: !2536)
!2617 = !DILocation(line: 160, column: 7, scope: !2536)
!2618 = !DILocation(line: 167, column: 16, scope: !2536)
!2619 = !DILocation(line: 167, column: 24, scope: !2536)
!2620 = !DILocation(line: 169, column: 17, scope: !2536)
!2621 = !DILocation(line: 169, column: 29, scope: !2536)
!2622 = !DILocation(line: 169, column: 41, scope: !2536)
!2623 = !DILocation(line: 169, column: 53, scope: !2536)
!2624 = !DILocation(line: 169, column: 65, scope: !2536)
!2625 = !DILocation(line: 170, column: 17, scope: !2536)
!2626 = !DILocation(line: 170, column: 29, scope: !2536)
!2627 = !DILocation(line: 170, column: 41, scope: !2536)
!2628 = !DILocation(line: 170, column: 53, scope: !2536)
!2629 = !DILocation(line: 167, column: 7, scope: !2536)
!2630 = !DILocation(line: 171, column: 7, scope: !2536)
!2631 = !DILocation(line: 173, column: 1, scope: !2446)
!2632 = distinct !DISubprogram(name: "version_etc_ar", scope: !502, file: !502, line: 180, type: !2633, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !501, retainedNodes: !11)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{null, !2449, !6, !6, !6, !2504}
!2635 = !DILocalVariable(name: "stream", arg: 1, scope: !2632, file: !502, line: 180, type: !2449)
!2636 = !DILocation(line: 180, column: 23, scope: !2632)
!2637 = !DILocalVariable(name: "command_name", arg: 2, scope: !2632, file: !502, line: 181, type: !6)
!2638 = !DILocation(line: 181, column: 29, scope: !2632)
!2639 = !DILocalVariable(name: "package", arg: 3, scope: !2632, file: !502, line: 181, type: !6)
!2640 = !DILocation(line: 181, column: 55, scope: !2632)
!2641 = !DILocalVariable(name: "version", arg: 4, scope: !2632, file: !502, line: 182, type: !6)
!2642 = !DILocation(line: 182, column: 29, scope: !2632)
!2643 = !DILocalVariable(name: "authors", arg: 5, scope: !2632, file: !502, line: 182, type: !2504)
!2644 = !DILocation(line: 182, column: 59, scope: !2632)
!2645 = !DILocalVariable(name: "n_authors", scope: !2632, file: !502, line: 184, type: !94)
!2646 = !DILocation(line: 184, column: 10, scope: !2632)
!2647 = !DILocation(line: 186, column: 18, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2632, file: !502, line: 186, column: 3)
!2649 = !DILocation(line: 186, column: 8, scope: !2648)
!2650 = !DILocation(line: 186, column: 31, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2652, file: !502, discriminator: 4)
!2652 = !DILexicalBlockFile(scope: !2653, file: !502, discriminator: 1)
!2653 = distinct !DILexicalBlock(scope: !2648, file: !502, line: 186, column: 3)
!2654 = !DILocation(line: 186, column: 23, scope: !2653)
!2655 = !DILocation(line: 186, column: 3, scope: !2648)
!2656 = !DILocation(line: 186, column: 3, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !2648, file: !502, discriminator: 2)
!2658 = !DILocation(line: 186, column: 52, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2653, file: !502, discriminator: 3)
!2660 = !DILocation(line: 186, column: 3, scope: !2653)
!2661 = !DILocation(line: 188, column: 20, scope: !2632)
!2662 = !DILocation(line: 188, column: 28, scope: !2632)
!2663 = !DILocation(line: 188, column: 42, scope: !2632)
!2664 = !DILocation(line: 188, column: 51, scope: !2632)
!2665 = !DILocation(line: 188, column: 60, scope: !2632)
!2666 = !DILocation(line: 188, column: 69, scope: !2632)
!2667 = !DILocation(line: 188, column: 3, scope: !2632)
!2668 = !DILocation(line: 189, column: 1, scope: !2632)
!2669 = distinct !DISubprogram(name: "version_etc_va", scope: !502, file: !502, line: 196, type: !2670, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !501, retainedNodes: !11)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !2449, !6, !6, !6, !2672}
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64, align: 64)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !502, line: 189, baseType: !2674)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !502, line: 189, size: 192, align: 64, elements: !2675)
!2675 = !{!2676, !2677, !2678, !2679}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2674, file: !502, line: 189, baseType: !114, size: 32, align: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2674, file: !502, line: 189, baseType: !114, size: 32, align: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2674, file: !502, line: 189, baseType: !14, size: 64, align: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2674, file: !502, line: 189, baseType: !14, size: 64, align: 64, offset: 128)
!2680 = !DILocalVariable(name: "stream", arg: 1, scope: !2669, file: !502, line: 196, type: !2449)
!2681 = !DILocation(line: 196, column: 23, scope: !2669)
!2682 = !DILocalVariable(name: "command_name", arg: 2, scope: !2669, file: !502, line: 197, type: !6)
!2683 = !DILocation(line: 197, column: 29, scope: !2669)
!2684 = !DILocalVariable(name: "package", arg: 3, scope: !2669, file: !502, line: 197, type: !6)
!2685 = !DILocation(line: 197, column: 55, scope: !2669)
!2686 = !DILocalVariable(name: "version", arg: 4, scope: !2669, file: !502, line: 198, type: !6)
!2687 = !DILocation(line: 198, column: 29, scope: !2669)
!2688 = !DILocalVariable(name: "authors", arg: 5, scope: !2669, file: !502, line: 198, type: !2672)
!2689 = !DILocation(line: 198, column: 46, scope: !2669)
!2690 = !DILocalVariable(name: "n_authors", scope: !2669, file: !502, line: 200, type: !94)
!2691 = !DILocation(line: 200, column: 10, scope: !2669)
!2692 = !DILocalVariable(name: "authtab", scope: !2669, file: !502, line: 201, type: !2693)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, align: 64, elements: !2694)
!2694 = !{!2695}
!2695 = !DISubrange(count: 10)
!2696 = !DILocation(line: 201, column: 15, scope: !2669)
!2697 = !DILocation(line: 203, column: 18, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2669, file: !502, line: 203, column: 3)
!2699 = !DILocation(line: 203, column: 8, scope: !2698)
!2700 = !DILocation(line: 204, column: 8, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !502, line: 203, column: 3)
!2702 = !DILocation(line: 204, column: 18, scope: !2701)
!2703 = !DILocation(line: 205, column: 10, scope: !2701)
!2704 = !DILocation(line: 205, column: 35, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2701, file: !502, discriminator: 1)
!2706 = !DILocation(line: 205, column: 35, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2701, file: !502, discriminator: 2)
!2708 = !DILocation(line: 205, column: 35, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2701, file: !502, discriminator: 3)
!2710 = !DILocation(line: 205, column: 35, scope: !2701)
!2711 = !DILocation(line: 205, column: 35, scope: !2712)
!2712 = !DILexicalBlockFile(scope: !2713, file: !502, discriminator: 5)
!2713 = !DILexicalBlockFile(scope: !2701, file: !502, discriminator: 4)
!2714 = !DILocation(line: 205, column: 22, scope: !2701)
!2715 = !DILocation(line: 205, column: 14, scope: !2701)
!2716 = !DILocation(line: 205, column: 33, scope: !2701)
!2717 = !DILocation(line: 205, column: 67, scope: !2701)
!2718 = !DILocation(line: 203, column: 3, scope: !2698)
!2719 = !DILocation(line: 203, column: 3, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2698, file: !502, discriminator: 1)
!2721 = !DILocation(line: 206, column: 17, scope: !2701)
!2722 = !DILocation(line: 203, column: 3, scope: !2701)
!2723 = !DILocation(line: 208, column: 20, scope: !2669)
!2724 = !DILocation(line: 208, column: 28, scope: !2669)
!2725 = !DILocation(line: 208, column: 42, scope: !2669)
!2726 = !DILocation(line: 208, column: 51, scope: !2669)
!2727 = !DILocation(line: 209, column: 20, scope: !2669)
!2728 = !DILocation(line: 209, column: 29, scope: !2669)
!2729 = !DILocation(line: 208, column: 3, scope: !2669)
!2730 = !DILocation(line: 210, column: 1, scope: !2669)
!2731 = distinct !DISubprogram(name: "version_etc", scope: !502, file: !502, line: 227, type: !2732, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !501, retainedNodes: !11)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{null, !2449, !6, !6, !6, null}
!2734 = !DILocalVariable(name: "stream", arg: 1, scope: !2731, file: !502, line: 227, type: !2449)
!2735 = !DILocation(line: 227, column: 20, scope: !2731)
!2736 = !DILocalVariable(name: "command_name", arg: 2, scope: !2731, file: !502, line: 228, type: !6)
!2737 = !DILocation(line: 228, column: 26, scope: !2731)
!2738 = !DILocalVariable(name: "package", arg: 3, scope: !2731, file: !502, line: 228, type: !6)
!2739 = !DILocation(line: 228, column: 52, scope: !2731)
!2740 = !DILocalVariable(name: "version", arg: 4, scope: !2731, file: !502, line: 229, type: !6)
!2741 = !DILocation(line: 229, column: 26, scope: !2731)
!2742 = !DILocalVariable(name: "authors", scope: !2731, file: !502, line: 231, type: !2743)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2451, line: 79, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2745, line: 50, baseType: !2746)
!2745 = !DIFile(filename: "/usr/data/lobo/llvm/llvm-3.7.0/build/bin/../lib/clang/3.7.0/include/stdarg.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !502, line: 231, baseType: !2747)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2673, size: 192, align: 64, elements: !2487)
!2748 = !DILocation(line: 231, column: 11, scope: !2731)
!2749 = !DILocation(line: 233, column: 3, scope: !2731)
!2750 = !DILocation(line: 234, column: 19, scope: !2731)
!2751 = !DILocation(line: 234, column: 27, scope: !2731)
!2752 = !DILocation(line: 234, column: 41, scope: !2731)
!2753 = !DILocation(line: 234, column: 50, scope: !2731)
!2754 = !DILocation(line: 234, column: 59, scope: !2731)
!2755 = !DILocation(line: 234, column: 3, scope: !2731)
!2756 = !DILocation(line: 235, column: 3, scope: !2731)
!2757 = !DILocation(line: 236, column: 1, scope: !2731)
!2758 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !502, file: !502, line: 239, type: !666, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !501, retainedNodes: !11)
!2759 = !DILocation(line: 245, column: 11, scope: !2758)
!2760 = !DILocation(line: 245, column: 3, scope: !2758)
!2761 = !DILocation(line: 251, column: 11, scope: !2758)
!2762 = !DILocation(line: 251, column: 3, scope: !2758)
!2763 = !DILocation(line: 256, column: 3, scope: !2758)
!2764 = !DILocation(line: 258, column: 1, scope: !2758)
!2765 = distinct !DISubprogram(name: "xnmalloc", scope: !512, file: !512, line: 104, type: !2766, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!14, !94, !94}
!2768 = !DILocalVariable(name: "n", arg: 1, scope: !2765, file: !512, line: 104, type: !94)
!2769 = !DILocation(line: 104, column: 18, scope: !2765)
!2770 = !DILocalVariable(name: "s", arg: 2, scope: !2765, file: !512, line: 104, type: !94)
!2771 = !DILocation(line: 104, column: 28, scope: !2765)
!2772 = !DILocation(line: 106, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2765, file: !512, line: 106, column: 7)
!2774 = !DILocation(line: 106, column: 7, scope: !2765)
!2775 = !DILocation(line: 107, column: 5, scope: !2773)
!2776 = !DILocation(line: 108, column: 19, scope: !2765)
!2777 = !DILocation(line: 108, column: 23, scope: !2765)
!2778 = !DILocation(line: 108, column: 21, scope: !2765)
!2779 = !DILocation(line: 108, column: 10, scope: !2765)
!2780 = !DILocation(line: 108, column: 3, scope: !2765)
!2781 = distinct !DISubprogram(name: "xmalloc", scope: !509, file: !509, line: 39, type: !2782, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!2782 = !DISubroutineType(types: !526)
!2783 = !DILocalVariable(name: "n", arg: 1, scope: !2781, file: !509, line: 39, type: !94)
!2784 = !DILocation(line: 39, column: 17, scope: !2781)
!2785 = !DILocalVariable(name: "p", scope: !2781, file: !509, line: 41, type: !14)
!2786 = !DILocation(line: 41, column: 9, scope: !2781)
!2787 = !DILocation(line: 41, column: 21, scope: !2781)
!2788 = !DILocation(line: 41, column: 13, scope: !2781)
!2789 = !DILocation(line: 42, column: 8, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2781, file: !509, line: 42, column: 7)
!2791 = !DILocation(line: 42, column: 10, scope: !2790)
!2792 = !DILocation(line: 42, column: 13, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !2790, file: !509, discriminator: 1)
!2794 = !DILocation(line: 42, column: 15, scope: !2790)
!2795 = !DILocation(line: 42, column: 7, scope: !2781)
!2796 = !DILocation(line: 43, column: 5, scope: !2790)
!2797 = !DILocation(line: 44, column: 10, scope: !2781)
!2798 = !DILocation(line: 44, column: 3, scope: !2781)
!2799 = distinct !DISubprogram(name: "xnrealloc", scope: !512, file: !512, line: 117, type: !2800, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!14, !14, !94, !94}
!2802 = !DILocalVariable(name: "p", arg: 1, scope: !2799, file: !512, line: 117, type: !14)
!2803 = !DILocation(line: 117, column: 18, scope: !2799)
!2804 = !DILocalVariable(name: "n", arg: 2, scope: !2799, file: !512, line: 117, type: !94)
!2805 = !DILocation(line: 117, column: 28, scope: !2799)
!2806 = !DILocalVariable(name: "s", arg: 3, scope: !2799, file: !512, line: 117, type: !94)
!2807 = !DILocation(line: 117, column: 38, scope: !2799)
!2808 = !DILocation(line: 119, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2799, file: !512, line: 119, column: 7)
!2810 = !DILocation(line: 119, column: 7, scope: !2799)
!2811 = !DILocation(line: 120, column: 5, scope: !2809)
!2812 = !DILocation(line: 121, column: 20, scope: !2799)
!2813 = !DILocation(line: 121, column: 23, scope: !2799)
!2814 = !DILocation(line: 121, column: 27, scope: !2799)
!2815 = !DILocation(line: 121, column: 25, scope: !2799)
!2816 = !DILocation(line: 121, column: 10, scope: !2799)
!2817 = !DILocation(line: 121, column: 3, scope: !2799)
!2818 = distinct !DISubprogram(name: "xrealloc", scope: !509, file: !509, line: 51, type: !2819, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!14, !14, !94}
!2821 = !DILocalVariable(name: "p", arg: 1, scope: !2818, file: !509, line: 51, type: !14)
!2822 = !DILocation(line: 51, column: 17, scope: !2818)
!2823 = !DILocalVariable(name: "n", arg: 2, scope: !2818, file: !509, line: 51, type: !94)
!2824 = !DILocation(line: 51, column: 27, scope: !2818)
!2825 = !DILocation(line: 53, column: 8, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2818, file: !509, line: 53, column: 7)
!2827 = !DILocation(line: 53, column: 10, scope: !2826)
!2828 = !DILocation(line: 53, column: 13, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2826, file: !509, discriminator: 1)
!2830 = !DILocation(line: 53, column: 7, scope: !2818)
!2831 = !DILocation(line: 57, column: 13, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2826, file: !509, line: 54, column: 5)
!2833 = !DILocation(line: 57, column: 7, scope: !2832)
!2834 = !DILocation(line: 58, column: 7, scope: !2832)
!2835 = !DILocation(line: 61, column: 16, scope: !2818)
!2836 = !DILocation(line: 61, column: 19, scope: !2818)
!2837 = !DILocation(line: 61, column: 7, scope: !2818)
!2838 = !DILocation(line: 61, column: 5, scope: !2818)
!2839 = !DILocation(line: 62, column: 8, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2818, file: !509, line: 62, column: 7)
!2841 = !DILocation(line: 62, column: 10, scope: !2840)
!2842 = !DILocation(line: 62, column: 13, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2840, file: !509, discriminator: 1)
!2844 = !DILocation(line: 62, column: 7, scope: !2818)
!2845 = !DILocation(line: 63, column: 5, scope: !2840)
!2846 = !DILocation(line: 64, column: 10, scope: !2818)
!2847 = !DILocation(line: 64, column: 3, scope: !2818)
!2848 = !DILocation(line: 65, column: 1, scope: !2818)
!2849 = !DILocalVariable(name: "p", arg: 1, scope: !513, file: !512, line: 179, type: !14)
!2850 = !DILocation(line: 179, column: 19, scope: !513)
!2851 = !DILocalVariable(name: "pn", arg: 2, scope: !513, file: !512, line: 179, type: !516)
!2852 = !DILocation(line: 179, column: 30, scope: !513)
!2853 = !DILocalVariable(name: "s", arg: 3, scope: !513, file: !512, line: 179, type: !94)
!2854 = !DILocation(line: 179, column: 41, scope: !513)
!2855 = !DILocalVariable(name: "n", scope: !513, file: !512, line: 181, type: !94)
!2856 = !DILocation(line: 181, column: 10, scope: !513)
!2857 = !DILocation(line: 181, column: 15, scope: !513)
!2858 = !DILocation(line: 181, column: 14, scope: !513)
!2859 = !DILocation(line: 183, column: 9, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !513, file: !512, line: 183, column: 7)
!2861 = !DILocation(line: 183, column: 7, scope: !513)
!2862 = !DILocation(line: 185, column: 13, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !512, line: 185, column: 11)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !512, line: 184, column: 5)
!2865 = !DILocation(line: 185, column: 11, scope: !2864)
!2866 = !DILocation(line: 193, column: 32, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !512, line: 186, column: 9)
!2868 = !DILocation(line: 193, column: 30, scope: !2867)
!2869 = !DILocation(line: 193, column: 13, scope: !2867)
!2870 = !DILocation(line: 194, column: 17, scope: !2867)
!2871 = !DILocation(line: 194, column: 16, scope: !2867)
!2872 = !DILocation(line: 194, column: 13, scope: !2867)
!2873 = !DILocation(line: 195, column: 9, scope: !2867)
!2874 = !DILocation(line: 196, column: 5, scope: !2864)
!2875 = !DILocation(line: 203, column: 33, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !512, line: 203, column: 11)
!2877 = distinct !DILexicalBlock(scope: !2860, file: !512, line: 198, column: 5)
!2878 = !DILocation(line: 203, column: 31, scope: !2876)
!2879 = !DILocation(line: 203, column: 38, scope: !2876)
!2880 = !DILocation(line: 203, column: 35, scope: !2876)
!2881 = !DILocation(line: 203, column: 11, scope: !2877)
!2882 = !DILocation(line: 204, column: 9, scope: !2876)
!2883 = !DILocation(line: 205, column: 12, scope: !2877)
!2884 = !DILocation(line: 205, column: 14, scope: !2877)
!2885 = !DILocation(line: 205, column: 18, scope: !2877)
!2886 = !DILocation(line: 205, column: 9, scope: !2877)
!2887 = !DILocation(line: 208, column: 9, scope: !513)
!2888 = !DILocation(line: 208, column: 4, scope: !513)
!2889 = !DILocation(line: 208, column: 7, scope: !513)
!2890 = !DILocation(line: 209, column: 20, scope: !513)
!2891 = !DILocation(line: 209, column: 23, scope: !513)
!2892 = !DILocation(line: 209, column: 27, scope: !513)
!2893 = !DILocation(line: 209, column: 25, scope: !513)
!2894 = !DILocation(line: 209, column: 10, scope: !513)
!2895 = !DILocation(line: 209, column: 3, scope: !513)
!2896 = distinct !DISubprogram(name: "xcharalloc", scope: !512, file: !512, line: 218, type: !2897, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!13, !94}
!2899 = !DILocalVariable(name: "n", arg: 1, scope: !2896, file: !512, line: 218, type: !94)
!2900 = !DILocation(line: 218, column: 20, scope: !2896)
!2901 = !DILocation(line: 220, column: 10, scope: !2896)
!2902 = !DILocation(line: 220, column: 3, scope: !2896)
!2903 = distinct !DISubprogram(name: "x2realloc", scope: !509, file: !509, line: 74, type: !2904, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!14, !14, !516}
!2906 = !DILocalVariable(name: "p", arg: 1, scope: !2903, file: !509, line: 74, type: !14)
!2907 = !DILocation(line: 74, column: 18, scope: !2903)
!2908 = !DILocalVariable(name: "pn", arg: 2, scope: !2903, file: !509, line: 74, type: !516)
!2909 = !DILocation(line: 74, column: 29, scope: !2903)
!2910 = !DILocation(line: 76, column: 22, scope: !2903)
!2911 = !DILocation(line: 76, column: 25, scope: !2903)
!2912 = !DILocation(line: 76, column: 10, scope: !2903)
!2913 = !DILocation(line: 76, column: 3, scope: !2903)
!2914 = distinct !DISubprogram(name: "xzalloc", scope: !509, file: !509, line: 84, type: !2782, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!2915 = !DILocalVariable(name: "s", arg: 1, scope: !2914, file: !509, line: 84, type: !94)
!2916 = !DILocation(line: 84, column: 17, scope: !2914)
!2917 = !DILocation(line: 86, column: 27, scope: !2914)
!2918 = !DILocation(line: 86, column: 18, scope: !2914)
!2919 = !DILocation(line: 86, column: 34, scope: !2914)
!2920 = !DILocation(line: 86, column: 10, scope: !2914)
!2921 = !DILocation(line: 86, column: 3, scope: !2914)
!2922 = distinct !DISubprogram(name: "xcalloc", scope: !509, file: !509, line: 93, type: !2766, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!2923 = !DILocalVariable(name: "n", arg: 1, scope: !2922, file: !509, line: 93, type: !94)
!2924 = !DILocation(line: 93, column: 17, scope: !2922)
!2925 = !DILocalVariable(name: "s", arg: 2, scope: !2922, file: !509, line: 93, type: !94)
!2926 = !DILocation(line: 93, column: 27, scope: !2922)
!2927 = !DILocalVariable(name: "p", scope: !2922, file: !509, line: 95, type: !14)
!2928 = !DILocation(line: 95, column: 9, scope: !2922)
!2929 = !DILocation(line: 101, column: 26, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2922, file: !509, line: 100, column: 7)
!2931 = !DILocation(line: 101, column: 29, scope: !2930)
!2932 = !DILocation(line: 101, column: 18, scope: !2930)
!2933 = !DILocation(line: 101, column: 16, scope: !2930)
!2934 = !DILocation(line: 100, column: 7, scope: !2922)
!2935 = !DILocation(line: 102, column: 5, scope: !2930)
!2936 = !DILocation(line: 103, column: 10, scope: !2922)
!2937 = !DILocation(line: 103, column: 3, scope: !2922)
!2938 = distinct !DISubprogram(name: "xmemdup", scope: !509, file: !509, line: 111, type: !2939, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!14, !2941, !94}
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64, align: 64)
!2942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2943 = !DILocalVariable(name: "p", arg: 1, scope: !2938, file: !509, line: 111, type: !2941)
!2944 = !DILocation(line: 111, column: 22, scope: !2938)
!2945 = !DILocalVariable(name: "s", arg: 2, scope: !2938, file: !509, line: 111, type: !94)
!2946 = !DILocation(line: 111, column: 32, scope: !2938)
!2947 = !DILocation(line: 113, column: 27, scope: !2938)
!2948 = !DILocation(line: 113, column: 18, scope: !2938)
!2949 = !DILocation(line: 113, column: 31, scope: !2938)
!2950 = !DILocation(line: 113, column: 34, scope: !2938)
!2951 = !DILocation(line: 113, column: 10, scope: !2938)
!2952 = !DILocation(line: 113, column: 3, scope: !2938)
!2953 = distinct !DISubprogram(name: "xstrdup", scope: !509, file: !509, line: 119, type: !1138, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !508, retainedNodes: !11)
!2954 = !DILocalVariable(name: "string", arg: 1, scope: !2953, file: !509, line: 119, type: !6)
!2955 = !DILocation(line: 119, column: 22, scope: !2953)
!2956 = !DILocation(line: 121, column: 19, scope: !2953)
!2957 = !DILocation(line: 121, column: 35, scope: !2953)
!2958 = !DILocation(line: 121, column: 27, scope: !2953)
!2959 = !DILocation(line: 121, column: 43, scope: !2953)
!2960 = !DILocation(line: 121, column: 10, scope: !2953)
!2961 = !DILocation(line: 121, column: 3, scope: !2953)
!2962 = distinct !DISubprogram(name: "xalloc_die", scope: !521, file: !521, line: 32, type: !666, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !520, retainedNodes: !11)
!2963 = !DILocation(line: 34, column: 10, scope: !2962)
!2964 = !DILocation(line: 34, column: 33, scope: !2962)
!2965 = !DILocation(line: 34, column: 3, scope: !2962)
!2966 = !DILocation(line: 40, column: 3, scope: !2962)
!2967 = !DILocation(line: 41, column: 1, scope: !2962)
!2968 = distinct !DISubprogram(name: "rpl_calloc", scope: !523, file: !523, line: 42, type: !2766, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !522, retainedNodes: !11)
!2969 = !DILocalVariable(name: "n", arg: 1, scope: !2968, file: !523, line: 42, type: !94)
!2970 = !DILocation(line: 42, column: 20, scope: !2968)
!2971 = !DILocalVariable(name: "s", arg: 2, scope: !2968, file: !523, line: 42, type: !94)
!2972 = !DILocation(line: 42, column: 30, scope: !2968)
!2973 = !DILocalVariable(name: "result", scope: !2968, file: !523, line: 44, type: !14)
!2974 = !DILocation(line: 44, column: 9, scope: !2968)
!2975 = !DILocation(line: 47, column: 7, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2968, file: !523, line: 47, column: 7)
!2977 = !DILocation(line: 47, column: 9, scope: !2976)
!2978 = !DILocation(line: 47, column: 14, scope: !2976)
!2979 = !DILocation(line: 47, column: 17, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !2976, file: !523, discriminator: 1)
!2981 = !DILocation(line: 47, column: 19, scope: !2976)
!2982 = !DILocation(line: 47, column: 7, scope: !2968)
!2983 = !DILocation(line: 49, column: 9, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2976, file: !523, line: 48, column: 5)
!2985 = !DILocation(line: 50, column: 9, scope: !2984)
!2986 = !DILocation(line: 51, column: 5, scope: !2984)
!2987 = !DILocalVariable(name: "bytes", scope: !2988, file: !523, line: 56, type: !94)
!2988 = distinct !DILexicalBlock(scope: !2976, file: !523, line: 53, column: 5)
!2989 = !DILocation(line: 56, column: 14, scope: !2988)
!2990 = !DILocation(line: 56, column: 22, scope: !2988)
!2991 = !DILocation(line: 56, column: 26, scope: !2988)
!2992 = !DILocation(line: 56, column: 24, scope: !2988)
!2993 = !DILocation(line: 57, column: 11, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2988, file: !523, line: 57, column: 11)
!2995 = !DILocation(line: 57, column: 19, scope: !2994)
!2996 = !DILocation(line: 57, column: 17, scope: !2994)
!2997 = !DILocation(line: 57, column: 24, scope: !2994)
!2998 = !DILocation(line: 57, column: 21, scope: !2994)
!2999 = !DILocation(line: 57, column: 11, scope: !2988)
!3000 = !DILocation(line: 59, column: 11, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2994, file: !523, line: 58, column: 9)
!3002 = !DILocation(line: 59, column: 17, scope: !3001)
!3003 = !DILocation(line: 60, column: 11, scope: !3001)
!3004 = !DILocation(line: 65, column: 20, scope: !2968)
!3005 = !DILocation(line: 65, column: 23, scope: !2968)
!3006 = !DILocation(line: 65, column: 12, scope: !2968)
!3007 = !DILocation(line: 65, column: 10, scope: !2968)
!3008 = !DILocation(line: 72, column: 10, scope: !2968)
!3009 = !DILocation(line: 72, column: 3, scope: !2968)
!3010 = !DILocation(line: 73, column: 1, scope: !2968)
!3011 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !525, file: !525, line: 329, type: !3012, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !524, retainedNodes: !11)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!94, !3014, !6, !94, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64, align: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64, align: 64)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1891, line: 106, baseType: !3017)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1891, line: 94, baseType: !3018)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, file: !1891, line: 82, size: 64, align: 32, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3018, file: !1891, line: 84, baseType: !48, size: 32, align: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3018, file: !1891, line: 93, baseType: !3022, size: 32, align: 32, offset: 32)
!3022 = !DICompositeType(tag: DW_TAG_union_type, scope: !3018, file: !1891, line: 85, size: 32, align: 32, elements: !3023)
!3023 = !{!3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3022, file: !1891, line: 88, baseType: !114, size: 32, align: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3022, file: !1891, line: 92, baseType: !1901, size: 32, align: 8)
!3026 = !DILocalVariable(name: "pwc", arg: 1, scope: !3011, file: !525, line: 329, type: !3014)
!3027 = !DILocation(line: 329, column: 23, scope: !3011)
!3028 = !DILocalVariable(name: "s", arg: 2, scope: !3011, file: !525, line: 329, type: !6)
!3029 = !DILocation(line: 329, column: 40, scope: !3011)
!3030 = !DILocalVariable(name: "n", arg: 3, scope: !3011, file: !525, line: 329, type: !94)
!3031 = !DILocation(line: 329, column: 50, scope: !3011)
!3032 = !DILocalVariable(name: "ps", arg: 4, scope: !3011, file: !525, line: 329, type: !3015)
!3033 = !DILocation(line: 329, column: 64, scope: !3011)
!3034 = !DILocation(line: 332, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3011, file: !525, line: 332, column: 7)
!3036 = !DILocation(line: 332, column: 9, scope: !3035)
!3037 = !DILocation(line: 332, column: 7, scope: !3011)
!3038 = !DILocation(line: 334, column: 11, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3035, file: !525, line: 333, column: 5)
!3040 = !DILocation(line: 335, column: 9, scope: !3039)
!3041 = !DILocation(line: 336, column: 9, scope: !3039)
!3042 = !DILocation(line: 337, column: 5, scope: !3039)
!3043 = !DILocation(line: 341, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3011, file: !525, line: 341, column: 7)
!3045 = !DILocation(line: 341, column: 9, scope: !3044)
!3046 = !DILocation(line: 341, column: 7, scope: !3011)
!3047 = !DILocation(line: 342, column: 5, scope: !3044)
!3048 = !DILocation(line: 402, column: 21, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3011, file: !525, line: 394, column: 3)
!3050 = !DILocation(line: 402, column: 26, scope: !3049)
!3051 = !DILocation(line: 402, column: 29, scope: !3049)
!3052 = !DILocation(line: 402, column: 32, scope: !3049)
!3053 = !DILocation(line: 402, column: 12, scope: !3049)
!3054 = !DILocation(line: 402, column: 5, scope: !3049)
!3055 = !DILocation(line: 405, column: 1, scope: !3011)
!3056 = distinct !DISubprogram(name: "c_strcasecmp", scope: !528, file: !528, line: 27, type: !3057, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !527, retainedNodes: !11)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!48, !6, !6}
!3059 = !DILocalVariable(name: "s1", arg: 1, scope: !3056, file: !528, line: 27, type: !6)
!3060 = !DILocation(line: 27, column: 27, scope: !3056)
!3061 = !DILocalVariable(name: "s2", arg: 2, scope: !3056, file: !528, line: 27, type: !6)
!3062 = !DILocation(line: 27, column: 43, scope: !3056)
!3063 = !DILocalVariable(name: "p1", scope: !3056, file: !528, line: 29, type: !530)
!3064 = !DILocation(line: 29, column: 33, scope: !3056)
!3065 = !DILocation(line: 29, column: 62, scope: !3056)
!3066 = !DILocalVariable(name: "p2", scope: !3056, file: !528, line: 30, type: !530)
!3067 = !DILocation(line: 30, column: 33, scope: !3056)
!3068 = !DILocation(line: 30, column: 62, scope: !3056)
!3069 = !DILocalVariable(name: "c1", scope: !3056, file: !528, line: 31, type: !532)
!3070 = !DILocation(line: 31, column: 17, scope: !3056)
!3071 = !DILocalVariable(name: "c2", scope: !3056, file: !528, line: 31, type: !532)
!3072 = !DILocation(line: 31, column: 21, scope: !3056)
!3073 = !DILocation(line: 33, column: 7, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3056, file: !528, line: 33, column: 7)
!3075 = !DILocation(line: 33, column: 13, scope: !3074)
!3076 = !DILocation(line: 33, column: 10, scope: !3074)
!3077 = !DILocation(line: 33, column: 7, scope: !3056)
!3078 = !DILocation(line: 34, column: 5, scope: !3074)
!3079 = !DILocation(line: 36, column: 3, scope: !3056)
!3080 = !DILocation(line: 38, column: 24, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3056, file: !528, line: 37, column: 5)
!3082 = !DILocation(line: 38, column: 23, scope: !3081)
!3083 = !DILocation(line: 38, column: 12, scope: !3081)
!3084 = !DILocation(line: 38, column: 10, scope: !3081)
!3085 = !DILocation(line: 39, column: 24, scope: !3081)
!3086 = !DILocation(line: 39, column: 23, scope: !3081)
!3087 = !DILocation(line: 39, column: 12, scope: !3081)
!3088 = !DILocation(line: 39, column: 10, scope: !3081)
!3089 = !DILocation(line: 41, column: 11, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3081, file: !528, line: 41, column: 11)
!3091 = !DILocation(line: 41, column: 14, scope: !3090)
!3092 = !DILocation(line: 41, column: 11, scope: !3081)
!3093 = !DILocation(line: 42, column: 9, scope: !3090)
!3094 = !DILocation(line: 44, column: 7, scope: !3081)
!3095 = !DILocation(line: 45, column: 7, scope: !3081)
!3096 = !DILocation(line: 46, column: 5, scope: !3081)
!3097 = !DILocation(line: 47, column: 10, scope: !3056)
!3098 = !DILocation(line: 47, column: 16, scope: !3056)
!3099 = !DILocation(line: 47, column: 13, scope: !3056)
!3100 = !DILocation(line: 50, column: 12, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3056, file: !528, line: 49, column: 7)
!3102 = !DILocation(line: 50, column: 17, scope: !3101)
!3103 = !DILocation(line: 50, column: 15, scope: !3101)
!3104 = !DILocation(line: 50, column: 5, scope: !3101)
!3105 = !DILocation(line: 56, column: 1, scope: !3056)
!3106 = distinct !DISubprogram(name: "close_stream", scope: !534, file: !534, line: 56, type: !3107, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !533, retainedNodes: !11)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!48, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64, align: 64)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2451, line: 48, baseType: !3111)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2453, line: 245, size: 1728, align: 64, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3111, file: !2453, line: 246, baseType: !48, size: 32, align: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3111, file: !2453, line: 251, baseType: !13, size: 64, align: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3111, file: !2453, line: 252, baseType: !13, size: 64, align: 64, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3111, file: !2453, line: 253, baseType: !13, size: 64, align: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3111, file: !2453, line: 254, baseType: !13, size: 64, align: 64, offset: 256)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3111, file: !2453, line: 255, baseType: !13, size: 64, align: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3111, file: !2453, line: 256, baseType: !13, size: 64, align: 64, offset: 384)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3111, file: !2453, line: 257, baseType: !13, size: 64, align: 64, offset: 448)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3111, file: !2453, line: 258, baseType: !13, size: 64, align: 64, offset: 512)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3111, file: !2453, line: 260, baseType: !13, size: 64, align: 64, offset: 576)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3111, file: !2453, line: 261, baseType: !13, size: 64, align: 64, offset: 640)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3111, file: !2453, line: 262, baseType: !13, size: 64, align: 64, offset: 704)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3111, file: !2453, line: 264, baseType: !3126, size: 64, align: 64, offset: 768)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64, align: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2453, line: 160, size: 192, align: 64, elements: !3128)
!3128 = !{!3129, !3130, !3132}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3127, file: !2453, line: 161, baseType: !3126, size: 64, align: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3127, file: !2453, line: 162, baseType: !3131, size: 64, align: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64, align: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3127, file: !2453, line: 166, baseType: !48, size: 32, align: 32, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3111, file: !2453, line: 266, baseType: !3131, size: 64, align: 64, offset: 832)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3111, file: !2453, line: 268, baseType: !48, size: 32, align: 32, offset: 896)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3111, file: !2453, line: 272, baseType: !48, size: 32, align: 32, offset: 928)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3111, file: !2453, line: 274, baseType: !2479, size: 64, align: 64, offset: 960)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3111, file: !2453, line: 278, baseType: !97, size: 16, align: 16, offset: 1024)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3111, file: !2453, line: 279, baseType: !2484, size: 8, align: 8, offset: 1040)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3111, file: !2453, line: 280, baseType: !2486, size: 8, align: 8, offset: 1048)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3111, file: !2453, line: 284, baseType: !2490, size: 64, align: 64, offset: 1088)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3111, file: !2453, line: 293, baseType: !2493, size: 64, align: 64, offset: 1152)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3111, file: !2453, line: 302, baseType: !14, size: 64, align: 64, offset: 1216)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3111, file: !2453, line: 303, baseType: !14, size: 64, align: 64, offset: 1280)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3111, file: !2453, line: 304, baseType: !14, size: 64, align: 64, offset: 1344)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3111, file: !2453, line: 305, baseType: !14, size: 64, align: 64, offset: 1408)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3111, file: !2453, line: 306, baseType: !94, size: 64, align: 64, offset: 1472)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3111, file: !2453, line: 308, baseType: !48, size: 32, align: 32, offset: 1536)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3111, file: !2453, line: 310, baseType: !2501, size: 160, align: 8, offset: 1568)
!3149 = !DILocalVariable(name: "stream", arg: 1, scope: !3106, file: !534, line: 56, type: !3109)
!3150 = !DILocation(line: 56, column: 21, scope: !3106)
!3151 = !DILocalVariable(name: "some_pending", scope: !3106, file: !534, line: 58, type: !3152)
!3152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!3153 = !DILocation(line: 58, column: 14, scope: !3106)
!3154 = !DILocation(line: 58, column: 42, scope: !3106)
!3155 = !DILocation(line: 58, column: 30, scope: !3106)
!3156 = !DILocation(line: 58, column: 50, scope: !3106)
!3157 = !DILocalVariable(name: "prev_fail", scope: !3106, file: !534, line: 59, type: !3152)
!3158 = !DILocation(line: 59, column: 14, scope: !3106)
!3159 = !DILocation(line: 59, column: 27, scope: !3106)
!3160 = !DILocation(line: 59, column: 43, scope: !3106)
!3161 = !DILocalVariable(name: "fclose_fail", scope: !3106, file: !534, line: 60, type: !3152)
!3162 = !DILocation(line: 60, column: 14, scope: !3106)
!3163 = !DILocation(line: 60, column: 37, scope: !3106)
!3164 = !DILocation(line: 60, column: 29, scope: !3106)
!3165 = !DILocation(line: 60, column: 45, scope: !3106)
!3166 = !DILocation(line: 70, column: 7, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3106, file: !534, line: 70, column: 7)
!3168 = !DILocation(line: 70, column: 17, scope: !3167)
!3169 = !DILocation(line: 70, column: 21, scope: !3170)
!3170 = !DILexicalBlockFile(scope: !3167, file: !534, discriminator: 1)
!3171 = !DILocation(line: 70, column: 33, scope: !3167)
!3172 = !DILocation(line: 70, column: 37, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !3167, file: !534, discriminator: 2)
!3174 = !DILocation(line: 70, column: 50, scope: !3167)
!3175 = !DILocation(line: 70, column: 53, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !3167, file: !534, discriminator: 3)
!3177 = !DILocation(line: 70, column: 59, scope: !3167)
!3178 = !DILocation(line: 70, column: 7, scope: !3106)
!3179 = !DILocation(line: 72, column: 13, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !534, line: 72, column: 11)
!3181 = distinct !DILexicalBlock(scope: !3167, file: !534, line: 71, column: 5)
!3182 = !DILocation(line: 72, column: 11, scope: !3181)
!3183 = !DILocation(line: 73, column: 9, scope: !3180)
!3184 = !DILocation(line: 73, column: 15, scope: !3180)
!3185 = !DILocation(line: 74, column: 7, scope: !3181)
!3186 = !DILocation(line: 77, column: 3, scope: !3106)
!3187 = !DILocation(line: 78, column: 1, scope: !3106)
!3188 = distinct !DISubprogram(name: "locale_charset", scope: !158, file: !158, line: 393, type: !3189, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !157, retainedNodes: !11)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!6}
!3191 = !DILocalVariable(name: "codeset", scope: !3188, file: !158, line: 395, type: !6)
!3192 = !DILocation(line: 395, column: 15, scope: !3188)
!3193 = !DILocalVariable(name: "aliases", scope: !3188, file: !158, line: 396, type: !6)
!3194 = !DILocation(line: 396, column: 15, scope: !3188)
!3195 = !DILocation(line: 403, column: 13, scope: !3188)
!3196 = !DILocation(line: 403, column: 11, scope: !3188)
!3197 = !DILocation(line: 584, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3188, file: !158, line: 584, column: 7)
!3199 = !DILocation(line: 584, column: 15, scope: !3198)
!3200 = !DILocation(line: 584, column: 7, scope: !3188)
!3201 = !DILocation(line: 586, column: 13, scope: !3198)
!3202 = !DILocation(line: 586, column: 5, scope: !3198)
!3203 = !DILocation(line: 589, column: 18, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3188, file: !158, line: 589, column: 3)
!3205 = !DILocation(line: 589, column: 16, scope: !3204)
!3206 = !DILocation(line: 589, column: 8, scope: !3204)
!3207 = !DILocation(line: 590, column: 9, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3204, file: !158, line: 589, column: 3)
!3209 = !DILocation(line: 590, column: 8, scope: !3208)
!3210 = !DILocation(line: 590, column: 17, scope: !3208)
!3211 = !DILocation(line: 589, column: 3, scope: !3204)
!3212 = !DILocation(line: 592, column: 17, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3208, file: !158, line: 592, column: 9)
!3214 = !DILocation(line: 592, column: 26, scope: !3213)
!3215 = !DILocation(line: 592, column: 9, scope: !3213)
!3216 = !DILocation(line: 592, column: 35, scope: !3213)
!3217 = !DILocation(line: 593, column: 9, scope: !3213)
!3218 = !DILocation(line: 593, column: 13, scope: !3219)
!3219 = !DILexicalBlockFile(scope: !3213, file: !158, discriminator: 1)
!3220 = !DILocation(line: 593, column: 24, scope: !3213)
!3221 = !DILocation(line: 593, column: 31, scope: !3213)
!3222 = !DILocation(line: 593, column: 34, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3213, file: !158, discriminator: 2)
!3224 = !DILocation(line: 593, column: 45, scope: !3213)
!3225 = !DILocation(line: 592, column: 9, scope: !3208)
!3226 = !DILocation(line: 595, column: 19, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3213, file: !158, line: 594, column: 7)
!3228 = !DILocation(line: 595, column: 37, scope: !3227)
!3229 = !DILocation(line: 595, column: 29, scope: !3227)
!3230 = !DILocation(line: 595, column: 27, scope: !3227)
!3231 = !DILocation(line: 595, column: 46, scope: !3227)
!3232 = !DILocation(line: 595, column: 17, scope: !3227)
!3233 = !DILocation(line: 596, column: 9, scope: !3227)
!3234 = !DILocation(line: 593, column: 52, scope: !3235)
!3235 = !DILexicalBlockFile(scope: !3213, file: !158, discriminator: 3)
!3236 = !DILocation(line: 591, column: 27, scope: !3208)
!3237 = !DILocation(line: 591, column: 19, scope: !3208)
!3238 = !DILocation(line: 591, column: 36, scope: !3208)
!3239 = !DILocation(line: 591, column: 16, scope: !3208)
!3240 = !DILocation(line: 591, column: 60, scope: !3208)
!3241 = !DILocation(line: 591, column: 52, scope: !3208)
!3242 = !DILocation(line: 591, column: 69, scope: !3208)
!3243 = !DILocation(line: 591, column: 49, scope: !3208)
!3244 = !DILocation(line: 589, column: 3, scope: !3208)
!3245 = !DILocation(line: 602, column: 7, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3188, file: !158, line: 602, column: 7)
!3247 = !DILocation(line: 602, column: 18, scope: !3246)
!3248 = !DILocation(line: 602, column: 7, scope: !3188)
!3249 = !DILocation(line: 603, column: 13, scope: !3246)
!3250 = !DILocation(line: 603, column: 5, scope: !3246)
!3251 = !DILocation(line: 612, column: 10, scope: !3188)
!3252 = !DILocation(line: 612, column: 3, scope: !3188)
!3253 = distinct !DISubprogram(name: "get_charset_aliases", scope: !158, file: !158, line: 124, type: !3189, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !157, retainedNodes: !11)
!3254 = !DILocalVariable(name: "cp", scope: !3253, file: !158, line: 126, type: !6)
!3255 = !DILocation(line: 126, column: 15, scope: !3253)
!3256 = !DILocation(line: 128, column: 8, scope: !3253)
!3257 = !DILocation(line: 128, column: 6, scope: !3253)
!3258 = !DILocation(line: 129, column: 7, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3253, file: !158, line: 129, column: 7)
!3260 = !DILocation(line: 129, column: 10, scope: !3259)
!3261 = !DILocation(line: 129, column: 7, scope: !3253)
!3262 = !DILocalVariable(name: "dir", scope: !3263, file: !158, line: 132, type: !6)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !158, line: 130, column: 5)
!3264 = !DILocation(line: 132, column: 19, scope: !3263)
!3265 = !DILocalVariable(name: "base", scope: !3263, file: !158, line: 133, type: !6)
!3266 = !DILocation(line: 133, column: 19, scope: !3263)
!3267 = !DILocalVariable(name: "file_name", scope: !3263, file: !158, line: 134, type: !13)
!3268 = !DILocation(line: 134, column: 13, scope: !3263)
!3269 = !DILocation(line: 138, column: 13, scope: !3263)
!3270 = !DILocation(line: 138, column: 11, scope: !3263)
!3271 = !DILocation(line: 139, column: 11, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3263, file: !158, line: 139, column: 11)
!3273 = !DILocation(line: 139, column: 15, scope: !3272)
!3274 = !DILocation(line: 139, column: 23, scope: !3272)
!3275 = !DILocation(line: 139, column: 26, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !3272, file: !158, discriminator: 1)
!3277 = !DILocation(line: 139, column: 33, scope: !3272)
!3278 = !DILocation(line: 139, column: 11, scope: !3263)
!3279 = !DILocation(line: 140, column: 13, scope: !3272)
!3280 = !DILocation(line: 140, column: 9, scope: !3272)
!3281 = !DILocalVariable(name: "dir_len", scope: !3282, file: !158, line: 144, type: !94)
!3282 = distinct !DILexicalBlock(scope: !3263, file: !158, line: 143, column: 7)
!3283 = !DILocation(line: 144, column: 16, scope: !3282)
!3284 = !DILocation(line: 144, column: 34, scope: !3282)
!3285 = !DILocation(line: 144, column: 26, scope: !3282)
!3286 = !DILocalVariable(name: "base_len", scope: !3282, file: !158, line: 145, type: !94)
!3287 = !DILocation(line: 145, column: 16, scope: !3282)
!3288 = !DILocation(line: 145, column: 35, scope: !3282)
!3289 = !DILocation(line: 145, column: 27, scope: !3282)
!3290 = !DILocalVariable(name: "add_slash", scope: !3282, file: !158, line: 146, type: !48)
!3291 = !DILocation(line: 146, column: 13, scope: !3282)
!3292 = !DILocation(line: 146, column: 26, scope: !3282)
!3293 = !DILocation(line: 146, column: 34, scope: !3282)
!3294 = !DILocation(line: 146, column: 38, scope: !3282)
!3295 = !DILocation(line: 146, column: 42, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3282, file: !158, discriminator: 1)
!3297 = !DILocation(line: 146, column: 41, scope: !3282)
!3298 = !DILocation(line: 146, column: 38, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3282, file: !158, discriminator: 2)
!3300 = !DILocation(line: 147, column: 38, scope: !3282)
!3301 = !DILocation(line: 147, column: 48, scope: !3282)
!3302 = !DILocation(line: 147, column: 46, scope: !3282)
!3303 = !DILocation(line: 147, column: 60, scope: !3282)
!3304 = !DILocation(line: 147, column: 58, scope: !3282)
!3305 = !DILocation(line: 147, column: 69, scope: !3282)
!3306 = !DILocation(line: 147, column: 30, scope: !3282)
!3307 = !DILocation(line: 147, column: 19, scope: !3282)
!3308 = !DILocation(line: 148, column: 13, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3282, file: !158, line: 148, column: 13)
!3310 = !DILocation(line: 148, column: 23, scope: !3309)
!3311 = !DILocation(line: 148, column: 13, scope: !3282)
!3312 = !DILocation(line: 150, column: 21, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3309, file: !158, line: 149, column: 11)
!3314 = !DILocation(line: 150, column: 32, scope: !3313)
!3315 = !DILocation(line: 150, column: 37, scope: !3313)
!3316 = !DILocation(line: 150, column: 13, scope: !3313)
!3317 = !DILocation(line: 151, column: 17, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3313, file: !158, line: 151, column: 17)
!3319 = !DILocation(line: 151, column: 17, scope: !3313)
!3320 = !DILocation(line: 152, column: 25, scope: !3318)
!3321 = !DILocation(line: 152, column: 15, scope: !3318)
!3322 = !DILocation(line: 152, column: 34, scope: !3318)
!3323 = !DILocation(line: 153, column: 21, scope: !3313)
!3324 = !DILocation(line: 153, column: 33, scope: !3313)
!3325 = !DILocation(line: 153, column: 31, scope: !3313)
!3326 = !DILocation(line: 153, column: 43, scope: !3313)
!3327 = !DILocation(line: 153, column: 41, scope: !3313)
!3328 = !DILocation(line: 153, column: 54, scope: !3313)
!3329 = !DILocation(line: 153, column: 60, scope: !3313)
!3330 = !DILocation(line: 153, column: 69, scope: !3313)
!3331 = !DILocation(line: 153, column: 13, scope: !3313)
!3332 = !DILocation(line: 154, column: 11, scope: !3313)
!3333 = !DILocation(line: 157, column: 11, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3263, file: !158, line: 157, column: 11)
!3335 = !DILocation(line: 157, column: 21, scope: !3334)
!3336 = !DILocation(line: 157, column: 11, scope: !3263)
!3337 = !DILocation(line: 159, column: 12, scope: !3334)
!3338 = !DILocation(line: 159, column: 9, scope: !3334)
!3339 = !DILocalVariable(name: "fd", scope: !3340, file: !158, line: 162, type: !48)
!3340 = distinct !DILexicalBlock(scope: !3334, file: !158, line: 161, column: 9)
!3341 = !DILocation(line: 162, column: 15, scope: !3340)
!3342 = !DILocation(line: 171, column: 22, scope: !3340)
!3343 = !DILocation(line: 171, column: 16, scope: !3340)
!3344 = !DILocation(line: 171, column: 14, scope: !3340)
!3345 = !DILocation(line: 173, column: 15, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3340, file: !158, line: 173, column: 15)
!3347 = !DILocation(line: 173, column: 18, scope: !3346)
!3348 = !DILocation(line: 173, column: 15, scope: !3340)
!3349 = !DILocation(line: 175, column: 16, scope: !3346)
!3350 = !DILocation(line: 175, column: 13, scope: !3346)
!3351 = !DILocalVariable(name: "fp", scope: !3352, file: !158, line: 178, type: !3353)
!3352 = distinct !DILexicalBlock(scope: !3346, file: !158, line: 177, column: 13)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64, align: 64)
!3354 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2451, line: 48, baseType: !3355)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2453, line: 245, size: 1728, align: 64, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3355, file: !2453, line: 246, baseType: !48, size: 32, align: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3355, file: !2453, line: 251, baseType: !13, size: 64, align: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3355, file: !2453, line: 252, baseType: !13, size: 64, align: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3355, file: !2453, line: 253, baseType: !13, size: 64, align: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3355, file: !2453, line: 254, baseType: !13, size: 64, align: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3355, file: !2453, line: 255, baseType: !13, size: 64, align: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3355, file: !2453, line: 256, baseType: !13, size: 64, align: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3355, file: !2453, line: 257, baseType: !13, size: 64, align: 64, offset: 448)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3355, file: !2453, line: 258, baseType: !13, size: 64, align: 64, offset: 512)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3355, file: !2453, line: 260, baseType: !13, size: 64, align: 64, offset: 576)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3355, file: !2453, line: 261, baseType: !13, size: 64, align: 64, offset: 640)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3355, file: !2453, line: 262, baseType: !13, size: 64, align: 64, offset: 704)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3355, file: !2453, line: 264, baseType: !3370, size: 64, align: 64, offset: 768)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64, align: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2453, line: 160, size: 192, align: 64, elements: !3372)
!3372 = !{!3373, !3374, !3376}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3371, file: !2453, line: 161, baseType: !3370, size: 64, align: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3371, file: !2453, line: 162, baseType: !3375, size: 64, align: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64, align: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3371, file: !2453, line: 166, baseType: !48, size: 32, align: 32, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3355, file: !2453, line: 266, baseType: !3375, size: 64, align: 64, offset: 832)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3355, file: !2453, line: 268, baseType: !48, size: 32, align: 32, offset: 896)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3355, file: !2453, line: 272, baseType: !48, size: 32, align: 32, offset: 928)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3355, file: !2453, line: 274, baseType: !2479, size: 64, align: 64, offset: 960)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3355, file: !2453, line: 278, baseType: !97, size: 16, align: 16, offset: 1024)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3355, file: !2453, line: 279, baseType: !2484, size: 8, align: 8, offset: 1040)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3355, file: !2453, line: 280, baseType: !2486, size: 8, align: 8, offset: 1048)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3355, file: !2453, line: 284, baseType: !2490, size: 64, align: 64, offset: 1088)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3355, file: !2453, line: 293, baseType: !2493, size: 64, align: 64, offset: 1152)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3355, file: !2453, line: 302, baseType: !14, size: 64, align: 64, offset: 1216)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3355, file: !2453, line: 303, baseType: !14, size: 64, align: 64, offset: 1280)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3355, file: !2453, line: 304, baseType: !14, size: 64, align: 64, offset: 1344)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3355, file: !2453, line: 305, baseType: !14, size: 64, align: 64, offset: 1408)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3355, file: !2453, line: 306, baseType: !94, size: 64, align: 64, offset: 1472)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3355, file: !2453, line: 308, baseType: !48, size: 32, align: 32, offset: 1536)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3355, file: !2453, line: 310, baseType: !2501, size: 160, align: 8, offset: 1568)
!3393 = !DILocation(line: 178, column: 21, scope: !3352)
!3394 = !DILocation(line: 180, column: 28, scope: !3352)
!3395 = !DILocation(line: 180, column: 20, scope: !3352)
!3396 = !DILocation(line: 180, column: 18, scope: !3352)
!3397 = !DILocation(line: 181, column: 19, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3352, file: !158, line: 181, column: 19)
!3399 = !DILocation(line: 181, column: 22, scope: !3398)
!3400 = !DILocation(line: 181, column: 19, scope: !3352)
!3401 = !DILocation(line: 184, column: 26, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !158, line: 182, column: 17)
!3403 = !DILocation(line: 184, column: 19, scope: !3402)
!3404 = !DILocation(line: 185, column: 22, scope: !3402)
!3405 = !DILocation(line: 186, column: 17, scope: !3402)
!3406 = !DILocalVariable(name: "res_ptr", scope: !3407, file: !158, line: 190, type: !13)
!3407 = distinct !DILexicalBlock(scope: !3398, file: !158, line: 188, column: 17)
!3408 = !DILocation(line: 190, column: 25, scope: !3407)
!3409 = !DILocalVariable(name: "res_size", scope: !3407, file: !158, line: 191, type: !94)
!3410 = !DILocation(line: 191, column: 26, scope: !3407)
!3411 = !DILocation(line: 193, column: 19, scope: !3407)
!3412 = !DILocalVariable(name: "c", scope: !3413, file: !158, line: 195, type: !48)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !158, line: 194, column: 21)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !158, line: 193, column: 19)
!3415 = distinct !DILexicalBlock(scope: !3407, file: !158, line: 193, column: 19)
!3416 = !DILocation(line: 195, column: 27, scope: !3413)
!3417 = !DILocalVariable(name: "buf1", scope: !3413, file: !158, line: 196, type: !3418)
!3418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, align: 8, elements: !3419)
!3419 = !{!3420}
!3420 = !DISubrange(count: 51)
!3421 = !DILocation(line: 196, column: 28, scope: !3413)
!3422 = !DILocalVariable(name: "buf2", scope: !3413, file: !158, line: 197, type: !3418)
!3423 = !DILocation(line: 197, column: 28, scope: !3413)
!3424 = !DILocalVariable(name: "l1", scope: !3413, file: !158, line: 198, type: !94)
!3425 = !DILocation(line: 198, column: 30, scope: !3413)
!3426 = !DILocalVariable(name: "l2", scope: !3413, file: !158, line: 198, type: !94)
!3427 = !DILocation(line: 198, column: 34, scope: !3413)
!3428 = !DILocalVariable(name: "old_res_ptr", scope: !3413, file: !158, line: 199, type: !13)
!3429 = !DILocation(line: 199, column: 29, scope: !3413)
!3430 = !DILocation(line: 201, column: 33, scope: !3413)
!3431 = !DILocation(line: 201, column: 27, scope: !3413)
!3432 = !DILocation(line: 201, column: 25, scope: !3413)
!3433 = !DILocation(line: 202, column: 27, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3413, file: !158, line: 202, column: 27)
!3435 = !DILocation(line: 202, column: 29, scope: !3434)
!3436 = !DILocation(line: 202, column: 27, scope: !3413)
!3437 = !DILocation(line: 203, column: 25, scope: !3434)
!3438 = !DILocation(line: 204, column: 27, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3413, file: !158, line: 204, column: 27)
!3440 = !DILocation(line: 204, column: 29, scope: !3439)
!3441 = !DILocation(line: 204, column: 37, scope: !3439)
!3442 = !DILocation(line: 204, column: 40, scope: !3443)
!3443 = !DILexicalBlockFile(scope: !3439, file: !158, discriminator: 1)
!3444 = !DILocation(line: 204, column: 42, scope: !3439)
!3445 = !DILocation(line: 204, column: 49, scope: !3439)
!3446 = !DILocation(line: 204, column: 52, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3439, file: !158, discriminator: 2)
!3448 = !DILocation(line: 204, column: 54, scope: !3439)
!3449 = !DILocation(line: 204, column: 27, scope: !3413)
!3450 = !DILocation(line: 205, column: 25, scope: !3439)
!3451 = !DILocation(line: 206, column: 27, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3413, file: !158, line: 206, column: 27)
!3453 = !DILocation(line: 206, column: 29, scope: !3452)
!3454 = !DILocation(line: 206, column: 27, scope: !3413)
!3455 = !DILocation(line: 209, column: 27, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3452, file: !158, line: 207, column: 25)
!3457 = !DILocation(line: 210, column: 39, scope: !3458)
!3458 = !DILexicalBlockFile(scope: !3456, file: !158, discriminator: 1)
!3459 = !DILocation(line: 210, column: 33, scope: !3456)
!3460 = !DILocation(line: 210, column: 31, scope: !3456)
!3461 = !DILocation(line: 210, column: 29, scope: !3456)
!3462 = !DILocation(line: 211, column: 36, scope: !3456)
!3463 = !DILocation(line: 211, column: 38, scope: !3456)
!3464 = !DILocation(line: 211, column: 45, scope: !3456)
!3465 = !DILocation(line: 211, column: 48, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3456, file: !158, discriminator: 2)
!3467 = !DILocation(line: 211, column: 50, scope: !3456)
!3468 = !DILocation(line: 211, column: 34, scope: !3469)
!3469 = !DILexicalBlockFile(scope: !3458, file: !158, discriminator: 3)
!3470 = !DILocation(line: 212, column: 31, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3456, file: !158, line: 212, column: 31)
!3472 = !DILocation(line: 212, column: 33, scope: !3471)
!3473 = !DILocation(line: 212, column: 31, scope: !3456)
!3474 = !DILocation(line: 213, column: 29, scope: !3471)
!3475 = !DILocation(line: 214, column: 27, scope: !3456)
!3476 = !DILocation(line: 216, column: 31, scope: !3413)
!3477 = !DILocation(line: 216, column: 34, scope: !3413)
!3478 = !DILocation(line: 216, column: 23, scope: !3413)
!3479 = !DILocation(line: 217, column: 35, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3413, file: !158, line: 217, column: 27)
!3481 = !DILocation(line: 217, column: 52, scope: !3480)
!3482 = !DILocation(line: 217, column: 58, scope: !3480)
!3483 = !DILocation(line: 217, column: 27, scope: !3480)
!3484 = !DILocation(line: 217, column: 64, scope: !3480)
!3485 = !DILocation(line: 217, column: 27, scope: !3413)
!3486 = !DILocation(line: 218, column: 25, scope: !3480)
!3487 = !DILocation(line: 219, column: 36, scope: !3413)
!3488 = !DILocation(line: 219, column: 28, scope: !3413)
!3489 = !DILocation(line: 219, column: 26, scope: !3413)
!3490 = !DILocation(line: 220, column: 36, scope: !3413)
!3491 = !DILocation(line: 220, column: 28, scope: !3413)
!3492 = !DILocation(line: 220, column: 26, scope: !3413)
!3493 = !DILocation(line: 221, column: 37, scope: !3413)
!3494 = !DILocation(line: 221, column: 35, scope: !3413)
!3495 = !DILocation(line: 222, column: 27, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3413, file: !158, line: 222, column: 27)
!3497 = !DILocation(line: 222, column: 36, scope: !3496)
!3498 = !DILocation(line: 222, column: 27, scope: !3413)
!3499 = !DILocation(line: 224, column: 38, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3496, file: !158, line: 223, column: 25)
!3501 = !DILocation(line: 224, column: 41, scope: !3500)
!3502 = !DILocation(line: 224, column: 47, scope: !3500)
!3503 = !DILocation(line: 224, column: 45, scope: !3500)
!3504 = !DILocation(line: 224, column: 50, scope: !3500)
!3505 = !DILocation(line: 224, column: 36, scope: !3500)
!3506 = !DILocation(line: 225, column: 54, scope: !3500)
!3507 = !DILocation(line: 225, column: 63, scope: !3500)
!3508 = !DILocation(line: 225, column: 46, scope: !3500)
!3509 = !DILocation(line: 225, column: 35, scope: !3500)
!3510 = !DILocation(line: 226, column: 25, scope: !3500)
!3511 = !DILocation(line: 229, column: 39, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3496, file: !158, line: 228, column: 25)
!3513 = !DILocation(line: 229, column: 42, scope: !3512)
!3514 = !DILocation(line: 229, column: 48, scope: !3512)
!3515 = !DILocation(line: 229, column: 46, scope: !3512)
!3516 = !DILocation(line: 229, column: 51, scope: !3512)
!3517 = !DILocation(line: 229, column: 36, scope: !3512)
!3518 = !DILocation(line: 230, column: 55, scope: !3512)
!3519 = !DILocation(line: 230, column: 64, scope: !3512)
!3520 = !DILocation(line: 230, column: 73, scope: !3512)
!3521 = !DILocation(line: 230, column: 46, scope: !3512)
!3522 = !DILocation(line: 230, column: 35, scope: !3512)
!3523 = !DILocation(line: 232, column: 27, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3413, file: !158, line: 232, column: 27)
!3525 = !DILocation(line: 232, column: 35, scope: !3524)
!3526 = !DILocation(line: 232, column: 27, scope: !3413)
!3527 = !DILocation(line: 235, column: 36, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !158, line: 233, column: 25)
!3529 = !DILocation(line: 236, column: 33, scope: !3528)
!3530 = !DILocation(line: 236, column: 27, scope: !3528)
!3531 = !DILocation(line: 237, column: 27, scope: !3528)
!3532 = !DILocation(line: 239, column: 31, scope: !3413)
!3533 = !DILocation(line: 239, column: 41, scope: !3413)
!3534 = !DILocation(line: 239, column: 39, scope: !3413)
!3535 = !DILocation(line: 239, column: 53, scope: !3413)
!3536 = !DILocation(line: 239, column: 56, scope: !3413)
!3537 = !DILocation(line: 239, column: 50, scope: !3413)
!3538 = !DILocation(line: 239, column: 64, scope: !3413)
!3539 = !DILocation(line: 239, column: 67, scope: !3413)
!3540 = !DILocation(line: 239, column: 61, scope: !3413)
!3541 = !DILocation(line: 239, column: 73, scope: !3413)
!3542 = !DILocation(line: 239, column: 23, scope: !3413)
!3543 = !DILocation(line: 240, column: 31, scope: !3413)
!3544 = !DILocation(line: 240, column: 41, scope: !3413)
!3545 = !DILocation(line: 240, column: 39, scope: !3413)
!3546 = !DILocation(line: 240, column: 53, scope: !3413)
!3547 = !DILocation(line: 240, column: 56, scope: !3413)
!3548 = !DILocation(line: 240, column: 50, scope: !3413)
!3549 = !DILocation(line: 240, column: 62, scope: !3413)
!3550 = !DILocation(line: 240, column: 23, scope: !3413)
!3551 = !DILocation(line: 193, column: 19, scope: !3414)
!3552 = !DILocation(line: 242, column: 27, scope: !3407)
!3553 = !DILocation(line: 242, column: 19, scope: !3407)
!3554 = !DILocation(line: 243, column: 23, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3407, file: !158, line: 243, column: 23)
!3556 = !DILocation(line: 243, column: 32, scope: !3555)
!3557 = !DILocation(line: 243, column: 23, scope: !3407)
!3558 = !DILocation(line: 244, column: 24, scope: !3555)
!3559 = !DILocation(line: 244, column: 21, scope: !3555)
!3560 = !DILocation(line: 247, column: 25, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3555, file: !158, line: 246, column: 21)
!3562 = !DILocation(line: 247, column: 35, scope: !3561)
!3563 = !DILocation(line: 247, column: 33, scope: !3561)
!3564 = !DILocation(line: 247, column: 45, scope: !3561)
!3565 = !DILocation(line: 248, column: 28, scope: !3561)
!3566 = !DILocation(line: 248, column: 26, scope: !3561)
!3567 = !DILocation(line: 253, column: 17, scope: !3340)
!3568 = !DILocation(line: 253, column: 11, scope: !3340)
!3569 = !DILocation(line: 377, column: 25, scope: !3263)
!3570 = !DILocation(line: 377, column: 23, scope: !3263)
!3571 = !DILocation(line: 378, column: 5, scope: !3263)
!3572 = !DILocation(line: 380, column: 10, scope: !3253)
!3573 = !DILocation(line: 380, column: 3, scope: !3253)
!3574 = distinct !DISubprogram(name: "rpl_fclose", scope: !536, file: !536, line: 56, type: !3575, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !535, retainedNodes: !11)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!48, !3577}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64, align: 64)
!3578 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2451, line: 48, baseType: !3579)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2453, line: 245, size: 1728, align: 64, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3579, file: !2453, line: 246, baseType: !48, size: 32, align: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3579, file: !2453, line: 251, baseType: !13, size: 64, align: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3579, file: !2453, line: 252, baseType: !13, size: 64, align: 64, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3579, file: !2453, line: 253, baseType: !13, size: 64, align: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3579, file: !2453, line: 254, baseType: !13, size: 64, align: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3579, file: !2453, line: 255, baseType: !13, size: 64, align: 64, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3579, file: !2453, line: 256, baseType: !13, size: 64, align: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3579, file: !2453, line: 257, baseType: !13, size: 64, align: 64, offset: 448)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3579, file: !2453, line: 258, baseType: !13, size: 64, align: 64, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3579, file: !2453, line: 260, baseType: !13, size: 64, align: 64, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3579, file: !2453, line: 261, baseType: !13, size: 64, align: 64, offset: 640)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3579, file: !2453, line: 262, baseType: !13, size: 64, align: 64, offset: 704)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3579, file: !2453, line: 264, baseType: !3594, size: 64, align: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64, align: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2453, line: 160, size: 192, align: 64, elements: !3596)
!3596 = !{!3597, !3598, !3600}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3595, file: !2453, line: 161, baseType: !3594, size: 64, align: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3595, file: !2453, line: 162, baseType: !3599, size: 64, align: 64, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64, align: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3595, file: !2453, line: 166, baseType: !48, size: 32, align: 32, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3579, file: !2453, line: 266, baseType: !3599, size: 64, align: 64, offset: 832)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3579, file: !2453, line: 268, baseType: !48, size: 32, align: 32, offset: 896)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3579, file: !2453, line: 272, baseType: !48, size: 32, align: 32, offset: 928)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3579, file: !2453, line: 274, baseType: !2479, size: 64, align: 64, offset: 960)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3579, file: !2453, line: 278, baseType: !97, size: 16, align: 16, offset: 1024)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3579, file: !2453, line: 279, baseType: !2484, size: 8, align: 8, offset: 1040)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3579, file: !2453, line: 280, baseType: !2486, size: 8, align: 8, offset: 1048)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3579, file: !2453, line: 284, baseType: !2490, size: 64, align: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3579, file: !2453, line: 293, baseType: !2493, size: 64, align: 64, offset: 1152)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3579, file: !2453, line: 302, baseType: !14, size: 64, align: 64, offset: 1216)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3579, file: !2453, line: 303, baseType: !14, size: 64, align: 64, offset: 1280)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3579, file: !2453, line: 304, baseType: !14, size: 64, align: 64, offset: 1344)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3579, file: !2453, line: 305, baseType: !14, size: 64, align: 64, offset: 1408)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3579, file: !2453, line: 306, baseType: !94, size: 64, align: 64, offset: 1472)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3579, file: !2453, line: 308, baseType: !48, size: 32, align: 32, offset: 1536)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3579, file: !2453, line: 310, baseType: !2501, size: 160, align: 8, offset: 1568)
!3617 = !DILocalVariable(name: "fp", arg: 1, scope: !3574, file: !536, line: 56, type: !3577)
!3618 = !DILocation(line: 56, column: 19, scope: !3574)
!3619 = !DILocalVariable(name: "saved_errno", scope: !3574, file: !536, line: 58, type: !48)
!3620 = !DILocation(line: 58, column: 7, scope: !3574)
!3621 = !DILocalVariable(name: "fd", scope: !3574, file: !536, line: 59, type: !48)
!3622 = !DILocation(line: 59, column: 7, scope: !3574)
!3623 = !DILocalVariable(name: "result", scope: !3574, file: !536, line: 60, type: !48)
!3624 = !DILocation(line: 60, column: 7, scope: !3574)
!3625 = !DILocation(line: 63, column: 16, scope: !3574)
!3626 = !DILocation(line: 63, column: 8, scope: !3574)
!3627 = !DILocation(line: 63, column: 6, scope: !3574)
!3628 = !DILocation(line: 64, column: 7, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3574, file: !536, line: 64, column: 7)
!3630 = !DILocation(line: 64, column: 10, scope: !3629)
!3631 = !DILocation(line: 64, column: 7, scope: !3574)
!3632 = !DILocation(line: 65, column: 28, scope: !3629)
!3633 = !DILocation(line: 65, column: 12, scope: !3629)
!3634 = !DILocation(line: 65, column: 5, scope: !3629)
!3635 = !DILocation(line: 70, column: 9, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3574, file: !536, line: 70, column: 7)
!3637 = !DILocation(line: 70, column: 23, scope: !3636)
!3638 = !DILocation(line: 70, column: 41, scope: !3639)
!3639 = !DILexicalBlockFile(scope: !3636, file: !536, discriminator: 1)
!3640 = !DILocation(line: 70, column: 33, scope: !3636)
!3641 = !DILocation(line: 70, column: 26, scope: !3636)
!3642 = !DILocation(line: 70, column: 59, scope: !3636)
!3643 = !DILocation(line: 71, column: 7, scope: !3636)
!3644 = !DILocation(line: 71, column: 18, scope: !3639)
!3645 = !DILocation(line: 71, column: 10, scope: !3636)
!3646 = !DILocation(line: 70, column: 7, scope: !3574)
!3647 = !DILocation(line: 72, column: 19, scope: !3636)
!3648 = !DILocation(line: 72, column: 17, scope: !3636)
!3649 = !DILocation(line: 72, column: 5, scope: !3636)
!3650 = !DILocation(line: 98, column: 28, scope: !3574)
!3651 = !DILocation(line: 98, column: 12, scope: !3574)
!3652 = !DILocation(line: 98, column: 10, scope: !3574)
!3653 = !DILocation(line: 103, column: 7, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3574, file: !536, line: 103, column: 7)
!3655 = !DILocation(line: 103, column: 19, scope: !3654)
!3656 = !DILocation(line: 103, column: 7, scope: !3574)
!3657 = !DILocation(line: 105, column: 15, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !536, line: 104, column: 5)
!3659 = !DILocation(line: 105, column: 7, scope: !3658)
!3660 = !DILocation(line: 105, column: 13, scope: !3658)
!3661 = !DILocation(line: 106, column: 14, scope: !3658)
!3662 = !DILocation(line: 107, column: 5, scope: !3658)
!3663 = !DILocation(line: 109, column: 10, scope: !3574)
!3664 = !DILocation(line: 109, column: 3, scope: !3574)
!3665 = !DILocation(line: 110, column: 1, scope: !3574)
!3666 = distinct !DISubprogram(name: "rpl_fflush", scope: !538, file: !538, line: 127, type: !3667, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !537, retainedNodes: !11)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!48, !3669}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64, align: 64)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2451, line: 48, baseType: !3671)
!3671 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2453, line: 245, size: 1728, align: 64, elements: !3672)
!3672 = !{!3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3671, file: !2453, line: 246, baseType: !48, size: 32, align: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3671, file: !2453, line: 251, baseType: !13, size: 64, align: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3671, file: !2453, line: 252, baseType: !13, size: 64, align: 64, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3671, file: !2453, line: 253, baseType: !13, size: 64, align: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3671, file: !2453, line: 254, baseType: !13, size: 64, align: 64, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3671, file: !2453, line: 255, baseType: !13, size: 64, align: 64, offset: 320)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3671, file: !2453, line: 256, baseType: !13, size: 64, align: 64, offset: 384)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3671, file: !2453, line: 257, baseType: !13, size: 64, align: 64, offset: 448)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3671, file: !2453, line: 258, baseType: !13, size: 64, align: 64, offset: 512)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3671, file: !2453, line: 260, baseType: !13, size: 64, align: 64, offset: 576)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3671, file: !2453, line: 261, baseType: !13, size: 64, align: 64, offset: 640)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3671, file: !2453, line: 262, baseType: !13, size: 64, align: 64, offset: 704)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3671, file: !2453, line: 264, baseType: !3686, size: 64, align: 64, offset: 768)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64, align: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2453, line: 160, size: 192, align: 64, elements: !3688)
!3688 = !{!3689, !3690, !3692}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3687, file: !2453, line: 161, baseType: !3686, size: 64, align: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3687, file: !2453, line: 162, baseType: !3691, size: 64, align: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64, align: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3687, file: !2453, line: 166, baseType: !48, size: 32, align: 32, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3671, file: !2453, line: 266, baseType: !3691, size: 64, align: 64, offset: 832)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3671, file: !2453, line: 268, baseType: !48, size: 32, align: 32, offset: 896)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3671, file: !2453, line: 272, baseType: !48, size: 32, align: 32, offset: 928)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3671, file: !2453, line: 274, baseType: !2479, size: 64, align: 64, offset: 960)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3671, file: !2453, line: 278, baseType: !97, size: 16, align: 16, offset: 1024)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3671, file: !2453, line: 279, baseType: !2484, size: 8, align: 8, offset: 1040)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3671, file: !2453, line: 280, baseType: !2486, size: 8, align: 8, offset: 1048)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3671, file: !2453, line: 284, baseType: !2490, size: 64, align: 64, offset: 1088)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3671, file: !2453, line: 293, baseType: !2493, size: 64, align: 64, offset: 1152)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3671, file: !2453, line: 302, baseType: !14, size: 64, align: 64, offset: 1216)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3671, file: !2453, line: 303, baseType: !14, size: 64, align: 64, offset: 1280)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3671, file: !2453, line: 304, baseType: !14, size: 64, align: 64, offset: 1344)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3671, file: !2453, line: 305, baseType: !14, size: 64, align: 64, offset: 1408)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3671, file: !2453, line: 306, baseType: !94, size: 64, align: 64, offset: 1472)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3671, file: !2453, line: 308, baseType: !48, size: 32, align: 32, offset: 1536)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3671, file: !2453, line: 310, baseType: !2501, size: 160, align: 8, offset: 1568)
!3709 = !DILocalVariable(name: "stream", arg: 1, scope: !3666, file: !538, line: 127, type: !3669)
!3710 = !DILocation(line: 127, column: 19, scope: !3666)
!3711 = !DILocation(line: 148, column: 7, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3666, file: !538, line: 148, column: 7)
!3713 = !DILocation(line: 148, column: 14, scope: !3712)
!3714 = !DILocation(line: 148, column: 22, scope: !3712)
!3715 = !DILocation(line: 148, column: 27, scope: !3716)
!3716 = !DILexicalBlockFile(scope: !3712, file: !538, discriminator: 1)
!3717 = !DILocation(line: 148, column: 7, scope: !3666)
!3718 = !DILocation(line: 149, column: 20, scope: !3712)
!3719 = !DILocation(line: 149, column: 12, scope: !3712)
!3720 = !DILocation(line: 149, column: 5, scope: !3712)
!3721 = !DILocation(line: 153, column: 44, scope: !3666)
!3722 = !DILocation(line: 153, column: 3, scope: !3666)
!3723 = !DILocation(line: 155, column: 18, scope: !3666)
!3724 = !DILocation(line: 155, column: 10, scope: !3666)
!3725 = !DILocation(line: 155, column: 3, scope: !3666)
!3726 = !DILocation(line: 229, column: 1, scope: !3666)
!3727 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !538, file: !538, line: 40, type: !3728, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !537, retainedNodes: !11)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{null, !3669}
!3730 = !DILocalVariable(name: "fp", arg: 1, scope: !3727, file: !538, line: 40, type: !3669)
!3731 = !DILocation(line: 40, column: 48, scope: !3727)
!3732 = !DILocation(line: 42, column: 7, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3727, file: !538, line: 42, column: 7)
!3734 = !DILocation(line: 42, column: 11, scope: !3733)
!3735 = !DILocation(line: 42, column: 18, scope: !3733)
!3736 = !DILocation(line: 42, column: 7, scope: !3727)
!3737 = !DILocation(line: 44, column: 13, scope: !3733)
!3738 = !DILocation(line: 44, column: 5, scope: !3733)
!3739 = !DILocation(line: 45, column: 1, scope: !3727)
!3740 = distinct !DISubprogram(name: "rpl_fseeko", scope: !540, file: !540, line: 28, type: !3741, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !539, retainedNodes: !11)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!48, !3743, !3783, !48}
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64, align: 64)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2451, line: 48, baseType: !3745)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2453, line: 245, size: 1728, align: 64, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3745, file: !2453, line: 246, baseType: !48, size: 32, align: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3745, file: !2453, line: 251, baseType: !13, size: 64, align: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3745, file: !2453, line: 252, baseType: !13, size: 64, align: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3745, file: !2453, line: 253, baseType: !13, size: 64, align: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3745, file: !2453, line: 254, baseType: !13, size: 64, align: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3745, file: !2453, line: 255, baseType: !13, size: 64, align: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3745, file: !2453, line: 256, baseType: !13, size: 64, align: 64, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3745, file: !2453, line: 257, baseType: !13, size: 64, align: 64, offset: 448)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3745, file: !2453, line: 258, baseType: !13, size: 64, align: 64, offset: 512)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3745, file: !2453, line: 260, baseType: !13, size: 64, align: 64, offset: 576)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3745, file: !2453, line: 261, baseType: !13, size: 64, align: 64, offset: 640)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3745, file: !2453, line: 262, baseType: !13, size: 64, align: 64, offset: 704)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3745, file: !2453, line: 264, baseType: !3760, size: 64, align: 64, offset: 768)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64, align: 64)
!3761 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2453, line: 160, size: 192, align: 64, elements: !3762)
!3762 = !{!3763, !3764, !3766}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3761, file: !2453, line: 161, baseType: !3760, size: 64, align: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3761, file: !2453, line: 162, baseType: !3765, size: 64, align: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64, align: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3761, file: !2453, line: 166, baseType: !48, size: 32, align: 32, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3745, file: !2453, line: 266, baseType: !3765, size: 64, align: 64, offset: 832)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3745, file: !2453, line: 268, baseType: !48, size: 32, align: 32, offset: 896)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3745, file: !2453, line: 272, baseType: !48, size: 32, align: 32, offset: 928)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3745, file: !2453, line: 274, baseType: !2479, size: 64, align: 64, offset: 960)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3745, file: !2453, line: 278, baseType: !97, size: 16, align: 16, offset: 1024)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3745, file: !2453, line: 279, baseType: !2484, size: 8, align: 8, offset: 1040)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3745, file: !2453, line: 280, baseType: !2486, size: 8, align: 8, offset: 1048)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3745, file: !2453, line: 284, baseType: !2490, size: 64, align: 64, offset: 1088)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3745, file: !2453, line: 293, baseType: !2493, size: 64, align: 64, offset: 1152)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3745, file: !2453, line: 302, baseType: !14, size: 64, align: 64, offset: 1216)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3745, file: !2453, line: 303, baseType: !14, size: 64, align: 64, offset: 1280)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3745, file: !2453, line: 304, baseType: !14, size: 64, align: 64, offset: 1344)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3745, file: !2453, line: 305, baseType: !14, size: 64, align: 64, offset: 1408)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3745, file: !2453, line: 306, baseType: !94, size: 64, align: 64, offset: 1472)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3745, file: !2453, line: 308, baseType: !48, size: 32, align: 32, offset: 1536)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3745, file: !2453, line: 310, baseType: !2501, size: 160, align: 8, offset: 1568)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2451, line: 90, baseType: !2479)
!3784 = !DILocalVariable(name: "fp", arg: 1, scope: !3740, file: !540, line: 28, type: !3743)
!3785 = !DILocation(line: 28, column: 15, scope: !3740)
!3786 = !DILocalVariable(name: "offset", arg: 2, scope: !3740, file: !540, line: 28, type: !3783)
!3787 = !DILocation(line: 28, column: 25, scope: !3740)
!3788 = !DILocalVariable(name: "whence", arg: 3, scope: !3740, file: !540, line: 28, type: !48)
!3789 = !DILocation(line: 28, column: 37, scope: !3740)
!3790 = !DILocation(line: 51, column: 7, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3740, file: !540, line: 51, column: 7)
!3792 = !DILocation(line: 51, column: 11, scope: !3791)
!3793 = !DILocation(line: 51, column: 27, scope: !3791)
!3794 = !DILocation(line: 51, column: 31, scope: !3791)
!3795 = !DILocation(line: 51, column: 24, scope: !3791)
!3796 = !DILocation(line: 52, column: 7, scope: !3791)
!3797 = !DILocation(line: 52, column: 10, scope: !3798)
!3798 = !DILexicalBlockFile(scope: !3791, file: !540, discriminator: 1)
!3799 = !DILocation(line: 52, column: 14, scope: !3791)
!3800 = !DILocation(line: 52, column: 31, scope: !3791)
!3801 = !DILocation(line: 52, column: 35, scope: !3791)
!3802 = !DILocation(line: 52, column: 28, scope: !3791)
!3803 = !DILocation(line: 53, column: 7, scope: !3791)
!3804 = !DILocation(line: 53, column: 10, scope: !3798)
!3805 = !DILocation(line: 53, column: 14, scope: !3791)
!3806 = !DILocation(line: 53, column: 28, scope: !3791)
!3807 = !DILocation(line: 51, column: 7, scope: !3740)
!3808 = !DILocalVariable(name: "pos", scope: !3809, file: !540, line: 116, type: !3783)
!3809 = distinct !DILexicalBlock(scope: !3791, file: !540, line: 112, column: 5)
!3810 = !DILocation(line: 116, column: 13, scope: !3809)
!3811 = !DILocation(line: 116, column: 34, scope: !3809)
!3812 = !DILocation(line: 116, column: 26, scope: !3809)
!3813 = !DILocation(line: 116, column: 39, scope: !3809)
!3814 = !DILocation(line: 116, column: 47, scope: !3809)
!3815 = !DILocation(line: 116, column: 19, scope: !3809)
!3816 = !DILocation(line: 117, column: 11, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3809, file: !540, line: 117, column: 11)
!3818 = !DILocation(line: 117, column: 15, scope: !3817)
!3819 = !DILocation(line: 117, column: 11, scope: !3809)
!3820 = !DILocation(line: 123, column: 11, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3817, file: !540, line: 118, column: 9)
!3822 = !DILocation(line: 127, column: 7, scope: !3809)
!3823 = !DILocation(line: 127, column: 11, scope: !3809)
!3824 = !DILocation(line: 127, column: 18, scope: !3809)
!3825 = !DILocation(line: 128, column: 21, scope: !3809)
!3826 = !DILocation(line: 128, column: 7, scope: !3809)
!3827 = !DILocation(line: 128, column: 11, scope: !3809)
!3828 = !DILocation(line: 128, column: 19, scope: !3809)
!3829 = !DILocation(line: 159, column: 7, scope: !3809)
!3830 = !DILocation(line: 161, column: 18, scope: !3740)
!3831 = !DILocation(line: 161, column: 22, scope: !3740)
!3832 = !DILocation(line: 161, column: 30, scope: !3740)
!3833 = !DILocation(line: 161, column: 10, scope: !3740)
!3834 = !DILocation(line: 161, column: 3, scope: !3740)
!3835 = !DILocation(line: 162, column: 1, scope: !3740)
!3836 = distinct !DISubprogram(name: "c_isascii", scope: !542, file: !542, line: 27, type: !3837, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!39, !48}
!3839 = !DILocalVariable(name: "c", arg: 1, scope: !3836, file: !542, line: 27, type: !48)
!3840 = !DILocation(line: 27, column: 16, scope: !3836)
!3841 = !DILocation(line: 29, column: 11, scope: !3836)
!3842 = !DILocation(line: 29, column: 13, scope: !3836)
!3843 = !DILocation(line: 29, column: 21, scope: !3836)
!3844 = !DILocation(line: 29, column: 24, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3836, file: !542, discriminator: 1)
!3846 = !DILocation(line: 29, column: 26, scope: !3836)
!3847 = !DILocation(line: 29, column: 3, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !3836, file: !542, discriminator: 2)
!3849 = distinct !DISubprogram(name: "c_isalnum", scope: !542, file: !542, line: 33, type: !3837, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3850 = !DILocalVariable(name: "c", arg: 1, scope: !3849, file: !542, line: 33, type: !48)
!3851 = !DILocation(line: 33, column: 16, scope: !3849)
!3852 = !DILocation(line: 38, column: 12, scope: !3849)
!3853 = !DILocation(line: 38, column: 14, scope: !3849)
!3854 = !DILocation(line: 38, column: 21, scope: !3849)
!3855 = !DILocation(line: 38, column: 24, scope: !3856)
!3856 = !DILexicalBlockFile(scope: !3849, file: !542, discriminator: 1)
!3857 = !DILocation(line: 38, column: 26, scope: !3849)
!3858 = !DILocation(line: 39, column: 11, scope: !3849)
!3859 = !DILocation(line: 39, column: 16, scope: !3856)
!3860 = !DILocation(line: 39, column: 18, scope: !3849)
!3861 = !DILocation(line: 39, column: 27, scope: !3849)
!3862 = !DILocation(line: 39, column: 34, scope: !3849)
!3863 = !DILocation(line: 39, column: 38, scope: !3864)
!3864 = !DILexicalBlockFile(scope: !3849, file: !542, discriminator: 2)
!3865 = !DILocation(line: 39, column: 40, scope: !3849)
!3866 = !DILocation(line: 39, column: 49, scope: !3849)
!3867 = !DILocation(line: 39, column: 11, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !3849, file: !542, discriminator: 3)
!3869 = !DILocation(line: 38, column: 3, scope: !3849)
!3870 = distinct !DISubprogram(name: "c_isalpha", scope: !542, file: !542, line: 68, type: !3837, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3871 = !DILocalVariable(name: "c", arg: 1, scope: !3870, file: !542, line: 68, type: !48)
!3872 = !DILocation(line: 68, column: 16, scope: !3870)
!3873 = !DILocation(line: 72, column: 12, scope: !3870)
!3874 = !DILocation(line: 72, column: 14, scope: !3870)
!3875 = !DILocation(line: 72, column: 23, scope: !3870)
!3876 = !DILocation(line: 72, column: 30, scope: !3870)
!3877 = !DILocation(line: 72, column: 34, scope: !3878)
!3878 = !DILexicalBlockFile(scope: !3870, file: !542, discriminator: 1)
!3879 = !DILocation(line: 72, column: 36, scope: !3870)
!3880 = !DILocation(line: 72, column: 45, scope: !3870)
!3881 = !DILocation(line: 72, column: 3, scope: !3882)
!3882 = !DILexicalBlockFile(scope: !3870, file: !542, discriminator: 2)
!3883 = distinct !DISubprogram(name: "c_isblank", scope: !542, file: !542, line: 97, type: !3837, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3884 = !DILocalVariable(name: "c", arg: 1, scope: !3883, file: !542, line: 97, type: !48)
!3885 = !DILocation(line: 97, column: 16, scope: !3883)
!3886 = !DILocation(line: 99, column: 11, scope: !3883)
!3887 = !DILocation(line: 99, column: 13, scope: !3883)
!3888 = !DILocation(line: 99, column: 20, scope: !3883)
!3889 = !DILocation(line: 99, column: 23, scope: !3890)
!3890 = !DILexicalBlockFile(scope: !3883, file: !542, discriminator: 2)
!3891 = !DILocation(line: 99, column: 25, scope: !3883)
!3892 = !DILocation(line: 99, column: 3, scope: !3893)
!3893 = !DILexicalBlockFile(scope: !3894, file: !542, discriminator: 3)
!3894 = !DILexicalBlockFile(scope: !3883, file: !542, discriminator: 1)
!3895 = distinct !DISubprogram(name: "c_iscntrl", scope: !542, file: !542, line: 103, type: !3837, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3896 = !DILocalVariable(name: "c", arg: 1, scope: !3895, file: !542, line: 103, type: !48)
!3897 = !DILocation(line: 103, column: 16, scope: !3895)
!3898 = !DILocation(line: 106, column: 12, scope: !3895)
!3899 = !DILocation(line: 106, column: 14, scope: !3895)
!3900 = !DILocation(line: 106, column: 23, scope: !3895)
!3901 = !DILocation(line: 106, column: 28, scope: !3895)
!3902 = !DILocation(line: 106, column: 31, scope: !3903)
!3903 = !DILexicalBlockFile(scope: !3895, file: !542, discriminator: 2)
!3904 = !DILocation(line: 106, column: 33, scope: !3895)
!3905 = !DILocation(line: 106, column: 3, scope: !3906)
!3906 = !DILexicalBlockFile(scope: !3907, file: !542, discriminator: 3)
!3907 = !DILexicalBlockFile(scope: !3895, file: !542, discriminator: 1)
!3908 = distinct !DISubprogram(name: "c_isdigit", scope: !542, file: !542, line: 137, type: !3837, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3909 = !DILocalVariable(name: "c", arg: 1, scope: !3908, file: !542, line: 137, type: !48)
!3910 = !DILocation(line: 137, column: 16, scope: !3908)
!3911 = !DILocation(line: 140, column: 11, scope: !3908)
!3912 = !DILocation(line: 140, column: 13, scope: !3908)
!3913 = !DILocation(line: 140, column: 20, scope: !3908)
!3914 = !DILocation(line: 140, column: 23, scope: !3915)
!3915 = !DILexicalBlockFile(scope: !3908, file: !542, discriminator: 1)
!3916 = !DILocation(line: 140, column: 25, scope: !3908)
!3917 = !DILocation(line: 140, column: 3, scope: !3918)
!3918 = !DILexicalBlockFile(scope: !3908, file: !542, discriminator: 2)
!3919 = distinct !DISubprogram(name: "c_islower", scope: !542, file: !542, line: 154, type: !3837, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3920 = !DILocalVariable(name: "c", arg: 1, scope: !3919, file: !542, line: 154, type: !48)
!3921 = !DILocation(line: 154, column: 16, scope: !3919)
!3922 = !DILocation(line: 157, column: 11, scope: !3919)
!3923 = !DILocation(line: 157, column: 13, scope: !3919)
!3924 = !DILocation(line: 157, column: 20, scope: !3919)
!3925 = !DILocation(line: 157, column: 23, scope: !3926)
!3926 = !DILexicalBlockFile(scope: !3919, file: !542, discriminator: 1)
!3927 = !DILocation(line: 157, column: 25, scope: !3919)
!3928 = !DILocation(line: 157, column: 3, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !3919, file: !542, discriminator: 2)
!3930 = distinct !DISubprogram(name: "c_isgraph", scope: !542, file: !542, line: 174, type: !3837, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3931 = !DILocalVariable(name: "c", arg: 1, scope: !3930, file: !542, line: 174, type: !48)
!3932 = !DILocation(line: 174, column: 16, scope: !3930)
!3933 = !DILocation(line: 177, column: 11, scope: !3930)
!3934 = !DILocation(line: 177, column: 13, scope: !3930)
!3935 = !DILocation(line: 177, column: 20, scope: !3930)
!3936 = !DILocation(line: 177, column: 23, scope: !3937)
!3937 = !DILexicalBlockFile(scope: !3930, file: !542, discriminator: 1)
!3938 = !DILocation(line: 177, column: 25, scope: !3930)
!3939 = !DILocation(line: 177, column: 3, scope: !3940)
!3940 = !DILexicalBlockFile(scope: !3930, file: !542, discriminator: 2)
!3941 = distinct !DISubprogram(name: "c_isprint", scope: !542, file: !542, line: 208, type: !3837, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3942 = !DILocalVariable(name: "c", arg: 1, scope: !3941, file: !542, line: 208, type: !48)
!3943 = !DILocation(line: 208, column: 16, scope: !3941)
!3944 = !DILocation(line: 211, column: 11, scope: !3941)
!3945 = !DILocation(line: 211, column: 13, scope: !3941)
!3946 = !DILocation(line: 211, column: 20, scope: !3941)
!3947 = !DILocation(line: 211, column: 23, scope: !3948)
!3948 = !DILexicalBlockFile(scope: !3941, file: !542, discriminator: 1)
!3949 = !DILocation(line: 211, column: 25, scope: !3941)
!3950 = !DILocation(line: 211, column: 3, scope: !3951)
!3951 = !DILexicalBlockFile(scope: !3941, file: !542, discriminator: 2)
!3952 = distinct !DISubprogram(name: "c_ispunct", scope: !542, file: !542, line: 242, type: !3837, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3953 = !DILocalVariable(name: "c", arg: 1, scope: !3952, file: !542, line: 242, type: !48)
!3954 = !DILocation(line: 242, column: 16, scope: !3952)
!3955 = !DILocation(line: 245, column: 12, scope: !3952)
!3956 = !DILocation(line: 245, column: 14, scope: !3952)
!3957 = !DILocation(line: 245, column: 21, scope: !3952)
!3958 = !DILocation(line: 245, column: 24, scope: !3959)
!3959 = !DILexicalBlockFile(scope: !3952, file: !542, discriminator: 1)
!3960 = !DILocation(line: 245, column: 26, scope: !3952)
!3961 = !DILocation(line: 246, column: 11, scope: !3952)
!3962 = !DILocation(line: 246, column: 17, scope: !3959)
!3963 = !DILocation(line: 246, column: 19, scope: !3952)
!3964 = !DILocation(line: 246, column: 26, scope: !3952)
!3965 = !DILocation(line: 246, column: 29, scope: !3966)
!3966 = !DILexicalBlockFile(scope: !3952, file: !542, discriminator: 2)
!3967 = !DILocation(line: 246, column: 31, scope: !3952)
!3968 = !DILocation(line: 247, column: 16, scope: !3952)
!3969 = !DILocation(line: 247, column: 21, scope: !3959)
!3970 = !DILocation(line: 247, column: 23, scope: !3952)
!3971 = !DILocation(line: 247, column: 32, scope: !3952)
!3972 = !DILocation(line: 247, column: 39, scope: !3952)
!3973 = !DILocation(line: 247, column: 43, scope: !3966)
!3974 = !DILocation(line: 247, column: 45, scope: !3952)
!3975 = !DILocation(line: 247, column: 54, scope: !3952)
!3976 = !DILocation(line: 247, column: 16, scope: !3977)
!3977 = !DILexicalBlockFile(scope: !3952, file: !542, discriminator: 3)
!3978 = !DILocation(line: 246, column: 14, scope: !3952)
!3979 = !DILocation(line: 245, column: 3, scope: !3966)
!3980 = distinct !DISubprogram(name: "c_isspace", scope: !542, file: !542, line: 266, type: !3837, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!3981 = !DILocalVariable(name: "c", arg: 1, scope: !3980, file: !542, line: 266, type: !48)
!3982 = !DILocation(line: 266, column: 16, scope: !3980)
!3983 = !DILocation(line: 268, column: 11, scope: !3980)
!3984 = !DILocation(line: 268, column: 13, scope: !3980)
!3985 = !DILocation(line: 268, column: 20, scope: !3980)
!3986 = !DILocation(line: 268, column: 23, scope: !3987)
!3987 = !DILexicalBlockFile(scope: !3980, file: !542, discriminator: 2)
!3988 = !DILocation(line: 268, column: 25, scope: !3980)
!3989 = !DILocation(line: 269, column: 11, scope: !3980)
!3990 = !DILocation(line: 269, column: 14, scope: !3991)
!3991 = !DILexicalBlockFile(scope: !3980, file: !542, discriminator: 1)
!3992 = !DILocation(line: 269, column: 16, scope: !3980)
!3993 = !DILocation(line: 269, column: 24, scope: !3980)
!3994 = !DILocation(line: 269, column: 27, scope: !3987)
!3995 = !DILocation(line: 269, column: 29, scope: !3980)
!3996 = !DILocation(line: 269, column: 37, scope: !3980)
!3997 = !DILocation(line: 269, column: 40, scope: !3998)
!3998 = !DILexicalBlockFile(scope: !3980, file: !542, discriminator: 3)
!3999 = !DILocation(line: 269, column: 42, scope: !3980)
!4000 = !DILocation(line: 269, column: 50, scope: !3980)
!4001 = !DILocation(line: 269, column: 53, scope: !4002)
!4002 = !DILexicalBlockFile(scope: !3980, file: !542, discriminator: 4)
!4003 = !DILocation(line: 269, column: 55, scope: !3980)
!4004 = !DILocation(line: 268, column: 3, scope: !3991)
!4005 = distinct !DISubprogram(name: "c_isupper", scope: !542, file: !542, line: 273, type: !3837, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!4006 = !DILocalVariable(name: "c", arg: 1, scope: !4005, file: !542, line: 273, type: !48)
!4007 = !DILocation(line: 273, column: 16, scope: !4005)
!4008 = !DILocation(line: 276, column: 11, scope: !4005)
!4009 = !DILocation(line: 276, column: 13, scope: !4005)
!4010 = !DILocation(line: 276, column: 20, scope: !4005)
!4011 = !DILocation(line: 276, column: 23, scope: !4012)
!4012 = !DILexicalBlockFile(scope: !4005, file: !542, discriminator: 1)
!4013 = !DILocation(line: 276, column: 25, scope: !4005)
!4014 = !DILocation(line: 276, column: 3, scope: !4015)
!4015 = !DILexicalBlockFile(scope: !4005, file: !542, discriminator: 2)
!4016 = distinct !DISubprogram(name: "c_isxdigit", scope: !542, file: !542, line: 293, type: !3837, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!4017 = !DILocalVariable(name: "c", arg: 1, scope: !4016, file: !542, line: 293, type: !48)
!4018 = !DILocation(line: 293, column: 17, scope: !4016)
!4019 = !DILocation(line: 298, column: 12, scope: !4016)
!4020 = !DILocation(line: 298, column: 14, scope: !4016)
!4021 = !DILocation(line: 298, column: 21, scope: !4016)
!4022 = !DILocation(line: 298, column: 24, scope: !4023)
!4023 = !DILexicalBlockFile(scope: !4016, file: !542, discriminator: 1)
!4024 = !DILocation(line: 298, column: 26, scope: !4016)
!4025 = !DILocation(line: 299, column: 11, scope: !4016)
!4026 = !DILocation(line: 299, column: 16, scope: !4023)
!4027 = !DILocation(line: 299, column: 18, scope: !4016)
!4028 = !DILocation(line: 299, column: 27, scope: !4016)
!4029 = !DILocation(line: 299, column: 34, scope: !4016)
!4030 = !DILocation(line: 299, column: 38, scope: !4031)
!4031 = !DILexicalBlockFile(scope: !4016, file: !542, discriminator: 2)
!4032 = !DILocation(line: 299, column: 40, scope: !4016)
!4033 = !DILocation(line: 299, column: 49, scope: !4016)
!4034 = !DILocation(line: 299, column: 11, scope: !4035)
!4035 = !DILexicalBlockFile(scope: !4016, file: !542, discriminator: 3)
!4036 = !DILocation(line: 298, column: 3, scope: !4016)
!4037 = distinct !DISubprogram(name: "c_tolower", scope: !542, file: !542, line: 320, type: !4038, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!48, !48}
!4040 = !DILocalVariable(name: "c", arg: 1, scope: !4037, file: !542, line: 320, type: !48)
!4041 = !DILocation(line: 320, column: 16, scope: !4037)
!4042 = !DILocation(line: 323, column: 11, scope: !4037)
!4043 = !DILocation(line: 323, column: 13, scope: !4037)
!4044 = !DILocation(line: 323, column: 20, scope: !4037)
!4045 = !DILocation(line: 323, column: 23, scope: !4046)
!4046 = !DILexicalBlockFile(scope: !4037, file: !542, discriminator: 1)
!4047 = !DILocation(line: 323, column: 25, scope: !4037)
!4048 = !DILocation(line: 323, column: 34, scope: !4049)
!4049 = !DILexicalBlockFile(scope: !4037, file: !542, discriminator: 3)
!4050 = !DILocation(line: 323, column: 36, scope: !4037)
!4051 = !DILocation(line: 323, column: 42, scope: !4037)
!4052 = !DILocation(line: 323, column: 50, scope: !4053)
!4053 = !DILexicalBlockFile(scope: !4054, file: !542, discriminator: 4)
!4054 = !DILexicalBlockFile(scope: !4037, file: !542, discriminator: 2)
!4055 = !DILocation(line: 323, column: 3, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !4057, file: !542, discriminator: 6)
!4057 = !DILexicalBlockFile(scope: !4037, file: !542, discriminator: 5)
!4058 = distinct !DISubprogram(name: "c_toupper", scope: !542, file: !542, line: 359, type: !4038, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !11)
!4059 = !DILocalVariable(name: "c", arg: 1, scope: !4058, file: !542, line: 359, type: !48)
!4060 = !DILocation(line: 359, column: 16, scope: !4058)
!4061 = !DILocation(line: 362, column: 11, scope: !4058)
!4062 = !DILocation(line: 362, column: 13, scope: !4058)
!4063 = !DILocation(line: 362, column: 20, scope: !4058)
!4064 = !DILocation(line: 362, column: 23, scope: !4065)
!4065 = !DILexicalBlockFile(scope: !4058, file: !542, discriminator: 1)
!4066 = !DILocation(line: 362, column: 25, scope: !4058)
!4067 = !DILocation(line: 362, column: 34, scope: !4068)
!4068 = !DILexicalBlockFile(scope: !4058, file: !542, discriminator: 3)
!4069 = !DILocation(line: 362, column: 36, scope: !4058)
!4070 = !DILocation(line: 362, column: 42, scope: !4058)
!4071 = !DILocation(line: 362, column: 50, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !4073, file: !542, discriminator: 4)
!4073 = !DILexicalBlockFile(scope: !4058, file: !542, discriminator: 2)
!4074 = !DILocation(line: 362, column: 3, scope: !4075)
!4075 = !DILexicalBlockFile(scope: !4076, file: !542, discriminator: 6)
!4076 = !DILexicalBlockFile(scope: !4058, file: !542, discriminator: 5)
