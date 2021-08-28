.class final Lcom/android/server/am/ProcessProfileRecord;
.super Ljava/lang/Object;
.source "ProcessProfileRecord.java"


# instance fields
.field final mApp:Lcom/android/server/am/ProcessRecord;

.field private mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field final mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field private mCurRawAdj:I

.field private mInitialIdlePss:J

.field private mLastCachedPss:J

.field private mLastCachedSwapPss:J

.field final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLastLowMemory:J

.field private mLastMemInfo:Landroid/os/Debug$MemoryInfo;

.field private mLastMemInfoTime:J

.field private mLastPss:J

.field private mLastPssTime:J

.field private mLastRequestedGc:J

.field private mLastRss:J

.field private mLastStateTime:J

.field private mLastSwapPss:J

.field private mNextPssTime:J

.field private mPendingUiClean:Z

.field private mPid:I

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

.field final mProfilerLock:Ljava/lang/Object;

.field private mPssProcState:I

.field private mPssStatType:I

.field private mReportLowMemory:Z

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSetAdj:I

.field private mSetProcState:I

.field private mThread:Landroid/app/IApplicationThread;

.field private mTrimMemoryLevel:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 123
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 200
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 201
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 202
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 203
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    .line 204
    return-void
.end method

.method private static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 1
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 562
    return-void
.end method

.method private static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 3
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 552
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    .line 554
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    .line 555
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 556
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 558
    :cond_0
    return-void
.end method

