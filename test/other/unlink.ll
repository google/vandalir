; ModuleID = './test/unlink.bc'
source_filename = "./test/unlink.bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stdout = external global %struct._IO_FILE*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [33 x i8] c"Usage: %s FILE\0A  or:  %s OPTION\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Call the unlink function to remove the specified FILE.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1
@emit_ancillary_info.infomap = internal constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16, !dbg !0
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
@.str.13 = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@Version = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), align 8, !dbg !24
@.str.29 = private unnamed_addr constant [5 x i8] c"8.24\00", align 1
@file_name = internal global i8* null, align 8, !dbg !30
@ignore_EPIPE = internal global i8 0, align 1, !dbg !39
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = internal global i32 1, align 4, !dbg !40
@opterr = external global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.40, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.41, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !48
@.str.1.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = internal global i8* null, align 8, !dbg !66
@program_invocation_short_name = external global i8*, align 8
@program_invocation_name = external global i8*, align 8
@.str.46 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@quoting_style_args = internal constant [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.60, i32 0, i32 0), i8* null], align 16, !dbg !74
@quoting_style_vals = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16, !dbg !157
@quote_quoting_options = internal global %struct.quoting_options { i32 6, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !158
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !159
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !160
@nslots = internal global i32 1, align 4, !dbg !161
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !162
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !163
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.4.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.5.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.6.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.7.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@.str.11.61 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.12.62 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.13.63 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.14.64 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.15.65 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.16.66 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@.str.8.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.10.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.9.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.74 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.75 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.76 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.77 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.78 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.79 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.80 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.81 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.82 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.83 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.84 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.85 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.86 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.87 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.88 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.89 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.90 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.91 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = internal constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !164
@.str.1.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.108 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@charset_aliases = internal global i8* null, align 8, !dbg !173
@.str.2.117 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.3.118 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.119 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.5.120 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.121 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(i32 %status) #0 !dbg !564 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load i32, i32* %status.addr, align 4, !dbg !569
  %cmp = icmp ne i32 %0, 0, !dbg !571
  br i1 %cmp, label %if.then, label %if.else, !dbg !572

if.then:                                          ; preds = %entry
  call void @emit_try_help(), !dbg !573
  br label %if.end, !dbg !573

if.else:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)) #10, !dbg !574
  %1 = load i8*, i8** @program_name, align 8, !dbg !576
  %2 = load i8*, i8** @program_name, align 8, !dbg !577
  %call1 = call i32 (i8*, ...) @printf(i8* %call, i8* %1, i8* %2), !dbg !578
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0)) #10, !dbg !579
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !579
  %call3 = call i32 @fputs_unlocked(i8* %call2, %struct._IO_FILE* %3), !dbg !579
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0)) #10, !dbg !580
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !580
  %call5 = call i32 @fputs_unlocked(i8* %call4, %struct._IO_FILE* %4), !dbg !580
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0)) #10, !dbg !581
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !581
  %call7 = call i32 @fputs_unlocked(i8* %call6, %struct._IO_FILE* %5), !dbg !581
  call void @emit_ancillary_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)), !dbg !582
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %status.addr, align 4, !dbg !583
  call void @exit(i32 %6) #14, !dbg !584
  unreachable, !dbg !584

return:                                           ; No predecessors!
  ret void, !dbg !585
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
define i32 @main(i32 %argc, i8** %argv) #5 !dbg !586 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !590, metadata !DIExpression()), !dbg !591
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !592, metadata !DIExpression()), !dbg !593
  %0 = load i8**, i8*** %argv.addr, align 8, !dbg !594
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !594
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !594
  call void @set_program_name(i8* %1), !dbg !595
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0)) #10, !dbg !596
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)) #10, !dbg !597
  %call2 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #10, !dbg !598
  %call3 = call i32 @atexit(void ()* @close_stdout) #10, !dbg !599
  %2 = load i32, i32* %argc.addr, align 4, !dbg !600
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !601
  %4 = load i8*, i8** @Version, align 8, !dbg !602
  call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %2, i8** %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %4, void (i32)* @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* null), !dbg !603
  %5 = load i32, i32* %argc.addr, align 4, !dbg !604
  %6 = load i8**, i8*** %argv.addr, align 8, !dbg !606
  %call4 = call i32 @getopt_long(i32 %5, i8** %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), %struct.option* null, i32* null) #10, !dbg !607
  %cmp = icmp ne i32 %call4, -1, !dbg !608
  br i1 %cmp, label %if.then, label %if.end, !dbg !609

if.then:                                          ; preds = %entry
  call void @usage(i32 1) #15, !dbg !610
  unreachable, !dbg !610

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %argc.addr, align 4, !dbg !611
  %8 = load i32, i32* @optind, align 4, !dbg !613
  %add = add nsw i32 %8, 1, !dbg !614
  %cmp5 = icmp slt i32 %7, %add, !dbg !615
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !616

if.then.6:                                        ; preds = %if.end
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)) #10, !dbg !617
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call7), !dbg !619
  call void @usage(i32 1) #15, !dbg !620
  unreachable, !dbg !620

if.end.8:                                         ; preds = %if.end
  %9 = load i32, i32* @optind, align 4, !dbg !621
  %add9 = add nsw i32 %9, 1, !dbg !623
  %10 = load i32, i32* %argc.addr, align 4, !dbg !624
  %cmp10 = icmp slt i32 %add9, %10, !dbg !625
  br i1 %cmp10, label %if.then.11, label %if.end.16, !dbg !626

if.then.11:                                       ; preds = %if.end.8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #10, !dbg !627
  %11 = load i32, i32* @optind, align 4, !dbg !629
  %add13 = add nsw i32 %11, 1, !dbg !630
  %idxprom = sext i32 %add13 to i64, !dbg !631
  %12 = load i8**, i8*** %argv.addr, align 8, !dbg !631
  %arrayidx14 = getelementptr inbounds i8*, i8** %12, i64 %idxprom, !dbg !631
  %13 = load i8*, i8** %arrayidx14, align 8, !dbg !631
  %call15 = call i8* @quote(i8* %13), !dbg !632
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call12, i8* %call15), !dbg !633
  call void @usage(i32 1) #15, !dbg !634
  unreachable, !dbg !634

if.end.16:                                        ; preds = %if.end.8
  %14 = load i32, i32* @optind, align 4, !dbg !635
  %idxprom17 = sext i32 %14 to i64, !dbg !637
  %15 = load i8**, i8*** %argv.addr, align 8, !dbg !637
  %arrayidx18 = getelementptr inbounds i8*, i8** %15, i64 %idxprom17, !dbg !637
  %16 = load i8*, i8** %arrayidx18, align 8, !dbg !637
  %call19 = call i32 @unlink(i8* %16) #10, !dbg !638
  %cmp20 = icmp ne i32 %call19, 0, !dbg !639
  br i1 %cmp20, label %if.then.21, label %if.end.27, !dbg !640

if.then.21:                                       ; preds = %if.end.16
  %call22 = call i32* @__errno_location() #16, !dbg !641
  %17 = load i32, i32* %call22, align 4, !dbg !641
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0)) #10, !dbg !642
  %18 = load i32, i32* @optind, align 4, !dbg !643
  %idxprom24 = sext i32 %18 to i64, !dbg !644
  %19 = load i8**, i8*** %argv.addr, align 8, !dbg !644
  %arrayidx25 = getelementptr inbounds i8*, i8** %19, i64 %idxprom24, !dbg !644
  %20 = load i8*, i8** %arrayidx25, align 8, !dbg !644
  %call26 = call i8* @quote(i8* %20), !dbg !645
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %17, i8* %call23, i8* %call26), !dbg !646
  br label %if.end.27, !dbg !646

if.end.27:                                        ; preds = %if.then.21, %if.end.16
  ret i32 0, !dbg !647
}

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #3

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #3

declare void @error(i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_try_help() #8 !dbg !648 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !651
  %call = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !652
  %1 = load i8*, i8** @program_name, align 8, !dbg !653
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %call, i8* %1), !dbg !654
  ret void, !dbg !655
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_ancillary_info(i8* %program) #8 !dbg !2 {
entry:
  %program.addr = alloca i8*, align 8
  %node = alloca i8*, align 8
  %map_prog = alloca %struct.infomap*, align 8
  %lc_messages = alloca i8*, align 8
  store i8* %program, i8** %program.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %program.addr, metadata !656, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata i8** %node, metadata !658, metadata !DIExpression()), !dbg !659
  %0 = load i8*, i8** %program.addr, align 8, !dbg !660
  store i8* %0, i8** %node, align 8, !dbg !659
  call void @llvm.dbg.declare(metadata %struct.infomap** %map_prog, metadata !661, metadata !DIExpression()), !dbg !663
  store %struct.infomap* getelementptr inbounds ([7 x %struct.infomap], [7 x %struct.infomap]* @emit_ancillary_info.infomap, i32 0, i32 0), %struct.infomap** %map_prog, align 8, !dbg !663
  br label %while.cond, !dbg !664

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !dbg !665
  %program1 = getelementptr inbounds %struct.infomap, %struct.infomap* %1, i32 0, i32 0, !dbg !668
  %2 = load i8*, i8** %program1, align 8, !dbg !668
  %tobool = icmp ne i8* %2, null, !dbg !669
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !670

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %program.addr, align 8, !dbg !671
  %4 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !dbg !671
  %program2 = getelementptr inbounds %struct.infomap, %struct.infomap* %4, i32 0, i32 0, !dbg !671
  %5 = load i8*, i8** %program2, align 8, !dbg !671
  %call = call i32 @strcmp(i8* %3, i8* %5) #17, !dbg !671
  %cmp = icmp eq i32 %call, 0, !dbg !671
  %lnot = xor i1 %cmp, true, !dbg !673
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %while.body, label %while.end, !dbg !674

while.body:                                       ; preds = %land.end
  %7 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !dbg !676
  %incdec.ptr = getelementptr inbounds %struct.infomap, %struct.infomap* %7, i32 1, !dbg !676
  store %struct.infomap* %incdec.ptr, %struct.infomap** %map_prog, align 8, !dbg !676
  br label %while.cond, !dbg !664

while.end:                                        ; preds = %land.end
  %8 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !dbg !677
  %node3 = getelementptr inbounds %struct.infomap, %struct.infomap* %8, i32 0, i32 1, !dbg !679
  %9 = load i8*, i8** %node3, align 8, !dbg !679
  %tobool4 = icmp ne i8* %9, null, !dbg !677
  br i1 %tobool4, label %if.then, label %if.end, !dbg !680

if.then:                                          ; preds = %while.end
  %10 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !dbg !681
  %node5 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i32 0, i32 1, !dbg !682
  %11 = load i8*, i8** %node5, align 8, !dbg !682
  store i8* %11, i8** %node, align 8, !dbg !683
  br label %if.end, !dbg !684

if.end:                                           ; preds = %if.then, %while.end
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0)) #10, !dbg !685
  %call7 = call i32 (i8*, ...) @printf(i8* %call6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0)), !dbg !686
  call void @llvm.dbg.declare(metadata i8** %lc_messages, metadata !687, metadata !DIExpression()), !dbg !688
  %call8 = call i8* @setlocale(i32 5, i8* null) #10, !dbg !689
  store i8* %call8, i8** %lc_messages, align 8, !dbg !688
  %12 = load i8*, i8** %lc_messages, align 8, !dbg !690
  %tobool9 = icmp ne i8* %12, null, !dbg !690
  br i1 %tobool9, label %land.lhs.true, label %if.end.15, !dbg !692

land.lhs.true:                                    ; preds = %if.end
  %13 = load i8*, i8** %lc_messages, align 8, !dbg !693
  %call10 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i64 3) #17, !dbg !693
  %tobool11 = icmp ne i32 %call10, 0, !dbg !693
  br i1 %tobool11, label %if.then.12, label %if.end.15, !dbg !695

if.then.12:                                       ; preds = %land.lhs.true
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i32 0, i32 0)) #10, !dbg !696
  %14 = load i8*, i8** %program.addr, align 8, !dbg !698
  %call14 = call i32 (i8*, ...) @printf(i8* %call13, i8* %14), !dbg !699
  br label %if.end.15, !dbg !700

if.end.15:                                        ; preds = %if.then.12, %land.lhs.true, %if.end
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !701
  %15 = load i8*, i8** %program.addr, align 8, !dbg !702
  %call17 = call i32 (i8*, ...) @printf(i8* %call16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i8* %15), !dbg !703
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0)) #10, !dbg !704
  %16 = load i8*, i8** %node, align 8, !dbg !705
  %17 = load i8*, i8** %node, align 8, !dbg !706
  %18 = load i8*, i8** %program.addr, align 8, !dbg !707
  %cmp19 = icmp eq i8* %17, %18, !dbg !708
  %cond = select i1 %cmp19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), !dbg !706
  %call20 = call i32 (i8*, ...) @printf(i8* %call18, i8* %16, i8* %cond), !dbg !709
  ret void, !dbg !710
}

; Function Attrs: nounwind uwtable
define internal void @close_stdout_set_file_name(i8* %file) #5 !dbg !711 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %file.addr, metadata !712, metadata !DIExpression()), !dbg !713
  %0 = load i8*, i8** %file.addr, align 8, !dbg !714
  store i8* %0, i8** @file_name, align 8, !dbg !715
  ret void, !dbg !716
}

; Function Attrs: nounwind uwtable
define internal void @close_stdout_set_ignore_EPIPE(i1 zeroext %ignore) #5 !dbg !717 {
entry:
  %ignore.addr = alloca i8, align 1
  %frombool = zext i1 %ignore to i8
  store i8 %frombool, i8* %ignore.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ignore.addr, metadata !720, metadata !DIExpression()), !dbg !721
  %0 = load i8, i8* %ignore.addr, align 1, !dbg !722
  %tobool = trunc i8 %0 to i1, !dbg !722
  %frombool1 = zext i1 %tobool to i8, !dbg !723
  store i8 %frombool1, i8* @ignore_EPIPE, align 1, !dbg !723
  ret void, !dbg !724
}

; Function Attrs: nounwind uwtable
define internal void @close_stdout() #5 !dbg !725 {
entry:
  %write_error = alloca i8*, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !726
  %call = call i32 @close_stream(%struct._IO_FILE* %0), !dbg !728
  %cmp = icmp ne i32 %call, 0, !dbg !729
  br i1 %cmp, label %land.lhs.true, label %if.end.10, !dbg !730

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* @ignore_EPIPE, align 1, !dbg !731
  %tobool = trunc i8 %1 to i1, !dbg !731
  br i1 %tobool, label %land.lhs.true.1, label %if.then, !dbg !733

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %call2 = call i32* @__errno_location() #16, !dbg !734
  %2 = load i32, i32* %call2, align 4, !dbg !734
  %cmp3 = icmp eq i32 %2, 32, !dbg !736
  br i1 %cmp3, label %if.end.10, label %if.then, !dbg !737

if.then:                                          ; preds = %land.lhs.true.1, %land.lhs.true
  call void @llvm.dbg.declare(metadata i8** %write_error, metadata !738, metadata !DIExpression()), !dbg !740
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0)) #10, !dbg !741
  store i8* %call4, i8** %write_error, align 8, !dbg !740
  %3 = load i8*, i8** @file_name, align 8, !dbg !742
  %tobool5 = icmp ne i8* %3, null, !dbg !742
  br i1 %tobool5, label %if.then.6, label %if.else, !dbg !744

if.then.6:                                        ; preds = %if.then
  %call7 = call i32* @__errno_location() #16, !dbg !745
  %4 = load i32, i32* %call7, align 4, !dbg !745
  %5 = load i8*, i8** @file_name, align 8, !dbg !746
  %call8 = call i8* @quotearg_colon(i8* %5), !dbg !747
  %6 = load i8*, i8** %write_error, align 8, !dbg !748
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i32 0, i32 0), i8* %call8, i8* %6), !dbg !749
  br label %if.end, !dbg !749

if.else:                                          ; preds = %if.then
  %call9 = call i32* @__errno_location() #16, !dbg !750
  %7 = load i32, i32* %call9, align 4, !dbg !750
  %8 = load i8*, i8** %write_error, align 8, !dbg !751
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i32 0, i32 0), i8* %8), !dbg !752
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %9 = load volatile i32, i32* @exit_failure, align 4, !dbg !753
  call void @_exit(i32 %9) #15, !dbg !754
  unreachable, !dbg !754

if.end.10:                                        ; preds = %land.lhs.true.1, %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !755
  %call11 = call i32 @close_stream(%struct._IO_FILE* %10), !dbg !757
  %cmp12 = icmp ne i32 %call11, 0, !dbg !758
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !759

if.then.13:                                       ; preds = %if.end.10
  %11 = load volatile i32, i32* @exit_failure, align 4, !dbg !760
  call void @_exit(i32 %11) #15, !dbg !761
  unreachable, !dbg !761

if.end.14:                                        ; preds = %if.end.10
  ret void, !dbg !762
}

; Function Attrs: noreturn
declare void @_exit(i32) #9

; Function Attrs: nounwind uwtable
define internal void @parse_long_options(i32 %argc, i8** %argv, i8* %command_name, i8* %package, i8* %version, void (i32)* %usage_func, ...) #5 !dbg !763 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %usage_func.addr = alloca void (i32)*, align 8
  %c = alloca i32, align 4
  %saved_opterr = alloca i32, align 4
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !767, metadata !DIExpression()), !dbg !768
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !769, metadata !DIExpression()), !dbg !770
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %command_name.addr, metadata !771, metadata !DIExpression()), !dbg !772
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %package.addr, metadata !773, metadata !DIExpression()), !dbg !774
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %version.addr, metadata !775, metadata !DIExpression()), !dbg !776
  store void (i32)* %usage_func, void (i32)** %usage_func.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %usage_func.addr, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.declare(metadata i32* %c, metadata !779, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.declare(metadata i32* %saved_opterr, metadata !781, metadata !DIExpression()), !dbg !782
  %0 = load i32, i32* @opterr, align 4, !dbg !783
  store i32 %0, i32* %saved_opterr, align 4, !dbg !784
  store i32 0, i32* @opterr, align 4, !dbg !785
  %1 = load i32, i32* %argc.addr, align 4, !dbg !786
  %cmp = icmp eq i32 %1, 2, !dbg !788
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !789

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %argc.addr, align 4, !dbg !790
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !792
  %call = call i32 @getopt_long(i32 %2, i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i32 0, i32 0), i32* null) #10, !dbg !793
  store i32 %call, i32* %c, align 4, !dbg !794
  %cmp1 = icmp ne i32 %call, -1, !dbg !795
  br i1 %cmp1, label %if.then, label %if.end, !dbg !796

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %c, align 4, !dbg !797
  switch i32 %4, label %sw.default [
    i32 104, label %sw.bb
    i32 118, label %sw.bb.2
  ], !dbg !799

sw.bb:                                            ; preds = %if.then
  %5 = load void (i32)*, void (i32)** %usage_func.addr, align 8, !dbg !800
  call void %5(i32 0), !dbg !802
  br label %sw.bb.2, !dbg !802

sw.bb.2:                                          ; preds = %sw.bb, %if.then
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %authors, metadata !803, metadata !DIExpression()), !dbg !820
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !821
  %arraydecay3 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !821
  call void @llvm.va_start(i8* %arraydecay3), !dbg !821
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !822
  %7 = load i8*, i8** %command_name.addr, align 8, !dbg !823
  %8 = load i8*, i8** %package.addr, align 8, !dbg !824
  %9 = load i8*, i8** %version.addr, align 8, !dbg !825
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !826
  call void @version_etc_va(%struct._IO_FILE* %6, i8* %7, i8* %8, i8* %9, %struct.__va_list_tag* %arraydecay4), !dbg !827
  call void @exit(i32 0) #14, !dbg !828
  unreachable, !dbg !828

sw.default:                                       ; preds = %if.then
  br label %sw.epilog, !dbg !829

sw.epilog:                                        ; preds = %sw.default
  br label %if.end, !dbg !830

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %entry
  %10 = load i32, i32* %saved_opterr, align 4, !dbg !831
  store i32 %10, i32* @opterr, align 4, !dbg !832
  store i32 0, i32* @optind, align 4, !dbg !833
  ret void, !dbg !834
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind uwtable
define internal void @set_program_name(i8* %argv0) #5 !dbg !835 {
entry:
  %argv0.addr = alloca i8*, align 8
  %slash = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %argv0, i8** %argv0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %argv0.addr, metadata !836, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.declare(metadata i8** %slash, metadata !838, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.declare(metadata i8** %base, metadata !840, metadata !DIExpression()), !dbg !841
  %0 = load i8*, i8** %argv0.addr, align 8, !dbg !842
  %cmp = icmp eq i8* %0, null, !dbg !844
  br i1 %cmp, label %if.then, label %if.end, !dbg !845

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !846
  %call = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i32 0, i32 0), %struct._IO_FILE* %1), !dbg !848
  call void @abort() #14, !dbg !849
  unreachable, !dbg !849

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %argv0.addr, align 8, !dbg !850
  %call1 = call i8* @strrchr(i8* %2, i32 47) #17, !dbg !851
  store i8* %call1, i8** %slash, align 8, !dbg !852
  %3 = load i8*, i8** %slash, align 8, !dbg !853
  %cmp2 = icmp ne i8* %3, null, !dbg !854
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !853

cond.true:                                        ; preds = %if.end
  %4 = load i8*, i8** %slash, align 8, !dbg !855
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !857
  br label %cond.end, !dbg !853

cond.false:                                       ; preds = %if.end
  %5 = load i8*, i8** %argv0.addr, align 8, !dbg !858
  br label %cond.end, !dbg !853

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %5, %cond.false ], !dbg !853
  store i8* %cond, i8** %base, align 8, !dbg !860
  %6 = load i8*, i8** %base, align 8, !dbg !863
  %7 = load i8*, i8** %argv0.addr, align 8, !dbg !865
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64, !dbg !866
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !866
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !866
  %cmp3 = icmp sge i64 %sub.ptr.sub, 7, !dbg !867
  br i1 %cmp3, label %land.lhs.true, label %if.end.13, !dbg !868

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i8*, i8** %base, align 8, !dbg !869
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 -7, !dbg !871
  %call5 = call i32 @strncmp(i8* %add.ptr4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.47, i32 0, i32 0), i64 7) #17, !dbg !872
  %cmp6 = icmp eq i32 %call5, 0, !dbg !873
  br i1 %cmp6, label %if.then.7, label %if.end.13, !dbg !874

if.then.7:                                        ; preds = %land.lhs.true
  %9 = load i8*, i8** %base, align 8, !dbg !875
  store i8* %9, i8** %argv0.addr, align 8, !dbg !877
  %10 = load i8*, i8** %base, align 8, !dbg !878
  %call8 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.48, i32 0, i32 0), i64 3) #17, !dbg !880
  %cmp9 = icmp eq i32 %call8, 0, !dbg !881
  br i1 %cmp9, label %if.then.10, label %if.end.12, !dbg !882

if.then.10:                                       ; preds = %if.then.7
  %11 = load i8*, i8** %base, align 8, !dbg !883
  %add.ptr11 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !885
  store i8* %add.ptr11, i8** %argv0.addr, align 8, !dbg !886
  %12 = load i8*, i8** %argv0.addr, align 8, !dbg !887
  store i8* %12, i8** @program_invocation_short_name, align 8, !dbg !888
  br label %if.end.12, !dbg !889

if.end.12:                                        ; preds = %if.then.10, %if.then.7
  br label %if.end.13, !dbg !890

if.end.13:                                        ; preds = %if.end.12, %land.lhs.true, %cond.end
  %13 = load i8*, i8** %argv0.addr, align 8, !dbg !891
  store i8* %13, i8** @program_name, align 8, !dbg !892
  %14 = load i8*, i8** %argv0.addr, align 8, !dbg !893
  store i8* %14, i8** @program_invocation_name, align 8, !dbg !894
  ret void, !dbg !895
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #7

; Function Attrs: nounwind uwtable
define internal %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) #5 !dbg !896 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %p = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !900, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.declare(metadata i32* %e, metadata !902, metadata !DIExpression()), !dbg !903
  %call = call i32* @__errno_location() #16, !dbg !904
  %0 = load i32, i32* %call, align 4, !dbg !904
  store i32 %0, i32* %e, align 4, !dbg !903
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %p, metadata !905, metadata !DIExpression()), !dbg !906
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !907
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !907
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !907

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !908
  br label %cond.end, !dbg !907

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !910

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !907
  %3 = bitcast %struct.quoting_options* %cond to i8*, !dbg !912
  %call1 = call i8* @xmemdup(i8* %3, i64 56), !dbg !915
  %4 = bitcast i8* %call1 to %struct.quoting_options*, !dbg !915
  store %struct.quoting_options* %4, %struct.quoting_options** %p, align 8, !dbg !906
  %5 = load i32, i32* %e, align 4, !dbg !916
  %call2 = call i32* @__errno_location() #16, !dbg !917
  store i32 %5, i32* %call2, align 4, !dbg !918
  %6 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !919
  ret %struct.quoting_options* %6, !dbg !920
}

; Function Attrs: nounwind uwtable
define internal i32 @get_quoting_style(%struct.quoting_options* %o) #5 !dbg !921 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !924, metadata !DIExpression()), !dbg !925
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !926
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !926
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !926

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !927
  br label %cond.end, !dbg !926

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !929

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !926
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 0, !dbg !931
  %2 = load i32, i32* %style, align 4, !dbg !931
  ret i32 %2, !dbg !934
}

; Function Attrs: nounwind uwtable
define internal void @set_quoting_style(%struct.quoting_options* %o, i32 %s) #5 !dbg !935 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %s.addr = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !938, metadata !DIExpression()), !dbg !939
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !940, metadata !DIExpression()), !dbg !941
  %0 = load i32, i32* %s.addr, align 4, !dbg !942
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !943
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !943
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !943

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !944
  br label %cond.end, !dbg !943

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !946

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !943
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 0, !dbg !948
  store i32 %0, i32* %style, align 4, !dbg !951
  ret void, !dbg !952
}

; Function Attrs: nounwind uwtable
define internal i32 @set_char_quoting(%struct.quoting_options* %o, i8 signext %c, i32 %i) #5 !dbg !953 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %c.addr = alloca i8, align 1
  %i.addr = alloca i32, align 4
  %uc = alloca i8, align 1
  %p = alloca i32*, align 8
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !956, metadata !DIExpression()), !dbg !957
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !958, metadata !DIExpression()), !dbg !959
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata i8* %uc, metadata !962, metadata !DIExpression()), !dbg !963
  %0 = load i8, i8* %c.addr, align 1, !dbg !964
  store i8 %0, i8* %uc, align 1, !dbg !963
  call void @llvm.dbg.declare(metadata i32** %p, metadata !965, metadata !DIExpression()), !dbg !967
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !968
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !968
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !968

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !969
  br label %cond.end, !dbg !968

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !971

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !968
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 2, !dbg !973
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !976
  %3 = load i8, i8* %uc, align 1, !dbg !977
  %conv = zext i8 %3 to i64, !dbg !977
  %div = udiv i64 %conv, 32, !dbg !978
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 %div, !dbg !979
  store i32* %add.ptr, i32** %p, align 8, !dbg !967
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !980, metadata !DIExpression()), !dbg !981
  %4 = load i8, i8* %uc, align 1, !dbg !982
  %conv1 = zext i8 %4 to i64, !dbg !982
  %rem = urem i64 %conv1, 32, !dbg !983
  %conv2 = trunc i64 %rem to i32, !dbg !982
  store i32 %conv2, i32* %shift, align 4, !dbg !981
  call void @llvm.dbg.declare(metadata i32* %r, metadata !984, metadata !DIExpression()), !dbg !985
  %5 = load i32*, i32** %p, align 8, !dbg !986
  %6 = load i32, i32* %5, align 4, !dbg !987
  %7 = load i32, i32* %shift, align 4, !dbg !988
  %shr = lshr i32 %6, %7, !dbg !989
  %and = and i32 %shr, 1, !dbg !990
  store i32 %and, i32* %r, align 4, !dbg !985
  %8 = load i32, i32* %i.addr, align 4, !dbg !991
  %and3 = and i32 %8, 1, !dbg !992
  %9 = load i32, i32* %r, align 4, !dbg !993
  %xor = xor i32 %and3, %9, !dbg !994
  %10 = load i32, i32* %shift, align 4, !dbg !995
  %shl = shl i32 %xor, %10, !dbg !996
  %11 = load i32*, i32** %p, align 8, !dbg !997
  %12 = load i32, i32* %11, align 4, !dbg !998
  %xor4 = xor i32 %12, %shl, !dbg !998
  store i32 %xor4, i32* %11, align 4, !dbg !998
  %13 = load i32, i32* %r, align 4, !dbg !999
  ret i32 %13, !dbg !1000
}

; Function Attrs: nounwind uwtable
define internal i32 @set_quoting_flags(%struct.quoting_options* %o, i32 %i) #5 !dbg !1001 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %i.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !1004, metadata !DIExpression()), !dbg !1005
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !1006, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %r, metadata !1008, metadata !DIExpression()), !dbg !1009
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1010
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !1010
  br i1 %tobool, label %if.end, label %if.then, !dbg !1012

if.then:                                          ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %o.addr, align 8, !dbg !1013
  br label %if.end, !dbg !1014

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1015
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %1, i32 0, i32 1, !dbg !1016
  %2 = load i32, i32* %flags, align 4, !dbg !1016
  store i32 %2, i32* %r, align 4, !dbg !1017
  %3 = load i32, i32* %i.addr, align 4, !dbg !1018
  %4 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1019
  %flags1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i32 0, i32 1, !dbg !1020
  store i32 %3, i32* %flags1, align 4, !dbg !1021
  %5 = load i32, i32* %r, align 4, !dbg !1022
  ret i32 %5, !dbg !1023
}

; Function Attrs: nounwind uwtable
define internal void @set_custom_quoting(%struct.quoting_options* %o, i8* %left_quote, i8* %right_quote) #5 !dbg !1024 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !1027, metadata !DIExpression()), !dbg !1028
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1029, metadata !DIExpression()), !dbg !1030
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1031, metadata !DIExpression()), !dbg !1032
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1033
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !1033
  br i1 %tobool, label %if.end, label %if.then, !dbg !1035

if.then:                                          ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %o.addr, align 8, !dbg !1036
  br label %if.end, !dbg !1037

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1038
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %1, i32 0, i32 0, !dbg !1039
  store i32 8, i32* %style, align 4, !dbg !1040
  %2 = load i8*, i8** %left_quote.addr, align 8, !dbg !1041
  %tobool1 = icmp ne i8* %2, null, !dbg !1041
  br i1 %tobool1, label %lor.lhs.false, label %if.then.3, !dbg !1043

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i8*, i8** %right_quote.addr, align 8, !dbg !1044
  %tobool2 = icmp ne i8* %3, null, !dbg !1044
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !1046

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  call void @abort() #14, !dbg !1047
  unreachable, !dbg !1047

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i8*, i8** %left_quote.addr, align 8, !dbg !1048
  %5 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1049
  %left_quote5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i32 0, i32 3, !dbg !1050
  store i8* %4, i8** %left_quote5, align 8, !dbg !1051
  %6 = load i8*, i8** %right_quote.addr, align 8, !dbg !1052
  %7 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1053
  %right_quote6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i32 0, i32 4, !dbg !1054
  store i8* %6, i8** %right_quote6, align 8, !dbg !1055
  ret void, !dbg !1056
}

; Function Attrs: nounwind uwtable
define internal i64 @quotearg_buffer(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, %struct.quoting_options* %o) #5 !dbg !1057 {
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
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1062, metadata !DIExpression()), !dbg !1063
  store i64 %buffersize, i64* %buffersize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %buffersize.addr, metadata !1064, metadata !DIExpression()), !dbg !1065
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1066, metadata !DIExpression()), !dbg !1067
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1068, metadata !DIExpression()), !dbg !1069
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !1070, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %p, metadata !1072, metadata !DIExpression()), !dbg !1073
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1074
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !1074
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1074

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1075
  br label %cond.end, !dbg !1074

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1077

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !1074
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8, !dbg !1079
  call void @llvm.dbg.declare(metadata i32* %e, metadata !1082, metadata !DIExpression()), !dbg !1083
  %call = call i32* @__errno_location() #16, !dbg !1084
  %2 = load i32, i32* %call, align 4, !dbg !1084
  store i32 %2, i32* %e, align 4, !dbg !1083
  call void @llvm.dbg.declare(metadata i64* %r, metadata !1085, metadata !DIExpression()), !dbg !1086
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !1087
  %4 = load i64, i64* %buffersize.addr, align 8, !dbg !1088
  %5 = load i8*, i8** %arg.addr, align 8, !dbg !1089
  %6 = load i64, i64* %argsize.addr, align 8, !dbg !1090
  %7 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1091
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i32 0, i32 0, !dbg !1092
  %8 = load i32, i32* %style, align 4, !dbg !1092
  %9 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1093
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 1, !dbg !1094
  %10 = load i32, i32* %flags, align 4, !dbg !1094
  %11 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1095
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 2, !dbg !1096
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !1095
  %12 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1097
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 3, !dbg !1098
  %13 = load i8*, i8** %left_quote, align 8, !dbg !1098
  %14 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1099
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 4, !dbg !1100
  %15 = load i8*, i8** %right_quote, align 8, !dbg !1100
  %call1 = call i64 @quotearg_buffer_restyled(i8* %3, i64 %4, i8* %5, i64 %6, i32 %8, i32 %10, i32* %arraydecay, i8* %13, i8* %15), !dbg !1101
  store i64 %call1, i64* %r, align 8, !dbg !1086
  %16 = load i32, i32* %e, align 4, !dbg !1102
  %call2 = call i32* @__errno_location() #16, !dbg !1103
  store i32 %16, i32* %call2, align 4, !dbg !1104
  %17 = load i64, i64* %r, align 8, !dbg !1105
  ret i64 %17, !dbg !1106
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_alloc(i8* %arg, i64 %argsize, %struct.quoting_options* %o) #5 !dbg !1107 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1110, metadata !DIExpression()), !dbg !1111
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1112, metadata !DIExpression()), !dbg !1113
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !1114, metadata !DIExpression()), !dbg !1115
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1116
  %1 = load i64, i64* %argsize.addr, align 8, !dbg !1117
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1118
  %call = call i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* null, %struct.quoting_options* %2), !dbg !1119
  ret i8* %call, !dbg !1120
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_alloc_mem(i8* %arg, i64 %argsize, i64* %size, %struct.quoting_options* %o) #5 !dbg !1121 {
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
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1124, metadata !DIExpression()), !dbg !1125
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1126, metadata !DIExpression()), !dbg !1127
  store i64* %size, i64** %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %size.addr, metadata !1128, metadata !DIExpression()), !dbg !1129
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %o.addr, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %p, metadata !1132, metadata !DIExpression()), !dbg !1133
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1134
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !1134
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1134

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !dbg !1135
  br label %cond.end, !dbg !1134

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1137

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !1134
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8, !dbg !1139
  call void @llvm.dbg.declare(metadata i32* %e, metadata !1142, metadata !DIExpression()), !dbg !1143
  %call = call i32* @__errno_location() #16, !dbg !1144
  %2 = load i32, i32* %call, align 4, !dbg !1144
  store i32 %2, i32* %e, align 4, !dbg !1143
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !1145, metadata !DIExpression()), !dbg !1146
  %3 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1147
  %flags1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i32 0, i32 1, !dbg !1148
  %4 = load i32, i32* %flags1, align 4, !dbg !1148
  %5 = load i64*, i64** %size.addr, align 8, !dbg !1149
  %tobool2 = icmp ne i64* %5, null, !dbg !1149
  %cond3 = select i1 %tobool2, i32 0, i32 1, !dbg !1149
  %or = or i32 %4, %cond3, !dbg !1150
  store i32 %or, i32* %flags, align 4, !dbg !1146
  call void @llvm.dbg.declare(metadata i64* %bufsize, metadata !1151, metadata !DIExpression()), !dbg !1152
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1153
  %7 = load i64, i64* %argsize.addr, align 8, !dbg !1154
  %8 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1155
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %8, i32 0, i32 0, !dbg !1156
  %9 = load i32, i32* %style, align 4, !dbg !1156
  %10 = load i32, i32* %flags, align 4, !dbg !1157
  %11 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1158
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 2, !dbg !1159
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !1158
  %12 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1160
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 3, !dbg !1161
  %13 = load i8*, i8** %left_quote, align 8, !dbg !1161
  %14 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1162
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 4, !dbg !1163
  %15 = load i8*, i8** %right_quote, align 8, !dbg !1163
  %call4 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %6, i64 %7, i32 %9, i32 %10, i32* %arraydecay, i8* %13, i8* %15), !dbg !1164
  %add = add i64 %call4, 1, !dbg !1165
  store i64 %add, i64* %bufsize, align 8, !dbg !1152
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !1166, metadata !DIExpression()), !dbg !1167
  %16 = load i64, i64* %bufsize, align 8, !dbg !1168
  %call5 = call noalias i8* @xcharalloc(i64 %16), !dbg !1169
  store i8* %call5, i8** %buf, align 8, !dbg !1167
  %17 = load i8*, i8** %buf, align 8, !dbg !1170
  %18 = load i64, i64* %bufsize, align 8, !dbg !1171
  %19 = load i8*, i8** %arg.addr, align 8, !dbg !1172
  %20 = load i64, i64* %argsize.addr, align 8, !dbg !1173
  %21 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1174
  %style6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 0, !dbg !1175
  %22 = load i32, i32* %style6, align 4, !dbg !1175
  %23 = load i32, i32* %flags, align 4, !dbg !1176
  %24 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1177
  %quote_these_too7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 2, !dbg !1178
  %arraydecay8 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too7, i32 0, i32 0, !dbg !1177
  %25 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1179
  %left_quote9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %25, i32 0, i32 3, !dbg !1180
  %26 = load i8*, i8** %left_quote9, align 8, !dbg !1180
  %27 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !dbg !1181
  %right_quote10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 4, !dbg !1182
  %28 = load i8*, i8** %right_quote10, align 8, !dbg !1182
  %call11 = call i64 @quotearg_buffer_restyled(i8* %17, i64 %18, i8* %19, i64 %20, i32 %22, i32 %23, i32* %arraydecay8, i8* %26, i8* %28), !dbg !1183
  %29 = load i32, i32* %e, align 4, !dbg !1184
  %call12 = call i32* @__errno_location() #16, !dbg !1185
  store i32 %29, i32* %call12, align 4, !dbg !1186
  %30 = load i64*, i64** %size.addr, align 8, !dbg !1187
  %tobool13 = icmp ne i64* %30, null, !dbg !1187
  br i1 %tobool13, label %if.then, label %if.end, !dbg !1189

if.then:                                          ; preds = %cond.end
  %31 = load i64, i64* %bufsize, align 8, !dbg !1190
  %sub = sub i64 %31, 1, !dbg !1191
  %32 = load i64*, i64** %size.addr, align 8, !dbg !1192
  store i64 %sub, i64* %32, align 8, !dbg !1193
  br label %if.end, !dbg !1194

if.end:                                           ; preds = %if.then, %cond.end
  %33 = load i8*, i8** %buf, align 8, !dbg !1195
  ret i8* %33, !dbg !1196
}

; Function Attrs: nounwind uwtable
define internal void @quotearg_free() #5 !dbg !1197 {
entry:
  %sv = alloca %struct.slotvec*, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %sv, metadata !1198, metadata !DIExpression()), !dbg !1199
  %0 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1200
  store %struct.slotvec* %0, %struct.slotvec** %sv, align 8, !dbg !1199
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i32 1, i32* %i, align 4, !dbg !1203
  br label %for.cond, !dbg !1205

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !1206
  %2 = load i32, i32* @nslots, align 4, !dbg !1210
  %cmp = icmp ult i32 %1, %2, !dbg !1211
  br i1 %cmp, label %for.body, label %for.end, !dbg !1212

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !1213
  %idxprom = zext i32 %3 to i64, !dbg !1214
  %4 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !1214
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %4, i64 %idxprom, !dbg !1214
  %val = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 1, !dbg !1215
  %5 = load i8*, i8** %val, align 8, !dbg !1215
  call void @free(i8* %5) #10, !dbg !1216
  br label %for.inc, !dbg !1216

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !1217
  %inc = add i32 %6, 1, !dbg !1217
  store i32 %inc, i32* %i, align 4, !dbg !1217
  br label %for.cond, !dbg !1218

for.end:                                          ; preds = %for.cond
  %7 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !1219
  %arrayidx1 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %7, i64 0, !dbg !1219
  %val2 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx1, i32 0, i32 1, !dbg !1221
  %8 = load i8*, i8** %val2, align 8, !dbg !1221
  %cmp3 = icmp ne i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), !dbg !1222
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1223

if.then:                                          ; preds = %for.end
  %9 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !1224
  %arrayidx4 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 0, !dbg !1224
  %val5 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx4, i32 0, i32 1, !dbg !1226
  %10 = load i8*, i8** %val5, align 8, !dbg !1226
  call void @free(i8* %10) #10, !dbg !1227
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !1228
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !1229
  br label %if.end, !dbg !1230

if.end:                                           ; preds = %if.then, %for.end
  %11 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !1231
  %cmp6 = icmp ne %struct.slotvec* %11, @slotvec0, !dbg !1233
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1234

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !1235
  %13 = bitcast %struct.slotvec* %12 to i8*, !dbg !1235
  call void @free(i8* %13) #10, !dbg !1237
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1238
  br label %if.end.8, !dbg !1239

if.end.8:                                         ; preds = %if.then.7, %if.end
  store i32 1, i32* @nslots, align 4, !dbg !1240
  ret void, !dbg !1241
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n(i32 %n, i8* %arg) #5 !dbg !1242 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1247, metadata !DIExpression()), !dbg !1248
  %0 = load i32, i32* %n.addr, align 4, !dbg !1249
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1250
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !1251
  ret i8* %call, !dbg !1252
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_mem(i32 %n, i8* %arg, i64 %argsize) #5 !dbg !1253 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1256, metadata !DIExpression()), !dbg !1257
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1258, metadata !DIExpression()), !dbg !1259
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1260, metadata !DIExpression()), !dbg !1261
  %0 = load i32, i32* %n.addr, align 4, !dbg !1262
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1263
  %2 = load i64, i64* %argsize.addr, align 8, !dbg !1264
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* @default_quoting_options), !dbg !1265
  ret i8* %call, !dbg !1266
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg(i8* %arg) #5 !dbg !1267 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1270, metadata !DIExpression()), !dbg !1271
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1272
  %call = call i8* @quotearg_n(i32 0, i8* %0), !dbg !1273
  ret i8* %call, !dbg !1274
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_mem(i8* %arg, i64 %argsize) #5 !dbg !1275 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1278, metadata !DIExpression()), !dbg !1279
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1280, metadata !DIExpression()), !dbg !1281
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1282
  %1 = load i64, i64* %argsize.addr, align 8, !dbg !1283
  %call = call i8* @quotearg_n_mem(i32 0, i8* %0, i64 %1), !dbg !1284
  ret i8* %call, !dbg !1285
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) #5 !dbg !1286 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !1291, metadata !DIExpression()), !dbg !1292
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1293, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %o, metadata !1295, metadata !DIExpression()), !dbg !1296
  %0 = load i32, i32* %s.addr, align 4, !dbg !1297
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !1298
  %1 = load i32, i32* %n.addr, align 4, !dbg !1299
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !1300
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 -1, %struct.quoting_options* %o), !dbg !1301
  ret i8* %call, !dbg !1302
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_style_mem(i32 %n, i32 %s, i8* %arg, i64 %argsize) #5 !dbg !1303 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1306, metadata !DIExpression()), !dbg !1307
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !1308, metadata !DIExpression()), !dbg !1309
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1310, metadata !DIExpression()), !dbg !1311
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1312, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %o, metadata !1314, metadata !DIExpression()), !dbg !1315
  %0 = load i32, i32* %s.addr, align 4, !dbg !1316
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !1317
  %1 = load i32, i32* %n.addr, align 4, !dbg !1318
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !1319
  %3 = load i64, i64* %argsize.addr, align 8, !dbg !1320
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 %3, %struct.quoting_options* %o), !dbg !1321
  ret i8* %call, !dbg !1322
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_style(i32 %s, i8* %arg) #5 !dbg !1323 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !1326, metadata !DIExpression()), !dbg !1327
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1328, metadata !DIExpression()), !dbg !1329
  %0 = load i32, i32* %s.addr, align 4, !dbg !1330
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1331
  %call = call i8* @quotearg_n_style(i32 0, i32 %0, i8* %1), !dbg !1332
  ret i8* %call, !dbg !1333
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_style_mem(i32 %s, i8* %arg, i64 %argsize) #5 !dbg !1334 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !1337, metadata !DIExpression()), !dbg !1338
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1339, metadata !DIExpression()), !dbg !1340
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1341, metadata !DIExpression()), !dbg !1342
  %0 = load i32, i32* %s.addr, align 4, !dbg !1343
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1344
  %2 = load i64, i64* %argsize.addr, align 8, !dbg !1345
  %call = call i8* @quotearg_n_style_mem(i32 0, i32 %0, i8* %1, i64 %2), !dbg !1346
  ret i8* %call, !dbg !1347
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_char_mem(i8* %arg, i64 %argsize, i8 signext %ch) #5 !dbg !1348 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %ch.addr = alloca i8, align 1
  %options = alloca %struct.quoting_options, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1351, metadata !DIExpression()), !dbg !1352
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1353, metadata !DIExpression()), !dbg !1354
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ch.addr, metadata !1355, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %options, metadata !1357, metadata !DIExpression()), !dbg !1358
  %0 = bitcast %struct.quoting_options* %options to i8*, !dbg !1359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !1359
  %1 = load i8, i8* %ch.addr, align 1, !dbg !1360
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %1, i32 1), !dbg !1361
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !1362
  %3 = load i64, i64* %argsize.addr, align 8, !dbg !1363
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* %options), !dbg !1364
  ret i8* %call1, !dbg !1365
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_char(i8* %arg, i8 signext %ch) #5 !dbg !1366 {
entry:
  %arg.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1369, metadata !DIExpression()), !dbg !1370
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ch.addr, metadata !1371, metadata !DIExpression()), !dbg !1372
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1373
  %1 = load i8, i8* %ch.addr, align 1, !dbg !1374
  %call = call i8* @quotearg_char_mem(i8* %0, i64 -1, i8 signext %1), !dbg !1375
  ret i8* %call, !dbg !1376
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_colon(i8* %arg) #5 !dbg !1377 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1378, metadata !DIExpression()), !dbg !1379
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1380
  %call = call i8* @quotearg_char(i8* %0, i8 signext 58), !dbg !1381
  ret i8* %call, !dbg !1382
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_colon_mem(i8* %arg, i64 %argsize) #5 !dbg !1383 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1384, metadata !DIExpression()), !dbg !1385
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1386, metadata !DIExpression()), !dbg !1387
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1388
  %1 = load i64, i64* %argsize.addr, align 8, !dbg !1389
  %call = call i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext 58), !dbg !1390
  ret i8* %call, !dbg !1391
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_custom(i32 %n, i8* %left_quote, i8* %right_quote, i8* %arg) #5 !dbg !1392 {
entry:
  %n.addr = alloca i32, align 4
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1395, metadata !DIExpression()), !dbg !1396
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1401, metadata !DIExpression()), !dbg !1402
  %0 = load i32, i32* %n.addr, align 4, !dbg !1403
  %1 = load i8*, i8** %left_quote.addr, align 8, !dbg !1404
  %2 = load i8*, i8** %right_quote.addr, align 8, !dbg !1405
  %3 = load i8*, i8** %arg.addr, align 8, !dbg !1406
  %call = call i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 -1), !dbg !1407
  ret i8* %call, !dbg !1408
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_custom_mem(i32 %n, i8* %left_quote, i8* %right_quote, i8* %arg, i64 %argsize) #5 !dbg !1409 {
entry:
  %n.addr = alloca i32, align 4
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1412, metadata !DIExpression()), !dbg !1413
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1414, metadata !DIExpression()), !dbg !1415
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1416, metadata !DIExpression()), !dbg !1417
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1420, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %o, metadata !1422, metadata !DIExpression()), !dbg !1423
  %0 = bitcast %struct.quoting_options* %o to i8*, !dbg !1424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !1424
  %1 = load i8*, i8** %left_quote.addr, align 8, !dbg !1425
  %2 = load i8*, i8** %right_quote.addr, align 8, !dbg !1426
  call void @set_custom_quoting(%struct.quoting_options* %o, i8* %1, i8* %2), !dbg !1427
  %3 = load i32, i32* %n.addr, align 4, !dbg !1428
  %4 = load i8*, i8** %arg.addr, align 8, !dbg !1429
  %5 = load i64, i64* %argsize.addr, align 8, !dbg !1430
  %call = call i8* @quotearg_n_options(i32 %3, i8* %4, i64 %5, %struct.quoting_options* %o), !dbg !1431
  ret i8* %call, !dbg !1432
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_custom(i8* %left_quote, i8* %right_quote, i8* %arg) #5 !dbg !1433 {
entry:
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1436, metadata !DIExpression()), !dbg !1437
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1438, metadata !DIExpression()), !dbg !1439
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1440, metadata !DIExpression()), !dbg !1441
  %0 = load i8*, i8** %left_quote.addr, align 8, !dbg !1442
  %1 = load i8*, i8** %right_quote.addr, align 8, !dbg !1443
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !1444
  %call = call i8* @quotearg_n_custom(i32 0, i8* %0, i8* %1, i8* %2), !dbg !1445
  ret i8* %call, !dbg !1446
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_custom_mem(i8* %left_quote, i8* %right_quote, i8* %arg, i64 %argsize) #5 !dbg !1447 {
entry:
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1450, metadata !DIExpression()), !dbg !1451
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1452, metadata !DIExpression()), !dbg !1453
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1454, metadata !DIExpression()), !dbg !1455
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1456, metadata !DIExpression()), !dbg !1457
  %0 = load i8*, i8** %left_quote.addr, align 8, !dbg !1458
  %1 = load i8*, i8** %right_quote.addr, align 8, !dbg !1459
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !1460
  %3 = load i64, i64* %argsize.addr, align 8, !dbg !1461
  %call = call i8* @quotearg_n_custom_mem(i32 0, i8* %0, i8* %1, i8* %2, i64 %3), !dbg !1462
  ret i8* %call, !dbg !1463
}

; Function Attrs: nounwind uwtable
define internal i8* @quote_n_mem(i32 %n, i8* %arg, i64 %argsize) #5 !dbg !1464 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1467, metadata !DIExpression()), !dbg !1468
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1471, metadata !DIExpression()), !dbg !1472
  %0 = load i32, i32* %n.addr, align 4, !dbg !1473
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1474
  %2 = load i64, i64* %argsize.addr, align 8, !dbg !1475
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* @quote_quoting_options), !dbg !1476
  ret i8* %call, !dbg !1477
}

; Function Attrs: nounwind uwtable
define internal i8* @quote_mem(i8* %arg, i64 %argsize) #5 !dbg !1478 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1481, metadata !DIExpression()), !dbg !1482
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1483, metadata !DIExpression()), !dbg !1484
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1485
  %1 = load i64, i64* %argsize.addr, align 8, !dbg !1486
  %call = call i8* @quote_n_mem(i32 0, i8* %0, i64 %1), !dbg !1487
  ret i8* %call, !dbg !1488
}

; Function Attrs: nounwind uwtable
define internal i8* @quote_n(i32 %n, i8* %arg) #5 !dbg !1489 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !1492, metadata !DIExpression()), !dbg !1493
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1494, metadata !DIExpression()), !dbg !1495
  %0 = load i32, i32* %n.addr, align 4, !dbg !1496
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !1497
  %call = call i8* @quote_n_mem(i32 %0, i8* %1, i64 -1), !dbg !1498
  ret i8* %call, !dbg !1499
}

; Function Attrs: nounwind uwtable
define internal i8* @quote(i8* %arg) #5 !dbg !1500 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1503, metadata !DIExpression()), !dbg !1504
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !1505
  %call = call i8* @quote_n(i32 0, i8* %0), !dbg !1506
  ret i8* %call, !dbg !1507
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #7

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare i32 @iswprint(i32) #3

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) #7

; Function Attrs: nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, i32 %quoting_style, i32 %flags, i32* %quote_these_too, i8* %left_quote, i8* %right_quote) #5 !dbg !1508 {
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
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1513, metadata !DIExpression()), !dbg !1514
  store i64 %buffersize, i64* %buffersize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %buffersize.addr, metadata !1515, metadata !DIExpression()), !dbg !1516
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1517, metadata !DIExpression()), !dbg !1518
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i32 %quoting_style, i32* %quoting_style.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %quoting_style.addr, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1523, metadata !DIExpression()), !dbg !1524
  store i32* %quote_these_too, i32** %quote_these_too.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %quote_these_too.addr, metadata !1525, metadata !DIExpression()), !dbg !1526
  store i8* %left_quote, i8** %left_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %left_quote.addr, metadata !1527, metadata !DIExpression()), !dbg !1528
  store i8* %right_quote, i8** %right_quote.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %right_quote.addr, metadata !1529, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1531, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.declare(metadata i64* %len, metadata !1533, metadata !DIExpression()), !dbg !1534
  store i64 0, i64* %len, align 8, !dbg !1534
  call void @llvm.dbg.declare(metadata i8** %quote_string, metadata !1535, metadata !DIExpression()), !dbg !1536
  store i8* null, i8** %quote_string, align 8, !dbg !1536
  call void @llvm.dbg.declare(metadata i64* %quote_string_len, metadata !1537, metadata !DIExpression()), !dbg !1538
  store i64 0, i64* %quote_string_len, align 8, !dbg !1538
  call void @llvm.dbg.declare(metadata i8* %backslash_escapes, metadata !1539, metadata !DIExpression()), !dbg !1540
  store i8 0, i8* %backslash_escapes, align 1, !dbg !1540
  call void @llvm.dbg.declare(metadata i8* %unibyte_locale, metadata !1541, metadata !DIExpression()), !dbg !1542
  %call = call i64 @__ctype_get_mb_cur_max() #10, !dbg !1543
  %cmp = icmp eq i64 %call, 1, !dbg !1544
  %frombool = zext i1 %cmp to i8, !dbg !1542
  store i8 %frombool, i8* %unibyte_locale, align 1, !dbg !1542
  call void @llvm.dbg.declare(metadata i8* %elide_outer_quotes, metadata !1545, metadata !DIExpression()), !dbg !1546
  %0 = load i32, i32* %flags.addr, align 4, !dbg !1547
  %and = and i32 %0, 2, !dbg !1548
  %cmp1 = icmp ne i32 %and, 0, !dbg !1549
  %frombool2 = zext i1 %cmp1 to i8, !dbg !1546
  store i8 %frombool2, i8* %elide_outer_quotes, align 1, !dbg !1546
  %1 = load i32, i32* %quoting_style.addr, align 4, !dbg !1550
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
  ], !dbg !1551

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %quoting_style.addr, align 4, !dbg !1552
  store i8 1, i8* %elide_outer_quotes, align 1, !dbg !1554
  br label %sw.bb.3, !dbg !1555

sw.bb.3:                                          ; preds = %sw.bb, %entry
  %2 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1556
  %tobool = trunc i8 %2 to i1, !dbg !1556
  br i1 %tobool, label %if.end.6, label %if.then, !dbg !1558

if.then:                                          ; preds = %sw.bb.3
  br label %do.body, !dbg !1559

do.body:                                          ; preds = %if.then
  %3 = load i64, i64* %len, align 8, !dbg !1560
  %4 = load i64, i64* %buffersize.addr, align 8, !dbg !1560
  %cmp4 = icmp ult i64 %3, %4, !dbg !1560
  br i1 %cmp4, label %if.then.5, label %if.end, !dbg !1564

if.then.5:                                        ; preds = %do.body
  %5 = load i64, i64* %len, align 8, !dbg !1565
  %6 = load i8*, i8** %buffer.addr, align 8, !dbg !1565
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %5, !dbg !1565
  store i8 34, i8* %arrayidx, align 1, !dbg !1565
  br label %if.end, !dbg !1565

if.end:                                           ; preds = %if.then.5, %do.body
  %7 = load i64, i64* %len, align 8, !dbg !1567
  %inc = add i64 %7, 1, !dbg !1567
  store i64 %inc, i64* %len, align 8, !dbg !1567
  br label %do.end, !dbg !1567

do.end:                                           ; preds = %if.end
  br label %if.end.6, !dbg !1570

if.end.6:                                         ; preds = %do.end, %sw.bb.3
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1572
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.67, i32 0, i32 0), i8** %quote_string, align 8, !dbg !1573
  store i64 1, i64* %quote_string_len, align 8, !dbg !1574
  br label %sw.epilog, !dbg !1575

sw.bb.7:                                          ; preds = %entry
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1576
  store i8 0, i8* %elide_outer_quotes, align 1, !dbg !1577
  br label %sw.epilog, !dbg !1578

sw.bb.8:                                          ; preds = %entry, %entry, %entry
  %8 = load i32, i32* %quoting_style.addr, align 4, !dbg !1579
  %cmp9 = icmp ne i32 %8, 8, !dbg !1582
  br i1 %cmp9, label %if.then.10, label %if.end.13, !dbg !1583

if.then.10:                                       ; preds = %sw.bb.8
  %9 = load i32, i32* %quoting_style.addr, align 4, !dbg !1584
  %call11 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.69, i32 0, i32 0), i32 %9), !dbg !1586
  store i8* %call11, i8** %left_quote.addr, align 8, !dbg !1587
  %10 = load i32, i32* %quoting_style.addr, align 4, !dbg !1588
  %call12 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i32 0, i32 0), i32 %10), !dbg !1589
  store i8* %call12, i8** %right_quote.addr, align 8, !dbg !1590
  br label %if.end.13, !dbg !1591

if.end.13:                                        ; preds = %if.then.10, %sw.bb.8
  %11 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1592
  %tobool14 = trunc i8 %11 to i1, !dbg !1592
  br i1 %tobool14, label %if.end.24, label %if.then.15, !dbg !1594

if.then.15:                                       ; preds = %if.end.13
  %12 = load i8*, i8** %left_quote.addr, align 8, !dbg !1595
  store i8* %12, i8** %quote_string, align 8, !dbg !1597
  br label %for.cond, !dbg !1598

for.cond:                                         ; preds = %for.inc, %if.then.15
  %13 = load i8*, i8** %quote_string, align 8, !dbg !1599
  %14 = load i8, i8* %13, align 1, !dbg !1603
  %tobool16 = icmp ne i8 %14, 0, !dbg !1604
  br i1 %tobool16, label %for.body, label %for.end, !dbg !1604

for.body:                                         ; preds = %for.cond
  br label %do.body.17, !dbg !1605

do.body.17:                                       ; preds = %for.body
  %15 = load i64, i64* %len, align 8, !dbg !1606
  %16 = load i64, i64* %buffersize.addr, align 8, !dbg !1606
  %cmp18 = icmp ult i64 %15, %16, !dbg !1606
  br i1 %cmp18, label %if.then.19, label %if.end.21, !dbg !1610

if.then.19:                                       ; preds = %do.body.17
  %17 = load i8*, i8** %quote_string, align 8, !dbg !1611
  %18 = load i8, i8* %17, align 1, !dbg !1611
  %19 = load i64, i64* %len, align 8, !dbg !1611
  %20 = load i8*, i8** %buffer.addr, align 8, !dbg !1611
  %arrayidx20 = getelementptr inbounds i8, i8* %20, i64 %19, !dbg !1611
  store i8 %18, i8* %arrayidx20, align 1, !dbg !1611
  br label %if.end.21, !dbg !1611

if.end.21:                                        ; preds = %if.then.19, %do.body.17
  %21 = load i64, i64* %len, align 8, !dbg !1613
  %inc22 = add i64 %21, 1, !dbg !1613
  store i64 %inc22, i64* %len, align 8, !dbg !1613
  br label %do.end.23, !dbg !1613

do.end.23:                                        ; preds = %if.end.21
  br label %for.inc, !dbg !1616

for.inc:                                          ; preds = %do.end.23
  %22 = load i8*, i8** %quote_string, align 8, !dbg !1618
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1, !dbg !1618
  store i8* %incdec.ptr, i8** %quote_string, align 8, !dbg !1618
  br label %for.cond, !dbg !1619

for.end:                                          ; preds = %for.cond
  br label %if.end.24, !dbg !1620

if.end.24:                                        ; preds = %for.end, %if.end.13
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1621
  %23 = load i8*, i8** %right_quote.addr, align 8, !dbg !1622
  store i8* %23, i8** %quote_string, align 8, !dbg !1623
  %24 = load i8*, i8** %quote_string, align 8, !dbg !1624
  %call25 = call i64 @strlen(i8* %24) #17, !dbg !1625
  store i64 %call25, i64* %quote_string_len, align 8, !dbg !1626
  br label %sw.epilog, !dbg !1627

sw.bb.26:                                         ; preds = %entry
  store i32 2, i32* %quoting_style.addr, align 4, !dbg !1628
  store i8 1, i8* %elide_outer_quotes, align 1, !dbg !1629
  br label %sw.bb.27, !dbg !1630

sw.bb.27:                                         ; preds = %sw.bb.26, %entry
  %25 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1631
  %tobool28 = trunc i8 %25 to i1, !dbg !1631
  br i1 %tobool28, label %if.end.37, label %if.then.29, !dbg !1633

if.then.29:                                       ; preds = %sw.bb.27
  br label %do.body.30, !dbg !1634

do.body.30:                                       ; preds = %if.then.29
  %26 = load i64, i64* %len, align 8, !dbg !1635
  %27 = load i64, i64* %buffersize.addr, align 8, !dbg !1635
  %cmp31 = icmp ult i64 %26, %27, !dbg !1635
  br i1 %cmp31, label %if.then.32, label %if.end.34, !dbg !1639

if.then.32:                                       ; preds = %do.body.30
  %28 = load i64, i64* %len, align 8, !dbg !1640
  %29 = load i8*, i8** %buffer.addr, align 8, !dbg !1640
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !1640
  store i8 39, i8* %arrayidx33, align 1, !dbg !1640
  br label %if.end.34, !dbg !1640

if.end.34:                                        ; preds = %if.then.32, %do.body.30
  %30 = load i64, i64* %len, align 8, !dbg !1642
  %inc35 = add i64 %30, 1, !dbg !1642
  store i64 %inc35, i64* %len, align 8, !dbg !1642
  br label %do.end.36, !dbg !1642

do.end.36:                                        ; preds = %if.end.34
  br label %if.end.37, !dbg !1645

if.end.37:                                        ; preds = %do.end.36, %sw.bb.27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i32 0, i32 0), i8** %quote_string, align 8, !dbg !1647
  store i64 1, i64* %quote_string_len, align 8, !dbg !1648
  br label %sw.epilog, !dbg !1649

sw.bb.38:                                         ; preds = %entry
  store i8 0, i8* %elide_outer_quotes, align 1, !dbg !1650
  br label %sw.epilog, !dbg !1651

sw.default:                                       ; preds = %entry
  call void @abort() #14, !dbg !1652
  unreachable, !dbg !1652

sw.epilog:                                        ; preds = %sw.bb.38, %if.end.37, %if.end.24, %sw.bb.7, %if.end.6
  store i64 0, i64* %i, align 8, !dbg !1653
  br label %for.cond.39, !dbg !1655

for.cond.39:                                      ; preds = %for.inc.483, %sw.epilog
  %31 = load i64, i64* %argsize.addr, align 8, !dbg !1656
  %cmp40 = icmp eq i64 %31, -1, !dbg !1660
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !1661

cond.true:                                        ; preds = %for.cond.39
  %32 = load i64, i64* %i, align 8, !dbg !1662
  %33 = load i8*, i8** %arg.addr, align 8, !dbg !1664
  %arrayidx41 = getelementptr inbounds i8, i8* %33, i64 %32, !dbg !1664
  %34 = load i8, i8* %arrayidx41, align 1, !dbg !1664
  %conv = sext i8 %34 to i32, !dbg !1664
  %cmp42 = icmp eq i32 %conv, 0, !dbg !1665
  %conv43 = zext i1 %cmp42 to i32, !dbg !1665
  br label %cond.end, !dbg !1661

cond.false:                                       ; preds = %for.cond.39
  %35 = load i64, i64* %i, align 8, !dbg !1666
  %36 = load i64, i64* %argsize.addr, align 8, !dbg !1668
  %cmp44 = icmp eq i64 %35, %36, !dbg !1669
  %conv45 = zext i1 %cmp44 to i32, !dbg !1669
  br label %cond.end, !dbg !1661

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv43, %cond.true ], [ %conv45, %cond.false ], !dbg !1661
  %tobool46 = icmp ne i32 %cond, 0, !dbg !1670
  %lnot = xor i1 %tobool46, true, !dbg !1670
  br i1 %lnot, label %for.body.47, label %for.end.485, !dbg !1673

for.body.47:                                      ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i8* %c, metadata !1674, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.declare(metadata i8* %esc, metadata !1677, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.declare(metadata i8* %is_right_quote, metadata !1679, metadata !DIExpression()), !dbg !1680
  store i8 0, i8* %is_right_quote, align 1, !dbg !1680
  %37 = load i8, i8* %backslash_escapes, align 1, !dbg !1681
  %tobool48 = trunc i8 %37 to i1, !dbg !1681
  br i1 %tobool48, label %land.lhs.true, label %if.end.72, !dbg !1683

land.lhs.true:                                    ; preds = %for.body.47
  %38 = load i64, i64* %quote_string_len, align 8, !dbg !1684
  %tobool50 = icmp ne i64 %38, 0, !dbg !1684
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.72, !dbg !1686

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %39 = load i64, i64* %i, align 8, !dbg !1687
  %40 = load i64, i64* %quote_string_len, align 8, !dbg !1688
  %add = add i64 %39, %40, !dbg !1689
  %41 = load i64, i64* %argsize.addr, align 8, !dbg !1690
  %cmp52 = icmp eq i64 %41, -1, !dbg !1691
  br i1 %cmp52, label %land.lhs.true.54, label %cond.false.59, !dbg !1692

land.lhs.true.54:                                 ; preds = %land.lhs.true.51
  %42 = load i64, i64* %quote_string_len, align 8, !dbg !1693
  %cmp55 = icmp ult i64 1, %42, !dbg !1694
  br i1 %cmp55, label %cond.true.57, label %cond.false.59, !dbg !1690

cond.true.57:                                     ; preds = %land.lhs.true.54
  %43 = load i8*, i8** %arg.addr, align 8, !dbg !1695
  %call58 = call i64 @strlen(i8* %43) #17, !dbg !1696
  store i64 %call58, i64* %argsize.addr, align 8, !dbg !1697
  br label %cond.end.60, !dbg !1690

cond.false.59:                                    ; preds = %land.lhs.true.54, %land.lhs.true.51
  %44 = load i64, i64* %argsize.addr, align 8, !dbg !1698
  br label %cond.end.60, !dbg !1690

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.57
  %cond61 = phi i64 [ %call58, %cond.true.57 ], [ %44, %cond.false.59 ], !dbg !1690
  %cmp62 = icmp ule i64 %add, %cond61, !dbg !1699
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.72, !dbg !1702

land.lhs.true.64:                                 ; preds = %cond.end.60
  %45 = load i8*, i8** %arg.addr, align 8, !dbg !1703
  %46 = load i64, i64* %i, align 8, !dbg !1704
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !1705
  %47 = load i8*, i8** %quote_string, align 8, !dbg !1706
  %48 = load i64, i64* %quote_string_len, align 8, !dbg !1707
  %call65 = call i32 @memcmp(i8* %add.ptr, i8* %47, i64 %48) #17, !dbg !1708
  %cmp66 = icmp eq i32 %call65, 0, !dbg !1709
  br i1 %cmp66, label %if.then.68, label %if.end.72, !dbg !1710

if.then.68:                                       ; preds = %land.lhs.true.64
  %49 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1711
  %tobool69 = trunc i8 %49 to i1, !dbg !1711
  br i1 %tobool69, label %if.then.70, label %if.end.71, !dbg !1714

if.then.70:                                       ; preds = %if.then.68
  br label %force_outer_quoting_style, !dbg !1715

if.end.71:                                        ; preds = %if.then.68
  store i8 1, i8* %is_right_quote, align 1, !dbg !1716
  br label %if.end.72, !dbg !1717

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true.64, %cond.end.60, %land.lhs.true, %for.body.47
  %50 = load i64, i64* %i, align 8, !dbg !1718
  %51 = load i8*, i8** %arg.addr, align 8, !dbg !1719
  %arrayidx73 = getelementptr inbounds i8, i8* %51, i64 %50, !dbg !1719
  %52 = load i8, i8* %arrayidx73, align 1, !dbg !1719
  store i8 %52, i8* %c, align 1, !dbg !1720
  %53 = load i8, i8* %c, align 1, !dbg !1721
  %conv74 = zext i8 %53 to i32, !dbg !1721
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
  ], !dbg !1722

sw.bb.75:                                         ; preds = %if.end.72
  %54 = load i8, i8* %backslash_escapes, align 1, !dbg !1723
  %tobool76 = trunc i8 %54 to i1, !dbg !1723
  br i1 %tobool76, label %if.then.77, label %if.else, !dbg !1726

if.then.77:                                       ; preds = %sw.bb.75
  %55 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1727
  %tobool78 = trunc i8 %55 to i1, !dbg !1727
  br i1 %tobool78, label %if.then.79, label %if.end.80, !dbg !1730

if.then.79:                                       ; preds = %if.then.77
  br label %force_outer_quoting_style, !dbg !1731

if.end.80:                                        ; preds = %if.then.77
  br label %do.body.81, !dbg !1732

do.body.81:                                       ; preds = %if.end.80
  %56 = load i64, i64* %len, align 8, !dbg !1733
  %57 = load i64, i64* %buffersize.addr, align 8, !dbg !1733
  %cmp82 = icmp ult i64 %56, %57, !dbg !1733
  br i1 %cmp82, label %if.then.84, label %if.end.86, !dbg !1737

if.then.84:                                       ; preds = %do.body.81
  %58 = load i64, i64* %len, align 8, !dbg !1738
  %59 = load i8*, i8** %buffer.addr, align 8, !dbg !1738
  %arrayidx85 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !1738
  store i8 92, i8* %arrayidx85, align 1, !dbg !1738
  br label %if.end.86, !dbg !1738

if.end.86:                                        ; preds = %if.then.84, %do.body.81
  %60 = load i64, i64* %len, align 8, !dbg !1740
  %inc87 = add i64 %60, 1, !dbg !1740
  store i64 %inc87, i64* %len, align 8, !dbg !1740
  br label %do.end.88, !dbg !1740

do.end.88:                                        ; preds = %if.end.86
  %61 = load i64, i64* %i, align 8, !dbg !1743
  %add89 = add i64 %61, 1, !dbg !1745
  %62 = load i64, i64* %argsize.addr, align 8, !dbg !1746
  %cmp90 = icmp ult i64 %add89, %62, !dbg !1747
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.121, !dbg !1748

land.lhs.true.92:                                 ; preds = %do.end.88
  %63 = load i64, i64* %i, align 8, !dbg !1749
  %add93 = add i64 %63, 1, !dbg !1751
  %64 = load i8*, i8** %arg.addr, align 8, !dbg !1752
  %arrayidx94 = getelementptr inbounds i8, i8* %64, i64 %add93, !dbg !1752
  %65 = load i8, i8* %arrayidx94, align 1, !dbg !1752
  %conv95 = sext i8 %65 to i32, !dbg !1752
  %cmp96 = icmp sle i32 48, %conv95, !dbg !1753
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.121, !dbg !1754

land.lhs.true.98:                                 ; preds = %land.lhs.true.92
  %66 = load i64, i64* %i, align 8, !dbg !1755
  %add99 = add i64 %66, 1, !dbg !1757
  %67 = load i8*, i8** %arg.addr, align 8, !dbg !1758
  %arrayidx100 = getelementptr inbounds i8, i8* %67, i64 %add99, !dbg !1758
  %68 = load i8, i8* %arrayidx100, align 1, !dbg !1758
  %conv101 = sext i8 %68 to i32, !dbg !1758
  %cmp102 = icmp sle i32 %conv101, 57, !dbg !1759
  br i1 %cmp102, label %if.then.104, label %if.end.121, !dbg !1760

if.then.104:                                      ; preds = %land.lhs.true.98
  br label %do.body.105, !dbg !1761

do.body.105:                                      ; preds = %if.then.104
  %69 = load i64, i64* %len, align 8, !dbg !1763
  %70 = load i64, i64* %buffersize.addr, align 8, !dbg !1763
  %cmp106 = icmp ult i64 %69, %70, !dbg !1763
  br i1 %cmp106, label %if.then.108, label %if.end.110, !dbg !1767

if.then.108:                                      ; preds = %do.body.105
  %71 = load i64, i64* %len, align 8, !dbg !1768
  %72 = load i8*, i8** %buffer.addr, align 8, !dbg !1768
  %arrayidx109 = getelementptr inbounds i8, i8* %72, i64 %71, !dbg !1768
  store i8 48, i8* %arrayidx109, align 1, !dbg !1768
  br label %if.end.110, !dbg !1768

if.end.110:                                       ; preds = %if.then.108, %do.body.105
  %73 = load i64, i64* %len, align 8, !dbg !1770
  %inc111 = add i64 %73, 1, !dbg !1770
  store i64 %inc111, i64* %len, align 8, !dbg !1770
  br label %do.end.112, !dbg !1770

do.end.112:                                       ; preds = %if.end.110
  br label %do.body.113, !dbg !1773

do.body.113:                                      ; preds = %do.end.112
  %74 = load i64, i64* %len, align 8, !dbg !1774
  %75 = load i64, i64* %buffersize.addr, align 8, !dbg !1774
  %cmp114 = icmp ult i64 %74, %75, !dbg !1774
  br i1 %cmp114, label %if.then.116, label %if.end.118, !dbg !1778

if.then.116:                                      ; preds = %do.body.113
  %76 = load i64, i64* %len, align 8, !dbg !1779
  %77 = load i8*, i8** %buffer.addr, align 8, !dbg !1779
  %arrayidx117 = getelementptr inbounds i8, i8* %77, i64 %76, !dbg !1779
  store i8 48, i8* %arrayidx117, align 1, !dbg !1779
  br label %if.end.118, !dbg !1779

if.end.118:                                       ; preds = %if.then.116, %do.body.113
  %78 = load i64, i64* %len, align 8, !dbg !1781
  %inc119 = add i64 %78, 1, !dbg !1781
  store i64 %inc119, i64* %len, align 8, !dbg !1781
  br label %do.end.120, !dbg !1781

do.end.120:                                       ; preds = %if.end.118
  br label %if.end.121, !dbg !1784

if.end.121:                                       ; preds = %do.end.120, %land.lhs.true.98, %land.lhs.true.92, %do.end.88
  store i8 48, i8* %c, align 1, !dbg !1785
  br label %if.end.126, !dbg !1786

if.else:                                          ; preds = %sw.bb.75
  %79 = load i32, i32* %flags.addr, align 4, !dbg !1787
  %and122 = and i32 %79, 1, !dbg !1789
  %tobool123 = icmp ne i32 %and122, 0, !dbg !1789
  br i1 %tobool123, label %if.then.124, label %if.end.125, !dbg !1790

if.then.124:                                      ; preds = %if.else
  br label %for.inc.483, !dbg !1791

if.end.125:                                       ; preds = %if.else
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.121
  br label %sw.epilog.443, !dbg !1792

sw.bb.127:                                        ; preds = %if.end.72
  %80 = load i32, i32* %quoting_style.addr, align 4, !dbg !1793
  switch i32 %80, label %sw.default.191 [
    i32 2, label %sw.bb.128
    i32 3, label %sw.bb.132
  ], !dbg !1794

sw.bb.128:                                        ; preds = %sw.bb.127
  %81 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1795
  %tobool129 = trunc i8 %81 to i1, !dbg !1795
  br i1 %tobool129, label %if.then.130, label %if.end.131, !dbg !1798

if.then.130:                                      ; preds = %sw.bb.128
  br label %force_outer_quoting_style, !dbg !1799

if.end.131:                                       ; preds = %sw.bb.128
  br label %sw.epilog.192, !dbg !1800

sw.bb.132:                                        ; preds = %sw.bb.127
  %82 = load i32, i32* %flags.addr, align 4, !dbg !1801
  %and133 = and i32 %82, 4, !dbg !1803
  %tobool134 = icmp ne i32 %and133, 0, !dbg !1803
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.190, !dbg !1804

land.lhs.true.135:                                ; preds = %sw.bb.132
  %83 = load i64, i64* %i, align 8, !dbg !1805
  %add136 = add i64 %83, 2, !dbg !1807
  %84 = load i64, i64* %argsize.addr, align 8, !dbg !1808
  %cmp137 = icmp ult i64 %add136, %84, !dbg !1809
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.190, !dbg !1810

land.lhs.true.139:                                ; preds = %land.lhs.true.135
  %85 = load i64, i64* %i, align 8, !dbg !1811
  %add140 = add i64 %85, 1, !dbg !1813
  %86 = load i8*, i8** %arg.addr, align 8, !dbg !1814
  %arrayidx141 = getelementptr inbounds i8, i8* %86, i64 %add140, !dbg !1814
  %87 = load i8, i8* %arrayidx141, align 1, !dbg !1814
  %conv142 = sext i8 %87 to i32, !dbg !1814
  %cmp143 = icmp eq i32 %conv142, 63, !dbg !1815
  br i1 %cmp143, label %if.then.145, label %if.end.190, !dbg !1816

if.then.145:                                      ; preds = %land.lhs.true.139
  %88 = load i64, i64* %i, align 8, !dbg !1817
  %add146 = add i64 %88, 2, !dbg !1818
  %89 = load i8*, i8** %arg.addr, align 8, !dbg !1819
  %arrayidx147 = getelementptr inbounds i8, i8* %89, i64 %add146, !dbg !1819
  %90 = load i8, i8* %arrayidx147, align 1, !dbg !1819
  %conv148 = sext i8 %90 to i32, !dbg !1819
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
  ], !dbg !1820

sw.bb.149:                                        ; preds = %if.then.145, %if.then.145, %if.then.145, %if.then.145, %if.then.145, %if.then.145, %if.then.145, %if.then.145, %if.then.145
  %91 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1821
  %tobool150 = trunc i8 %91 to i1, !dbg !1821
  br i1 %tobool150, label %if.then.151, label %if.end.152, !dbg !1824

if.then.151:                                      ; preds = %sw.bb.149
  br label %force_outer_quoting_style, !dbg !1825

if.end.152:                                       ; preds = %sw.bb.149
  %92 = load i64, i64* %i, align 8, !dbg !1826
  %add153 = add i64 %92, 2, !dbg !1827
  %93 = load i8*, i8** %arg.addr, align 8, !dbg !1828
  %arrayidx154 = getelementptr inbounds i8, i8* %93, i64 %add153, !dbg !1828
  %94 = load i8, i8* %arrayidx154, align 1, !dbg !1828
  store i8 %94, i8* %c, align 1, !dbg !1829
  %95 = load i64, i64* %i, align 8, !dbg !1830
  %add155 = add i64 %95, 2, !dbg !1830
  store i64 %add155, i64* %i, align 8, !dbg !1830
  br label %do.body.156, !dbg !1831

do.body.156:                                      ; preds = %if.end.152
  %96 = load i64, i64* %len, align 8, !dbg !1832
  %97 = load i64, i64* %buffersize.addr, align 8, !dbg !1832
  %cmp157 = icmp ult i64 %96, %97, !dbg !1832
  br i1 %cmp157, label %if.then.159, label %if.end.161, !dbg !1836

if.then.159:                                      ; preds = %do.body.156
  %98 = load i64, i64* %len, align 8, !dbg !1837
  %99 = load i8*, i8** %buffer.addr, align 8, !dbg !1837
  %arrayidx160 = getelementptr inbounds i8, i8* %99, i64 %98, !dbg !1837
  store i8 63, i8* %arrayidx160, align 1, !dbg !1837
  br label %if.end.161, !dbg !1837

if.end.161:                                       ; preds = %if.then.159, %do.body.156
  %100 = load i64, i64* %len, align 8, !dbg !1839
  %inc162 = add i64 %100, 1, !dbg !1839
  store i64 %inc162, i64* %len, align 8, !dbg !1839
  br label %do.end.163, !dbg !1839

do.end.163:                                       ; preds = %if.end.161
  br label %do.body.164, !dbg !1842

do.body.164:                                      ; preds = %do.end.163
  %101 = load i64, i64* %len, align 8, !dbg !1843
  %102 = load i64, i64* %buffersize.addr, align 8, !dbg !1843
  %cmp165 = icmp ult i64 %101, %102, !dbg !1843
  br i1 %cmp165, label %if.then.167, label %if.end.169, !dbg !1847

if.then.167:                                      ; preds = %do.body.164
  %103 = load i64, i64* %len, align 8, !dbg !1848
  %104 = load i8*, i8** %buffer.addr, align 8, !dbg !1848
  %arrayidx168 = getelementptr inbounds i8, i8* %104, i64 %103, !dbg !1848
  store i8 34, i8* %arrayidx168, align 1, !dbg !1848
  br label %if.end.169, !dbg !1848

if.end.169:                                       ; preds = %if.then.167, %do.body.164
  %105 = load i64, i64* %len, align 8, !dbg !1850
  %inc170 = add i64 %105, 1, !dbg !1850
  store i64 %inc170, i64* %len, align 8, !dbg !1850
  br label %do.end.171, !dbg !1850

do.end.171:                                       ; preds = %if.end.169
  br label %do.body.172, !dbg !1853

do.body.172:                                      ; preds = %do.end.171
  %106 = load i64, i64* %len, align 8, !dbg !1854
  %107 = load i64, i64* %buffersize.addr, align 8, !dbg !1854
  %cmp173 = icmp ult i64 %106, %107, !dbg !1854
  br i1 %cmp173, label %if.then.175, label %if.end.177, !dbg !1858

if.then.175:                                      ; preds = %do.body.172
  %108 = load i64, i64* %len, align 8, !dbg !1859
  %109 = load i8*, i8** %buffer.addr, align 8, !dbg !1859
  %arrayidx176 = getelementptr inbounds i8, i8* %109, i64 %108, !dbg !1859
  store i8 34, i8* %arrayidx176, align 1, !dbg !1859
  br label %if.end.177, !dbg !1859

if.end.177:                                       ; preds = %if.then.175, %do.body.172
  %110 = load i64, i64* %len, align 8, !dbg !1861
  %inc178 = add i64 %110, 1, !dbg !1861
  store i64 %inc178, i64* %len, align 8, !dbg !1861
  br label %do.end.179, !dbg !1861

do.end.179:                                       ; preds = %if.end.177
  br label %do.body.180, !dbg !1864

do.body.180:                                      ; preds = %do.end.179
  %111 = load i64, i64* %len, align 8, !dbg !1865
  %112 = load i64, i64* %buffersize.addr, align 8, !dbg !1865
  %cmp181 = icmp ult i64 %111, %112, !dbg !1865
  br i1 %cmp181, label %if.then.183, label %if.end.185, !dbg !1869

if.then.183:                                      ; preds = %do.body.180
  %113 = load i64, i64* %len, align 8, !dbg !1870
  %114 = load i8*, i8** %buffer.addr, align 8, !dbg !1870
  %arrayidx184 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !1870
  store i8 63, i8* %arrayidx184, align 1, !dbg !1870
  br label %if.end.185, !dbg !1870

if.end.185:                                       ; preds = %if.then.183, %do.body.180
  %115 = load i64, i64* %len, align 8, !dbg !1872
  %inc186 = add i64 %115, 1, !dbg !1872
  store i64 %inc186, i64* %len, align 8, !dbg !1872
  br label %do.end.187, !dbg !1872

do.end.187:                                       ; preds = %if.end.185
  br label %sw.epilog.189, !dbg !1875

sw.default.188:                                   ; preds = %if.then.145
  br label %sw.epilog.189, !dbg !1876

sw.epilog.189:                                    ; preds = %sw.default.188, %do.end.187
  br label %if.end.190, !dbg !1877

if.end.190:                                       ; preds = %sw.epilog.189, %land.lhs.true.139, %land.lhs.true.135, %sw.bb.132
  br label %sw.epilog.192, !dbg !1878

sw.default.191:                                   ; preds = %sw.bb.127
  br label %sw.epilog.192, !dbg !1879

sw.epilog.192:                                    ; preds = %sw.default.191, %if.end.190, %if.end.131
  br label %sw.epilog.443, !dbg !1880

sw.bb.193:                                        ; preds = %if.end.72
  store i8 97, i8* %esc, align 1, !dbg !1881
  br label %c_escape, !dbg !1882

sw.bb.194:                                        ; preds = %if.end.72
  store i8 98, i8* %esc, align 1, !dbg !1883
  br label %c_escape, !dbg !1884

sw.bb.195:                                        ; preds = %if.end.72
  store i8 102, i8* %esc, align 1, !dbg !1885
  br label %c_escape, !dbg !1886

sw.bb.196:                                        ; preds = %if.end.72
  store i8 110, i8* %esc, align 1, !dbg !1887
  br label %c_and_shell_escape, !dbg !1888

sw.bb.197:                                        ; preds = %if.end.72
  store i8 114, i8* %esc, align 1, !dbg !1889
  br label %c_and_shell_escape, !dbg !1890

sw.bb.198:                                        ; preds = %if.end.72
  store i8 116, i8* %esc, align 1, !dbg !1891
  br label %c_and_shell_escape, !dbg !1892

sw.bb.199:                                        ; preds = %if.end.72
  store i8 118, i8* %esc, align 1, !dbg !1893
  br label %c_escape, !dbg !1894

sw.bb.200:                                        ; preds = %if.end.72
  %116 = load i8, i8* %c, align 1, !dbg !1895
  store i8 %116, i8* %esc, align 1, !dbg !1896
  %117 = load i8, i8* %backslash_escapes, align 1, !dbg !1897
  %tobool201 = trunc i8 %117 to i1, !dbg !1897
  br i1 %tobool201, label %land.lhs.true.203, label %if.end.209, !dbg !1899

land.lhs.true.203:                                ; preds = %sw.bb.200
  %118 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1900
  %tobool204 = trunc i8 %118 to i1, !dbg !1900
  br i1 %tobool204, label %land.lhs.true.206, label %if.end.209, !dbg !1902

land.lhs.true.206:                                ; preds = %land.lhs.true.203
  %119 = load i64, i64* %quote_string_len, align 8, !dbg !1903
  %tobool207 = icmp ne i64 %119, 0, !dbg !1903
  br i1 %tobool207, label %if.then.208, label %if.end.209, !dbg !1905

if.then.208:                                      ; preds = %land.lhs.true.206
  br label %store_c, !dbg !1906

if.end.209:                                       ; preds = %land.lhs.true.206, %land.lhs.true.203, %sw.bb.200
  br label %c_and_shell_escape, !dbg !1907

c_and_shell_escape:                               ; preds = %if.end.209, %sw.bb.198, %sw.bb.197, %sw.bb.196
  %120 = load i32, i32* %quoting_style.addr, align 4, !dbg !1911
  %cmp210 = icmp eq i32 %120, 2, !dbg !1913
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.216, !dbg !1914

land.lhs.true.212:                                ; preds = %c_and_shell_escape
  %121 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1915
  %tobool213 = trunc i8 %121 to i1, !dbg !1915
  br i1 %tobool213, label %if.then.215, label %if.end.216, !dbg !1917

if.then.215:                                      ; preds = %land.lhs.true.212
  br label %force_outer_quoting_style, !dbg !1918

if.end.216:                                       ; preds = %land.lhs.true.212, %c_and_shell_escape
  br label %c_escape, !dbg !1919

c_escape:                                         ; preds = %if.end.216, %sw.bb.199, %sw.bb.195, %sw.bb.194, %sw.bb.193
  %122 = load i8, i8* %backslash_escapes, align 1, !dbg !1921
  %tobool217 = trunc i8 %122 to i1, !dbg !1921
  br i1 %tobool217, label %if.then.218, label %if.end.219, !dbg !1923

if.then.218:                                      ; preds = %c_escape
  %123 = load i8, i8* %esc, align 1, !dbg !1924
  store i8 %123, i8* %c, align 1, !dbg !1926
  br label %store_escape, !dbg !1927

if.end.219:                                       ; preds = %c_escape
  br label %sw.epilog.443, !dbg !1928

sw.bb.220:                                        ; preds = %if.end.72, %if.end.72
  %124 = load i64, i64* %argsize.addr, align 8, !dbg !1929
  %cmp221 = icmp eq i64 %124, -1, !dbg !1931
  br i1 %cmp221, label %cond.true.223, label %cond.false.228, !dbg !1932

cond.true.223:                                    ; preds = %sw.bb.220
  %125 = load i8*, i8** %arg.addr, align 8, !dbg !1933
  %arrayidx224 = getelementptr inbounds i8, i8* %125, i64 1, !dbg !1933
  %126 = load i8, i8* %arrayidx224, align 1, !dbg !1933
  %conv225 = sext i8 %126 to i32, !dbg !1933
  %cmp226 = icmp eq i32 %conv225, 0, !dbg !1935
  br i1 %cmp226, label %if.end.232, label %if.then.231, !dbg !1929

cond.false.228:                                   ; preds = %sw.bb.220
  %127 = load i64, i64* %argsize.addr, align 8, !dbg !1936
  %cmp229 = icmp eq i64 %127, 1, !dbg !1938
  br i1 %cmp229, label %if.end.232, label %if.then.231, !dbg !1932

if.then.231:                                      ; preds = %cond.false.228, %cond.true.223
  br label %sw.epilog.443, !dbg !1939

if.end.232:                                       ; preds = %cond.false.228, %cond.true.223
  br label %sw.bb.233, !dbg !1940

sw.bb.233:                                        ; preds = %if.end.232, %if.end.72, %if.end.72
  %128 = load i64, i64* %i, align 8, !dbg !1943
  %cmp234 = icmp ne i64 %128, 0, !dbg !1945
  br i1 %cmp234, label %if.then.236, label %if.end.237, !dbg !1946

if.then.236:                                      ; preds = %sw.bb.233
  br label %sw.epilog.443, !dbg !1947

if.end.237:                                       ; preds = %sw.bb.233
  br label %sw.bb.238, !dbg !1948

sw.bb.238:                                        ; preds = %if.end.237, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72
  %129 = load i32, i32* %quoting_style.addr, align 4, !dbg !1950
  %cmp239 = icmp eq i32 %129, 2, !dbg !1952
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.245, !dbg !1953

land.lhs.true.241:                                ; preds = %sw.bb.238
  %130 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1954
  %tobool242 = trunc i8 %130 to i1, !dbg !1954
  br i1 %tobool242, label %if.then.244, label %if.end.245, !dbg !1956

if.then.244:                                      ; preds = %land.lhs.true.241
  br label %force_outer_quoting_style, !dbg !1957

if.end.245:                                       ; preds = %land.lhs.true.241, %sw.bb.238
  br label %sw.epilog.443, !dbg !1958

sw.bb.246:                                        ; preds = %if.end.72
  %131 = load i32, i32* %quoting_style.addr, align 4, !dbg !1959
  %cmp247 = icmp eq i32 %131, 2, !dbg !1961
  br i1 %cmp247, label %if.then.249, label %if.end.277, !dbg !1962

if.then.249:                                      ; preds = %sw.bb.246
  %132 = load i8, i8* %elide_outer_quotes, align 1, !dbg !1963
  %tobool250 = trunc i8 %132 to i1, !dbg !1963
  br i1 %tobool250, label %if.then.251, label %if.end.252, !dbg !1966

if.then.251:                                      ; preds = %if.then.249
  br label %force_outer_quoting_style, !dbg !1967

if.end.252:                                       ; preds = %if.then.249
  br label %do.body.253, !dbg !1968

do.body.253:                                      ; preds = %if.end.252
  %133 = load i64, i64* %len, align 8, !dbg !1969
  %134 = load i64, i64* %buffersize.addr, align 8, !dbg !1969
  %cmp254 = icmp ult i64 %133, %134, !dbg !1969
  br i1 %cmp254, label %if.then.256, label %if.end.258, !dbg !1973

if.then.256:                                      ; preds = %do.body.253
  %135 = load i64, i64* %len, align 8, !dbg !1974
  %136 = load i8*, i8** %buffer.addr, align 8, !dbg !1974
  %arrayidx257 = getelementptr inbounds i8, i8* %136, i64 %135, !dbg !1974
  store i8 39, i8* %arrayidx257, align 1, !dbg !1974
  br label %if.end.258, !dbg !1974

if.end.258:                                       ; preds = %if.then.256, %do.body.253
  %137 = load i64, i64* %len, align 8, !dbg !1976
  %inc259 = add i64 %137, 1, !dbg !1976
  store i64 %inc259, i64* %len, align 8, !dbg !1976
  br label %do.end.260, !dbg !1976

do.end.260:                                       ; preds = %if.end.258
  br label %do.body.261, !dbg !1979

do.body.261:                                      ; preds = %do.end.260
  %138 = load i64, i64* %len, align 8, !dbg !1980
  %139 = load i64, i64* %buffersize.addr, align 8, !dbg !1980
  %cmp262 = icmp ult i64 %138, %139, !dbg !1980
  br i1 %cmp262, label %if.then.264, label %if.end.266, !dbg !1984

if.then.264:                                      ; preds = %do.body.261
  %140 = load i64, i64* %len, align 8, !dbg !1985
  %141 = load i8*, i8** %buffer.addr, align 8, !dbg !1985
  %arrayidx265 = getelementptr inbounds i8, i8* %141, i64 %140, !dbg !1985
  store i8 92, i8* %arrayidx265, align 1, !dbg !1985
  br label %if.end.266, !dbg !1985

if.end.266:                                       ; preds = %if.then.264, %do.body.261
  %142 = load i64, i64* %len, align 8, !dbg !1987
  %inc267 = add i64 %142, 1, !dbg !1987
  store i64 %inc267, i64* %len, align 8, !dbg !1987
  br label %do.end.268, !dbg !1987

do.end.268:                                       ; preds = %if.end.266
  br label %do.body.269, !dbg !1990

do.body.269:                                      ; preds = %do.end.268
  %143 = load i64, i64* %len, align 8, !dbg !1991
  %144 = load i64, i64* %buffersize.addr, align 8, !dbg !1991
  %cmp270 = icmp ult i64 %143, %144, !dbg !1991
  br i1 %cmp270, label %if.then.272, label %if.end.274, !dbg !1995

if.then.272:                                      ; preds = %do.body.269
  %145 = load i64, i64* %len, align 8, !dbg !1996
  %146 = load i8*, i8** %buffer.addr, align 8, !dbg !1996
  %arrayidx273 = getelementptr inbounds i8, i8* %146, i64 %145, !dbg !1996
  store i8 39, i8* %arrayidx273, align 1, !dbg !1996
  br label %if.end.274, !dbg !1996

if.end.274:                                       ; preds = %if.then.272, %do.body.269
  %147 = load i64, i64* %len, align 8, !dbg !1998
  %inc275 = add i64 %147, 1, !dbg !1998
  store i64 %inc275, i64* %len, align 8, !dbg !1998
  br label %do.end.276, !dbg !1998

do.end.276:                                       ; preds = %if.end.274
  br label %if.end.277, !dbg !2001

if.end.277:                                       ; preds = %do.end.276, %sw.bb.246
  br label %sw.epilog.443, !dbg !2002

sw.bb.278:                                        ; preds = %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72, %if.end.72
  br label %sw.epilog.443, !dbg !2003

sw.default.279:                                   ; preds = %if.end.72
  call void @llvm.dbg.declare(metadata i64* %m, metadata !2004, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.declare(metadata i8* %printable, metadata !2007, metadata !DIExpression()), !dbg !2008
  %148 = load i8, i8* %unibyte_locale, align 1, !dbg !2009
  %tobool280 = trunc i8 %148 to i1, !dbg !2009
  br i1 %tobool280, label %if.then.281, label %if.else.290, !dbg !2011

if.then.281:                                      ; preds = %sw.default.279
  store i64 1, i64* %m, align 8, !dbg !2012
  %149 = load i8, i8* %c, align 1, !dbg !2014
  %conv282 = zext i8 %149 to i32, !dbg !2014
  %idxprom = sext i32 %conv282 to i64, !dbg !2014
  %call283 = call i16** @__ctype_b_loc() #16, !dbg !2014
  %150 = load i16*, i16** %call283, align 8, !dbg !2014
  %arrayidx284 = getelementptr inbounds i16, i16* %150, i64 %idxprom, !dbg !2014
  %151 = load i16, i16* %arrayidx284, align 2, !dbg !2014
  %conv285 = zext i16 %151 to i32, !dbg !2014
  %and286 = and i32 %conv285, 16384, !dbg !2014
  %cmp287 = icmp ne i32 %and286, 0, !dbg !2015
  %frombool289 = zext i1 %cmp287 to i8, !dbg !2016
  store i8 %frombool289, i8* %printable, align 1, !dbg !2016
  br label %if.end.354, !dbg !2017

if.else.290:                                      ; preds = %sw.default.279
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %mbstate, metadata !2018, metadata !DIExpression()), !dbg !2034
  %152 = bitcast %struct.__mbstate_t* %mbstate to i8*, !dbg !2035
  call void @llvm.memset.p0i8.i64(i8* align 4 %152, i8 0, i64 8, i1 false), !dbg !2035
  store i64 0, i64* %m, align 8, !dbg !2036
  store i8 1, i8* %printable, align 1, !dbg !2037
  %153 = load i64, i64* %argsize.addr, align 8, !dbg !2038
  %cmp291 = icmp eq i64 %153, -1, !dbg !2040
  br i1 %cmp291, label %if.then.293, label %if.end.295, !dbg !2041

if.then.293:                                      ; preds = %if.else.290
  %154 = load i8*, i8** %arg.addr, align 8, !dbg !2042
  %call294 = call i64 @strlen(i8* %154) #17, !dbg !2043
  store i64 %call294, i64* %argsize.addr, align 8, !dbg !2044
  br label %if.end.295, !dbg !2045

if.end.295:                                       ; preds = %if.then.293, %if.else.290
  br label %do.body.296, !dbg !2046

do.body.296:                                      ; preds = %do.cond, %if.end.295
  call void @llvm.dbg.declare(metadata i32* %w, metadata !2047, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2051, metadata !DIExpression()), !dbg !2052
  %155 = load i64, i64* %i, align 8, !dbg !2053
  %156 = load i64, i64* %m, align 8, !dbg !2054
  %add297 = add i64 %155, %156, !dbg !2055
  %157 = load i8*, i8** %arg.addr, align 8, !dbg !2056
  %arrayidx298 = getelementptr inbounds i8, i8* %157, i64 %add297, !dbg !2056
  %158 = load i64, i64* %argsize.addr, align 8, !dbg !2057
  %159 = load i64, i64* %i, align 8, !dbg !2058
  %160 = load i64, i64* %m, align 8, !dbg !2059
  %add299 = add i64 %159, %160, !dbg !2060
  %sub = sub i64 %158, %add299, !dbg !2061
  %call300 = call i64 @rpl_mbrtowc(i32* %w, i8* %arrayidx298, i64 %sub, %struct.__mbstate_t* %mbstate), !dbg !2062
  store i64 %call300, i64* %bytes, align 8, !dbg !2052
  %161 = load i64, i64* %bytes, align 8, !dbg !2063
  %cmp301 = icmp eq i64 %161, 0, !dbg !2065
  br i1 %cmp301, label %if.then.303, label %if.else.304, !dbg !2066

if.then.303:                                      ; preds = %do.body.296
  br label %do.end.353, !dbg !2067

if.else.304:                                      ; preds = %do.body.296
  %162 = load i64, i64* %bytes, align 8, !dbg !2068
  %cmp305 = icmp eq i64 %162, -1, !dbg !2070
  br i1 %cmp305, label %if.then.307, label %if.else.308, !dbg !2071

if.then.307:                                      ; preds = %if.else.304
  store i8 0, i8* %printable, align 1, !dbg !2072
  br label %do.end.353, !dbg !2074

if.else.308:                                      ; preds = %if.else.304
  %163 = load i64, i64* %bytes, align 8, !dbg !2075
  %cmp309 = icmp eq i64 %163, -2, !dbg !2077
  br i1 %cmp309, label %if.then.311, label %if.else.320, !dbg !2078

if.then.311:                                      ; preds = %if.else.308
  store i8 0, i8* %printable, align 1, !dbg !2079
  br label %while.cond, !dbg !2081

while.cond:                                       ; preds = %while.body, %if.then.311
  %164 = load i64, i64* %i, align 8, !dbg !2082
  %165 = load i64, i64* %m, align 8, !dbg !2085
  %add312 = add i64 %164, %165, !dbg !2086
  %166 = load i64, i64* %argsize.addr, align 8, !dbg !2087
  %cmp313 = icmp ult i64 %add312, %166, !dbg !2088
  br i1 %cmp313, label %land.rhs, label %land.end, !dbg !2089

land.rhs:                                         ; preds = %while.cond
  %167 = load i64, i64* %i, align 8, !dbg !2090
  %168 = load i64, i64* %m, align 8, !dbg !2092
  %add315 = add i64 %167, %168, !dbg !2093
  %169 = load i8*, i8** %arg.addr, align 8, !dbg !2094
  %arrayidx316 = getelementptr inbounds i8, i8* %169, i64 %add315, !dbg !2094
  %170 = load i8, i8* %arrayidx316, align 1, !dbg !2094
  %conv317 = sext i8 %170 to i32, !dbg !2094
  %tobool318 = icmp ne i32 %conv317, 0, !dbg !2089
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %171 = phi i1 [ false, %while.cond ], [ %tobool318, %land.rhs ]
  br i1 %171, label %while.body, label %while.end, !dbg !2095

while.body:                                       ; preds = %land.end
  %172 = load i64, i64* %m, align 8, !dbg !2097
  %inc319 = add i64 %172, 1, !dbg !2097
  store i64 %inc319, i64* %m, align 8, !dbg !2097
  br label %while.cond, !dbg !2081

while.end:                                        ; preds = %land.end
  br label %do.end.353, !dbg !2098

if.else.320:                                      ; preds = %if.else.308
  %173 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2099
  %tobool321 = trunc i8 %173 to i1, !dbg !2099
  br i1 %tobool321, label %land.lhs.true.323, label %if.end.341, !dbg !2102

land.lhs.true.323:                                ; preds = %if.else.320
  %174 = load i32, i32* %quoting_style.addr, align 4, !dbg !2103
  %cmp324 = icmp eq i32 %174, 2, !dbg !2105
  br i1 %cmp324, label %if.then.326, label %if.end.341, !dbg !2106

if.then.326:                                      ; preds = %land.lhs.true.323
  call void @llvm.dbg.declare(metadata i64* %j, metadata !2107, metadata !DIExpression()), !dbg !2109
  store i64 1, i64* %j, align 8, !dbg !2110
  br label %for.cond.327, !dbg !2112

for.cond.327:                                     ; preds = %for.inc.338, %if.then.326
  %175 = load i64, i64* %j, align 8, !dbg !2113
  %176 = load i64, i64* %bytes, align 8, !dbg !2117
  %cmp328 = icmp ult i64 %175, %176, !dbg !2118
  br i1 %cmp328, label %for.body.330, label %for.end.340, !dbg !2119

for.body.330:                                     ; preds = %for.cond.327
  %177 = load i64, i64* %i, align 8, !dbg !2120
  %178 = load i64, i64* %m, align 8, !dbg !2121
  %add331 = add i64 %177, %178, !dbg !2122
  %179 = load i64, i64* %j, align 8, !dbg !2123
  %add332 = add i64 %add331, %179, !dbg !2124
  %180 = load i8*, i8** %arg.addr, align 8, !dbg !2125
  %arrayidx333 = getelementptr inbounds i8, i8* %180, i64 %add332, !dbg !2125
  %181 = load i8, i8* %arrayidx333, align 1, !dbg !2125
  %conv334 = sext i8 %181 to i32, !dbg !2125
  switch i32 %conv334, label %sw.default.336 [
    i32 91, label %sw.bb.335
    i32 92, label %sw.bb.335
    i32 94, label %sw.bb.335
    i32 96, label %sw.bb.335
    i32 124, label %sw.bb.335
  ], !dbg !2126

sw.bb.335:                                        ; preds = %for.body.330, %for.body.330, %for.body.330, %for.body.330, %for.body.330
  br label %force_outer_quoting_style, !dbg !2127

sw.default.336:                                   ; preds = %for.body.330
  br label %sw.epilog.337, !dbg !2129

sw.epilog.337:                                    ; preds = %sw.default.336
  br label %for.inc.338, !dbg !2130

for.inc.338:                                      ; preds = %sw.epilog.337
  %182 = load i64, i64* %j, align 8, !dbg !2131
  %inc339 = add i64 %182, 1, !dbg !2131
  store i64 %inc339, i64* %j, align 8, !dbg !2131
  br label %for.cond.327, !dbg !2132

for.end.340:                                      ; preds = %for.cond.327
  br label %if.end.341, !dbg !2133

if.end.341:                                       ; preds = %for.end.340, %land.lhs.true.323, %if.else.320
  %183 = load i32, i32* %w, align 4, !dbg !2134
  %call342 = call i32 @iswprint(i32 %183) #10, !dbg !2136
  %tobool343 = icmp ne i32 %call342, 0, !dbg !2136
  br i1 %tobool343, label %if.end.345, label %if.then.344, !dbg !2137

if.then.344:                                      ; preds = %if.end.341
  store i8 0, i8* %printable, align 1, !dbg !2138
  br label %if.end.345, !dbg !2139

if.end.345:                                       ; preds = %if.then.344, %if.end.341
  %184 = load i64, i64* %bytes, align 8, !dbg !2140
  %185 = load i64, i64* %m, align 8, !dbg !2141
  %add346 = add i64 %185, %184, !dbg !2141
  store i64 %add346, i64* %m, align 8, !dbg !2141
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.345
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348
  br label %do.cond, !dbg !2142

do.cond:                                          ; preds = %if.end.349
  %call350 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #17, !dbg !2143
  %tobool351 = icmp ne i32 %call350, 0, !dbg !2144
  %lnot352 = xor i1 %tobool351, true, !dbg !2144
  br i1 %lnot352, label %do.body.296, label %do.end.353, !dbg !2142

do.end.353:                                       ; preds = %do.cond, %while.end, %if.then.307, %if.then.303
  br label %if.end.354

if.end.354:                                       ; preds = %do.end.353, %if.then.281
  %186 = load i64, i64* %m, align 8, !dbg !2145
  %cmp355 = icmp ult i64 1, %186, !dbg !2147
  br i1 %cmp355, label %if.then.361, label %lor.lhs.false, !dbg !2148

lor.lhs.false:                                    ; preds = %if.end.354
  %187 = load i8, i8* %backslash_escapes, align 1, !dbg !2149
  %tobool357 = trunc i8 %187 to i1, !dbg !2149
  br i1 %tobool357, label %land.lhs.true.359, label %if.end.442, !dbg !2151

land.lhs.true.359:                                ; preds = %lor.lhs.false
  %188 = load i8, i8* %printable, align 1, !dbg !2152
  %tobool360 = trunc i8 %188 to i1, !dbg !2152
  br i1 %tobool360, label %if.end.442, label %if.then.361, !dbg !2154

if.then.361:                                      ; preds = %land.lhs.true.359, %if.end.354
  call void @llvm.dbg.declare(metadata i64* %ilim, metadata !2155, metadata !DIExpression()), !dbg !2157
  %189 = load i64, i64* %i, align 8, !dbg !2158
  %190 = load i64, i64* %m, align 8, !dbg !2159
  %add362 = add i64 %189, %190, !dbg !2160
  store i64 %add362, i64* %ilim, align 8, !dbg !2157
  br label %for.cond.363, !dbg !2161

for.cond.363:                                     ; preds = %do.end.438, %if.then.361
  %191 = load i8, i8* %backslash_escapes, align 1, !dbg !2162
  %tobool364 = trunc i8 %191 to i1, !dbg !2162
  br i1 %tobool364, label %land.lhs.true.366, label %if.else.411, !dbg !2167

land.lhs.true.366:                                ; preds = %for.cond.363
  %192 = load i8, i8* %printable, align 1, !dbg !2168
  %tobool367 = trunc i8 %192 to i1, !dbg !2168
  br i1 %tobool367, label %if.else.411, label %if.then.368, !dbg !2170

if.then.368:                                      ; preds = %land.lhs.true.366
  %193 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2171
  %tobool369 = trunc i8 %193 to i1, !dbg !2171
  br i1 %tobool369, label %if.then.370, label %if.end.371, !dbg !2174

if.then.370:                                      ; preds = %if.then.368
  br label %force_outer_quoting_style, !dbg !2175

if.end.371:                                       ; preds = %if.then.368
  br label %do.body.372, !dbg !2176

do.body.372:                                      ; preds = %if.end.371
  %194 = load i64, i64* %len, align 8, !dbg !2177
  %195 = load i64, i64* %buffersize.addr, align 8, !dbg !2177
  %cmp373 = icmp ult i64 %194, %195, !dbg !2177
  br i1 %cmp373, label %if.then.375, label %if.end.377, !dbg !2181

if.then.375:                                      ; preds = %do.body.372
  %196 = load i64, i64* %len, align 8, !dbg !2182
  %197 = load i8*, i8** %buffer.addr, align 8, !dbg !2182
  %arrayidx376 = getelementptr inbounds i8, i8* %197, i64 %196, !dbg !2182
  store i8 92, i8* %arrayidx376, align 1, !dbg !2182
  br label %if.end.377, !dbg !2182

if.end.377:                                       ; preds = %if.then.375, %do.body.372
  %198 = load i64, i64* %len, align 8, !dbg !2184
  %inc378 = add i64 %198, 1, !dbg !2184
  store i64 %inc378, i64* %len, align 8, !dbg !2184
  br label %do.end.380, !dbg !2184

do.end.380:                                       ; preds = %if.end.377
  br label %do.body.381, !dbg !2187

do.body.381:                                      ; preds = %do.end.380
  %199 = load i64, i64* %len, align 8, !dbg !2188
  %200 = load i64, i64* %buffersize.addr, align 8, !dbg !2188
  %cmp382 = icmp ult i64 %199, %200, !dbg !2188
  br i1 %cmp382, label %if.then.384, label %if.end.389, !dbg !2192

if.then.384:                                      ; preds = %do.body.381
  %201 = load i8, i8* %c, align 1, !dbg !2193
  %conv385 = zext i8 %201 to i32, !dbg !2193
  %shr = ashr i32 %conv385, 6, !dbg !2193
  %add386 = add nsw i32 48, %shr, !dbg !2193
  %conv387 = trunc i32 %add386 to i8, !dbg !2193
  %202 = load i64, i64* %len, align 8, !dbg !2193
  %203 = load i8*, i8** %buffer.addr, align 8, !dbg !2193
  %arrayidx388 = getelementptr inbounds i8, i8* %203, i64 %202, !dbg !2193
  store i8 %conv387, i8* %arrayidx388, align 1, !dbg !2193
  br label %if.end.389, !dbg !2193

if.end.389:                                       ; preds = %if.then.384, %do.body.381
  %204 = load i64, i64* %len, align 8, !dbg !2195
  %inc390 = add i64 %204, 1, !dbg !2195
  store i64 %inc390, i64* %len, align 8, !dbg !2195
  br label %do.end.392, !dbg !2195

do.end.392:                                       ; preds = %if.end.389
  br label %do.body.393, !dbg !2198

do.body.393:                                      ; preds = %do.end.392
  %205 = load i64, i64* %len, align 8, !dbg !2199
  %206 = load i64, i64* %buffersize.addr, align 8, !dbg !2199
  %cmp394 = icmp ult i64 %205, %206, !dbg !2199
  br i1 %cmp394, label %if.then.396, label %if.end.403, !dbg !2203

if.then.396:                                      ; preds = %do.body.393
  %207 = load i8, i8* %c, align 1, !dbg !2204
  %conv397 = zext i8 %207 to i32, !dbg !2204
  %shr398 = ashr i32 %conv397, 3, !dbg !2204
  %and399 = and i32 %shr398, 7, !dbg !2204
  %add400 = add nsw i32 48, %and399, !dbg !2204
  %conv401 = trunc i32 %add400 to i8, !dbg !2204
  %208 = load i64, i64* %len, align 8, !dbg !2204
  %209 = load i8*, i8** %buffer.addr, align 8, !dbg !2204
  %arrayidx402 = getelementptr inbounds i8, i8* %209, i64 %208, !dbg !2204
  store i8 %conv401, i8* %arrayidx402, align 1, !dbg !2204
  br label %if.end.403, !dbg !2204

if.end.403:                                       ; preds = %if.then.396, %do.body.393
  %210 = load i64, i64* %len, align 8, !dbg !2206
  %inc404 = add i64 %210, 1, !dbg !2206
  store i64 %inc404, i64* %len, align 8, !dbg !2206
  br label %do.end.406, !dbg !2206

do.end.406:                                       ; preds = %if.end.403
  %211 = load i8, i8* %c, align 1, !dbg !2209
  %conv407 = zext i8 %211 to i32, !dbg !2209
  %and408 = and i32 %conv407, 7, !dbg !2210
  %add409 = add nsw i32 48, %and408, !dbg !2211
  %conv410 = trunc i32 %add409 to i8, !dbg !2212
  store i8 %conv410, i8* %c, align 1, !dbg !2213
  br label %if.end.424, !dbg !2214

if.else.411:                                      ; preds = %land.lhs.true.366, %for.cond.363
  %212 = load i8, i8* %is_right_quote, align 1, !dbg !2215
  %tobool412 = trunc i8 %212 to i1, !dbg !2215
  br i1 %tobool412, label %if.then.413, label %if.end.423, !dbg !2217

if.then.413:                                      ; preds = %if.else.411
  br label %do.body.414, !dbg !2218

do.body.414:                                      ; preds = %if.then.413
  %213 = load i64, i64* %len, align 8, !dbg !2220
  %214 = load i64, i64* %buffersize.addr, align 8, !dbg !2220
  %cmp415 = icmp ult i64 %213, %214, !dbg !2220
  br i1 %cmp415, label %if.then.417, label %if.end.419, !dbg !2224

if.then.417:                                      ; preds = %do.body.414
  %215 = load i64, i64* %len, align 8, !dbg !2225
  %216 = load i8*, i8** %buffer.addr, align 8, !dbg !2225
  %arrayidx418 = getelementptr inbounds i8, i8* %216, i64 %215, !dbg !2225
  store i8 92, i8* %arrayidx418, align 1, !dbg !2225
  br label %if.end.419, !dbg !2225

if.end.419:                                       ; preds = %if.then.417, %do.body.414
  %217 = load i64, i64* %len, align 8, !dbg !2227
  %inc420 = add i64 %217, 1, !dbg !2227
  store i64 %inc420, i64* %len, align 8, !dbg !2227
  br label %do.end.422, !dbg !2227

do.end.422:                                       ; preds = %if.end.419
  store i8 0, i8* %is_right_quote, align 1, !dbg !2230
  br label %if.end.423, !dbg !2231

if.end.423:                                       ; preds = %do.end.422, %if.else.411
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %do.end.406
  %218 = load i64, i64* %ilim, align 8, !dbg !2232
  %219 = load i64, i64* %i, align 8, !dbg !2234
  %add425 = add i64 %219, 1, !dbg !2235
  %cmp426 = icmp ule i64 %218, %add425, !dbg !2236
  br i1 %cmp426, label %if.then.428, label %if.end.429, !dbg !2237

if.then.428:                                      ; preds = %if.end.424
  br label %for.end.441, !dbg !2238

if.end.429:                                       ; preds = %if.end.424
  br label %do.body.430, !dbg !2239

do.body.430:                                      ; preds = %if.end.429
  %220 = load i64, i64* %len, align 8, !dbg !2240
  %221 = load i64, i64* %buffersize.addr, align 8, !dbg !2240
  %cmp431 = icmp ult i64 %220, %221, !dbg !2240
  br i1 %cmp431, label %if.then.433, label %if.end.435, !dbg !2244

if.then.433:                                      ; preds = %do.body.430
  %222 = load i8, i8* %c, align 1, !dbg !2245
  %223 = load i64, i64* %len, align 8, !dbg !2245
  %224 = load i8*, i8** %buffer.addr, align 8, !dbg !2245
  %arrayidx434 = getelementptr inbounds i8, i8* %224, i64 %223, !dbg !2245
  store i8 %222, i8* %arrayidx434, align 1, !dbg !2245
  br label %if.end.435, !dbg !2245

if.end.435:                                       ; preds = %if.then.433, %do.body.430
  %225 = load i64, i64* %len, align 8, !dbg !2247
  %inc436 = add i64 %225, 1, !dbg !2247
  store i64 %inc436, i64* %len, align 8, !dbg !2247
  br label %do.end.438, !dbg !2247

do.end.438:                                       ; preds = %if.end.435
  %226 = load i64, i64* %i, align 8, !dbg !2250
  %inc439 = add i64 %226, 1, !dbg !2250
  store i64 %inc439, i64* %i, align 8, !dbg !2250
  %227 = load i8*, i8** %arg.addr, align 8, !dbg !2251
  %arrayidx440 = getelementptr inbounds i8, i8* %227, i64 %inc439, !dbg !2251
  %228 = load i8, i8* %arrayidx440, align 1, !dbg !2251
  store i8 %228, i8* %c, align 1, !dbg !2252
  br label %for.cond.363, !dbg !2253

for.end.441:                                      ; preds = %if.then.428
  br label %store_c, !dbg !2254

if.end.442:                                       ; preds = %land.lhs.true.359, %lor.lhs.false
  br label %sw.epilog.443, !dbg !2255

sw.epilog.443:                                    ; preds = %if.end.442, %sw.bb.278, %if.end.277, %if.end.245, %if.then.236, %if.then.231, %if.end.219, %sw.epilog.192, %if.end.126
  %229 = load i8, i8* %backslash_escapes, align 1, !dbg !2256
  %tobool444 = trunc i8 %229 to i1, !dbg !2256
  br i1 %tobool444, label %land.lhs.true.449, label %lor.lhs.false.446, !dbg !2258

lor.lhs.false.446:                                ; preds = %sw.epilog.443
  %230 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2259
  %tobool447 = trunc i8 %230 to i1, !dbg !2259
  br i1 %tobool447, label %land.lhs.true.449, label %land.lhs.true.458, !dbg !2261

land.lhs.true.449:                                ; preds = %lor.lhs.false.446, %sw.epilog.443
  %231 = load i32*, i32** %quote_these_too.addr, align 8, !dbg !2262
  %tobool450 = icmp ne i32* %231, null, !dbg !2262
  br i1 %tobool450, label %land.lhs.true.451, label %land.lhs.true.458, !dbg !2263

land.lhs.true.451:                                ; preds = %land.lhs.true.449
  %232 = load i8, i8* %c, align 1, !dbg !2264
  %conv452 = zext i8 %232 to i64, !dbg !2264
  %div = udiv i64 %conv452, 32, !dbg !2265
  %233 = load i32*, i32** %quote_these_too.addr, align 8, !dbg !2266
  %arrayidx453 = getelementptr inbounds i32, i32* %233, i64 %div, !dbg !2266
  %234 = load i32, i32* %arrayidx453, align 4, !dbg !2266
  %235 = load i8, i8* %c, align 1, !dbg !2267
  %conv454 = zext i8 %235 to i64, !dbg !2267
  %rem = urem i64 %conv454, 32, !dbg !2268
  %sh_prom = trunc i64 %rem to i32, !dbg !2269
  %shr455 = lshr i32 %234, %sh_prom, !dbg !2269
  %and456 = and i32 %shr455, 1, !dbg !2270
  %tobool457 = icmp ne i32 %and456, 0, !dbg !2270
  br i1 %tobool457, label %if.end.461, label %land.lhs.true.458, !dbg !2271

land.lhs.true.458:                                ; preds = %land.lhs.true.451, %land.lhs.true.449, %lor.lhs.false.446
  %236 = load i8, i8* %is_right_quote, align 1, !dbg !2272
  %tobool459 = trunc i8 %236 to i1, !dbg !2272
  br i1 %tobool459, label %if.end.461, label %if.then.460, !dbg !2274

if.then.460:                                      ; preds = %land.lhs.true.458
  br label %store_c, !dbg !2275

if.end.461:                                       ; preds = %land.lhs.true.458, %land.lhs.true.451
  br label %store_escape, !dbg !2276

store_escape:                                     ; preds = %if.end.461, %if.then.218
  %237 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2277
  %tobool462 = trunc i8 %237 to i1, !dbg !2277
  br i1 %tobool462, label %if.then.463, label %if.end.464, !dbg !2279

if.then.463:                                      ; preds = %store_escape
  br label %force_outer_quoting_style, !dbg !2280

if.end.464:                                       ; preds = %store_escape
  br label %do.body.465, !dbg !2281

do.body.465:                                      ; preds = %if.end.464
  %238 = load i64, i64* %len, align 8, !dbg !2282
  %239 = load i64, i64* %buffersize.addr, align 8, !dbg !2282
  %cmp466 = icmp ult i64 %238, %239, !dbg !2282
  br i1 %cmp466, label %if.then.468, label %if.end.470, !dbg !2286

if.then.468:                                      ; preds = %do.body.465
  %240 = load i64, i64* %len, align 8, !dbg !2287
  %241 = load i8*, i8** %buffer.addr, align 8, !dbg !2287
  %arrayidx469 = getelementptr inbounds i8, i8* %241, i64 %240, !dbg !2287
  store i8 92, i8* %arrayidx469, align 1, !dbg !2287
  br label %if.end.470, !dbg !2287

if.end.470:                                       ; preds = %if.then.468, %do.body.465
  %242 = load i64, i64* %len, align 8, !dbg !2289
  %inc471 = add i64 %242, 1, !dbg !2289
  store i64 %inc471, i64* %len, align 8, !dbg !2289
  br label %do.end.473, !dbg !2289

do.end.473:                                       ; preds = %if.end.470
  br label %store_c, !dbg !2292

store_c:                                          ; preds = %do.end.473, %if.then.460, %for.end.441, %if.then.208
  br label %do.body.474, !dbg !2294

do.body.474:                                      ; preds = %store_c
  %243 = load i64, i64* %len, align 8, !dbg !2295
  %244 = load i64, i64* %buffersize.addr, align 8, !dbg !2295
  %cmp475 = icmp ult i64 %243, %244, !dbg !2295
  br i1 %cmp475, label %if.then.477, label %if.end.479, !dbg !2299

if.then.477:                                      ; preds = %do.body.474
  %245 = load i8, i8* %c, align 1, !dbg !2300
  %246 = load i64, i64* %len, align 8, !dbg !2300
  %247 = load i8*, i8** %buffer.addr, align 8, !dbg !2300
  %arrayidx478 = getelementptr inbounds i8, i8* %247, i64 %246, !dbg !2300
  store i8 %245, i8* %arrayidx478, align 1, !dbg !2300
  br label %if.end.479, !dbg !2300

if.end.479:                                       ; preds = %if.then.477, %do.body.474
  %248 = load i64, i64* %len, align 8, !dbg !2302
  %inc480 = add i64 %248, 1, !dbg !2302
  store i64 %inc480, i64* %len, align 8, !dbg !2302
  br label %do.end.482, !dbg !2302

do.end.482:                                       ; preds = %if.end.479
  br label %for.inc.483, !dbg !2305

for.inc.483:                                      ; preds = %do.end.482, %if.then.124
  %249 = load i64, i64* %i, align 8, !dbg !2306
  %inc484 = add i64 %249, 1, !dbg !2306
  store i64 %inc484, i64* %i, align 8, !dbg !2306
  br label %for.cond.39, !dbg !2307

for.end.485:                                      ; preds = %cond.end
  %250 = load i64, i64* %len, align 8, !dbg !2308
  %cmp486 = icmp eq i64 %250, 0, !dbg !2310
  br i1 %cmp486, label %land.lhs.true.488, label %if.end.495, !dbg !2311

land.lhs.true.488:                                ; preds = %for.end.485
  %251 = load i32, i32* %quoting_style.addr, align 4, !dbg !2312
  %cmp489 = icmp eq i32 %251, 2, !dbg !2314
  br i1 %cmp489, label %land.lhs.true.491, label %if.end.495, !dbg !2315

land.lhs.true.491:                                ; preds = %land.lhs.true.488
  %252 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2316
  %tobool492 = trunc i8 %252 to i1, !dbg !2316
  br i1 %tobool492, label %if.then.494, label %if.end.495, !dbg !2317

if.then.494:                                      ; preds = %land.lhs.true.491
  br label %force_outer_quoting_style, !dbg !2318

if.end.495:                                       ; preds = %land.lhs.true.491, %land.lhs.true.488, %for.end.485
  %253 = load i8*, i8** %quote_string, align 8, !dbg !2319
  %tobool496 = icmp ne i8* %253, null, !dbg !2319
  br i1 %tobool496, label %land.lhs.true.497, label %if.end.515, !dbg !2321

land.lhs.true.497:                                ; preds = %if.end.495
  %254 = load i8, i8* %elide_outer_quotes, align 1, !dbg !2322
  %tobool498 = trunc i8 %254 to i1, !dbg !2322
  br i1 %tobool498, label %if.end.515, label %if.then.499, !dbg !2324

if.then.499:                                      ; preds = %land.lhs.true.497
  br label %for.cond.500, !dbg !2325

for.cond.500:                                     ; preds = %for.inc.512, %if.then.499
  %255 = load i8*, i8** %quote_string, align 8, !dbg !2326
  %256 = load i8, i8* %255, align 1, !dbg !2331
  %tobool501 = icmp ne i8 %256, 0, !dbg !2332
  br i1 %tobool501, label %for.body.502, label %for.end.514, !dbg !2332

for.body.502:                                     ; preds = %for.cond.500
  br label %do.body.503, !dbg !2333

do.body.503:                                      ; preds = %for.body.502
  %257 = load i64, i64* %len, align 8, !dbg !2334
  %258 = load i64, i64* %buffersize.addr, align 8, !dbg !2334
  %cmp504 = icmp ult i64 %257, %258, !dbg !2334
  br i1 %cmp504, label %if.then.506, label %if.end.508, !dbg !2338

if.then.506:                                      ; preds = %do.body.503
  %259 = load i8*, i8** %quote_string, align 8, !dbg !2339
  %260 = load i8, i8* %259, align 1, !dbg !2339
  %261 = load i64, i64* %len, align 8, !dbg !2339
  %262 = load i8*, i8** %buffer.addr, align 8, !dbg !2339
  %arrayidx507 = getelementptr inbounds i8, i8* %262, i64 %261, !dbg !2339
  store i8 %260, i8* %arrayidx507, align 1, !dbg !2339
  br label %if.end.508, !dbg !2339

if.end.508:                                       ; preds = %if.then.506, %do.body.503
  %263 = load i64, i64* %len, align 8, !dbg !2341
  %inc509 = add i64 %263, 1, !dbg !2341
  store i64 %inc509, i64* %len, align 8, !dbg !2341
  br label %do.end.511, !dbg !2341

do.end.511:                                       ; preds = %if.end.508
  br label %for.inc.512, !dbg !2344

for.inc.512:                                      ; preds = %do.end.511
  %264 = load i8*, i8** %quote_string, align 8, !dbg !2346
  %incdec.ptr513 = getelementptr inbounds i8, i8* %264, i32 1, !dbg !2346
  store i8* %incdec.ptr513, i8** %quote_string, align 8, !dbg !2346
  br label %for.cond.500, !dbg !2347

for.end.514:                                      ; preds = %for.cond.500
  br label %if.end.515, !dbg !2348

if.end.515:                                       ; preds = %for.end.514, %land.lhs.true.497, %if.end.495
  %265 = load i64, i64* %len, align 8, !dbg !2349
  %266 = load i64, i64* %buffersize.addr, align 8, !dbg !2351
  %cmp516 = icmp ult i64 %265, %266, !dbg !2352
  br i1 %cmp516, label %if.then.518, label %if.end.520, !dbg !2353

if.then.518:                                      ; preds = %if.end.515
  %267 = load i64, i64* %len, align 8, !dbg !2354
  %268 = load i8*, i8** %buffer.addr, align 8, !dbg !2355
  %arrayidx519 = getelementptr inbounds i8, i8* %268, i64 %267, !dbg !2355
  store i8 0, i8* %arrayidx519, align 1, !dbg !2356
  br label %if.end.520, !dbg !2355

if.end.520:                                       ; preds = %if.then.518, %if.end.515
  %269 = load i64, i64* %len, align 8, !dbg !2357
  store i64 %269, i64* %retval, !dbg !2358
  br label %return, !dbg !2358

force_outer_quoting_style:                        ; preds = %if.then.494, %if.then.463, %if.then.370, %sw.bb.335, %if.then.251, %if.then.244, %if.then.215, %if.then.151, %if.then.130, %if.then.79, %if.then.70
  %270 = load i8*, i8** %buffer.addr, align 8, !dbg !2359
  %271 = load i64, i64* %buffersize.addr, align 8, !dbg !2360
  %272 = load i8*, i8** %arg.addr, align 8, !dbg !2361
  %273 = load i64, i64* %argsize.addr, align 8, !dbg !2362
  %274 = load i32, i32* %quoting_style.addr, align 4, !dbg !2363
  %275 = load i32, i32* %flags.addr, align 4, !dbg !2364
  %and521 = and i32 %275, -3, !dbg !2365
  %276 = load i8*, i8** %left_quote.addr, align 8, !dbg !2366
  %277 = load i8*, i8** %right_quote.addr, align 8, !dbg !2367
  %call522 = call i64 @quotearg_buffer_restyled(i8* %270, i64 %271, i8* %272, i64 %273, i32 %274, i32 %and521, i32* null, i8* %276, i8* %277), !dbg !2368
  store i64 %call522, i64* %retval, !dbg !2369
  br label %return, !dbg !2369

return:                                           ; preds = %force_outer_quoting_style, %if.end.520
  %278 = load i64, i64* %retval, !dbg !2370
  ret i64 %278, !dbg !2370
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_options(i32 %n, i8* %arg, i64 %argsize, %struct.quoting_options* %options) #5 !dbg !2371 {
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
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !2374, metadata !DIExpression()), !dbg !2375
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !2376, metadata !DIExpression()), !dbg !2377
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %argsize.addr, metadata !2378, metadata !DIExpression()), !dbg !2379
  store %struct.quoting_options* %options, %struct.quoting_options** %options.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %options.addr, metadata !2380, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.declare(metadata i32* %e, metadata !2382, metadata !DIExpression()), !dbg !2383
  %call = call i32* @__errno_location() #16, !dbg !2384
  %0 = load i32, i32* %call, align 4, !dbg !2384
  store i32 %0, i32* %e, align 4, !dbg !2383
  call void @llvm.dbg.declare(metadata i32* %n0, metadata !2385, metadata !DIExpression()), !dbg !2386
  %1 = load i32, i32* %n.addr, align 4, !dbg !2387
  store i32 %1, i32* %n0, align 4, !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.slotvec** %sv, metadata !2388, metadata !DIExpression()), !dbg !2389
  %2 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2390
  store %struct.slotvec* %2, %struct.slotvec** %sv, align 8, !dbg !2389
  %3 = load i32, i32* %n.addr, align 4, !dbg !2391
  %cmp = icmp slt i32 %3, 0, !dbg !2393
  br i1 %cmp, label %if.then, label %if.end, !dbg !2394

if.then:                                          ; preds = %entry
  call void @abort() #14, !dbg !2395
  unreachable, !dbg !2395

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @nslots, align 4, !dbg !2396
  %5 = load i32, i32* %n0, align 4, !dbg !2398
  %cmp1 = icmp ule i32 %4, %5, !dbg !2399
  br i1 %cmp1, label %if.then.2, label %if.end.17, !dbg !2400

if.then.2:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %n1, metadata !2401, metadata !DIExpression()), !dbg !2403
  %6 = load i32, i32* %n0, align 4, !dbg !2404
  %add = add i32 %6, 1, !dbg !2405
  %conv = zext i32 %add to i64, !dbg !2404
  store i64 %conv, i64* %n1, align 8, !dbg !2403
  call void @llvm.dbg.declare(metadata i8* %preallocated, metadata !2406, metadata !DIExpression()), !dbg !2407
  %7 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2408
  %cmp3 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2409
  %frombool = zext i1 %cmp3 to i8, !dbg !2407
  store i8 %frombool, i8* %preallocated, align 1, !dbg !2407
  %8 = load i64, i64* %n1, align 8, !dbg !2410
  %cmp5 = icmp ult i64 1152921504606846975, %8, !dbg !2410
  br i1 %cmp5, label %if.then.7, label %if.end.8, !dbg !2412

if.then.7:                                        ; preds = %if.then.2
  call void @xalloc_die() #15, !dbg !2413
  unreachable, !dbg !2413

if.end.8:                                         ; preds = %if.then.2
  %9 = load i8, i8* %preallocated, align 1, !dbg !2414
  %tobool = trunc i8 %9 to i1, !dbg !2414
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2414

cond.true:                                        ; preds = %if.end.8
  br label %cond.end, !dbg !2415

cond.false:                                       ; preds = %if.end.8
  %10 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2417
  br label %cond.end, !dbg !2414

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.slotvec* [ null, %cond.true ], [ %10, %cond.false ], !dbg !2414
  %11 = bitcast %struct.slotvec* %cond to i8*, !dbg !2419
  %12 = load i64, i64* %n1, align 8, !dbg !2422
  %mul = mul i64 %12, 16, !dbg !2423
  %call10 = call i8* @xrealloc(i8* %11, i64 %mul), !dbg !2424
  %13 = bitcast i8* %call10 to %struct.slotvec*, !dbg !2424
  store %struct.slotvec* %13, %struct.slotvec** %sv, align 8, !dbg !2425
  store %struct.slotvec* %13, %struct.slotvec** @slotvec, align 8, !dbg !2426
  %14 = load i8, i8* %preallocated, align 1, !dbg !2427
  %tobool11 = trunc i8 %14 to i1, !dbg !2427
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !2429

if.then.12:                                       ; preds = %cond.end
  %15 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2430
  %16 = bitcast %struct.slotvec* %15 to i8*, !dbg !2431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2431
  br label %if.end.13, !dbg !2432

if.end.13:                                        ; preds = %if.then.12, %cond.end
  %17 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2433
  %18 = load i32, i32* @nslots, align 4, !dbg !2434
  %idx.ext = zext i32 %18 to i64, !dbg !2435
  %add.ptr = getelementptr inbounds %struct.slotvec, %struct.slotvec* %17, i64 %idx.ext, !dbg !2435
  %19 = bitcast %struct.slotvec* %add.ptr to i8*, !dbg !2436
  %20 = load i64, i64* %n1, align 8, !dbg !2437
  %21 = load i32, i32* @nslots, align 4, !dbg !2438
  %conv14 = zext i32 %21 to i64, !dbg !2438
  %sub = sub i64 %20, %conv14, !dbg !2439
  %mul15 = mul i64 %sub, 16, !dbg !2440
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 %mul15, i1 false), !dbg !2436
  %22 = load i64, i64* %n1, align 8, !dbg !2441
  %conv16 = trunc i64 %22 to i32, !dbg !2441
  store i32 %conv16, i32* @nslots, align 4, !dbg !2442
  br label %if.end.17, !dbg !2443

if.end.17:                                        ; preds = %if.end.13, %if.end
  call void @llvm.dbg.declare(metadata i64* %size, metadata !2444, metadata !DIExpression()), !dbg !2446
  %23 = load i32, i32* %n.addr, align 4, !dbg !2447
  %idxprom = sext i32 %23 to i64, !dbg !2448
  %24 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2448
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %idxprom, !dbg !2448
  %size18 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 0, !dbg !2449
  %25 = load i64, i64* %size18, align 8, !dbg !2449
  store i64 %25, i64* %size, align 8, !dbg !2446
  call void @llvm.dbg.declare(metadata i8** %val, metadata !2450, metadata !DIExpression()), !dbg !2451
  %26 = load i32, i32* %n.addr, align 4, !dbg !2452
  %idxprom19 = sext i32 %26 to i64, !dbg !2453
  %27 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2453
  %arrayidx20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %27, i64 %idxprom19, !dbg !2453
  %val21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx20, i32 0, i32 1, !dbg !2454
  %28 = load i8*, i8** %val21, align 8, !dbg !2454
  store i8* %28, i8** %val, align 8, !dbg !2451
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !2455, metadata !DIExpression()), !dbg !2456
  %29 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2457
  %flags22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %29, i32 0, i32 1, !dbg !2458
  %30 = load i32, i32* %flags22, align 4, !dbg !2458
  %or = or i32 %30, 1, !dbg !2459
  store i32 %or, i32* %flags, align 4, !dbg !2456
  call void @llvm.dbg.declare(metadata i64* %qsize, metadata !2460, metadata !DIExpression()), !dbg !2461
  %31 = load i8*, i8** %val, align 8, !dbg !2462
  %32 = load i64, i64* %size, align 8, !dbg !2463
  %33 = load i8*, i8** %arg.addr, align 8, !dbg !2464
  %34 = load i64, i64* %argsize.addr, align 8, !dbg !2465
  %35 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2466
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %35, i32 0, i32 0, !dbg !2467
  %36 = load i32, i32* %style, align 4, !dbg !2467
  %37 = load i32, i32* %flags, align 4, !dbg !2468
  %38 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2469
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %38, i32 0, i32 2, !dbg !2470
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !2469
  %39 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2471
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 3, !dbg !2472
  %40 = load i8*, i8** %left_quote, align 8, !dbg !2472
  %41 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2473
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %41, i32 0, i32 4, !dbg !2474
  %42 = load i8*, i8** %right_quote, align 8, !dbg !2474
  %call23 = call i64 @quotearg_buffer_restyled(i8* %31, i64 %32, i8* %33, i64 %34, i32 %36, i32 %37, i32* %arraydecay, i8* %40, i8* %42), !dbg !2475
  store i64 %call23, i64* %qsize, align 8, !dbg !2461
  %43 = load i64, i64* %size, align 8, !dbg !2476
  %44 = load i64, i64* %qsize, align 8, !dbg !2478
  %cmp24 = icmp ule i64 %43, %44, !dbg !2479
  br i1 %cmp24, label %if.then.26, label %if.end.45, !dbg !2480

if.then.26:                                       ; preds = %if.end.17
  %45 = load i64, i64* %qsize, align 8, !dbg !2481
  %add27 = add i64 %45, 1, !dbg !2483
  store i64 %add27, i64* %size, align 8, !dbg !2484
  %46 = load i32, i32* %n.addr, align 4, !dbg !2485
  %idxprom28 = sext i32 %46 to i64, !dbg !2486
  %47 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2486
  %arrayidx29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %47, i64 %idxprom28, !dbg !2486
  %size30 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx29, i32 0, i32 0, !dbg !2487
  store i64 %add27, i64* %size30, align 8, !dbg !2488
  %48 = load i8*, i8** %val, align 8, !dbg !2489
  %cmp31 = icmp ne i8* %48, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), !dbg !2491
  br i1 %cmp31, label %if.then.33, label %if.end.34, !dbg !2492

if.then.33:                                       ; preds = %if.then.26
  %49 = load i8*, i8** %val, align 8, !dbg !2493
  call void @free(i8* %49) #10, !dbg !2494
  br label %if.end.34, !dbg !2494

if.end.34:                                        ; preds = %if.then.33, %if.then.26
  %50 = load i64, i64* %size, align 8, !dbg !2495
  %call35 = call noalias i8* @xcharalloc(i64 %50), !dbg !2496
  store i8* %call35, i8** %val, align 8, !dbg !2497
  %51 = load i32, i32* %n.addr, align 4, !dbg !2498
  %idxprom36 = sext i32 %51 to i64, !dbg !2499
  %52 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !dbg !2499
  %arrayidx37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %52, i64 %idxprom36, !dbg !2499
  %val38 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx37, i32 0, i32 1, !dbg !2500
  store i8* %call35, i8** %val38, align 8, !dbg !2501
  %53 = load i8*, i8** %val, align 8, !dbg !2502
  %54 = load i64, i64* %size, align 8, !dbg !2503
  %55 = load i8*, i8** %arg.addr, align 8, !dbg !2504
  %56 = load i64, i64* %argsize.addr, align 8, !dbg !2505
  %57 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2506
  %style39 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %57, i32 0, i32 0, !dbg !2507
  %58 = load i32, i32* %style39, align 4, !dbg !2507
  %59 = load i32, i32* %flags, align 4, !dbg !2508
  %60 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2509
  %quote_these_too40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %60, i32 0, i32 2, !dbg !2510
  %arraydecay41 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too40, i32 0, i32 0, !dbg !2509
  %61 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2511
  %left_quote42 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2512
  %62 = load i8*, i8** %left_quote42, align 8, !dbg !2512
  %63 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !dbg !2513
  %right_quote43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %63, i32 0, i32 4, !dbg !2514
  %64 = load i8*, i8** %right_quote43, align 8, !dbg !2514
  %call44 = call i64 @quotearg_buffer_restyled(i8* %53, i64 %54, i8* %55, i64 %56, i32 %58, i32 %59, i32* %arraydecay41, i8* %62, i8* %64), !dbg !2515
  br label %if.end.45, !dbg !2516

if.end.45:                                        ; preds = %if.end.34, %if.end.17
  %65 = load i32, i32* %e, align 4, !dbg !2517
  %call46 = call i32* @__errno_location() #16, !dbg !2518
  store i32 %65, i32* %call46, align 4, !dbg !2519
  %66 = load i8*, i8** %val, align 8, !dbg !2520
  ret i8* %66, !dbg !2521
}

; Function Attrs: nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret %agg.result, i32 %style) #5 !dbg !2522 {
entry:
  %style.addr = alloca i32, align 4
  %o = alloca %struct.quoting_options, align 8
  store i32 %style, i32* %style.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %style.addr, metadata !2525, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %o, metadata !2527, metadata !DIExpression()), !dbg !2528
  %0 = bitcast %struct.quoting_options* %o to i8*, !dbg !2528
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !2528
  %1 = load i32, i32* %style.addr, align 4, !dbg !2529
  %cmp = icmp eq i32 %1, 8, !dbg !2531
  br i1 %cmp, label %if.then, label %if.end, !dbg !2532

if.then:                                          ; preds = %entry
  call void @abort() #14, !dbg !2533
  unreachable, !dbg !2533

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %style.addr, align 4, !dbg !2534
  %style1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %o, i32 0, i32 0, !dbg !2535
  store i32 %2, i32* %style1, align 4, !dbg !2536
  %3 = bitcast %struct.quoting_options* %agg.result to i8*, !dbg !2537
  %4 = bitcast %struct.quoting_options* %o to i8*, !dbg !2537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 56, i1 false), !dbg !2537
  ret void, !dbg !2538
}

; Function Attrs: nounwind uwtable
define internal i8* @gettext_quote(i8* %msgid, i32 %s) #5 !dbg !2539 {
entry:
  %retval = alloca i8*, align 8
  %msgid.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %translation = alloca i8*, align 8
  %locale_code = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msgid.addr, metadata !2542, metadata !DIExpression()), !dbg !2543
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !2544, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.declare(metadata i8** %translation, metadata !2546, metadata !DIExpression()), !dbg !2547
  %0 = load i8*, i8** %msgid.addr, align 8, !dbg !2548
  %call = call i8* @gettext(i8* %0) #10, !dbg !2548
  store i8* %call, i8** %translation, align 8, !dbg !2547
  call void @llvm.dbg.declare(metadata i8** %locale_code, metadata !2549, metadata !DIExpression()), !dbg !2550
  %1 = load i8*, i8** %translation, align 8, !dbg !2551
  %2 = load i8*, i8** %msgid.addr, align 8, !dbg !2553
  %cmp = icmp ne i8* %1, %2, !dbg !2554
  br i1 %cmp, label %if.then, label %if.end, !dbg !2555

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %translation, align 8, !dbg !2556
  store i8* %3, i8** %retval, !dbg !2557
  br label %return, !dbg !2557

if.end:                                           ; preds = %entry
  %call1 = call i8* @locale_charset(), !dbg !2558
  store i8* %call1, i8** %locale_code, align 8, !dbg !2559
  %4 = load i8*, i8** %locale_code, align 8, !dbg !2560
  %call2 = call i32 @c_strcasecmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11.61, i32 0, i32 0)) #17, !dbg !2560
  %cmp3 = icmp eq i32 %call2, 0, !dbg !2560
  br i1 %cmp3, label %if.then.4, label %if.end.7, !dbg !2562

if.then.4:                                        ; preds = %if.end
  %5 = load i8*, i8** %msgid.addr, align 8, !dbg !2563
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0, !dbg !2563
  %6 = load i8, i8* %arrayidx, align 1, !dbg !2563
  %conv = sext i8 %6 to i32, !dbg !2563
  %cmp5 = icmp eq i32 %conv, 96, !dbg !2564
  %cond = select i1 %cmp5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.62, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13.63, i32 0, i32 0), !dbg !2563
  store i8* %cond, i8** %retval, !dbg !2565
  br label %return, !dbg !2565

if.end.7:                                         ; preds = %if.end
  %7 = load i8*, i8** %locale_code, align 8, !dbg !2566
  %call8 = call i32 @c_strcasecmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14.64, i32 0, i32 0)) #17, !dbg !2566
  %cmp9 = icmp eq i32 %call8, 0, !dbg !2566
  br i1 %cmp9, label %if.then.11, label %if.end.17, !dbg !2568

if.then.11:                                       ; preds = %if.end.7
  %8 = load i8*, i8** %msgid.addr, align 8, !dbg !2569
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !2569
  %9 = load i8, i8* %arrayidx12, align 1, !dbg !2569
  %conv13 = sext i8 %9 to i32, !dbg !2569
  %cmp14 = icmp eq i32 %conv13, 96, !dbg !2570
  %cond16 = select i1 %cmp14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16.66, i32 0, i32 0), !dbg !2569
  store i8* %cond16, i8** %retval, !dbg !2571
  br label %return, !dbg !2571

if.end.17:                                        ; preds = %if.end.7
  %10 = load i32, i32* %s.addr, align 4, !dbg !2572
  %cmp18 = icmp eq i32 %10, 7, !dbg !2573
  %cond20 = select i1 %cmp18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i32 0, i32 0), !dbg !2572
  store i8* %cond20, i8** %retval, !dbg !2574
  br label %return, !dbg !2574

return:                                           ; preds = %if.end.17, %if.then.11, %if.then.4, %if.then
  %11 = load i8*, i8** %retval, !dbg !2575
  ret i8* %11, !dbg !2575
}

; Function Attrs: nounwind uwtable
define internal void @version_etc_arn(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** %authors, i64 %n_authors) #5 !dbg !2576 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca i8**, align 8
  %n_authors.addr = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !2632, metadata !DIExpression()), !dbg !2633
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %command_name.addr, metadata !2634, metadata !DIExpression()), !dbg !2635
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %package.addr, metadata !2636, metadata !DIExpression()), !dbg !2637
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %version.addr, metadata !2638, metadata !DIExpression()), !dbg !2639
  store i8** %authors, i8*** %authors.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %authors.addr, metadata !2640, metadata !DIExpression()), !dbg !2641
  store i64 %n_authors, i64* %n_authors.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n_authors.addr, metadata !2642, metadata !DIExpression()), !dbg !2643
  %0 = load i8*, i8** %command_name.addr, align 8, !dbg !2644
  %tobool = icmp ne i8* %0, null, !dbg !2644
  br i1 %tobool, label %if.then, label %if.else, !dbg !2646

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2647
  %2 = load i8*, i8** %command_name.addr, align 8, !dbg !2648
  %3 = load i8*, i8** %package.addr, align 8, !dbg !2649
  %4 = load i8*, i8** %version.addr, align 8, !dbg !2650
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0), i8* %2, i8* %3, i8* %4), !dbg !2651
  br label %if.end, !dbg !2651

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2652
  %6 = load i8*, i8** %package.addr, align 8, !dbg !2653
  %7 = load i8*, i8** %version.addr, align 8, !dbg !2654
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.73, i32 0, i32 0), i8* %6, i8* %7), !dbg !2655
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2656
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i32 0, i32 0)) #10, !dbg !2657
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* %call2, i32 2015), !dbg !2658
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.75, i32 0, i32 0)) #10, !dbg !2659
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2659
  %call5 = call i32 @fputs_unlocked(i8* %call4, %struct._IO_FILE* %9), !dbg !2659
  %10 = load i64, i64* %n_authors.addr, align 8, !dbg !2660
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
  ], !dbg !2661

sw.bb:                                            ; preds = %if.end
  call void @abort() #14, !dbg !2662
  unreachable, !dbg !2662

sw.bb.6:                                          ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2664
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.76, i32 0, i32 0)) #10, !dbg !2665
  %12 = load i8**, i8*** %authors.addr, align 8, !dbg !2666
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 0, !dbg !2666
  %13 = load i8*, i8** %arrayidx, align 8, !dbg !2666
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* %call7, i8* %13), !dbg !2667
  br label %sw.epilog, !dbg !2668

sw.bb.9:                                          ; preds = %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2669
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.77, i32 0, i32 0)) #10, !dbg !2670
  %15 = load i8**, i8*** %authors.addr, align 8, !dbg !2671
  %arrayidx11 = getelementptr inbounds i8*, i8** %15, i64 0, !dbg !2671
  %16 = load i8*, i8** %arrayidx11, align 8, !dbg !2671
  %17 = load i8**, i8*** %authors.addr, align 8, !dbg !2672
  %arrayidx12 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !2672
  %18 = load i8*, i8** %arrayidx12, align 8, !dbg !2672
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* %call10, i8* %16, i8* %18), !dbg !2673
  br label %sw.epilog, !dbg !2674

sw.bb.14:                                         ; preds = %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2675
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.78, i32 0, i32 0)) #10, !dbg !2676
  %20 = load i8**, i8*** %authors.addr, align 8, !dbg !2677
  %arrayidx16 = getelementptr inbounds i8*, i8** %20, i64 0, !dbg !2677
  %21 = load i8*, i8** %arrayidx16, align 8, !dbg !2677
  %22 = load i8**, i8*** %authors.addr, align 8, !dbg !2678
  %arrayidx17 = getelementptr inbounds i8*, i8** %22, i64 1, !dbg !2678
  %23 = load i8*, i8** %arrayidx17, align 8, !dbg !2678
  %24 = load i8**, i8*** %authors.addr, align 8, !dbg !2679
  %arrayidx18 = getelementptr inbounds i8*, i8** %24, i64 2, !dbg !2679
  %25 = load i8*, i8** %arrayidx18, align 8, !dbg !2679
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* %call15, i8* %21, i8* %23, i8* %25), !dbg !2680
  br label %sw.epilog, !dbg !2681

sw.bb.20:                                         ; preds = %if.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2682
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.79, i32 0, i32 0)) #10, !dbg !2683
  %27 = load i8**, i8*** %authors.addr, align 8, !dbg !2684
  %arrayidx22 = getelementptr inbounds i8*, i8** %27, i64 0, !dbg !2684
  %28 = load i8*, i8** %arrayidx22, align 8, !dbg !2684
  %29 = load i8**, i8*** %authors.addr, align 8, !dbg !2685
  %arrayidx23 = getelementptr inbounds i8*, i8** %29, i64 1, !dbg !2685
  %30 = load i8*, i8** %arrayidx23, align 8, !dbg !2685
  %31 = load i8**, i8*** %authors.addr, align 8, !dbg !2686
  %arrayidx24 = getelementptr inbounds i8*, i8** %31, i64 2, !dbg !2686
  %32 = load i8*, i8** %arrayidx24, align 8, !dbg !2686
  %33 = load i8**, i8*** %authors.addr, align 8, !dbg !2687
  %arrayidx25 = getelementptr inbounds i8*, i8** %33, i64 3, !dbg !2687
  %34 = load i8*, i8** %arrayidx25, align 8, !dbg !2687
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* %call21, i8* %28, i8* %30, i8* %32, i8* %34), !dbg !2688
  br label %sw.epilog, !dbg !2689

sw.bb.27:                                         ; preds = %if.end
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2690
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.80, i32 0, i32 0)) #10, !dbg !2691
  %36 = load i8**, i8*** %authors.addr, align 8, !dbg !2692
  %arrayidx29 = getelementptr inbounds i8*, i8** %36, i64 0, !dbg !2692
  %37 = load i8*, i8** %arrayidx29, align 8, !dbg !2692
  %38 = load i8**, i8*** %authors.addr, align 8, !dbg !2693
  %arrayidx30 = getelementptr inbounds i8*, i8** %38, i64 1, !dbg !2693
  %39 = load i8*, i8** %arrayidx30, align 8, !dbg !2693
  %40 = load i8**, i8*** %authors.addr, align 8, !dbg !2694
  %arrayidx31 = getelementptr inbounds i8*, i8** %40, i64 2, !dbg !2694
  %41 = load i8*, i8** %arrayidx31, align 8, !dbg !2694
  %42 = load i8**, i8*** %authors.addr, align 8, !dbg !2695
  %arrayidx32 = getelementptr inbounds i8*, i8** %42, i64 3, !dbg !2695
  %43 = load i8*, i8** %arrayidx32, align 8, !dbg !2695
  %44 = load i8**, i8*** %authors.addr, align 8, !dbg !2696
  %arrayidx33 = getelementptr inbounds i8*, i8** %44, i64 4, !dbg !2696
  %45 = load i8*, i8** %arrayidx33, align 8, !dbg !2696
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* %call28, i8* %37, i8* %39, i8* %41, i8* %43, i8* %45), !dbg !2697
  br label %sw.epilog, !dbg !2698

sw.bb.35:                                         ; preds = %if.end
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2699
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.81, i32 0, i32 0)) #10, !dbg !2700
  %47 = load i8**, i8*** %authors.addr, align 8, !dbg !2701
  %arrayidx37 = getelementptr inbounds i8*, i8** %47, i64 0, !dbg !2701
  %48 = load i8*, i8** %arrayidx37, align 8, !dbg !2701
  %49 = load i8**, i8*** %authors.addr, align 8, !dbg !2702
  %arrayidx38 = getelementptr inbounds i8*, i8** %49, i64 1, !dbg !2702
  %50 = load i8*, i8** %arrayidx38, align 8, !dbg !2702
  %51 = load i8**, i8*** %authors.addr, align 8, !dbg !2703
  %arrayidx39 = getelementptr inbounds i8*, i8** %51, i64 2, !dbg !2703
  %52 = load i8*, i8** %arrayidx39, align 8, !dbg !2703
  %53 = load i8**, i8*** %authors.addr, align 8, !dbg !2704
  %arrayidx40 = getelementptr inbounds i8*, i8** %53, i64 3, !dbg !2704
  %54 = load i8*, i8** %arrayidx40, align 8, !dbg !2704
  %55 = load i8**, i8*** %authors.addr, align 8, !dbg !2705
  %arrayidx41 = getelementptr inbounds i8*, i8** %55, i64 4, !dbg !2705
  %56 = load i8*, i8** %arrayidx41, align 8, !dbg !2705
  %57 = load i8**, i8*** %authors.addr, align 8, !dbg !2706
  %arrayidx42 = getelementptr inbounds i8*, i8** %57, i64 5, !dbg !2706
  %58 = load i8*, i8** %arrayidx42, align 8, !dbg !2706
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* %call36, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56, i8* %58), !dbg !2707
  br label %sw.epilog, !dbg !2708

sw.bb.44:                                         ; preds = %if.end
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2709
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.82, i32 0, i32 0)) #10, !dbg !2710
  %60 = load i8**, i8*** %authors.addr, align 8, !dbg !2711
  %arrayidx46 = getelementptr inbounds i8*, i8** %60, i64 0, !dbg !2711
  %61 = load i8*, i8** %arrayidx46, align 8, !dbg !2711
  %62 = load i8**, i8*** %authors.addr, align 8, !dbg !2712
  %arrayidx47 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2712
  %63 = load i8*, i8** %arrayidx47, align 8, !dbg !2712
  %64 = load i8**, i8*** %authors.addr, align 8, !dbg !2713
  %arrayidx48 = getelementptr inbounds i8*, i8** %64, i64 2, !dbg !2713
  %65 = load i8*, i8** %arrayidx48, align 8, !dbg !2713
  %66 = load i8**, i8*** %authors.addr, align 8, !dbg !2714
  %arrayidx49 = getelementptr inbounds i8*, i8** %66, i64 3, !dbg !2714
  %67 = load i8*, i8** %arrayidx49, align 8, !dbg !2714
  %68 = load i8**, i8*** %authors.addr, align 8, !dbg !2715
  %arrayidx50 = getelementptr inbounds i8*, i8** %68, i64 4, !dbg !2715
  %69 = load i8*, i8** %arrayidx50, align 8, !dbg !2715
  %70 = load i8**, i8*** %authors.addr, align 8, !dbg !2716
  %arrayidx51 = getelementptr inbounds i8*, i8** %70, i64 5, !dbg !2716
  %71 = load i8*, i8** %arrayidx51, align 8, !dbg !2716
  %72 = load i8**, i8*** %authors.addr, align 8, !dbg !2717
  %arrayidx52 = getelementptr inbounds i8*, i8** %72, i64 6, !dbg !2717
  %73 = load i8*, i8** %arrayidx52, align 8, !dbg !2717
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* %call45, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71, i8* %73), !dbg !2718
  br label %sw.epilog, !dbg !2719

sw.bb.54:                                         ; preds = %if.end
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2720
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.83, i32 0, i32 0)) #10, !dbg !2721
  %75 = load i8**, i8*** %authors.addr, align 8, !dbg !2722
  %arrayidx56 = getelementptr inbounds i8*, i8** %75, i64 0, !dbg !2722
  %76 = load i8*, i8** %arrayidx56, align 8, !dbg !2722
  %77 = load i8**, i8*** %authors.addr, align 8, !dbg !2723
  %arrayidx57 = getelementptr inbounds i8*, i8** %77, i64 1, !dbg !2723
  %78 = load i8*, i8** %arrayidx57, align 8, !dbg !2723
  %79 = load i8**, i8*** %authors.addr, align 8, !dbg !2724
  %arrayidx58 = getelementptr inbounds i8*, i8** %79, i64 2, !dbg !2724
  %80 = load i8*, i8** %arrayidx58, align 8, !dbg !2724
  %81 = load i8**, i8*** %authors.addr, align 8, !dbg !2725
  %arrayidx59 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2725
  %82 = load i8*, i8** %arrayidx59, align 8, !dbg !2725
  %83 = load i8**, i8*** %authors.addr, align 8, !dbg !2726
  %arrayidx60 = getelementptr inbounds i8*, i8** %83, i64 4, !dbg !2726
  %84 = load i8*, i8** %arrayidx60, align 8, !dbg !2726
  %85 = load i8**, i8*** %authors.addr, align 8, !dbg !2727
  %arrayidx61 = getelementptr inbounds i8*, i8** %85, i64 5, !dbg !2727
  %86 = load i8*, i8** %arrayidx61, align 8, !dbg !2727
  %87 = load i8**, i8*** %authors.addr, align 8, !dbg !2728
  %arrayidx62 = getelementptr inbounds i8*, i8** %87, i64 6, !dbg !2728
  %88 = load i8*, i8** %arrayidx62, align 8, !dbg !2728
  %89 = load i8**, i8*** %authors.addr, align 8, !dbg !2729
  %arrayidx63 = getelementptr inbounds i8*, i8** %89, i64 7, !dbg !2729
  %90 = load i8*, i8** %arrayidx63, align 8, !dbg !2729
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* %call55, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86, i8* %88, i8* %90), !dbg !2730
  br label %sw.epilog, !dbg !2731

sw.bb.65:                                         ; preds = %if.end
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2732
  %call66 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.84, i32 0, i32 0)) #10, !dbg !2733
  %92 = load i8**, i8*** %authors.addr, align 8, !dbg !2734
  %arrayidx67 = getelementptr inbounds i8*, i8** %92, i64 0, !dbg !2734
  %93 = load i8*, i8** %arrayidx67, align 8, !dbg !2734
  %94 = load i8**, i8*** %authors.addr, align 8, !dbg !2735
  %arrayidx68 = getelementptr inbounds i8*, i8** %94, i64 1, !dbg !2735
  %95 = load i8*, i8** %arrayidx68, align 8, !dbg !2735
  %96 = load i8**, i8*** %authors.addr, align 8, !dbg !2736
  %arrayidx69 = getelementptr inbounds i8*, i8** %96, i64 2, !dbg !2736
  %97 = load i8*, i8** %arrayidx69, align 8, !dbg !2736
  %98 = load i8**, i8*** %authors.addr, align 8, !dbg !2737
  %arrayidx70 = getelementptr inbounds i8*, i8** %98, i64 3, !dbg !2737
  %99 = load i8*, i8** %arrayidx70, align 8, !dbg !2737
  %100 = load i8**, i8*** %authors.addr, align 8, !dbg !2738
  %arrayidx71 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2738
  %101 = load i8*, i8** %arrayidx71, align 8, !dbg !2738
  %102 = load i8**, i8*** %authors.addr, align 8, !dbg !2739
  %arrayidx72 = getelementptr inbounds i8*, i8** %102, i64 5, !dbg !2739
  %103 = load i8*, i8** %arrayidx72, align 8, !dbg !2739
  %104 = load i8**, i8*** %authors.addr, align 8, !dbg !2740
  %arrayidx73 = getelementptr inbounds i8*, i8** %104, i64 6, !dbg !2740
  %105 = load i8*, i8** %arrayidx73, align 8, !dbg !2740
  %106 = load i8**, i8*** %authors.addr, align 8, !dbg !2741
  %arrayidx74 = getelementptr inbounds i8*, i8** %106, i64 7, !dbg !2741
  %107 = load i8*, i8** %arrayidx74, align 8, !dbg !2741
  %108 = load i8**, i8*** %authors.addr, align 8, !dbg !2742
  %arrayidx75 = getelementptr inbounds i8*, i8** %108, i64 8, !dbg !2742
  %109 = load i8*, i8** %arrayidx75, align 8, !dbg !2742
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* %call66, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105, i8* %107, i8* %109), !dbg !2743
  br label %sw.epilog, !dbg !2744

sw.default:                                       ; preds = %if.end
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2745
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.85, i32 0, i32 0)) #10, !dbg !2746
  %111 = load i8**, i8*** %authors.addr, align 8, !dbg !2747
  %arrayidx78 = getelementptr inbounds i8*, i8** %111, i64 0, !dbg !2747
  %112 = load i8*, i8** %arrayidx78, align 8, !dbg !2747
  %113 = load i8**, i8*** %authors.addr, align 8, !dbg !2748
  %arrayidx79 = getelementptr inbounds i8*, i8** %113, i64 1, !dbg !2748
  %114 = load i8*, i8** %arrayidx79, align 8, !dbg !2748
  %115 = load i8**, i8*** %authors.addr, align 8, !dbg !2749
  %arrayidx80 = getelementptr inbounds i8*, i8** %115, i64 2, !dbg !2749
  %116 = load i8*, i8** %arrayidx80, align 8, !dbg !2749
  %117 = load i8**, i8*** %authors.addr, align 8, !dbg !2750
  %arrayidx81 = getelementptr inbounds i8*, i8** %117, i64 3, !dbg !2750
  %118 = load i8*, i8** %arrayidx81, align 8, !dbg !2750
  %119 = load i8**, i8*** %authors.addr, align 8, !dbg !2751
  %arrayidx82 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2751
  %120 = load i8*, i8** %arrayidx82, align 8, !dbg !2751
  %121 = load i8**, i8*** %authors.addr, align 8, !dbg !2752
  %arrayidx83 = getelementptr inbounds i8*, i8** %121, i64 5, !dbg !2752
  %122 = load i8*, i8** %arrayidx83, align 8, !dbg !2752
  %123 = load i8**, i8*** %authors.addr, align 8, !dbg !2753
  %arrayidx84 = getelementptr inbounds i8*, i8** %123, i64 6, !dbg !2753
  %124 = load i8*, i8** %arrayidx84, align 8, !dbg !2753
  %125 = load i8**, i8*** %authors.addr, align 8, !dbg !2754
  %arrayidx85 = getelementptr inbounds i8*, i8** %125, i64 7, !dbg !2754
  %126 = load i8*, i8** %arrayidx85, align 8, !dbg !2754
  %127 = load i8**, i8*** %authors.addr, align 8, !dbg !2755
  %arrayidx86 = getelementptr inbounds i8*, i8** %127, i64 8, !dbg !2755
  %128 = load i8*, i8** %arrayidx86, align 8, !dbg !2755
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* %call77, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124, i8* %126, i8* %128), !dbg !2756
  br label %sw.epilog, !dbg !2757

sw.epilog:                                        ; preds = %sw.default, %sw.bb.65, %sw.bb.54, %sw.bb.44, %sw.bb.35, %sw.bb.27, %sw.bb.20, %sw.bb.14, %sw.bb.9, %sw.bb.6
  ret void, !dbg !2758
}

; Function Attrs: nounwind uwtable
define internal void @version_etc_ar(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** %authors) #5 !dbg !2759 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca i8**, align 8
  %n_authors = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !2762, metadata !DIExpression()), !dbg !2763
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %command_name.addr, metadata !2764, metadata !DIExpression()), !dbg !2765
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %package.addr, metadata !2766, metadata !DIExpression()), !dbg !2767
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %version.addr, metadata !2768, metadata !DIExpression()), !dbg !2769
  store i8** %authors, i8*** %authors.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %authors.addr, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.declare(metadata i64* %n_authors, metadata !2772, metadata !DIExpression()), !dbg !2773
  store i64 0, i64* %n_authors, align 8, !dbg !2774
  br label %for.cond, !dbg !2776

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n_authors, align 8, !dbg !2777
  %1 = load i8**, i8*** %authors.addr, align 8, !dbg !2781
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %0, !dbg !2781
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !2781
  %tobool = icmp ne i8* %2, null, !dbg !2782
  br i1 %tobool, label %for.body, label %for.end, !dbg !2782

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !2783

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %n_authors, align 8, !dbg !2785
  %inc = add i64 %3, 1, !dbg !2785
  store i64 %inc, i64* %n_authors, align 8, !dbg !2785
  br label %for.cond, !dbg !2787

for.end:                                          ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2788
  %5 = load i8*, i8** %command_name.addr, align 8, !dbg !2789
  %6 = load i8*, i8** %package.addr, align 8, !dbg !2790
  %7 = load i8*, i8** %version.addr, align 8, !dbg !2791
  %8 = load i8**, i8*** %authors.addr, align 8, !dbg !2792
  %9 = load i64, i64* %n_authors, align 8, !dbg !2793
  call void @version_etc_arn(%struct._IO_FILE* %4, i8* %5, i8* %6, i8* %7, i8** %8, i64 %9), !dbg !2794
  ret void, !dbg !2795
}

; Function Attrs: nounwind uwtable
define internal void @version_etc_va(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, %struct.__va_list_tag* %authors) #5 !dbg !2796 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca %struct.__va_list_tag*, align 8
  %n_authors = alloca i64, align 8
  %authtab = alloca [10 x i8*], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !2807, metadata !DIExpression()), !dbg !2808
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %command_name.addr, metadata !2809, metadata !DIExpression()), !dbg !2810
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %package.addr, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %version.addr, metadata !2813, metadata !DIExpression()), !dbg !2814
  store %struct.__va_list_tag* %authors, %struct.__va_list_tag** %authors.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %authors.addr, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.declare(metadata i64* %n_authors, metadata !2817, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.declare(metadata [10 x i8*]* %authtab, metadata !2819, metadata !DIExpression()), !dbg !2823
  store i64 0, i64* %n_authors, align 8, !dbg !2824
  br label %for.cond, !dbg !2826

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n_authors, align 8, !dbg !2827
  %cmp = icmp ult i64 %0, 10, !dbg !2829
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2830

land.rhs:                                         ; preds = %for.cond
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8, !dbg !2831
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i32 0, i32 0, !dbg !2831
  %gp_offset = load i32, i32* %gp_offset_p, !dbg !2831
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !2831
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2831

vaarg.in_reg:                                     ; preds = %land.rhs
  %2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i32 0, i32 3, !dbg !2833
  %reg_save_area = load i8*, i8** %2, !dbg !2833
  %3 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !2833
  %4 = bitcast i8* %3 to i8**, !dbg !2833
  %5 = add i32 %gp_offset, 8, !dbg !2833
  store i32 %5, i32* %gp_offset_p, !dbg !2833
  br label %vaarg.end, !dbg !2833

vaarg.in_mem:                                     ; preds = %land.rhs
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i32 0, i32 2, !dbg !2835
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, !dbg !2835
  %6 = bitcast i8* %overflow_arg_area to i8**, !dbg !2835
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !2835
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !2835
  br label %vaarg.end, !dbg !2835

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ], !dbg !2837
  %7 = load i8*, i8** %vaarg.addr, !dbg !2838
  %8 = load i64, i64* %n_authors, align 8, !dbg !2841
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %authtab, i32 0, i64 %8, !dbg !2842
  store i8* %7, i8** %arrayidx, align 8, !dbg !2843
  %cmp1 = icmp ne i8* %7, null, !dbg !2844
  br label %land.end

land.end:                                         ; preds = %vaarg.end, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp1, %vaarg.end ]
  br i1 %9, label %for.body, label %for.end, !dbg !2845

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !2846

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %n_authors, align 8, !dbg !2848
  %inc = add i64 %10, 1, !dbg !2848
  store i64 %inc, i64* %n_authors, align 8, !dbg !2848
  br label %for.cond, !dbg !2849

for.end:                                          ; preds = %land.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2850
  %12 = load i8*, i8** %command_name.addr, align 8, !dbg !2851
  %13 = load i8*, i8** %package.addr, align 8, !dbg !2852
  %14 = load i8*, i8** %version.addr, align 8, !dbg !2853
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %authtab, i32 0, i32 0, !dbg !2854
  %15 = load i64, i64* %n_authors, align 8, !dbg !2855
  call void @version_etc_arn(%struct._IO_FILE* %11, i8* %12, i8* %13, i8* %14, i8** %arraydecay, i64 %15), !dbg !2856
  ret void, !dbg !2857
}

; Function Attrs: nounwind uwtable
define internal void @version_etc(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, ...) #5 !dbg !2858 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !2861, metadata !DIExpression()), !dbg !2862
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %command_name.addr, metadata !2863, metadata !DIExpression()), !dbg !2864
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %package.addr, metadata !2865, metadata !DIExpression()), !dbg !2866
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %version.addr, metadata !2867, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %authors, metadata !2869, metadata !DIExpression()), !dbg !2874
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !2875
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2875
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2875
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !2876
  %1 = load i8*, i8** %command_name.addr, align 8, !dbg !2877
  %2 = load i8*, i8** %package.addr, align 8, !dbg !2878
  %3 = load i8*, i8** %version.addr, align 8, !dbg !2879
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !2880
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* %arraydecay2), !dbg !2881
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !2882
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !2882
  call void @llvm.va_end(i8* %arraydecay34), !dbg !2882
  ret void, !dbg !2883
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind uwtable
define internal void @emit_bug_reporting_address() #5 !dbg !2884 {
entry:
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.86, i32 0, i32 0)) #10, !dbg !2885
  %call1 = call i32 (i8*, ...) @printf(i8* %call, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.87, i32 0, i32 0)), !dbg !2886
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.88, i32 0, i32 0)) #10, !dbg !2887
  %call3 = call i32 (i8*, ...) @printf(i8* %call2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.89, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.90, i32 0, i32 0)), !dbg !2888
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.91, i32 0, i32 0)) #10, !dbg !2889
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2889
  %call5 = call i32 @fputs_unlocked(i8* %call4, %struct._IO_FILE* %0), !dbg !2889
  ret void, !dbg !2890
}

; Function Attrs: inlinehint nounwind uwtable
define internal noalias i8* @xnmalloc(i64 %n, i64 %s) #8 !dbg !2891 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !2896, metadata !DIExpression()), !dbg !2897
  %0 = load i64, i64* %s.addr, align 8, !dbg !2898
  %div = udiv i64 -1, %0, !dbg !2898
  %1 = load i64, i64* %n.addr, align 8, !dbg !2898
  %cmp = icmp ult i64 %div, %1, !dbg !2898
  br i1 %cmp, label %if.then, label %if.end, !dbg !2900

if.then:                                          ; preds = %entry
  call void @xalloc_die() #15, !dbg !2901
  unreachable, !dbg !2901

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %n.addr, align 8, !dbg !2902
  %3 = load i64, i64* %s.addr, align 8, !dbg !2903
  %mul = mul i64 %2, %3, !dbg !2904
  %call = call noalias i8* @xmalloc(i64 %mul), !dbg !2905
  ret i8* %call, !dbg !2906
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @xmalloc(i64 %n) #5 !dbg !2907 {
entry:
  %n.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2911, metadata !DIExpression()), !dbg !2912
  %0 = load i64, i64* %n.addr, align 8, !dbg !2913
  %call = call noalias i8* @malloc(i64 %0) #10, !dbg !2914
  store i8* %call, i8** %p, align 8, !dbg !2912
  %1 = load i8*, i8** %p, align 8, !dbg !2915
  %tobool = icmp ne i8* %1, null, !dbg !2915
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2917

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %n.addr, align 8, !dbg !2918
  %cmp = icmp ne i64 %2, 0, !dbg !2920
  br i1 %cmp, label %if.then, label %if.end, !dbg !2921

if.then:                                          ; preds = %land.lhs.true
  call void @xalloc_die() #15, !dbg !2922
  unreachable, !dbg !2922

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %p, align 8, !dbg !2923
  ret i8* %3, !dbg !2924
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @xnrealloc(i8* %p, i64 %n, i64 %s) #8 !dbg !2925 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2928, metadata !DIExpression()), !dbg !2929
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2930, metadata !DIExpression()), !dbg !2931
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !2932, metadata !DIExpression()), !dbg !2933
  %0 = load i64, i64* %s.addr, align 8, !dbg !2934
  %div = udiv i64 -1, %0, !dbg !2934
  %1 = load i64, i64* %n.addr, align 8, !dbg !2934
  %cmp = icmp ult i64 %div, %1, !dbg !2934
  br i1 %cmp, label %if.then, label %if.end, !dbg !2936

if.then:                                          ; preds = %entry
  call void @xalloc_die() #15, !dbg !2937
  unreachable, !dbg !2937

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !2938
  %3 = load i64, i64* %n.addr, align 8, !dbg !2939
  %4 = load i64, i64* %s.addr, align 8, !dbg !2940
  %mul = mul i64 %3, %4, !dbg !2941
  %call = call i8* @xrealloc(i8* %2, i64 %mul), !dbg !2942
  ret i8* %call, !dbg !2943
}

; Function Attrs: nounwind uwtable
define internal i8* @xrealloc(i8* %p, i64 %n) #5 !dbg !2944 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2947, metadata !DIExpression()), !dbg !2948
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2949, metadata !DIExpression()), !dbg !2950
  %0 = load i64, i64* %n.addr, align 8, !dbg !2951
  %tobool = icmp ne i64 %0, 0, !dbg !2951
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2953

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8, !dbg !2954
  %tobool1 = icmp ne i8* %1, null, !dbg !2954
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2956

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %p.addr, align 8, !dbg !2957
  call void @free(i8* %2) #10, !dbg !2959
  store i8* null, i8** %retval, !dbg !2960
  br label %return, !dbg !2960

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %p.addr, align 8, !dbg !2961
  %4 = load i64, i64* %n.addr, align 8, !dbg !2962
  %call = call i8* @realloc(i8* %3, i64 %4) #10, !dbg !2963
  store i8* %call, i8** %p.addr, align 8, !dbg !2964
  %5 = load i8*, i8** %p.addr, align 8, !dbg !2965
  %tobool2 = icmp ne i8* %5, null, !dbg !2965
  br i1 %tobool2, label %if.end.6, label %land.lhs.true.3, !dbg !2967

land.lhs.true.3:                                  ; preds = %if.end
  %6 = load i64, i64* %n.addr, align 8, !dbg !2968
  %tobool4 = icmp ne i64 %6, 0, !dbg !2968
  br i1 %tobool4, label %if.then.5, label %if.end.6, !dbg !2970

if.then.5:                                        ; preds = %land.lhs.true.3
  call void @xalloc_die() #15, !dbg !2971
  unreachable, !dbg !2971

if.end.6:                                         ; preds = %land.lhs.true.3, %if.end
  %7 = load i8*, i8** %p.addr, align 8, !dbg !2972
  store i8* %7, i8** %retval, !dbg !2973
  br label %return, !dbg !2973

return:                                           ; preds = %if.end.6, %if.then
  %8 = load i8*, i8** %retval, !dbg !2974
  ret i8* %8, !dbg !2974
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @x2nrealloc(i8* %p, i64* %pn, i64 %s) #8 !dbg !531 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2975, metadata !DIExpression()), !dbg !2976
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %pn.addr, metadata !2977, metadata !DIExpression()), !dbg !2978
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.declare(metadata i64* %n, metadata !2981, metadata !DIExpression()), !dbg !2982
  %0 = load i64*, i64** %pn.addr, align 8, !dbg !2983
  %1 = load i64, i64* %0, align 8, !dbg !2984
  store i64 %1, i64* %n, align 8, !dbg !2982
  %2 = load i8*, i8** %p.addr, align 8, !dbg !2985
  %tobool = icmp ne i8* %2, null, !dbg !2985
  br i1 %tobool, label %if.else, label %if.then, !dbg !2987

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %n, align 8, !dbg !2988
  %tobool1 = icmp ne i64 %3, 0, !dbg !2988
  br i1 %tobool1, label %if.end, label %if.then.2, !dbg !2991

if.then.2:                                        ; preds = %if.then
  %4 = load i64, i64* %s.addr, align 8, !dbg !2992
  %div = udiv i64 128, %4, !dbg !2994
  store i64 %div, i64* %n, align 8, !dbg !2995
  %5 = load i64, i64* %n, align 8, !dbg !2996
  %tobool3 = icmp ne i64 %5, 0, !dbg !2997
  %lnot = xor i1 %tobool3, true, !dbg !2997
  %lnot.ext = zext i1 %lnot to i32, !dbg !2997
  %conv = sext i32 %lnot.ext to i64, !dbg !2997
  %6 = load i64, i64* %n, align 8, !dbg !2998
  %add = add i64 %6, %conv, !dbg !2998
  store i64 %add, i64* %n, align 8, !dbg !2998
  br label %if.end, !dbg !2999

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.11, !dbg !3000

if.else:                                          ; preds = %entry
  %7 = load i64, i64* %s.addr, align 8, !dbg !3001
  %div4 = udiv i64 -6148914691236517206, %7, !dbg !3004
  %8 = load i64, i64* %n, align 8, !dbg !3005
  %cmp = icmp ule i64 %div4, %8, !dbg !3006
  br i1 %cmp, label %if.then.6, label %if.end.7, !dbg !3007

if.then.6:                                        ; preds = %if.else
  call void @xalloc_die() #15, !dbg !3008
  unreachable, !dbg !3008

if.end.7:                                         ; preds = %if.else
  %9 = load i64, i64* %n, align 8, !dbg !3009
  %div8 = udiv i64 %9, 2, !dbg !3010
  %add9 = add i64 %div8, 1, !dbg !3011
  %10 = load i64, i64* %n, align 8, !dbg !3012
  %add10 = add i64 %10, %add9, !dbg !3012
  store i64 %add10, i64* %n, align 8, !dbg !3012
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.7, %if.end
  %11 = load i64, i64* %n, align 8, !dbg !3013
  %12 = load i64*, i64** %pn.addr, align 8, !dbg !3014
  store i64 %11, i64* %12, align 8, !dbg !3015
  %13 = load i8*, i8** %p.addr, align 8, !dbg !3016
  %14 = load i64, i64* %n, align 8, !dbg !3017
  %15 = load i64, i64* %s.addr, align 8, !dbg !3018
  %mul = mul i64 %14, %15, !dbg !3019
  %call = call i8* @xrealloc(i8* %13, i64 %mul), !dbg !3020
  ret i8* %call, !dbg !3021
}

; Function Attrs: inlinehint nounwind uwtable
define internal noalias i8* @xcharalloc(i64 %n) #8 !dbg !3022 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3025, metadata !DIExpression()), !dbg !3026
  %0 = load i64, i64* %n.addr, align 8, !dbg !3027
  %call = call noalias i8* @xmalloc(i64 %0), !dbg !3027
  ret i8* %call, !dbg !3028
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i8* @x2realloc(i8* %p, i64* %pn) #5 !dbg !3029 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3032, metadata !DIExpression()), !dbg !3033
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %pn.addr, metadata !3034, metadata !DIExpression()), !dbg !3035
  %0 = load i8*, i8** %p.addr, align 8, !dbg !3036
  %1 = load i64*, i64** %pn.addr, align 8, !dbg !3037
  %call = call i8* @x2nrealloc(i8* %0, i64* %1, i64 1), !dbg !3038
  ret i8* %call, !dbg !3039
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @xzalloc(i64 %s) #5 !dbg !3040 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !3041, metadata !DIExpression()), !dbg !3042
  %0 = load i64, i64* %s.addr, align 8, !dbg !3043
  %call = call noalias i8* @xmalloc(i64 %0), !dbg !3044
  %1 = load i64, i64* %s.addr, align 8, !dbg !3045
  call void @llvm.memset.p0i8.i64(i8* align 1 %call, i8 0, i64 %1, i1 false), !dbg !3046
  ret i8* %call, !dbg !3047
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @xcalloc(i64 %n, i64 %s) #5 !dbg !3048 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3049, metadata !DIExpression()), !dbg !3050
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !3051, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.declare(metadata i8** %p, metadata !3053, metadata !DIExpression()), !dbg !3054
  %0 = load i64, i64* %n.addr, align 8, !dbg !3055
  %1 = load i64, i64* %s.addr, align 8, !dbg !3057
  %call = call i8* @rpl_calloc(i64 %0, i64 %1), !dbg !3058
  store i8* %call, i8** %p, align 8, !dbg !3059
  %tobool = icmp ne i8* %call, null, !dbg !3059
  br i1 %tobool, label %if.end, label %if.then, !dbg !3060

if.then:                                          ; preds = %entry
  call void @xalloc_die() #15, !dbg !3061
  unreachable, !dbg !3061

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p, align 8, !dbg !3062
  ret i8* %2, !dbg !3063
}

; Function Attrs: nounwind uwtable
define internal i8* @xmemdup(i8* %p, i64 %s) #5 !dbg !3064 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3069, metadata !DIExpression()), !dbg !3070
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !3071, metadata !DIExpression()), !dbg !3072
  %0 = load i64, i64* %s.addr, align 8, !dbg !3073
  %call = call noalias i8* @xmalloc(i64 %0), !dbg !3074
  %1 = load i8*, i8** %p.addr, align 8, !dbg !3075
  %2 = load i64, i64* %s.addr, align 8, !dbg !3076
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %call, i8* align 1 %1, i64 %2, i1 false), !dbg !3077
  ret i8* %call, !dbg !3078
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @xstrdup(i8* %string) #5 !dbg !3079 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !3080, metadata !DIExpression()), !dbg !3081
  %0 = load i8*, i8** %string.addr, align 8, !dbg !3082
  %1 = load i8*, i8** %string.addr, align 8, !dbg !3083
  %call = call i64 @strlen(i8* %1) #17, !dbg !3084
  %add = add i64 %call, 1, !dbg !3085
  %call1 = call i8* @xmemdup(i8* %0, i64 %add), !dbg !3086
  ret i8* %call1, !dbg !3087
}

; Function Attrs: noreturn nounwind uwtable
define internal void @xalloc_die() #0 !dbg !3088 {
entry:
  %0 = load volatile i32, i32* @exit_failure, align 4, !dbg !3089
  %call = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.102, i32 0, i32 0)) #10, !dbg !3090
  call void (i32, i32, i8*, ...) @error(i32 %0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* %call), !dbg !3091
  call void @abort() #14, !dbg !3092
  unreachable, !dbg !3092

return:                                           ; No predecessors!
  ret void, !dbg !3093
}

; Function Attrs: nounwind uwtable
define internal i8* @rpl_calloc(i64 %n, i64 %s) #5 !dbg !3094 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  %bytes = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3095, metadata !DIExpression()), !dbg !3096
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.declare(metadata i8** %result, metadata !3099, metadata !DIExpression()), !dbg !3100
  %0 = load i64, i64* %n.addr, align 8, !dbg !3101
  %cmp = icmp eq i64 %0, 0, !dbg !3103
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3104

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %s.addr, align 8, !dbg !3105
  %cmp1 = icmp eq i64 %1, 0, !dbg !3107
  br i1 %cmp1, label %if.then, label %if.else, !dbg !3108

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 1, i64* %n.addr, align 8, !dbg !3109
  store i64 1, i64* %s.addr, align 8, !dbg !3111
  br label %if.end.4, !dbg !3112

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3113, metadata !DIExpression()), !dbg !3115
  %2 = load i64, i64* %n.addr, align 8, !dbg !3116
  %3 = load i64, i64* %s.addr, align 8, !dbg !3117
  %mul = mul i64 %2, %3, !dbg !3118
  store i64 %mul, i64* %bytes, align 8, !dbg !3115
  %4 = load i64, i64* %bytes, align 8, !dbg !3119
  %5 = load i64, i64* %s.addr, align 8, !dbg !3121
  %div = udiv i64 %4, %5, !dbg !3122
  %6 = load i64, i64* %n.addr, align 8, !dbg !3123
  %cmp2 = icmp ne i64 %div, %6, !dbg !3124
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !3125

if.then.3:                                        ; preds = %if.else
  %call = call i32* @__errno_location() #16, !dbg !3126
  store i32 12, i32* %call, align 4, !dbg !3128
  store i8* null, i8** %retval, !dbg !3129
  br label %return, !dbg !3129

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %7 = load i64, i64* %n.addr, align 8, !dbg !3130
  %8 = load i64, i64* %s.addr, align 8, !dbg !3131
  %call5 = call noalias i8* @calloc(i64 %7, i64 %8) #10, !dbg !3132
  store i8* %call5, i8** %result, align 8, !dbg !3133
  %9 = load i8*, i8** %result, align 8, !dbg !3134
  store i8* %9, i8** %retval, !dbg !3135
  br label %return, !dbg !3135

return:                                           ; preds = %if.end.4, %if.then.3
  %10 = load i8*, i8** %retval, !dbg !3136
  ret i8* %10, !dbg !3136
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal i64 @rpl_mbrtowc(i32* %pwc, i8* %s, i64 %n, %struct.__mbstate_t* %ps) #5 !dbg !3137 {
entry:
  %retval = alloca i64, align 8
  %pwc.addr = alloca i32*, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %ps.addr = alloca %struct.__mbstate_t*, align 8
  store i32* %pwc, i32** %pwc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %pwc.addr, metadata !3152, metadata !DIExpression()), !dbg !3153
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !3154, metadata !DIExpression()), !dbg !3155
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3156, metadata !DIExpression()), !dbg !3157
  store %struct.__mbstate_t* %ps, %struct.__mbstate_t** %ps.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %ps.addr, metadata !3158, metadata !DIExpression()), !dbg !3159
  %0 = load i8*, i8** %s.addr, align 8, !dbg !3160
  %cmp = icmp eq i8* %0, null, !dbg !3162
  br i1 %cmp, label %if.then, label %if.end, !dbg !3163

if.then:                                          ; preds = %entry
  store i32* null, i32** %pwc.addr, align 8, !dbg !3164
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.108, i32 0, i32 0), i8** %s.addr, align 8, !dbg !3166
  store i64 1, i64* %n.addr, align 8, !dbg !3167
  br label %if.end, !dbg !3168

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %n.addr, align 8, !dbg !3169
  %cmp1 = icmp eq i64 %1, 0, !dbg !3171
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !3172

if.then.2:                                        ; preds = %if.end
  store i64 -2, i64* %retval, !dbg !3173
  br label %return, !dbg !3173

if.end.3:                                         ; preds = %if.end
  %2 = load i32*, i32** %pwc.addr, align 8, !dbg !3174
  %3 = load i8*, i8** %s.addr, align 8, !dbg !3176
  %4 = load i64, i64* %n.addr, align 8, !dbg !3177
  %5 = load %struct.__mbstate_t*, %struct.__mbstate_t** %ps.addr, align 8, !dbg !3178
  %call = call i64 @mbrtowc(i32* %2, i8* %3, i64 %4, %struct.__mbstate_t* %5) #10, !dbg !3179
  store i64 %call, i64* %retval, !dbg !3180
  br label %return, !dbg !3180

return:                                           ; preds = %if.end.3, %if.then.2
  %6 = load i64, i64* %retval, !dbg !3181
  ret i64 %6, !dbg !3181
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #3

; Function Attrs: nounwind readonly uwtable
define internal i32 @c_strcasecmp(i8* %s1, i8* %s2) #11 !dbg !3182 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  store i8* %s1, i8** %s1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s1.addr, metadata !3185, metadata !DIExpression()), !dbg !3186
  store i8* %s2, i8** %s2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s2.addr, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.declare(metadata i8** %p1, metadata !3189, metadata !DIExpression()), !dbg !3190
  %0 = load i8*, i8** %s1.addr, align 8, !dbg !3191
  store i8* %0, i8** %p1, align 8, !dbg !3190
  call void @llvm.dbg.declare(metadata i8** %p2, metadata !3192, metadata !DIExpression()), !dbg !3193
  %1 = load i8*, i8** %s2.addr, align 8, !dbg !3194
  store i8* %1, i8** %p2, align 8, !dbg !3193
  call void @llvm.dbg.declare(metadata i8* %c1, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.declare(metadata i8* %c2, metadata !3197, metadata !DIExpression()), !dbg !3198
  %2 = load i8*, i8** %p1, align 8, !dbg !3199
  %3 = load i8*, i8** %p2, align 8, !dbg !3201
  %cmp = icmp eq i8* %2, %3, !dbg !3202
  br i1 %cmp, label %if.then, label %if.end, !dbg !3203

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !3204
  br label %return, !dbg !3204

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3205

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load i8*, i8** %p1, align 8, !dbg !3206
  %5 = load i8, i8* %4, align 1, !dbg !3208
  %conv = zext i8 %5 to i32, !dbg !3208
  %call = call i32 @c_tolower(i32 %conv) #16, !dbg !3209
  %conv1 = trunc i32 %call to i8, !dbg !3209
  store i8 %conv1, i8* %c1, align 1, !dbg !3210
  %6 = load i8*, i8** %p2, align 8, !dbg !3211
  %7 = load i8, i8* %6, align 1, !dbg !3212
  %conv2 = zext i8 %7 to i32, !dbg !3212
  %call3 = call i32 @c_tolower(i32 %conv2) #16, !dbg !3213
  %conv4 = trunc i32 %call3 to i8, !dbg !3213
  store i8 %conv4, i8* %c2, align 1, !dbg !3214
  %8 = load i8, i8* %c1, align 1, !dbg !3215
  %conv5 = zext i8 %8 to i32, !dbg !3215
  %cmp6 = icmp eq i32 %conv5, 0, !dbg !3217
  br i1 %cmp6, label %if.then.8, label %if.end.9, !dbg !3218

if.then.8:                                        ; preds = %do.body
  br label %do.end, !dbg !3219

if.end.9:                                         ; preds = %do.body
  %9 = load i8*, i8** %p1, align 8, !dbg !3220
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1, !dbg !3220
  store i8* %incdec.ptr, i8** %p1, align 8, !dbg !3220
  %10 = load i8*, i8** %p2, align 8, !dbg !3221
  %incdec.ptr10 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !3221
  store i8* %incdec.ptr10, i8** %p2, align 8, !dbg !3221
  br label %do.cond, !dbg !3222

do.cond:                                          ; preds = %if.end.9
  %11 = load i8, i8* %c1, align 1, !dbg !3223
  %conv11 = zext i8 %11 to i32, !dbg !3223
  %12 = load i8, i8* %c2, align 1, !dbg !3224
  %conv12 = zext i8 %12 to i32, !dbg !3224
  %cmp13 = icmp eq i32 %conv11, %conv12, !dbg !3225
  br i1 %cmp13, label %do.body, label %do.end, !dbg !3222

do.end:                                           ; preds = %do.cond, %if.then.8
  %13 = load i8, i8* %c1, align 1, !dbg !3226
  %conv15 = zext i8 %13 to i32, !dbg !3226
  %14 = load i8, i8* %c2, align 1, !dbg !3228
  %conv16 = zext i8 %14 to i32, !dbg !3228
  %sub = sub nsw i32 %conv15, %conv16, !dbg !3229
  store i32 %sub, i32* %retval, !dbg !3230
  br label %return, !dbg !3230

return:                                           ; preds = %do.end, %if.then
  %15 = load i32, i32* %retval, !dbg !3231
  ret i32 %15, !dbg !3231
}

; Function Attrs: nounwind uwtable
define internal i32 @close_stream(%struct._IO_FILE* %stream) #5 !dbg !3232 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %some_pending = alloca i8, align 1
  %prev_fail = alloca i8, align 1
  %fclose_fail = alloca i8, align 1
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !3275, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.declare(metadata i8* %some_pending, metadata !3277, metadata !DIExpression()), !dbg !3279
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3280
  %call = call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3281
  %cmp = icmp ne i64 %call, 0, !dbg !3282
  %frombool = zext i1 %cmp to i8, !dbg !3279
  store i8 %frombool, i8* %some_pending, align 1, !dbg !3279
  call void @llvm.dbg.declare(metadata i8* %prev_fail, metadata !3283, metadata !DIExpression()), !dbg !3284
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3285
  %call1 = call i32 @ferror_unlocked(%struct._IO_FILE* %1) #10, !dbg !3285
  %cmp2 = icmp ne i32 %call1, 0, !dbg !3286
  %frombool3 = zext i1 %cmp2 to i8, !dbg !3284
  store i8 %frombool3, i8* %prev_fail, align 1, !dbg !3284
  call void @llvm.dbg.declare(metadata i8* %fclose_fail, metadata !3287, metadata !DIExpression()), !dbg !3288
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3289
  %call4 = call i32 @rpl_fclose(%struct._IO_FILE* %2), !dbg !3290
  %cmp5 = icmp ne i32 %call4, 0, !dbg !3291
  %frombool6 = zext i1 %cmp5 to i8, !dbg !3288
  store i8 %frombool6, i8* %fclose_fail, align 1, !dbg !3288
  %3 = load i8, i8* %prev_fail, align 1, !dbg !3292
  %tobool = trunc i8 %3 to i1, !dbg !3292
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3294

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8, i8* %fclose_fail, align 1, !dbg !3295
  %tobool7 = trunc i8 %4 to i1, !dbg !3295
  br i1 %tobool7, label %land.lhs.true, label %if.end.15, !dbg !3297

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8, i8* %some_pending, align 1, !dbg !3298
  %tobool8 = trunc i8 %5 to i1, !dbg !3298
  br i1 %tobool8, label %if.then, label %lor.lhs.false.9, !dbg !3300

lor.lhs.false.9:                                  ; preds = %land.lhs.true
  %call10 = call i32* @__errno_location() #16, !dbg !3301
  %6 = load i32, i32* %call10, align 4, !dbg !3301
  %cmp11 = icmp ne i32 %6, 9, !dbg !3303
  br i1 %cmp11, label %if.then, label %if.end.15, !dbg !3304

if.then:                                          ; preds = %lor.lhs.false.9, %land.lhs.true, %entry
  %7 = load i8, i8* %fclose_fail, align 1, !dbg !3305
  %tobool12 = trunc i8 %7 to i1, !dbg !3305
  br i1 %tobool12, label %if.end, label %if.then.13, !dbg !3308

if.then.13:                                       ; preds = %if.then
  %call14 = call i32* @__errno_location() #16, !dbg !3309
  store i32 0, i32* %call14, align 4, !dbg !3310
  br label %if.end, !dbg !3309

if.end:                                           ; preds = %if.then.13, %if.then
  store i32 -1, i32* %retval, !dbg !3311
  br label %return, !dbg !3311

if.end.15:                                        ; preds = %lor.lhs.false.9, %lor.lhs.false
  store i32 0, i32* %retval, !dbg !3312
  br label %return, !dbg !3312

return:                                           ; preds = %if.end.15, %if.end
  %8 = load i32, i32* %retval, !dbg !3313
  ret i32 %8, !dbg !3313
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i8* @locale_charset() #5 !dbg !3314 {
entry:
  %codeset = alloca i8*, align 8
  %aliases = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %codeset, metadata !3317, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.declare(metadata i8** %aliases, metadata !3319, metadata !DIExpression()), !dbg !3320
  %call = call i8* @nl_langinfo(i32 14) #10, !dbg !3321
  store i8* %call, i8** %codeset, align 8, !dbg !3322
  %0 = load i8*, i8** %codeset, align 8, !dbg !3323
  %cmp = icmp eq i8* %0, null, !dbg !3325
  br i1 %cmp, label %if.then, label %if.end, !dbg !3326

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i32 0, i32 0), i8** %codeset, align 8, !dbg !3327
  br label %if.end, !dbg !3328

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i8* @get_charset_aliases(), !dbg !3329
  store i8* %call1, i8** %aliases, align 8, !dbg !3331
  br label %for.cond, !dbg !3332

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i8*, i8** %aliases, align 8, !dbg !3333
  %2 = load i8, i8* %1, align 1, !dbg !3335
  %conv = sext i8 %2 to i32, !dbg !3335
  %cmp2 = icmp ne i32 %conv, 0, !dbg !3336
  br i1 %cmp2, label %for.body, label %for.end, !dbg !3337

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %codeset, align 8, !dbg !3338
  %4 = load i8*, i8** %aliases, align 8, !dbg !3340
  %call4 = call i32 @strcmp(i8* %3, i8* %4) #17, !dbg !3341
  %cmp5 = icmp eq i32 %call4, 0, !dbg !3342
  br i1 %cmp5, label %if.then.14, label %lor.lhs.false, !dbg !3343

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8*, i8** %aliases, align 8, !dbg !3344
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0, !dbg !3344
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3344
  %conv7 = sext i8 %6 to i32, !dbg !3344
  %cmp8 = icmp eq i32 %conv7, 42, !dbg !3346
  br i1 %cmp8, label %land.lhs.true, label %if.end.17, !dbg !3347

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i8*, i8** %aliases, align 8, !dbg !3348
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3348
  %8 = load i8, i8* %arrayidx10, align 1, !dbg !3348
  %conv11 = sext i8 %8 to i32, !dbg !3348
  %cmp12 = icmp eq i32 %conv11, 0, !dbg !3350
  br i1 %cmp12, label %if.then.14, label %if.end.17, !dbg !3351

if.then.14:                                       ; preds = %land.lhs.true, %for.body
  %9 = load i8*, i8** %aliases, align 8, !dbg !3352
  %10 = load i8*, i8** %aliases, align 8, !dbg !3354
  %call15 = call i64 @strlen(i8* %10) #17, !dbg !3355
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %call15, !dbg !3356
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !3357
  store i8* %add.ptr16, i8** %codeset, align 8, !dbg !3358
  br label %for.end, !dbg !3359

if.end.17:                                        ; preds = %land.lhs.true, %lor.lhs.false
  br label %for.inc, !dbg !3360

for.inc:                                          ; preds = %if.end.17
  %11 = load i8*, i8** %aliases, align 8, !dbg !3362
  %call18 = call i64 @strlen(i8* %11) #17, !dbg !3363
  %add = add i64 %call18, 1, !dbg !3364
  %12 = load i8*, i8** %aliases, align 8, !dbg !3365
  %add.ptr19 = getelementptr inbounds i8, i8* %12, i64 %add, !dbg !3365
  store i8* %add.ptr19, i8** %aliases, align 8, !dbg !3365
  %13 = load i8*, i8** %aliases, align 8, !dbg !3366
  %call20 = call i64 @strlen(i8* %13) #17, !dbg !3367
  %add21 = add i64 %call20, 1, !dbg !3368
  %14 = load i8*, i8** %aliases, align 8, !dbg !3369
  %add.ptr22 = getelementptr inbounds i8, i8* %14, i64 %add21, !dbg !3369
  store i8* %add.ptr22, i8** %aliases, align 8, !dbg !3369
  br label %for.cond, !dbg !3370

for.end:                                          ; preds = %if.then.14, %for.cond
  %15 = load i8*, i8** %codeset, align 8, !dbg !3371
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 0, !dbg !3371
  %16 = load i8, i8* %arrayidx23, align 1, !dbg !3371
  %conv24 = sext i8 %16 to i32, !dbg !3371
  %cmp25 = icmp eq i32 %conv24, 0, !dbg !3373
  br i1 %cmp25, label %if.then.27, label %if.end.28, !dbg !3374

if.then.27:                                       ; preds = %for.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i32 0, i32 0), i8** %codeset, align 8, !dbg !3375
  br label %if.end.28, !dbg !3376

if.end.28:                                        ; preds = %if.then.27, %for.end
  %17 = load i8*, i8** %codeset, align 8, !dbg !3377
  ret i8* %17, !dbg !3378
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
define internal i8* @get_charset_aliases() #5 !dbg !3379 {
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
  call void @llvm.dbg.declare(metadata i8** %cp, metadata !3380, metadata !DIExpression()), !dbg !3381
  %0 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3382
  store i8* %0, i8** %cp, align 8, !dbg !3383
  %1 = load i8*, i8** %cp, align 8, !dbg !3384
  %cmp = icmp eq i8* %1, null, !dbg !3386
  br i1 %cmp, label %if.then, label %if.end.124, !dbg !3387

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %dir, metadata !3388, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.declare(metadata i8** %base, metadata !3391, metadata !DIExpression()), !dbg !3392
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.117, i32 0, i32 0), i8** %base, align 8, !dbg !3392
  call void @llvm.dbg.declare(metadata i8** %file_name, metadata !3393, metadata !DIExpression()), !dbg !3394
  %call = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.118, i32 0, i32 0)) #10, !dbg !3395
  store i8* %call, i8** %dir, align 8, !dbg !3396
  %2 = load i8*, i8** %dir, align 8, !dbg !3397
  %cmp1 = icmp eq i8* %2, null, !dbg !3399
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false, !dbg !3400

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i8*, i8** %dir, align 8, !dbg !3401
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0, !dbg !3401
  %4 = load i8, i8* %arrayidx, align 1, !dbg !3401
  %conv = sext i8 %4 to i32, !dbg !3401
  %cmp2 = icmp eq i32 %conv, 0, !dbg !3403
  br i1 %cmp2, label %if.then.4, label %if.end, !dbg !3404

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.119, i32 0, i32 0), i8** %dir, align 8, !dbg !3405
  br label %if.end, !dbg !3406

if.end:                                           ; preds = %if.then.4, %lor.lhs.false
  call void @llvm.dbg.declare(metadata i64* %dir_len, metadata !3407, metadata !DIExpression()), !dbg !3409
  %5 = load i8*, i8** %dir, align 8, !dbg !3410
  %call5 = call i64 @strlen(i8* %5) #17, !dbg !3411
  store i64 %call5, i64* %dir_len, align 8, !dbg !3409
  call void @llvm.dbg.declare(metadata i64* %base_len, metadata !3412, metadata !DIExpression()), !dbg !3413
  %6 = load i8*, i8** %base, align 8, !dbg !3414
  %call6 = call i64 @strlen(i8* %6) #17, !dbg !3415
  store i64 %call6, i64* %base_len, align 8, !dbg !3413
  call void @llvm.dbg.declare(metadata i32* %add_slash, metadata !3416, metadata !DIExpression()), !dbg !3417
  %7 = load i64, i64* %dir_len, align 8, !dbg !3418
  %cmp7 = icmp ugt i64 %7, 0, !dbg !3419
  br i1 %cmp7, label %land.rhs, label %land.end, !dbg !3420

land.rhs:                                         ; preds = %if.end
  %8 = load i64, i64* %dir_len, align 8, !dbg !3421
  %sub = sub i64 %8, 1, !dbg !3421
  %9 = load i8*, i8** %dir, align 8, !dbg !3421
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 %sub, !dbg !3421
  %10 = load i8, i8* %arrayidx9, align 1, !dbg !3421
  %conv10 = sext i8 %10 to i32, !dbg !3421
  %cmp11 = icmp eq i32 %conv10, 47, !dbg !3421
  %lnot = xor i1 %cmp11, true, !dbg !3423
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %11 = phi i1 [ false, %if.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %11 to i32, !dbg !3424
  store i32 %land.ext, i32* %add_slash, align 4, !dbg !3417
  %12 = load i64, i64* %dir_len, align 8, !dbg !3426
  %13 = load i32, i32* %add_slash, align 4, !dbg !3427
  %conv13 = sext i32 %13 to i64, !dbg !3427
  %add = add i64 %12, %conv13, !dbg !3428
  %14 = load i64, i64* %base_len, align 8, !dbg !3429
  %add14 = add i64 %add, %14, !dbg !3430
  %add15 = add i64 %add14, 1, !dbg !3431
  %call16 = call noalias i8* @malloc(i64 %add15) #10, !dbg !3432
  store i8* %call16, i8** %file_name, align 8, !dbg !3433
  %15 = load i8*, i8** %file_name, align 8, !dbg !3434
  %cmp17 = icmp ne i8* %15, null, !dbg !3436
  br i1 %cmp17, label %if.then.19, label %if.end.25, !dbg !3437

if.then.19:                                       ; preds = %land.end
  %16 = load i8*, i8** %file_name, align 8, !dbg !3438
  %17 = load i8*, i8** %dir, align 8, !dbg !3440
  %18 = load i64, i64* %dir_len, align 8, !dbg !3441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %17, i64 %18, i1 false), !dbg !3442
  %19 = load i32, i32* %add_slash, align 4, !dbg !3443
  %tobool = icmp ne i32 %19, 0, !dbg !3443
  br i1 %tobool, label %if.then.20, label %if.end.22, !dbg !3445

if.then.20:                                       ; preds = %if.then.19
  %20 = load i64, i64* %dir_len, align 8, !dbg !3446
  %21 = load i8*, i8** %file_name, align 8, !dbg !3447
  %arrayidx21 = getelementptr inbounds i8, i8* %21, i64 %20, !dbg !3447
  store i8 47, i8* %arrayidx21, align 1, !dbg !3448
  br label %if.end.22, !dbg !3447

if.end.22:                                        ; preds = %if.then.20, %if.then.19
  %22 = load i8*, i8** %file_name, align 8, !dbg !3449
  %23 = load i64, i64* %dir_len, align 8, !dbg !3450
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !3451
  %24 = load i32, i32* %add_slash, align 4, !dbg !3452
  %idx.ext = sext i32 %24 to i64, !dbg !3453
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext, !dbg !3453
  %25 = load i8*, i8** %base, align 8, !dbg !3454
  %26 = load i64, i64* %base_len, align 8, !dbg !3455
  %add24 = add i64 %26, 1, !dbg !3456
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr23, i8* align 1 %25, i64 %add24, i1 false), !dbg !3457
  br label %if.end.25, !dbg !3458

if.end.25:                                        ; preds = %if.end.22, %land.end
  %27 = load i8*, i8** %file_name, align 8, !dbg !3459
  %cmp26 = icmp eq i8* %27, null, !dbg !3461
  br i1 %cmp26, label %if.then.28, label %if.else, !dbg !3462

if.then.28:                                       ; preds = %if.end.25
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i32 0, i32 0), i8** %cp, align 8, !dbg !3463
  br label %if.end.123, !dbg !3464

if.else:                                          ; preds = %if.end.25
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !3465, metadata !DIExpression()), !dbg !3467
  %28 = load i8*, i8** %file_name, align 8, !dbg !3468
  %call29 = call i32 (i8*, i32, ...) @open(i8* %28, i32 131072), !dbg !3469
  store i32 %call29, i32* %fd, align 4, !dbg !3470
  %29 = load i32, i32* %fd, align 4, !dbg !3471
  %cmp30 = icmp slt i32 %29, 0, !dbg !3473
  br i1 %cmp30, label %if.then.32, label %if.else.33, !dbg !3474

if.then.32:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i32 0, i32 0), i8** %cp, align 8, !dbg !3475
  br label %if.end.122, !dbg !3476

if.else.33:                                       ; preds = %if.else
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !3477, metadata !DIExpression()), !dbg !3519
  %30 = load i32, i32* %fd, align 4, !dbg !3520
  %call34 = call %struct._IO_FILE* @fdopen(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.120, i32 0, i32 0)) #10, !dbg !3521
  store %struct._IO_FILE* %call34, %struct._IO_FILE** %fp, align 8, !dbg !3522
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3523
  %cmp35 = icmp eq %struct._IO_FILE* %31, null, !dbg !3525
  br i1 %cmp35, label %if.then.37, label %if.else.39, !dbg !3526

if.then.37:                                       ; preds = %if.else.33
  %32 = load i32, i32* %fd, align 4, !dbg !3527
  %call38 = call i32 @close(i32 %32), !dbg !3529
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i32 0, i32 0), i8** %cp, align 8, !dbg !3530
  br label %if.end.121, !dbg !3531

if.else.39:                                       ; preds = %if.else.33
  call void @llvm.dbg.declare(metadata i8** %res_ptr, metadata !3532, metadata !DIExpression()), !dbg !3534
  store i8* null, i8** %res_ptr, align 8, !dbg !3534
  call void @llvm.dbg.declare(metadata i64* %res_size, metadata !3535, metadata !DIExpression()), !dbg !3536
  store i64 0, i64* %res_size, align 8, !dbg !3536
  br label %for.cond, !dbg !3537

for.cond:                                         ; preds = %if.end.99, %if.end.67, %if.then.53, %if.else.39
  call void @llvm.dbg.declare(metadata i32* %c, metadata !3538, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.declare(metadata [51 x i8]* %buf1, metadata !3543, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.declare(metadata [51 x i8]* %buf2, metadata !3548, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.declare(metadata i64* %l1, metadata !3550, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.declare(metadata i64* %l2, metadata !3552, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.declare(metadata i8** %old_res_ptr, metadata !3554, metadata !DIExpression()), !dbg !3555
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3556
  %call40 = call i32 @getc_unlocked(%struct._IO_FILE* %33), !dbg !3557
  store i32 %call40, i32* %c, align 4, !dbg !3558
  %34 = load i32, i32* %c, align 4, !dbg !3559
  %cmp41 = icmp eq i32 %34, -1, !dbg !3561
  br i1 %cmp41, label %if.then.43, label %if.end.44, !dbg !3562

if.then.43:                                       ; preds = %for.cond
  br label %for.end, !dbg !3563

if.end.44:                                        ; preds = %for.cond
  %35 = load i32, i32* %c, align 4, !dbg !3564
  %cmp45 = icmp eq i32 %35, 10, !dbg !3566
  br i1 %cmp45, label %if.then.53, label %lor.lhs.false.47, !dbg !3567

lor.lhs.false.47:                                 ; preds = %if.end.44
  %36 = load i32, i32* %c, align 4, !dbg !3568
  %cmp48 = icmp eq i32 %36, 32, !dbg !3570
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false.50, !dbg !3571

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.47
  %37 = load i32, i32* %c, align 4, !dbg !3572
  %cmp51 = icmp eq i32 %37, 9, !dbg !3574
  br i1 %cmp51, label %if.then.53, label %if.end.54, !dbg !3575

if.then.53:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.47, %if.end.44
  br label %for.cond, !dbg !3576

if.end.54:                                        ; preds = %lor.lhs.false.50
  %38 = load i32, i32* %c, align 4, !dbg !3577
  %cmp55 = icmp eq i32 %38, 35, !dbg !3579
  br i1 %cmp55, label %if.then.57, label %if.end.68, !dbg !3580

if.then.57:                                       ; preds = %if.end.54
  br label %do.body, !dbg !3581

do.body:                                          ; preds = %lor.end, %if.then.57
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3583
  %call58 = call i32 @getc_unlocked(%struct._IO_FILE* %39), !dbg !3585
  store i32 %call58, i32* %c, align 4, !dbg !3586
  br label %do.cond, !dbg !3587

do.cond:                                          ; preds = %do.body
  %40 = load i32, i32* %c, align 4, !dbg !3588
  %cmp59 = icmp eq i32 %40, -1, !dbg !3589
  br i1 %cmp59, label %lor.end, label %lor.rhs, !dbg !3590

lor.rhs:                                          ; preds = %do.cond
  %41 = load i32, i32* %c, align 4, !dbg !3591
  %cmp61 = icmp eq i32 %41, 10, !dbg !3593
  br label %lor.end, !dbg !3590

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %42 = phi i1 [ true, %do.cond ], [ %cmp61, %lor.rhs ]
  %lnot63 = xor i1 %42, true, !dbg !3594
  br i1 %lnot63, label %do.body, label %do.end, !dbg !3587

do.end:                                           ; preds = %lor.end
  %43 = load i32, i32* %c, align 4, !dbg !3596
  %cmp64 = icmp eq i32 %43, -1, !dbg !3598
  br i1 %cmp64, label %if.then.66, label %if.end.67, !dbg !3599

if.then.66:                                       ; preds = %do.end
  br label %for.end, !dbg !3600

if.end.67:                                        ; preds = %do.end
  br label %for.cond, !dbg !3601

if.end.68:                                        ; preds = %if.end.54
  %44 = load i32, i32* %c, align 4, !dbg !3602
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3603
  %call69 = call i32 @ungetc(i32 %44, %struct._IO_FILE* %45), !dbg !3604
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3605
  %arraydecay = getelementptr inbounds [51 x i8], [51 x i8]* %buf1, i32 0, i32 0, !dbg !3607
  %arraydecay70 = getelementptr inbounds [51 x i8], [51 x i8]* %buf2, i32 0, i32 0, !dbg !3608
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.121, i32 0, i32 0), i8* %arraydecay, i8* %arraydecay70), !dbg !3609
  %cmp72 = icmp slt i32 %call71, 2, !dbg !3610
  br i1 %cmp72, label %if.then.74, label %if.end.75, !dbg !3611

if.then.74:                                       ; preds = %if.end.68
  br label %for.end, !dbg !3612

if.end.75:                                        ; preds = %if.end.68
  %arraydecay76 = getelementptr inbounds [51 x i8], [51 x i8]* %buf1, i32 0, i32 0, !dbg !3613
  %call77 = call i64 @strlen(i8* %arraydecay76) #17, !dbg !3614
  store i64 %call77, i64* %l1, align 8, !dbg !3615
  %arraydecay78 = getelementptr inbounds [51 x i8], [51 x i8]* %buf2, i32 0, i32 0, !dbg !3616
  %call79 = call i64 @strlen(i8* %arraydecay78) #17, !dbg !3617
  store i64 %call79, i64* %l2, align 8, !dbg !3618
  %47 = load i8*, i8** %res_ptr, align 8, !dbg !3619
  store i8* %47, i8** %old_res_ptr, align 8, !dbg !3620
  %48 = load i64, i64* %res_size, align 8, !dbg !3621
  %cmp80 = icmp eq i64 %48, 0, !dbg !3623
  br i1 %cmp80, label %if.then.82, label %if.else.88, !dbg !3624

if.then.82:                                       ; preds = %if.end.75
  %49 = load i64, i64* %l1, align 8, !dbg !3625
  %add83 = add i64 %49, 1, !dbg !3627
  %50 = load i64, i64* %l2, align 8, !dbg !3628
  %add84 = add i64 %add83, %50, !dbg !3629
  %add85 = add i64 %add84, 1, !dbg !3630
  store i64 %add85, i64* %res_size, align 8, !dbg !3631
  %51 = load i64, i64* %res_size, align 8, !dbg !3632
  %add86 = add i64 %51, 1, !dbg !3633
  %call87 = call noalias i8* @malloc(i64 %add86) #10, !dbg !3634
  store i8* %call87, i8** %res_ptr, align 8, !dbg !3635
  br label %if.end.95, !dbg !3636

if.else.88:                                       ; preds = %if.end.75
  %52 = load i64, i64* %l1, align 8, !dbg !3637
  %add89 = add i64 %52, 1, !dbg !3639
  %53 = load i64, i64* %l2, align 8, !dbg !3640
  %add90 = add i64 %add89, %53, !dbg !3641
  %add91 = add i64 %add90, 1, !dbg !3642
  %54 = load i64, i64* %res_size, align 8, !dbg !3643
  %add92 = add i64 %54, %add91, !dbg !3643
  store i64 %add92, i64* %res_size, align 8, !dbg !3643
  %55 = load i8*, i8** %res_ptr, align 8, !dbg !3644
  %56 = load i64, i64* %res_size, align 8, !dbg !3645
  %add93 = add i64 %56, 1, !dbg !3646
  %call94 = call i8* @realloc(i8* %55, i64 %add93) #10, !dbg !3647
  store i8* %call94, i8** %res_ptr, align 8, !dbg !3648
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.88, %if.then.82
  %57 = load i8*, i8** %res_ptr, align 8, !dbg !3649
  %cmp96 = icmp eq i8* %57, null, !dbg !3651
  br i1 %cmp96, label %if.then.98, label %if.end.99, !dbg !3652

if.then.98:                                       ; preds = %if.end.95
  store i64 0, i64* %res_size, align 8, !dbg !3653
  %58 = load i8*, i8** %old_res_ptr, align 8, !dbg !3655
  call void @free(i8* %58) #10, !dbg !3656
  br label %for.end, !dbg !3657

if.end.99:                                        ; preds = %if.end.95
  %59 = load i8*, i8** %res_ptr, align 8, !dbg !3658
  %60 = load i64, i64* %res_size, align 8, !dbg !3659
  %add.ptr100 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !3660
  %61 = load i64, i64* %l2, align 8, !dbg !3661
  %add101 = add i64 %61, 1, !dbg !3662
  %idx.neg = sub i64 0, %add101, !dbg !3663
  %add.ptr102 = getelementptr inbounds i8, i8* %add.ptr100, i64 %idx.neg, !dbg !3663
  %62 = load i64, i64* %l1, align 8, !dbg !3664
  %add103 = add i64 %62, 1, !dbg !3665
  %idx.neg104 = sub i64 0, %add103, !dbg !3666
  %add.ptr105 = getelementptr inbounds i8, i8* %add.ptr102, i64 %idx.neg104, !dbg !3666
  %arraydecay106 = getelementptr inbounds [51 x i8], [51 x i8]* %buf1, i32 0, i32 0, !dbg !3667
  %call107 = call i8* @strcpy(i8* %add.ptr105, i8* %arraydecay106) #10, !dbg !3668
  %63 = load i8*, i8** %res_ptr, align 8, !dbg !3669
  %64 = load i64, i64* %res_size, align 8, !dbg !3670
  %add.ptr108 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !3671
  %65 = load i64, i64* %l2, align 8, !dbg !3672
  %add109 = add i64 %65, 1, !dbg !3673
  %idx.neg110 = sub i64 0, %add109, !dbg !3674
  %add.ptr111 = getelementptr inbounds i8, i8* %add.ptr108, i64 %idx.neg110, !dbg !3674
  %arraydecay112 = getelementptr inbounds [51 x i8], [51 x i8]* %buf2, i32 0, i32 0, !dbg !3675
  %call113 = call i8* @strcpy(i8* %add.ptr111, i8* %arraydecay112) #10, !dbg !3676
  br label %for.cond, !dbg !3677

for.end:                                          ; preds = %if.then.98, %if.then.74, %if.then.66, %if.then.43
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3678
  %call114 = call i32 @rpl_fclose(%struct._IO_FILE* %66), !dbg !3679
  %67 = load i64, i64* %res_size, align 8, !dbg !3680
  %cmp115 = icmp eq i64 %67, 0, !dbg !3682
  br i1 %cmp115, label %if.then.117, label %if.else.118, !dbg !3683

if.then.117:                                      ; preds = %for.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i32 0, i32 0), i8** %cp, align 8, !dbg !3684
  br label %if.end.120, !dbg !3685

if.else.118:                                      ; preds = %for.end
  %68 = load i8*, i8** %res_ptr, align 8, !dbg !3686
  %69 = load i64, i64* %res_size, align 8, !dbg !3688
  %add.ptr119 = getelementptr inbounds i8, i8* %68, i64 %69, !dbg !3689
  store i8 0, i8* %add.ptr119, align 1, !dbg !3690
  %70 = load i8*, i8** %res_ptr, align 8, !dbg !3691
  store i8* %70, i8** %cp, align 8, !dbg !3692
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.118, %if.then.117
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.37
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.32
  %71 = load i8*, i8** %file_name, align 8, !dbg !3693
  call void @free(i8* %71) #10, !dbg !3694
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.28
  %72 = load i8*, i8** %cp, align 8, !dbg !3695
  store volatile i8* %72, i8** @charset_aliases, align 8, !dbg !3696
  br label %if.end.124, !dbg !3697

if.end.124:                                       ; preds = %if.end.123, %entry
  %73 = load i8*, i8** %cp, align 8, !dbg !3698
  ret i8* %73, !dbg !3699
}

; Function Attrs: nounwind uwtable
define internal i32 @rpl_fclose(%struct._IO_FILE* nonnull %fp) #5 !dbg !3700 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %saved_errno = alloca i32, align 4
  %fd = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !3743, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.declare(metadata i32* %saved_errno, metadata !3745, metadata !DIExpression()), !dbg !3746
  store i32 0, i32* %saved_errno, align 4, !dbg !3746
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !3747, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3749, metadata !DIExpression()), !dbg !3750
  store i32 0, i32* %result, align 4, !dbg !3750
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3751
  %call = call i32 @fileno(%struct._IO_FILE* %0) #10, !dbg !3752
  store i32 %call, i32* %fd, align 4, !dbg !3753
  %1 = load i32, i32* %fd, align 4, !dbg !3754
  %cmp = icmp slt i32 %1, 0, !dbg !3756
  br i1 %cmp, label %if.then, label %if.end, !dbg !3757

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3758
  %call1 = call i32 @fclose(%struct._IO_FILE* %2), !dbg !3759
  store i32 %call1, i32* %retval, !dbg !3760
  br label %return, !dbg !3760

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3761
  %call2 = call i32 @__freading(%struct._IO_FILE* %3) #10, !dbg !3761
  %cmp3 = icmp ne i32 %call2, 0, !dbg !3761
  br i1 %cmp3, label %lor.lhs.false, label %land.lhs.true, !dbg !3763

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3764
  %call4 = call i32 @fileno(%struct._IO_FILE* %4) #10, !dbg !3766
  %call5 = call i64 @lseek(i32 %call4, i64 0, i32 1) #10, !dbg !3767
  %cmp6 = icmp ne i64 %call5, -1, !dbg !3768
  br i1 %cmp6, label %land.lhs.true, label %if.end.10, !dbg !3769

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3770
  %call7 = call i32 @rpl_fflush(%struct._IO_FILE* %5), !dbg !3771
  %tobool = icmp ne i32 %call7, 0, !dbg !3771
  br i1 %tobool, label %if.then.8, label %if.end.10, !dbg !3772

if.then.8:                                        ; preds = %land.lhs.true
  %call9 = call i32* @__errno_location() #16, !dbg !3773
  %6 = load i32, i32* %call9, align 4, !dbg !3773
  store i32 %6, i32* %saved_errno, align 4, !dbg !3774
  br label %if.end.10, !dbg !3775

if.end.10:                                        ; preds = %if.then.8, %land.lhs.true, %lor.lhs.false
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3776
  %call11 = call i32 @fclose(%struct._IO_FILE* %7), !dbg !3777
  store i32 %call11, i32* %result, align 4, !dbg !3778
  %8 = load i32, i32* %saved_errno, align 4, !dbg !3779
  %cmp12 = icmp ne i32 %8, 0, !dbg !3781
  br i1 %cmp12, label %if.then.13, label %if.end.15, !dbg !3782

if.then.13:                                       ; preds = %if.end.10
  %9 = load i32, i32* %saved_errno, align 4, !dbg !3783
  %call14 = call i32* @__errno_location() #16, !dbg !3785
  store i32 %9, i32* %call14, align 4, !dbg !3786
  store i32 -1, i32* %result, align 4, !dbg !3787
  br label %if.end.15, !dbg !3788

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  %10 = load i32, i32* %result, align 4, !dbg !3789
  store i32 %10, i32* %retval, !dbg !3790
  br label %return, !dbg !3790

return:                                           ; preds = %if.end.15, %if.then
  %11 = load i32, i32* %retval, !dbg !3791
  ret i32 %11, !dbg !3791
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @rpl_fflush(%struct._IO_FILE* %stream) #5 !dbg !3792 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %stream.addr, metadata !3835, metadata !DIExpression()), !dbg !3836
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3837
  %cmp = icmp eq %struct._IO_FILE* %0, null, !dbg !3839
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3840

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3841
  %call = call i32 @__freading(%struct._IO_FILE* %1) #10, !dbg !3841
  %cmp1 = icmp ne i32 %call, 0, !dbg !3841
  br i1 %cmp1, label %if.end, label %if.then, !dbg !3843

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3844
  %call2 = call i32 @fflush(%struct._IO_FILE* %2), !dbg !3845
  store i32 %call2, i32* %retval, !dbg !3846
  br label %return, !dbg !3846

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3847
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %3), !dbg !3848
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !dbg !3849
  %call3 = call i32 @fflush(%struct._IO_FILE* %4), !dbg !3850
  store i32 %call3, i32* %retval, !dbg !3851
  br label %return, !dbg !3851

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, !dbg !3852
  ret i32 %5, !dbg !3852
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %fp) #5 !dbg !3853 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !3856, metadata !DIExpression()), !dbg !3857
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3858
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 0, !dbg !3860
  %1 = load i32, i32* %_flags, align 4, !dbg !3860
  %and = and i32 %1, 256, !dbg !3861
  %tobool = icmp ne i32 %and, 0, !dbg !3861
  br i1 %tobool, label %if.then, label %if.end, !dbg !3862

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3863
  %call = call i32 @rpl_fseeko(%struct._IO_FILE* %2, i64 0, i32 1), !dbg !3864
  br label %if.end, !dbg !3864

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3865
}

; Function Attrs: nounwind uwtable
define internal i32 @rpl_fseeko(%struct._IO_FILE* nonnull %fp, i64 %offset, i32 %whence) #5 !dbg !3866 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %pos = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !3910, metadata !DIExpression()), !dbg !3911
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !3912, metadata !DIExpression()), !dbg !3913
  store i32 %whence, i32* %whence.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %whence.addr, metadata !3914, metadata !DIExpression()), !dbg !3915
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3916
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 2, !dbg !3918
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !3918
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3919
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 1, !dbg !3920
  %3 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !3920
  %cmp = icmp eq i8* %1, %3, !dbg !3921
  br i1 %cmp, label %land.lhs.true, label %if.end.7, !dbg !3922

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3923
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i32 0, i32 5, !dbg !3925
  %5 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !3925
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3926
  %_IO_write_base = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i32 0, i32 4, !dbg !3927
  %7 = load i8*, i8** %_IO_write_base, align 8, !dbg !3927
  %cmp1 = icmp eq i8* %5, %7, !dbg !3928
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.7, !dbg !3929

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3930
  %_IO_save_base = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %8, i32 0, i32 9, !dbg !3931
  %9 = load i8*, i8** %_IO_save_base, align 8, !dbg !3931
  %cmp3 = icmp eq i8* %9, null, !dbg !3932
  br i1 %cmp3, label %if.then, label %if.end.7, !dbg !3933

if.then:                                          ; preds = %land.lhs.true.2
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !3934, metadata !DIExpression()), !dbg !3936
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3937
  %call = call i32 @fileno(%struct._IO_FILE* %10) #10, !dbg !3938
  %11 = load i64, i64* %offset.addr, align 8, !dbg !3939
  %12 = load i32, i32* %whence.addr, align 4, !dbg !3940
  %call4 = call i64 @lseek(i32 %call, i64 %11, i32 %12) #10, !dbg !3941
  store i64 %call4, i64* %pos, align 8, !dbg !3936
  %13 = load i64, i64* %pos, align 8, !dbg !3942
  %cmp5 = icmp eq i64 %13, -1, !dbg !3944
  br i1 %cmp5, label %if.then.6, label %if.end, !dbg !3945

if.then.6:                                        ; preds = %if.then
  store i32 -1, i32* %retval, !dbg !3946
  br label %return, !dbg !3946

if.end:                                           ; preds = %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3948
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i32 0, i32 0, !dbg !3949
  %15 = load i32, i32* %_flags, align 4, !dbg !3950
  %and = and i32 %15, -17, !dbg !3950
  store i32 %and, i32* %_flags, align 4, !dbg !3950
  %16 = load i64, i64* %pos, align 8, !dbg !3951
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3952
  %_offset = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 21, !dbg !3953
  store i64 %16, i64* %_offset, align 8, !dbg !3954
  store i32 0, i32* %retval, !dbg !3955
  br label %return, !dbg !3955

if.end.7:                                         ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !3956
  %19 = load i64, i64* %offset.addr, align 8, !dbg !3957
  %20 = load i32, i32* %whence.addr, align 4, !dbg !3958
  %call8 = call i32 @fseeko(%struct._IO_FILE* %18, i64 %19, i32 %20), !dbg !3959
  store i32 %call8, i32* %retval, !dbg !3960
  br label %return, !dbg !3960

return:                                           ; preds = %if.end.7, %if.end, %if.then.6
  %21 = load i32, i32* %retval, !dbg !3961
  ret i32 %21, !dbg !3961
}

declare i32 @fseeko(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isascii(i32 %c) #12 !dbg !3962 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3965, metadata !DIExpression()), !dbg !3966
  %0 = load i32, i32* %c.addr, align 4, !dbg !3967
  %cmp = icmp sge i32 %0, 0, !dbg !3968
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3969

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3970
  %cmp1 = icmp sle i32 %1, 127, !dbg !3972
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !3973
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isalnum(i32 %c) #12 !dbg !3975 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3976, metadata !DIExpression()), !dbg !3977
  %0 = load i32, i32* %c.addr, align 4, !dbg !3978
  %cmp = icmp sge i32 %0, 48, !dbg !3979
  br i1 %cmp, label %land.lhs.true, label %lor.rhs, !dbg !3980

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !3981
  %cmp1 = icmp sle i32 %1, 57, !dbg !3983
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !3984

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %c.addr, align 4, !dbg !3985
  %and = and i32 %2, -33, !dbg !3986
  %cmp2 = icmp sge i32 %and, 65, !dbg !3987
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !3988

land.rhs:                                         ; preds = %lor.rhs
  %3 = load i32, i32* %c.addr, align 4, !dbg !3989
  %and3 = and i32 %3, -33, !dbg !3991
  %cmp4 = icmp sle i32 %and3, 90, !dbg !3992
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  br label %lor.end, !dbg !3993

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %5 = phi i1 [ true, %land.lhs.true ], [ %4, %land.end ]
  ret i1 %5, !dbg !3995
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isalpha(i32 %c) #12 !dbg !3996 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !3997, metadata !DIExpression()), !dbg !3998
  %0 = load i32, i32* %c.addr, align 4, !dbg !3999
  %and = and i32 %0, -33, !dbg !4000
  %cmp = icmp sge i32 %and, 65, !dbg !4001
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4002

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4003
  %and1 = and i32 %1, -33, !dbg !4005
  %cmp2 = icmp sle i32 %and1, 90, !dbg !4006
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %2, !dbg !4007
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isblank(i32 %c) #12 !dbg !4009 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4010, metadata !DIExpression()), !dbg !4011
  %0 = load i32, i32* %c.addr, align 4, !dbg !4012
  %cmp = icmp eq i32 %0, 32, !dbg !4013
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4014

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4015
  %cmp1 = icmp eq i32 %1, 9, !dbg !4017
  br label %lor.end, !dbg !4014

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %2, !dbg !4018
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_iscntrl(i32 %c) #12 !dbg !4021 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4022, metadata !DIExpression()), !dbg !4023
  %0 = load i32, i32* %c.addr, align 4, !dbg !4024
  %and = and i32 %0, -32, !dbg !4025
  %cmp = icmp eq i32 %and, 0, !dbg !4026
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4027

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4028
  %cmp1 = icmp eq i32 %1, 127, !dbg !4030
  br label %lor.end, !dbg !4027

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %2, !dbg !4031
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isdigit(i32 %c) #12 !dbg !4034 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  %0 = load i32, i32* %c.addr, align 4, !dbg !4037
  %cmp = icmp sge i32 %0, 48, !dbg !4038
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4039

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4040
  %cmp1 = icmp sle i32 %1, 57, !dbg !4042
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !4043
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_islower(i32 %c) #12 !dbg !4045 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4046, metadata !DIExpression()), !dbg !4047
  %0 = load i32, i32* %c.addr, align 4, !dbg !4048
  %cmp = icmp sge i32 %0, 97, !dbg !4049
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4050

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4051
  %cmp1 = icmp sle i32 %1, 122, !dbg !4053
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !4054
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isgraph(i32 %c) #12 !dbg !4056 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4057, metadata !DIExpression()), !dbg !4058
  %0 = load i32, i32* %c.addr, align 4, !dbg !4059
  %cmp = icmp sge i32 %0, 33, !dbg !4060
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4061

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4062
  %cmp1 = icmp sle i32 %1, 126, !dbg !4064
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !4065
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isprint(i32 %c) #12 !dbg !4067 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4068, metadata !DIExpression()), !dbg !4069
  %0 = load i32, i32* %c.addr, align 4, !dbg !4070
  %cmp = icmp sge i32 %0, 32, !dbg !4071
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4072

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4073
  %cmp1 = icmp sle i32 %1, 126, !dbg !4075
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !4076
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_ispunct(i32 %c) #12 !dbg !4078 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4079, metadata !DIExpression()), !dbg !4080
  %0 = load i32, i32* %c.addr, align 4, !dbg !4081
  %cmp = icmp sge i32 %0, 33, !dbg !4082
  br i1 %cmp, label %land.lhs.true, label %land.end.9, !dbg !4083

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4084
  %cmp1 = icmp sle i32 %1, 126, !dbg !4086
  br i1 %cmp1, label %land.rhs, label %land.end.9, !dbg !4087

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4, !dbg !4088
  %cmp2 = icmp sge i32 %2, 48, !dbg !4089
  br i1 %cmp2, label %land.lhs.true.3, label %lor.rhs, !dbg !4090

land.lhs.true.3:                                  ; preds = %land.rhs
  %3 = load i32, i32* %c.addr, align 4, !dbg !4091
  %cmp4 = icmp sle i32 %3, 57, !dbg !4093
  br i1 %cmp4, label %lor.end, label %lor.rhs, !dbg !4094

lor.rhs:                                          ; preds = %land.lhs.true.3, %land.rhs
  %4 = load i32, i32* %c.addr, align 4, !dbg !4095
  %and = and i32 %4, -33, !dbg !4096
  %cmp5 = icmp sge i32 %and, 65, !dbg !4097
  br i1 %cmp5, label %land.rhs.6, label %land.end, !dbg !4098

land.rhs.6:                                       ; preds = %lor.rhs
  %5 = load i32, i32* %c.addr, align 4, !dbg !4099
  %and7 = and i32 %5, -33, !dbg !4100
  %cmp8 = icmp sle i32 %and7, 90, !dbg !4101
  br label %land.end

land.end:                                         ; preds = %land.rhs.6, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp8, %land.rhs.6 ]
  br label %lor.end, !dbg !4102

lor.end:                                          ; preds = %land.end, %land.lhs.true.3
  %7 = phi i1 [ true, %land.lhs.true.3 ], [ %6, %land.end ]
  %lnot = xor i1 %7, true, !dbg !4104
  br label %land.end.9

land.end.9:                                       ; preds = %lor.end, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %lor.end ]
  ret i1 %8, !dbg !4105
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isspace(i32 %c) #12 !dbg !4106 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4107, metadata !DIExpression()), !dbg !4108
  %0 = load i32, i32* %c.addr, align 4, !dbg !4109
  %cmp = icmp eq i32 %0, 32, !dbg !4110
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !4111

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4112
  %cmp1 = icmp eq i32 %1, 9, !dbg !4114
  br i1 %cmp1, label %lor.end, label %lor.lhs.false.2, !dbg !4115

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4, !dbg !4116
  %cmp3 = icmp eq i32 %2, 10, !dbg !4118
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4, !dbg !4119

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %c.addr, align 4, !dbg !4120
  %cmp5 = icmp eq i32 %3, 11, !dbg !4121
  br i1 %cmp5, label %lor.end, label %lor.lhs.false.6, !dbg !4122

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %4 = load i32, i32* %c.addr, align 4, !dbg !4123
  %cmp7 = icmp eq i32 %4, 12, !dbg !4125
  br i1 %cmp7, label %lor.end, label %lor.rhs, !dbg !4126

lor.rhs:                                          ; preds = %lor.lhs.false.6
  %5 = load i32, i32* %c.addr, align 4, !dbg !4127
  %cmp8 = icmp eq i32 %5, 13, !dbg !4129
  br label %lor.end, !dbg !4126

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false.2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp8, %lor.rhs ]
  ret i1 %6, !dbg !4130
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isupper(i32 %c) #12 !dbg !4131 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4132, metadata !DIExpression()), !dbg !4133
  %0 = load i32, i32* %c.addr, align 4, !dbg !4134
  %cmp = icmp sge i32 %0, 65, !dbg !4135
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4136

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4137
  %cmp1 = icmp sle i32 %1, 90, !dbg !4139
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2, !dbg !4140
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @c_isxdigit(i32 %c) #12 !dbg !4142 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4143, metadata !DIExpression()), !dbg !4144
  %0 = load i32, i32* %c.addr, align 4, !dbg !4145
  %cmp = icmp sge i32 %0, 48, !dbg !4146
  br i1 %cmp, label %land.lhs.true, label %lor.rhs, !dbg !4147

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4148
  %cmp1 = icmp sle i32 %1, 57, !dbg !4150
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !4151

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %c.addr, align 4, !dbg !4152
  %and = and i32 %2, -33, !dbg !4153
  %cmp2 = icmp sge i32 %and, 65, !dbg !4154
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !4155

land.rhs:                                         ; preds = %lor.rhs
  %3 = load i32, i32* %c.addr, align 4, !dbg !4156
  %and3 = and i32 %3, -33, !dbg !4158
  %cmp4 = icmp sle i32 %and3, 70, !dbg !4159
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  br label %lor.end, !dbg !4160

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %5 = phi i1 [ true, %land.lhs.true ], [ %4, %land.end ]
  ret i1 %5, !dbg !4162
}

; Function Attrs: nounwind readnone uwtable
define internal i32 @c_tolower(i32 %c) #12 !dbg !4163 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4166, metadata !DIExpression()), !dbg !4167
  %0 = load i32, i32* %c.addr, align 4, !dbg !4168
  %cmp = icmp sge i32 %0, 65, !dbg !4169
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4170

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4171
  %cmp1 = icmp sle i32 %1, 90, !dbg !4173
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4168

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4, !dbg !4174
  %sub = sub nsw i32 %2, 65, !dbg !4176
  %add = add nsw i32 %sub, 97, !dbg !4177
  br label %cond.end, !dbg !4168

cond.false:                                       ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %c.addr, align 4, !dbg !4178
  br label %cond.end, !dbg !4168

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %3, %cond.false ], !dbg !4168
  ret i32 %cond, !dbg !4181
}

; Function Attrs: nounwind readnone uwtable
define internal i32 @c_toupper(i32 %c) #12 !dbg !4184 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  %0 = load i32, i32* %c.addr, align 4, !dbg !4187
  %cmp = icmp sge i32 %0, 97, !dbg !4188
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4189

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !4190
  %cmp1 = icmp sle i32 %1, 122, !dbg !4192
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4187

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4, !dbg !4193
  %sub = sub nsw i32 %2, 97, !dbg !4195
  %add = add nsw i32 %sub, 65, !dbg !4196
  br label %cond.end, !dbg !4187

cond.false:                                       ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %c.addr, align 4, !dbg !4197
  br label %cond.end, !dbg !4187

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %3, %cond.false ], !dbg !4187
  ret i32 %cond, !dbg !4200
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
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nounwind willreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }

!llvm.dbg.cu = !{!9, !26, !32, !42, !50, !68, !76, !519, !166, !526, !538, !540, !542, !545, !551, !175, !553, !555, !557, !559}
!llvm.ident = !{!561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561}
!llvm.module.flags = !{!562, !563}

!0 = distinct !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = !DIGlobalVariable(name: "infomap", scope: !2, file: !3, line: 571, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 569, type: !4, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !11)
!3 = !DIFile(filename: "../src/system.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !12, globals: !14)
!10 = !DIFile(filename: "../src/unlink.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!11 = !{}
!12 = !{!6, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!14 = !{!15}
!15 = distinct !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 896, align: 64, elements: !22)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !2, file: !3, line: 571, size: 128, align: 64, elements: !19)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !18, file: !3, line: 571, baseType: !6, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !18, file: !3, line: 571, baseType: !6, size: 64, align: 64, offset: 64)
!22 = !{!23}
!23 = !DISubrange(count: 7)
!24 = distinct !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = !DIGlobalVariable(name: "Version", scope: !26, file: !27, line: 2, type: !6, isLocal: false, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !28)
!27 = !DIFile(filename: "src/version.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!28 = !{!29}
!29 = distinct !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!30 = distinct !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = !DIGlobalVariable(name: "file_name", scope: !32, file: !33, line: 36, type: !6, isLocal: true, isDefinition: true)
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !34)
!33 = !DIFile(filename: "../lib/closeout.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!34 = !{!35, !36}
!35 = distinct !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!36 = distinct !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = !DIGlobalVariable(name: "ignore_EPIPE", scope: !32, file: !33, line: 46, type: !38, isLocal: true, isDefinition: true)
!38 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!39 = distinct !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!40 = distinct !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = !DIGlobalVariable(name: "exit_failure", scope: !42, file: !43, line: 24, type: !46, isLocal: false, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !44)
!43 = !DIFile(filename: "../lib/exitfail.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!44 = !{!45}
!45 = distinct !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!46 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!47 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!48 = distinct !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = !DIGlobalVariable(name: "long_options", scope: !50, file: !51, line: 33, type: !54, isLocal: true, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !52)
!51 = !DIFile(filename: "../lib/long-options.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!52 = !{!53}
!53 = distinct !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 768, align: 64, elements: !64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !57, line: 104, size: 256, align: 64, elements: !58)
!57 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!58 = !{!59, !60, !61, !63}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !57, line: 106, baseType: !6, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !56, file: !57, line: 109, baseType: !47, size: 32, align: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !56, file: !57, line: 110, baseType: !62, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !57, line: 111, baseType: !47, size: 32, align: 32, offset: 192)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = distinct !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = !DIGlobalVariable(name: "program_name", scope: !68, file: !69, line: 33, type: !6, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !70, globals: !72)
!69 = !DIFile(filename: "../lib/progname.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!70 = !{!13, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!72 = !{!73}
!73 = distinct !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!74 = distinct !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = !DIGlobalVariable(name: "quoting_style_args", scope: !76, file: !77, line: 75, type: !153, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !111, globals: !116)
!77 = !DIFile(filename: "../lib/quotearg.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!78 = !{!79, !91, !96}
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !80, line: 32, size: 32, align: 32, elements: !81)
!80 = !DIFile(filename: "../lib/quotearg.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90}
!82 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!83 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!84 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!85 = !DIEnumerator(name: "c_quoting_style", value: 3)
!86 = !DIEnumerator(name: "c_maybe_quoting_style", value: 4)
!87 = !DIEnumerator(name: "escape_quoting_style", value: 5)
!88 = !DIEnumerator(name: "locale_quoting_style", value: 6)
!89 = !DIEnumerator(name: "clocale_quoting_style", value: 7)
!90 = !DIEnumerator(name: "custom_quoting_style", value: 8)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !80, line: 211, size: 32, align: 32, elements: !92)
!92 = !{!93, !94, !95}
!93 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!94 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!95 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !97, line: 46, size: 32, align: 32, elements: !98)
!97 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!99 = !DIEnumerator(name: "_ISupper", value: 256)
!100 = !DIEnumerator(name: "_ISlower", value: 512)
!101 = !DIEnumerator(name: "_ISalpha", value: 1024)
!102 = !DIEnumerator(name: "_ISdigit", value: 2048)
!103 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!104 = !DIEnumerator(name: "_ISspace", value: 8192)
!105 = !DIEnumerator(name: "_ISprint", value: 16384)
!106 = !DIEnumerator(name: "_ISgraph", value: 32768)
!107 = !DIEnumerator(name: "_ISblank", value: 1)
!108 = !DIEnumerator(name: "_IScntrl", value: 2)
!109 = !DIEnumerator(name: "_ISpunct", value: 4)
!110 = !DIEnumerator(name: "_ISalnum", value: 8)
!111 = !{!112, !47, !115}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 62, baseType: !114)
!113 = !DIFile(filename: "/usr/data/lobo/llvm/llvm-3.7.0/build/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!114 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!115 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!116 = !{!117, !118, !124, !135, !137, !142, !149, !151}
!117 = distinct !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!118 = distinct !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = !DIGlobalVariable(name: "quoting_style_vals", scope: !76, file: !77, line: 89, type: !120, isLocal: false, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 256, align: 32, elements: !122)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!122 = !{!123}
!123 = !DISubrange(count: 8)
!124 = distinct !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = !DIGlobalVariable(name: "quote_quoting_options", scope: !76, file: !77, line: 938, type: !126, isLocal: false, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !77, line: 55, size: 448, align: 64, elements: !127)
!127 = !{!128, !129, !130, !133, !134}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !126, file: !77, line: 58, baseType: !79, size: 32, align: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !77, line: 61, baseType: !47, size: 32, align: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !126, file: !77, line: 65, baseType: !131, size: 256, align: 32, offset: 64)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, align: 32, elements: !122)
!132 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !126, file: !77, line: 68, baseType: !6, size: 64, align: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !126, file: !77, line: 71, baseType: !6, size: 64, align: 64, offset: 384)
!135 = distinct !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = !DIGlobalVariable(name: "default_quoting_options", scope: !76, file: !77, line: 102, type: !126, isLocal: true, isDefinition: true)
!137 = distinct !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = !DIGlobalVariable(name: "slot0", scope: !76, file: !77, line: 731, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, align: 8, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 256)
!142 = distinct !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = !DIGlobalVariable(name: "slotvec", scope: !76, file: !77, line: 734, type: !144, isLocal: true, isDefinition: true)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !77, line: 723, size: 128, align: 64, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !145, file: !77, line: 725, baseType: !112, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !145, file: !77, line: 726, baseType: !71, size: 64, align: 64, offset: 64)
!149 = distinct !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = !DIGlobalVariable(name: "nslots", scope: !76, file: !77, line: 732, type: !132, isLocal: true, isDefinition: true)
!151 = distinct !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = !DIGlobalVariable(name: "slotvec0", scope: !76, file: !77, line: 733, type: !145, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 576, align: 64, elements: !155)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!155 = !{!156}
!156 = !DISubrange(count: 9)
!157 = distinct !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!158 = distinct !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!159 = distinct !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!160 = distinct !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!161 = distinct !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!162 = distinct !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!163 = distinct !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!164 = distinct !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = !DIGlobalVariable(name: "version_etc_copyright", scope: !166, file: !167, line: 26, type: !170, isLocal: false, isDefinition: true)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !168)
!167 = !DIFile(filename: "../lib/version-etc-fsf.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!168 = !{!169}
!169 = distinct !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, align: 8, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 47)
!173 = distinct !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = !DIGlobalVariable(name: "charset_aliases", scope: !175, file: !176, line: 120, type: !518, isLocal: true, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !70, globals: !516)
!176 = !DIFile(filename: "../lib/localcharset.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!177 = !{!178}
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 41, size: 32, align: 32, elements: !180)
!179 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!181 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!182 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!183 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!184 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!185 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!186 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!187 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!188 = !DIEnumerator(name: "DAY_1", value: 131079)
!189 = !DIEnumerator(name: "DAY_2", value: 131080)
!190 = !DIEnumerator(name: "DAY_3", value: 131081)
!191 = !DIEnumerator(name: "DAY_4", value: 131082)
!192 = !DIEnumerator(name: "DAY_5", value: 131083)
!193 = !DIEnumerator(name: "DAY_6", value: 131084)
!194 = !DIEnumerator(name: "DAY_7", value: 131085)
!195 = !DIEnumerator(name: "ABMON_1", value: 131086)
!196 = !DIEnumerator(name: "ABMON_2", value: 131087)
!197 = !DIEnumerator(name: "ABMON_3", value: 131088)
!198 = !DIEnumerator(name: "ABMON_4", value: 131089)
!199 = !DIEnumerator(name: "ABMON_5", value: 131090)
!200 = !DIEnumerator(name: "ABMON_6", value: 131091)
!201 = !DIEnumerator(name: "ABMON_7", value: 131092)
!202 = !DIEnumerator(name: "ABMON_8", value: 131093)
!203 = !DIEnumerator(name: "ABMON_9", value: 131094)
!204 = !DIEnumerator(name: "ABMON_10", value: 131095)
!205 = !DIEnumerator(name: "ABMON_11", value: 131096)
!206 = !DIEnumerator(name: "ABMON_12", value: 131097)
!207 = !DIEnumerator(name: "MON_1", value: 131098)
!208 = !DIEnumerator(name: "MON_2", value: 131099)
!209 = !DIEnumerator(name: "MON_3", value: 131100)
!210 = !DIEnumerator(name: "MON_4", value: 131101)
!211 = !DIEnumerator(name: "MON_5", value: 131102)
!212 = !DIEnumerator(name: "MON_6", value: 131103)
!213 = !DIEnumerator(name: "MON_7", value: 131104)
!214 = !DIEnumerator(name: "MON_8", value: 131105)
!215 = !DIEnumerator(name: "MON_9", value: 131106)
!216 = !DIEnumerator(name: "MON_10", value: 131107)
!217 = !DIEnumerator(name: "MON_11", value: 131108)
!218 = !DIEnumerator(name: "MON_12", value: 131109)
!219 = !DIEnumerator(name: "AM_STR", value: 131110)
!220 = !DIEnumerator(name: "PM_STR", value: 131111)
!221 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!222 = !DIEnumerator(name: "D_FMT", value: 131113)
!223 = !DIEnumerator(name: "T_FMT", value: 131114)
!224 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!225 = !DIEnumerator(name: "ERA", value: 131116)
!226 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!227 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!228 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!229 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!230 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!231 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!232 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!233 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!234 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!235 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!236 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!237 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!238 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!239 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!240 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!241 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!242 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!243 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!244 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!245 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!246 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!247 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!248 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!249 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!250 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!251 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!252 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!253 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!254 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!255 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!256 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!257 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!258 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!259 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!260 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!261 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!262 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!263 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!264 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!265 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!266 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!267 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!268 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!269 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!270 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!271 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!272 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!273 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!274 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!275 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!276 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!277 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!278 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!279 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!280 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!281 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!282 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!283 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!284 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!285 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!286 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!287 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!288 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!289 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!290 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!291 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!292 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!293 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!294 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!295 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!296 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!297 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!298 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!299 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!300 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!301 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!302 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!303 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!304 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!305 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!306 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!307 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!308 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!309 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!310 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!311 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!312 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!313 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!314 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!315 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!316 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!317 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!318 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!319 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!320 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!321 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!322 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!323 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!324 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!325 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!326 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!327 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!328 = !DIEnumerator(name: "CODESET", value: 14)
!329 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!330 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!331 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!332 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!333 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!355 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!356 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!357 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!375 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!376 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!377 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!379 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!380 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!381 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!382 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!383 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!384 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!385 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!386 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!387 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!388 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!400 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!401 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!402 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!403 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!404 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!405 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!406 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!407 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!408 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!409 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!410 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!411 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!412 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!413 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!414 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!415 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!416 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!417 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!418 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!419 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!420 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!421 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!422 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!423 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!424 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!425 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!439 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!440 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!443 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!444 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!445 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!446 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!447 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!448 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!449 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!450 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!451 = !DIEnumerator(name: "THOUSEP", value: 65537)
!452 = !DIEnumerator(name: "__GROUPING", value: 65538)
!453 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!454 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!455 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!456 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!457 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!458 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!459 = !DIEnumerator(name: "__YESSTR", value: 327682)
!460 = !DIEnumerator(name: "__NOSTR", value: 327683)
!461 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!462 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!463 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!464 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!465 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!466 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!467 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!468 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!469 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!470 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!471 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!472 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!473 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!474 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!475 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!476 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!477 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!478 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!479 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!480 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!481 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!482 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!483 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!484 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!485 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!486 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!487 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!488 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!489 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!490 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!491 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!492 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!493 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!494 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!495 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!496 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!497 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!498 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!499 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!500 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!514 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!515 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!516 = !{!517}
!517 = distinct !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!518 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !521, retainedTypes: !525)
!520 = !DIFile(filename: "../lib/version-etc.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!521 = !{!522}
!522 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !520, line: 41, size: 32, align: 32, elements: !523)
!523 = !{!524}
!524 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2015)
!525 = !{!13}
!526 = distinct !DICompileUnit(language: DW_LANG_C99, file: !527, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !528, retainedTypes: !537)
!527 = !DIFile(filename: "../lib/xmalloc.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!528 = !{!529}
!529 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !531, file: !530, line: 191, size: 32, align: 32, elements: !535)
!530 = !DIFile(filename: "../lib/xalloc.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!531 = distinct !DISubprogram(name: "x2nrealloc", scope: !530, file: !530, line: 179, type: !532, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!532 = !DISubroutineType(types: !533)
!533 = !{!13, !13, !534, !112}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!535 = !{!536}
!536 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!537 = !{!112, !71, !13}
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!539 = !DIFile(filename: "../lib/xalloc-die.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!540 = distinct !DICompileUnit(language: DW_LANG_C99, file: !541, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !525)
!541 = !DIFile(filename: "../lib/calloc.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!542 = distinct !DICompileUnit(language: DW_LANG_C99, file: !543, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !544)
!543 = !DIFile(filename: "../lib/mbrtowc.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!544 = !{!13, !112}
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !547)
!546 = !DIFile(filename: "../lib/c-strcasecmp.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!552 = !DIFile(filename: "../lib/close-stream.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!553 = distinct !DICompileUnit(language: DW_LANG_C99, file: !554, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!554 = !DIFile(filename: "../lib/fclose.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !525)
!556 = !DIFile(filename: "../lib/fflush.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !525)
!558 = !DIFile(filename: "../lib/fseeko.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 3.7.0 (tags/RELEASE_370/final 255017)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11)
!560 = !DIFile(filename: "../lib/c-ctype.c", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!561 = !{!"clang version 3.7.0 (tags/RELEASE_370/final 255017)"}
!562 = !{i32 2, !"Dwarf Version", i32 4}
!563 = !{i32 2, !"Debug Info Version", i32 3}
!564 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 39, type: !565, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !47}
!567 = !DILocalVariable(name: "status", arg: 1, scope: !564, file: !10, line: 39, type: !47)
!568 = !DILocation(line: 39, column: 12, scope: !564)
!569 = !DILocation(line: 41, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !564, file: !10, line: 41, column: 7)
!571 = !DILocation(line: 41, column: 14, scope: !570)
!572 = !DILocation(line: 41, column: 7, scope: !564)
!573 = !DILocation(line: 42, column: 5, scope: !570)
!574 = !DILocation(line: 45, column: 15, scope: !575)
!575 = distinct !DILexicalBlock(scope: !570, file: !10, line: 44, column: 5)
!576 = !DILocation(line: 47, column: 23, scope: !575)
!577 = !DILocation(line: 47, column: 37, scope: !575)
!578 = !DILocation(line: 45, column: 7, scope: !575)
!579 = !DILocation(line: 48, column: 7, scope: !575)
!580 = !DILocation(line: 50, column: 7, scope: !575)
!581 = !DILocation(line: 51, column: 7, scope: !575)
!582 = !DILocation(line: 52, column: 7, scope: !575)
!583 = !DILocation(line: 54, column: 9, scope: !564)
!584 = !DILocation(line: 54, column: 3, scope: !564)
!585 = !DILocation(line: 55, column: 1, scope: !564)
!586 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 58, type: !587, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !11)
!587 = !DISubroutineType(types: !588)
!588 = !{!47, !47, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!590 = !DILocalVariable(name: "argc", arg: 1, scope: !586, file: !10, line: 58, type: !47)
!591 = !DILocation(line: 58, column: 11, scope: !586)
!592 = !DILocalVariable(name: "argv", arg: 2, scope: !586, file: !10, line: 58, type: !589)
!593 = !DILocation(line: 58, column: 24, scope: !586)
!594 = !DILocation(line: 61, column: 21, scope: !586)
!595 = !DILocation(line: 61, column: 3, scope: !586)
!596 = !DILocation(line: 62, column: 3, scope: !586)
!597 = !DILocation(line: 63, column: 3, scope: !586)
!598 = !DILocation(line: 64, column: 3, scope: !586)
!599 = !DILocation(line: 66, column: 3, scope: !586)
!600 = !DILocation(line: 68, column: 23, scope: !586)
!601 = !DILocation(line: 68, column: 29, scope: !586)
!602 = !DILocation(line: 68, column: 63, scope: !586)
!603 = !DILocation(line: 68, column: 3, scope: !586)
!604 = !DILocation(line: 70, column: 20, scope: !605)
!605 = distinct !DILexicalBlock(scope: !586, file: !10, line: 70, column: 7)
!606 = !DILocation(line: 70, column: 26, scope: !605)
!607 = !DILocation(line: 70, column: 7, scope: !605)
!608 = !DILocation(line: 70, column: 48, scope: !605)
!609 = !DILocation(line: 70, column: 7, scope: !586)
!610 = !DILocation(line: 71, column: 5, scope: !605)
!611 = !DILocation(line: 73, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !586, file: !10, line: 73, column: 7)
!613 = !DILocation(line: 73, column: 14, scope: !612)
!614 = !DILocation(line: 73, column: 21, scope: !612)
!615 = !DILocation(line: 73, column: 12, scope: !612)
!616 = !DILocation(line: 73, column: 7, scope: !586)
!617 = !DILocation(line: 75, column: 20, scope: !618)
!618 = distinct !DILexicalBlock(scope: !612, file: !10, line: 74, column: 5)
!619 = !DILocation(line: 75, column: 7, scope: !618)
!620 = !DILocation(line: 76, column: 7, scope: !618)
!621 = !DILocation(line: 79, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !586, file: !10, line: 79, column: 7)
!623 = !DILocation(line: 79, column: 14, scope: !622)
!624 = !DILocation(line: 79, column: 20, scope: !622)
!625 = !DILocation(line: 79, column: 18, scope: !622)
!626 = !DILocation(line: 79, column: 7, scope: !586)
!627 = !DILocation(line: 81, column: 20, scope: !628)
!628 = distinct !DILexicalBlock(scope: !622, file: !10, line: 80, column: 5)
!629 = !DILocation(line: 81, column: 55, scope: !628)
!630 = !DILocation(line: 81, column: 62, scope: !628)
!631 = !DILocation(line: 81, column: 50, scope: !628)
!632 = !DILocation(line: 81, column: 43, scope: !628)
!633 = !DILocation(line: 81, column: 7, scope: !628)
!634 = !DILocation(line: 82, column: 7, scope: !628)
!635 = !DILocation(line: 85, column: 20, scope: !636)
!636 = distinct !DILexicalBlock(scope: !586, file: !10, line: 85, column: 7)
!637 = !DILocation(line: 85, column: 15, scope: !636)
!638 = !DILocation(line: 85, column: 7, scope: !636)
!639 = !DILocation(line: 85, column: 29, scope: !636)
!640 = !DILocation(line: 85, column: 7, scope: !586)
!641 = !DILocation(line: 86, column: 26, scope: !636)
!642 = !DILocation(line: 86, column: 33, scope: !636)
!643 = !DILocation(line: 86, column: 68, scope: !636)
!644 = !DILocation(line: 86, column: 63, scope: !636)
!645 = !DILocation(line: 86, column: 56, scope: !636)
!646 = !DILocation(line: 86, column: 5, scope: !636)
!647 = !DILocation(line: 88, column: 3, scope: !586)
!648 = distinct !DISubprogram(name: "emit_try_help", scope: !3, file: !3, line: 611, type: !649, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !11)
!649 = !DISubroutineType(types: !650)
!650 = !{null}
!651 = !DILocation(line: 613, column: 12, scope: !648)
!652 = !DILocation(line: 613, column: 20, scope: !648)
!653 = !DILocation(line: 613, column: 66, scope: !648)
!654 = !DILocation(line: 613, column: 3, scope: !648)
!655 = !DILocation(line: 614, column: 1, scope: !648)
!656 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 569, type: !6)
!657 = !DILocation(line: 569, column: 34, scope: !2)
!658 = !DILocalVariable(name: "node", scope: !2, file: !3, line: 581, type: !6)
!659 = !DILocation(line: 581, column: 15, scope: !2)
!660 = !DILocation(line: 581, column: 22, scope: !2)
!661 = !DILocalVariable(name: "map_prog", scope: !2, file: !3, line: 582, type: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!663 = !DILocation(line: 582, column: 25, scope: !2)
!664 = !DILocation(line: 584, column: 3, scope: !2)
!665 = !DILocation(line: 584, column: 10, scope: !666)
!666 = !DILexicalBlockFile(scope: !667, file: !3, discriminator: 4)
!667 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 1)
!668 = !DILocation(line: 584, column: 20, scope: !2)
!669 = !DILocation(line: 584, column: 10, scope: !2)
!670 = !DILocation(line: 584, column: 28, scope: !2)
!671 = !DILocation(line: 584, column: 33, scope: !672)
!672 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 2)
!673 = !DILocation(line: 584, column: 31, scope: !2)
!674 = !DILocation(line: 584, column: 3, scope: !675)
!675 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 3)
!676 = !DILocation(line: 585, column: 13, scope: !2)
!677 = !DILocation(line: 587, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !2, file: !3, line: 587, column: 7)
!679 = !DILocation(line: 587, column: 17, scope: !678)
!680 = !DILocation(line: 587, column: 7, scope: !2)
!681 = !DILocation(line: 588, column: 12, scope: !678)
!682 = !DILocation(line: 588, column: 22, scope: !678)
!683 = !DILocation(line: 588, column: 10, scope: !678)
!684 = !DILocation(line: 588, column: 5, scope: !678)
!685 = !DILocation(line: 590, column: 11, scope: !2)
!686 = !DILocation(line: 590, column: 3, scope: !2)
!687 = !DILocalVariable(name: "lc_messages", scope: !2, file: !3, line: 594, type: !6)
!688 = !DILocation(line: 594, column: 15, scope: !2)
!689 = !DILocation(line: 594, column: 29, scope: !2)
!690 = !DILocation(line: 595, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !2, file: !3, line: 595, column: 7)
!692 = !DILocation(line: 595, column: 19, scope: !691)
!693 = !DILocation(line: 595, column: 22, scope: !694)
!694 = !DILexicalBlockFile(scope: !691, file: !3, discriminator: 1)
!695 = !DILocation(line: 595, column: 7, scope: !2)
!696 = !DILocation(line: 601, column: 15, scope: !697)
!697 = distinct !DILexicalBlock(scope: !691, file: !3, line: 596, column: 5)
!698 = !DILocation(line: 602, column: 61, scope: !697)
!699 = !DILocation(line: 601, column: 7, scope: !697)
!700 = !DILocation(line: 603, column: 5, scope: !697)
!701 = !DILocation(line: 604, column: 11, scope: !2)
!702 = !DILocation(line: 605, column: 24, scope: !2)
!703 = !DILocation(line: 604, column: 3, scope: !2)
!704 = !DILocation(line: 606, column: 11, scope: !2)
!705 = !DILocation(line: 607, column: 11, scope: !2)
!706 = !DILocation(line: 607, column: 17, scope: !2)
!707 = !DILocation(line: 607, column: 25, scope: !2)
!708 = !DILocation(line: 607, column: 22, scope: !2)
!709 = !DILocation(line: 606, column: 3, scope: !2)
!710 = !DILocation(line: 608, column: 1, scope: !2)
!711 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !33, file: !33, line: 41, type: !4, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !11)
!712 = !DILocalVariable(name: "file", arg: 1, scope: !711, file: !33, line: 41, type: !6)
!713 = !DILocation(line: 41, column: 41, scope: !711)
!714 = !DILocation(line: 43, column: 15, scope: !711)
!715 = !DILocation(line: 43, column: 13, scope: !711)
!716 = !DILocation(line: 44, column: 1, scope: !711)
!717 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !33, file: !33, line: 78, type: !718, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !11)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !38}
!720 = !DILocalVariable(name: "ignore", arg: 1, scope: !717, file: !33, line: 78, type: !38)
!721 = !DILocation(line: 78, column: 37, scope: !717)
!722 = !DILocation(line: 80, column: 18, scope: !717)
!723 = !DILocation(line: 80, column: 16, scope: !717)
!724 = !DILocation(line: 81, column: 1, scope: !717)
!725 = distinct !DISubprogram(name: "close_stdout", scope: !33, file: !33, line: 107, type: !649, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !11)
!726 = !DILocation(line: 109, column: 21, scope: !727)
!727 = distinct !DILexicalBlock(scope: !725, file: !33, line: 109, column: 7)
!728 = !DILocation(line: 109, column: 7, scope: !727)
!729 = !DILocation(line: 109, column: 29, scope: !727)
!730 = !DILocation(line: 110, column: 7, scope: !727)
!731 = !DILocation(line: 110, column: 12, scope: !732)
!732 = !DILexicalBlockFile(scope: !727, file: !33, discriminator: 1)
!733 = !DILocation(line: 110, column: 25, scope: !727)
!734 = !DILocation(line: 110, column: 28, scope: !735)
!735 = !DILexicalBlockFile(scope: !727, file: !33, discriminator: 2)
!736 = !DILocation(line: 110, column: 34, scope: !727)
!737 = !DILocation(line: 109, column: 7, scope: !725)
!738 = !DILocalVariable(name: "write_error", scope: !739, file: !33, line: 112, type: !6)
!739 = distinct !DILexicalBlock(scope: !727, file: !33, line: 111, column: 5)
!740 = !DILocation(line: 112, column: 19, scope: !739)
!741 = !DILocation(line: 112, column: 33, scope: !739)
!742 = !DILocation(line: 113, column: 11, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !33, line: 113, column: 11)
!744 = !DILocation(line: 113, column: 11, scope: !739)
!745 = !DILocation(line: 114, column: 19, scope: !743)
!746 = !DILocation(line: 114, column: 52, scope: !743)
!747 = !DILocation(line: 114, column: 36, scope: !743)
!748 = !DILocation(line: 115, column: 16, scope: !743)
!749 = !DILocation(line: 114, column: 9, scope: !743)
!750 = !DILocation(line: 117, column: 19, scope: !743)
!751 = !DILocation(line: 117, column: 32, scope: !743)
!752 = !DILocation(line: 117, column: 9, scope: !743)
!753 = !DILocation(line: 119, column: 14, scope: !739)
!754 = !DILocation(line: 119, column: 7, scope: !739)
!755 = !DILocation(line: 122, column: 22, scope: !756)
!756 = distinct !DILexicalBlock(scope: !725, file: !33, line: 122, column: 8)
!757 = !DILocation(line: 122, column: 8, scope: !756)
!758 = !DILocation(line: 122, column: 30, scope: !756)
!759 = !DILocation(line: 122, column: 8, scope: !725)
!760 = !DILocation(line: 123, column: 13, scope: !756)
!761 = !DILocation(line: 123, column: 6, scope: !756)
!762 = !DILocation(line: 124, column: 1, scope: !725)
!763 = distinct !DISubprogram(name: "parse_long_options", scope: !51, file: !51, line: 44, type: !764, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !11)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !47, !589, !6, !6, !6, !766, null}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!767 = !DILocalVariable(name: "argc", arg: 1, scope: !763, file: !51, line: 44, type: !47)
!768 = !DILocation(line: 44, column: 25, scope: !763)
!769 = !DILocalVariable(name: "argv", arg: 2, scope: !763, file: !51, line: 45, type: !589)
!770 = !DILocation(line: 45, column: 28, scope: !763)
!771 = !DILocalVariable(name: "command_name", arg: 3, scope: !763, file: !51, line: 46, type: !6)
!772 = !DILocation(line: 46, column: 33, scope: !763)
!773 = !DILocalVariable(name: "package", arg: 4, scope: !763, file: !51, line: 47, type: !6)
!774 = !DILocation(line: 47, column: 33, scope: !763)
!775 = !DILocalVariable(name: "version", arg: 5, scope: !763, file: !51, line: 48, type: !6)
!776 = !DILocation(line: 48, column: 33, scope: !763)
!777 = !DILocalVariable(name: "usage_func", arg: 6, scope: !763, file: !51, line: 49, type: !766)
!778 = !DILocation(line: 49, column: 28, scope: !763)
!779 = !DILocalVariable(name: "c", scope: !763, file: !51, line: 52, type: !47)
!780 = !DILocation(line: 52, column: 7, scope: !763)
!781 = !DILocalVariable(name: "saved_opterr", scope: !763, file: !51, line: 53, type: !47)
!782 = !DILocation(line: 53, column: 7, scope: !763)
!783 = !DILocation(line: 55, column: 18, scope: !763)
!784 = !DILocation(line: 55, column: 16, scope: !763)
!785 = !DILocation(line: 58, column: 10, scope: !763)
!786 = !DILocation(line: 60, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !763, file: !51, line: 60, column: 7)
!788 = !DILocation(line: 60, column: 12, scope: !787)
!789 = !DILocation(line: 61, column: 7, scope: !787)
!790 = !DILocation(line: 61, column: 28, scope: !791)
!791 = !DILexicalBlockFile(scope: !787, file: !51, discriminator: 1)
!792 = !DILocation(line: 61, column: 34, scope: !787)
!793 = !DILocation(line: 61, column: 15, scope: !787)
!794 = !DILocation(line: 61, column: 13, scope: !787)
!795 = !DILocation(line: 61, column: 66, scope: !787)
!796 = !DILocation(line: 60, column: 7, scope: !763)
!797 = !DILocation(line: 63, column: 15, scope: !798)
!798 = distinct !DILexicalBlock(scope: !787, file: !51, line: 62, column: 5)
!799 = !DILocation(line: 63, column: 7, scope: !798)
!800 = !DILocation(line: 66, column: 13, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !51, line: 64, column: 9)
!802 = !DILocation(line: 66, column: 11, scope: !801)
!803 = !DILocalVariable(name: "authors", scope: !804, file: !51, line: 70, type: !805)
!804 = distinct !DILexicalBlock(scope: !801, file: !51, line: 69, column: 11)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !806, line: 79, baseType: !807)
!806 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !808, line: 50, baseType: !809)
!808 = !DIFile(filename: "/usr/data/lobo/llvm/llvm-3.7.0/build/bin/../lib/clang/3.7.0/include/stdarg.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !51, line: 70, baseType: !810)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 192, align: 64, elements: !818)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !51, line: 70, baseType: !812)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !51, line: 70, size: 192, align: 64, elements: !813)
!813 = !{!814, !815, !816, !817}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !812, file: !51, line: 70, baseType: !132, size: 32, align: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !812, file: !51, line: 70, baseType: !132, size: 32, align: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !812, file: !51, line: 70, baseType: !13, size: 64, align: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !812, file: !51, line: 70, baseType: !13, size: 64, align: 64, offset: 128)
!818 = !{!819}
!819 = !DISubrange(count: 1)
!820 = !DILocation(line: 70, column: 21, scope: !804)
!821 = !DILocation(line: 71, column: 13, scope: !804)
!822 = !DILocation(line: 72, column: 29, scope: !804)
!823 = !DILocation(line: 72, column: 37, scope: !804)
!824 = !DILocation(line: 72, column: 51, scope: !804)
!825 = !DILocation(line: 72, column: 60, scope: !804)
!826 = !DILocation(line: 72, column: 69, scope: !804)
!827 = !DILocation(line: 72, column: 13, scope: !804)
!828 = !DILocation(line: 73, column: 13, scope: !804)
!829 = !DILocation(line: 78, column: 11, scope: !801)
!830 = !DILocation(line: 80, column: 5, scope: !798)
!831 = !DILocation(line: 83, column: 12, scope: !763)
!832 = !DILocation(line: 83, column: 10, scope: !763)
!833 = !DILocation(line: 87, column: 10, scope: !763)
!834 = !DILocation(line: 88, column: 1, scope: !763)
!835 = distinct !DISubprogram(name: "set_program_name", scope: !69, file: !69, line: 39, type: !4, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !11)
!836 = !DILocalVariable(name: "argv0", arg: 1, scope: !835, file: !69, line: 39, type: !6)
!837 = !DILocation(line: 39, column: 31, scope: !835)
!838 = !DILocalVariable(name: "slash", scope: !835, file: !69, line: 46, type: !6)
!839 = !DILocation(line: 46, column: 15, scope: !835)
!840 = !DILocalVariable(name: "base", scope: !835, file: !69, line: 47, type: !6)
!841 = !DILocation(line: 47, column: 15, scope: !835)
!842 = !DILocation(line: 51, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !835, file: !69, line: 51, column: 7)
!844 = !DILocation(line: 51, column: 13, scope: !843)
!845 = !DILocation(line: 51, column: 7, scope: !835)
!846 = !DILocation(line: 55, column: 14, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !69, line: 52, column: 5)
!848 = !DILocation(line: 54, column: 7, scope: !847)
!849 = !DILocation(line: 56, column: 7, scope: !847)
!850 = !DILocation(line: 59, column: 20, scope: !835)
!851 = !DILocation(line: 59, column: 11, scope: !835)
!852 = !DILocation(line: 59, column: 9, scope: !835)
!853 = !DILocation(line: 60, column: 11, scope: !835)
!854 = !DILocation(line: 60, column: 17, scope: !835)
!855 = !DILocation(line: 60, column: 27, scope: !856)
!856 = !DILexicalBlockFile(scope: !835, file: !69, discriminator: 1)
!857 = !DILocation(line: 60, column: 33, scope: !835)
!858 = !DILocation(line: 60, column: 39, scope: !859)
!859 = !DILexicalBlockFile(scope: !835, file: !69, discriminator: 2)
!860 = !DILocation(line: 60, column: 8, scope: !861)
!861 = !DILexicalBlockFile(scope: !862, file: !69, discriminator: 4)
!862 = !DILexicalBlockFile(scope: !835, file: !69, discriminator: 3)
!863 = !DILocation(line: 61, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !835, file: !69, line: 61, column: 7)
!865 = !DILocation(line: 61, column: 14, scope: !864)
!866 = !DILocation(line: 61, column: 12, scope: !864)
!867 = !DILocation(line: 61, column: 20, scope: !864)
!868 = !DILocation(line: 61, column: 25, scope: !864)
!869 = !DILocation(line: 61, column: 37, scope: !870)
!870 = !DILexicalBlockFile(scope: !864, file: !69, discriminator: 1)
!871 = !DILocation(line: 61, column: 42, scope: !864)
!872 = !DILocation(line: 61, column: 28, scope: !864)
!873 = !DILocation(line: 61, column: 61, scope: !864)
!874 = !DILocation(line: 61, column: 7, scope: !835)
!875 = !DILocation(line: 63, column: 15, scope: !876)
!876 = distinct !DILexicalBlock(scope: !864, file: !69, line: 62, column: 5)
!877 = !DILocation(line: 63, column: 13, scope: !876)
!878 = !DILocation(line: 64, column: 20, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !69, line: 64, column: 11)
!880 = !DILocation(line: 64, column: 11, scope: !879)
!881 = !DILocation(line: 64, column: 36, scope: !879)
!882 = !DILocation(line: 64, column: 11, scope: !876)
!883 = !DILocation(line: 66, column: 19, scope: !884)
!884 = distinct !DILexicalBlock(scope: !879, file: !69, line: 65, column: 9)
!885 = !DILocation(line: 66, column: 24, scope: !884)
!886 = !DILocation(line: 66, column: 17, scope: !884)
!887 = !DILocation(line: 70, column: 52, scope: !884)
!888 = !DILocation(line: 70, column: 41, scope: !884)
!889 = !DILocation(line: 72, column: 9, scope: !884)
!890 = !DILocation(line: 73, column: 5, scope: !876)
!891 = !DILocation(line: 84, column: 18, scope: !835)
!892 = !DILocation(line: 84, column: 16, scope: !835)
!893 = !DILocation(line: 90, column: 38, scope: !835)
!894 = !DILocation(line: 90, column: 27, scope: !835)
!895 = !DILocation(line: 92, column: 1, scope: !835)
!896 = distinct !DISubprogram(name: "clone_quoting_options", scope: !77, file: !77, line: 108, type: !897, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!897 = !DISubroutineType(types: !898)
!898 = !{!899, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!900 = !DILocalVariable(name: "o", arg: 1, scope: !896, file: !77, line: 108, type: !899)
!901 = !DILocation(line: 108, column: 48, scope: !896)
!902 = !DILocalVariable(name: "e", scope: !896, file: !77, line: 110, type: !47)
!903 = !DILocation(line: 110, column: 7, scope: !896)
!904 = !DILocation(line: 110, column: 11, scope: !896)
!905 = !DILocalVariable(name: "p", scope: !896, file: !77, line: 111, type: !899)
!906 = !DILocation(line: 111, column: 27, scope: !896)
!907 = !DILocation(line: 111, column: 40, scope: !896)
!908 = !DILocation(line: 111, column: 44, scope: !909)
!909 = !DILexicalBlockFile(scope: !896, file: !77, discriminator: 1)
!910 = !DILocation(line: 111, column: 40, scope: !911)
!911 = !DILexicalBlockFile(scope: !896, file: !77, discriminator: 2)
!912 = !DILocation(line: 111, column: 40, scope: !913)
!913 = !DILexicalBlockFile(scope: !914, file: !77, discriminator: 4)
!914 = !DILexicalBlockFile(scope: !896, file: !77, discriminator: 3)
!915 = !DILocation(line: 111, column: 31, scope: !896)
!916 = !DILocation(line: 113, column: 11, scope: !896)
!917 = !DILocation(line: 113, column: 3, scope: !896)
!918 = !DILocation(line: 113, column: 9, scope: !896)
!919 = !DILocation(line: 114, column: 10, scope: !896)
!920 = !DILocation(line: 114, column: 3, scope: !896)
!921 = distinct !DISubprogram(name: "get_quoting_style", scope: !77, file: !77, line: 119, type: !922, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!922 = !DISubroutineType(types: !923)
!923 = !{!79, !899}
!924 = !DILocalVariable(name: "o", arg: 1, scope: !921, file: !77, line: 119, type: !899)
!925 = !DILocation(line: 119, column: 44, scope: !921)
!926 = !DILocation(line: 121, column: 11, scope: !921)
!927 = !DILocation(line: 121, column: 15, scope: !928)
!928 = !DILexicalBlockFile(scope: !921, file: !77, discriminator: 1)
!929 = !DILocation(line: 121, column: 11, scope: !930)
!930 = !DILexicalBlockFile(scope: !921, file: !77, discriminator: 2)
!931 = !DILocation(line: 121, column: 46, scope: !932)
!932 = !DILexicalBlockFile(scope: !933, file: !77, discriminator: 4)
!933 = !DILexicalBlockFile(scope: !921, file: !77, discriminator: 3)
!934 = !DILocation(line: 121, column: 3, scope: !921)
!935 = distinct !DISubprogram(name: "set_quoting_style", scope: !77, file: !77, line: 127, type: !936, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !899, !79}
!938 = !DILocalVariable(name: "o", arg: 1, scope: !935, file: !77, line: 127, type: !899)
!939 = !DILocation(line: 127, column: 44, scope: !935)
!940 = !DILocalVariable(name: "s", arg: 2, scope: !935, file: !77, line: 127, type: !79)
!941 = !DILocation(line: 127, column: 66, scope: !935)
!942 = !DILocation(line: 129, column: 47, scope: !935)
!943 = !DILocation(line: 129, column: 4, scope: !935)
!944 = !DILocation(line: 129, column: 8, scope: !945)
!945 = !DILexicalBlockFile(scope: !935, file: !77, discriminator: 1)
!946 = !DILocation(line: 129, column: 4, scope: !947)
!947 = !DILexicalBlockFile(scope: !935, file: !77, discriminator: 2)
!948 = !DILocation(line: 129, column: 39, scope: !949)
!949 = !DILexicalBlockFile(scope: !950, file: !77, discriminator: 4)
!950 = !DILexicalBlockFile(scope: !935, file: !77, discriminator: 3)
!951 = !DILocation(line: 129, column: 45, scope: !935)
!952 = !DILocation(line: 130, column: 1, scope: !935)
!953 = distinct !DISubprogram(name: "set_char_quoting", scope: !77, file: !77, line: 138, type: !954, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!954 = !DISubroutineType(types: !955)
!955 = !{!47, !899, !8, !47}
!956 = !DILocalVariable(name: "o", arg: 1, scope: !953, file: !77, line: 138, type: !899)
!957 = !DILocation(line: 138, column: 43, scope: !953)
!958 = !DILocalVariable(name: "c", arg: 2, scope: !953, file: !77, line: 138, type: !8)
!959 = !DILocation(line: 138, column: 51, scope: !953)
!960 = !DILocalVariable(name: "i", arg: 3, scope: !953, file: !77, line: 138, type: !47)
!961 = !DILocation(line: 138, column: 58, scope: !953)
!962 = !DILocalVariable(name: "uc", scope: !953, file: !77, line: 140, type: !550)
!963 = !DILocation(line: 140, column: 17, scope: !953)
!964 = !DILocation(line: 140, column: 22, scope: !953)
!965 = !DILocalVariable(name: "p", scope: !953, file: !77, line: 141, type: !966)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!967 = !DILocation(line: 141, column: 17, scope: !953)
!968 = !DILocation(line: 142, column: 6, scope: !953)
!969 = !DILocation(line: 142, column: 10, scope: !970)
!970 = !DILexicalBlockFile(scope: !953, file: !77, discriminator: 1)
!971 = !DILocation(line: 142, column: 6, scope: !972)
!972 = !DILexicalBlockFile(scope: !953, file: !77, discriminator: 2)
!973 = !DILocation(line: 142, column: 41, scope: !974)
!974 = !DILexicalBlockFile(scope: !975, file: !77, discriminator: 4)
!975 = !DILexicalBlockFile(scope: !953, file: !77, discriminator: 3)
!976 = !DILocation(line: 142, column: 5, scope: !953)
!977 = !DILocation(line: 142, column: 59, scope: !953)
!978 = !DILocation(line: 142, column: 62, scope: !953)
!979 = !DILocation(line: 142, column: 57, scope: !953)
!980 = !DILocalVariable(name: "shift", scope: !953, file: !77, line: 143, type: !47)
!981 = !DILocation(line: 143, column: 7, scope: !953)
!982 = !DILocation(line: 143, column: 15, scope: !953)
!983 = !DILocation(line: 143, column: 18, scope: !953)
!984 = !DILocalVariable(name: "r", scope: !953, file: !77, line: 144, type: !47)
!985 = !DILocation(line: 144, column: 7, scope: !953)
!986 = !DILocation(line: 144, column: 13, scope: !953)
!987 = !DILocation(line: 144, column: 12, scope: !953)
!988 = !DILocation(line: 144, column: 18, scope: !953)
!989 = !DILocation(line: 144, column: 15, scope: !953)
!990 = !DILocation(line: 144, column: 25, scope: !953)
!991 = !DILocation(line: 145, column: 11, scope: !953)
!992 = !DILocation(line: 145, column: 13, scope: !953)
!993 = !DILocation(line: 145, column: 20, scope: !953)
!994 = !DILocation(line: 145, column: 18, scope: !953)
!995 = !DILocation(line: 145, column: 26, scope: !953)
!996 = !DILocation(line: 145, column: 23, scope: !953)
!997 = !DILocation(line: 145, column: 4, scope: !953)
!998 = !DILocation(line: 145, column: 6, scope: !953)
!999 = !DILocation(line: 146, column: 10, scope: !953)
!1000 = !DILocation(line: 146, column: 3, scope: !953)
!1001 = distinct !DISubprogram(name: "set_quoting_flags", scope: !77, file: !77, line: 154, type: !1002, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!47, !899, !47}
!1004 = !DILocalVariable(name: "o", arg: 1, scope: !1001, file: !77, line: 154, type: !899)
!1005 = !DILocation(line: 154, column: 44, scope: !1001)
!1006 = !DILocalVariable(name: "i", arg: 2, scope: !1001, file: !77, line: 154, type: !47)
!1007 = !DILocation(line: 154, column: 51, scope: !1001)
!1008 = !DILocalVariable(name: "r", scope: !1001, file: !77, line: 156, type: !47)
!1009 = !DILocation(line: 156, column: 7, scope: !1001)
!1010 = !DILocation(line: 157, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1001, file: !77, line: 157, column: 7)
!1012 = !DILocation(line: 157, column: 7, scope: !1001)
!1013 = !DILocation(line: 158, column: 7, scope: !1011)
!1014 = !DILocation(line: 158, column: 5, scope: !1011)
!1015 = !DILocation(line: 159, column: 7, scope: !1001)
!1016 = !DILocation(line: 159, column: 10, scope: !1001)
!1017 = !DILocation(line: 159, column: 5, scope: !1001)
!1018 = !DILocation(line: 160, column: 14, scope: !1001)
!1019 = !DILocation(line: 160, column: 3, scope: !1001)
!1020 = !DILocation(line: 160, column: 6, scope: !1001)
!1021 = !DILocation(line: 160, column: 12, scope: !1001)
!1022 = !DILocation(line: 161, column: 10, scope: !1001)
!1023 = !DILocation(line: 161, column: 3, scope: !1001)
!1024 = distinct !DISubprogram(name: "set_custom_quoting", scope: !77, file: !77, line: 165, type: !1025, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !899, !6, !6}
!1027 = !DILocalVariable(name: "o", arg: 1, scope: !1024, file: !77, line: 165, type: !899)
!1028 = !DILocation(line: 165, column: 45, scope: !1024)
!1029 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1024, file: !77, line: 166, type: !6)
!1030 = !DILocation(line: 166, column: 33, scope: !1024)
!1031 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1024, file: !77, line: 166, type: !6)
!1032 = !DILocation(line: 166, column: 57, scope: !1024)
!1033 = !DILocation(line: 168, column: 8, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1024, file: !77, line: 168, column: 7)
!1035 = !DILocation(line: 168, column: 7, scope: !1024)
!1036 = !DILocation(line: 169, column: 7, scope: !1034)
!1037 = !DILocation(line: 169, column: 5, scope: !1034)
!1038 = !DILocation(line: 170, column: 3, scope: !1024)
!1039 = !DILocation(line: 170, column: 6, scope: !1024)
!1040 = !DILocation(line: 170, column: 12, scope: !1024)
!1041 = !DILocation(line: 171, column: 8, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1024, file: !77, line: 171, column: 7)
!1043 = !DILocation(line: 171, column: 19, scope: !1042)
!1044 = !DILocation(line: 171, column: 23, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1042, file: !77, discriminator: 1)
!1046 = !DILocation(line: 171, column: 7, scope: !1024)
!1047 = !DILocation(line: 172, column: 5, scope: !1042)
!1048 = !DILocation(line: 173, column: 19, scope: !1024)
!1049 = !DILocation(line: 173, column: 3, scope: !1024)
!1050 = !DILocation(line: 173, column: 6, scope: !1024)
!1051 = !DILocation(line: 173, column: 17, scope: !1024)
!1052 = !DILocation(line: 174, column: 20, scope: !1024)
!1053 = !DILocation(line: 174, column: 3, scope: !1024)
!1054 = !DILocation(line: 174, column: 6, scope: !1024)
!1055 = !DILocation(line: 174, column: 18, scope: !1024)
!1056 = !DILocation(line: 175, column: 1, scope: !1024)
!1057 = distinct !DISubprogram(name: "quotearg_buffer", scope: !77, file: !77, line: 673, type: !1058, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!112, !71, !112, !6, !112, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64, align: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!1062 = !DILocalVariable(name: "buffer", arg: 1, scope: !1057, file: !77, line: 673, type: !71)
!1063 = !DILocation(line: 673, column: 24, scope: !1057)
!1064 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1057, file: !77, line: 673, type: !112)
!1065 = !DILocation(line: 673, column: 39, scope: !1057)
!1066 = !DILocalVariable(name: "arg", arg: 3, scope: !1057, file: !77, line: 674, type: !6)
!1067 = !DILocation(line: 674, column: 30, scope: !1057)
!1068 = !DILocalVariable(name: "argsize", arg: 4, scope: !1057, file: !77, line: 674, type: !112)
!1069 = !DILocation(line: 674, column: 42, scope: !1057)
!1070 = !DILocalVariable(name: "o", arg: 5, scope: !1057, file: !77, line: 675, type: !1060)
!1071 = !DILocation(line: 675, column: 48, scope: !1057)
!1072 = !DILocalVariable(name: "p", scope: !1057, file: !77, line: 677, type: !1060)
!1073 = !DILocation(line: 677, column: 33, scope: !1057)
!1074 = !DILocation(line: 677, column: 37, scope: !1057)
!1075 = !DILocation(line: 677, column: 41, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1057, file: !77, discriminator: 1)
!1077 = !DILocation(line: 677, column: 37, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1057, file: !77, discriminator: 2)
!1079 = !DILocation(line: 677, column: 33, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1081, file: !77, discriminator: 4)
!1081 = !DILexicalBlockFile(scope: !1057, file: !77, discriminator: 3)
!1082 = !DILocalVariable(name: "e", scope: !1057, file: !77, line: 678, type: !47)
!1083 = !DILocation(line: 678, column: 7, scope: !1057)
!1084 = !DILocation(line: 678, column: 11, scope: !1057)
!1085 = !DILocalVariable(name: "r", scope: !1057, file: !77, line: 679, type: !112)
!1086 = !DILocation(line: 679, column: 10, scope: !1057)
!1087 = !DILocation(line: 679, column: 40, scope: !1057)
!1088 = !DILocation(line: 679, column: 48, scope: !1057)
!1089 = !DILocation(line: 679, column: 60, scope: !1057)
!1090 = !DILocation(line: 679, column: 65, scope: !1057)
!1091 = !DILocation(line: 680, column: 40, scope: !1057)
!1092 = !DILocation(line: 680, column: 43, scope: !1057)
!1093 = !DILocation(line: 680, column: 50, scope: !1057)
!1094 = !DILocation(line: 680, column: 53, scope: !1057)
!1095 = !DILocation(line: 680, column: 60, scope: !1057)
!1096 = !DILocation(line: 680, column: 63, scope: !1057)
!1097 = !DILocation(line: 681, column: 40, scope: !1057)
!1098 = !DILocation(line: 681, column: 43, scope: !1057)
!1099 = !DILocation(line: 681, column: 55, scope: !1057)
!1100 = !DILocation(line: 681, column: 58, scope: !1057)
!1101 = !DILocation(line: 679, column: 14, scope: !1057)
!1102 = !DILocation(line: 682, column: 11, scope: !1057)
!1103 = !DILocation(line: 682, column: 3, scope: !1057)
!1104 = !DILocation(line: 682, column: 9, scope: !1057)
!1105 = !DILocation(line: 683, column: 10, scope: !1057)
!1106 = !DILocation(line: 683, column: 3, scope: !1057)
!1107 = distinct !DISubprogram(name: "quotearg_alloc", scope: !77, file: !77, line: 688, type: !1108, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!71, !6, !112, !1060}
!1110 = !DILocalVariable(name: "arg", arg: 1, scope: !1107, file: !77, line: 688, type: !6)
!1111 = !DILocation(line: 688, column: 29, scope: !1107)
!1112 = !DILocalVariable(name: "argsize", arg: 2, scope: !1107, file: !77, line: 688, type: !112)
!1113 = !DILocation(line: 688, column: 41, scope: !1107)
!1114 = !DILocalVariable(name: "o", arg: 3, scope: !1107, file: !77, line: 689, type: !1060)
!1115 = !DILocation(line: 689, column: 47, scope: !1107)
!1116 = !DILocation(line: 691, column: 30, scope: !1107)
!1117 = !DILocation(line: 691, column: 35, scope: !1107)
!1118 = !DILocation(line: 691, column: 50, scope: !1107)
!1119 = !DILocation(line: 691, column: 10, scope: !1107)
!1120 = !DILocation(line: 691, column: 3, scope: !1107)
!1121 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !77, file: !77, line: 701, type: !1122, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!71, !6, !112, !534, !1060}
!1124 = !DILocalVariable(name: "arg", arg: 1, scope: !1121, file: !77, line: 701, type: !6)
!1125 = !DILocation(line: 701, column: 33, scope: !1121)
!1126 = !DILocalVariable(name: "argsize", arg: 2, scope: !1121, file: !77, line: 701, type: !112)
!1127 = !DILocation(line: 701, column: 45, scope: !1121)
!1128 = !DILocalVariable(name: "size", arg: 3, scope: !1121, file: !77, line: 701, type: !534)
!1129 = !DILocation(line: 701, column: 62, scope: !1121)
!1130 = !DILocalVariable(name: "o", arg: 4, scope: !1121, file: !77, line: 702, type: !1060)
!1131 = !DILocation(line: 702, column: 51, scope: !1121)
!1132 = !DILocalVariable(name: "p", scope: !1121, file: !77, line: 704, type: !1060)
!1133 = !DILocation(line: 704, column: 33, scope: !1121)
!1134 = !DILocation(line: 704, column: 37, scope: !1121)
!1135 = !DILocation(line: 704, column: 41, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1121, file: !77, discriminator: 1)
!1137 = !DILocation(line: 704, column: 37, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1121, file: !77, discriminator: 2)
!1139 = !DILocation(line: 704, column: 33, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1141, file: !77, discriminator: 4)
!1141 = !DILexicalBlockFile(scope: !1121, file: !77, discriminator: 3)
!1142 = !DILocalVariable(name: "e", scope: !1121, file: !77, line: 705, type: !47)
!1143 = !DILocation(line: 705, column: 7, scope: !1121)
!1144 = !DILocation(line: 705, column: 11, scope: !1121)
!1145 = !DILocalVariable(name: "flags", scope: !1121, file: !77, line: 707, type: !47)
!1146 = !DILocation(line: 707, column: 7, scope: !1121)
!1147 = !DILocation(line: 707, column: 15, scope: !1121)
!1148 = !DILocation(line: 707, column: 18, scope: !1121)
!1149 = !DILocation(line: 707, column: 27, scope: !1121)
!1150 = !DILocation(line: 707, column: 24, scope: !1121)
!1151 = !DILocalVariable(name: "bufsize", scope: !1121, file: !77, line: 708, type: !112)
!1152 = !DILocation(line: 708, column: 10, scope: !1121)
!1153 = !DILocation(line: 708, column: 52, scope: !1121)
!1154 = !DILocation(line: 708, column: 57, scope: !1121)
!1155 = !DILocation(line: 708, column: 66, scope: !1121)
!1156 = !DILocation(line: 708, column: 69, scope: !1121)
!1157 = !DILocation(line: 709, column: 46, scope: !1121)
!1158 = !DILocation(line: 709, column: 53, scope: !1121)
!1159 = !DILocation(line: 709, column: 56, scope: !1121)
!1160 = !DILocation(line: 710, column: 46, scope: !1121)
!1161 = !DILocation(line: 710, column: 49, scope: !1121)
!1162 = !DILocation(line: 711, column: 46, scope: !1121)
!1163 = !DILocation(line: 711, column: 49, scope: !1121)
!1164 = !DILocation(line: 708, column: 20, scope: !1121)
!1165 = !DILocation(line: 711, column: 62, scope: !1121)
!1166 = !DILocalVariable(name: "buf", scope: !1121, file: !77, line: 712, type: !71)
!1167 = !DILocation(line: 712, column: 9, scope: !1121)
!1168 = !DILocation(line: 712, column: 27, scope: !1121)
!1169 = !DILocation(line: 712, column: 15, scope: !1121)
!1170 = !DILocation(line: 713, column: 29, scope: !1121)
!1171 = !DILocation(line: 713, column: 34, scope: !1121)
!1172 = !DILocation(line: 713, column: 43, scope: !1121)
!1173 = !DILocation(line: 713, column: 48, scope: !1121)
!1174 = !DILocation(line: 713, column: 57, scope: !1121)
!1175 = !DILocation(line: 713, column: 60, scope: !1121)
!1176 = !DILocation(line: 713, column: 67, scope: !1121)
!1177 = !DILocation(line: 714, column: 29, scope: !1121)
!1178 = !DILocation(line: 714, column: 32, scope: !1121)
!1179 = !DILocation(line: 715, column: 29, scope: !1121)
!1180 = !DILocation(line: 715, column: 32, scope: !1121)
!1181 = !DILocation(line: 715, column: 44, scope: !1121)
!1182 = !DILocation(line: 715, column: 47, scope: !1121)
!1183 = !DILocation(line: 713, column: 3, scope: !1121)
!1184 = !DILocation(line: 716, column: 11, scope: !1121)
!1185 = !DILocation(line: 716, column: 3, scope: !1121)
!1186 = !DILocation(line: 716, column: 9, scope: !1121)
!1187 = !DILocation(line: 717, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1121, file: !77, line: 717, column: 7)
!1189 = !DILocation(line: 717, column: 7, scope: !1121)
!1190 = !DILocation(line: 718, column: 13, scope: !1188)
!1191 = !DILocation(line: 718, column: 21, scope: !1188)
!1192 = !DILocation(line: 718, column: 6, scope: !1188)
!1193 = !DILocation(line: 718, column: 11, scope: !1188)
!1194 = !DILocation(line: 718, column: 5, scope: !1188)
!1195 = !DILocation(line: 719, column: 10, scope: !1121)
!1196 = !DILocation(line: 719, column: 3, scope: !1121)
!1197 = distinct !DISubprogram(name: "quotearg_free", scope: !77, file: !77, line: 737, type: !649, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1198 = !DILocalVariable(name: "sv", scope: !1197, file: !77, line: 739, type: !144)
!1199 = !DILocation(line: 739, column: 19, scope: !1197)
!1200 = !DILocation(line: 739, column: 24, scope: !1197)
!1201 = !DILocalVariable(name: "i", scope: !1197, file: !77, line: 740, type: !132)
!1202 = !DILocation(line: 740, column: 16, scope: !1197)
!1203 = !DILocation(line: 741, column: 10, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !77, line: 741, column: 3)
!1205 = !DILocation(line: 741, column: 8, scope: !1204)
!1206 = !DILocation(line: 741, column: 15, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1208, file: !77, discriminator: 2)
!1208 = !DILexicalBlockFile(scope: !1209, file: !77, discriminator: 1)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !77, line: 741, column: 3)
!1210 = !DILocation(line: 741, column: 19, scope: !1209)
!1211 = !DILocation(line: 741, column: 17, scope: !1209)
!1212 = !DILocation(line: 741, column: 3, scope: !1204)
!1213 = !DILocation(line: 742, column: 14, scope: !1209)
!1214 = !DILocation(line: 742, column: 11, scope: !1209)
!1215 = !DILocation(line: 742, column: 17, scope: !1209)
!1216 = !DILocation(line: 742, column: 5, scope: !1209)
!1217 = !DILocation(line: 741, column: 28, scope: !1209)
!1218 = !DILocation(line: 741, column: 3, scope: !1209)
!1219 = !DILocation(line: 743, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1197, file: !77, line: 743, column: 7)
!1221 = !DILocation(line: 743, column: 13, scope: !1220)
!1222 = !DILocation(line: 743, column: 17, scope: !1220)
!1223 = !DILocation(line: 743, column: 7, scope: !1197)
!1224 = !DILocation(line: 745, column: 13, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !77, line: 744, column: 5)
!1226 = !DILocation(line: 745, column: 19, scope: !1225)
!1227 = !DILocation(line: 745, column: 7, scope: !1225)
!1228 = !DILocation(line: 746, column: 21, scope: !1225)
!1229 = !DILocation(line: 747, column: 20, scope: !1225)
!1230 = !DILocation(line: 748, column: 5, scope: !1225)
!1231 = !DILocation(line: 749, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1197, file: !77, line: 749, column: 7)
!1233 = !DILocation(line: 749, column: 10, scope: !1232)
!1234 = !DILocation(line: 749, column: 7, scope: !1197)
!1235 = !DILocation(line: 751, column: 13, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !77, line: 750, column: 5)
!1237 = !DILocation(line: 751, column: 7, scope: !1236)
!1238 = !DILocation(line: 752, column: 15, scope: !1236)
!1239 = !DILocation(line: 753, column: 5, scope: !1236)
!1240 = !DILocation(line: 754, column: 10, scope: !1197)
!1241 = !DILocation(line: 755, column: 1, scope: !1197)
!1242 = distinct !DISubprogram(name: "quotearg_n", scope: !77, file: !77, line: 826, type: !1243, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!71, !47, !6}
!1245 = !DILocalVariable(name: "n", arg: 1, scope: !1242, file: !77, line: 826, type: !47)
!1246 = !DILocation(line: 826, column: 17, scope: !1242)
!1247 = !DILocalVariable(name: "arg", arg: 2, scope: !1242, file: !77, line: 826, type: !6)
!1248 = !DILocation(line: 826, column: 32, scope: !1242)
!1249 = !DILocation(line: 828, column: 30, scope: !1242)
!1250 = !DILocation(line: 828, column: 33, scope: !1242)
!1251 = !DILocation(line: 828, column: 10, scope: !1242)
!1252 = !DILocation(line: 828, column: 3, scope: !1242)
!1253 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !77, file: !77, line: 832, type: !1254, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!71, !47, !6, !112}
!1256 = !DILocalVariable(name: "n", arg: 1, scope: !1253, file: !77, line: 832, type: !47)
!1257 = !DILocation(line: 832, column: 21, scope: !1253)
!1258 = !DILocalVariable(name: "arg", arg: 2, scope: !1253, file: !77, line: 832, type: !6)
!1259 = !DILocation(line: 832, column: 36, scope: !1253)
!1260 = !DILocalVariable(name: "argsize", arg: 3, scope: !1253, file: !77, line: 832, type: !112)
!1261 = !DILocation(line: 832, column: 48, scope: !1253)
!1262 = !DILocation(line: 834, column: 30, scope: !1253)
!1263 = !DILocation(line: 834, column: 33, scope: !1253)
!1264 = !DILocation(line: 834, column: 38, scope: !1253)
!1265 = !DILocation(line: 834, column: 10, scope: !1253)
!1266 = !DILocation(line: 834, column: 3, scope: !1253)
!1267 = distinct !DISubprogram(name: "quotearg", scope: !77, file: !77, line: 838, type: !1268, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!71, !6}
!1270 = !DILocalVariable(name: "arg", arg: 1, scope: !1267, file: !77, line: 838, type: !6)
!1271 = !DILocation(line: 838, column: 23, scope: !1267)
!1272 = !DILocation(line: 840, column: 25, scope: !1267)
!1273 = !DILocation(line: 840, column: 10, scope: !1267)
!1274 = !DILocation(line: 840, column: 3, scope: !1267)
!1275 = distinct !DISubprogram(name: "quotearg_mem", scope: !77, file: !77, line: 844, type: !1276, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!71, !6, !112}
!1278 = !DILocalVariable(name: "arg", arg: 1, scope: !1275, file: !77, line: 844, type: !6)
!1279 = !DILocation(line: 844, column: 27, scope: !1275)
!1280 = !DILocalVariable(name: "argsize", arg: 2, scope: !1275, file: !77, line: 844, type: !112)
!1281 = !DILocation(line: 844, column: 39, scope: !1275)
!1282 = !DILocation(line: 846, column: 29, scope: !1275)
!1283 = !DILocation(line: 846, column: 34, scope: !1275)
!1284 = !DILocation(line: 846, column: 10, scope: !1275)
!1285 = !DILocation(line: 846, column: 3, scope: !1275)
!1286 = distinct !DISubprogram(name: "quotearg_n_style", scope: !77, file: !77, line: 850, type: !1287, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!71, !47, !79, !6}
!1289 = !DILocalVariable(name: "n", arg: 1, scope: !1286, file: !77, line: 850, type: !47)
!1290 = !DILocation(line: 850, column: 23, scope: !1286)
!1291 = !DILocalVariable(name: "s", arg: 2, scope: !1286, file: !77, line: 850, type: !79)
!1292 = !DILocation(line: 850, column: 45, scope: !1286)
!1293 = !DILocalVariable(name: "arg", arg: 3, scope: !1286, file: !77, line: 850, type: !6)
!1294 = !DILocation(line: 850, column: 60, scope: !1286)
!1295 = !DILocalVariable(name: "o", scope: !1286, file: !77, line: 852, type: !1061)
!1296 = !DILocation(line: 852, column: 32, scope: !1286)
!1297 = !DILocation(line: 852, column: 64, scope: !1286)
!1298 = !DILocation(line: 852, column: 36, scope: !1286)
!1299 = !DILocation(line: 853, column: 30, scope: !1286)
!1300 = !DILocation(line: 853, column: 33, scope: !1286)
!1301 = !DILocation(line: 853, column: 10, scope: !1286)
!1302 = !DILocation(line: 853, column: 3, scope: !1286)
!1303 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !77, file: !77, line: 857, type: !1304, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!71, !47, !79, !6, !112}
!1306 = !DILocalVariable(name: "n", arg: 1, scope: !1303, file: !77, line: 857, type: !47)
!1307 = !DILocation(line: 857, column: 27, scope: !1303)
!1308 = !DILocalVariable(name: "s", arg: 2, scope: !1303, file: !77, line: 857, type: !79)
!1309 = !DILocation(line: 857, column: 49, scope: !1303)
!1310 = !DILocalVariable(name: "arg", arg: 3, scope: !1303, file: !77, line: 858, type: !6)
!1311 = !DILocation(line: 858, column: 35, scope: !1303)
!1312 = !DILocalVariable(name: "argsize", arg: 4, scope: !1303, file: !77, line: 858, type: !112)
!1313 = !DILocation(line: 858, column: 47, scope: !1303)
!1314 = !DILocalVariable(name: "o", scope: !1303, file: !77, line: 860, type: !1061)
!1315 = !DILocation(line: 860, column: 32, scope: !1303)
!1316 = !DILocation(line: 860, column: 64, scope: !1303)
!1317 = !DILocation(line: 860, column: 36, scope: !1303)
!1318 = !DILocation(line: 861, column: 30, scope: !1303)
!1319 = !DILocation(line: 861, column: 33, scope: !1303)
!1320 = !DILocation(line: 861, column: 38, scope: !1303)
!1321 = !DILocation(line: 861, column: 10, scope: !1303)
!1322 = !DILocation(line: 861, column: 3, scope: !1303)
!1323 = distinct !DISubprogram(name: "quotearg_style", scope: !77, file: !77, line: 865, type: !1324, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!71, !79, !6}
!1326 = !DILocalVariable(name: "s", arg: 1, scope: !1323, file: !77, line: 865, type: !79)
!1327 = !DILocation(line: 865, column: 36, scope: !1323)
!1328 = !DILocalVariable(name: "arg", arg: 2, scope: !1323, file: !77, line: 865, type: !6)
!1329 = !DILocation(line: 865, column: 51, scope: !1323)
!1330 = !DILocation(line: 867, column: 31, scope: !1323)
!1331 = !DILocation(line: 867, column: 34, scope: !1323)
!1332 = !DILocation(line: 867, column: 10, scope: !1323)
!1333 = !DILocation(line: 867, column: 3, scope: !1323)
!1334 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !77, file: !77, line: 871, type: !1335, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!71, !79, !6, !112}
!1337 = !DILocalVariable(name: "s", arg: 1, scope: !1334, file: !77, line: 871, type: !79)
!1338 = !DILocation(line: 871, column: 40, scope: !1334)
!1339 = !DILocalVariable(name: "arg", arg: 2, scope: !1334, file: !77, line: 871, type: !6)
!1340 = !DILocation(line: 871, column: 55, scope: !1334)
!1341 = !DILocalVariable(name: "argsize", arg: 3, scope: !1334, file: !77, line: 871, type: !112)
!1342 = !DILocation(line: 871, column: 67, scope: !1334)
!1343 = !DILocation(line: 873, column: 35, scope: !1334)
!1344 = !DILocation(line: 873, column: 38, scope: !1334)
!1345 = !DILocation(line: 873, column: 43, scope: !1334)
!1346 = !DILocation(line: 873, column: 10, scope: !1334)
!1347 = !DILocation(line: 873, column: 3, scope: !1334)
!1348 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !77, file: !77, line: 877, type: !1349, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!71, !6, !112, !8}
!1351 = !DILocalVariable(name: "arg", arg: 1, scope: !1348, file: !77, line: 877, type: !6)
!1352 = !DILocation(line: 877, column: 32, scope: !1348)
!1353 = !DILocalVariable(name: "argsize", arg: 2, scope: !1348, file: !77, line: 877, type: !112)
!1354 = !DILocation(line: 877, column: 44, scope: !1348)
!1355 = !DILocalVariable(name: "ch", arg: 3, scope: !1348, file: !77, line: 877, type: !8)
!1356 = !DILocation(line: 877, column: 58, scope: !1348)
!1357 = !DILocalVariable(name: "options", scope: !1348, file: !77, line: 879, type: !126)
!1358 = !DILocation(line: 879, column: 26, scope: !1348)
!1359 = !DILocation(line: 880, column: 13, scope: !1348)
!1360 = !DILocation(line: 881, column: 31, scope: !1348)
!1361 = !DILocation(line: 881, column: 3, scope: !1348)
!1362 = !DILocation(line: 882, column: 33, scope: !1348)
!1363 = !DILocation(line: 882, column: 38, scope: !1348)
!1364 = !DILocation(line: 882, column: 10, scope: !1348)
!1365 = !DILocation(line: 882, column: 3, scope: !1348)
!1366 = distinct !DISubprogram(name: "quotearg_char", scope: !77, file: !77, line: 886, type: !1367, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!71, !6, !8}
!1369 = !DILocalVariable(name: "arg", arg: 1, scope: !1366, file: !77, line: 886, type: !6)
!1370 = !DILocation(line: 886, column: 28, scope: !1366)
!1371 = !DILocalVariable(name: "ch", arg: 2, scope: !1366, file: !77, line: 886, type: !8)
!1372 = !DILocation(line: 886, column: 38, scope: !1366)
!1373 = !DILocation(line: 888, column: 29, scope: !1366)
!1374 = !DILocation(line: 888, column: 44, scope: !1366)
!1375 = !DILocation(line: 888, column: 10, scope: !1366)
!1376 = !DILocation(line: 888, column: 3, scope: !1366)
!1377 = distinct !DISubprogram(name: "quotearg_colon", scope: !77, file: !77, line: 892, type: !1268, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1378 = !DILocalVariable(name: "arg", arg: 1, scope: !1377, file: !77, line: 892, type: !6)
!1379 = !DILocation(line: 892, column: 29, scope: !1377)
!1380 = !DILocation(line: 894, column: 25, scope: !1377)
!1381 = !DILocation(line: 894, column: 10, scope: !1377)
!1382 = !DILocation(line: 894, column: 3, scope: !1377)
!1383 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !77, file: !77, line: 898, type: !1276, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1384 = !DILocalVariable(name: "arg", arg: 1, scope: !1383, file: !77, line: 898, type: !6)
!1385 = !DILocation(line: 898, column: 33, scope: !1383)
!1386 = !DILocalVariable(name: "argsize", arg: 2, scope: !1383, file: !77, line: 898, type: !112)
!1387 = !DILocation(line: 898, column: 45, scope: !1383)
!1388 = !DILocation(line: 900, column: 29, scope: !1383)
!1389 = !DILocation(line: 900, column: 34, scope: !1383)
!1390 = !DILocation(line: 900, column: 10, scope: !1383)
!1391 = !DILocation(line: 900, column: 3, scope: !1383)
!1392 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !77, file: !77, line: 904, type: !1393, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!71, !47, !6, !6, !6}
!1395 = !DILocalVariable(name: "n", arg: 1, scope: !1392, file: !77, line: 904, type: !47)
!1396 = !DILocation(line: 904, column: 24, scope: !1392)
!1397 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1392, file: !77, line: 904, type: !6)
!1398 = !DILocation(line: 904, column: 39, scope: !1392)
!1399 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1392, file: !77, line: 905, type: !6)
!1400 = !DILocation(line: 905, column: 32, scope: !1392)
!1401 = !DILocalVariable(name: "arg", arg: 4, scope: !1392, file: !77, line: 905, type: !6)
!1402 = !DILocation(line: 905, column: 57, scope: !1392)
!1403 = !DILocation(line: 907, column: 33, scope: !1392)
!1404 = !DILocation(line: 907, column: 36, scope: !1392)
!1405 = !DILocation(line: 907, column: 48, scope: !1392)
!1406 = !DILocation(line: 907, column: 61, scope: !1392)
!1407 = !DILocation(line: 907, column: 10, scope: !1392)
!1408 = !DILocation(line: 907, column: 3, scope: !1392)
!1409 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !77, file: !77, line: 912, type: !1410, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!71, !47, !6, !6, !6, !112}
!1412 = !DILocalVariable(name: "n", arg: 1, scope: !1409, file: !77, line: 912, type: !47)
!1413 = !DILocation(line: 912, column: 28, scope: !1409)
!1414 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1409, file: !77, line: 912, type: !6)
!1415 = !DILocation(line: 912, column: 43, scope: !1409)
!1416 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1409, file: !77, line: 913, type: !6)
!1417 = !DILocation(line: 913, column: 36, scope: !1409)
!1418 = !DILocalVariable(name: "arg", arg: 4, scope: !1409, file: !77, line: 914, type: !6)
!1419 = !DILocation(line: 914, column: 36, scope: !1409)
!1420 = !DILocalVariable(name: "argsize", arg: 5, scope: !1409, file: !77, line: 914, type: !112)
!1421 = !DILocation(line: 914, column: 48, scope: !1409)
!1422 = !DILocalVariable(name: "o", scope: !1409, file: !77, line: 916, type: !126)
!1423 = !DILocation(line: 916, column: 26, scope: !1409)
!1424 = !DILocation(line: 916, column: 30, scope: !1409)
!1425 = !DILocation(line: 917, column: 27, scope: !1409)
!1426 = !DILocation(line: 917, column: 39, scope: !1409)
!1427 = !DILocation(line: 917, column: 3, scope: !1409)
!1428 = !DILocation(line: 918, column: 30, scope: !1409)
!1429 = !DILocation(line: 918, column: 33, scope: !1409)
!1430 = !DILocation(line: 918, column: 38, scope: !1409)
!1431 = !DILocation(line: 918, column: 10, scope: !1409)
!1432 = !DILocation(line: 918, column: 3, scope: !1409)
!1433 = distinct !DISubprogram(name: "quotearg_custom", scope: !77, file: !77, line: 922, type: !1434, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!71, !6, !6, !6}
!1436 = !DILocalVariable(name: "left_quote", arg: 1, scope: !1433, file: !77, line: 922, type: !6)
!1437 = !DILocation(line: 922, column: 30, scope: !1433)
!1438 = !DILocalVariable(name: "right_quote", arg: 2, scope: !1433, file: !77, line: 922, type: !6)
!1439 = !DILocation(line: 922, column: 54, scope: !1433)
!1440 = !DILocalVariable(name: "arg", arg: 3, scope: !1433, file: !77, line: 923, type: !6)
!1441 = !DILocation(line: 923, column: 30, scope: !1433)
!1442 = !DILocation(line: 925, column: 32, scope: !1433)
!1443 = !DILocation(line: 925, column: 44, scope: !1433)
!1444 = !DILocation(line: 925, column: 57, scope: !1433)
!1445 = !DILocation(line: 925, column: 10, scope: !1433)
!1446 = !DILocation(line: 925, column: 3, scope: !1433)
!1447 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !77, file: !77, line: 929, type: !1448, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!71, !6, !6, !6, !112}
!1450 = !DILocalVariable(name: "left_quote", arg: 1, scope: !1447, file: !77, line: 929, type: !6)
!1451 = !DILocation(line: 929, column: 34, scope: !1447)
!1452 = !DILocalVariable(name: "right_quote", arg: 2, scope: !1447, file: !77, line: 929, type: !6)
!1453 = !DILocation(line: 929, column: 58, scope: !1447)
!1454 = !DILocalVariable(name: "arg", arg: 3, scope: !1447, file: !77, line: 930, type: !6)
!1455 = !DILocation(line: 930, column: 34, scope: !1447)
!1456 = !DILocalVariable(name: "argsize", arg: 4, scope: !1447, file: !77, line: 930, type: !112)
!1457 = !DILocation(line: 930, column: 46, scope: !1447)
!1458 = !DILocation(line: 932, column: 36, scope: !1447)
!1459 = !DILocation(line: 932, column: 48, scope: !1447)
!1460 = !DILocation(line: 932, column: 61, scope: !1447)
!1461 = !DILocation(line: 933, column: 33, scope: !1447)
!1462 = !DILocation(line: 932, column: 10, scope: !1447)
!1463 = !DILocation(line: 932, column: 3, scope: !1447)
!1464 = distinct !DISubprogram(name: "quote_n_mem", scope: !77, file: !77, line: 947, type: !1465, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!6, !47, !6, !112}
!1467 = !DILocalVariable(name: "n", arg: 1, scope: !1464, file: !77, line: 947, type: !47)
!1468 = !DILocation(line: 947, column: 18, scope: !1464)
!1469 = !DILocalVariable(name: "arg", arg: 2, scope: !1464, file: !77, line: 947, type: !6)
!1470 = !DILocation(line: 947, column: 33, scope: !1464)
!1471 = !DILocalVariable(name: "argsize", arg: 3, scope: !1464, file: !77, line: 947, type: !112)
!1472 = !DILocation(line: 947, column: 45, scope: !1464)
!1473 = !DILocation(line: 949, column: 30, scope: !1464)
!1474 = !DILocation(line: 949, column: 33, scope: !1464)
!1475 = !DILocation(line: 949, column: 38, scope: !1464)
!1476 = !DILocation(line: 949, column: 10, scope: !1464)
!1477 = !DILocation(line: 949, column: 3, scope: !1464)
!1478 = distinct !DISubprogram(name: "quote_mem", scope: !77, file: !77, line: 953, type: !1479, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!6, !6, !112}
!1481 = !DILocalVariable(name: "arg", arg: 1, scope: !1478, file: !77, line: 953, type: !6)
!1482 = !DILocation(line: 953, column: 24, scope: !1478)
!1483 = !DILocalVariable(name: "argsize", arg: 2, scope: !1478, file: !77, line: 953, type: !112)
!1484 = !DILocation(line: 953, column: 36, scope: !1478)
!1485 = !DILocation(line: 955, column: 26, scope: !1478)
!1486 = !DILocation(line: 955, column: 31, scope: !1478)
!1487 = !DILocation(line: 955, column: 10, scope: !1478)
!1488 = !DILocation(line: 955, column: 3, scope: !1478)
!1489 = distinct !DISubprogram(name: "quote_n", scope: !77, file: !77, line: 959, type: !1490, scopeLine: 960, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!6, !47, !6}
!1492 = !DILocalVariable(name: "n", arg: 1, scope: !1489, file: !77, line: 959, type: !47)
!1493 = !DILocation(line: 959, column: 14, scope: !1489)
!1494 = !DILocalVariable(name: "arg", arg: 2, scope: !1489, file: !77, line: 959, type: !6)
!1495 = !DILocation(line: 959, column: 29, scope: !1489)
!1496 = !DILocation(line: 961, column: 23, scope: !1489)
!1497 = !DILocation(line: 961, column: 26, scope: !1489)
!1498 = !DILocation(line: 961, column: 10, scope: !1489)
!1499 = !DILocation(line: 961, column: 3, scope: !1489)
!1500 = distinct !DISubprogram(name: "quote", scope: !77, file: !77, line: 965, type: !1501, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!6, !6}
!1503 = !DILocalVariable(name: "arg", arg: 1, scope: !1500, file: !77, line: 965, type: !6)
!1504 = !DILocation(line: 965, column: 20, scope: !1500)
!1505 = !DILocation(line: 967, column: 22, scope: !1500)
!1506 = !DILocation(line: 967, column: 10, scope: !1500)
!1507 = !DILocation(line: 967, column: 3, scope: !1500)
!1508 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !77, file: !77, line: 242, type: !1509, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !11)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!112, !71, !112, !6, !112, !79, !47, !1511, !6, !6}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64, align: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1513 = !DILocalVariable(name: "buffer", arg: 1, scope: !1508, file: !77, line: 242, type: !71)
!1514 = !DILocation(line: 242, column: 33, scope: !1508)
!1515 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1508, file: !77, line: 242, type: !112)
!1516 = !DILocation(line: 242, column: 48, scope: !1508)
!1517 = !DILocalVariable(name: "arg", arg: 3, scope: !1508, file: !77, line: 243, type: !6)
!1518 = !DILocation(line: 243, column: 39, scope: !1508)
!1519 = !DILocalVariable(name: "argsize", arg: 4, scope: !1508, file: !77, line: 243, type: !112)
!1520 = !DILocation(line: 243, column: 51, scope: !1508)
!1521 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1508, file: !77, line: 244, type: !79)
!1522 = !DILocation(line: 244, column: 46, scope: !1508)
!1523 = !DILocalVariable(name: "flags", arg: 6, scope: !1508, file: !77, line: 244, type: !47)
!1524 = !DILocation(line: 244, column: 65, scope: !1508)
!1525 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1508, file: !77, line: 245, type: !1511)
!1526 = !DILocation(line: 245, column: 47, scope: !1508)
!1527 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1508, file: !77, line: 246, type: !6)
!1528 = !DILocation(line: 246, column: 39, scope: !1508)
!1529 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1508, file: !77, line: 247, type: !6)
!1530 = !DILocation(line: 247, column: 39, scope: !1508)
!1531 = !DILocalVariable(name: "i", scope: !1508, file: !77, line: 249, type: !112)
!1532 = !DILocation(line: 249, column: 10, scope: !1508)
!1533 = !DILocalVariable(name: "len", scope: !1508, file: !77, line: 250, type: !112)
!1534 = !DILocation(line: 250, column: 10, scope: !1508)
!1535 = !DILocalVariable(name: "quote_string", scope: !1508, file: !77, line: 251, type: !6)
!1536 = !DILocation(line: 251, column: 15, scope: !1508)
!1537 = !DILocalVariable(name: "quote_string_len", scope: !1508, file: !77, line: 252, type: !112)
!1538 = !DILocation(line: 252, column: 10, scope: !1508)
!1539 = !DILocalVariable(name: "backslash_escapes", scope: !1508, file: !77, line: 253, type: !38)
!1540 = !DILocation(line: 253, column: 8, scope: !1508)
!1541 = !DILocalVariable(name: "unibyte_locale", scope: !1508, file: !77, line: 254, type: !38)
!1542 = !DILocation(line: 254, column: 8, scope: !1508)
!1543 = !DILocation(line: 254, column: 25, scope: !1508)
!1544 = !DILocation(line: 254, column: 36, scope: !1508)
!1545 = !DILocalVariable(name: "elide_outer_quotes", scope: !1508, file: !77, line: 255, type: !38)
!1546 = !DILocation(line: 255, column: 8, scope: !1508)
!1547 = !DILocation(line: 255, column: 30, scope: !1508)
!1548 = !DILocation(line: 255, column: 36, scope: !1508)
!1549 = !DILocation(line: 255, column: 61, scope: !1508)
!1550 = !DILocation(line: 266, column: 11, scope: !1508)
!1551 = !DILocation(line: 266, column: 3, scope: !1508)
!1552 = !DILocation(line: 269, column: 21, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1508, file: !77, line: 267, column: 5)
!1554 = !DILocation(line: 270, column: 26, scope: !1553)
!1555 = !DILocation(line: 270, column: 7, scope: !1553)
!1556 = !DILocation(line: 273, column: 12, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !77, line: 273, column: 11)
!1558 = !DILocation(line: 273, column: 11, scope: !1553)
!1559 = !DILocation(line: 274, column: 9, scope: !1557)
!1560 = !DILocation(line: 274, column: 9, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1562, file: !77, discriminator: 1)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !77, line: 274, column: 9)
!1563 = distinct !DILexicalBlock(scope: !1557, file: !77, line: 274, column: 9)
!1564 = !DILocation(line: 274, column: 9, scope: !1563)
!1565 = !DILocation(line: 274, column: 9, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1562, file: !77, discriminator: 2)
!1567 = !DILocation(line: 274, column: 9, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1569, file: !77, discriminator: 4)
!1569 = !DILexicalBlockFile(scope: !1563, file: !77, discriminator: 3)
!1570 = !DILocation(line: 274, column: 9, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1563, file: !77, discriminator: 5)
!1572 = !DILocation(line: 275, column: 25, scope: !1553)
!1573 = !DILocation(line: 276, column: 20, scope: !1553)
!1574 = !DILocation(line: 277, column: 24, scope: !1553)
!1575 = !DILocation(line: 278, column: 7, scope: !1553)
!1576 = !DILocation(line: 281, column: 25, scope: !1553)
!1577 = !DILocation(line: 282, column: 26, scope: !1553)
!1578 = !DILocation(line: 283, column: 7, scope: !1553)
!1579 = !DILocation(line: 289, column: 13, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !77, line: 289, column: 13)
!1581 = distinct !DILexicalBlock(scope: !1553, file: !77, line: 288, column: 7)
!1582 = !DILocation(line: 289, column: 27, scope: !1580)
!1583 = !DILocation(line: 289, column: 13, scope: !1581)
!1584 = !DILocation(line: 312, column: 50, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !77, line: 290, column: 11)
!1586 = !DILocation(line: 312, column: 26, scope: !1585)
!1587 = !DILocation(line: 312, column: 24, scope: !1585)
!1588 = !DILocation(line: 313, column: 51, scope: !1585)
!1589 = !DILocation(line: 313, column: 27, scope: !1585)
!1590 = !DILocation(line: 313, column: 25, scope: !1585)
!1591 = !DILocation(line: 314, column: 11, scope: !1585)
!1592 = !DILocation(line: 315, column: 14, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1581, file: !77, line: 315, column: 13)
!1594 = !DILocation(line: 315, column: 13, scope: !1581)
!1595 = !DILocation(line: 316, column: 31, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !77, line: 316, column: 11)
!1597 = !DILocation(line: 316, column: 29, scope: !1596)
!1598 = !DILocation(line: 316, column: 16, scope: !1596)
!1599 = !DILocation(line: 316, column: 44, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1601, file: !77, discriminator: 2)
!1601 = !DILexicalBlockFile(scope: !1602, file: !77, discriminator: 1)
!1602 = distinct !DILexicalBlock(scope: !1596, file: !77, line: 316, column: 11)
!1603 = !DILocation(line: 316, column: 43, scope: !1602)
!1604 = !DILocation(line: 316, column: 11, scope: !1596)
!1605 = !DILocation(line: 317, column: 13, scope: !1602)
!1606 = !DILocation(line: 317, column: 13, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1608, file: !77, discriminator: 1)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !77, line: 317, column: 13)
!1609 = distinct !DILexicalBlock(scope: !1602, file: !77, line: 317, column: 13)
!1610 = !DILocation(line: 317, column: 13, scope: !1609)
!1611 = !DILocation(line: 317, column: 13, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1608, file: !77, discriminator: 2)
!1613 = !DILocation(line: 317, column: 13, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1615, file: !77, discriminator: 4)
!1615 = !DILexicalBlockFile(scope: !1609, file: !77, discriminator: 3)
!1616 = !DILocation(line: 317, column: 13, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1609, file: !77, discriminator: 5)
!1618 = !DILocation(line: 316, column: 70, scope: !1602)
!1619 = !DILocation(line: 316, column: 11, scope: !1602)
!1620 = !DILocation(line: 317, column: 13, scope: !1596)
!1621 = !DILocation(line: 318, column: 27, scope: !1581)
!1622 = !DILocation(line: 319, column: 24, scope: !1581)
!1623 = !DILocation(line: 319, column: 22, scope: !1581)
!1624 = !DILocation(line: 320, column: 36, scope: !1581)
!1625 = !DILocation(line: 320, column: 28, scope: !1581)
!1626 = !DILocation(line: 320, column: 26, scope: !1581)
!1627 = !DILocation(line: 322, column: 7, scope: !1553)
!1628 = !DILocation(line: 325, column: 21, scope: !1553)
!1629 = !DILocation(line: 326, column: 26, scope: !1553)
!1630 = !DILocation(line: 326, column: 7, scope: !1553)
!1631 = !DILocation(line: 329, column: 12, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1553, file: !77, line: 329, column: 11)
!1633 = !DILocation(line: 329, column: 11, scope: !1553)
!1634 = !DILocation(line: 330, column: 9, scope: !1632)
!1635 = !DILocation(line: 330, column: 9, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1637, file: !77, discriminator: 1)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !77, line: 330, column: 9)
!1638 = distinct !DILexicalBlock(scope: !1632, file: !77, line: 330, column: 9)
!1639 = !DILocation(line: 330, column: 9, scope: !1638)
!1640 = !DILocation(line: 330, column: 9, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1637, file: !77, discriminator: 2)
!1642 = !DILocation(line: 330, column: 9, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1644, file: !77, discriminator: 4)
!1644 = !DILexicalBlockFile(scope: !1638, file: !77, discriminator: 3)
!1645 = !DILocation(line: 330, column: 9, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1638, file: !77, discriminator: 5)
!1647 = !DILocation(line: 331, column: 20, scope: !1553)
!1648 = !DILocation(line: 332, column: 24, scope: !1553)
!1649 = !DILocation(line: 333, column: 7, scope: !1553)
!1650 = !DILocation(line: 336, column: 26, scope: !1553)
!1651 = !DILocation(line: 337, column: 7, scope: !1553)
!1652 = !DILocation(line: 340, column: 7, scope: !1553)
!1653 = !DILocation(line: 343, column: 10, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1508, file: !77, line: 343, column: 3)
!1655 = !DILocation(line: 343, column: 8, scope: !1654)
!1656 = !DILocation(line: 343, column: 19, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1658, file: !77, discriminator: 6)
!1658 = !DILexicalBlockFile(scope: !1659, file: !77, discriminator: 1)
!1659 = distinct !DILexicalBlock(scope: !1654, file: !77, line: 343, column: 3)
!1660 = !DILocation(line: 343, column: 27, scope: !1659)
!1661 = !DILocation(line: 343, column: 19, scope: !1659)
!1662 = !DILocation(line: 343, column: 45, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1659, file: !77, discriminator: 2)
!1664 = !DILocation(line: 343, column: 41, scope: !1659)
!1665 = !DILocation(line: 343, column: 48, scope: !1659)
!1666 = !DILocation(line: 343, column: 58, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1659, file: !77, discriminator: 3)
!1668 = !DILocation(line: 343, column: 63, scope: !1659)
!1669 = !DILocation(line: 343, column: 60, scope: !1659)
!1670 = !DILocation(line: 343, column: 16, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1672, file: !77, discriminator: 5)
!1672 = !DILexicalBlockFile(scope: !1659, file: !77, discriminator: 4)
!1673 = !DILocation(line: 343, column: 3, scope: !1654)
!1674 = !DILocalVariable(name: "c", scope: !1675, file: !77, line: 345, type: !550)
!1675 = distinct !DILexicalBlock(scope: !1659, file: !77, line: 344, column: 5)
!1676 = !DILocation(line: 345, column: 21, scope: !1675)
!1677 = !DILocalVariable(name: "esc", scope: !1675, file: !77, line: 346, type: !550)
!1678 = !DILocation(line: 346, column: 21, scope: !1675)
!1679 = !DILocalVariable(name: "is_right_quote", scope: !1675, file: !77, line: 347, type: !38)
!1680 = !DILocation(line: 347, column: 12, scope: !1675)
!1681 = !DILocation(line: 349, column: 11, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1675, file: !77, line: 349, column: 11)
!1683 = !DILocation(line: 350, column: 11, scope: !1682)
!1684 = !DILocation(line: 350, column: 14, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1682, file: !77, discriminator: 1)
!1686 = !DILocation(line: 351, column: 11, scope: !1682)
!1687 = !DILocation(line: 351, column: 15, scope: !1685)
!1688 = !DILocation(line: 351, column: 19, scope: !1682)
!1689 = !DILocation(line: 351, column: 17, scope: !1682)
!1690 = !DILocation(line: 352, column: 19, scope: !1682)
!1691 = !DILocation(line: 352, column: 27, scope: !1682)
!1692 = !DILocation(line: 352, column: 39, scope: !1682)
!1693 = !DILocation(line: 352, column: 46, scope: !1685)
!1694 = !DILocation(line: 352, column: 44, scope: !1682)
!1695 = !DILocation(line: 356, column: 40, scope: !1682)
!1696 = !DILocation(line: 356, column: 32, scope: !1682)
!1697 = !DILocation(line: 356, column: 30, scope: !1682)
!1698 = !DILocation(line: 356, column: 48, scope: !1682)
!1699 = !DILocation(line: 352, column: 15, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1701, file: !77, discriminator: 3)
!1701 = !DILexicalBlockFile(scope: !1682, file: !77, discriminator: 2)
!1702 = !DILocation(line: 357, column: 11, scope: !1682)
!1703 = !DILocation(line: 357, column: 22, scope: !1685)
!1704 = !DILocation(line: 357, column: 28, scope: !1682)
!1705 = !DILocation(line: 357, column: 26, scope: !1682)
!1706 = !DILocation(line: 357, column: 31, scope: !1682)
!1707 = !DILocation(line: 357, column: 45, scope: !1682)
!1708 = !DILocation(line: 357, column: 14, scope: !1682)
!1709 = !DILocation(line: 357, column: 63, scope: !1682)
!1710 = !DILocation(line: 349, column: 11, scope: !1675)
!1711 = !DILocation(line: 359, column: 15, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !77, line: 359, column: 15)
!1713 = distinct !DILexicalBlock(scope: !1682, file: !77, line: 358, column: 9)
!1714 = !DILocation(line: 359, column: 15, scope: !1713)
!1715 = !DILocation(line: 360, column: 13, scope: !1712)
!1716 = !DILocation(line: 361, column: 26, scope: !1713)
!1717 = !DILocation(line: 362, column: 9, scope: !1713)
!1718 = !DILocation(line: 364, column: 15, scope: !1675)
!1719 = !DILocation(line: 364, column: 11, scope: !1675)
!1720 = !DILocation(line: 364, column: 9, scope: !1675)
!1721 = !DILocation(line: 365, column: 15, scope: !1675)
!1722 = !DILocation(line: 365, column: 7, scope: !1675)
!1723 = !DILocation(line: 368, column: 15, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !77, line: 368, column: 15)
!1725 = distinct !DILexicalBlock(scope: !1675, file: !77, line: 366, column: 9)
!1726 = !DILocation(line: 368, column: 15, scope: !1725)
!1727 = !DILocation(line: 370, column: 19, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !77, line: 370, column: 19)
!1729 = distinct !DILexicalBlock(scope: !1724, file: !77, line: 369, column: 13)
!1730 = !DILocation(line: 370, column: 19, scope: !1729)
!1731 = !DILocation(line: 371, column: 17, scope: !1728)
!1732 = !DILocation(line: 372, column: 15, scope: !1729)
!1733 = !DILocation(line: 372, column: 15, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1735, file: !77, discriminator: 1)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !77, line: 372, column: 15)
!1736 = distinct !DILexicalBlock(scope: !1729, file: !77, line: 372, column: 15)
!1737 = !DILocation(line: 372, column: 15, scope: !1736)
!1738 = !DILocation(line: 372, column: 15, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1735, file: !77, discriminator: 2)
!1740 = !DILocation(line: 372, column: 15, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1742, file: !77, discriminator: 4)
!1742 = !DILexicalBlockFile(scope: !1736, file: !77, discriminator: 3)
!1743 = !DILocation(line: 378, column: 19, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1729, file: !77, line: 378, column: 19)
!1745 = !DILocation(line: 378, column: 21, scope: !1744)
!1746 = !DILocation(line: 378, column: 27, scope: !1744)
!1747 = !DILocation(line: 378, column: 25, scope: !1744)
!1748 = !DILocation(line: 378, column: 35, scope: !1744)
!1749 = !DILocation(line: 378, column: 49, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1744, file: !77, discriminator: 1)
!1751 = !DILocation(line: 378, column: 51, scope: !1744)
!1752 = !DILocation(line: 378, column: 45, scope: !1744)
!1753 = !DILocation(line: 378, column: 42, scope: !1744)
!1754 = !DILocation(line: 378, column: 56, scope: !1744)
!1755 = !DILocation(line: 378, column: 63, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1744, file: !77, discriminator: 2)
!1757 = !DILocation(line: 378, column: 65, scope: !1744)
!1758 = !DILocation(line: 378, column: 59, scope: !1744)
!1759 = !DILocation(line: 378, column: 70, scope: !1744)
!1760 = !DILocation(line: 378, column: 19, scope: !1729)
!1761 = !DILocation(line: 380, column: 19, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1744, file: !77, line: 379, column: 17)
!1763 = !DILocation(line: 380, column: 19, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1765, file: !77, discriminator: 1)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !77, line: 380, column: 19)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !77, line: 380, column: 19)
!1767 = !DILocation(line: 380, column: 19, scope: !1766)
!1768 = !DILocation(line: 380, column: 19, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1765, file: !77, discriminator: 2)
!1770 = !DILocation(line: 380, column: 19, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1772, file: !77, discriminator: 4)
!1772 = !DILexicalBlockFile(scope: !1766, file: !77, discriminator: 3)
!1773 = !DILocation(line: 381, column: 19, scope: !1762)
!1774 = !DILocation(line: 381, column: 19, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1776, file: !77, discriminator: 1)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !77, line: 381, column: 19)
!1777 = distinct !DILexicalBlock(scope: !1762, file: !77, line: 381, column: 19)
!1778 = !DILocation(line: 381, column: 19, scope: !1777)
!1779 = !DILocation(line: 381, column: 19, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1776, file: !77, discriminator: 2)
!1781 = !DILocation(line: 381, column: 19, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1783, file: !77, discriminator: 4)
!1783 = !DILexicalBlockFile(scope: !1777, file: !77, discriminator: 3)
!1784 = !DILocation(line: 382, column: 17, scope: !1762)
!1785 = !DILocation(line: 383, column: 17, scope: !1729)
!1786 = !DILocation(line: 388, column: 13, scope: !1729)
!1787 = !DILocation(line: 389, column: 20, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1724, file: !77, line: 389, column: 20)
!1789 = !DILocation(line: 389, column: 26, scope: !1788)
!1790 = !DILocation(line: 389, column: 20, scope: !1724)
!1791 = !DILocation(line: 390, column: 13, scope: !1788)
!1792 = !DILocation(line: 391, column: 11, scope: !1725)
!1793 = !DILocation(line: 394, column: 19, scope: !1725)
!1794 = !DILocation(line: 394, column: 11, scope: !1725)
!1795 = !DILocation(line: 397, column: 19, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !77, line: 397, column: 19)
!1797 = distinct !DILexicalBlock(scope: !1725, file: !77, line: 395, column: 13)
!1798 = !DILocation(line: 397, column: 19, scope: !1797)
!1799 = !DILocation(line: 398, column: 17, scope: !1796)
!1800 = !DILocation(line: 399, column: 15, scope: !1797)
!1801 = !DILocation(line: 402, column: 20, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1797, file: !77, line: 402, column: 19)
!1803 = !DILocation(line: 402, column: 26, scope: !1802)
!1804 = !DILocation(line: 403, column: 19, scope: !1802)
!1805 = !DILocation(line: 403, column: 22, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1802, file: !77, discriminator: 1)
!1807 = !DILocation(line: 403, column: 24, scope: !1802)
!1808 = !DILocation(line: 403, column: 30, scope: !1802)
!1809 = !DILocation(line: 403, column: 28, scope: !1802)
!1810 = !DILocation(line: 403, column: 38, scope: !1802)
!1811 = !DILocation(line: 403, column: 45, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1802, file: !77, discriminator: 2)
!1813 = !DILocation(line: 403, column: 47, scope: !1802)
!1814 = !DILocation(line: 403, column: 41, scope: !1802)
!1815 = !DILocation(line: 403, column: 52, scope: !1802)
!1816 = !DILocation(line: 402, column: 19, scope: !1797)
!1817 = !DILocation(line: 404, column: 29, scope: !1802)
!1818 = !DILocation(line: 404, column: 31, scope: !1802)
!1819 = !DILocation(line: 404, column: 25, scope: !1802)
!1820 = !DILocation(line: 404, column: 17, scope: !1802)
!1821 = !DILocation(line: 411, column: 25, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !77, line: 411, column: 25)
!1823 = distinct !DILexicalBlock(scope: !1802, file: !77, line: 405, column: 19)
!1824 = !DILocation(line: 411, column: 25, scope: !1823)
!1825 = !DILocation(line: 412, column: 23, scope: !1822)
!1826 = !DILocation(line: 413, column: 29, scope: !1823)
!1827 = !DILocation(line: 413, column: 31, scope: !1823)
!1828 = !DILocation(line: 413, column: 25, scope: !1823)
!1829 = !DILocation(line: 413, column: 23, scope: !1823)
!1830 = !DILocation(line: 414, column: 23, scope: !1823)
!1831 = !DILocation(line: 415, column: 21, scope: !1823)
!1832 = !DILocation(line: 415, column: 21, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1834, file: !77, discriminator: 1)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !77, line: 415, column: 21)
!1835 = distinct !DILexicalBlock(scope: !1823, file: !77, line: 415, column: 21)
!1836 = !DILocation(line: 415, column: 21, scope: !1835)
!1837 = !DILocation(line: 415, column: 21, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1834, file: !77, discriminator: 2)
!1839 = !DILocation(line: 415, column: 21, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !77, discriminator: 4)
!1841 = !DILexicalBlockFile(scope: !1835, file: !77, discriminator: 3)
!1842 = !DILocation(line: 416, column: 21, scope: !1823)
!1843 = !DILocation(line: 416, column: 21, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1845, file: !77, discriminator: 1)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !77, line: 416, column: 21)
!1846 = distinct !DILexicalBlock(scope: !1823, file: !77, line: 416, column: 21)
!1847 = !DILocation(line: 416, column: 21, scope: !1846)
!1848 = !DILocation(line: 416, column: 21, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1845, file: !77, discriminator: 2)
!1850 = !DILocation(line: 416, column: 21, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1852, file: !77, discriminator: 4)
!1852 = !DILexicalBlockFile(scope: !1846, file: !77, discriminator: 3)
!1853 = !DILocation(line: 417, column: 21, scope: !1823)
!1854 = !DILocation(line: 417, column: 21, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1856, file: !77, discriminator: 1)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !77, line: 417, column: 21)
!1857 = distinct !DILexicalBlock(scope: !1823, file: !77, line: 417, column: 21)
!1858 = !DILocation(line: 417, column: 21, scope: !1857)
!1859 = !DILocation(line: 417, column: 21, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1856, file: !77, discriminator: 2)
!1861 = !DILocation(line: 417, column: 21, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1863, file: !77, discriminator: 4)
!1863 = !DILexicalBlockFile(scope: !1857, file: !77, discriminator: 3)
!1864 = !DILocation(line: 418, column: 21, scope: !1823)
!1865 = !DILocation(line: 418, column: 21, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1867, file: !77, discriminator: 1)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !77, line: 418, column: 21)
!1868 = distinct !DILexicalBlock(scope: !1823, file: !77, line: 418, column: 21)
!1869 = !DILocation(line: 418, column: 21, scope: !1868)
!1870 = !DILocation(line: 418, column: 21, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1867, file: !77, discriminator: 2)
!1872 = !DILocation(line: 418, column: 21, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1874, file: !77, discriminator: 4)
!1874 = !DILexicalBlockFile(scope: !1868, file: !77, discriminator: 3)
!1875 = !DILocation(line: 419, column: 21, scope: !1823)
!1876 = !DILocation(line: 422, column: 21, scope: !1823)
!1877 = !DILocation(line: 423, column: 19, scope: !1823)
!1878 = !DILocation(line: 424, column: 15, scope: !1797)
!1879 = !DILocation(line: 427, column: 15, scope: !1797)
!1880 = !DILocation(line: 429, column: 11, scope: !1725)
!1881 = !DILocation(line: 431, column: 24, scope: !1725)
!1882 = !DILocation(line: 431, column: 31, scope: !1725)
!1883 = !DILocation(line: 432, column: 24, scope: !1725)
!1884 = !DILocation(line: 432, column: 31, scope: !1725)
!1885 = !DILocation(line: 433, column: 24, scope: !1725)
!1886 = !DILocation(line: 433, column: 31, scope: !1725)
!1887 = !DILocation(line: 434, column: 24, scope: !1725)
!1888 = !DILocation(line: 434, column: 31, scope: !1725)
!1889 = !DILocation(line: 435, column: 24, scope: !1725)
!1890 = !DILocation(line: 435, column: 31, scope: !1725)
!1891 = !DILocation(line: 436, column: 24, scope: !1725)
!1892 = !DILocation(line: 436, column: 31, scope: !1725)
!1893 = !DILocation(line: 437, column: 24, scope: !1725)
!1894 = !DILocation(line: 437, column: 31, scope: !1725)
!1895 = !DILocation(line: 438, column: 26, scope: !1725)
!1896 = !DILocation(line: 438, column: 24, scope: !1725)
!1897 = !DILocation(line: 441, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1725, file: !77, line: 441, column: 15)
!1899 = !DILocation(line: 441, column: 33, scope: !1898)
!1900 = !DILocation(line: 441, column: 36, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1898, file: !77, discriminator: 1)
!1902 = !DILocation(line: 441, column: 55, scope: !1898)
!1903 = !DILocation(line: 441, column: 58, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1898, file: !77, discriminator: 3)
!1905 = !DILocation(line: 441, column: 15, scope: !1725)
!1906 = !DILocation(line: 442, column: 13, scope: !1898)
!1907 = !DILocation(line: 441, column: 58, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1909, file: !77, discriminator: 5)
!1909 = !DILexicalBlockFile(scope: !1910, file: !77, discriminator: 4)
!1910 = !DILexicalBlockFile(scope: !1898, file: !77, discriminator: 2)
!1911 = !DILocation(line: 445, column: 15, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1725, file: !77, line: 445, column: 15)
!1913 = !DILocation(line: 445, column: 29, scope: !1912)
!1914 = !DILocation(line: 446, column: 15, scope: !1912)
!1915 = !DILocation(line: 446, column: 18, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1912, file: !77, discriminator: 1)
!1917 = !DILocation(line: 445, column: 15, scope: !1725)
!1918 = !DILocation(line: 447, column: 13, scope: !1912)
!1919 = !DILocation(line: 446, column: 18, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1912, file: !77, discriminator: 2)
!1921 = !DILocation(line: 450, column: 15, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1725, file: !77, line: 450, column: 15)
!1923 = !DILocation(line: 450, column: 15, scope: !1725)
!1924 = !DILocation(line: 452, column: 19, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1922, file: !77, line: 451, column: 13)
!1926 = !DILocation(line: 452, column: 17, scope: !1925)
!1927 = !DILocation(line: 453, column: 15, scope: !1925)
!1928 = !DILocation(line: 455, column: 11, scope: !1725)
!1929 = !DILocation(line: 458, column: 18, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1725, file: !77, line: 458, column: 15)
!1931 = !DILocation(line: 458, column: 26, scope: !1930)
!1932 = !DILocation(line: 458, column: 15, scope: !1725)
!1933 = !DILocation(line: 458, column: 40, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1930, file: !77, discriminator: 1)
!1935 = !DILocation(line: 458, column: 47, scope: !1930)
!1936 = !DILocation(line: 458, column: 57, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1930, file: !77, discriminator: 2)
!1938 = !DILocation(line: 458, column: 65, scope: !1930)
!1939 = !DILocation(line: 459, column: 13, scope: !1930)
!1940 = !DILocation(line: 458, column: 69, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1942, file: !77, discriminator: 4)
!1942 = !DILexicalBlockFile(scope: !1930, file: !77, discriminator: 3)
!1943 = !DILocation(line: 462, column: 15, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1725, file: !77, line: 462, column: 15)
!1945 = !DILocation(line: 462, column: 17, scope: !1944)
!1946 = !DILocation(line: 462, column: 15, scope: !1725)
!1947 = !DILocation(line: 463, column: 13, scope: !1944)
!1948 = !DILocation(line: 462, column: 20, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1944, file: !77, discriminator: 1)
!1950 = !DILocation(line: 478, column: 15, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1725, file: !77, line: 478, column: 15)
!1952 = !DILocation(line: 478, column: 29, scope: !1951)
!1953 = !DILocation(line: 479, column: 15, scope: !1951)
!1954 = !DILocation(line: 479, column: 18, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1951, file: !77, discriminator: 1)
!1956 = !DILocation(line: 478, column: 15, scope: !1725)
!1957 = !DILocation(line: 480, column: 13, scope: !1951)
!1958 = !DILocation(line: 481, column: 11, scope: !1725)
!1959 = !DILocation(line: 484, column: 15, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1725, file: !77, line: 484, column: 15)
!1961 = !DILocation(line: 484, column: 29, scope: !1960)
!1962 = !DILocation(line: 484, column: 15, scope: !1725)
!1963 = !DILocation(line: 486, column: 19, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !77, line: 486, column: 19)
!1965 = distinct !DILexicalBlock(scope: !1960, file: !77, line: 485, column: 13)
!1966 = !DILocation(line: 486, column: 19, scope: !1965)
!1967 = !DILocation(line: 487, column: 17, scope: !1964)
!1968 = !DILocation(line: 488, column: 15, scope: !1965)
!1969 = !DILocation(line: 488, column: 15, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1971, file: !77, discriminator: 1)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !77, line: 488, column: 15)
!1972 = distinct !DILexicalBlock(scope: !1965, file: !77, line: 488, column: 15)
!1973 = !DILocation(line: 488, column: 15, scope: !1972)
!1974 = !DILocation(line: 488, column: 15, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1971, file: !77, discriminator: 2)
!1976 = !DILocation(line: 488, column: 15, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !77, discriminator: 4)
!1978 = !DILexicalBlockFile(scope: !1972, file: !77, discriminator: 3)
!1979 = !DILocation(line: 489, column: 15, scope: !1965)
!1980 = !DILocation(line: 489, column: 15, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1982, file: !77, discriminator: 1)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !77, line: 489, column: 15)
!1983 = distinct !DILexicalBlock(scope: !1965, file: !77, line: 489, column: 15)
!1984 = !DILocation(line: 489, column: 15, scope: !1983)
!1985 = !DILocation(line: 489, column: 15, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1982, file: !77, discriminator: 2)
!1987 = !DILocation(line: 489, column: 15, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1989, file: !77, discriminator: 4)
!1989 = !DILexicalBlockFile(scope: !1983, file: !77, discriminator: 3)
!1990 = !DILocation(line: 490, column: 15, scope: !1965)
!1991 = !DILocation(line: 490, column: 15, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1993, file: !77, discriminator: 1)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !77, line: 490, column: 15)
!1994 = distinct !DILexicalBlock(scope: !1965, file: !77, line: 490, column: 15)
!1995 = !DILocation(line: 490, column: 15, scope: !1994)
!1996 = !DILocation(line: 490, column: 15, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1993, file: !77, discriminator: 2)
!1998 = !DILocation(line: 490, column: 15, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !2000, file: !77, discriminator: 4)
!2000 = !DILexicalBlockFile(scope: !1994, file: !77, discriminator: 3)
!2001 = !DILocation(line: 491, column: 13, scope: !1965)
!2002 = !DILocation(line: 492, column: 11, scope: !1725)
!2003 = !DILocation(line: 516, column: 11, scope: !1725)
!2004 = !DILocalVariable(name: "m", scope: !2005, file: !77, line: 526, type: !112)
!2005 = distinct !DILexicalBlock(scope: !1725, file: !77, line: 524, column: 11)
!2006 = !DILocation(line: 526, column: 20, scope: !2005)
!2007 = !DILocalVariable(name: "printable", scope: !2005, file: !77, line: 528, type: !38)
!2008 = !DILocation(line: 528, column: 18, scope: !2005)
!2009 = !DILocation(line: 530, column: 17, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !77, line: 530, column: 17)
!2011 = !DILocation(line: 530, column: 17, scope: !2005)
!2012 = !DILocation(line: 532, column: 19, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !77, line: 531, column: 15)
!2014 = !DILocation(line: 533, column: 29, scope: !2013)
!2015 = !DILocation(line: 533, column: 41, scope: !2013)
!2016 = !DILocation(line: 533, column: 27, scope: !2013)
!2017 = !DILocation(line: 534, column: 15, scope: !2013)
!2018 = !DILocalVariable(name: "mbstate", scope: !2019, file: !77, line: 537, type: !2020)
!2019 = distinct !DILexicalBlock(scope: !2010, file: !77, line: 536, column: 15)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2021, line: 106, baseType: !2022)
!2021 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2021, line: 94, baseType: !2023)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, file: !2021, line: 82, size: 64, align: 32, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2023, file: !2021, line: 84, baseType: !47, size: 32, align: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2023, file: !2021, line: 93, baseType: !2027, size: 32, align: 32, offset: 32)
!2027 = !DICompositeType(tag: DW_TAG_union_type, scope: !2023, file: !2021, line: 85, size: 32, align: 32, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2027, file: !2021, line: 88, baseType: !132, size: 32, align: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2027, file: !2021, line: 92, baseType: !2031, size: 32, align: 8)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, align: 8, elements: !2032)
!2032 = !{!2033}
!2033 = !DISubrange(count: 4)
!2034 = !DILocation(line: 537, column: 27, scope: !2019)
!2035 = !DILocation(line: 538, column: 17, scope: !2019)
!2036 = !DILocation(line: 540, column: 19, scope: !2019)
!2037 = !DILocation(line: 541, column: 27, scope: !2019)
!2038 = !DILocation(line: 542, column: 21, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2019, file: !77, line: 542, column: 21)
!2040 = !DILocation(line: 542, column: 29, scope: !2039)
!2041 = !DILocation(line: 542, column: 21, scope: !2019)
!2042 = !DILocation(line: 543, column: 37, scope: !2039)
!2043 = !DILocation(line: 543, column: 29, scope: !2039)
!2044 = !DILocation(line: 543, column: 27, scope: !2039)
!2045 = !DILocation(line: 543, column: 19, scope: !2039)
!2046 = !DILocation(line: 545, column: 17, scope: !2019)
!2047 = !DILocalVariable(name: "w", scope: !2048, file: !77, line: 547, type: !2049)
!2048 = distinct !DILexicalBlock(scope: !2019, file: !77, line: 546, column: 19)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !113, line: 90, baseType: !47)
!2050 = !DILocation(line: 547, column: 29, scope: !2048)
!2051 = !DILocalVariable(name: "bytes", scope: !2048, file: !77, line: 548, type: !112)
!2052 = !DILocation(line: 548, column: 28, scope: !2048)
!2053 = !DILocation(line: 548, column: 54, scope: !2048)
!2054 = !DILocation(line: 548, column: 58, scope: !2048)
!2055 = !DILocation(line: 548, column: 56, scope: !2048)
!2056 = !DILocation(line: 548, column: 50, scope: !2048)
!2057 = !DILocation(line: 549, column: 45, scope: !2048)
!2058 = !DILocation(line: 549, column: 56, scope: !2048)
!2059 = !DILocation(line: 549, column: 60, scope: !2048)
!2060 = !DILocation(line: 549, column: 58, scope: !2048)
!2061 = !DILocation(line: 549, column: 53, scope: !2048)
!2062 = !DILocation(line: 548, column: 36, scope: !2048)
!2063 = !DILocation(line: 550, column: 25, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2048, file: !77, line: 550, column: 25)
!2065 = !DILocation(line: 550, column: 31, scope: !2064)
!2066 = !DILocation(line: 550, column: 25, scope: !2048)
!2067 = !DILocation(line: 551, column: 23, scope: !2064)
!2068 = !DILocation(line: 552, column: 30, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2064, file: !77, line: 552, column: 30)
!2070 = !DILocation(line: 552, column: 36, scope: !2069)
!2071 = !DILocation(line: 552, column: 30, scope: !2064)
!2072 = !DILocation(line: 554, column: 35, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !77, line: 553, column: 23)
!2074 = !DILocation(line: 555, column: 25, scope: !2073)
!2075 = !DILocation(line: 557, column: 30, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2069, file: !77, line: 557, column: 30)
!2077 = !DILocation(line: 557, column: 36, scope: !2076)
!2078 = !DILocation(line: 557, column: 30, scope: !2069)
!2079 = !DILocation(line: 559, column: 35, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !77, line: 558, column: 23)
!2081 = !DILocation(line: 560, column: 25, scope: !2080)
!2082 = !DILocation(line: 560, column: 32, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2084, file: !77, discriminator: 4)
!2084 = !DILexicalBlockFile(scope: !2080, file: !77, discriminator: 1)
!2085 = !DILocation(line: 560, column: 36, scope: !2080)
!2086 = !DILocation(line: 560, column: 34, scope: !2080)
!2087 = !DILocation(line: 560, column: 40, scope: !2080)
!2088 = !DILocation(line: 560, column: 38, scope: !2080)
!2089 = !DILocation(line: 560, column: 48, scope: !2080)
!2090 = !DILocation(line: 560, column: 55, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2080, file: !77, discriminator: 2)
!2092 = !DILocation(line: 560, column: 59, scope: !2080)
!2093 = !DILocation(line: 560, column: 57, scope: !2080)
!2094 = !DILocation(line: 560, column: 51, scope: !2080)
!2095 = !DILocation(line: 560, column: 25, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2080, file: !77, discriminator: 3)
!2097 = !DILocation(line: 561, column: 28, scope: !2080)
!2098 = !DILocation(line: 562, column: 25, scope: !2080)
!2099 = !DILocation(line: 570, column: 44, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !77, line: 570, column: 29)
!2101 = distinct !DILexicalBlock(scope: !2076, file: !77, line: 565, column: 23)
!2102 = !DILocation(line: 571, column: 29, scope: !2100)
!2103 = !DILocation(line: 571, column: 32, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2100, file: !77, discriminator: 1)
!2105 = !DILocation(line: 571, column: 46, scope: !2100)
!2106 = !DILocation(line: 570, column: 29, scope: !2101)
!2107 = !DILocalVariable(name: "j", scope: !2108, file: !77, line: 573, type: !112)
!2108 = distinct !DILexicalBlock(scope: !2100, file: !77, line: 572, column: 27)
!2109 = !DILocation(line: 573, column: 36, scope: !2108)
!2110 = !DILocation(line: 574, column: 36, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !77, line: 574, column: 29)
!2112 = !DILocation(line: 574, column: 34, scope: !2111)
!2113 = !DILocation(line: 574, column: 41, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !2115, file: !77, discriminator: 2)
!2115 = !DILexicalBlockFile(scope: !2116, file: !77, discriminator: 1)
!2116 = distinct !DILexicalBlock(scope: !2111, file: !77, line: 574, column: 29)
!2117 = !DILocation(line: 574, column: 45, scope: !2116)
!2118 = !DILocation(line: 574, column: 43, scope: !2116)
!2119 = !DILocation(line: 574, column: 29, scope: !2111)
!2120 = !DILocation(line: 575, column: 43, scope: !2116)
!2121 = !DILocation(line: 575, column: 47, scope: !2116)
!2122 = !DILocation(line: 575, column: 45, scope: !2116)
!2123 = !DILocation(line: 575, column: 51, scope: !2116)
!2124 = !DILocation(line: 575, column: 49, scope: !2116)
!2125 = !DILocation(line: 575, column: 39, scope: !2116)
!2126 = !DILocation(line: 575, column: 31, scope: !2116)
!2127 = !DILocation(line: 579, column: 35, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2116, file: !77, line: 576, column: 33)
!2129 = !DILocation(line: 582, column: 35, scope: !2128)
!2130 = !DILocation(line: 583, column: 33, scope: !2128)
!2131 = !DILocation(line: 574, column: 53, scope: !2116)
!2132 = !DILocation(line: 574, column: 29, scope: !2116)
!2133 = !DILocation(line: 584, column: 27, scope: !2108)
!2134 = !DILocation(line: 586, column: 41, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2101, file: !77, line: 586, column: 29)
!2136 = !DILocation(line: 586, column: 31, scope: !2135)
!2137 = !DILocation(line: 586, column: 29, scope: !2101)
!2138 = !DILocation(line: 587, column: 37, scope: !2135)
!2139 = !DILocation(line: 587, column: 27, scope: !2135)
!2140 = !DILocation(line: 588, column: 30, scope: !2101)
!2141 = !DILocation(line: 588, column: 27, scope: !2101)
!2142 = !DILocation(line: 590, column: 19, scope: !2048)
!2143 = !DILocation(line: 591, column: 26, scope: !2019)
!2144 = !DILocation(line: 591, column: 24, scope: !2019)
!2145 = !DILocation(line: 594, column: 21, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2005, file: !77, line: 594, column: 17)
!2147 = !DILocation(line: 594, column: 19, scope: !2146)
!2148 = !DILocation(line: 594, column: 23, scope: !2146)
!2149 = !DILocation(line: 594, column: 27, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2146, file: !77, discriminator: 1)
!2151 = !DILocation(line: 594, column: 45, scope: !2146)
!2152 = !DILocation(line: 594, column: 50, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2146, file: !77, discriminator: 2)
!2154 = !DILocation(line: 594, column: 17, scope: !2005)
!2155 = !DILocalVariable(name: "ilim", scope: !2156, file: !77, line: 598, type: !112)
!2156 = distinct !DILexicalBlock(scope: !2146, file: !77, line: 595, column: 15)
!2157 = !DILocation(line: 598, column: 24, scope: !2156)
!2158 = !DILocation(line: 598, column: 31, scope: !2156)
!2159 = !DILocation(line: 598, column: 35, scope: !2156)
!2160 = !DILocation(line: 598, column: 33, scope: !2156)
!2161 = !DILocation(line: 600, column: 17, scope: !2156)
!2162 = !DILocation(line: 602, column: 25, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !77, line: 602, column: 25)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !77, line: 601, column: 19)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !77, line: 600, column: 17)
!2166 = distinct !DILexicalBlock(scope: !2156, file: !77, line: 600, column: 17)
!2167 = !DILocation(line: 602, column: 43, scope: !2163)
!2168 = !DILocation(line: 602, column: 48, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2163, file: !77, discriminator: 1)
!2170 = !DILocation(line: 602, column: 25, scope: !2164)
!2171 = !DILocation(line: 604, column: 29, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !77, line: 604, column: 29)
!2173 = distinct !DILexicalBlock(scope: !2163, file: !77, line: 603, column: 23)
!2174 = !DILocation(line: 604, column: 29, scope: !2173)
!2175 = !DILocation(line: 605, column: 27, scope: !2172)
!2176 = !DILocation(line: 606, column: 25, scope: !2173)
!2177 = !DILocation(line: 606, column: 25, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2179, file: !77, discriminator: 1)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !77, line: 606, column: 25)
!2180 = distinct !DILexicalBlock(scope: !2173, file: !77, line: 606, column: 25)
!2181 = !DILocation(line: 606, column: 25, scope: !2180)
!2182 = !DILocation(line: 606, column: 25, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2179, file: !77, discriminator: 2)
!2184 = !DILocation(line: 606, column: 25, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2186, file: !77, discriminator: 4)
!2186 = !DILexicalBlockFile(scope: !2180, file: !77, discriminator: 3)
!2187 = !DILocation(line: 607, column: 25, scope: !2173)
!2188 = !DILocation(line: 607, column: 25, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2190, file: !77, discriminator: 1)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !77, line: 607, column: 25)
!2191 = distinct !DILexicalBlock(scope: !2173, file: !77, line: 607, column: 25)
!2192 = !DILocation(line: 607, column: 25, scope: !2191)
!2193 = !DILocation(line: 607, column: 25, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2190, file: !77, discriminator: 2)
!2195 = !DILocation(line: 607, column: 25, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2197, file: !77, discriminator: 4)
!2197 = !DILexicalBlockFile(scope: !2191, file: !77, discriminator: 3)
!2198 = !DILocation(line: 608, column: 25, scope: !2173)
!2199 = !DILocation(line: 608, column: 25, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2201, file: !77, discriminator: 1)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !77, line: 608, column: 25)
!2202 = distinct !DILexicalBlock(scope: !2173, file: !77, line: 608, column: 25)
!2203 = !DILocation(line: 608, column: 25, scope: !2202)
!2204 = !DILocation(line: 608, column: 25, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2201, file: !77, discriminator: 2)
!2206 = !DILocation(line: 608, column: 25, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2208, file: !77, discriminator: 4)
!2208 = !DILexicalBlockFile(scope: !2202, file: !77, discriminator: 3)
!2209 = !DILocation(line: 609, column: 36, scope: !2173)
!2210 = !DILocation(line: 609, column: 38, scope: !2173)
!2211 = !DILocation(line: 609, column: 33, scope: !2173)
!2212 = !DILocation(line: 609, column: 29, scope: !2173)
!2213 = !DILocation(line: 609, column: 27, scope: !2173)
!2214 = !DILocation(line: 610, column: 23, scope: !2173)
!2215 = !DILocation(line: 611, column: 30, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2163, file: !77, line: 611, column: 30)
!2217 = !DILocation(line: 611, column: 30, scope: !2163)
!2218 = !DILocation(line: 613, column: 25, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !77, line: 612, column: 23)
!2220 = !DILocation(line: 613, column: 25, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !2222, file: !77, discriminator: 1)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !77, line: 613, column: 25)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !77, line: 613, column: 25)
!2224 = !DILocation(line: 613, column: 25, scope: !2223)
!2225 = !DILocation(line: 613, column: 25, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2222, file: !77, discriminator: 2)
!2227 = !DILocation(line: 613, column: 25, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2229, file: !77, discriminator: 4)
!2229 = !DILexicalBlockFile(scope: !2223, file: !77, discriminator: 3)
!2230 = !DILocation(line: 614, column: 40, scope: !2219)
!2231 = !DILocation(line: 615, column: 23, scope: !2219)
!2232 = !DILocation(line: 616, column: 25, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2164, file: !77, line: 616, column: 25)
!2234 = !DILocation(line: 616, column: 33, scope: !2233)
!2235 = !DILocation(line: 616, column: 35, scope: !2233)
!2236 = !DILocation(line: 616, column: 30, scope: !2233)
!2237 = !DILocation(line: 616, column: 25, scope: !2164)
!2238 = !DILocation(line: 617, column: 23, scope: !2233)
!2239 = !DILocation(line: 618, column: 21, scope: !2164)
!2240 = !DILocation(line: 618, column: 21, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2242, file: !77, discriminator: 1)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !77, line: 618, column: 21)
!2243 = distinct !DILexicalBlock(scope: !2164, file: !77, line: 618, column: 21)
!2244 = !DILocation(line: 618, column: 21, scope: !2243)
!2245 = !DILocation(line: 618, column: 21, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2242, file: !77, discriminator: 2)
!2247 = !DILocation(line: 618, column: 21, scope: !2248)
!2248 = !DILexicalBlockFile(scope: !2249, file: !77, discriminator: 4)
!2249 = !DILexicalBlockFile(scope: !2243, file: !77, discriminator: 3)
!2250 = !DILocation(line: 619, column: 29, scope: !2164)
!2251 = !DILocation(line: 619, column: 25, scope: !2164)
!2252 = !DILocation(line: 619, column: 23, scope: !2164)
!2253 = !DILocation(line: 600, column: 17, scope: !2165)
!2254 = !DILocation(line: 622, column: 17, scope: !2156)
!2255 = !DILocation(line: 625, column: 9, scope: !1725)
!2256 = !DILocation(line: 627, column: 15, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !1675, file: !77, line: 627, column: 11)
!2258 = !DILocation(line: 627, column: 33, scope: !2257)
!2259 = !DILocation(line: 627, column: 36, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2257, file: !77, discriminator: 1)
!2261 = !DILocation(line: 628, column: 14, scope: !2257)
!2262 = !DILocation(line: 628, column: 17, scope: !2260)
!2263 = !DILocation(line: 629, column: 14, scope: !2257)
!2264 = !DILocation(line: 629, column: 33, scope: !2260)
!2265 = !DILocation(line: 629, column: 35, scope: !2257)
!2266 = !DILocation(line: 629, column: 17, scope: !2257)
!2267 = !DILocation(line: 629, column: 51, scope: !2257)
!2268 = !DILocation(line: 629, column: 53, scope: !2257)
!2269 = !DILocation(line: 629, column: 47, scope: !2257)
!2270 = !DILocation(line: 629, column: 65, scope: !2257)
!2271 = !DILocation(line: 630, column: 11, scope: !2257)
!2272 = !DILocation(line: 630, column: 15, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2257, file: !77, discriminator: 2)
!2274 = !DILocation(line: 627, column: 11, scope: !1675)
!2275 = !DILocation(line: 631, column: 9, scope: !2257)
!2276 = !DILocation(line: 630, column: 15, scope: !2260)
!2277 = !DILocation(line: 634, column: 11, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !1675, file: !77, line: 634, column: 11)
!2279 = !DILocation(line: 634, column: 11, scope: !1675)
!2280 = !DILocation(line: 635, column: 9, scope: !2278)
!2281 = !DILocation(line: 636, column: 7, scope: !1675)
!2282 = !DILocation(line: 636, column: 7, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2284, file: !77, discriminator: 1)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !77, line: 636, column: 7)
!2285 = distinct !DILexicalBlock(scope: !1675, file: !77, line: 636, column: 7)
!2286 = !DILocation(line: 636, column: 7, scope: !2285)
!2287 = !DILocation(line: 636, column: 7, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2284, file: !77, discriminator: 2)
!2289 = !DILocation(line: 636, column: 7, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2291, file: !77, discriminator: 4)
!2291 = !DILexicalBlockFile(scope: !2285, file: !77, discriminator: 3)
!2292 = !DILocation(line: 636, column: 7, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2285, file: !77, discriminator: 5)
!2294 = !DILocation(line: 639, column: 7, scope: !1675)
!2295 = !DILocation(line: 639, column: 7, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2297, file: !77, discriminator: 1)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !77, line: 639, column: 7)
!2298 = distinct !DILexicalBlock(scope: !1675, file: !77, line: 639, column: 7)
!2299 = !DILocation(line: 639, column: 7, scope: !2298)
!2300 = !DILocation(line: 639, column: 7, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2297, file: !77, discriminator: 2)
!2302 = !DILocation(line: 639, column: 7, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2304, file: !77, discriminator: 4)
!2304 = !DILexicalBlockFile(scope: !2298, file: !77, discriminator: 3)
!2305 = !DILocation(line: 640, column: 5, scope: !1675)
!2306 = !DILocation(line: 343, column: 75, scope: !1659)
!2307 = !DILocation(line: 343, column: 3, scope: !1659)
!2308 = !DILocation(line: 642, column: 7, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !1508, file: !77, line: 642, column: 7)
!2310 = !DILocation(line: 642, column: 11, scope: !2309)
!2311 = !DILocation(line: 642, column: 16, scope: !2309)
!2312 = !DILocation(line: 642, column: 19, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2309, file: !77, discriminator: 1)
!2314 = !DILocation(line: 642, column: 33, scope: !2309)
!2315 = !DILocation(line: 643, column: 7, scope: !2309)
!2316 = !DILocation(line: 643, column: 10, scope: !2313)
!2317 = !DILocation(line: 642, column: 7, scope: !1508)
!2318 = !DILocation(line: 644, column: 5, scope: !2309)
!2319 = !DILocation(line: 646, column: 7, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !1508, file: !77, line: 646, column: 7)
!2321 = !DILocation(line: 646, column: 20, scope: !2320)
!2322 = !DILocation(line: 646, column: 24, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2320, file: !77, discriminator: 1)
!2324 = !DILocation(line: 646, column: 7, scope: !1508)
!2325 = !DILocation(line: 647, column: 5, scope: !2320)
!2326 = !DILocation(line: 647, column: 13, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2328, file: !77, discriminator: 2)
!2328 = !DILexicalBlockFile(scope: !2329, file: !77, discriminator: 1)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !77, line: 647, column: 5)
!2330 = distinct !DILexicalBlock(scope: !2320, file: !77, line: 647, column: 5)
!2331 = !DILocation(line: 647, column: 12, scope: !2329)
!2332 = !DILocation(line: 647, column: 5, scope: !2330)
!2333 = !DILocation(line: 648, column: 7, scope: !2329)
!2334 = !DILocation(line: 648, column: 7, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2336, file: !77, discriminator: 1)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !77, line: 648, column: 7)
!2337 = distinct !DILexicalBlock(scope: !2329, file: !77, line: 648, column: 7)
!2338 = !DILocation(line: 648, column: 7, scope: !2337)
!2339 = !DILocation(line: 648, column: 7, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2336, file: !77, discriminator: 2)
!2341 = !DILocation(line: 648, column: 7, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2343, file: !77, discriminator: 4)
!2343 = !DILexicalBlockFile(scope: !2337, file: !77, discriminator: 3)
!2344 = !DILocation(line: 648, column: 7, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2337, file: !77, discriminator: 5)
!2346 = !DILocation(line: 647, column: 39, scope: !2329)
!2347 = !DILocation(line: 647, column: 5, scope: !2329)
!2348 = !DILocation(line: 648, column: 7, scope: !2330)
!2349 = !DILocation(line: 650, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !1508, file: !77, line: 650, column: 7)
!2351 = !DILocation(line: 650, column: 13, scope: !2350)
!2352 = !DILocation(line: 650, column: 11, scope: !2350)
!2353 = !DILocation(line: 650, column: 7, scope: !1508)
!2354 = !DILocation(line: 651, column: 12, scope: !2350)
!2355 = !DILocation(line: 651, column: 5, scope: !2350)
!2356 = !DILocation(line: 651, column: 17, scope: !2350)
!2357 = !DILocation(line: 652, column: 10, scope: !1508)
!2358 = !DILocation(line: 652, column: 3, scope: !1508)
!2359 = !DILocation(line: 657, column: 36, scope: !1508)
!2360 = !DILocation(line: 657, column: 44, scope: !1508)
!2361 = !DILocation(line: 657, column: 56, scope: !1508)
!2362 = !DILocation(line: 657, column: 61, scope: !1508)
!2363 = !DILocation(line: 658, column: 36, scope: !1508)
!2364 = !DILocation(line: 659, column: 36, scope: !1508)
!2365 = !DILocation(line: 659, column: 42, scope: !1508)
!2366 = !DILocation(line: 660, column: 36, scope: !1508)
!2367 = !DILocation(line: 660, column: 48, scope: !1508)
!2368 = !DILocation(line: 657, column: 10, scope: !1508)
!2369 = !DILocation(line: 657, column: 3, scope: !1508)
!2370 = !DILocation(line: 661, column: 1, scope: !1508)
!2371 = distinct !DISubprogram(name: "quotearg_n_options", scope: !77, file: !77, line: 766, type: !2372, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !11)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!71, !47, !6, !112, !1060}
!2374 = !DILocalVariable(name: "n", arg: 1, scope: !2371, file: !77, line: 766, type: !47)
!2375 = !DILocation(line: 766, column: 25, scope: !2371)
!2376 = !DILocalVariable(name: "arg", arg: 2, scope: !2371, file: !77, line: 766, type: !6)
!2377 = !DILocation(line: 766, column: 40, scope: !2371)
!2378 = !DILocalVariable(name: "argsize", arg: 3, scope: !2371, file: !77, line: 766, type: !112)
!2379 = !DILocation(line: 766, column: 52, scope: !2371)
!2380 = !DILocalVariable(name: "options", arg: 4, scope: !2371, file: !77, line: 767, type: !1060)
!2381 = !DILocation(line: 767, column: 51, scope: !2371)
!2382 = !DILocalVariable(name: "e", scope: !2371, file: !77, line: 769, type: !47)
!2383 = !DILocation(line: 769, column: 7, scope: !2371)
!2384 = !DILocation(line: 769, column: 11, scope: !2371)
!2385 = !DILocalVariable(name: "n0", scope: !2371, file: !77, line: 771, type: !132)
!2386 = !DILocation(line: 771, column: 16, scope: !2371)
!2387 = !DILocation(line: 771, column: 21, scope: !2371)
!2388 = !DILocalVariable(name: "sv", scope: !2371, file: !77, line: 772, type: !144)
!2389 = !DILocation(line: 772, column: 19, scope: !2371)
!2390 = !DILocation(line: 772, column: 24, scope: !2371)
!2391 = !DILocation(line: 774, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2371, file: !77, line: 774, column: 7)
!2393 = !DILocation(line: 774, column: 9, scope: !2392)
!2394 = !DILocation(line: 774, column: 7, scope: !2371)
!2395 = !DILocation(line: 775, column: 5, scope: !2392)
!2396 = !DILocation(line: 777, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2371, file: !77, line: 777, column: 7)
!2398 = !DILocation(line: 777, column: 17, scope: !2397)
!2399 = !DILocation(line: 777, column: 14, scope: !2397)
!2400 = !DILocation(line: 777, column: 7, scope: !2371)
!2401 = !DILocalVariable(name: "n1", scope: !2402, file: !77, line: 784, type: !112)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !77, line: 778, column: 5)
!2403 = !DILocation(line: 784, column: 14, scope: !2402)
!2404 = !DILocation(line: 784, column: 19, scope: !2402)
!2405 = !DILocation(line: 784, column: 22, scope: !2402)
!2406 = !DILocalVariable(name: "preallocated", scope: !2402, file: !77, line: 785, type: !38)
!2407 = !DILocation(line: 785, column: 12, scope: !2402)
!2408 = !DILocation(line: 785, column: 28, scope: !2402)
!2409 = !DILocation(line: 785, column: 31, scope: !2402)
!2410 = !DILocation(line: 787, column: 11, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2402, file: !77, line: 787, column: 11)
!2412 = !DILocation(line: 787, column: 11, scope: !2402)
!2413 = !DILocation(line: 788, column: 9, scope: !2411)
!2414 = !DILocation(line: 790, column: 32, scope: !2402)
!2415 = !DILocation(line: 790, column: 32, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2402, file: !77, discriminator: 1)
!2417 = !DILocation(line: 790, column: 54, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !2402, file: !77, discriminator: 2)
!2419 = !DILocation(line: 790, column: 32, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2421, file: !77, discriminator: 4)
!2421 = !DILexicalBlockFile(scope: !2402, file: !77, discriminator: 3)
!2422 = !DILocation(line: 790, column: 58, scope: !2402)
!2423 = !DILocation(line: 790, column: 61, scope: !2402)
!2424 = !DILocation(line: 790, column: 22, scope: !2402)
!2425 = !DILocation(line: 790, column: 20, scope: !2402)
!2426 = !DILocation(line: 790, column: 15, scope: !2402)
!2427 = !DILocation(line: 791, column: 11, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2402, file: !77, line: 791, column: 11)
!2429 = !DILocation(line: 791, column: 11, scope: !2402)
!2430 = !DILocation(line: 792, column: 10, scope: !2428)
!2431 = !DILocation(line: 792, column: 15, scope: !2428)
!2432 = !DILocation(line: 792, column: 9, scope: !2428)
!2433 = !DILocation(line: 793, column: 15, scope: !2402)
!2434 = !DILocation(line: 793, column: 20, scope: !2402)
!2435 = !DILocation(line: 793, column: 18, scope: !2402)
!2436 = !DILocation(line: 793, column: 7, scope: !2402)
!2437 = !DILocation(line: 793, column: 32, scope: !2402)
!2438 = !DILocation(line: 793, column: 37, scope: !2402)
!2439 = !DILocation(line: 793, column: 35, scope: !2402)
!2440 = !DILocation(line: 793, column: 45, scope: !2402)
!2441 = !DILocation(line: 794, column: 16, scope: !2402)
!2442 = !DILocation(line: 794, column: 14, scope: !2402)
!2443 = !DILocation(line: 795, column: 5, scope: !2402)
!2444 = !DILocalVariable(name: "size", scope: !2445, file: !77, line: 798, type: !112)
!2445 = distinct !DILexicalBlock(scope: !2371, file: !77, line: 797, column: 3)
!2446 = !DILocation(line: 798, column: 12, scope: !2445)
!2447 = !DILocation(line: 798, column: 22, scope: !2445)
!2448 = !DILocation(line: 798, column: 19, scope: !2445)
!2449 = !DILocation(line: 798, column: 25, scope: !2445)
!2450 = !DILocalVariable(name: "val", scope: !2445, file: !77, line: 799, type: !71)
!2451 = !DILocation(line: 799, column: 11, scope: !2445)
!2452 = !DILocation(line: 799, column: 20, scope: !2445)
!2453 = !DILocation(line: 799, column: 17, scope: !2445)
!2454 = !DILocation(line: 799, column: 23, scope: !2445)
!2455 = !DILocalVariable(name: "flags", scope: !2445, file: !77, line: 801, type: !47)
!2456 = !DILocation(line: 801, column: 9, scope: !2445)
!2457 = !DILocation(line: 801, column: 17, scope: !2445)
!2458 = !DILocation(line: 801, column: 26, scope: !2445)
!2459 = !DILocation(line: 801, column: 32, scope: !2445)
!2460 = !DILocalVariable(name: "qsize", scope: !2445, file: !77, line: 802, type: !112)
!2461 = !DILocation(line: 802, column: 12, scope: !2445)
!2462 = !DILocation(line: 802, column: 46, scope: !2445)
!2463 = !DILocation(line: 802, column: 51, scope: !2445)
!2464 = !DILocation(line: 802, column: 57, scope: !2445)
!2465 = !DILocation(line: 802, column: 62, scope: !2445)
!2466 = !DILocation(line: 803, column: 46, scope: !2445)
!2467 = !DILocation(line: 803, column: 55, scope: !2445)
!2468 = !DILocation(line: 803, column: 62, scope: !2445)
!2469 = !DILocation(line: 804, column: 46, scope: !2445)
!2470 = !DILocation(line: 804, column: 55, scope: !2445)
!2471 = !DILocation(line: 805, column: 46, scope: !2445)
!2472 = !DILocation(line: 805, column: 55, scope: !2445)
!2473 = !DILocation(line: 806, column: 46, scope: !2445)
!2474 = !DILocation(line: 806, column: 55, scope: !2445)
!2475 = !DILocation(line: 802, column: 20, scope: !2445)
!2476 = !DILocation(line: 808, column: 9, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2445, file: !77, line: 808, column: 9)
!2478 = !DILocation(line: 808, column: 17, scope: !2477)
!2479 = !DILocation(line: 808, column: 14, scope: !2477)
!2480 = !DILocation(line: 808, column: 9, scope: !2445)
!2481 = !DILocation(line: 810, column: 29, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2477, file: !77, line: 809, column: 7)
!2483 = !DILocation(line: 810, column: 35, scope: !2482)
!2484 = !DILocation(line: 810, column: 27, scope: !2482)
!2485 = !DILocation(line: 810, column: 12, scope: !2482)
!2486 = !DILocation(line: 810, column: 9, scope: !2482)
!2487 = !DILocation(line: 810, column: 15, scope: !2482)
!2488 = !DILocation(line: 810, column: 20, scope: !2482)
!2489 = !DILocation(line: 811, column: 13, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2482, file: !77, line: 811, column: 13)
!2491 = !DILocation(line: 811, column: 17, scope: !2490)
!2492 = !DILocation(line: 811, column: 13, scope: !2482)
!2493 = !DILocation(line: 812, column: 17, scope: !2490)
!2494 = !DILocation(line: 812, column: 11, scope: !2490)
!2495 = !DILocation(line: 813, column: 39, scope: !2482)
!2496 = !DILocation(line: 813, column: 27, scope: !2482)
!2497 = !DILocation(line: 813, column: 25, scope: !2482)
!2498 = !DILocation(line: 813, column: 12, scope: !2482)
!2499 = !DILocation(line: 813, column: 9, scope: !2482)
!2500 = !DILocation(line: 813, column: 15, scope: !2482)
!2501 = !DILocation(line: 813, column: 19, scope: !2482)
!2502 = !DILocation(line: 814, column: 35, scope: !2482)
!2503 = !DILocation(line: 814, column: 40, scope: !2482)
!2504 = !DILocation(line: 814, column: 46, scope: !2482)
!2505 = !DILocation(line: 814, column: 51, scope: !2482)
!2506 = !DILocation(line: 814, column: 60, scope: !2482)
!2507 = !DILocation(line: 814, column: 69, scope: !2482)
!2508 = !DILocation(line: 815, column: 35, scope: !2482)
!2509 = !DILocation(line: 815, column: 42, scope: !2482)
!2510 = !DILocation(line: 815, column: 51, scope: !2482)
!2511 = !DILocation(line: 816, column: 35, scope: !2482)
!2512 = !DILocation(line: 816, column: 44, scope: !2482)
!2513 = !DILocation(line: 817, column: 35, scope: !2482)
!2514 = !DILocation(line: 817, column: 44, scope: !2482)
!2515 = !DILocation(line: 814, column: 9, scope: !2482)
!2516 = !DILocation(line: 818, column: 7, scope: !2482)
!2517 = !DILocation(line: 820, column: 13, scope: !2445)
!2518 = !DILocation(line: 820, column: 5, scope: !2445)
!2519 = !DILocation(line: 820, column: 11, scope: !2445)
!2520 = !DILocation(line: 821, column: 12, scope: !2445)
!2521 = !DILocation(line: 821, column: 5, scope: !2445)
!2522 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !77, file: !77, line: 179, type: !2523, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !11)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!126, !79}
!2525 = !DILocalVariable(name: "style", arg: 1, scope: !2522, file: !77, line: 179, type: !79)
!2526 = !DILocation(line: 179, column: 48, scope: !2522)
!2527 = !DILocalVariable(name: "o", scope: !2522, file: !77, line: 181, type: !126)
!2528 = !DILocation(line: 181, column: 26, scope: !2522)
!2529 = !DILocation(line: 182, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2522, file: !77, line: 182, column: 7)
!2531 = !DILocation(line: 182, column: 13, scope: !2530)
!2532 = !DILocation(line: 182, column: 7, scope: !2522)
!2533 = !DILocation(line: 183, column: 5, scope: !2530)
!2534 = !DILocation(line: 184, column: 13, scope: !2522)
!2535 = !DILocation(line: 184, column: 5, scope: !2522)
!2536 = !DILocation(line: 184, column: 11, scope: !2522)
!2537 = !DILocation(line: 185, column: 10, scope: !2522)
!2538 = !DILocation(line: 185, column: 3, scope: !2522)
!2539 = distinct !DISubprogram(name: "gettext_quote", scope: !77, file: !77, line: 193, type: !2540, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !11)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!6, !6, !79}
!2542 = !DILocalVariable(name: "msgid", arg: 1, scope: !2539, file: !77, line: 193, type: !6)
!2543 = !DILocation(line: 193, column: 28, scope: !2539)
!2544 = !DILocalVariable(name: "s", arg: 2, scope: !2539, file: !77, line: 193, type: !79)
!2545 = !DILocation(line: 193, column: 54, scope: !2539)
!2546 = !DILocalVariable(name: "translation", scope: !2539, file: !77, line: 195, type: !6)
!2547 = !DILocation(line: 195, column: 15, scope: !2539)
!2548 = !DILocation(line: 195, column: 29, scope: !2539)
!2549 = !DILocalVariable(name: "locale_code", scope: !2539, file: !77, line: 196, type: !6)
!2550 = !DILocation(line: 196, column: 15, scope: !2539)
!2551 = !DILocation(line: 198, column: 7, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2539, file: !77, line: 198, column: 7)
!2553 = !DILocation(line: 198, column: 22, scope: !2552)
!2554 = !DILocation(line: 198, column: 19, scope: !2552)
!2555 = !DILocation(line: 198, column: 7, scope: !2539)
!2556 = !DILocation(line: 199, column: 12, scope: !2552)
!2557 = !DILocation(line: 199, column: 5, scope: !2552)
!2558 = !DILocation(line: 219, column: 17, scope: !2539)
!2559 = !DILocation(line: 219, column: 15, scope: !2539)
!2560 = !DILocation(line: 220, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2539, file: !77, line: 220, column: 7)
!2562 = !DILocation(line: 220, column: 7, scope: !2539)
!2563 = !DILocation(line: 221, column: 12, scope: !2561)
!2564 = !DILocation(line: 221, column: 21, scope: !2561)
!2565 = !DILocation(line: 221, column: 5, scope: !2561)
!2566 = !DILocation(line: 222, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2539, file: !77, line: 222, column: 7)
!2568 = !DILocation(line: 222, column: 7, scope: !2539)
!2569 = !DILocation(line: 223, column: 12, scope: !2567)
!2570 = !DILocation(line: 223, column: 21, scope: !2567)
!2571 = !DILocation(line: 223, column: 5, scope: !2567)
!2572 = !DILocation(line: 225, column: 11, scope: !2539)
!2573 = !DILocation(line: 225, column: 13, scope: !2539)
!2574 = !DILocation(line: 225, column: 3, scope: !2539)
!2575 = !DILocation(line: 226, column: 1, scope: !2539)
!2576 = distinct !DISubprogram(name: "version_etc_arn", scope: !520, file: !520, line: 62, type: !2577, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !519, retainedNodes: !11)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !2579, !6, !6, !6, !2631, !112}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64, align: 64)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !806, line: 48, baseType: !2581)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2582, line: 245, size: 1728, align: 64, elements: !2583)
!2582 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!2583 = !{!2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2604, !2605, !2606, !2607, !2611, !2612, !2614, !2616, !2619, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2581, file: !2582, line: 246, baseType: !47, size: 32, align: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2581, file: !2582, line: 251, baseType: !71, size: 64, align: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2581, file: !2582, line: 252, baseType: !71, size: 64, align: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2581, file: !2582, line: 253, baseType: !71, size: 64, align: 64, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2581, file: !2582, line: 254, baseType: !71, size: 64, align: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2581, file: !2582, line: 255, baseType: !71, size: 64, align: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2581, file: !2582, line: 256, baseType: !71, size: 64, align: 64, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2581, file: !2582, line: 257, baseType: !71, size: 64, align: 64, offset: 448)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2581, file: !2582, line: 258, baseType: !71, size: 64, align: 64, offset: 512)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2581, file: !2582, line: 260, baseType: !71, size: 64, align: 64, offset: 576)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2581, file: !2582, line: 261, baseType: !71, size: 64, align: 64, offset: 640)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2581, file: !2582, line: 262, baseType: !71, size: 64, align: 64, offset: 704)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2581, file: !2582, line: 264, baseType: !2597, size: 64, align: 64, offset: 768)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64, align: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2582, line: 160, size: 192, align: 64, elements: !2599)
!2599 = !{!2600, !2601, !2603}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2598, file: !2582, line: 161, baseType: !2597, size: 64, align: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2598, file: !2582, line: 162, baseType: !2602, size: 64, align: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64, align: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2598, file: !2582, line: 166, baseType: !47, size: 32, align: 32, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2581, file: !2582, line: 266, baseType: !2602, size: 64, align: 64, offset: 832)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2581, file: !2582, line: 268, baseType: !47, size: 32, align: 32, offset: 896)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2581, file: !2582, line: 272, baseType: !47, size: 32, align: 32, offset: 928)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2581, file: !2582, line: 274, baseType: !2608, size: 64, align: 64, offset: 960)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2609, line: 131, baseType: !2610)
!2609 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/gbalats/Downloads/coreutils-8.24/obj-clang")
!2610 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2581, file: !2582, line: 278, baseType: !115, size: 16, align: 16, offset: 1024)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2581, file: !2582, line: 279, baseType: !2613, size: 8, align: 8, offset: 1040)
!2613 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2581, file: !2582, line: 280, baseType: !2615, size: 8, align: 8, offset: 1048)
!2615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, align: 8, elements: !818)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2581, file: !2582, line: 284, baseType: !2617, size: 64, align: 64, offset: 1088)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64, align: 64)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2582, line: 154, baseType: null)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2581, file: !2582, line: 293, baseType: !2620, size: 64, align: 64, offset: 1152)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2609, line: 132, baseType: !2610)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2581, file: !2582, line: 302, baseType: !13, size: 64, align: 64, offset: 1216)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2581, file: !2582, line: 303, baseType: !13, size: 64, align: 64, offset: 1280)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2581, file: !2582, line: 304, baseType: !13, size: 64, align: 64, offset: 1344)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2581, file: !2582, line: 305, baseType: !13, size: 64, align: 64, offset: 1408)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2581, file: !2582, line: 306, baseType: !112, size: 64, align: 64, offset: 1472)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2581, file: !2582, line: 308, baseType: !47, size: 32, align: 32, offset: 1536)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2581, file: !2582, line: 310, baseType: !2628, size: 160, align: 8, offset: 1568)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, align: 8, elements: !2629)
!2629 = !{!2630}
!2630 = !DISubrange(count: 20)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!2632 = !DILocalVariable(name: "stream", arg: 1, scope: !2576, file: !520, line: 62, type: !2579)
!2633 = !DILocation(line: 62, column: 24, scope: !2576)
!2634 = !DILocalVariable(name: "command_name", arg: 2, scope: !2576, file: !520, line: 63, type: !6)
!2635 = !DILocation(line: 63, column: 30, scope: !2576)
!2636 = !DILocalVariable(name: "package", arg: 3, scope: !2576, file: !520, line: 63, type: !6)
!2637 = !DILocation(line: 63, column: 56, scope: !2576)
!2638 = !DILocalVariable(name: "version", arg: 4, scope: !2576, file: !520, line: 64, type: !6)
!2639 = !DILocation(line: 64, column: 30, scope: !2576)
!2640 = !DILocalVariable(name: "authors", arg: 5, scope: !2576, file: !520, line: 65, type: !2631)
!2641 = !DILocation(line: 65, column: 39, scope: !2576)
!2642 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2576, file: !520, line: 65, type: !112)
!2643 = !DILocation(line: 65, column: 55, scope: !2576)
!2644 = !DILocation(line: 67, column: 7, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2576, file: !520, line: 67, column: 7)
!2646 = !DILocation(line: 67, column: 7, scope: !2576)
!2647 = !DILocation(line: 68, column: 14, scope: !2645)
!2648 = !DILocation(line: 68, column: 38, scope: !2645)
!2649 = !DILocation(line: 68, column: 52, scope: !2645)
!2650 = !DILocation(line: 68, column: 61, scope: !2645)
!2651 = !DILocation(line: 68, column: 5, scope: !2645)
!2652 = !DILocation(line: 70, column: 14, scope: !2645)
!2653 = !DILocation(line: 70, column: 33, scope: !2645)
!2654 = !DILocation(line: 70, column: 42, scope: !2645)
!2655 = !DILocation(line: 70, column: 5, scope: !2645)
!2656 = !DILocation(line: 84, column: 12, scope: !2576)
!2657 = !DILocation(line: 84, column: 43, scope: !2576)
!2658 = !DILocation(line: 84, column: 3, scope: !2576)
!2659 = !DILocation(line: 86, column: 3, scope: !2576)
!2660 = !DILocation(line: 95, column: 11, scope: !2576)
!2661 = !DILocation(line: 95, column: 3, scope: !2576)
!2662 = !DILocation(line: 99, column: 7, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2576, file: !520, line: 96, column: 5)
!2664 = !DILocation(line: 102, column: 16, scope: !2663)
!2665 = !DILocation(line: 102, column: 24, scope: !2663)
!2666 = !DILocation(line: 102, column: 47, scope: !2663)
!2667 = !DILocation(line: 102, column: 7, scope: !2663)
!2668 = !DILocation(line: 103, column: 7, scope: !2663)
!2669 = !DILocation(line: 106, column: 16, scope: !2663)
!2670 = !DILocation(line: 106, column: 24, scope: !2663)
!2671 = !DILocation(line: 106, column: 54, scope: !2663)
!2672 = !DILocation(line: 106, column: 66, scope: !2663)
!2673 = !DILocation(line: 106, column: 7, scope: !2663)
!2674 = !DILocation(line: 107, column: 7, scope: !2663)
!2675 = !DILocation(line: 110, column: 16, scope: !2663)
!2676 = !DILocation(line: 110, column: 24, scope: !2663)
!2677 = !DILocation(line: 111, column: 16, scope: !2663)
!2678 = !DILocation(line: 111, column: 28, scope: !2663)
!2679 = !DILocation(line: 111, column: 40, scope: !2663)
!2680 = !DILocation(line: 110, column: 7, scope: !2663)
!2681 = !DILocation(line: 112, column: 7, scope: !2663)
!2682 = !DILocation(line: 117, column: 16, scope: !2663)
!2683 = !DILocation(line: 117, column: 24, scope: !2663)
!2684 = !DILocation(line: 118, column: 16, scope: !2663)
!2685 = !DILocation(line: 118, column: 28, scope: !2663)
!2686 = !DILocation(line: 118, column: 40, scope: !2663)
!2687 = !DILocation(line: 118, column: 52, scope: !2663)
!2688 = !DILocation(line: 117, column: 7, scope: !2663)
!2689 = !DILocation(line: 119, column: 7, scope: !2663)
!2690 = !DILocation(line: 124, column: 16, scope: !2663)
!2691 = !DILocation(line: 124, column: 24, scope: !2663)
!2692 = !DILocation(line: 125, column: 16, scope: !2663)
!2693 = !DILocation(line: 125, column: 28, scope: !2663)
!2694 = !DILocation(line: 125, column: 40, scope: !2663)
!2695 = !DILocation(line: 125, column: 52, scope: !2663)
!2696 = !DILocation(line: 125, column: 64, scope: !2663)
!2697 = !DILocation(line: 124, column: 7, scope: !2663)
!2698 = !DILocation(line: 126, column: 7, scope: !2663)
!2699 = !DILocation(line: 131, column: 16, scope: !2663)
!2700 = !DILocation(line: 131, column: 24, scope: !2663)
!2701 = !DILocation(line: 132, column: 16, scope: !2663)
!2702 = !DILocation(line: 132, column: 28, scope: !2663)
!2703 = !DILocation(line: 132, column: 40, scope: !2663)
!2704 = !DILocation(line: 132, column: 52, scope: !2663)
!2705 = !DILocation(line: 132, column: 64, scope: !2663)
!2706 = !DILocation(line: 133, column: 16, scope: !2663)
!2707 = !DILocation(line: 131, column: 7, scope: !2663)
!2708 = !DILocation(line: 134, column: 7, scope: !2663)
!2709 = !DILocation(line: 139, column: 16, scope: !2663)
!2710 = !DILocation(line: 139, column: 24, scope: !2663)
!2711 = !DILocation(line: 140, column: 16, scope: !2663)
!2712 = !DILocation(line: 140, column: 28, scope: !2663)
!2713 = !DILocation(line: 140, column: 40, scope: !2663)
!2714 = !DILocation(line: 140, column: 52, scope: !2663)
!2715 = !DILocation(line: 140, column: 64, scope: !2663)
!2716 = !DILocation(line: 141, column: 16, scope: !2663)
!2717 = !DILocation(line: 141, column: 28, scope: !2663)
!2718 = !DILocation(line: 139, column: 7, scope: !2663)
!2719 = !DILocation(line: 142, column: 7, scope: !2663)
!2720 = !DILocation(line: 147, column: 16, scope: !2663)
!2721 = !DILocation(line: 147, column: 24, scope: !2663)
!2722 = !DILocation(line: 149, column: 17, scope: !2663)
!2723 = !DILocation(line: 149, column: 29, scope: !2663)
!2724 = !DILocation(line: 149, column: 41, scope: !2663)
!2725 = !DILocation(line: 149, column: 53, scope: !2663)
!2726 = !DILocation(line: 149, column: 65, scope: !2663)
!2727 = !DILocation(line: 150, column: 17, scope: !2663)
!2728 = !DILocation(line: 150, column: 29, scope: !2663)
!2729 = !DILocation(line: 150, column: 41, scope: !2663)
!2730 = !DILocation(line: 147, column: 7, scope: !2663)
!2731 = !DILocation(line: 151, column: 7, scope: !2663)
!2732 = !DILocation(line: 156, column: 16, scope: !2663)
!2733 = !DILocation(line: 156, column: 24, scope: !2663)
!2734 = !DILocation(line: 158, column: 16, scope: !2663)
!2735 = !DILocation(line: 158, column: 28, scope: !2663)
!2736 = !DILocation(line: 158, column: 40, scope: !2663)
!2737 = !DILocation(line: 158, column: 52, scope: !2663)
!2738 = !DILocation(line: 158, column: 64, scope: !2663)
!2739 = !DILocation(line: 159, column: 16, scope: !2663)
!2740 = !DILocation(line: 159, column: 28, scope: !2663)
!2741 = !DILocation(line: 159, column: 40, scope: !2663)
!2742 = !DILocation(line: 159, column: 52, scope: !2663)
!2743 = !DILocation(line: 156, column: 7, scope: !2663)
!2744 = !DILocation(line: 160, column: 7, scope: !2663)
!2745 = !DILocation(line: 167, column: 16, scope: !2663)
!2746 = !DILocation(line: 167, column: 24, scope: !2663)
!2747 = !DILocation(line: 169, column: 17, scope: !2663)
!2748 = !DILocation(line: 169, column: 29, scope: !2663)
!2749 = !DILocation(line: 169, column: 41, scope: !2663)
!2750 = !DILocation(line: 169, column: 53, scope: !2663)
!2751 = !DILocation(line: 169, column: 65, scope: !2663)
!2752 = !DILocation(line: 170, column: 17, scope: !2663)
!2753 = !DILocation(line: 170, column: 29, scope: !2663)
!2754 = !DILocation(line: 170, column: 41, scope: !2663)
!2755 = !DILocation(line: 170, column: 53, scope: !2663)
!2756 = !DILocation(line: 167, column: 7, scope: !2663)
!2757 = !DILocation(line: 171, column: 7, scope: !2663)
!2758 = !DILocation(line: 173, column: 1, scope: !2576)
!2759 = distinct !DISubprogram(name: "version_etc_ar", scope: !520, file: !520, line: 180, type: !2760, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !519, retainedNodes: !11)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{null, !2579, !6, !6, !6, !2631}
!2762 = !DILocalVariable(name: "stream", arg: 1, scope: !2759, file: !520, line: 180, type: !2579)
!2763 = !DILocation(line: 180, column: 23, scope: !2759)
!2764 = !DILocalVariable(name: "command_name", arg: 2, scope: !2759, file: !520, line: 181, type: !6)
!2765 = !DILocation(line: 181, column: 29, scope: !2759)
!2766 = !DILocalVariable(name: "package", arg: 3, scope: !2759, file: !520, line: 181, type: !6)
!2767 = !DILocation(line: 181, column: 55, scope: !2759)
!2768 = !DILocalVariable(name: "version", arg: 4, scope: !2759, file: !520, line: 182, type: !6)
!2769 = !DILocation(line: 182, column: 29, scope: !2759)
!2770 = !DILocalVariable(name: "authors", arg: 5, scope: !2759, file: !520, line: 182, type: !2631)
!2771 = !DILocation(line: 182, column: 59, scope: !2759)
!2772 = !DILocalVariable(name: "n_authors", scope: !2759, file: !520, line: 184, type: !112)
!2773 = !DILocation(line: 184, column: 10, scope: !2759)
!2774 = !DILocation(line: 186, column: 18, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2759, file: !520, line: 186, column: 3)
!2776 = !DILocation(line: 186, column: 8, scope: !2775)
!2777 = !DILocation(line: 186, column: 31, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2779, file: !520, discriminator: 4)
!2779 = !DILexicalBlockFile(scope: !2780, file: !520, discriminator: 1)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !520, line: 186, column: 3)
!2781 = !DILocation(line: 186, column: 23, scope: !2780)
!2782 = !DILocation(line: 186, column: 3, scope: !2775)
!2783 = !DILocation(line: 186, column: 3, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !2775, file: !520, discriminator: 2)
!2785 = !DILocation(line: 186, column: 52, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !2780, file: !520, discriminator: 3)
!2787 = !DILocation(line: 186, column: 3, scope: !2780)
!2788 = !DILocation(line: 188, column: 20, scope: !2759)
!2789 = !DILocation(line: 188, column: 28, scope: !2759)
!2790 = !DILocation(line: 188, column: 42, scope: !2759)
!2791 = !DILocation(line: 188, column: 51, scope: !2759)
!2792 = !DILocation(line: 188, column: 60, scope: !2759)
!2793 = !DILocation(line: 188, column: 69, scope: !2759)
!2794 = !DILocation(line: 188, column: 3, scope: !2759)
!2795 = !DILocation(line: 189, column: 1, scope: !2759)
!2796 = distinct !DISubprogram(name: "version_etc_va", scope: !520, file: !520, line: 196, type: !2797, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !519, retainedNodes: !11)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !2579, !6, !6, !6, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64, align: 64)
!2800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !520, line: 189, baseType: !2801)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !520, line: 189, size: 192, align: 64, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2806}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2801, file: !520, line: 189, baseType: !132, size: 32, align: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2801, file: !520, line: 189, baseType: !132, size: 32, align: 32, offset: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2801, file: !520, line: 189, baseType: !13, size: 64, align: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2801, file: !520, line: 189, baseType: !13, size: 64, align: 64, offset: 128)
!2807 = !DILocalVariable(name: "stream", arg: 1, scope: !2796, file: !520, line: 196, type: !2579)
!2808 = !DILocation(line: 196, column: 23, scope: !2796)
!2809 = !DILocalVariable(name: "command_name", arg: 2, scope: !2796, file: !520, line: 197, type: !6)
!2810 = !DILocation(line: 197, column: 29, scope: !2796)
!2811 = !DILocalVariable(name: "package", arg: 3, scope: !2796, file: !520, line: 197, type: !6)
!2812 = !DILocation(line: 197, column: 55, scope: !2796)
!2813 = !DILocalVariable(name: "version", arg: 4, scope: !2796, file: !520, line: 198, type: !6)
!2814 = !DILocation(line: 198, column: 29, scope: !2796)
!2815 = !DILocalVariable(name: "authors", arg: 5, scope: !2796, file: !520, line: 198, type: !2799)
!2816 = !DILocation(line: 198, column: 46, scope: !2796)
!2817 = !DILocalVariable(name: "n_authors", scope: !2796, file: !520, line: 200, type: !112)
!2818 = !DILocation(line: 200, column: 10, scope: !2796)
!2819 = !DILocalVariable(name: "authtab", scope: !2796, file: !520, line: 201, type: !2820)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, align: 64, elements: !2821)
!2821 = !{!2822}
!2822 = !DISubrange(count: 10)
!2823 = !DILocation(line: 201, column: 15, scope: !2796)
!2824 = !DILocation(line: 203, column: 18, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2796, file: !520, line: 203, column: 3)
!2826 = !DILocation(line: 203, column: 8, scope: !2825)
!2827 = !DILocation(line: 204, column: 8, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !520, line: 203, column: 3)
!2829 = !DILocation(line: 204, column: 18, scope: !2828)
!2830 = !DILocation(line: 205, column: 10, scope: !2828)
!2831 = !DILocation(line: 205, column: 35, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2828, file: !520, discriminator: 1)
!2833 = !DILocation(line: 205, column: 35, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2828, file: !520, discriminator: 2)
!2835 = !DILocation(line: 205, column: 35, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2828, file: !520, discriminator: 3)
!2837 = !DILocation(line: 205, column: 35, scope: !2828)
!2838 = !DILocation(line: 205, column: 35, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2840, file: !520, discriminator: 5)
!2840 = !DILexicalBlockFile(scope: !2828, file: !520, discriminator: 4)
!2841 = !DILocation(line: 205, column: 22, scope: !2828)
!2842 = !DILocation(line: 205, column: 14, scope: !2828)
!2843 = !DILocation(line: 205, column: 33, scope: !2828)
!2844 = !DILocation(line: 205, column: 67, scope: !2828)
!2845 = !DILocation(line: 203, column: 3, scope: !2825)
!2846 = !DILocation(line: 203, column: 3, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !2825, file: !520, discriminator: 1)
!2848 = !DILocation(line: 206, column: 17, scope: !2828)
!2849 = !DILocation(line: 203, column: 3, scope: !2828)
!2850 = !DILocation(line: 208, column: 20, scope: !2796)
!2851 = !DILocation(line: 208, column: 28, scope: !2796)
!2852 = !DILocation(line: 208, column: 42, scope: !2796)
!2853 = !DILocation(line: 208, column: 51, scope: !2796)
!2854 = !DILocation(line: 209, column: 20, scope: !2796)
!2855 = !DILocation(line: 209, column: 29, scope: !2796)
!2856 = !DILocation(line: 208, column: 3, scope: !2796)
!2857 = !DILocation(line: 210, column: 1, scope: !2796)
!2858 = distinct !DISubprogram(name: "version_etc", scope: !520, file: !520, line: 227, type: !2859, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !519, retainedNodes: !11)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{null, !2579, !6, !6, !6, null}
!2861 = !DILocalVariable(name: "stream", arg: 1, scope: !2858, file: !520, line: 227, type: !2579)
!2862 = !DILocation(line: 227, column: 20, scope: !2858)
!2863 = !DILocalVariable(name: "command_name", arg: 2, scope: !2858, file: !520, line: 228, type: !6)
!2864 = !DILocation(line: 228, column: 26, scope: !2858)
!2865 = !DILocalVariable(name: "package", arg: 3, scope: !2858, file: !520, line: 228, type: !6)
!2866 = !DILocation(line: 228, column: 52, scope: !2858)
!2867 = !DILocalVariable(name: "version", arg: 4, scope: !2858, file: !520, line: 229, type: !6)
!2868 = !DILocation(line: 229, column: 26, scope: !2858)
!2869 = !DILocalVariable(name: "authors", scope: !2858, file: !520, line: 231, type: !2870)
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !806, line: 79, baseType: !2871)
!2871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !808, line: 50, baseType: !2872)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !520, line: 231, baseType: !2873)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2800, size: 192, align: 64, elements: !818)
!2874 = !DILocation(line: 231, column: 11, scope: !2858)
!2875 = !DILocation(line: 233, column: 3, scope: !2858)
!2876 = !DILocation(line: 234, column: 19, scope: !2858)
!2877 = !DILocation(line: 234, column: 27, scope: !2858)
!2878 = !DILocation(line: 234, column: 41, scope: !2858)
!2879 = !DILocation(line: 234, column: 50, scope: !2858)
!2880 = !DILocation(line: 234, column: 59, scope: !2858)
!2881 = !DILocation(line: 234, column: 3, scope: !2858)
!2882 = !DILocation(line: 235, column: 3, scope: !2858)
!2883 = !DILocation(line: 236, column: 1, scope: !2858)
!2884 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !520, file: !520, line: 239, type: !649, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !519, retainedNodes: !11)
!2885 = !DILocation(line: 245, column: 11, scope: !2884)
!2886 = !DILocation(line: 245, column: 3, scope: !2884)
!2887 = !DILocation(line: 251, column: 11, scope: !2884)
!2888 = !DILocation(line: 251, column: 3, scope: !2884)
!2889 = !DILocation(line: 256, column: 3, scope: !2884)
!2890 = !DILocation(line: 258, column: 1, scope: !2884)
!2891 = distinct !DISubprogram(name: "xnmalloc", scope: !530, file: !530, line: 104, type: !2892, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!13, !112, !112}
!2894 = !DILocalVariable(name: "n", arg: 1, scope: !2891, file: !530, line: 104, type: !112)
!2895 = !DILocation(line: 104, column: 18, scope: !2891)
!2896 = !DILocalVariable(name: "s", arg: 2, scope: !2891, file: !530, line: 104, type: !112)
!2897 = !DILocation(line: 104, column: 28, scope: !2891)
!2898 = !DILocation(line: 106, column: 7, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2891, file: !530, line: 106, column: 7)
!2900 = !DILocation(line: 106, column: 7, scope: !2891)
!2901 = !DILocation(line: 107, column: 5, scope: !2899)
!2902 = !DILocation(line: 108, column: 19, scope: !2891)
!2903 = !DILocation(line: 108, column: 23, scope: !2891)
!2904 = !DILocation(line: 108, column: 21, scope: !2891)
!2905 = !DILocation(line: 108, column: 10, scope: !2891)
!2906 = !DILocation(line: 108, column: 3, scope: !2891)
!2907 = distinct !DISubprogram(name: "xmalloc", scope: !527, file: !527, line: 39, type: !2908, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!2908 = !DISubroutineType(types: !544)
!2909 = !DILocalVariable(name: "n", arg: 1, scope: !2907, file: !527, line: 39, type: !112)
!2910 = !DILocation(line: 39, column: 17, scope: !2907)
!2911 = !DILocalVariable(name: "p", scope: !2907, file: !527, line: 41, type: !13)
!2912 = !DILocation(line: 41, column: 9, scope: !2907)
!2913 = !DILocation(line: 41, column: 21, scope: !2907)
!2914 = !DILocation(line: 41, column: 13, scope: !2907)
!2915 = !DILocation(line: 42, column: 8, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2907, file: !527, line: 42, column: 7)
!2917 = !DILocation(line: 42, column: 10, scope: !2916)
!2918 = !DILocation(line: 42, column: 13, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2916, file: !527, discriminator: 1)
!2920 = !DILocation(line: 42, column: 15, scope: !2916)
!2921 = !DILocation(line: 42, column: 7, scope: !2907)
!2922 = !DILocation(line: 43, column: 5, scope: !2916)
!2923 = !DILocation(line: 44, column: 10, scope: !2907)
!2924 = !DILocation(line: 44, column: 3, scope: !2907)
!2925 = distinct !DISubprogram(name: "xnrealloc", scope: !530, file: !530, line: 117, type: !2926, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!13, !13, !112, !112}
!2928 = !DILocalVariable(name: "p", arg: 1, scope: !2925, file: !530, line: 117, type: !13)
!2929 = !DILocation(line: 117, column: 18, scope: !2925)
!2930 = !DILocalVariable(name: "n", arg: 2, scope: !2925, file: !530, line: 117, type: !112)
!2931 = !DILocation(line: 117, column: 28, scope: !2925)
!2932 = !DILocalVariable(name: "s", arg: 3, scope: !2925, file: !530, line: 117, type: !112)
!2933 = !DILocation(line: 117, column: 38, scope: !2925)
!2934 = !DILocation(line: 119, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2925, file: !530, line: 119, column: 7)
!2936 = !DILocation(line: 119, column: 7, scope: !2925)
!2937 = !DILocation(line: 120, column: 5, scope: !2935)
!2938 = !DILocation(line: 121, column: 20, scope: !2925)
!2939 = !DILocation(line: 121, column: 23, scope: !2925)
!2940 = !DILocation(line: 121, column: 27, scope: !2925)
!2941 = !DILocation(line: 121, column: 25, scope: !2925)
!2942 = !DILocation(line: 121, column: 10, scope: !2925)
!2943 = !DILocation(line: 121, column: 3, scope: !2925)
!2944 = distinct !DISubprogram(name: "xrealloc", scope: !527, file: !527, line: 51, type: !2945, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!13, !13, !112}
!2947 = !DILocalVariable(name: "p", arg: 1, scope: !2944, file: !527, line: 51, type: !13)
!2948 = !DILocation(line: 51, column: 17, scope: !2944)
!2949 = !DILocalVariable(name: "n", arg: 2, scope: !2944, file: !527, line: 51, type: !112)
!2950 = !DILocation(line: 51, column: 27, scope: !2944)
!2951 = !DILocation(line: 53, column: 8, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2944, file: !527, line: 53, column: 7)
!2953 = !DILocation(line: 53, column: 10, scope: !2952)
!2954 = !DILocation(line: 53, column: 13, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2952, file: !527, discriminator: 1)
!2956 = !DILocation(line: 53, column: 7, scope: !2944)
!2957 = !DILocation(line: 57, column: 13, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2952, file: !527, line: 54, column: 5)
!2959 = !DILocation(line: 57, column: 7, scope: !2958)
!2960 = !DILocation(line: 58, column: 7, scope: !2958)
!2961 = !DILocation(line: 61, column: 16, scope: !2944)
!2962 = !DILocation(line: 61, column: 19, scope: !2944)
!2963 = !DILocation(line: 61, column: 7, scope: !2944)
!2964 = !DILocation(line: 61, column: 5, scope: !2944)
!2965 = !DILocation(line: 62, column: 8, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2944, file: !527, line: 62, column: 7)
!2967 = !DILocation(line: 62, column: 10, scope: !2966)
!2968 = !DILocation(line: 62, column: 13, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2966, file: !527, discriminator: 1)
!2970 = !DILocation(line: 62, column: 7, scope: !2944)
!2971 = !DILocation(line: 63, column: 5, scope: !2966)
!2972 = !DILocation(line: 64, column: 10, scope: !2944)
!2973 = !DILocation(line: 64, column: 3, scope: !2944)
!2974 = !DILocation(line: 65, column: 1, scope: !2944)
!2975 = !DILocalVariable(name: "p", arg: 1, scope: !531, file: !530, line: 179, type: !13)
!2976 = !DILocation(line: 179, column: 19, scope: !531)
!2977 = !DILocalVariable(name: "pn", arg: 2, scope: !531, file: !530, line: 179, type: !534)
!2978 = !DILocation(line: 179, column: 30, scope: !531)
!2979 = !DILocalVariable(name: "s", arg: 3, scope: !531, file: !530, line: 179, type: !112)
!2980 = !DILocation(line: 179, column: 41, scope: !531)
!2981 = !DILocalVariable(name: "n", scope: !531, file: !530, line: 181, type: !112)
!2982 = !DILocation(line: 181, column: 10, scope: !531)
!2983 = !DILocation(line: 181, column: 15, scope: !531)
!2984 = !DILocation(line: 181, column: 14, scope: !531)
!2985 = !DILocation(line: 183, column: 9, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !531, file: !530, line: 183, column: 7)
!2987 = !DILocation(line: 183, column: 7, scope: !531)
!2988 = !DILocation(line: 185, column: 13, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !530, line: 185, column: 11)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !530, line: 184, column: 5)
!2991 = !DILocation(line: 185, column: 11, scope: !2990)
!2992 = !DILocation(line: 193, column: 32, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !530, line: 186, column: 9)
!2994 = !DILocation(line: 193, column: 30, scope: !2993)
!2995 = !DILocation(line: 193, column: 13, scope: !2993)
!2996 = !DILocation(line: 194, column: 17, scope: !2993)
!2997 = !DILocation(line: 194, column: 16, scope: !2993)
!2998 = !DILocation(line: 194, column: 13, scope: !2993)
!2999 = !DILocation(line: 195, column: 9, scope: !2993)
!3000 = !DILocation(line: 196, column: 5, scope: !2990)
!3001 = !DILocation(line: 203, column: 33, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !530, line: 203, column: 11)
!3003 = distinct !DILexicalBlock(scope: !2986, file: !530, line: 198, column: 5)
!3004 = !DILocation(line: 203, column: 31, scope: !3002)
!3005 = !DILocation(line: 203, column: 38, scope: !3002)
!3006 = !DILocation(line: 203, column: 35, scope: !3002)
!3007 = !DILocation(line: 203, column: 11, scope: !3003)
!3008 = !DILocation(line: 204, column: 9, scope: !3002)
!3009 = !DILocation(line: 205, column: 12, scope: !3003)
!3010 = !DILocation(line: 205, column: 14, scope: !3003)
!3011 = !DILocation(line: 205, column: 18, scope: !3003)
!3012 = !DILocation(line: 205, column: 9, scope: !3003)
!3013 = !DILocation(line: 208, column: 9, scope: !531)
!3014 = !DILocation(line: 208, column: 4, scope: !531)
!3015 = !DILocation(line: 208, column: 7, scope: !531)
!3016 = !DILocation(line: 209, column: 20, scope: !531)
!3017 = !DILocation(line: 209, column: 23, scope: !531)
!3018 = !DILocation(line: 209, column: 27, scope: !531)
!3019 = !DILocation(line: 209, column: 25, scope: !531)
!3020 = !DILocation(line: 209, column: 10, scope: !531)
!3021 = !DILocation(line: 209, column: 3, scope: !531)
!3022 = distinct !DISubprogram(name: "xcharalloc", scope: !530, file: !530, line: 218, type: !3023, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!71, !112}
!3025 = !DILocalVariable(name: "n", arg: 1, scope: !3022, file: !530, line: 218, type: !112)
!3026 = !DILocation(line: 218, column: 20, scope: !3022)
!3027 = !DILocation(line: 220, column: 10, scope: !3022)
!3028 = !DILocation(line: 220, column: 3, scope: !3022)
!3029 = distinct !DISubprogram(name: "x2realloc", scope: !527, file: !527, line: 74, type: !3030, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!13, !13, !534}
!3032 = !DILocalVariable(name: "p", arg: 1, scope: !3029, file: !527, line: 74, type: !13)
!3033 = !DILocation(line: 74, column: 18, scope: !3029)
!3034 = !DILocalVariable(name: "pn", arg: 2, scope: !3029, file: !527, line: 74, type: !534)
!3035 = !DILocation(line: 74, column: 29, scope: !3029)
!3036 = !DILocation(line: 76, column: 22, scope: !3029)
!3037 = !DILocation(line: 76, column: 25, scope: !3029)
!3038 = !DILocation(line: 76, column: 10, scope: !3029)
!3039 = !DILocation(line: 76, column: 3, scope: !3029)
!3040 = distinct !DISubprogram(name: "xzalloc", scope: !527, file: !527, line: 84, type: !2908, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!3041 = !DILocalVariable(name: "s", arg: 1, scope: !3040, file: !527, line: 84, type: !112)
!3042 = !DILocation(line: 84, column: 17, scope: !3040)
!3043 = !DILocation(line: 86, column: 27, scope: !3040)
!3044 = !DILocation(line: 86, column: 18, scope: !3040)
!3045 = !DILocation(line: 86, column: 34, scope: !3040)
!3046 = !DILocation(line: 86, column: 10, scope: !3040)
!3047 = !DILocation(line: 86, column: 3, scope: !3040)
!3048 = distinct !DISubprogram(name: "xcalloc", scope: !527, file: !527, line: 93, type: !2892, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!3049 = !DILocalVariable(name: "n", arg: 1, scope: !3048, file: !527, line: 93, type: !112)
!3050 = !DILocation(line: 93, column: 17, scope: !3048)
!3051 = !DILocalVariable(name: "s", arg: 2, scope: !3048, file: !527, line: 93, type: !112)
!3052 = !DILocation(line: 93, column: 27, scope: !3048)
!3053 = !DILocalVariable(name: "p", scope: !3048, file: !527, line: 95, type: !13)
!3054 = !DILocation(line: 95, column: 9, scope: !3048)
!3055 = !DILocation(line: 101, column: 26, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3048, file: !527, line: 100, column: 7)
!3057 = !DILocation(line: 101, column: 29, scope: !3056)
!3058 = !DILocation(line: 101, column: 18, scope: !3056)
!3059 = !DILocation(line: 101, column: 16, scope: !3056)
!3060 = !DILocation(line: 100, column: 7, scope: !3048)
!3061 = !DILocation(line: 102, column: 5, scope: !3056)
!3062 = !DILocation(line: 103, column: 10, scope: !3048)
!3063 = !DILocation(line: 103, column: 3, scope: !3048)
!3064 = distinct !DISubprogram(name: "xmemdup", scope: !527, file: !527, line: 111, type: !3065, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!13, !3067, !112}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64, align: 64)
!3068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3069 = !DILocalVariable(name: "p", arg: 1, scope: !3064, file: !527, line: 111, type: !3067)
!3070 = !DILocation(line: 111, column: 22, scope: !3064)
!3071 = !DILocalVariable(name: "s", arg: 2, scope: !3064, file: !527, line: 111, type: !112)
!3072 = !DILocation(line: 111, column: 32, scope: !3064)
!3073 = !DILocation(line: 113, column: 27, scope: !3064)
!3074 = !DILocation(line: 113, column: 18, scope: !3064)
!3075 = !DILocation(line: 113, column: 31, scope: !3064)
!3076 = !DILocation(line: 113, column: 34, scope: !3064)
!3077 = !DILocation(line: 113, column: 10, scope: !3064)
!3078 = !DILocation(line: 113, column: 3, scope: !3064)
!3079 = distinct !DISubprogram(name: "xstrdup", scope: !527, file: !527, line: 119, type: !1268, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !11)
!3080 = !DILocalVariable(name: "string", arg: 1, scope: !3079, file: !527, line: 119, type: !6)
!3081 = !DILocation(line: 119, column: 22, scope: !3079)
!3082 = !DILocation(line: 121, column: 19, scope: !3079)
!3083 = !DILocation(line: 121, column: 35, scope: !3079)
!3084 = !DILocation(line: 121, column: 27, scope: !3079)
!3085 = !DILocation(line: 121, column: 43, scope: !3079)
!3086 = !DILocation(line: 121, column: 10, scope: !3079)
!3087 = !DILocation(line: 121, column: 3, scope: !3079)
!3088 = distinct !DISubprogram(name: "xalloc_die", scope: !539, file: !539, line: 32, type: !649, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !538, retainedNodes: !11)
!3089 = !DILocation(line: 34, column: 10, scope: !3088)
!3090 = !DILocation(line: 34, column: 33, scope: !3088)
!3091 = !DILocation(line: 34, column: 3, scope: !3088)
!3092 = !DILocation(line: 40, column: 3, scope: !3088)
!3093 = !DILocation(line: 41, column: 1, scope: !3088)
!3094 = distinct !DISubprogram(name: "rpl_calloc", scope: !541, file: !541, line: 42, type: !2892, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !540, retainedNodes: !11)
!3095 = !DILocalVariable(name: "n", arg: 1, scope: !3094, file: !541, line: 42, type: !112)
!3096 = !DILocation(line: 42, column: 20, scope: !3094)
!3097 = !DILocalVariable(name: "s", arg: 2, scope: !3094, file: !541, line: 42, type: !112)
!3098 = !DILocation(line: 42, column: 30, scope: !3094)
!3099 = !DILocalVariable(name: "result", scope: !3094, file: !541, line: 44, type: !13)
!3100 = !DILocation(line: 44, column: 9, scope: !3094)
!3101 = !DILocation(line: 47, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3094, file: !541, line: 47, column: 7)
!3103 = !DILocation(line: 47, column: 9, scope: !3102)
!3104 = !DILocation(line: 47, column: 14, scope: !3102)
!3105 = !DILocation(line: 47, column: 17, scope: !3106)
!3106 = !DILexicalBlockFile(scope: !3102, file: !541, discriminator: 1)
!3107 = !DILocation(line: 47, column: 19, scope: !3102)
!3108 = !DILocation(line: 47, column: 7, scope: !3094)
!3109 = !DILocation(line: 49, column: 9, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3102, file: !541, line: 48, column: 5)
!3111 = !DILocation(line: 50, column: 9, scope: !3110)
!3112 = !DILocation(line: 51, column: 5, scope: !3110)
!3113 = !DILocalVariable(name: "bytes", scope: !3114, file: !541, line: 56, type: !112)
!3114 = distinct !DILexicalBlock(scope: !3102, file: !541, line: 53, column: 5)
!3115 = !DILocation(line: 56, column: 14, scope: !3114)
!3116 = !DILocation(line: 56, column: 22, scope: !3114)
!3117 = !DILocation(line: 56, column: 26, scope: !3114)
!3118 = !DILocation(line: 56, column: 24, scope: !3114)
!3119 = !DILocation(line: 57, column: 11, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3114, file: !541, line: 57, column: 11)
!3121 = !DILocation(line: 57, column: 19, scope: !3120)
!3122 = !DILocation(line: 57, column: 17, scope: !3120)
!3123 = !DILocation(line: 57, column: 24, scope: !3120)
!3124 = !DILocation(line: 57, column: 21, scope: !3120)
!3125 = !DILocation(line: 57, column: 11, scope: !3114)
!3126 = !DILocation(line: 59, column: 11, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3120, file: !541, line: 58, column: 9)
!3128 = !DILocation(line: 59, column: 17, scope: !3127)
!3129 = !DILocation(line: 60, column: 11, scope: !3127)
!3130 = !DILocation(line: 65, column: 20, scope: !3094)
!3131 = !DILocation(line: 65, column: 23, scope: !3094)
!3132 = !DILocation(line: 65, column: 12, scope: !3094)
!3133 = !DILocation(line: 65, column: 10, scope: !3094)
!3134 = !DILocation(line: 72, column: 10, scope: !3094)
!3135 = !DILocation(line: 72, column: 3, scope: !3094)
!3136 = !DILocation(line: 73, column: 1, scope: !3094)
!3137 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !543, file: !543, line: 329, type: !3138, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !542, retainedNodes: !11)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!112, !3140, !6, !112, !3141}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64, align: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64, align: 64)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2021, line: 106, baseType: !3143)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2021, line: 94, baseType: !3144)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, file: !2021, line: 82, size: 64, align: 32, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3144, file: !2021, line: 84, baseType: !47, size: 32, align: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3144, file: !2021, line: 93, baseType: !3148, size: 32, align: 32, offset: 32)
!3148 = !DICompositeType(tag: DW_TAG_union_type, scope: !3144, file: !2021, line: 85, size: 32, align: 32, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3148, file: !2021, line: 88, baseType: !132, size: 32, align: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3148, file: !2021, line: 92, baseType: !2031, size: 32, align: 8)
!3152 = !DILocalVariable(name: "pwc", arg: 1, scope: !3137, file: !543, line: 329, type: !3140)
!3153 = !DILocation(line: 329, column: 23, scope: !3137)
!3154 = !DILocalVariable(name: "s", arg: 2, scope: !3137, file: !543, line: 329, type: !6)
!3155 = !DILocation(line: 329, column: 40, scope: !3137)
!3156 = !DILocalVariable(name: "n", arg: 3, scope: !3137, file: !543, line: 329, type: !112)
!3157 = !DILocation(line: 329, column: 50, scope: !3137)
!3158 = !DILocalVariable(name: "ps", arg: 4, scope: !3137, file: !543, line: 329, type: !3141)
!3159 = !DILocation(line: 329, column: 64, scope: !3137)
!3160 = !DILocation(line: 332, column: 7, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3137, file: !543, line: 332, column: 7)
!3162 = !DILocation(line: 332, column: 9, scope: !3161)
!3163 = !DILocation(line: 332, column: 7, scope: !3137)
!3164 = !DILocation(line: 334, column: 11, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3161, file: !543, line: 333, column: 5)
!3166 = !DILocation(line: 335, column: 9, scope: !3165)
!3167 = !DILocation(line: 336, column: 9, scope: !3165)
!3168 = !DILocation(line: 337, column: 5, scope: !3165)
!3169 = !DILocation(line: 341, column: 7, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3137, file: !543, line: 341, column: 7)
!3171 = !DILocation(line: 341, column: 9, scope: !3170)
!3172 = !DILocation(line: 341, column: 7, scope: !3137)
!3173 = !DILocation(line: 342, column: 5, scope: !3170)
!3174 = !DILocation(line: 402, column: 21, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3137, file: !543, line: 394, column: 3)
!3176 = !DILocation(line: 402, column: 26, scope: !3175)
!3177 = !DILocation(line: 402, column: 29, scope: !3175)
!3178 = !DILocation(line: 402, column: 32, scope: !3175)
!3179 = !DILocation(line: 402, column: 12, scope: !3175)
!3180 = !DILocation(line: 402, column: 5, scope: !3175)
!3181 = !DILocation(line: 405, column: 1, scope: !3137)
!3182 = distinct !DISubprogram(name: "c_strcasecmp", scope: !546, file: !546, line: 27, type: !3183, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !545, retainedNodes: !11)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!47, !6, !6}
!3185 = !DILocalVariable(name: "s1", arg: 1, scope: !3182, file: !546, line: 27, type: !6)
!3186 = !DILocation(line: 27, column: 27, scope: !3182)
!3187 = !DILocalVariable(name: "s2", arg: 2, scope: !3182, file: !546, line: 27, type: !6)
!3188 = !DILocation(line: 27, column: 43, scope: !3182)
!3189 = !DILocalVariable(name: "p1", scope: !3182, file: !546, line: 29, type: !548)
!3190 = !DILocation(line: 29, column: 33, scope: !3182)
!3191 = !DILocation(line: 29, column: 62, scope: !3182)
!3192 = !DILocalVariable(name: "p2", scope: !3182, file: !546, line: 30, type: !548)
!3193 = !DILocation(line: 30, column: 33, scope: !3182)
!3194 = !DILocation(line: 30, column: 62, scope: !3182)
!3195 = !DILocalVariable(name: "c1", scope: !3182, file: !546, line: 31, type: !550)
!3196 = !DILocation(line: 31, column: 17, scope: !3182)
!3197 = !DILocalVariable(name: "c2", scope: !3182, file: !546, line: 31, type: !550)
!3198 = !DILocation(line: 31, column: 21, scope: !3182)
!3199 = !DILocation(line: 33, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3182, file: !546, line: 33, column: 7)
!3201 = !DILocation(line: 33, column: 13, scope: !3200)
!3202 = !DILocation(line: 33, column: 10, scope: !3200)
!3203 = !DILocation(line: 33, column: 7, scope: !3182)
!3204 = !DILocation(line: 34, column: 5, scope: !3200)
!3205 = !DILocation(line: 36, column: 3, scope: !3182)
!3206 = !DILocation(line: 38, column: 24, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3182, file: !546, line: 37, column: 5)
!3208 = !DILocation(line: 38, column: 23, scope: !3207)
!3209 = !DILocation(line: 38, column: 12, scope: !3207)
!3210 = !DILocation(line: 38, column: 10, scope: !3207)
!3211 = !DILocation(line: 39, column: 24, scope: !3207)
!3212 = !DILocation(line: 39, column: 23, scope: !3207)
!3213 = !DILocation(line: 39, column: 12, scope: !3207)
!3214 = !DILocation(line: 39, column: 10, scope: !3207)
!3215 = !DILocation(line: 41, column: 11, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3207, file: !546, line: 41, column: 11)
!3217 = !DILocation(line: 41, column: 14, scope: !3216)
!3218 = !DILocation(line: 41, column: 11, scope: !3207)
!3219 = !DILocation(line: 42, column: 9, scope: !3216)
!3220 = !DILocation(line: 44, column: 7, scope: !3207)
!3221 = !DILocation(line: 45, column: 7, scope: !3207)
!3222 = !DILocation(line: 46, column: 5, scope: !3207)
!3223 = !DILocation(line: 47, column: 10, scope: !3182)
!3224 = !DILocation(line: 47, column: 16, scope: !3182)
!3225 = !DILocation(line: 47, column: 13, scope: !3182)
!3226 = !DILocation(line: 50, column: 12, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3182, file: !546, line: 49, column: 7)
!3228 = !DILocation(line: 50, column: 17, scope: !3227)
!3229 = !DILocation(line: 50, column: 15, scope: !3227)
!3230 = !DILocation(line: 50, column: 5, scope: !3227)
!3231 = !DILocation(line: 56, column: 1, scope: !3182)
!3232 = distinct !DISubprogram(name: "close_stream", scope: !552, file: !552, line: 56, type: !3233, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !551, retainedNodes: !11)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!47, !3235}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64, align: 64)
!3236 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !806, line: 48, baseType: !3237)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2582, line: 245, size: 1728, align: 64, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3237, file: !2582, line: 246, baseType: !47, size: 32, align: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3237, file: !2582, line: 251, baseType: !71, size: 64, align: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3237, file: !2582, line: 252, baseType: !71, size: 64, align: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3237, file: !2582, line: 253, baseType: !71, size: 64, align: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3237, file: !2582, line: 254, baseType: !71, size: 64, align: 64, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3237, file: !2582, line: 255, baseType: !71, size: 64, align: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3237, file: !2582, line: 256, baseType: !71, size: 64, align: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3237, file: !2582, line: 257, baseType: !71, size: 64, align: 64, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3237, file: !2582, line: 258, baseType: !71, size: 64, align: 64, offset: 512)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3237, file: !2582, line: 260, baseType: !71, size: 64, align: 64, offset: 576)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3237, file: !2582, line: 261, baseType: !71, size: 64, align: 64, offset: 640)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3237, file: !2582, line: 262, baseType: !71, size: 64, align: 64, offset: 704)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3237, file: !2582, line: 264, baseType: !3252, size: 64, align: 64, offset: 768)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64, align: 64)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2582, line: 160, size: 192, align: 64, elements: !3254)
!3254 = !{!3255, !3256, !3258}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3253, file: !2582, line: 161, baseType: !3252, size: 64, align: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3253, file: !2582, line: 162, baseType: !3257, size: 64, align: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64, align: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3253, file: !2582, line: 166, baseType: !47, size: 32, align: 32, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3237, file: !2582, line: 266, baseType: !3257, size: 64, align: 64, offset: 832)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3237, file: !2582, line: 268, baseType: !47, size: 32, align: 32, offset: 896)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3237, file: !2582, line: 272, baseType: !47, size: 32, align: 32, offset: 928)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3237, file: !2582, line: 274, baseType: !2608, size: 64, align: 64, offset: 960)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3237, file: !2582, line: 278, baseType: !115, size: 16, align: 16, offset: 1024)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3237, file: !2582, line: 279, baseType: !2613, size: 8, align: 8, offset: 1040)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3237, file: !2582, line: 280, baseType: !2615, size: 8, align: 8, offset: 1048)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3237, file: !2582, line: 284, baseType: !2617, size: 64, align: 64, offset: 1088)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3237, file: !2582, line: 293, baseType: !2620, size: 64, align: 64, offset: 1152)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3237, file: !2582, line: 302, baseType: !13, size: 64, align: 64, offset: 1216)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3237, file: !2582, line: 303, baseType: !13, size: 64, align: 64, offset: 1280)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3237, file: !2582, line: 304, baseType: !13, size: 64, align: 64, offset: 1344)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3237, file: !2582, line: 305, baseType: !13, size: 64, align: 64, offset: 1408)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3237, file: !2582, line: 306, baseType: !112, size: 64, align: 64, offset: 1472)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3237, file: !2582, line: 308, baseType: !47, size: 32, align: 32, offset: 1536)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3237, file: !2582, line: 310, baseType: !2628, size: 160, align: 8, offset: 1568)
!3275 = !DILocalVariable(name: "stream", arg: 1, scope: !3232, file: !552, line: 56, type: !3235)
!3276 = !DILocation(line: 56, column: 21, scope: !3232)
!3277 = !DILocalVariable(name: "some_pending", scope: !3232, file: !552, line: 58, type: !3278)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3279 = !DILocation(line: 58, column: 14, scope: !3232)
!3280 = !DILocation(line: 58, column: 42, scope: !3232)
!3281 = !DILocation(line: 58, column: 30, scope: !3232)
!3282 = !DILocation(line: 58, column: 50, scope: !3232)
!3283 = !DILocalVariable(name: "prev_fail", scope: !3232, file: !552, line: 59, type: !3278)
!3284 = !DILocation(line: 59, column: 14, scope: !3232)
!3285 = !DILocation(line: 59, column: 27, scope: !3232)
!3286 = !DILocation(line: 59, column: 43, scope: !3232)
!3287 = !DILocalVariable(name: "fclose_fail", scope: !3232, file: !552, line: 60, type: !3278)
!3288 = !DILocation(line: 60, column: 14, scope: !3232)
!3289 = !DILocation(line: 60, column: 37, scope: !3232)
!3290 = !DILocation(line: 60, column: 29, scope: !3232)
!3291 = !DILocation(line: 60, column: 45, scope: !3232)
!3292 = !DILocation(line: 70, column: 7, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3232, file: !552, line: 70, column: 7)
!3294 = !DILocation(line: 70, column: 17, scope: !3293)
!3295 = !DILocation(line: 70, column: 21, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3293, file: !552, discriminator: 1)
!3297 = !DILocation(line: 70, column: 33, scope: !3293)
!3298 = !DILocation(line: 70, column: 37, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3293, file: !552, discriminator: 2)
!3300 = !DILocation(line: 70, column: 50, scope: !3293)
!3301 = !DILocation(line: 70, column: 53, scope: !3302)
!3302 = !DILexicalBlockFile(scope: !3293, file: !552, discriminator: 3)
!3303 = !DILocation(line: 70, column: 59, scope: !3293)
!3304 = !DILocation(line: 70, column: 7, scope: !3232)
!3305 = !DILocation(line: 72, column: 13, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !552, line: 72, column: 11)
!3307 = distinct !DILexicalBlock(scope: !3293, file: !552, line: 71, column: 5)
!3308 = !DILocation(line: 72, column: 11, scope: !3307)
!3309 = !DILocation(line: 73, column: 9, scope: !3306)
!3310 = !DILocation(line: 73, column: 15, scope: !3306)
!3311 = !DILocation(line: 74, column: 7, scope: !3307)
!3312 = !DILocation(line: 77, column: 3, scope: !3232)
!3313 = !DILocation(line: 78, column: 1, scope: !3232)
!3314 = distinct !DISubprogram(name: "locale_charset", scope: !176, file: !176, line: 393, type: !3315, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !175, retainedNodes: !11)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!6}
!3317 = !DILocalVariable(name: "codeset", scope: !3314, file: !176, line: 395, type: !6)
!3318 = !DILocation(line: 395, column: 15, scope: !3314)
!3319 = !DILocalVariable(name: "aliases", scope: !3314, file: !176, line: 396, type: !6)
!3320 = !DILocation(line: 396, column: 15, scope: !3314)
!3321 = !DILocation(line: 403, column: 13, scope: !3314)
!3322 = !DILocation(line: 403, column: 11, scope: !3314)
!3323 = !DILocation(line: 584, column: 7, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3314, file: !176, line: 584, column: 7)
!3325 = !DILocation(line: 584, column: 15, scope: !3324)
!3326 = !DILocation(line: 584, column: 7, scope: !3314)
!3327 = !DILocation(line: 586, column: 13, scope: !3324)
!3328 = !DILocation(line: 586, column: 5, scope: !3324)
!3329 = !DILocation(line: 589, column: 18, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3314, file: !176, line: 589, column: 3)
!3331 = !DILocation(line: 589, column: 16, scope: !3330)
!3332 = !DILocation(line: 589, column: 8, scope: !3330)
!3333 = !DILocation(line: 590, column: 9, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3330, file: !176, line: 589, column: 3)
!3335 = !DILocation(line: 590, column: 8, scope: !3334)
!3336 = !DILocation(line: 590, column: 17, scope: !3334)
!3337 = !DILocation(line: 589, column: 3, scope: !3330)
!3338 = !DILocation(line: 592, column: 17, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3334, file: !176, line: 592, column: 9)
!3340 = !DILocation(line: 592, column: 26, scope: !3339)
!3341 = !DILocation(line: 592, column: 9, scope: !3339)
!3342 = !DILocation(line: 592, column: 35, scope: !3339)
!3343 = !DILocation(line: 593, column: 9, scope: !3339)
!3344 = !DILocation(line: 593, column: 13, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !3339, file: !176, discriminator: 1)
!3346 = !DILocation(line: 593, column: 24, scope: !3339)
!3347 = !DILocation(line: 593, column: 31, scope: !3339)
!3348 = !DILocation(line: 593, column: 34, scope: !3349)
!3349 = !DILexicalBlockFile(scope: !3339, file: !176, discriminator: 2)
!3350 = !DILocation(line: 593, column: 45, scope: !3339)
!3351 = !DILocation(line: 592, column: 9, scope: !3334)
!3352 = !DILocation(line: 595, column: 19, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3339, file: !176, line: 594, column: 7)
!3354 = !DILocation(line: 595, column: 37, scope: !3353)
!3355 = !DILocation(line: 595, column: 29, scope: !3353)
!3356 = !DILocation(line: 595, column: 27, scope: !3353)
!3357 = !DILocation(line: 595, column: 46, scope: !3353)
!3358 = !DILocation(line: 595, column: 17, scope: !3353)
!3359 = !DILocation(line: 596, column: 9, scope: !3353)
!3360 = !DILocation(line: 593, column: 52, scope: !3361)
!3361 = !DILexicalBlockFile(scope: !3339, file: !176, discriminator: 3)
!3362 = !DILocation(line: 591, column: 27, scope: !3334)
!3363 = !DILocation(line: 591, column: 19, scope: !3334)
!3364 = !DILocation(line: 591, column: 36, scope: !3334)
!3365 = !DILocation(line: 591, column: 16, scope: !3334)
!3366 = !DILocation(line: 591, column: 60, scope: !3334)
!3367 = !DILocation(line: 591, column: 52, scope: !3334)
!3368 = !DILocation(line: 591, column: 69, scope: !3334)
!3369 = !DILocation(line: 591, column: 49, scope: !3334)
!3370 = !DILocation(line: 589, column: 3, scope: !3334)
!3371 = !DILocation(line: 602, column: 7, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3314, file: !176, line: 602, column: 7)
!3373 = !DILocation(line: 602, column: 18, scope: !3372)
!3374 = !DILocation(line: 602, column: 7, scope: !3314)
!3375 = !DILocation(line: 603, column: 13, scope: !3372)
!3376 = !DILocation(line: 603, column: 5, scope: !3372)
!3377 = !DILocation(line: 612, column: 10, scope: !3314)
!3378 = !DILocation(line: 612, column: 3, scope: !3314)
!3379 = distinct !DISubprogram(name: "get_charset_aliases", scope: !176, file: !176, line: 124, type: !3315, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !175, retainedNodes: !11)
!3380 = !DILocalVariable(name: "cp", scope: !3379, file: !176, line: 126, type: !6)
!3381 = !DILocation(line: 126, column: 15, scope: !3379)
!3382 = !DILocation(line: 128, column: 8, scope: !3379)
!3383 = !DILocation(line: 128, column: 6, scope: !3379)
!3384 = !DILocation(line: 129, column: 7, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3379, file: !176, line: 129, column: 7)
!3386 = !DILocation(line: 129, column: 10, scope: !3385)
!3387 = !DILocation(line: 129, column: 7, scope: !3379)
!3388 = !DILocalVariable(name: "dir", scope: !3389, file: !176, line: 132, type: !6)
!3389 = distinct !DILexicalBlock(scope: !3385, file: !176, line: 130, column: 5)
!3390 = !DILocation(line: 132, column: 19, scope: !3389)
!3391 = !DILocalVariable(name: "base", scope: !3389, file: !176, line: 133, type: !6)
!3392 = !DILocation(line: 133, column: 19, scope: !3389)
!3393 = !DILocalVariable(name: "file_name", scope: !3389, file: !176, line: 134, type: !71)
!3394 = !DILocation(line: 134, column: 13, scope: !3389)
!3395 = !DILocation(line: 138, column: 13, scope: !3389)
!3396 = !DILocation(line: 138, column: 11, scope: !3389)
!3397 = !DILocation(line: 139, column: 11, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3389, file: !176, line: 139, column: 11)
!3399 = !DILocation(line: 139, column: 15, scope: !3398)
!3400 = !DILocation(line: 139, column: 23, scope: !3398)
!3401 = !DILocation(line: 139, column: 26, scope: !3402)
!3402 = !DILexicalBlockFile(scope: !3398, file: !176, discriminator: 1)
!3403 = !DILocation(line: 139, column: 33, scope: !3398)
!3404 = !DILocation(line: 139, column: 11, scope: !3389)
!3405 = !DILocation(line: 140, column: 13, scope: !3398)
!3406 = !DILocation(line: 140, column: 9, scope: !3398)
!3407 = !DILocalVariable(name: "dir_len", scope: !3408, file: !176, line: 144, type: !112)
!3408 = distinct !DILexicalBlock(scope: !3389, file: !176, line: 143, column: 7)
!3409 = !DILocation(line: 144, column: 16, scope: !3408)
!3410 = !DILocation(line: 144, column: 34, scope: !3408)
!3411 = !DILocation(line: 144, column: 26, scope: !3408)
!3412 = !DILocalVariable(name: "base_len", scope: !3408, file: !176, line: 145, type: !112)
!3413 = !DILocation(line: 145, column: 16, scope: !3408)
!3414 = !DILocation(line: 145, column: 35, scope: !3408)
!3415 = !DILocation(line: 145, column: 27, scope: !3408)
!3416 = !DILocalVariable(name: "add_slash", scope: !3408, file: !176, line: 146, type: !47)
!3417 = !DILocation(line: 146, column: 13, scope: !3408)
!3418 = !DILocation(line: 146, column: 26, scope: !3408)
!3419 = !DILocation(line: 146, column: 34, scope: !3408)
!3420 = !DILocation(line: 146, column: 38, scope: !3408)
!3421 = !DILocation(line: 146, column: 42, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !3408, file: !176, discriminator: 1)
!3423 = !DILocation(line: 146, column: 41, scope: !3408)
!3424 = !DILocation(line: 146, column: 38, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3408, file: !176, discriminator: 2)
!3426 = !DILocation(line: 147, column: 38, scope: !3408)
!3427 = !DILocation(line: 147, column: 48, scope: !3408)
!3428 = !DILocation(line: 147, column: 46, scope: !3408)
!3429 = !DILocation(line: 147, column: 60, scope: !3408)
!3430 = !DILocation(line: 147, column: 58, scope: !3408)
!3431 = !DILocation(line: 147, column: 69, scope: !3408)
!3432 = !DILocation(line: 147, column: 30, scope: !3408)
!3433 = !DILocation(line: 147, column: 19, scope: !3408)
!3434 = !DILocation(line: 148, column: 13, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3408, file: !176, line: 148, column: 13)
!3436 = !DILocation(line: 148, column: 23, scope: !3435)
!3437 = !DILocation(line: 148, column: 13, scope: !3408)
!3438 = !DILocation(line: 150, column: 21, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3435, file: !176, line: 149, column: 11)
!3440 = !DILocation(line: 150, column: 32, scope: !3439)
!3441 = !DILocation(line: 150, column: 37, scope: !3439)
!3442 = !DILocation(line: 150, column: 13, scope: !3439)
!3443 = !DILocation(line: 151, column: 17, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3439, file: !176, line: 151, column: 17)
!3445 = !DILocation(line: 151, column: 17, scope: !3439)
!3446 = !DILocation(line: 152, column: 25, scope: !3444)
!3447 = !DILocation(line: 152, column: 15, scope: !3444)
!3448 = !DILocation(line: 152, column: 34, scope: !3444)
!3449 = !DILocation(line: 153, column: 21, scope: !3439)
!3450 = !DILocation(line: 153, column: 33, scope: !3439)
!3451 = !DILocation(line: 153, column: 31, scope: !3439)
!3452 = !DILocation(line: 153, column: 43, scope: !3439)
!3453 = !DILocation(line: 153, column: 41, scope: !3439)
!3454 = !DILocation(line: 153, column: 54, scope: !3439)
!3455 = !DILocation(line: 153, column: 60, scope: !3439)
!3456 = !DILocation(line: 153, column: 69, scope: !3439)
!3457 = !DILocation(line: 153, column: 13, scope: !3439)
!3458 = !DILocation(line: 154, column: 11, scope: !3439)
!3459 = !DILocation(line: 157, column: 11, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3389, file: !176, line: 157, column: 11)
!3461 = !DILocation(line: 157, column: 21, scope: !3460)
!3462 = !DILocation(line: 157, column: 11, scope: !3389)
!3463 = !DILocation(line: 159, column: 12, scope: !3460)
!3464 = !DILocation(line: 159, column: 9, scope: !3460)
!3465 = !DILocalVariable(name: "fd", scope: !3466, file: !176, line: 162, type: !47)
!3466 = distinct !DILexicalBlock(scope: !3460, file: !176, line: 161, column: 9)
!3467 = !DILocation(line: 162, column: 15, scope: !3466)
!3468 = !DILocation(line: 171, column: 22, scope: !3466)
!3469 = !DILocation(line: 171, column: 16, scope: !3466)
!3470 = !DILocation(line: 171, column: 14, scope: !3466)
!3471 = !DILocation(line: 173, column: 15, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3466, file: !176, line: 173, column: 15)
!3473 = !DILocation(line: 173, column: 18, scope: !3472)
!3474 = !DILocation(line: 173, column: 15, scope: !3466)
!3475 = !DILocation(line: 175, column: 16, scope: !3472)
!3476 = !DILocation(line: 175, column: 13, scope: !3472)
!3477 = !DILocalVariable(name: "fp", scope: !3478, file: !176, line: 178, type: !3479)
!3478 = distinct !DILexicalBlock(scope: !3472, file: !176, line: 177, column: 13)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64, align: 64)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !806, line: 48, baseType: !3481)
!3481 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2582, line: 245, size: 1728, align: 64, elements: !3482)
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3481, file: !2582, line: 246, baseType: !47, size: 32, align: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3481, file: !2582, line: 251, baseType: !71, size: 64, align: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3481, file: !2582, line: 252, baseType: !71, size: 64, align: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3481, file: !2582, line: 253, baseType: !71, size: 64, align: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3481, file: !2582, line: 254, baseType: !71, size: 64, align: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3481, file: !2582, line: 255, baseType: !71, size: 64, align: 64, offset: 320)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3481, file: !2582, line: 256, baseType: !71, size: 64, align: 64, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3481, file: !2582, line: 257, baseType: !71, size: 64, align: 64, offset: 448)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3481, file: !2582, line: 258, baseType: !71, size: 64, align: 64, offset: 512)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3481, file: !2582, line: 260, baseType: !71, size: 64, align: 64, offset: 576)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3481, file: !2582, line: 261, baseType: !71, size: 64, align: 64, offset: 640)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3481, file: !2582, line: 262, baseType: !71, size: 64, align: 64, offset: 704)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3481, file: !2582, line: 264, baseType: !3496, size: 64, align: 64, offset: 768)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64, align: 64)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2582, line: 160, size: 192, align: 64, elements: !3498)
!3498 = !{!3499, !3500, !3502}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3497, file: !2582, line: 161, baseType: !3496, size: 64, align: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3497, file: !2582, line: 162, baseType: !3501, size: 64, align: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64, align: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3497, file: !2582, line: 166, baseType: !47, size: 32, align: 32, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3481, file: !2582, line: 266, baseType: !3501, size: 64, align: 64, offset: 832)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3481, file: !2582, line: 268, baseType: !47, size: 32, align: 32, offset: 896)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3481, file: !2582, line: 272, baseType: !47, size: 32, align: 32, offset: 928)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3481, file: !2582, line: 274, baseType: !2608, size: 64, align: 64, offset: 960)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3481, file: !2582, line: 278, baseType: !115, size: 16, align: 16, offset: 1024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3481, file: !2582, line: 279, baseType: !2613, size: 8, align: 8, offset: 1040)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3481, file: !2582, line: 280, baseType: !2615, size: 8, align: 8, offset: 1048)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3481, file: !2582, line: 284, baseType: !2617, size: 64, align: 64, offset: 1088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3481, file: !2582, line: 293, baseType: !2620, size: 64, align: 64, offset: 1152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3481, file: !2582, line: 302, baseType: !13, size: 64, align: 64, offset: 1216)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3481, file: !2582, line: 303, baseType: !13, size: 64, align: 64, offset: 1280)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3481, file: !2582, line: 304, baseType: !13, size: 64, align: 64, offset: 1344)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3481, file: !2582, line: 305, baseType: !13, size: 64, align: 64, offset: 1408)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3481, file: !2582, line: 306, baseType: !112, size: 64, align: 64, offset: 1472)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3481, file: !2582, line: 308, baseType: !47, size: 32, align: 32, offset: 1536)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3481, file: !2582, line: 310, baseType: !2628, size: 160, align: 8, offset: 1568)
!3519 = !DILocation(line: 178, column: 21, scope: !3478)
!3520 = !DILocation(line: 180, column: 28, scope: !3478)
!3521 = !DILocation(line: 180, column: 20, scope: !3478)
!3522 = !DILocation(line: 180, column: 18, scope: !3478)
!3523 = !DILocation(line: 181, column: 19, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3478, file: !176, line: 181, column: 19)
!3525 = !DILocation(line: 181, column: 22, scope: !3524)
!3526 = !DILocation(line: 181, column: 19, scope: !3478)
!3527 = !DILocation(line: 184, column: 26, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !176, line: 182, column: 17)
!3529 = !DILocation(line: 184, column: 19, scope: !3528)
!3530 = !DILocation(line: 185, column: 22, scope: !3528)
!3531 = !DILocation(line: 186, column: 17, scope: !3528)
!3532 = !DILocalVariable(name: "res_ptr", scope: !3533, file: !176, line: 190, type: !71)
!3533 = distinct !DILexicalBlock(scope: !3524, file: !176, line: 188, column: 17)
!3534 = !DILocation(line: 190, column: 25, scope: !3533)
!3535 = !DILocalVariable(name: "res_size", scope: !3533, file: !176, line: 191, type: !112)
!3536 = !DILocation(line: 191, column: 26, scope: !3533)
!3537 = !DILocation(line: 193, column: 19, scope: !3533)
!3538 = !DILocalVariable(name: "c", scope: !3539, file: !176, line: 195, type: !47)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !176, line: 194, column: 21)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !176, line: 193, column: 19)
!3541 = distinct !DILexicalBlock(scope: !3533, file: !176, line: 193, column: 19)
!3542 = !DILocation(line: 195, column: 27, scope: !3539)
!3543 = !DILocalVariable(name: "buf1", scope: !3539, file: !176, line: 196, type: !3544)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, align: 8, elements: !3545)
!3545 = !{!3546}
!3546 = !DISubrange(count: 51)
!3547 = !DILocation(line: 196, column: 28, scope: !3539)
!3548 = !DILocalVariable(name: "buf2", scope: !3539, file: !176, line: 197, type: !3544)
!3549 = !DILocation(line: 197, column: 28, scope: !3539)
!3550 = !DILocalVariable(name: "l1", scope: !3539, file: !176, line: 198, type: !112)
!3551 = !DILocation(line: 198, column: 30, scope: !3539)
!3552 = !DILocalVariable(name: "l2", scope: !3539, file: !176, line: 198, type: !112)
!3553 = !DILocation(line: 198, column: 34, scope: !3539)
!3554 = !DILocalVariable(name: "old_res_ptr", scope: !3539, file: !176, line: 199, type: !71)
!3555 = !DILocation(line: 199, column: 29, scope: !3539)
!3556 = !DILocation(line: 201, column: 33, scope: !3539)
!3557 = !DILocation(line: 201, column: 27, scope: !3539)
!3558 = !DILocation(line: 201, column: 25, scope: !3539)
!3559 = !DILocation(line: 202, column: 27, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3539, file: !176, line: 202, column: 27)
!3561 = !DILocation(line: 202, column: 29, scope: !3560)
!3562 = !DILocation(line: 202, column: 27, scope: !3539)
!3563 = !DILocation(line: 203, column: 25, scope: !3560)
!3564 = !DILocation(line: 204, column: 27, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3539, file: !176, line: 204, column: 27)
!3566 = !DILocation(line: 204, column: 29, scope: !3565)
!3567 = !DILocation(line: 204, column: 37, scope: !3565)
!3568 = !DILocation(line: 204, column: 40, scope: !3569)
!3569 = !DILexicalBlockFile(scope: !3565, file: !176, discriminator: 1)
!3570 = !DILocation(line: 204, column: 42, scope: !3565)
!3571 = !DILocation(line: 204, column: 49, scope: !3565)
!3572 = !DILocation(line: 204, column: 52, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3565, file: !176, discriminator: 2)
!3574 = !DILocation(line: 204, column: 54, scope: !3565)
!3575 = !DILocation(line: 204, column: 27, scope: !3539)
!3576 = !DILocation(line: 205, column: 25, scope: !3565)
!3577 = !DILocation(line: 206, column: 27, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3539, file: !176, line: 206, column: 27)
!3579 = !DILocation(line: 206, column: 29, scope: !3578)
!3580 = !DILocation(line: 206, column: 27, scope: !3539)
!3581 = !DILocation(line: 209, column: 27, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3578, file: !176, line: 207, column: 25)
!3583 = !DILocation(line: 210, column: 39, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3582, file: !176, discriminator: 1)
!3585 = !DILocation(line: 210, column: 33, scope: !3582)
!3586 = !DILocation(line: 210, column: 31, scope: !3582)
!3587 = !DILocation(line: 210, column: 29, scope: !3582)
!3588 = !DILocation(line: 211, column: 36, scope: !3582)
!3589 = !DILocation(line: 211, column: 38, scope: !3582)
!3590 = !DILocation(line: 211, column: 45, scope: !3582)
!3591 = !DILocation(line: 211, column: 48, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3582, file: !176, discriminator: 2)
!3593 = !DILocation(line: 211, column: 50, scope: !3582)
!3594 = !DILocation(line: 211, column: 34, scope: !3595)
!3595 = !DILexicalBlockFile(scope: !3584, file: !176, discriminator: 3)
!3596 = !DILocation(line: 212, column: 31, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3582, file: !176, line: 212, column: 31)
!3598 = !DILocation(line: 212, column: 33, scope: !3597)
!3599 = !DILocation(line: 212, column: 31, scope: !3582)
!3600 = !DILocation(line: 213, column: 29, scope: !3597)
!3601 = !DILocation(line: 214, column: 27, scope: !3582)
!3602 = !DILocation(line: 216, column: 31, scope: !3539)
!3603 = !DILocation(line: 216, column: 34, scope: !3539)
!3604 = !DILocation(line: 216, column: 23, scope: !3539)
!3605 = !DILocation(line: 217, column: 35, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3539, file: !176, line: 217, column: 27)
!3607 = !DILocation(line: 217, column: 52, scope: !3606)
!3608 = !DILocation(line: 217, column: 58, scope: !3606)
!3609 = !DILocation(line: 217, column: 27, scope: !3606)
!3610 = !DILocation(line: 217, column: 64, scope: !3606)
!3611 = !DILocation(line: 217, column: 27, scope: !3539)
!3612 = !DILocation(line: 218, column: 25, scope: !3606)
!3613 = !DILocation(line: 219, column: 36, scope: !3539)
!3614 = !DILocation(line: 219, column: 28, scope: !3539)
!3615 = !DILocation(line: 219, column: 26, scope: !3539)
!3616 = !DILocation(line: 220, column: 36, scope: !3539)
!3617 = !DILocation(line: 220, column: 28, scope: !3539)
!3618 = !DILocation(line: 220, column: 26, scope: !3539)
!3619 = !DILocation(line: 221, column: 37, scope: !3539)
!3620 = !DILocation(line: 221, column: 35, scope: !3539)
!3621 = !DILocation(line: 222, column: 27, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3539, file: !176, line: 222, column: 27)
!3623 = !DILocation(line: 222, column: 36, scope: !3622)
!3624 = !DILocation(line: 222, column: 27, scope: !3539)
!3625 = !DILocation(line: 224, column: 38, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3622, file: !176, line: 223, column: 25)
!3627 = !DILocation(line: 224, column: 41, scope: !3626)
!3628 = !DILocation(line: 224, column: 47, scope: !3626)
!3629 = !DILocation(line: 224, column: 45, scope: !3626)
!3630 = !DILocation(line: 224, column: 50, scope: !3626)
!3631 = !DILocation(line: 224, column: 36, scope: !3626)
!3632 = !DILocation(line: 225, column: 54, scope: !3626)
!3633 = !DILocation(line: 225, column: 63, scope: !3626)
!3634 = !DILocation(line: 225, column: 46, scope: !3626)
!3635 = !DILocation(line: 225, column: 35, scope: !3626)
!3636 = !DILocation(line: 226, column: 25, scope: !3626)
!3637 = !DILocation(line: 229, column: 39, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3622, file: !176, line: 228, column: 25)
!3639 = !DILocation(line: 229, column: 42, scope: !3638)
!3640 = !DILocation(line: 229, column: 48, scope: !3638)
!3641 = !DILocation(line: 229, column: 46, scope: !3638)
!3642 = !DILocation(line: 229, column: 51, scope: !3638)
!3643 = !DILocation(line: 229, column: 36, scope: !3638)
!3644 = !DILocation(line: 230, column: 55, scope: !3638)
!3645 = !DILocation(line: 230, column: 64, scope: !3638)
!3646 = !DILocation(line: 230, column: 73, scope: !3638)
!3647 = !DILocation(line: 230, column: 46, scope: !3638)
!3648 = !DILocation(line: 230, column: 35, scope: !3638)
!3649 = !DILocation(line: 232, column: 27, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3539, file: !176, line: 232, column: 27)
!3651 = !DILocation(line: 232, column: 35, scope: !3650)
!3652 = !DILocation(line: 232, column: 27, scope: !3539)
!3653 = !DILocation(line: 235, column: 36, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3650, file: !176, line: 233, column: 25)
!3655 = !DILocation(line: 236, column: 33, scope: !3654)
!3656 = !DILocation(line: 236, column: 27, scope: !3654)
!3657 = !DILocation(line: 237, column: 27, scope: !3654)
!3658 = !DILocation(line: 239, column: 31, scope: !3539)
!3659 = !DILocation(line: 239, column: 41, scope: !3539)
!3660 = !DILocation(line: 239, column: 39, scope: !3539)
!3661 = !DILocation(line: 239, column: 53, scope: !3539)
!3662 = !DILocation(line: 239, column: 56, scope: !3539)
!3663 = !DILocation(line: 239, column: 50, scope: !3539)
!3664 = !DILocation(line: 239, column: 64, scope: !3539)
!3665 = !DILocation(line: 239, column: 67, scope: !3539)
!3666 = !DILocation(line: 239, column: 61, scope: !3539)
!3667 = !DILocation(line: 239, column: 73, scope: !3539)
!3668 = !DILocation(line: 239, column: 23, scope: !3539)
!3669 = !DILocation(line: 240, column: 31, scope: !3539)
!3670 = !DILocation(line: 240, column: 41, scope: !3539)
!3671 = !DILocation(line: 240, column: 39, scope: !3539)
!3672 = !DILocation(line: 240, column: 53, scope: !3539)
!3673 = !DILocation(line: 240, column: 56, scope: !3539)
!3674 = !DILocation(line: 240, column: 50, scope: !3539)
!3675 = !DILocation(line: 240, column: 62, scope: !3539)
!3676 = !DILocation(line: 240, column: 23, scope: !3539)
!3677 = !DILocation(line: 193, column: 19, scope: !3540)
!3678 = !DILocation(line: 242, column: 27, scope: !3533)
!3679 = !DILocation(line: 242, column: 19, scope: !3533)
!3680 = !DILocation(line: 243, column: 23, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3533, file: !176, line: 243, column: 23)
!3682 = !DILocation(line: 243, column: 32, scope: !3681)
!3683 = !DILocation(line: 243, column: 23, scope: !3533)
!3684 = !DILocation(line: 244, column: 24, scope: !3681)
!3685 = !DILocation(line: 244, column: 21, scope: !3681)
!3686 = !DILocation(line: 247, column: 25, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3681, file: !176, line: 246, column: 21)
!3688 = !DILocation(line: 247, column: 35, scope: !3687)
!3689 = !DILocation(line: 247, column: 33, scope: !3687)
!3690 = !DILocation(line: 247, column: 45, scope: !3687)
!3691 = !DILocation(line: 248, column: 28, scope: !3687)
!3692 = !DILocation(line: 248, column: 26, scope: !3687)
!3693 = !DILocation(line: 253, column: 17, scope: !3466)
!3694 = !DILocation(line: 253, column: 11, scope: !3466)
!3695 = !DILocation(line: 377, column: 25, scope: !3389)
!3696 = !DILocation(line: 377, column: 23, scope: !3389)
!3697 = !DILocation(line: 378, column: 5, scope: !3389)
!3698 = !DILocation(line: 380, column: 10, scope: !3379)
!3699 = !DILocation(line: 380, column: 3, scope: !3379)
!3700 = distinct !DISubprogram(name: "rpl_fclose", scope: !554, file: !554, line: 56, type: !3701, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !553, retainedNodes: !11)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!47, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64, align: 64)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !806, line: 48, baseType: !3705)
!3705 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2582, line: 245, size: 1728, align: 64, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3705, file: !2582, line: 246, baseType: !47, size: 32, align: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3705, file: !2582, line: 251, baseType: !71, size: 64, align: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3705, file: !2582, line: 252, baseType: !71, size: 64, align: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3705, file: !2582, line: 253, baseType: !71, size: 64, align: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3705, file: !2582, line: 254, baseType: !71, size: 64, align: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3705, file: !2582, line: 255, baseType: !71, size: 64, align: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3705, file: !2582, line: 256, baseType: !71, size: 64, align: 64, offset: 384)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3705, file: !2582, line: 257, baseType: !71, size: 64, align: 64, offset: 448)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3705, file: !2582, line: 258, baseType: !71, size: 64, align: 64, offset: 512)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3705, file: !2582, line: 260, baseType: !71, size: 64, align: 64, offset: 576)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3705, file: !2582, line: 261, baseType: !71, size: 64, align: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3705, file: !2582, line: 262, baseType: !71, size: 64, align: 64, offset: 704)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3705, file: !2582, line: 264, baseType: !3720, size: 64, align: 64, offset: 768)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64, align: 64)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2582, line: 160, size: 192, align: 64, elements: !3722)
!3722 = !{!3723, !3724, !3726}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3721, file: !2582, line: 161, baseType: !3720, size: 64, align: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3721, file: !2582, line: 162, baseType: !3725, size: 64, align: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64, align: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3721, file: !2582, line: 166, baseType: !47, size: 32, align: 32, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3705, file: !2582, line: 266, baseType: !3725, size: 64, align: 64, offset: 832)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3705, file: !2582, line: 268, baseType: !47, size: 32, align: 32, offset: 896)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3705, file: !2582, line: 272, baseType: !47, size: 32, align: 32, offset: 928)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3705, file: !2582, line: 274, baseType: !2608, size: 64, align: 64, offset: 960)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3705, file: !2582, line: 278, baseType: !115, size: 16, align: 16, offset: 1024)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3705, file: !2582, line: 279, baseType: !2613, size: 8, align: 8, offset: 1040)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3705, file: !2582, line: 280, baseType: !2615, size: 8, align: 8, offset: 1048)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3705, file: !2582, line: 284, baseType: !2617, size: 64, align: 64, offset: 1088)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3705, file: !2582, line: 293, baseType: !2620, size: 64, align: 64, offset: 1152)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3705, file: !2582, line: 302, baseType: !13, size: 64, align: 64, offset: 1216)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3705, file: !2582, line: 303, baseType: !13, size: 64, align: 64, offset: 1280)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3705, file: !2582, line: 304, baseType: !13, size: 64, align: 64, offset: 1344)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3705, file: !2582, line: 305, baseType: !13, size: 64, align: 64, offset: 1408)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3705, file: !2582, line: 306, baseType: !112, size: 64, align: 64, offset: 1472)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3705, file: !2582, line: 308, baseType: !47, size: 32, align: 32, offset: 1536)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3705, file: !2582, line: 310, baseType: !2628, size: 160, align: 8, offset: 1568)
!3743 = !DILocalVariable(name: "fp", arg: 1, scope: !3700, file: !554, line: 56, type: !3703)
!3744 = !DILocation(line: 56, column: 19, scope: !3700)
!3745 = !DILocalVariable(name: "saved_errno", scope: !3700, file: !554, line: 58, type: !47)
!3746 = !DILocation(line: 58, column: 7, scope: !3700)
!3747 = !DILocalVariable(name: "fd", scope: !3700, file: !554, line: 59, type: !47)
!3748 = !DILocation(line: 59, column: 7, scope: !3700)
!3749 = !DILocalVariable(name: "result", scope: !3700, file: !554, line: 60, type: !47)
!3750 = !DILocation(line: 60, column: 7, scope: !3700)
!3751 = !DILocation(line: 63, column: 16, scope: !3700)
!3752 = !DILocation(line: 63, column: 8, scope: !3700)
!3753 = !DILocation(line: 63, column: 6, scope: !3700)
!3754 = !DILocation(line: 64, column: 7, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3700, file: !554, line: 64, column: 7)
!3756 = !DILocation(line: 64, column: 10, scope: !3755)
!3757 = !DILocation(line: 64, column: 7, scope: !3700)
!3758 = !DILocation(line: 65, column: 28, scope: !3755)
!3759 = !DILocation(line: 65, column: 12, scope: !3755)
!3760 = !DILocation(line: 65, column: 5, scope: !3755)
!3761 = !DILocation(line: 70, column: 9, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3700, file: !554, line: 70, column: 7)
!3763 = !DILocation(line: 70, column: 23, scope: !3762)
!3764 = !DILocation(line: 70, column: 41, scope: !3765)
!3765 = !DILexicalBlockFile(scope: !3762, file: !554, discriminator: 1)
!3766 = !DILocation(line: 70, column: 33, scope: !3762)
!3767 = !DILocation(line: 70, column: 26, scope: !3762)
!3768 = !DILocation(line: 70, column: 59, scope: !3762)
!3769 = !DILocation(line: 71, column: 7, scope: !3762)
!3770 = !DILocation(line: 71, column: 18, scope: !3765)
!3771 = !DILocation(line: 71, column: 10, scope: !3762)
!3772 = !DILocation(line: 70, column: 7, scope: !3700)
!3773 = !DILocation(line: 72, column: 19, scope: !3762)
!3774 = !DILocation(line: 72, column: 17, scope: !3762)
!3775 = !DILocation(line: 72, column: 5, scope: !3762)
!3776 = !DILocation(line: 98, column: 28, scope: !3700)
!3777 = !DILocation(line: 98, column: 12, scope: !3700)
!3778 = !DILocation(line: 98, column: 10, scope: !3700)
!3779 = !DILocation(line: 103, column: 7, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3700, file: !554, line: 103, column: 7)
!3781 = !DILocation(line: 103, column: 19, scope: !3780)
!3782 = !DILocation(line: 103, column: 7, scope: !3700)
!3783 = !DILocation(line: 105, column: 15, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3780, file: !554, line: 104, column: 5)
!3785 = !DILocation(line: 105, column: 7, scope: !3784)
!3786 = !DILocation(line: 105, column: 13, scope: !3784)
!3787 = !DILocation(line: 106, column: 14, scope: !3784)
!3788 = !DILocation(line: 107, column: 5, scope: !3784)
!3789 = !DILocation(line: 109, column: 10, scope: !3700)
!3790 = !DILocation(line: 109, column: 3, scope: !3700)
!3791 = !DILocation(line: 110, column: 1, scope: !3700)
!3792 = distinct !DISubprogram(name: "rpl_fflush", scope: !556, file: !556, line: 127, type: !3793, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !555, retainedNodes: !11)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!47, !3795}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64, align: 64)
!3796 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !806, line: 48, baseType: !3797)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2582, line: 245, size: 1728, align: 64, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3797, file: !2582, line: 246, baseType: !47, size: 32, align: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3797, file: !2582, line: 251, baseType: !71, size: 64, align: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3797, file: !2582, line: 252, baseType: !71, size: 64, align: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3797, file: !2582, line: 253, baseType: !71, size: 64, align: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3797, file: !2582, line: 254, baseType: !71, size: 64, align: 64, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3797, file: !2582, line: 255, baseType: !71, size: 64, align: 64, offset: 320)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3797, file: !2582, line: 256, baseType: !71, size: 64, align: 64, offset: 384)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3797, file: !2582, line: 257, baseType: !71, size: 64, align: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3797, file: !2582, line: 258, baseType: !71, size: 64, align: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3797, file: !2582, line: 260, baseType: !71, size: 64, align: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3797, file: !2582, line: 261, baseType: !71, size: 64, align: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3797, file: !2582, line: 262, baseType: !71, size: 64, align: 64, offset: 704)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3797, file: !2582, line: 264, baseType: !3812, size: 64, align: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64, align: 64)
!3813 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2582, line: 160, size: 192, align: 64, elements: !3814)
!3814 = !{!3815, !3816, !3818}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3813, file: !2582, line: 161, baseType: !3812, size: 64, align: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3813, file: !2582, line: 162, baseType: !3817, size: 64, align: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64, align: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3813, file: !2582, line: 166, baseType: !47, size: 32, align: 32, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3797, file: !2582, line: 266, baseType: !3817, size: 64, align: 64, offset: 832)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3797, file: !2582, line: 268, baseType: !47, size: 32, align: 32, offset: 896)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3797, file: !2582, line: 272, baseType: !47, size: 32, align: 32, offset: 928)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3797, file: !2582, line: 274, baseType: !2608, size: 64, align: 64, offset: 960)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3797, file: !2582, line: 278, baseType: !115, size: 16, align: 16, offset: 1024)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3797, file: !2582, line: 279, baseType: !2613, size: 8, align: 8, offset: 1040)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3797, file: !2582, line: 280, baseType: !2615, size: 8, align: 8, offset: 1048)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3797, file: !2582, line: 284, baseType: !2617, size: 64, align: 64, offset: 1088)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3797, file: !2582, line: 293, baseType: !2620, size: 64, align: 64, offset: 1152)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3797, file: !2582, line: 302, baseType: !13, size: 64, align: 64, offset: 1216)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3797, file: !2582, line: 303, baseType: !13, size: 64, align: 64, offset: 1280)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3797, file: !2582, line: 304, baseType: !13, size: 64, align: 64, offset: 1344)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3797, file: !2582, line: 305, baseType: !13, size: 64, align: 64, offset: 1408)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3797, file: !2582, line: 306, baseType: !112, size: 64, align: 64, offset: 1472)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3797, file: !2582, line: 308, baseType: !47, size: 32, align: 32, offset: 1536)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3797, file: !2582, line: 310, baseType: !2628, size: 160, align: 8, offset: 1568)
!3835 = !DILocalVariable(name: "stream", arg: 1, scope: !3792, file: !556, line: 127, type: !3795)
!3836 = !DILocation(line: 127, column: 19, scope: !3792)
!3837 = !DILocation(line: 148, column: 7, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3792, file: !556, line: 148, column: 7)
!3839 = !DILocation(line: 148, column: 14, scope: !3838)
!3840 = !DILocation(line: 148, column: 22, scope: !3838)
!3841 = !DILocation(line: 148, column: 27, scope: !3842)
!3842 = !DILexicalBlockFile(scope: !3838, file: !556, discriminator: 1)
!3843 = !DILocation(line: 148, column: 7, scope: !3792)
!3844 = !DILocation(line: 149, column: 20, scope: !3838)
!3845 = !DILocation(line: 149, column: 12, scope: !3838)
!3846 = !DILocation(line: 149, column: 5, scope: !3838)
!3847 = !DILocation(line: 153, column: 44, scope: !3792)
!3848 = !DILocation(line: 153, column: 3, scope: !3792)
!3849 = !DILocation(line: 155, column: 18, scope: !3792)
!3850 = !DILocation(line: 155, column: 10, scope: !3792)
!3851 = !DILocation(line: 155, column: 3, scope: !3792)
!3852 = !DILocation(line: 229, column: 1, scope: !3792)
!3853 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !556, file: !556, line: 40, type: !3854, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !555, retainedNodes: !11)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{null, !3795}
!3856 = !DILocalVariable(name: "fp", arg: 1, scope: !3853, file: !556, line: 40, type: !3795)
!3857 = !DILocation(line: 40, column: 48, scope: !3853)
!3858 = !DILocation(line: 42, column: 7, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3853, file: !556, line: 42, column: 7)
!3860 = !DILocation(line: 42, column: 11, scope: !3859)
!3861 = !DILocation(line: 42, column: 18, scope: !3859)
!3862 = !DILocation(line: 42, column: 7, scope: !3853)
!3863 = !DILocation(line: 44, column: 13, scope: !3859)
!3864 = !DILocation(line: 44, column: 5, scope: !3859)
!3865 = !DILocation(line: 45, column: 1, scope: !3853)
!3866 = distinct !DISubprogram(name: "rpl_fseeko", scope: !558, file: !558, line: 28, type: !3867, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !557, retainedNodes: !11)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!47, !3869, !3909, !47}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64, align: 64)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !806, line: 48, baseType: !3871)
!3871 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2582, line: 245, size: 1728, align: 64, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3871, file: !2582, line: 246, baseType: !47, size: 32, align: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3871, file: !2582, line: 251, baseType: !71, size: 64, align: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3871, file: !2582, line: 252, baseType: !71, size: 64, align: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3871, file: !2582, line: 253, baseType: !71, size: 64, align: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3871, file: !2582, line: 254, baseType: !71, size: 64, align: 64, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3871, file: !2582, line: 255, baseType: !71, size: 64, align: 64, offset: 320)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3871, file: !2582, line: 256, baseType: !71, size: 64, align: 64, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3871, file: !2582, line: 257, baseType: !71, size: 64, align: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3871, file: !2582, line: 258, baseType: !71, size: 64, align: 64, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3871, file: !2582, line: 260, baseType: !71, size: 64, align: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3871, file: !2582, line: 261, baseType: !71, size: 64, align: 64, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3871, file: !2582, line: 262, baseType: !71, size: 64, align: 64, offset: 704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3871, file: !2582, line: 264, baseType: !3886, size: 64, align: 64, offset: 768)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64, align: 64)
!3887 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2582, line: 160, size: 192, align: 64, elements: !3888)
!3888 = !{!3889, !3890, !3892}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3887, file: !2582, line: 161, baseType: !3886, size: 64, align: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3887, file: !2582, line: 162, baseType: !3891, size: 64, align: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64, align: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3887, file: !2582, line: 166, baseType: !47, size: 32, align: 32, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3871, file: !2582, line: 266, baseType: !3891, size: 64, align: 64, offset: 832)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3871, file: !2582, line: 268, baseType: !47, size: 32, align: 32, offset: 896)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3871, file: !2582, line: 272, baseType: !47, size: 32, align: 32, offset: 928)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3871, file: !2582, line: 274, baseType: !2608, size: 64, align: 64, offset: 960)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3871, file: !2582, line: 278, baseType: !115, size: 16, align: 16, offset: 1024)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3871, file: !2582, line: 279, baseType: !2613, size: 8, align: 8, offset: 1040)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3871, file: !2582, line: 280, baseType: !2615, size: 8, align: 8, offset: 1048)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3871, file: !2582, line: 284, baseType: !2617, size: 64, align: 64, offset: 1088)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3871, file: !2582, line: 293, baseType: !2620, size: 64, align: 64, offset: 1152)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3871, file: !2582, line: 302, baseType: !13, size: 64, align: 64, offset: 1216)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3871, file: !2582, line: 303, baseType: !13, size: 64, align: 64, offset: 1280)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3871, file: !2582, line: 304, baseType: !13, size: 64, align: 64, offset: 1344)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3871, file: !2582, line: 305, baseType: !13, size: 64, align: 64, offset: 1408)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3871, file: !2582, line: 306, baseType: !112, size: 64, align: 64, offset: 1472)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3871, file: !2582, line: 308, baseType: !47, size: 32, align: 32, offset: 1536)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3871, file: !2582, line: 310, baseType: !2628, size: 160, align: 8, offset: 1568)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !806, line: 90, baseType: !2608)
!3910 = !DILocalVariable(name: "fp", arg: 1, scope: !3866, file: !558, line: 28, type: !3869)
!3911 = !DILocation(line: 28, column: 15, scope: !3866)
!3912 = !DILocalVariable(name: "offset", arg: 2, scope: !3866, file: !558, line: 28, type: !3909)
!3913 = !DILocation(line: 28, column: 25, scope: !3866)
!3914 = !DILocalVariable(name: "whence", arg: 3, scope: !3866, file: !558, line: 28, type: !47)
!3915 = !DILocation(line: 28, column: 37, scope: !3866)
!3916 = !DILocation(line: 51, column: 7, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3866, file: !558, line: 51, column: 7)
!3918 = !DILocation(line: 51, column: 11, scope: !3917)
!3919 = !DILocation(line: 51, column: 27, scope: !3917)
!3920 = !DILocation(line: 51, column: 31, scope: !3917)
!3921 = !DILocation(line: 51, column: 24, scope: !3917)
!3922 = !DILocation(line: 52, column: 7, scope: !3917)
!3923 = !DILocation(line: 52, column: 10, scope: !3924)
!3924 = !DILexicalBlockFile(scope: !3917, file: !558, discriminator: 1)
!3925 = !DILocation(line: 52, column: 14, scope: !3917)
!3926 = !DILocation(line: 52, column: 31, scope: !3917)
!3927 = !DILocation(line: 52, column: 35, scope: !3917)
!3928 = !DILocation(line: 52, column: 28, scope: !3917)
!3929 = !DILocation(line: 53, column: 7, scope: !3917)
!3930 = !DILocation(line: 53, column: 10, scope: !3924)
!3931 = !DILocation(line: 53, column: 14, scope: !3917)
!3932 = !DILocation(line: 53, column: 28, scope: !3917)
!3933 = !DILocation(line: 51, column: 7, scope: !3866)
!3934 = !DILocalVariable(name: "pos", scope: !3935, file: !558, line: 116, type: !3909)
!3935 = distinct !DILexicalBlock(scope: !3917, file: !558, line: 112, column: 5)
!3936 = !DILocation(line: 116, column: 13, scope: !3935)
!3937 = !DILocation(line: 116, column: 34, scope: !3935)
!3938 = !DILocation(line: 116, column: 26, scope: !3935)
!3939 = !DILocation(line: 116, column: 39, scope: !3935)
!3940 = !DILocation(line: 116, column: 47, scope: !3935)
!3941 = !DILocation(line: 116, column: 19, scope: !3935)
!3942 = !DILocation(line: 117, column: 11, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3935, file: !558, line: 117, column: 11)
!3944 = !DILocation(line: 117, column: 15, scope: !3943)
!3945 = !DILocation(line: 117, column: 11, scope: !3935)
!3946 = !DILocation(line: 123, column: 11, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3943, file: !558, line: 118, column: 9)
!3948 = !DILocation(line: 127, column: 7, scope: !3935)
!3949 = !DILocation(line: 127, column: 11, scope: !3935)
!3950 = !DILocation(line: 127, column: 18, scope: !3935)
!3951 = !DILocation(line: 128, column: 21, scope: !3935)
!3952 = !DILocation(line: 128, column: 7, scope: !3935)
!3953 = !DILocation(line: 128, column: 11, scope: !3935)
!3954 = !DILocation(line: 128, column: 19, scope: !3935)
!3955 = !DILocation(line: 159, column: 7, scope: !3935)
!3956 = !DILocation(line: 161, column: 18, scope: !3866)
!3957 = !DILocation(line: 161, column: 22, scope: !3866)
!3958 = !DILocation(line: 161, column: 30, scope: !3866)
!3959 = !DILocation(line: 161, column: 10, scope: !3866)
!3960 = !DILocation(line: 161, column: 3, scope: !3866)
!3961 = !DILocation(line: 162, column: 1, scope: !3866)
!3962 = distinct !DISubprogram(name: "c_isascii", scope: !560, file: !560, line: 27, type: !3963, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!38, !47}
!3965 = !DILocalVariable(name: "c", arg: 1, scope: !3962, file: !560, line: 27, type: !47)
!3966 = !DILocation(line: 27, column: 16, scope: !3962)
!3967 = !DILocation(line: 29, column: 11, scope: !3962)
!3968 = !DILocation(line: 29, column: 13, scope: !3962)
!3969 = !DILocation(line: 29, column: 21, scope: !3962)
!3970 = !DILocation(line: 29, column: 24, scope: !3971)
!3971 = !DILexicalBlockFile(scope: !3962, file: !560, discriminator: 1)
!3972 = !DILocation(line: 29, column: 26, scope: !3962)
!3973 = !DILocation(line: 29, column: 3, scope: !3974)
!3974 = !DILexicalBlockFile(scope: !3962, file: !560, discriminator: 2)
!3975 = distinct !DISubprogram(name: "c_isalnum", scope: !560, file: !560, line: 33, type: !3963, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!3976 = !DILocalVariable(name: "c", arg: 1, scope: !3975, file: !560, line: 33, type: !47)
!3977 = !DILocation(line: 33, column: 16, scope: !3975)
!3978 = !DILocation(line: 38, column: 12, scope: !3975)
!3979 = !DILocation(line: 38, column: 14, scope: !3975)
!3980 = !DILocation(line: 38, column: 21, scope: !3975)
!3981 = !DILocation(line: 38, column: 24, scope: !3982)
!3982 = !DILexicalBlockFile(scope: !3975, file: !560, discriminator: 1)
!3983 = !DILocation(line: 38, column: 26, scope: !3975)
!3984 = !DILocation(line: 39, column: 11, scope: !3975)
!3985 = !DILocation(line: 39, column: 16, scope: !3982)
!3986 = !DILocation(line: 39, column: 18, scope: !3975)
!3987 = !DILocation(line: 39, column: 27, scope: !3975)
!3988 = !DILocation(line: 39, column: 34, scope: !3975)
!3989 = !DILocation(line: 39, column: 38, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !3975, file: !560, discriminator: 2)
!3991 = !DILocation(line: 39, column: 40, scope: !3975)
!3992 = !DILocation(line: 39, column: 49, scope: !3975)
!3993 = !DILocation(line: 39, column: 11, scope: !3994)
!3994 = !DILexicalBlockFile(scope: !3975, file: !560, discriminator: 3)
!3995 = !DILocation(line: 38, column: 3, scope: !3975)
!3996 = distinct !DISubprogram(name: "c_isalpha", scope: !560, file: !560, line: 68, type: !3963, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!3997 = !DILocalVariable(name: "c", arg: 1, scope: !3996, file: !560, line: 68, type: !47)
!3998 = !DILocation(line: 68, column: 16, scope: !3996)
!3999 = !DILocation(line: 72, column: 12, scope: !3996)
!4000 = !DILocation(line: 72, column: 14, scope: !3996)
!4001 = !DILocation(line: 72, column: 23, scope: !3996)
!4002 = !DILocation(line: 72, column: 30, scope: !3996)
!4003 = !DILocation(line: 72, column: 34, scope: !4004)
!4004 = !DILexicalBlockFile(scope: !3996, file: !560, discriminator: 1)
!4005 = !DILocation(line: 72, column: 36, scope: !3996)
!4006 = !DILocation(line: 72, column: 45, scope: !3996)
!4007 = !DILocation(line: 72, column: 3, scope: !4008)
!4008 = !DILexicalBlockFile(scope: !3996, file: !560, discriminator: 2)
!4009 = distinct !DISubprogram(name: "c_isblank", scope: !560, file: !560, line: 97, type: !3963, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4010 = !DILocalVariable(name: "c", arg: 1, scope: !4009, file: !560, line: 97, type: !47)
!4011 = !DILocation(line: 97, column: 16, scope: !4009)
!4012 = !DILocation(line: 99, column: 11, scope: !4009)
!4013 = !DILocation(line: 99, column: 13, scope: !4009)
!4014 = !DILocation(line: 99, column: 20, scope: !4009)
!4015 = !DILocation(line: 99, column: 23, scope: !4016)
!4016 = !DILexicalBlockFile(scope: !4009, file: !560, discriminator: 2)
!4017 = !DILocation(line: 99, column: 25, scope: !4009)
!4018 = !DILocation(line: 99, column: 3, scope: !4019)
!4019 = !DILexicalBlockFile(scope: !4020, file: !560, discriminator: 3)
!4020 = !DILexicalBlockFile(scope: !4009, file: !560, discriminator: 1)
!4021 = distinct !DISubprogram(name: "c_iscntrl", scope: !560, file: !560, line: 103, type: !3963, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4022 = !DILocalVariable(name: "c", arg: 1, scope: !4021, file: !560, line: 103, type: !47)
!4023 = !DILocation(line: 103, column: 16, scope: !4021)
!4024 = !DILocation(line: 106, column: 12, scope: !4021)
!4025 = !DILocation(line: 106, column: 14, scope: !4021)
!4026 = !DILocation(line: 106, column: 23, scope: !4021)
!4027 = !DILocation(line: 106, column: 28, scope: !4021)
!4028 = !DILocation(line: 106, column: 31, scope: !4029)
!4029 = !DILexicalBlockFile(scope: !4021, file: !560, discriminator: 2)
!4030 = !DILocation(line: 106, column: 33, scope: !4021)
!4031 = !DILocation(line: 106, column: 3, scope: !4032)
!4032 = !DILexicalBlockFile(scope: !4033, file: !560, discriminator: 3)
!4033 = !DILexicalBlockFile(scope: !4021, file: !560, discriminator: 1)
!4034 = distinct !DISubprogram(name: "c_isdigit", scope: !560, file: !560, line: 137, type: !3963, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4035 = !DILocalVariable(name: "c", arg: 1, scope: !4034, file: !560, line: 137, type: !47)
!4036 = !DILocation(line: 137, column: 16, scope: !4034)
!4037 = !DILocation(line: 140, column: 11, scope: !4034)
!4038 = !DILocation(line: 140, column: 13, scope: !4034)
!4039 = !DILocation(line: 140, column: 20, scope: !4034)
!4040 = !DILocation(line: 140, column: 23, scope: !4041)
!4041 = !DILexicalBlockFile(scope: !4034, file: !560, discriminator: 1)
!4042 = !DILocation(line: 140, column: 25, scope: !4034)
!4043 = !DILocation(line: 140, column: 3, scope: !4044)
!4044 = !DILexicalBlockFile(scope: !4034, file: !560, discriminator: 2)
!4045 = distinct !DISubprogram(name: "c_islower", scope: !560, file: !560, line: 154, type: !3963, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4046 = !DILocalVariable(name: "c", arg: 1, scope: !4045, file: !560, line: 154, type: !47)
!4047 = !DILocation(line: 154, column: 16, scope: !4045)
!4048 = !DILocation(line: 157, column: 11, scope: !4045)
!4049 = !DILocation(line: 157, column: 13, scope: !4045)
!4050 = !DILocation(line: 157, column: 20, scope: !4045)
!4051 = !DILocation(line: 157, column: 23, scope: !4052)
!4052 = !DILexicalBlockFile(scope: !4045, file: !560, discriminator: 1)
!4053 = !DILocation(line: 157, column: 25, scope: !4045)
!4054 = !DILocation(line: 157, column: 3, scope: !4055)
!4055 = !DILexicalBlockFile(scope: !4045, file: !560, discriminator: 2)
!4056 = distinct !DISubprogram(name: "c_isgraph", scope: !560, file: !560, line: 174, type: !3963, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4057 = !DILocalVariable(name: "c", arg: 1, scope: !4056, file: !560, line: 174, type: !47)
!4058 = !DILocation(line: 174, column: 16, scope: !4056)
!4059 = !DILocation(line: 177, column: 11, scope: !4056)
!4060 = !DILocation(line: 177, column: 13, scope: !4056)
!4061 = !DILocation(line: 177, column: 20, scope: !4056)
!4062 = !DILocation(line: 177, column: 23, scope: !4063)
!4063 = !DILexicalBlockFile(scope: !4056, file: !560, discriminator: 1)
!4064 = !DILocation(line: 177, column: 25, scope: !4056)
!4065 = !DILocation(line: 177, column: 3, scope: !4066)
!4066 = !DILexicalBlockFile(scope: !4056, file: !560, discriminator: 2)
!4067 = distinct !DISubprogram(name: "c_isprint", scope: !560, file: !560, line: 208, type: !3963, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4068 = !DILocalVariable(name: "c", arg: 1, scope: !4067, file: !560, line: 208, type: !47)
!4069 = !DILocation(line: 208, column: 16, scope: !4067)
!4070 = !DILocation(line: 211, column: 11, scope: !4067)
!4071 = !DILocation(line: 211, column: 13, scope: !4067)
!4072 = !DILocation(line: 211, column: 20, scope: !4067)
!4073 = !DILocation(line: 211, column: 23, scope: !4074)
!4074 = !DILexicalBlockFile(scope: !4067, file: !560, discriminator: 1)
!4075 = !DILocation(line: 211, column: 25, scope: !4067)
!4076 = !DILocation(line: 211, column: 3, scope: !4077)
!4077 = !DILexicalBlockFile(scope: !4067, file: !560, discriminator: 2)
!4078 = distinct !DISubprogram(name: "c_ispunct", scope: !560, file: !560, line: 242, type: !3963, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4079 = !DILocalVariable(name: "c", arg: 1, scope: !4078, file: !560, line: 242, type: !47)
!4080 = !DILocation(line: 242, column: 16, scope: !4078)
!4081 = !DILocation(line: 245, column: 12, scope: !4078)
!4082 = !DILocation(line: 245, column: 14, scope: !4078)
!4083 = !DILocation(line: 245, column: 21, scope: !4078)
!4084 = !DILocation(line: 245, column: 24, scope: !4085)
!4085 = !DILexicalBlockFile(scope: !4078, file: !560, discriminator: 1)
!4086 = !DILocation(line: 245, column: 26, scope: !4078)
!4087 = !DILocation(line: 246, column: 11, scope: !4078)
!4088 = !DILocation(line: 246, column: 17, scope: !4085)
!4089 = !DILocation(line: 246, column: 19, scope: !4078)
!4090 = !DILocation(line: 246, column: 26, scope: !4078)
!4091 = !DILocation(line: 246, column: 29, scope: !4092)
!4092 = !DILexicalBlockFile(scope: !4078, file: !560, discriminator: 2)
!4093 = !DILocation(line: 246, column: 31, scope: !4078)
!4094 = !DILocation(line: 247, column: 16, scope: !4078)
!4095 = !DILocation(line: 247, column: 21, scope: !4085)
!4096 = !DILocation(line: 247, column: 23, scope: !4078)
!4097 = !DILocation(line: 247, column: 32, scope: !4078)
!4098 = !DILocation(line: 247, column: 39, scope: !4078)
!4099 = !DILocation(line: 247, column: 43, scope: !4092)
!4100 = !DILocation(line: 247, column: 45, scope: !4078)
!4101 = !DILocation(line: 247, column: 54, scope: !4078)
!4102 = !DILocation(line: 247, column: 16, scope: !4103)
!4103 = !DILexicalBlockFile(scope: !4078, file: !560, discriminator: 3)
!4104 = !DILocation(line: 246, column: 14, scope: !4078)
!4105 = !DILocation(line: 245, column: 3, scope: !4092)
!4106 = distinct !DISubprogram(name: "c_isspace", scope: !560, file: !560, line: 266, type: !3963, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4107 = !DILocalVariable(name: "c", arg: 1, scope: !4106, file: !560, line: 266, type: !47)
!4108 = !DILocation(line: 266, column: 16, scope: !4106)
!4109 = !DILocation(line: 268, column: 11, scope: !4106)
!4110 = !DILocation(line: 268, column: 13, scope: !4106)
!4111 = !DILocation(line: 268, column: 20, scope: !4106)
!4112 = !DILocation(line: 268, column: 23, scope: !4113)
!4113 = !DILexicalBlockFile(scope: !4106, file: !560, discriminator: 2)
!4114 = !DILocation(line: 268, column: 25, scope: !4106)
!4115 = !DILocation(line: 269, column: 11, scope: !4106)
!4116 = !DILocation(line: 269, column: 14, scope: !4117)
!4117 = !DILexicalBlockFile(scope: !4106, file: !560, discriminator: 1)
!4118 = !DILocation(line: 269, column: 16, scope: !4106)
!4119 = !DILocation(line: 269, column: 24, scope: !4106)
!4120 = !DILocation(line: 269, column: 27, scope: !4113)
!4121 = !DILocation(line: 269, column: 29, scope: !4106)
!4122 = !DILocation(line: 269, column: 37, scope: !4106)
!4123 = !DILocation(line: 269, column: 40, scope: !4124)
!4124 = !DILexicalBlockFile(scope: !4106, file: !560, discriminator: 3)
!4125 = !DILocation(line: 269, column: 42, scope: !4106)
!4126 = !DILocation(line: 269, column: 50, scope: !4106)
!4127 = !DILocation(line: 269, column: 53, scope: !4128)
!4128 = !DILexicalBlockFile(scope: !4106, file: !560, discriminator: 4)
!4129 = !DILocation(line: 269, column: 55, scope: !4106)
!4130 = !DILocation(line: 268, column: 3, scope: !4117)
!4131 = distinct !DISubprogram(name: "c_isupper", scope: !560, file: !560, line: 273, type: !3963, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4132 = !DILocalVariable(name: "c", arg: 1, scope: !4131, file: !560, line: 273, type: !47)
!4133 = !DILocation(line: 273, column: 16, scope: !4131)
!4134 = !DILocation(line: 276, column: 11, scope: !4131)
!4135 = !DILocation(line: 276, column: 13, scope: !4131)
!4136 = !DILocation(line: 276, column: 20, scope: !4131)
!4137 = !DILocation(line: 276, column: 23, scope: !4138)
!4138 = !DILexicalBlockFile(scope: !4131, file: !560, discriminator: 1)
!4139 = !DILocation(line: 276, column: 25, scope: !4131)
!4140 = !DILocation(line: 276, column: 3, scope: !4141)
!4141 = !DILexicalBlockFile(scope: !4131, file: !560, discriminator: 2)
!4142 = distinct !DISubprogram(name: "c_isxdigit", scope: !560, file: !560, line: 293, type: !3963, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4143 = !DILocalVariable(name: "c", arg: 1, scope: !4142, file: !560, line: 293, type: !47)
!4144 = !DILocation(line: 293, column: 17, scope: !4142)
!4145 = !DILocation(line: 298, column: 12, scope: !4142)
!4146 = !DILocation(line: 298, column: 14, scope: !4142)
!4147 = !DILocation(line: 298, column: 21, scope: !4142)
!4148 = !DILocation(line: 298, column: 24, scope: !4149)
!4149 = !DILexicalBlockFile(scope: !4142, file: !560, discriminator: 1)
!4150 = !DILocation(line: 298, column: 26, scope: !4142)
!4151 = !DILocation(line: 299, column: 11, scope: !4142)
!4152 = !DILocation(line: 299, column: 16, scope: !4149)
!4153 = !DILocation(line: 299, column: 18, scope: !4142)
!4154 = !DILocation(line: 299, column: 27, scope: !4142)
!4155 = !DILocation(line: 299, column: 34, scope: !4142)
!4156 = !DILocation(line: 299, column: 38, scope: !4157)
!4157 = !DILexicalBlockFile(scope: !4142, file: !560, discriminator: 2)
!4158 = !DILocation(line: 299, column: 40, scope: !4142)
!4159 = !DILocation(line: 299, column: 49, scope: !4142)
!4160 = !DILocation(line: 299, column: 11, scope: !4161)
!4161 = !DILexicalBlockFile(scope: !4142, file: !560, discriminator: 3)
!4162 = !DILocation(line: 298, column: 3, scope: !4142)
!4163 = distinct !DISubprogram(name: "c_tolower", scope: !560, file: !560, line: 320, type: !4164, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!47, !47}
!4166 = !DILocalVariable(name: "c", arg: 1, scope: !4163, file: !560, line: 320, type: !47)
!4167 = !DILocation(line: 320, column: 16, scope: !4163)
!4168 = !DILocation(line: 323, column: 11, scope: !4163)
!4169 = !DILocation(line: 323, column: 13, scope: !4163)
!4170 = !DILocation(line: 323, column: 20, scope: !4163)
!4171 = !DILocation(line: 323, column: 23, scope: !4172)
!4172 = !DILexicalBlockFile(scope: !4163, file: !560, discriminator: 1)
!4173 = !DILocation(line: 323, column: 25, scope: !4163)
!4174 = !DILocation(line: 323, column: 34, scope: !4175)
!4175 = !DILexicalBlockFile(scope: !4163, file: !560, discriminator: 3)
!4176 = !DILocation(line: 323, column: 36, scope: !4163)
!4177 = !DILocation(line: 323, column: 42, scope: !4163)
!4178 = !DILocation(line: 323, column: 50, scope: !4179)
!4179 = !DILexicalBlockFile(scope: !4180, file: !560, discriminator: 4)
!4180 = !DILexicalBlockFile(scope: !4163, file: !560, discriminator: 2)
!4181 = !DILocation(line: 323, column: 3, scope: !4182)
!4182 = !DILexicalBlockFile(scope: !4183, file: !560, discriminator: 6)
!4183 = !DILexicalBlockFile(scope: !4163, file: !560, discriminator: 5)
!4184 = distinct !DISubprogram(name: "c_toupper", scope: !560, file: !560, line: 359, type: !4164, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !559, retainedNodes: !11)
!4185 = !DILocalVariable(name: "c", arg: 1, scope: !4184, file: !560, line: 359, type: !47)
!4186 = !DILocation(line: 359, column: 16, scope: !4184)
!4187 = !DILocation(line: 362, column: 11, scope: !4184)
!4188 = !DILocation(line: 362, column: 13, scope: !4184)
!4189 = !DILocation(line: 362, column: 20, scope: !4184)
!4190 = !DILocation(line: 362, column: 23, scope: !4191)
!4191 = !DILexicalBlockFile(scope: !4184, file: !560, discriminator: 1)
!4192 = !DILocation(line: 362, column: 25, scope: !4184)
!4193 = !DILocation(line: 362, column: 34, scope: !4194)
!4194 = !DILexicalBlockFile(scope: !4184, file: !560, discriminator: 3)
!4195 = !DILocation(line: 362, column: 36, scope: !4184)
!4196 = !DILocation(line: 362, column: 42, scope: !4184)
!4197 = !DILocation(line: 362, column: 50, scope: !4198)
!4198 = !DILexicalBlockFile(scope: !4199, file: !560, discriminator: 4)
!4199 = !DILexicalBlockFile(scope: !4184, file: !560, discriminator: 2)
!4200 = !DILocation(line: 362, column: 3, scope: !4201)
!4201 = !DILexicalBlockFile(scope: !4202, file: !560, discriminator: 6)
!4202 = !DILexicalBlockFile(scope: !4184, file: !560, discriminator: 5)
