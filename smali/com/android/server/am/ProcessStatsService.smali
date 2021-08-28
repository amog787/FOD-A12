.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mInjectedScreenState:Ljava/lang/Boolean;

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field final mLock:Ljava/lang/Object;

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field final mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field mShuttingDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 3
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    .line 119
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 85
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 99
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 120
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 121
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 122
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 123
    monitor-enter v0

    .line 124
    :try_start_0
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 125
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 138
    return-void

    .line 126
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/am/ProcessStatsService;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ProcessStatsService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ProcessStatsService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ProcessStatsService;
    .param p1, "x1"    # J

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void
.end method

.method private dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "aggregateHours"    # I
    .param p5, "now"    # J

    .line 1309
    mul-int/lit8 v0, p4, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1311
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    .line 1312
    return-void

    .line 1314
    :cond_0
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1315
    .local v1, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1316
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 1317
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1318
    return-void

    .line 1320
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1321
    .local v3, "token":J
    const/16 v5, 0xf

    invoke-virtual {v1, p1, p5, p6, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1322
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1323
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"    # J
    .param p4, "now"    # J
    .param p6, "reqPackage"    # Ljava/lang/String;
    .param p7, "isCompact"    # Z
    .param p8, "dumpDetails"    # Z
    .param p9, "dumpFullDetails"    # Z
    .param p10, "dumpAll"    # Z
    .param p11, "activeOnly"    # Z
    .param p12, "section"    # I

    .line 789
    move-object/from16 v10, p1

    const-wide/16 v0, 0x3c

    mul-long v2, p2, v0

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    sub-long/2addr v2, v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 791
    .local v12, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v12, :cond_0

    .line 792
    const-string v0, "Unable to build stats!"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    return-void

    .line 795
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v13, v0

    .line 796
    .local v13, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v12}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v14, v0

    .line 797
    .local v14, "stream":Ljava/io/InputStream;
    invoke-virtual {v13, v14}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 798
    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 799
    const-string v0, "Failure reading: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    return-void

    .line 802
    :cond_1
    if-eqz p7, :cond_2

    .line 803
    move-object/from16 v15, p6

    move/from16 v9, p12

    invoke-virtual {v13, v10, v15, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    goto :goto_1

    .line 805
    :cond_2
    move-object/from16 v15, p6

    move/from16 v9, p12

    if-nez p8, :cond_4

    if-eqz p9, :cond_3

    goto :goto_0

    .line 809
    :cond_3
    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, p4

    move/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_1

    .line 806
    :cond_4
    :goto_0
    xor-int/lit8 v5, p9, 0x1

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, p4

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 812
    :goto_1
    return-void
.end method

.method private dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "sepScreenStates"    # Z
    .param p4, "screenStates"    # [I
    .param p5, "sepMemStates"    # Z
    .param p6, "memStates"    # [I
    .param p7, "sepProcStates"    # Z
    .param p8, "procStates"    # [I
    .param p9, "now"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v9, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-object/from16 v8, p11

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 493
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 494
    if-eqz p2, :cond_0

    .line 495
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    :cond_0
    move-object/from16 v10, p1

    move-object v11, v1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    move-wide/from16 v18, p9

    invoke-static/range {v10 .. v19}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 499
    const/4 v2, 0x1

    return v2

    .line 501
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 815
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    const-string v0, "    [--start-testing] [--stop-testing] "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    const-string v0, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    const-string v0, "    [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    const-string v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    const-string v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    const-string v0, "  --section: proc|pkg-proc|pkg-svc|pkg-asc|pkg-all|all "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    const-string v0, "    options can be combined to select desired stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    const-string v0, "  --pretend-screen-on: pretend screen is on."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    const-string v0, "  --pretend-screen-off: pretend screen is off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 45
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 876
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 878
    .local v16, "now":J
    const/4 v0, 0x0

    .line 879
    .local v0, "isCheckin":Z
    const/4 v1, 0x0

    .line 880
    .local v1, "isCompact":Z
    const/4 v2, 0x0

    .line 881
    .local v2, "isCsv":Z
    const/4 v3, 0x0

    .line 882
    .local v3, "currentOnly":Z
    const/4 v4, 0x0

    .line 883
    .local v4, "dumpDetails":Z
    const/4 v5, 0x0

    .line 884
    .local v5, "dumpFullDetails":Z
    const/4 v6, 0x0

    .line 885
    .local v6, "dumpAll":Z
    const/4 v7, 0x0

    .line 886
    .local v7, "quit":Z
    const/4 v8, 0x0

    .line 887
    .local v8, "aggregateHours":I
    const/4 v9, 0x0

    .line 888
    .local v9, "lastIndex":I
    const/4 v10, 0x2

    .line 889
    .local v10, "maxNum":I
    const/4 v11, 0x0

    .line 890
    .local v11, "activeOnly":Z
    const/4 v12, 0x0

    .line 891
    .local v12, "reqPackage":Ljava/lang/String;
    const/16 v18, 0x0

    .line 892
    .local v18, "csvSepScreenStats":Z
    move/from16 v19, v0

    .end local v0    # "isCheckin":Z
    .local v19, "isCheckin":Z
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 893
    .local v0, "csvScreenStats":[I
    const/16 v20, 0x0

    .line 894
    .local v20, "csvSepMemStats":Z
    move/from16 v21, v8

    .end local v8    # "aggregateHours":I
    .local v21, "aggregateHours":I
    const/4 v8, 0x1

    move-object/from16 v22, v0

    .end local v0    # "csvScreenStats":[I
    .local v22, "csvScreenStats":[I
    new-array v0, v8, [I

    const/16 v23, 0x3

    move/from16 v24, v7

    .end local v7    # "quit":Z
    .local v24, "quit":Z
    const/4 v7, 0x0

    aput v23, v0, v7

    .line 895
    .local v0, "csvMemStats":[I
    const/16 v23, 0x1

    .line 896
    .local v23, "csvSepProcStats":Z
    sget-object v25, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 897
    .local v25, "csvProcStats":[I
    const/16 v26, 0xf

    .line 898
    .local v26, "section":I
    if-eqz v13, :cond_26

    .line 899
    const/16 v27, 0x0

    move/from16 v7, v27

    move/from16 v27, v26

    move-object/from16 v26, v25

    move/from16 v25, v23

    move/from16 v23, v20

    move/from16 v20, v18

    move-object/from16 v18, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    .end local v0    # "csvMemStats":[I
    .local v1, "csvMemStats":[I
    .local v2, "isCompact":Z
    .local v3, "isCsv":Z
    .local v4, "currentOnly":Z
    .local v5, "dumpDetails":Z
    .local v6, "dumpFullDetails":Z
    .local v7, "i":I
    .local v9, "dumpAll":Z
    .local v10, "lastIndex":I
    .local v11, "maxNum":I
    .local v12, "activeOnly":Z
    .local v18, "reqPackage":Ljava/lang/String;
    .local v20, "csvSepScreenStats":Z
    .local v23, "csvSepMemStats":Z
    .local v25, "csvSepProcStats":Z
    .local v26, "csvProcStats":[I
    .local v27, "section":I
    :goto_0
    array-length v0, v13

    if-ge v7, v0, :cond_25

    .line 900
    aget-object v8, v13, v7

    .line 901
    .local v8, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 903
    :cond_0
    const-string v0, "-c"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 905
    :cond_1
    const-string v0, "--csv"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 907
    :cond_2
    const-string v0, "--csv-screen"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 908
    add-int/lit8 v7, v7, 0x1

    .line 909
    array-length v0, v13

    if-lt v7, v0, :cond_3

    .line 910
    const-string v0, "Error: argument required for --csv-screen"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 912
    return-void

    .line 914
    :cond_3
    move-object/from16 v30, v1

    const/4 v1, 0x1

    .end local v1    # "csvMemStats":[I
    .local v30, "csvMemStats":[I
    new-array v0, v1, [Z

    .line 915
    .local v0, "sep":[Z
    move/from16 v31, v2

    .end local v2    # "isCompact":Z
    .local v31, "isCompact":Z
    new-array v2, v1, [Ljava/lang/String;

    .line 916
    .local v2, "error":[Ljava/lang/String;
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    move/from16 v32, v3

    .end local v3    # "isCsv":Z
    .local v32, "isCsv":Z
    const/4 v3, 0x4

    move/from16 v33, v4

    .end local v4    # "currentOnly":Z
    .local v33, "currentOnly":Z
    aget-object v4, v13, v7

    invoke-static {v1, v3, v4, v0, v2}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v22

    .line 918
    if-nez v22, :cond_4

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v13, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 921
    return-void

    .line 923
    :cond_4
    const/4 v3, 0x0

    aget-boolean v20, v0, v3

    .line 924
    .end local v0    # "sep":[Z
    .end local v2    # "error":[Ljava/lang/String;
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .restart local v1    # "csvMemStats":[I
    .local v2, "isCompact":Z
    .restart local v3    # "isCsv":Z
    .restart local v4    # "currentOnly":Z
    :cond_5
    move-object/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v4

    .end local v1    # "csvMemStats":[I
    .end local v2    # "isCompact":Z
    .end local v3    # "isCsv":Z
    .end local v4    # "currentOnly":Z
    .restart local v30    # "csvMemStats":[I
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    const-string v0, "--csv-mem"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 925
    add-int/lit8 v7, v7, 0x1

    .line 926
    array-length v0, v13

    if-lt v7, v0, :cond_6

    .line 927
    const-string v0, "Error: argument required for --csv-mem"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 929
    return-void

    .line 931
    :cond_6
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 932
    .restart local v0    # "sep":[Z
    new-array v2, v1, [Ljava/lang/String;

    .line 933
    .local v2, "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v4, v13, v7

    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v3

    .line 935
    .end local v30    # "csvMemStats":[I
    .local v3, "csvMemStats":[I
    if-nez v3, :cond_7

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v13, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 938
    return-void

    .line 940
    :cond_7
    const/4 v4, 0x0

    aget-boolean v23, v0, v4

    .line 941
    .end local v0    # "sep":[Z
    .end local v2    # "error":[Ljava/lang/String;
    move-object v1, v3

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .end local v3    # "csvMemStats":[I
    .restart local v30    # "csvMemStats":[I
    :cond_8
    const-string v0, "--csv-proc"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 942
    add-int/lit8 v7, v7, 0x1

    .line 943
    array-length v0, v13

    if-lt v7, v0, :cond_9

    .line 944
    const-string v0, "Error: argument required for --csv-proc"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 946
    return-void

    .line 948
    :cond_9
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 949
    .restart local v0    # "sep":[Z
    new-array v2, v1, [Ljava/lang/String;

    .line 950
    .restart local v2    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget-object v4, v13, v7

    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v26

    .line 952
    if-nez v26, :cond_a

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v13, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 955
    return-void

    .line 957
    :cond_a
    const/4 v3, 0x0

    aget-boolean v25, v0, v3

    .line 958
    .end local v0    # "sep":[Z
    .end local v2    # "error":[Ljava/lang/String;
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    :cond_b
    const-string v0, "--details"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 959
    const/4 v5, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 960
    :cond_c
    const-string v0, "--full-details"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 961
    const/4 v6, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 962
    :cond_d
    const-string v0, "--hours"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 963
    add-int/lit8 v7, v7, 0x1

    .line 964
    array-length v0, v13

    if-lt v7, v0, :cond_e

    .line 965
    const-string v0, "Error: argument required for --hours"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 967
    return-void

    .line 970
    :cond_e
    :try_start_0
    aget-object v0, v13, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v21, v0

    .line 975
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: --hours argument not an int -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v13, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 974
    return-void

    .line 976
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string v0, "--last"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 977
    add-int/lit8 v7, v7, 0x1

    .line 978
    array-length v0, v13

    if-lt v7, v0, :cond_10

    .line 979
    const-string v0, "Error: argument required for --last"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 981
    return-void

    .line 984
    :cond_10
    :try_start_1
    aget-object v0, v13, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v0

    .line 989
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 985
    :catch_1
    move-exception v0

    .line 986
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: --last argument not an int -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v13, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 988
    return-void

    .line 990
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    const-string v0, "--max"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 991
    add-int/lit8 v7, v7, 0x1

    .line 992
    array-length v0, v13

    if-lt v7, v0, :cond_12

    .line 993
    const-string v0, "Error: argument required for --max"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 995
    return-void

    .line 998
    :cond_12
    :try_start_2
    aget-object v0, v13, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v11, v0

    .line 1003
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 999
    :catch_2
    move-exception v0

    .line 1000
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: --max argument not an int -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v13, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1001
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1002
    return-void

    .line 1004
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string v0, "--active"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1005
    const/4 v12, 0x1

    .line 1006
    const/4 v4, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    .end local v33    # "currentOnly":Z
    .restart local v4    # "currentOnly":Z
    goto/16 :goto_2

    .line 1007
    .end local v4    # "currentOnly":Z
    .restart local v33    # "currentOnly":Z
    :cond_14
    const-string v0, "--current"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1008
    const/4 v4, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    .end local v33    # "currentOnly":Z
    .restart local v4    # "currentOnly":Z
    goto/16 :goto_2

    .line 1009
    .end local v4    # "currentOnly":Z
    .restart local v33    # "currentOnly":Z
    :cond_15
    const-string v0, "--commit"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1010
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1011
    :try_start_3
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 1012
    invoke-direct {v14, v3, v3}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 1013
    const-string v0, "Process stats committed."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    const/16 v24, 0x1

    .line 1015
    monitor-exit v1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1016
    :cond_16
    const-string v0, "--section"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1017
    add-int/lit8 v7, v7, 0x1

    .line 1018
    array-length v0, v13

    if-lt v7, v0, :cond_17

    .line 1019
    const-string v0, "Error: argument required for --section"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1021
    return-void

    .line 1023
    :cond_17
    aget-object v0, v13, v7

    invoke-static {v0}, Lcom/android/server/am/ProcessStatsService;->parseSectionOptions(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 1024
    :cond_18
    const-string v0, "--clear"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1025
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1026
    :try_start_4
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 1027
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v14, v3, v2}, Lcom/android/server/am/ProcessStatsService;->scheduleRequestPssAllProcs(ZZ)V

    .line 1028
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1030
    :try_start_5
    invoke-direct {v14, v2, v3, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1031
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    .line 1032
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "fi":I
    :goto_1
    if-ltz v2, :cond_19

    .line 1033
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1032
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1037
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "fi":I
    :cond_19
    :try_start_6
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1038
    nop

    .line 1039
    const-string v0, "All process stats cleared."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    const/16 v24, 0x1

    .line 1041
    monitor-exit v1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 1037
    :catchall_1
    move-exception v0

    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1038
    nop

    .end local v5    # "dumpDetails":Z
    .end local v6    # "dumpFullDetails":Z
    .end local v7    # "i":I
    .end local v8    # "arg":Ljava/lang/String;
    .end local v9    # "dumpAll":Z
    .end local v10    # "lastIndex":I
    .end local v11    # "maxNum":I
    .end local v12    # "activeOnly":Z
    .end local v16    # "now":J
    .end local v18    # "reqPackage":Ljava/lang/String;
    .end local v19    # "isCheckin":Z
    .end local v20    # "csvSepScreenStats":Z
    .end local v21    # "aggregateHours":I
    .end local v22    # "csvScreenStats":[I
    .end local v23    # "csvSepMemStats":Z
    .end local v24    # "quit":Z
    .end local v25    # "csvSepProcStats":Z
    .end local v26    # "csvProcStats":[I
    .end local v27    # "section":I
    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .end local p0    # "this":Lcom/android/server/am/ProcessStatsService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "args":[Ljava/lang/String;
    throw v0

    .line 1041
    .restart local v5    # "dumpDetails":Z
    .restart local v6    # "dumpFullDetails":Z
    .restart local v7    # "i":I
    .restart local v8    # "arg":Ljava/lang/String;
    .restart local v9    # "dumpAll":Z
    .restart local v10    # "lastIndex":I
    .restart local v11    # "maxNum":I
    .restart local v12    # "activeOnly":Z
    .restart local v16    # "now":J
    .restart local v18    # "reqPackage":Ljava/lang/String;
    .restart local v19    # "isCheckin":Z
    .restart local v20    # "csvSepScreenStats":Z
    .restart local v21    # "aggregateHours":I
    .restart local v22    # "csvScreenStats":[I
    .restart local v23    # "csvSepMemStats":Z
    .restart local v24    # "quit":Z
    .restart local v25    # "csvSepProcStats":Z
    .restart local v26    # "csvProcStats":[I
    .restart local v27    # "section":I
    .restart local v30    # "csvMemStats":[I
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    .restart local p0    # "this":Lcom/android/server/am/ProcessStatsService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "args":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1042
    :cond_1a
    const-string v0, "--write"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1043
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1044
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 1045
    const-string v0, "Process stats written."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    const/16 v24, 0x1

    .line 1047
    monitor-exit v1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 1048
    :cond_1b
    const-string v0, "--read"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1049
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1050
    :try_start_8
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1052
    :try_start_9
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-direct {v14, v0, v2}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1053
    const-string v0, "Process stats read."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1054
    const/16 v24, 0x1

    .line 1056
    :try_start_a
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1057
    nop

    .line 1058
    monitor-exit v1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 1056
    :catchall_4
    move-exception v0

    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1057
    nop

    .end local v5    # "dumpDetails":Z
    .end local v6    # "dumpFullDetails":Z
    .end local v7    # "i":I
    .end local v8    # "arg":Ljava/lang/String;
    .end local v9    # "dumpAll":Z
    .end local v10    # "lastIndex":I
    .end local v11    # "maxNum":I
    .end local v12    # "activeOnly":Z
    .end local v16    # "now":J
    .end local v18    # "reqPackage":Ljava/lang/String;
    .end local v19    # "isCheckin":Z
    .end local v20    # "csvSepScreenStats":Z
    .end local v21    # "aggregateHours":I
    .end local v22    # "csvScreenStats":[I
    .end local v23    # "csvSepMemStats":Z
    .end local v24    # "quit":Z
    .end local v25    # "csvSepProcStats":Z
    .end local v26    # "csvProcStats":[I
    .end local v27    # "section":I
    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .end local p0    # "this":Lcom/android/server/am/ProcessStatsService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "args":[Ljava/lang/String;
    throw v0

    .line 1058
    .restart local v5    # "dumpDetails":Z
    .restart local v6    # "dumpFullDetails":Z
    .restart local v7    # "i":I
    .restart local v8    # "arg":Ljava/lang/String;
    .restart local v9    # "dumpAll":Z
    .restart local v10    # "lastIndex":I
    .restart local v11    # "maxNum":I
    .restart local v12    # "activeOnly":Z
    .restart local v16    # "now":J
    .restart local v18    # "reqPackage":Ljava/lang/String;
    .restart local v19    # "isCheckin":Z
    .restart local v20    # "csvSepScreenStats":Z
    .restart local v21    # "aggregateHours":I
    .restart local v22    # "csvScreenStats":[I
    .restart local v23    # "csvSepMemStats":Z
    .restart local v24    # "quit":Z
    .restart local v25    # "csvSepProcStats":Z
    .restart local v26    # "csvProcStats":[I
    .restart local v27    # "section":I
    .restart local v30    # "csvMemStats":[I
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    .restart local p0    # "this":Lcom/android/server/am/ProcessStatsService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "args":[Ljava/lang/String;
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    .line 1059
    :cond_1c
    const-string v0, "--start-testing"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1060
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    .line 1061
    const-string v0, "Started high frequency sampling."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    const/16 v24, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 1063
    :cond_1d
    const-string v0, "--stop-testing"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1064
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    .line 1065
    const-string v0, "Stopped high frequency sampling."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    const/16 v24, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 1067
    :cond_1e
    const-string v0, "--pretend-screen-on"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1068
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1069
    const/4 v2, 0x1

    :try_start_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1070
    monitor-exit v1

    .line 1071
    const/16 v24, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 1070
    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    .line 1072
    :cond_1f
    const-string v0, "--pretend-screen-off"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1073
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1074
    const/4 v2, 0x0

    :try_start_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1075
    monitor-exit v1

    .line 1076
    const/16 v24, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_2

    .line 1075
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0

    .line 1077
    :cond_20
    const-string v0, "--stop-pretend-screen"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1078
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1079
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1080
    monitor-exit v1

    .line 1081
    const/16 v24, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto :goto_2

    .line 1080
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v0

    .line 1082
    :cond_21
    const-string v0, "-h"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1083
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1084
    return-void

    .line 1085
    :cond_22
    const-string v0, "-a"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1086
    const/4 v5, 0x1

    .line 1087
    const/4 v9, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto :goto_2

    .line 1088
    :cond_23
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_24

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1091
    return-void

    .line 1094
    :cond_24
    move-object/from16 v18, v8

    .line 1099
    const/4 v5, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    .line 899
    .end local v8    # "arg":Ljava/lang/String;
    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .restart local v1    # "csvMemStats":[I
    .local v2, "isCompact":Z
    .local v3, "isCsv":Z
    .restart local v4    # "currentOnly":Z
    :goto_2
    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto/16 :goto_0

    :cond_25
    move-object/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v4

    .end local v1    # "csvMemStats":[I
    .end local v2    # "isCompact":Z
    .end local v3    # "isCsv":Z
    .end local v4    # "currentOnly":Z
    .restart local v30    # "csvMemStats":[I
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    move-object/from16 v8, v18

    move-object/from16 v7, v26

    move/from16 v18, v5

    move/from16 v26, v23

    move/from16 v23, v12

    move-object/from16 v12, v22

    move/from16 v22, v11

    move/from16 v11, v21

    move/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v30

    move/from16 v44, v20

    move/from16 v20, v6

    move/from16 v6, v27

    move/from16 v27, v25

    move/from16 v25, v44

    goto :goto_3

    .line 898
    .end local v7    # "i":I
    .end local v27    # "section":I
    .end local v30    # "csvMemStats":[I
    .end local v31    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .local v0, "csvMemStats":[I
    .local v1, "isCompact":Z
    .local v2, "isCsv":Z
    .local v3, "currentOnly":Z
    .local v4, "dumpDetails":Z
    .local v5, "dumpFullDetails":Z
    .local v6, "dumpAll":Z
    .local v9, "lastIndex":I
    .local v10, "maxNum":I
    .local v11, "activeOnly":Z
    .local v12, "reqPackage":Ljava/lang/String;
    .local v18, "csvSepScreenStats":Z
    .local v20, "csvSepMemStats":Z
    .local v23, "csvSepProcStats":Z
    .local v25, "csvProcStats":[I
    .local v26, "section":I
    :cond_26
    move/from16 v31, v1

    move/from16 v32, v2

    move/from16 v33, v3

    move-object v8, v12

    move-object/from16 v12, v22

    move/from16 v27, v23

    move-object/from16 v7, v25

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v25, v18

    move/from16 v11, v21

    move-object v10, v0

    move/from16 v18, v4

    move/from16 v21, v6

    move/from16 v6, v26

    move/from16 v26, v20

    move/from16 v20, v5

    .line 1104
    .end local v0    # "csvMemStats":[I
    .end local v1    # "isCompact":Z
    .end local v2    # "isCsv":Z
    .end local v3    # "currentOnly":Z
    .end local v4    # "dumpDetails":Z
    .end local v5    # "dumpFullDetails":Z
    .local v6, "section":I
    .local v7, "csvProcStats":[I
    .local v8, "reqPackage":Ljava/lang/String;
    .local v10, "csvMemStats":[I
    .local v11, "aggregateHours":I
    .local v12, "csvScreenStats":[I
    .local v18, "dumpDetails":Z
    .local v20, "dumpFullDetails":Z
    .local v21, "dumpAll":Z
    .local v22, "maxNum":I
    .local v23, "activeOnly":Z
    .local v25, "csvSepScreenStats":Z
    .local v26, "csvSepMemStats":Z
    .local v27, "csvSepProcStats":Z
    .restart local v31    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    :goto_3
    if-eqz v24, :cond_27

    .line 1105
    return-void

    .line 1108
    :cond_27
    if-eqz v32, :cond_2b

    .line 1109
    const-string v0, "Processes running summed over"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    if-nez v25, :cond_28

    .line 1111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, v12

    if-ge v0, v1, :cond_28

    .line 1112
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    aget v1, v12, v0

    invoke-static {v15, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1116
    .end local v0    # "i":I
    :cond_28
    if-nez v26, :cond_29

    .line 1117
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    array-length v1, v10

    if-ge v0, v1, :cond_29

    .line 1118
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1119
    aget v1, v10, v0

    invoke-static {v15, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1122
    .end local v0    # "i":I
    :cond_29
    if-nez v27, :cond_2a

    .line 1123
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    array-length v1, v7

    if-ge v0, v1, :cond_2a

    .line 1124
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v2, v7, v0

    aget-object v1, v1, v2

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1128
    .end local v0    # "i":I
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1129
    iget-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1130
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, v25

    move-object/from16 v30, v5

    move-object v5, v12

    move/from16 v34, v6

    .end local v6    # "section":I
    .local v34, "section":I
    move/from16 v6, v26

    move-object/from16 v35, v7

    .end local v7    # "csvProcStats":[I
    .local v35, "csvProcStats":[I
    move-object v7, v10

    move-object/from16 v36, v8

    .end local v8    # "reqPackage":Ljava/lang/String;
    .local v36, "reqPackage":Ljava/lang/String;
    move/from16 v8, v27

    move/from16 v37, v9

    .end local v9    # "lastIndex":I
    .local v37, "lastIndex":I
    move-object/from16 v9, v35

    move-object/from16 v39, v10

    move/from16 v38, v11

    .end local v10    # "csvMemStats":[I
    .end local v11    # "aggregateHours":I
    .local v38, "aggregateHours":I
    .local v39, "csvMemStats":[I
    move-wide/from16 v10, v16

    move-object/from16 v40, v12

    .end local v12    # "csvScreenStats":[I
    .local v40, "csvScreenStats":[I
    move-object/from16 v12, v36

    :try_start_e
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 1150
    monitor-exit v30

    .line 1151
    return-void

    .line 1150
    :catchall_9
    move-exception v0

    monitor-exit v30
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    throw v0

    .line 1152
    .end local v34    # "section":I
    .end local v35    # "csvProcStats":[I
    .end local v36    # "reqPackage":Ljava/lang/String;
    .end local v37    # "lastIndex":I
    .end local v38    # "aggregateHours":I
    .end local v39    # "csvMemStats":[I
    .end local v40    # "csvScreenStats":[I
    .restart local v6    # "section":I
    .restart local v7    # "csvProcStats":[I
    .restart local v8    # "reqPackage":Ljava/lang/String;
    .restart local v9    # "lastIndex":I
    .restart local v10    # "csvMemStats":[I
    .restart local v11    # "aggregateHours":I
    .restart local v12    # "csvScreenStats":[I
    :cond_2b
    move/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    move/from16 v37, v9

    move-object/from16 v39, v10

    move/from16 v38, v11

    move-object/from16 v40, v12

    .end local v6    # "section":I
    .end local v7    # "csvProcStats":[I
    .end local v8    # "reqPackage":Ljava/lang/String;
    .end local v9    # "lastIndex":I
    .end local v10    # "csvMemStats":[I
    .end local v11    # "aggregateHours":I
    .end local v12    # "csvScreenStats":[I
    .restart local v34    # "section":I
    .restart local v35    # "csvProcStats":[I
    .restart local v36    # "reqPackage":Ljava/lang/String;
    .restart local v37    # "lastIndex":I
    .restart local v38    # "aggregateHours":I
    .restart local v39    # "csvMemStats":[I
    .restart local v40    # "csvScreenStats":[I
    move/from16 v12, v38

    .end local v38    # "aggregateHours":I
    .local v12, "aggregateHours":I
    if-eqz v12, :cond_2c

    .line 1153
    const-string v0, "AGGREGATED OVER LAST "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1154
    int-to-long v3, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    move-object/from16 v7, v36

    move/from16 v8, v31

    move/from16 v9, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v30, v12

    .end local v12    # "aggregateHours":I
    .local v30, "aggregateHours":I
    move/from16 v12, v23

    move/from16 v13, v34

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1156
    return-void

    .line 1157
    .end local v30    # "aggregateHours":I
    .restart local v12    # "aggregateHours":I
    :cond_2c
    move/from16 v30, v12

    .end local v12    # "aggregateHours":I
    .restart local v30    # "aggregateHours":I
    move/from16 v13, v37

    .end local v37    # "lastIndex":I
    .local v13, "lastIndex":I
    if-lez v13, :cond_37

    .line 1158
    const-string v0, "LAST STATS AT INDEX "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1166
    const/4 v1, 0x0

    const/4 v8, 0x1

    :try_start_f
    invoke-direct {v14, v1, v1, v8}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1167
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-lt v13, v1, :cond_2d

    .line 1168
    :try_start_10
    const-string v1, "Only have "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " data sets"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 1175
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1169
    return-void

    .line 1175
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_a
    move-exception v0

    move/from16 v10, v34

    move-object/from16 v9, v36

    goto/16 :goto_a

    .line 1171
    .restart local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2d
    :try_start_11
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v11, v1

    .line 1172
    .local v11, "file":Landroid/util/AtomicFile;
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v12, v1

    .line 1173
    .local v12, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {v14, v12, v11}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1175
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1176
    nop

    .line 1179
    iget-object v1, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 1180
    if-nez v19, :cond_2e

    if-eqz v31, :cond_2f

    :cond_2e
    const-string v1, "err,"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1181
    :cond_2f
    const-string v1, "Failure reading "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1182
    const-string v1, "; "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    return-void

    .line 1185
    :cond_30
    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 1186
    .local v10, "fileStr":Ljava/lang/String;
    const-string v1, ".ci"

    invoke-virtual {v10, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    .line 1187
    .local v28, "checkedIn":Z
    if-nez v19, :cond_36

    if-eqz v31, :cond_31

    move-object/from16 v29, v10

    goto/16 :goto_8

    .line 1191
    :cond_31
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1192
    iget-object v1, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1193
    if-eqz v28, :cond_32

    const-string v1, " (checked in)"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    :cond_32
    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    if-nez v18, :cond_34

    if-eqz v20, :cond_33

    goto :goto_7

    .line 1202
    :cond_33
    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    move-wide/from16 v4, v16

    move/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    move-object/from16 v29, v10

    move/from16 v10, v34

    move-object/from16 v9, v36

    goto :goto_9

    .line 1196
    :cond_34
    :goto_7
    xor-int/lit8 v6, v20, 0x1

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    move-wide/from16 v4, v16

    move/from16 v7, v18

    move/from16 v8, v21

    move/from16 v9, v23

    move-object/from16 v29, v10

    .end local v10    # "fileStr":Ljava/lang/String;
    .local v29, "fileStr":Ljava/lang/String;
    move/from16 v10, v34

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 1198
    if-eqz v21, :cond_35

    .line 1199
    const-string v1, "  mFile="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v10, v34

    move-object/from16 v9, v36

    goto :goto_9

    .line 1198
    :cond_35
    move/from16 v10, v34

    move-object/from16 v9, v36

    goto :goto_9

    .line 1187
    .end local v29    # "fileStr":Ljava/lang/String;
    .restart local v10    # "fileStr":Ljava/lang/String;
    :cond_36
    move-object/from16 v29, v10

    .line 1189
    .end local v10    # "fileStr":Ljava/lang/String;
    .restart local v29    # "fileStr":Ljava/lang/String;
    :goto_8
    move/from16 v10, v34

    move-object/from16 v9, v36

    .end local v34    # "section":I
    .end local v36    # "reqPackage":Ljava/lang/String;
    .local v9, "reqPackage":Ljava/lang/String;
    .local v10, "section":I
    invoke-virtual {v12, v15, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1205
    :goto_9
    return-void

    .line 1175
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "reqPackage":Ljava/lang/String;
    .end local v10    # "section":I
    .end local v11    # "file":Landroid/util/AtomicFile;
    .end local v12    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v28    # "checkedIn":Z
    .end local v29    # "fileStr":Ljava/lang/String;
    .restart local v34    # "section":I
    .restart local v36    # "reqPackage":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move/from16 v10, v34

    move-object/from16 v9, v36

    .end local v34    # "section":I
    .end local v36    # "reqPackage":Ljava/lang/String;
    .restart local v9    # "reqPackage":Ljava/lang/String;
    .restart local v10    # "section":I
    :goto_a
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1176
    throw v0

    .line 1208
    .end local v9    # "reqPackage":Ljava/lang/String;
    .end local v10    # "section":I
    .restart local v34    # "section":I
    .restart local v36    # "reqPackage":Ljava/lang/String;
    :cond_37
    move/from16 v10, v34

    move-object/from16 v9, v36

    const/4 v8, 0x1

    .end local v34    # "section":I
    .end local v36    # "reqPackage":Ljava/lang/String;
    .restart local v9    # "reqPackage":Ljava/lang/String;
    .restart local v10    # "section":I
    const/4 v1, 0x0

    .line 1209
    .local v1, "sepNeeded":Z
    if-nez v21, :cond_39

    if-eqz v19, :cond_38

    goto :goto_b

    :cond_38
    move/from16 v36, v8

    const/16 v34, 0x0

    goto/16 :goto_19

    :cond_39
    :goto_b
    if-nez v33, :cond_48

    .line 1210
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1212
    if-nez v19, :cond_3a

    move v0, v8

    goto :goto_c

    :cond_3a
    const/4 v0, 0x0

    :goto_c
    const/4 v2, 0x0

    :try_start_12
    invoke-direct {v14, v2, v2, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v11, v0

    .line 1213
    .local v11, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_47

    .line 1214
    if-eqz v19, :cond_3b

    const/4 v3, 0x0

    goto :goto_d

    :cond_3b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v3, v0, v22

    :goto_d
    move v0, v3

    .line 1215
    .local v0, "start":I
    if-gez v0, :cond_3c

    .line 1216
    const/4 v0, 0x0

    move v12, v0

    goto :goto_e

    .line 1215
    :cond_3c
    move v12, v0

    .line 1218
    .end local v0    # "start":I
    .local v12, "start":I
    :goto_e
    move v0, v12

    move v7, v0

    .local v7, "i":I
    :goto_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_13

    if-ge v7, v0, :cond_46

    .line 1221
    :try_start_13
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1222
    .local v0, "file":Landroid/util/AtomicFile;
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    const/4 v6, 0x0

    :try_start_14
    invoke-direct {v2, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v4, v2

    .line 1223
    .local v4, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {v14, v4, v0}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1224
    iget-object v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    if-eqz v2, :cond_3f

    .line 1225
    if-nez v19, :cond_3d

    if-eqz v31, :cond_3e

    :cond_3d
    :try_start_15
    const-string v2, "err,"

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1226
    :cond_3e
    const-string v2, "Failure reading "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1227
    const-string v2, "; "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1229
    new-instance v2, Ljava/io/File;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 1230
    move/from16 v34, v6

    move v2, v7

    move/from16 v36, v8

    goto/16 :goto_17

    .line 1262
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    :catchall_c
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    goto/16 :goto_16

    .line 1232
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_3f
    :try_start_16
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 1233
    .local v5, "fileStr":Ljava/lang/String;
    const-string v2, ".ci"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    move/from16 v28, v2

    .line 1234
    .restart local v28    # "checkedIn":Z
    if-nez v19, :cond_44

    if-eqz v31, :cond_40

    move-object/from16 v38, v4

    move-object/from16 v41, v5

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    move-object/from16 v37, v9

    move/from16 v42, v10

    goto/16 :goto_13

    .line 1238
    :cond_40
    if-eqz v1, :cond_41

    .line 1239
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    move/from16 v29, v1

    goto :goto_10

    .line 1241
    :cond_41
    const/4 v1, 0x1

    move/from16 v29, v1

    .line 1243
    .end local v1    # "sepNeeded":Z
    .local v29, "sepNeeded":Z
    :goto_10
    :try_start_18
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    iget-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    .line 1245
    if-eqz v28, :cond_42

    :try_start_19
    const-string v1, " (checked in)"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    goto :goto_11

    .line 1262
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .end local v28    # "checkedIn":Z
    :catchall_d
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    move/from16 v1, v29

    goto/16 :goto_16

    .line 1246
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5    # "fileStr":Ljava/lang/String;
    .restart local v28    # "checkedIn":Z
    :cond_42
    :goto_11
    :try_start_1a
    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    .line 1250
    if-eqz v20, :cond_43

    .line 1251
    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v38, v4

    move-object/from16 v41, v5

    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .local v38, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v41, "fileStr":Ljava/lang/String;
    move-wide/from16 v4, v16

    move/from16 v42, v6

    move/from16 v6, v34

    move/from16 v43, v7

    move/from16 v34, v42

    .end local v7    # "i":I
    .local v43, "i":I
    move/from16 v7, v36

    move/from16 v36, v8

    move/from16 v8, v37

    move-object/from16 v37, v9

    .end local v9    # "reqPackage":Ljava/lang/String;
    .local v37, "reqPackage":Ljava/lang/String;
    move/from16 v9, v23

    move/from16 v42, v10

    .end local v10    # "section":I
    .local v42, "section":I
    :try_start_1b
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    goto :goto_12

    .line 1254
    .end local v37    # "reqPackage":Ljava/lang/String;
    .end local v38    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v41    # "fileStr":Ljava/lang/String;
    .end local v42    # "section":I
    .end local v43    # "i":I
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5    # "fileStr":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "reqPackage":Ljava/lang/String;
    .restart local v10    # "section":I
    :cond_43
    move-object/from16 v38, v4

    move-object/from16 v41, v5

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    move-object/from16 v37, v9

    move/from16 v42, v10

    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "reqPackage":Ljava/lang/String;
    .end local v10    # "section":I
    .restart local v37    # "reqPackage":Ljava/lang/String;
    .restart local v38    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v41    # "fileStr":Ljava/lang/String;
    .restart local v42    # "section":I
    .restart local v43    # "i":I
    move-object/from16 v1, v38

    move-object/from16 v2, p1

    move-object/from16 v3, v37

    move-wide/from16 v4, v16

    move/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    .line 1257
    :goto_12
    move/from16 v1, v29

    move-object/from16 v9, v37

    move-object/from16 v2, v38

    move/from16 v10, v42

    goto :goto_14

    .line 1262
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v28    # "checkedIn":Z
    .end local v38    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v41    # "fileStr":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move/from16 v1, v29

    move-object/from16 v9, v37

    move/from16 v10, v42

    goto :goto_16

    .end local v37    # "reqPackage":Ljava/lang/String;
    .end local v42    # "section":I
    .end local v43    # "i":I
    .restart local v7    # "i":I
    .restart local v9    # "reqPackage":Ljava/lang/String;
    .restart local v10    # "section":I
    :catchall_f
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    move/from16 v1, v29

    .end local v7    # "i":I
    .end local v9    # "reqPackage":Ljava/lang/String;
    .end local v10    # "section":I
    .restart local v37    # "reqPackage":Ljava/lang/String;
    .restart local v42    # "section":I
    .restart local v43    # "i":I
    goto :goto_16

    .line 1234
    .end local v29    # "sepNeeded":Z
    .end local v37    # "reqPackage":Ljava/lang/String;
    .end local v42    # "section":I
    .end local v43    # "i":I
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v1    # "sepNeeded":Z
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5    # "fileStr":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "reqPackage":Ljava/lang/String;
    .restart local v10    # "section":I
    .restart local v28    # "checkedIn":Z
    :cond_44
    move-object/from16 v38, v4

    move-object/from16 v41, v5

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    move-object/from16 v37, v9

    move/from16 v42, v10

    .line 1236
    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "reqPackage":Ljava/lang/String;
    .end local v10    # "section":I
    .restart local v37    # "reqPackage":Ljava/lang/String;
    .restart local v38    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v41    # "fileStr":Ljava/lang/String;
    .restart local v42    # "section":I
    .restart local v43    # "i":I
    :goto_13
    move-object/from16 v9, v37

    move-object/from16 v2, v38

    move/from16 v10, v42

    .end local v37    # "reqPackage":Ljava/lang/String;
    .end local v38    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v42    # "section":I
    .local v2, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v9    # "reqPackage":Ljava/lang/String;
    .restart local v10    # "section":I
    :try_start_1c
    invoke-virtual {v2, v15, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1257
    :goto_14
    if-eqz v19, :cond_45

    .line 1259
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v41

    .end local v41    # "fileStr":Ljava/lang/String;
    .local v6, "fileStr":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".ci"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    goto :goto_15

    .line 1257
    .end local v6    # "fileStr":Ljava/lang/String;
    .restart local v41    # "fileStr":Ljava/lang/String;
    :cond_45
    move-object/from16 v6, v41

    .line 1265
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v2    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v28    # "checkedIn":Z
    .end local v41    # "fileStr":Ljava/lang/String;
    :goto_15
    move/from16 v2, v43

    goto :goto_17

    .line 1262
    :catchall_10
    move-exception v0

    goto :goto_16

    .end local v43    # "i":I
    .restart local v7    # "i":I
    :catchall_11
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    goto :goto_16

    :catchall_12
    move-exception v0

    move/from16 v43, v7

    move/from16 v36, v8

    const/16 v34, 0x0

    .line 1263
    .end local v7    # "i":I
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v43    # "i":I
    :goto_16
    :try_start_1d
    const-string v2, "**** FAILURE DUMPING STATE: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v2, v43

    .end local v43    # "i":I
    .local v2, "i":I
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    .line 1218
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_17
    add-int/lit8 v7, v2, 0x1

    move/from16 v8, v36

    .end local v2    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_f

    :cond_46
    move v2, v7

    move/from16 v36, v8

    const/16 v34, 0x0

    .end local v7    # "i":I
    .restart local v2    # "i":I
    goto :goto_18

    .line 1213
    .end local v2    # "i":I
    .end local v12    # "start":I
    :cond_47
    move/from16 v36, v8

    const/16 v34, 0x0

    .line 1269
    .end local v11    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_18
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1270
    move v11, v1

    goto :goto_1a

    .line 1269
    :catchall_13
    move-exception v0

    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1270
    throw v0

    .line 1209
    :cond_48
    move/from16 v36, v8

    const/16 v34, 0x0

    .line 1272
    :goto_19
    move v11, v1

    .end local v1    # "sepNeeded":Z
    .local v11, "sepNeeded":Z
    :goto_1a
    if-nez v19, :cond_51

    .line 1273
    iget-object v12, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1274
    if-eqz v31, :cond_49

    .line 1275
    :try_start_1e
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v15, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v34, v11

    goto/16 :goto_1e

    .line 1292
    :catchall_14
    move-exception v0

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v36, v13

    goto/16 :goto_20

    .line 1277
    :cond_49
    if-eqz v11, :cond_4a

    .line 1278
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    .line 1280
    :cond_4a
    :try_start_1f
    const-string v0, "CURRENT STATS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    .line 1281
    if-nez v18, :cond_4c

    if-eqz v20, :cond_4b

    goto :goto_1b

    .line 1288
    :cond_4b
    :try_start_20
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    move-object/from16 v28, v9

    move/from16 v29, v10

    goto :goto_1d

    .line 1282
    :cond_4c
    :goto_1b
    :try_start_21
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_18

    if-nez v20, :cond_4d

    move/from16 v6, v36

    goto :goto_1c

    :cond_4d
    move/from16 v6, v34

    :goto_1c
    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v7, v18

    move/from16 v8, v21

    move-object/from16 v28, v9

    .end local v9    # "reqPackage":Ljava/lang/String;
    .local v28, "reqPackage":Ljava/lang/String;
    move/from16 v9, v23

    move/from16 v29, v10

    .end local v10    # "section":I
    .local v29, "section":I
    :try_start_22
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_17

    .line 1284
    if-eqz v21, :cond_4e

    .line 1285
    :try_start_23
    const-string v0, "  mFile="

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_15

    goto :goto_1d

    .line 1292
    :catchall_15
    move-exception v0

    move/from16 v36, v13

    goto :goto_20

    .line 1290
    :cond_4e
    :goto_1d
    const/4 v11, 0x1

    move/from16 v34, v11

    .line 1292
    .end local v11    # "sepNeeded":Z
    .local v34, "sepNeeded":Z
    :goto_1e
    :try_start_24
    monitor-exit v12
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_16

    .line 1293
    if-nez v33, :cond_50

    .line 1294
    if-eqz v34, :cond_4f

    .line 1295
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1297
    :cond_4f
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    const-wide/16 v3, 0x18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    move-object/from16 v7, v28

    move/from16 v8, v31

    move/from16 v9, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v23

    move/from16 v36, v13

    .end local v13    # "lastIndex":I
    .local v36, "lastIndex":I
    move/from16 v13, v29

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1300
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1301
    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    const-wide/16 v3, 0x3

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    goto :goto_1f

    .line 1293
    .end local v36    # "lastIndex":I
    .restart local v13    # "lastIndex":I
    :cond_50
    move/from16 v36, v13

    .line 1306
    .end local v13    # "lastIndex":I
    .restart local v36    # "lastIndex":I
    :goto_1f
    move/from16 v11, v34

    goto :goto_21

    .line 1292
    .end local v36    # "lastIndex":I
    .restart local v13    # "lastIndex":I
    :catchall_16
    move-exception v0

    move/from16 v36, v13

    move/from16 v11, v34

    .end local v13    # "lastIndex":I
    .restart local v36    # "lastIndex":I
    goto :goto_20

    .end local v34    # "sepNeeded":Z
    .end local v36    # "lastIndex":I
    .restart local v11    # "sepNeeded":Z
    .restart local v13    # "lastIndex":I
    :catchall_17
    move-exception v0

    move/from16 v36, v13

    .end local v13    # "lastIndex":I
    .restart local v36    # "lastIndex":I
    goto :goto_20

    .end local v28    # "reqPackage":Ljava/lang/String;
    .end local v29    # "section":I
    .end local v36    # "lastIndex":I
    .restart local v9    # "reqPackage":Ljava/lang/String;
    .restart local v10    # "section":I
    .restart local v13    # "lastIndex":I
    :catchall_18
    move-exception v0

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v36, v13

    .end local v9    # "reqPackage":Ljava/lang/String;
    .end local v10    # "section":I
    .end local v13    # "lastIndex":I
    .restart local v28    # "reqPackage":Ljava/lang/String;
    .restart local v29    # "section":I
    .restart local v36    # "lastIndex":I
    :goto_20
    :try_start_25
    monitor-exit v12
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_19

    throw v0

    :catchall_19
    move-exception v0

    goto :goto_20

    .line 1272
    .end local v28    # "reqPackage":Ljava/lang/String;
    .end local v29    # "section":I
    .end local v36    # "lastIndex":I
    .restart local v9    # "reqPackage":Ljava/lang/String;
    .restart local v10    # "section":I
    .restart local v13    # "lastIndex":I
    :cond_51
    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v36, v13

    .line 1306
    .end local v9    # "reqPackage":Ljava/lang/String;
    .end local v10    # "section":I
    .end local v13    # "lastIndex":I
    .restart local v28    # "reqPackage":Ljava/lang/String;
    .restart local v29    # "section":I
    .restart local v36    # "lastIndex":I
    :goto_21
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1326
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1330
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1331
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v8, v2

    .line 1332
    .local v8, "now":J
    const-wide v2, 0x10b00000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1333
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v5, 0xf

    invoke-virtual {v4, v0, v8, v9, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1334
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1335
    .end local v2    # "token":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    const-wide v3, 0x10b00000002L

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, v0

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1341
    const-wide v3, 0x10b00000003L

    const/16 v5, 0x18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1343
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1344
    return-void

    .line 1335
    .end local v8    # "now":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dumpProtoForStatsd(Ljava/io/FileDescriptor;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1350
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/proto/ProtoOutputStream;

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1352
    .local v0, "protos":[Landroid/util/proto/ProtoOutputStream;
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1353
    .local v1, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v9, v1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    .line 1354
    const-wide/32 v3, 0xf423f

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    .line 1356
    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1357
    return-void
.end method

.method private getCommittedFilesLF(IZZ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "minNum"    # I
    .param p2, "inclCurrent"    # Z
    .param p3, "inclCheckedIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 450
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_4

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_2

    .line 453
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "currentFile":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 457
    aget-object v4, v0, v3

    .line 458
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, "fileStr":Ljava/lang/String;
    if-nez p3, :cond_1

    const-string v6, ".ci"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 462
    goto :goto_1

    .line 464
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 466
    goto :goto_1

    .line 468
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileStr":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    .end local v3    # "i":I
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 471
    return-object v1

    .line 451
    .end local v1    # "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "currentFile":Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getCurrentFile()Ljava/io/File;
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 338
    return-object v0

    .line 340
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 341
    throw v0
.end method

.method static parseSectionOptions(Ljava/lang/String;)I
    .locals 9
    .param p0, "optionsStr"    # Ljava/lang/String;

    .line 546
    const-string v0, ","

    .line 547
    .local v0, "sep":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "sectionsStr":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 549
    const/16 v2, 0xf

    return v2

    .line 551
    :cond_0
    const/4 v2, 0x0

    .line 552
    .local v2, "res":I
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 553
    .local v3, "optionStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 554
    .local v6, "sectionStr":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 555
    .local v7, "optionIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 556
    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    aget v8, v8, v7

    or-int/2addr v2, v8

    .line 553
    .end local v6    # "sectionStr":Ljava/lang/String;
    .end local v7    # "optionIndex":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 559
    :cond_2
    return v2
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 10
    .param p0, "states"    # [Ljava/lang/String;
    .param p1, "mult"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "outSep"    # [Z
    .param p4, "outError"    # [Ljava/lang/String;

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 508
    .local v1, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_8

    .line 509
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v4

    .line 510
    .local v3, "c":C
    :goto_1
    const/16 v5, 0x2c

    if-eq v3, v5, :cond_1

    const/16 v6, 0x2b

    if-eq v3, v6, :cond_1

    const/16 v6, 0x20

    if-eq v3, v6, :cond_1

    if-eqz v3, :cond_1

    .line 511
    goto :goto_6

    .line 513
    :cond_1
    if-ne v3, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v4

    .line 514
    .local v5, "isSep":Z
    :goto_2
    const/4 v6, 0x0

    if-nez v1, :cond_3

    .line 516
    aput-boolean v5, p3, v4

    goto :goto_3

    .line 517
    :cond_3
    if-eqz v3, :cond_4

    aget-boolean v7, p3, v4

    if-eq v7, v5, :cond_4

    .line 518
    const-string v7, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v7, p4, v4

    .line 519
    return-object v6

    .line 521
    :cond_4
    :goto_3
    add-int/lit8 v7, v2, -0x1

    if-ge v1, v7, :cond_7

    .line 522
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 523
    .local v7, "str":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    array-length v9, p0

    if-ge v8, v9, :cond_6

    .line 524
    aget-object v9, p0, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 525
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    const/4 v7, 0x0

    .line 527
    goto :goto_5

    .line 523
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 530
    .end local v8    # "j":I
    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    .line 531
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid word \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, p4, v4

    .line 532
    return-object v6

    .line 535
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .line 508
    .end local v3    # "c":C
    .end local v5    # "isSep":Z
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 539
    .local v2, "finalRes":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 540
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, p1

    aput v4, v2, v3

    .line 539
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 542
    .end local v3    # "i":I
    :cond_9
    return-object v2
.end method

.method private performWriteState(J)V
    .locals 8
    .param p1, "initialTime"    # J

    .line 348
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 350
    .local v1, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 351
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 352
    if-nez v1, :cond_0

    .line 353
    monitor-exit v0

    return-void

    .line 355
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 356
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 357
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 358
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 361
    .local v3, "startTime":J
    const/4 v0, 0x0

    .line 363
    .local v0, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v0, v5

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 365
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 366
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 367
    const-string/jumbo v5, "procstats"

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    add-long/2addr v6, p1

    .line 367
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 370
    :catch_0
    move-exception v5

    .line 371
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "ProcessStatsService"

    const-string v7, "Error writing process statistics"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 376
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 377
    nop

    .line 378
    return-void

    .line 374
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 376
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 377
    throw v5

    .line 358
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "startTime":J
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p0, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p1, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 689
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v1, Lcom/android/server/am/ProcessStatsService$3;

    const-string v2, "ProcessStats pipe output"

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 702
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 703
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 5
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .line 383
    const-string v0, "ProcessStatsService"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 384
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 385
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 386
    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring existing stats; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    return v1

    .line 442
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_0
    nop

    .line 443
    const/4 v0, 0x1

    return v0

    .line 438
    :catchall_0
    move-exception v2

    .line 439
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 440
    const-string v3, "Error reading process statistics"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    return v1
.end method

.method private scheduleRequestPssAllProcs(ZZ)V
    .locals 2
    .param p1, "always"    # Z
    .param p2, "memLowered"    # Z

    .line 315
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStatsService;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method

.method private trimHistoricStatesWriteLF()V
    .locals 6

    .line 476
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 477
    .local v2, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_1

    .line 481
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 482
    .local v3, "file":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pruning old procstats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProcessStatsService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 484
    .end local v3    # "file":Ljava/lang/String;
    goto :goto_0

    .line 485
    :cond_1
    return-void
.end method

.method private updateFileLocked()V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 327
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    nop

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 333
    return-void

    .line 330
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    throw v0
.end method

.method private writeStateLocked(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .line 269
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 273
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 275
    return-void
.end method

.method private writeStateLocked(ZZ)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z

    .line 280
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 282
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_2

    .line 283
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 284
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 285
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 286
    if-eqz p2, :cond_1

    .line 287
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v6, v5

    iput v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 289
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 290
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 291
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 293
    :cond_2
    if-eqz p2, :cond_3

    .line 294
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 295
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 296
    invoke-direct {p0, v5, v4}, Lcom/android/server/am/ProcessStatsService;->scheduleRequestPssAllProcs(ZZ)V

    .line 298
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 301
    .local v3, "totalTime":J
    if-nez p1, :cond_4

    .line 302
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    monitor-exit v0

    return-void

    .line 309
    .end local v1    # "now":J
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    .line 312
    return-void

    .line 309
    .end local v3    # "totalTime":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeStateSyncLocked()V
    .locals 1

    .line 264
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 265
    return-void
.end method


# virtual methods
.method addSysMemUsageLocked(JJJJJ)V
    .locals 12
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .line 225
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 226
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 855
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ProcessStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    return-void

    .line 858
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 860
    .local v0, "ident":J
    :try_start_0
    array-length v2, p3

    if-lez v2, :cond_2

    .line 861
    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    return-void

    .line 864
    :cond_1
    :try_start_1
    const-string v2, "--statsd"

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 865
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProtoForStatsd(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 871
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 866
    return-void

    .line 869
    :cond_2
    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 871
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 872
    nop

    .line 873
    return-void

    .line 871
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 872
    throw v2
.end method

.method public getCommittedStats(JIZLjava/util/List;)J
    .locals 7
    .param p1, "highWaterMarkMs"    # J
    .param p3, "section"    # I
    .param p4, "doAggregate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .line 605
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J
    .locals 20
    .param p1, "highWaterMarkMs"    # J
    .param p3, "section"    # I
    .param p4, "doAggregate"    # Z
    .param p6, "mergedStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ")J"
        }
    .end annotation

    .line 620
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string/jumbo v5, "state-"

    const-string v6, "ProcessStatsService"

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    move-wide/from16 v7, p1

    .line 624
    .local v7, "newHighWaterMark":J
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 626
    const/4 v0, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-direct {v1, v9, v9, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 627
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_7

    .line 628
    const-string/jumbo v11, "yyyy-MM-dd-HH-mm-ss"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    move-wide/from16 v12, p1

    :try_start_1
    invoke-static {v11, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 630
    .local v11, "highWaterMarkStr":Ljava/lang/String;
    new-instance v14, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v14, v9}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v9, v14

    .line 631
    .local v9, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v0

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_5

    .line 632
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v0

    .line 634
    .local v15, "fileName":Ljava/lang/String;
    nop

    .line 635
    :try_start_2
    invoke-virtual {v15, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 636
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int v0, v0, v16

    move-object/from16 v16, v5

    :try_start_3
    const-string v5, ".bin"

    .line 637
    invoke-virtual {v15, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 634
    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "startTimeStr":Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    .line 639
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v0

    .end local v0    # "startTimeStr":Ljava/lang/String;
    .local v17, "startTimeStr":Ljava/lang/String;
    const/high16 v0, 0x10000000

    invoke-static {v5, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 642
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v5, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 643
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 644
    invoke-virtual {v9, v5}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 645
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 646
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .local v18, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "highWaterMarkStr":Ljava/lang/String;
    :try_start_4
    iget-wide v10, v9, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v10, v10, v7

    if-lez v10, :cond_0

    .line 647
    iget-wide v10, v9, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide v7, v10

    .line 649
    :cond_0
    if-eqz p4, :cond_1

    .line 650
    invoke-virtual {v4, v9}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    goto :goto_1

    .line 651
    :cond_1
    if-eqz v3, :cond_2

    .line 652
    invoke-static {v9, v2}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_2
    :goto_1
    iget-object v10, v9, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 655
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure reading process stats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 656
    goto :goto_6

    .line 661
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v17    # "startTimeStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 659
    :catch_1
    move-exception v0

    goto :goto_5

    .line 638
    .end local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "highWaterMarkStr":Ljava/lang/String;
    .local v0, "startTimeStr":Ljava/lang/String;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "highWaterMarkStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 663
    .end local v0    # "startTimeStr":Ljava/lang/String;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "highWaterMarkStr":Ljava/lang/String;
    :cond_4
    goto :goto_6

    .line 661
    .end local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "highWaterMarkStr":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_2

    .line 659
    :catch_3
    move-exception v0

    goto :goto_4

    .line 661
    :catch_4
    move-exception v0

    move-object/from16 v16, v5

    :goto_2
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 662
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "highWaterMarkStr":Ljava/lang/String;
    :goto_3
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure to read and parse commit file "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 659
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "highWaterMarkStr":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v16, v5

    :goto_4
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 660
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "highWaterMarkStr":Ljava/lang/String;
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure opening procstat file "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    nop

    .line 631
    .end local v0    # "e":Ljava/io/IOException;
    .end local v15    # "fileName":Ljava/lang/String;
    :goto_6
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v5, v16

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    goto/16 :goto_0

    .end local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "highWaterMarkStr":Ljava/lang/String;
    :cond_5
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 665
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .end local v14    # "i":I
    .restart local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "highWaterMarkStr":Ljava/lang/String;
    if-eqz p4, :cond_6

    if-eqz v3, :cond_6

    .line 666
    invoke-static {v4, v2}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 668
    :cond_6
    nop

    .line 673
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 668
    return-wide v7

    .line 670
    .end local v9    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "highWaterMarkStr":Ljava/lang/String;
    :catch_6
    move-exception v0

    goto :goto_8

    .line 627
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-wide/from16 v12, p1

    move-object/from16 v18, v10

    .line 673
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    :goto_7
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 674
    goto :goto_9

    .line 673
    :catchall_0
    move-exception v0

    move-wide/from16 v12, p1

    goto :goto_a

    .line 670
    :catch_7
    move-exception v0

    move-wide/from16 v12, p1

    .line 671
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_6
    const-string v5, "Failure opening procstat file"

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 673
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 675
    :goto_9
    return-wide v7

    .line 673
    :catchall_1
    move-exception v0

    :goto_a
    iget-object v5, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 674
    throw v0
.end method

.method public getCurrentMemoryState()I
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v0

    return v1

    .line 783
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .line 564
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 567
    .local v0, "current":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 569
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 570
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 571
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 572
    .end local v2    # "now":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 575
    if-eqz p1, :cond_0

    .line 576
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 577
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 578
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 580
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 581
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    .line 580
    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 582
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 583
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure opening procstat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 578
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 590
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 591
    throw v1

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 591
    nop

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1

    .line 572
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method getMemFactorLocked()I
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinAssociationDumpDuration()J
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-wide v0
.end method

.method getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # J
    .param p5, "processName"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    return-object v0
.end method

.method getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # J
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "className"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 16
    .param p1, "minTime"    # J

    .line 708
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 712
    .local v2, "current":Landroid/os/Parcel;
    iget-object v4, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 713
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 714
    .local v5, "now":J
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 715
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 716
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 717
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v8, v10

    .line 719
    .end local v5    # "now":J
    .local v8, "curTime":J
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 720
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 722
    cmp-long v0, v8, p1

    if-gez v0, :cond_2

    .line 724
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {v1, v7, v7, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 725
    .local v4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 726
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 727
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats;

    .line 728
    .local v5, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .line 730
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    iget-wide v10, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v12, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v10, v12

    cmp-long v0, v10, p1

    if-gez v0, :cond_1

    .line 732
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v10, Ljava/io/File;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 733
    .local v0, "file":Landroid/util/AtomicFile;
    add-int/lit8 v6, v6, -0x1

    .line 734
    new-instance v10, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v10, v7}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 735
    .local v10, "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {v1, v10, v0}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 736
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 737
    invoke-virtual {v5, v10}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 738
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string v12, "Added stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v12, ", over "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget-wide v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v14, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 744
    const-string v12, "ProcessStatsService"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    nop

    .line 750
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v10    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 746
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v10    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_0
    const-string v11, "ProcessStatsService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failure reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    goto :goto_0

    .line 751
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v10    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v2, v0

    .line 752
    invoke-virtual {v5, v2, v7}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 755
    .end local v4    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 756
    .local v0, "outData":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 757
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 758
    .local v4, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v5, Lcom/android/server/am/ProcessStatsService$4;

    const-string v6, "ProcessStats pipe output"

    invoke-direct {v5, v1, v6, v4, v0}, Lcom/android/server/am/ProcessStatsService$4;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 769
    .local v5, "thr":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 770
    aget-object v3, v4, v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    iget-object v6, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 770
    return-object v3

    .line 774
    .end local v0    # "outData":[B
    .end local v4    # "fds":[Landroid/os/ParcelFileDescriptor;
    .end local v5    # "thr":Ljava/lang/Thread;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "ProcessStatsService"

    const-string v5, "Failed building output pipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    nop

    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 775
    nop

    .line 776
    return-object v3

    .line 774
    :goto_1
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 775
    throw v0

    .line 719
    .end local v8    # "curTime":J
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method isMemFactorLowered()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public synthetic lambda$scheduleRequestPssAllProcs$0$ProcessStatsService(ZZ)V
    .locals 4
    .param p1, "always"    # Z
    .param p2, "memLowered"    # Z

    .line 316
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 317
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 317
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    .line 319
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 147
    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_0
    throw v0
.end method

.method setMemFactorLocked(IZJ)Z
    .locals 11
    .param p1, "memFactor"    # I
    .param p2, "screenOn"    # Z
    .param p3, "now"    # J

    .line 180
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 181
    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 182
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 185
    :cond_1
    if-eqz p2, :cond_2

    .line 186
    add-int/lit8 p1, p1, 0x4

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-eq p1, v0, :cond_8

    .line 189
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v3, v0, v1

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v1

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide p3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 195
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 197
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "ipkg":I
    :goto_1
    if-ltz v1, :cond_7

    .line 198
    nop

    .line 199
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 200
    .local v3, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "iuid":I
    :goto_2
    if-ltz v4, :cond_6

    .line 201
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 202
    .local v5, "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "iver":I
    :goto_3
    if-ltz v6, :cond_5

    .line 203
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 204
    .local v7, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 205
    .local v8, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    .local v9, "isvc":I
    :goto_4
    if-ltz v9, :cond_4

    .line 206
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    .line 207
    .local v10, "service":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v10, p1, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    .line 205
    .end local v10    # "service":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 202
    .end local v7    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v8    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    .end local v9    # "isvc":I
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 200
    .end local v5    # "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v6    # "iver":I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 197
    .end local v3    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v4    # "iuid":I
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 212
    .end local v1    # "ipkg":I
    :cond_7
    return v2

    .line 214
    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_8
    return v1
.end method

.method shouldWriteNowLocked(J)Z
    .locals 8
    .param p1, "now"    # J

    .line 235
    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v6, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 240
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 242
    :cond_0
    return v1

    .line 244
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method shutdown()V
    .locals 3

    .line 248
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 251
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 253
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "versionCode"    # J
    .param p6, "processName"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 157
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-virtual {v0, v1, p6}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 158
    return-void
.end method

.method updateTrackingAssociationsLocked(IJ)V
    .locals 1
    .param p1, "curSeq"    # I
    .param p2, "now"    # J

    .line 230
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->updateTrackingAssociationsLocked(IJ)V

    .line 231
    return-void
.end method

.method writeStateAsync()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 259
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