.method static synthetic lambda$onProcessInactive$3(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 1
    .param p0, "origBase"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p1, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 285
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 286
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 289
    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 290
    return-void
.end method


# virtual methods
.method abortNextPssTime()V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 544
    return-void
.end method

.method addPss(JJJZIJ)V
    .locals 17
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "rss"    # J
    .param p7, "always"    # Z
    .param p8, "type"    # I
    .param p9, "duration"    # J

    .line 477
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 478
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    move-object v15, v0

    .line 479
    .local v15, "tracker":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v15, :cond_0

    .line 480
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    move-object/from16 v16, v0

    .line 481
    .local v16, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 482
    nop

    .line 483
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v14

    .line 482
    move-object v3, v15

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->addPss(JJJZIJLandroid/util/ArrayMap;)V

    .line 484
    monitor-exit v16

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "pss":J
    .end local p3    # "uss":J
    .end local p5    # "rss":J
    .end local p7    # "always":Z
    .end local p8    # "type":I
    .end local p9    # "duration":J
    :try_start_2
    throw v0

    .line 486
    .end local v15    # "tracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v16    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "pss":J
    .restart local p3    # "uss":J
    .restart local p5    # "rss":J
    .restart local p7    # "always":Z
    .restart local p8    # "type":I
    .restart local p9    # "duration":J
    :cond_0
    :goto_0
    monitor-exit v2

    .line 487
    return-void

    .line 486
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method commitNextPssTime()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 539
    return-void
.end method

.method computeNextPssTime(IZZJ)J
    .locals 6
    .param p1, "procState"    # I
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .line 548
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    move v0, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method dumpCputime(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 649
    .local v0, "lastCpuTime":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    const-string/jumbo v2, "lastCpuTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 652
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 653
    const-string v2, " timeUsed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 656
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 657
    return-void
.end method

.method dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowUptime"    # J

    .line 609
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 611
    const-string/jumbo v1, "lastPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 613
    const-string v1, " pssProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 615
    const-string v1, " pssStatType="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 617
    const-string v1, " nextPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 619
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 620
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    const-string/jumbo v1, "lastPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 623
    const-string v1, " lastSwapPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 625
    const-string v1, " lastCachedPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 627
    const-string v1, " lastCachedSwapPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 629
    const-string v1, " lastRss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 631
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 632
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    const-string/jumbo v1, "trimMemoryLevel="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 635
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "procStateMemTracker: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 637
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    const-string/jumbo v1, "lastRequestedGc="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 639
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 640
    const-string v1, " lastLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 642
    const-string v1, " reportLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    iget-boolean v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 644
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method getCurProcBatteryStats()Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    return-object v0
.end method

.method getCurRawAdj()I
    .locals 1

    .line 591
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    return v0
.end method

.method getInitialIdlePss()J
    .locals 2

    .line 319
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePss:J

    return-wide v0
.end method

.method getLastCachedPss()J
    .locals 2

    .line 339
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    return-wide v0
.end method

.method getLastCachedSwapPss()J
    .locals 2

    .line 359
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    return-wide v0
.end method

.method getLastLowMemory()J
    .locals 2

    .line 458
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    return-wide v0
.end method

.method getLastMemInfo()Landroid/os/Debug$MemoryInfo;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    return-object v0
.end method

.method getLastMemInfoTime()J
    .locals 2

    .line 389
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    return-wide v0
.end method

.method getLastPss()J
    .locals 2

    .line 329
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    return-wide v0
.end method

.method getLastPssTime()J
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-wide v0
.end method

.method getLastRequestedGc()J
    .locals 2

    .line 448
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    return-wide v0
.end method

.method getLastRss()J
    .locals 2

    .line 369
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    return-wide v0
.end method

.method getLastStateTime()J
    .locals 2

    .line 596
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    return-wide v0
.end method

.method getLastSwapPss()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    return-wide v0
.end method

.method getNextPssTime()J
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-wide v0
.end method

.method getPid()I
    .locals 1

    .line 566
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    return v0
.end method

.method getPssProcState()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    return v0
.end method

.method getPssStatType()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    return v0
.end method

.method getReportLowMemory()Z
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    return v0
.end method

.method getSetAdj()I
    .locals 1

    .line 586
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    return v0
.end method

.method getSetProcState()I
    .locals 1

    .line 581
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    return v0
.end method

.method getThread()Landroid/app/IApplicationThread;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method getTrimMemoryLevel()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    return v0
.end method

.method hasPendingUiClean()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    return v0
.end method

.method init(J)V
    .locals 0
    .param p1, "now"    # J

    .line 207
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 208
    return-void
.end method

.method public synthetic lambda$onProcessActive$0$ProcessProfileRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 232
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 234
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 232
    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public synthetic lambda$onProcessActive$1$ProcessProfileRecord(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 8
    .param p1, "origBase"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;
    .param p3, "baseProcessTracker"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 246
    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p1, :cond_0

    .line 247
    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p5

    move-object v3, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 251
    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p3, :cond_1

    .line 252
    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 254
    :cond_1
    return-void
.end method

.method public synthetic lambda$onProcessInactive$2$ProcessProfileRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 276
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 278
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 276
    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public synthetic lambda$reportCachedKill$4$ProcessProfileRecord(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 9
    .param p1, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 509
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 511
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 512
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 509
    const/16 v1, 0x11

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method onProcessActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 14
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 221
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_1

    .line 222
    iget-object v10, v1, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v10

    .line 223
    :try_start_0
    iget-object v11, v9, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 224
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    move-object v12, v0

    .line 225
    .local v12, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    move-object v13, v0

    .line 226
    .local v13, "pkgList":Lcom/android/server/am/PackageList;
    if-eqz v12, :cond_0

    .line 227
    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    const/4 v4, -0x1

    .line 229
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 230
    invoke-virtual {v13}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v8

    .line 228
    move-object v3, v12

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 231
    new-instance v0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v13, v0}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 237
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :try_start_3
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "thread":Landroid/app/IApplicationThread;
    .end local p2    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :try_start_5
    throw v0

    .line 240
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "thread":Landroid/app/IApplicationThread;
    .restart local p2    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 241
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    .line 243
    .local v3, "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 244
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 245
    new-instance v4, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v12, v9, v3}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v13, v4}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 255
    iput-object v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 256
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v12    # "origBase":Lcom/android/internal/app/procstats/ProcessState;
    .end local v13    # "pkgList":Lcom/android/server/am/PackageList;
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 257
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 256
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "thread":Landroid/app/IApplicationThread;
    .end local p2    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :try_start_8
    throw v0

    .line 257
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "thread":Landroid/app/IApplicationThread;
    .restart local p2    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 259
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 260
    :try_start_9
    iput-object v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 261
    monitor-exit v3

    .line 263
    :goto_1
    return-void

    .line 261
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method onProcessInactive(Lcom/android/server/am/ProcessStatsService;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 266
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 268
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    .line 269
    .local v2, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 270
    iget-object v3, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    move-object v10, v3

    .line 271
    .local v10, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    const/4 v4, -0x1

    .line 273
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 274
    invoke-virtual {v10}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v8

    .line 272
    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 275
    new-instance v3, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v10, v3}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 281
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 283
    invoke-virtual {p0, v9}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 284
    new-instance v3, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v10, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :try_start_5
    throw v3

    .line 292
    .end local v10    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :cond_0
    :goto_0
    iput-object v9, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 293
    .end local v2    # "origBase":Lcom/android/internal/app/procstats/ProcessState;
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 294
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 295
    return-void

    .line 293
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :try_start_8
    throw v2

    .line 294
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method reportCachedKill()V
    .locals 6

    .line 502
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 504
    .local v1, "tracker":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_0

    .line 505
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    .line 506
    .local v2, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 507
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->reportCachedKill(Landroid/util/ArrayMap;J)V

    .line 508
    new-instance v3, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 516
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    :try_start_2
    throw v3

    .line 518
    .end local v1    # "tracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 519
    return-void

    .line 518
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method reportExcessiveCpu()V
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 492
    .local v1, "tracker":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_0

    .line 493
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    .line 494
    .local v2, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 495
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    .line 496
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    :try_start_2
    throw v3

    .line 498
    .end local v1    # "tracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 499
    return-void

    .line 498
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0
    .param p1, "baseProcessTracker"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 217
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 218
    return-void
.end method

.method setCurProcBatteryStats(Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;)V
    .locals 0
    .param p1, "curProcBatteryStats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 443
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 444
    return-void
.end method

.method setInitialIdlePss(J)V
    .locals 0
    .param p1, "initialIdlePss"    # J

    .line 324
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePss:J

    .line 325
    return-void
.end method

.method setLastCachedPss(J)V
    .locals 0
    .param p1, "lastCachedPss"    # J

    .line 344
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    .line 345
    return-void
.end method

.method setLastCachedSwapPss(J)V
    .locals 0
    .param p1, "lastCachedSwapPss"    # J

    .line 364
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    .line 365
    return-void
.end method

.method setLastLowMemory(J)V
    .locals 0
    .param p1, "lastLowMemory"    # J

    .line 463
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    .line 464
    return-void
.end method

.method setLastMemInfo(Landroid/os/Debug$MemoryInfo;)V
    .locals 0
    .param p1, "lastMemInfo"    # Landroid/os/Debug$MemoryInfo;

    .line 384
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    .line 385
    return-void
.end method

.method setLastMemInfoTime(J)V
    .locals 0
    .param p1, "lastMemInfoTime"    # J

    .line 394
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    .line 395
    return-void
.end method

.method setLastPss(J)V
    .locals 0
    .param p1, "lastPss"    # J

    .line 334
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 335
    return-void
.end method

.method setLastPssTime(J)V
    .locals 0
    .param p1, "lastPssTime"    # J

    .line 304
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 305
    return-void
.end method

.method setLastRequestedGc(J)V
    .locals 0
    .param p1, "lastRequestedGc"    # J

    .line 453
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 454
    return-void
.end method

.method setLastRss(J)V
    .locals 0
    .param p1, "lastRss"    # J

    .line 374
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 375
    return-void
.end method

.method setLastSwapPss(J)V
    .locals 0
    .param p1, "lastSwapPss"    # J

    .line 354
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    .line 355
    return-void
.end method

.method setNextPssTime(J)V
    .locals 0
    .param p1, "nextPssTime"    # J

    .line 314
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    .line 315
    return-void
.end method

.method setPendingUiClean(Z)V
    .locals 1
    .param p1, "pendingUiClean"    # Z

    .line 434
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    .line 435
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPendingUiClean(Z)V

    .line 436
    return-void
.end method

.method setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 571
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 572
    return-void
.end method

.method setProcessTrackerState(IIJ)V
    .locals 9
    .param p1, "procState"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .line 522
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 524
    .local v1, "tracker":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_0

    .line 525
    const/16 v2, 0x14

    if-eq p1, v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    move-object v8, v2

    .line 527
    .local v8, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 528
    nop

    .line 529
    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v7

    .line 528
    move-object v2, v1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 530
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "procState":I
    .end local p2    # "memFactor":I
    .end local p3    # "now":J
    :try_start_2
    throw v2

    .line 533
    .end local v1    # "tracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v8    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "procState":I
    .restart local p2    # "memFactor":I
    .restart local p3    # "now":J
    :cond_0
    :goto_0
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method setPssProcState(I)V
    .locals 0
    .param p1, "pssProcState"    # I

    .line 404
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 405
    return-void
.end method

.method setPssStatType(I)V
    .locals 0
    .param p1, "pssStatType"    # I

    .line 414
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 415
    return-void
.end method

.method setReportLowMemory(Z)V
    .locals 0
    .param p1, "reportLowMemory"    # Z

    .line 473
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 474
    return-void
.end method

.method setTrimMemoryLevel(I)V
    .locals 0
    .param p1, "trimMemoryLevel"    # I

    .line 424
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    .line 425
    return-void
.end method

.method updateProcState(Lcom/android/server/am/ProcessStateRecord;)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/am/ProcessStateRecord;

    .line 601
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 602
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    .line 603
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    .line 604
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    .line 605
    return-void
.end method
