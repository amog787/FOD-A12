.class public Lcom/android/server/am/AppProfiler;
.super Ljava/lang/Object;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppProfiler$CpuBinder;,
        Lcom/android/server/am/AppProfiler$ProcessCpuThread;,
        Lcom/android/server/am/AppProfiler$RecordPssRunnable;,
        Lcom/android/server/am/AppProfiler$BgHandler;,
        Lcom/android/server/am/AppProfiler$ProfileData;
    }
.end annotation


# static fields
.field private static final ACTION_HEAP_DUMP_FINISHED:Ljava/lang/String; = "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

.field static final ACTIVITY_START_PSS_DEFER_CONFIG:Ljava/lang/String; = "activity_start_pss_defer"

.field static final BATTERY_STATS_TIME:J = 0x1b7740L

.field private static final EXTRA_HEAP_DUMP_IS_USER_INITIATED:Ljava/lang/String; = "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

.field private static final EXTRA_HEAP_DUMP_PROCESS_NAME:Ljava/lang/String; = "com.android.internal.extra.heap_dump.PROCESS_NAME"

.field private static final EXTRA_HEAP_DUMP_REPORT_PACKAGE:Ljava/lang/String; = "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

.field private static final EXTRA_HEAP_DUMP_SIZE_BYTES:Ljava/lang/String; = "com.android.internal.extra.heap_dump.SIZE_BYTES"

.field static final MONITOR_CPU_MAX_TIME:J = 0xfffffffL

.field static final MONITOR_CPU_MIN_TIME:J = 0x1388L

.field static final MONITOR_CPU_USAGE:Z = true

.field static final MONITOR_THREAD_CPU_USAGE:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_OOM_ADJ:Ljava/lang/String; = "ActivityManager"

.field static final TAG_PSS:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAllowLowerMemLevel:Z

.field private mAppAgentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgHandler:Landroid/os/Handler;

.field private mFullPssPending:Z

.field mHasHomeProcess:Z

.field mHasPreviousProcess:Z

.field private final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLastFullPssTime:J

.field private mLastMemUsageReportTime:J

.field private mLastMemoryLevel:I

.field private mLastNumProcesses:I

.field private volatile mLastWriteTime:J

.field private final mLowMemDetector:Lcom/android/server/am/LowMemDetector;

.field private mLowRamStartTime:J

.field private mLowRamTimeSinceLastIdle:J

.field private mMemFactorOverride:I

.field private mMemWatchDumpPid:I

.field private mMemWatchDumpProcName:Ljava/lang/String;

.field private mMemWatchDumpUid:I

.field private mMemWatchDumpUri:Landroid/net/Uri;

.field private mMemWatchIsUserInitiated:Z

.field private final mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPendingPssProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessProfileRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mProcessCpuThread:Ljava/lang/Thread;

.field private final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private final mProcessesToGc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

.field private mProfileType:I

.field final mProfilerLock:Ljava/lang/Object;

.field private volatile mPssDeferralTime:J

.field private final mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private volatile mTestPssMode:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;Lcom/android/server/am/LowMemDetector;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "bgLooper"    # Landroid/os/Looper;
    .param p3, "detector"    # Lcom/android/server/am/LowMemDetector;

    .line 1992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    .line 188
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    nop

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 200
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    .line 208
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    .line 218
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 225
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 228
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 241
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 247
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 253
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    .line 267
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 270
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 273
    new-instance v4, Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-direct {v4, p0, v2}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/AppProfiler$1;)V

    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 276
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 307
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 309
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 310
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 311
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 313
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 331
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 338
    new-instance v0, Lcom/android/server/am/AppProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$1;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1993
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1994
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 1995
    new-instance v0, Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/AppProfiler$BgHandler;-><init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    .line 1996
    iput-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    .line 1997
    new-instance v0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    const-string v1, "CpuTracker"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppProfiler$ProcessCpuThread;-><init>(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    .line 1998
    return-void
.end method

.method private abortHeapDump(Ljava/lang/String;)V
    .locals 2
    .param p1, "procName"    # Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 764
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 765
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 766
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/AppProfiler;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;

    .line 118
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/am/AppProfiler;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;
    .param p1, "x1"    # J

    .line 118
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;

    .line 118
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;

    .line 118
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppProfiler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;

    .line 118
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->collectPssInBackground()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/AppProfiler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;

    .line 118
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->deferPssForActivityStart()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/AppProfiler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;

    .line 118
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->stopDeferPss()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/am/AppProfiler;->abortHeapDump(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;

    .line 118
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;

    .line 118
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppProfiler;

    .line 118
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "added":Z
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1249
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1250
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1251
    const/4 v0, 0x1

    .line 1252
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1253
    goto :goto_1

    .line 1248
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1256
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1257
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1259
    :cond_2
    return-void
.end method

.method private collectPssInBackground()V
    .locals 43

    .line 417
    move-object/from16 v15, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 418
    .local v17, "start":J
    const/4 v1, 0x0

    .line 419
    .local v1, "memInfo":Lcom/android/internal/util/MemInfoReader;
    iget-object v2, v15, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 420
    :try_start_0
    iget-boolean v0, v15, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 421
    iput-boolean v13, v15, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    .line 422
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v19, v0

    .end local v1    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v0, "memInfo":Lcom/android/internal/util/MemInfoReader;
    goto :goto_0

    .line 420
    .end local v0    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v1    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :cond_0
    move-object/from16 v19, v1

    .line 424
    .end local v1    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v19, "memInfo":Lcom/android/internal/util/MemInfoReader;
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 425
    const/4 v0, 0x0

    if-eqz v19, :cond_3

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 427
    const-wide/16 v1, 0x0

    .line 429
    .local v1, "nativeTotalPss":J
    iget-object v3, v15, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 430
    :try_start_2
    iget-object v4, v15, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v5, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;

    invoke-virtual {v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v4

    .line 433
    .local v4, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 434
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 435
    .local v5, "numOfStats":I
    const/4 v3, 0x0

    move-wide v6, v1

    .end local v1    # "nativeTotalPss":J
    .local v3, "j":I
    .local v6, "nativeTotalPss":J
    :goto_1
    if-ge v3, v5, :cond_2

    .line 436
    iget-object v1, v15, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 437
    :try_start_3
    iget-object v2, v15, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v8, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v8}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 439
    monitor-exit v1

    goto :goto_2

    .line 441
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 442
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v1, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v1, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v1

    add-long/2addr v6, v1

    .line 435
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 441
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 444
    .end local v3    # "j":I
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 445
    iget-object v1, v15, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v8, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 450
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v1

    .line 451
    .local v1, "cachedKb":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v9

    .line 452
    .local v9, "freeKb":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v11

    .line 453
    .local v11, "zramKb":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v20

    move-wide/from16 v31, v20

    .line 454
    .local v31, "kernelKb":J
    const-wide/16 v20, 0x400

    mul-long v33, v1, v20

    mul-long v35, v9, v20

    mul-long v37, v11, v20

    mul-long v39, v31, v20

    mul-long v41, v6, v20

    invoke-static/range {v33 .. v42}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 456
    iget-object v3, v15, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v20, v3

    move-wide/from16 v21, v1

    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    move-wide/from16 v27, v31

    move-wide/from16 v29, v6

    invoke-virtual/range {v20 .. v30}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 458
    .end local v1    # "cachedKb":J
    .end local v9    # "freeKb":J
    .end local v11    # "zramKb":J
    .end local v31    # "kernelKb":J
    monitor-exit v8

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 433
    .end local v4    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v5    # "numOfStats":I
    .end local v6    # "nativeTotalPss":J
    .local v1, "nativeTotalPss":J
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 461
    .end local v1    # "nativeTotalPss":J
    :cond_3
    :goto_3
    const/4 v1, 0x0

    .line 462
    .local v1, "num":I
    const/4 v2, 0x3

    new-array v14, v2, [J

    .line 467
    .local v14, "tmp":[J
    :goto_4
    const/4 v2, -0x1

    .line 469
    .local v2, "pid":I
    iget-object v3, v15, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 470
    :try_start_7
    iget-object v4, v15, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-gtz v4, :cond_5

    .line 471
    :try_start_8
    iget-boolean v0, v15, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    if-nez v0, :cond_4

    goto :goto_5

    .line 472
    :cond_4
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collected pss of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " processes in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v17

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_5
    iget-object v0, v15, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 477
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return-void

    .line 498
    :catchall_3
    move-exception v0

    move-object/from16 v32, v14

    goto/16 :goto_c

    .line 479
    :cond_5
    :try_start_9
    iget-object v4, v15, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessProfileRecord;

    .line 480
    .local v4, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getPssProcState()I

    move-result v5

    move v10, v5

    .line 481
    .local v10, "procState":I
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getPssStatType()I

    move-result v12

    .line 482
    .local v12, "statType":I
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v5

    move-wide/from16 v20, v5

    .line 483
    .local v20, "lastPssTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 484
    .local v5, "now":J
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz v7, :cond_6

    :try_start_a
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v7

    if-ne v10, v7, :cond_6

    const-wide/16 v7, 0x3e8

    add-long v7, v20, v7

    cmp-long v7, v7, v5

    if-gez v7, :cond_6

    .line 486
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move v2, v7

    move v11, v2

    move-object v8, v4

    goto :goto_6

    .line 488
    :cond_6
    :try_start_b
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 495
    const/4 v4, 0x0

    .line 496
    const/4 v2, 0x0

    move v11, v2

    move-object v8, v4

    .line 498
    .end local v2    # "pid":I
    .end local v4    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v5    # "now":J
    .local v8, "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v11, "pid":I
    :goto_6
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 499
    if-eqz v8, :cond_b

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v22

    .line 503
    .local v22, "startTime":J
    iget-object v2, v15, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v8, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v24

    .line 504
    .local v24, "usingCamera":Z
    const-wide/16 v2, 0x0

    if-eqz v24, :cond_7

    move-wide v4, v2

    goto :goto_7

    :cond_7
    invoke-static {v11, v14, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v4

    :goto_7
    move-wide/from16 v25, v4

    .line 505
    .local v25, "pss":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v27

    .line 506
    .local v27, "endTime":J
    iget-object v9, v15, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 507
    cmp-long v2, v25, v2

    if-eqz v2, :cond_a

    :try_start_d
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 508
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v2

    if-ne v2, v10, :cond_9

    .line 509
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v2

    if-ne v2, v11, :cond_8

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    cmp-long v2, v2, v20

    if-nez v2, :cond_8

    .line 510
    add-int/lit8 v29, v1, 0x1

    .line 511
    .end local v1    # "num":I
    .local v29, "num":I
    :try_start_e
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime()V

    .line 512
    aget-wide v6, v14, v13

    const/4 v1, 0x1

    aget-wide v30, v14, v1

    const/4 v1, 0x2

    aget-wide v32, v14, v1

    sub-long v34, v27, v22

    .line 513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 512
    move-object/from16 v1, p0

    move-object v2, v8

    move v3, v10

    move-wide/from16 v4, v25

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .local v38, "profile":Lcom/android/server/am/ProcessProfileRecord;
    move-wide/from16 v8, v30

    move/from16 v30, v10

    move/from16 v31, v11

    .end local v10    # "procState":I
    .end local v11    # "pid":I
    .local v30, "procState":I
    .local v31, "pid":I
    move-wide/from16 v10, v32

    move/from16 v33, v13

    move-object/from16 v32, v14

    .end local v14    # "tmp":[J
    .local v32, "tmp":[J
    move-wide/from16 v13, v34

    move-wide/from16 v15, v36

    :try_start_f
    invoke-direct/range {v1 .. v16}, Lcom/android/server/am/AppProfiler;->recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move/from16 v1, v29

    goto :goto_9

    .line 527
    :catchall_4
    move-exception v0

    move/from16 v1, v29

    goto :goto_a

    .end local v30    # "procState":I
    .end local v31    # "pid":I
    .end local v32    # "tmp":[J
    .end local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v10    # "procState":I
    .restart local v11    # "pid":I
    .restart local v14    # "tmp":[J
    :catchall_5
    move-exception v0

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v32, v14

    move/from16 v1, v29

    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v10    # "procState":I
    .end local v11    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v30    # "procState":I
    .restart local v31    # "pid":I
    .restart local v32    # "tmp":[J
    .restart local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    goto :goto_a

    .line 509
    .end local v29    # "num":I
    .end local v30    # "procState":I
    .end local v31    # "pid":I
    .end local v32    # "tmp":[J
    .end local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v1    # "num":I
    .restart local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v10    # "procState":I
    .restart local v11    # "pid":I
    .restart local v14    # "tmp":[J
    :cond_8
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v33, v13

    move-object/from16 v32, v14

    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v10    # "procState":I
    .end local v11    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v30    # "procState":I
    .restart local v31    # "pid":I
    .restart local v32    # "tmp":[J
    .restart local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    goto :goto_8

    .line 508
    .end local v30    # "procState":I
    .end local v31    # "pid":I
    .end local v32    # "tmp":[J
    .end local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v10    # "procState":I
    .restart local v11    # "pid":I
    .restart local v14    # "tmp":[J
    :cond_9
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v33, v13

    move-object/from16 v32, v14

    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v10    # "procState":I
    .end local v11    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v30    # "procState":I
    .restart local v31    # "pid":I
    .restart local v32    # "tmp":[J
    .restart local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    goto :goto_8

    .line 527
    .end local v30    # "procState":I
    .end local v31    # "pid":I
    .end local v32    # "tmp":[J
    .end local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v10    # "procState":I
    .restart local v11    # "pid":I
    .restart local v14    # "tmp":[J
    :catchall_6
    move-exception v0

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v32, v14

    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v10    # "procState":I
    .end local v11    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v30    # "procState":I
    .restart local v31    # "pid":I
    .restart local v32    # "tmp":[J
    .restart local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    goto :goto_a

    .line 507
    .end local v30    # "procState":I
    .end local v31    # "pid":I
    .end local v32    # "tmp":[J
    .end local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v10    # "procState":I
    .restart local v11    # "pid":I
    .restart local v14    # "tmp":[J
    :cond_a
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v33, v13

    move-object/from16 v32, v14

    .line 515
    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v10    # "procState":I
    .end local v11    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v30    # "procState":I
    .restart local v31    # "pid":I
    .restart local v32    # "tmp":[J
    .restart local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :goto_8
    :try_start_10
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 527
    :goto_9
    monitor-exit v39

    goto :goto_b

    :catchall_7
    move-exception v0

    :goto_a
    monitor-exit v39
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v0

    .line 499
    .end local v22    # "startTime":J
    .end local v24    # "usingCamera":Z
    .end local v25    # "pss":J
    .end local v27    # "endTime":J
    .end local v30    # "procState":I
    .end local v31    # "pid":I
    .end local v32    # "tmp":[J
    .end local v38    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v10    # "procState":I
    .restart local v11    # "pid":I
    .restart local v14    # "tmp":[J
    :cond_b
    move-object/from16 v38, v8

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v33, v13

    move-object/from16 v32, v14

    .line 529
    .end local v8    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v10    # "procState":I
    .end local v11    # "pid":I
    .end local v12    # "statType":I
    .end local v14    # "tmp":[J
    .end local v20    # "lastPssTime":J
    .restart local v32    # "tmp":[J
    :goto_b
    move-object/from16 v15, p0

    move-object/from16 v14, v32

    move/from16 v13, v33

    goto/16 :goto_4

    .line 498
    .end local v32    # "tmp":[J
    .restart local v11    # "pid":I
    .restart local v14    # "tmp":[J
    :catchall_8
    move-exception v0

    move/from16 v31, v11

    move-object/from16 v32, v14

    move/from16 v2, v31

    .end local v11    # "pid":I
    .end local v14    # "tmp":[J
    .restart local v31    # "pid":I
    .restart local v32    # "tmp":[J
    goto :goto_c

    .end local v31    # "pid":I
    .end local v32    # "tmp":[J
    .restart local v2    # "pid":I
    .restart local v14    # "tmp":[J
    :catchall_9
    move-exception v0

    move-object/from16 v32, v14

    .end local v14    # "tmp":[J
    .restart local v32    # "tmp":[J
    :goto_c
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_c

    .line 424
    .end local v1    # "num":I
    .end local v2    # "pid":I
    .end local v32    # "tmp":[J
    :catchall_b
    move-exception v0

    move-object/from16 v1, v19

    goto :goto_d

    .end local v19    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v1, "memInfo":Lcom/android/internal/util/MemInfoReader;
    :catchall_c
    move-exception v0

    :goto_d
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    throw v0
.end method

.method private deferPssForActivityStart()V
    .locals 4

    .line 823
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->deferPssIfNeededLPf()V

    .line 829
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 831
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 829
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 833
    :cond_0
    :goto_0
    return-void
.end method

.method private deferPssIfNeededLPf()V
    .locals 4

    .line 816
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 818
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 820
    :cond_0
    return-void
.end method

.method static synthetic lambda$collectPssInBackground$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 431
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getCpuStats$7(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 1
    .param p0, "predicate"    # Ljava/util/function/Predicate;
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 1907
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$recordPssSampleLPf$1(Lcom/android/server/am/ProcessRecord;JJJIJLcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 18
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "rss"    # J
    .param p7, "statType"    # I
    .param p8, "pssDuration"    # J
    .param p10, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 563
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 565
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 566
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 563
    const/16 v3, 0x12

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move/from16 v13, p7

    move-wide/from16 v16, v14

    move-wide/from16 v14, p8

    invoke-static/range {v3 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJIJJ)V

    .line 570
    return-void
.end method

.method static synthetic lambda$reportMemUsage$6(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 1328
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "procName"    # Ljava/lang/String;

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.shell.heapdump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_javaheap.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1155
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1156
    .local v0, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    .line 1157
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1158
    .local v1, "thread":Landroid/app/IApplicationThread;
    if-eqz v1, :cond_1

    .line 1159
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1160
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1161
    invoke-interface {v1}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    goto :goto_0

    .line 1163
    :cond_0
    invoke-interface {v1}, Landroid/app/IApplicationThread;->processInBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    .end local v0    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v1    # "thread":Landroid/app/IApplicationThread;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1166
    :catch_0
    move-exception v0

    .line 1169
    :goto_1
    return-void
.end method

.method private performAppGcsLPf()V
    .locals 6

    .line 1177
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1178
    return-void

    .line 1180
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1181
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1182
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1183
    .local v1, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getCurRawAdj()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_2

    .line 1184
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1199
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_1
    goto :goto_0

    .line 1185
    .restart local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    .line 1186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 1189
    invoke-direct {p0, v0}, Lcom/android/server/am/AppProfiler;->performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1190
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1191
    return-void

    .line 1195
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1201
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1202
    return-void
.end method

.method private recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    .locals 33
    .param p1, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p2, "procState"    # I
    .param p3, "pss"    # J
    .param p5, "uss"    # J
    .param p7, "swapPss"    # J
    .param p9, "rss"    # J
    .param p11, "statType"    # I
    .param p12, "pssDuration"    # J
    .param p14, "now"    # J

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p3

    move-wide/from16 v10, p7

    move-wide/from16 v8, p9

    iget-object v15, v12, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 557
    .local v15, "proc":Lcom/android/server/am/ProcessRecord;
    nop

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v16

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v31, 0x400

    mul-long v19, v13, v31

    mul-long v21, p5, v31

    mul-long v23, v10, v31

    mul-long v25, v8, v31

    .line 557
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v27, p11

    move/from16 v28, p2

    move-wide/from16 v29, p12

    invoke-static/range {v16 .. v30}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    .line 560
    move-wide/from16 v6, p14

    invoke-virtual {v12, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastPssTime(J)V

    .line 561
    const/16 v16, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    move/from16 v8, v16

    move/from16 v9, p11

    move-wide/from16 v10, p12

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 562
    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v10

    new-instance v11, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;

    move-object v1, v11

    move-object v2, v15

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    move-object v0, v11

    move-object/from16 v16, v15

    move-object v15, v10

    .end local v15    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    move-wide/from16 v10, p12

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/ProcessRecord;JJJIJ)V

    invoke-virtual {v15, v0}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 577
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePss()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {v12, v13, v14}, Lcom/android/server/am/ProcessProfileRecord;->setInitialIdlePss(J)V

    .line 580
    :cond_0
    invoke-virtual {v12, v13, v14}, Lcom/android/server/am/ProcessProfileRecord;->setLastPss(J)V

    .line 581
    move-wide/from16 v0, p7

    invoke-virtual {v12, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setLastSwapPss(J)V

    .line 582
    const/16 v2, 0xe

    move/from16 v3, p2

    if-lt v3, v2, :cond_1

    .line 583
    invoke-virtual {v12, v13, v14}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedPss(J)V

    .line 584
    invoke-virtual {v12, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedSwapPss(J)V

    .line 586
    :cond_1
    move-wide/from16 v4, p9

    invoke-virtual {v12, v4, v5}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    .line 588
    move-object/from16 v2, p0

    iget-object v6, v2, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 589
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    move-object/from16 v7, v16

    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 590
    .local v6, "watchUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 591
    .local v8, "check":Ljava/lang/Long;
    const/4 v9, 0x0

    if-eqz v6, :cond_3

    .line 592
    iget v10, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 593
    .local v10, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v10, :cond_2

    .line 594
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Landroid/util/Pair;

    .line 596
    :cond_2
    if-eqz v10, :cond_3

    .line 597
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v11

    check-cast v8, Ljava/lang/Long;

    .line 600
    .end local v10    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_3
    if-eqz v8, :cond_6

    .line 601
    mul-long v10, v13, v31

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v10, v10, v15

    if-ltz v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, v2, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v10, :cond_6

    .line 603
    sget-boolean v10, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 604
    .local v10, "isDebuggable":Z
    if-nez v10, :cond_4

    .line 605
    iget-object v11, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_4

    .line 606
    const/4 v10, 0x1

    .line 609
    :cond_4
    const-string v11, " exceeded pss limit "

    const-string v15, "Process "

    const-string v9, "ActivityManager"

    if-eqz v10, :cond_5

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; reporting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x0

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    goto :goto_0

    .line 613
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but debugging not enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .end local v10    # "isDebuggable":Z
    :cond_6
    :goto_0
    return-void
.end method

.method private requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z
    .locals 7
    .param p1, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p2, "procState"    # I

    .line 791
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 792
    return v1

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 795
    iget-wide v3, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 796
    iget-wide v5, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move-wide v3, v5

    .line 801
    .local v3, "deferral":J
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 804
    .end local v3    # "deferral":J
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    .line 805
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 806
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    return v2
.end method

.method private stopDeferPss()V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 837
    .local v0, "nesting":I
    if-gtz v0, :cond_0

    .line 842
    if-gez v0, :cond_0

    .line 843
    const-string v1, "ActivityManager"

    const-string v2, "Activity start nesting undercount!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 851
    :cond_0
    return-void
.end method

.method private stopProfilerLPf(Lcom/android/server/am/ProcessRecord;I)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "profileType"    # I

    .line 1641
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1643
    iget p2, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 1646
    :cond_1
    if-nez p1, :cond_2

    .line 1647
    return-void

    .line 1649
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 1650
    .local v0, "thread":Landroid/app/IApplicationThread;
    if-nez v0, :cond_3

    .line 1651
    return-void

    .line 1654
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2, p2}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    nop

    .line 1658
    return-void

    .line 1655
    :catch_0
    move-exception v1

    .line 1656
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Process disappeared"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method clearProfilerLPf()V
    .locals 2

    .line 1662
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1663
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 1665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    goto :goto_0

    .line 1666
    :catch_0
    move-exception v0

    .line 1669
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 1670
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1671
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 1672
    return-void
.end method

.method clearProfilerLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1676
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1677
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1678
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1681
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 1682
    return-void

    .line 1679
    :cond_1
    :goto_0
    return-void
.end method

.method final doLowMemReportIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 14
    .param p1, "dyingProc"    # Lcom/android/server/am/ProcessRecord;

    .line 1266
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->haveBackgroundProcessLOSP()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1267
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1268
    .local v0, "doReport":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1269
    .local v7, "now":J
    if-eqz v0, :cond_1

    .line 1270
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    cmp-long v1, v7, v1

    if-gez v1, :cond_0

    .line 1271
    const/4 v0, 0x0

    goto :goto_0

    .line 1273
    :cond_0
    iput-wide v7, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1276
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v9

    .line 1277
    .local v9, "lruSize":I
    if-eqz v0, :cond_2

    .line 1278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move-object v10, v1

    .line 1279
    .local v10, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    invoke-static {v9}, Lcom/android/server/am/EventLogTags;->writeAmLowMemory(I)V

    .line 1280
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v12, 0x0

    new-instance v13, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object v4, v10

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1308
    if-eqz v0, :cond_3

    .line 1309
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1310
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1313
    .end local v0    # "doReport":Z
    .end local v1    # "msg":Landroid/os/Message;
    .end local v7    # "now":J
    .end local v9    # "lruSize":I
    .end local v10    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1314
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1315
    monitor-exit v0

    .line 1316
    return-void

    .line 1315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpHeapFinished(Ljava/lang/String;I)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callerPid"    # I

    .line 678
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    if-eq p2, v1, :cond_0

    .line 680
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpHeapFinished: Calling pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not match last pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    monitor-exit v0

    return-void

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 690
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 694
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 695
    monitor-exit v0

    .line 696
    return-void

    .line 685
    :cond_2
    :goto_0
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpHeapFinished: Calling path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not match last path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    monitor-exit v0

    return-void

    .line 695
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpLastMemoryLevelLocked(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2209
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    packed-switch v0, :pswitch_data_0

    .line 2223
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2224
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2220
    :pswitch_0
    const-string v0, "critical)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    goto :goto_0

    .line 2217
    :pswitch_1
    const-string/jumbo v0, "low)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    goto :goto_0

    .line 2214
    :pswitch_2
    const-string/jumbo v0, "moderate)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    goto :goto_0

    .line 2211
    :pswitch_3
    const-string/jumbo v0, "normal)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2212
    nop

    .line 2227
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method dumpMemWatchProcessesLPf(Ljava/io/PrintWriter;Z)Z
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "needSep"    # Z

    .line 2146
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2147
    const-string v0, "  Mem watch processes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 2149
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2150
    .local v0, "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2151
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2152
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2153
    .local v3, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_2

    .line 2154
    if-eqz p2, :cond_0

    .line 2155
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2156
    const/4 p2, 0x0

    .line 2158
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2159
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2160
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2161
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2162
    .local v6, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 2163
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 2164
    const-string v7, ", report to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2150
    .end local v2    # "proc":Ljava/lang/String;
    .end local v3    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2169
    .end local v1    # "i":I
    :cond_3
    const-string v1, "  mMemWatchDumpProcName="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    const-string v1, "  mMemWatchDumpUri="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2171
    const-string v1, "  mMemWatchDumpPid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2172
    const-string v1, "  mMemWatchDumpUid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2173
    const-string v1, "  mMemWatchIsUserInitiated="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2175
    .end local v0    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_4
    return p2
.end method

.method dumpMemoryLevelsLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowLowerMemLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastMemoryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLastNumProcesses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    return-void
.end method

.method dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "needSep"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 2344
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2345
    const/4 v0, 0x0

    .line 2346
    .local v0, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2347
    .local v1, "now":J
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 2348
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 2349
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz p3, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2350
    goto :goto_1

    .line 2352
    :cond_0
    if-nez v0, :cond_2

    .line 2353
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2354
    :cond_1
    const/4 p2, 0x1

    .line 2355
    const-string v6, "  Processes that are waiting to GC:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    const/4 v0, 0x1

    .line 2358
    :cond_2
    const-string v6, "    Process "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2359
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2360
    .local v6, "profile":Lcom/android/server/am/ProcessProfileRecord;
    const-string v7, "      lowMem="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 2361
    const-string v7, ", last gced="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2362
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v7

    sub-long v7, v1, v7

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2363
    const-string v7, " ms ago, last lowMem="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v7

    sub-long v7, v1, v7

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2365
    const-string v7, " ms ago"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2347
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2369
    .end local v0    # "printed":Z
    .end local v1    # "now":J
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_3
    return p2
.end method

.method dumpProfileDataLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z

    .line 2180
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2181
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2182
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2183
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    .line 2184
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2185
    :cond_1
    if-eqz p3, :cond_2

    .line 2186
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2187
    const/4 p3, 0x0

    .line 2189
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProfileApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mProfileProc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2190
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2189
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProfileFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mProfileFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2193
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2192
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSamplingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2195
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAutoStopProfiler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2197
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mStreamingOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2199
    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2194
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProfileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    :cond_3
    return p3
.end method

.method forAllCpuStats(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)V"
        }
    .end annotation

    .line 1912
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 1913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    .line 1914
    .local v1, "numOfStats":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1915
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1914
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1917
    .end local v1    # "numOfStats":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 1918
    return-void

    .line 1917
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 1906
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 1907
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v2, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1908
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCpuTimeForPid(I)J
    .locals 3
    .param p1, "pid"    # I

    .line 1900
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 1901
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 1902
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLastMemoryLevelLocked()I
    .locals 1

    .line 916
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    return v0
.end method

.method getLowRamTimeSinceIdleLPr(J)J
    .locals 7
    .param p1, "now"    # J

    .line 1146
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long v4, p1, v2

    :cond_0
    add-long/2addr v0, v4

    return-wide v0
.end method

.method getTestPssMode()Z
    .locals 1

    .line 911
    iget-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    return v0
.end method

.method handleAbortDumpHeap(Ljava/lang/String;)V
    .locals 2
    .param p1, "procName"    # Ljava/lang/String;

    .line 769
    if-eqz p1, :cond_1

    .line 770
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 773
    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 774
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 775
    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 777
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 779
    :cond_1
    :goto_0
    return-void
.end method

.method handlePostDumpHeapNotification()V
    .locals 9

    .line 704
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_0
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 706
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 707
    .local v2, "procName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 708
    .local v3, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 709
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    move-object v3, v4

    .line 711
    :cond_0
    if-eqz v3, :cond_1

    .line 712
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 713
    .local v4, "memLimit":J
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "reportPackage":Ljava/lang/String;
    goto :goto_0

    .line 715
    .end local v4    # "memLimit":J
    .end local v6    # "reportPackage":Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    .line 716
    .restart local v4    # "memLimit":J
    const/4 v6, 0x0

    .line 718
    .restart local v6    # "reportPackage":Ljava/lang/String;
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 720
    .local v7, "isUserInitiated":Z
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 721
    iput-object v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 722
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 723
    iput v8, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 724
    .end local v3    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    if-nez v2, :cond_2

    .line 726
    return-void

    .line 733
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, "dumpFinishedIntent":Landroid/content/Intent;
    const-string v3, "com.android.shell"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    const-string v3, "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 738
    const-string v3, "com.android.internal.extra.heap_dump.SIZE_BYTES"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 739
    const-string v3, "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    const-string v3, "com.android.internal.extra.heap_dump.PROCESS_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 743
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 742
    invoke-virtual {v3, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 744
    return-void

    .line 724
    .end local v0    # "dumpFinishedIntent":Landroid/content/Intent;
    .end local v1    # "uid":I
    .end local v2    # "procName":Ljava/lang/String;
    .end local v4    # "memLimit":J
    .end local v6    # "reportPackage":Ljava/lang/String;
    .end local v7    # "isUserInitiated":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method isLastMemoryLevelNormal()Z
    .locals 1

    .line 921
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$doLowMemReportIfNeededLocked$5$AppProfiler(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p1, "dyingProc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "memInfos"    # Ljava/util/ArrayList;
    .param p3, "now"    # J
    .param p5, "rec"    # Lcom/android/server/am/ProcessRecord;

    .line 1281
    if-eq p5, p1, :cond_4

    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1284
    :cond_0
    iget-object v0, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1285
    .local v0, "state":Lcom/android/server/am/ProcessStateRecord;
    if-eqz p2, :cond_1

    .line 1286
    new-instance v8, Lcom/android/server/am/ProcessMemInfo;

    iget-object v2, p5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    .line 1287
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v5

    .line 1288
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    :cond_1
    iget-object v1, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1291
    .local v1, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p3

    if-gtz v2, :cond_3

    .line 1295
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1296
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    const/16 v4, 0x190

    if-gt v3, v4, :cond_2

    .line 1297
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    goto :goto_0

    .line 1299
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    .line 1301
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1302
    invoke-virtual {v1, p3, p4}, Lcom/android/server/am/ProcessProfileRecord;->setLastLowMemory(J)V

    .line 1303
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1304
    invoke-direct {p0, p5}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1305
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1307
    :cond_3
    :goto_1
    return-void

    .line 1282
    .end local v0    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic lambda$requestPssAllProcsLPr$2$AppProfiler(ZZJLcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p1, "memLowered"    # Z
    .param p2, "always"    # Z
    .param p3, "now"    # J
    .param p5, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 877
    iget-object v6, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 878
    .local v6, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 879
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 882
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v7

    .line 883
    .local v7, "lastStateTime":J
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x3e8

    add-long/2addr v0, v7

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    :cond_1
    const-wide/32 v0, 0x124f80

    add-long/2addr v0, v7

    cmp-long v0, p3, v0

    if-lez v0, :cond_4

    .line 886
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    .line 887
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 888
    :cond_3
    const/4 v0, 0x1

    .line 887
    :goto_0
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 889
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, v6

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 890
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    :cond_4
    return-void

    .line 880
    .end local v7    # "lastStateTime":J
    :cond_5
    :goto_1
    return-void
.end method

.method public synthetic lambda$updateLowMemStateLSP$3$AppProfiler(ZIJ[I[IIILcom/android/server/am/ProcessRecord;)V
    .locals 16
    .param p1, "allChanged"    # Z
    .param p2, "trackerMemFactor"    # I
    .param p3, "now"    # J
    .param p5, "curLevel"    # [I
    .param p6, "step"    # [I
    .param p7, "actualFactor"    # I
    .param p8, "fgTrimLevel"    # I
    .param p9, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1027
    move/from16 v1, p8

    move-object/from16 v2, p9

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1028
    .local v3, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v4

    .line 1029
    .local v4, "trimMemoryLevel":I
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1030
    .local v5, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    .line 1032
    .local v6, "curProcState":I
    const/4 v7, 0x0

    if-nez p1, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->hasProcStateChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p0

    move/from16 v9, p2

    move-wide/from16 v10, p3

    goto :goto_1

    .line 1033
    :cond_1
    :goto_0
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-virtual {v0, v2, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;IJ)V

    .line 1034
    invoke-virtual {v5, v7}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1036
    :goto_1
    const/16 v0, 0xe

    const/16 v12, 0x28

    if-lt v6, v0, :cond_3

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1037
    aget v0, p5, v7

    if-ge v4, v0, :cond_2

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v13, v0

    .local v13, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_2

    .line 1044
    :try_start_0
    aget v0, p5, v7

    invoke-interface {v13, v0}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    goto :goto_2

    .line 1045
    :catch_0
    move-exception v0

    .line 1048
    .end local v13    # "thread":Landroid/app/IApplicationThread;
    :cond_2
    :goto_2
    aget v0, p5, v7

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    .line 1049
    aget v0, p6, v7

    add-int/lit8 v0, v0, 0x1

    aput v0, p6, v7

    .line 1050
    aget v0, p6, v7

    move/from16 v13, p7

    if-lt v0, v13, :cond_a

    .line 1051
    aput v7, p6, v7

    .line 1052
    aget v0, p5, v7

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    .line 1054
    :sswitch_0
    const/16 v0, 0x3c

    aput v0, p5, v7

    .line 1055
    goto :goto_3

    .line 1057
    :sswitch_1
    aput v12, p5, v7

    .line 1058
    :goto_3
    goto :goto_7

    .line 1036
    :cond_3
    move/from16 v13, p7

    .line 1061
    const/16 v0, 0xd

    if-ne v6, v0, :cond_5

    .line 1062
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1063
    if-ge v4, v12, :cond_4

    .line 1064
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v7, v0

    .local v7, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_4

    .line 1071
    :try_start_1
    invoke-interface {v7, v12}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1074
    goto :goto_4

    .line 1073
    :catch_1
    move-exception v0

    .line 1076
    .end local v7    # "thread":Landroid/app/IApplicationThread;
    :cond_4
    :goto_4
    invoke-virtual {v3, v12}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    goto :goto_7

    .line 1078
    :cond_5
    const/4 v0, 0x7

    if-ge v6, v0, :cond_6

    .line 1079
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1083
    const/16 v12, 0x14

    .line 1084
    .local v12, "level":I
    const/16 v0, 0x14

    if-ge v4, v0, :cond_7

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v14

    move-object v15, v14

    .local v15, "thread":Landroid/app/IApplicationThread;
    if-eqz v14, :cond_7

    .line 1090
    :try_start_2
    invoke-interface {v15, v0}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1092
    goto :goto_5

    .line 1091
    :catch_2
    move-exception v0

    .line 1094
    .end local v15    # "thread":Landroid/app/IApplicationThread;
    :cond_7
    :goto_5
    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V

    .line 1096
    .end local v12    # "level":I
    :cond_8
    if-ge v4, v1, :cond_9

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v7, v0

    .restart local v7    # "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_9

    .line 1102
    :try_start_3
    invoke-interface {v7, v1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1104
    goto :goto_6

    .line 1103
    :catch_3
    move-exception v0

    .line 1106
    .end local v7    # "thread":Landroid/app/IApplicationThread;
    :cond_9
    :goto_6
    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    .line 1108
    :cond_a
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic lambda$updateLowMemStateLSP$4$AppProfiler(ZIJLcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "allChanged"    # Z
    .param p2, "trackerMemFactor"    # I
    .param p3, "now"    # J
    .param p5, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1115
    iget-object v0, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1117
    .local v0, "profile":Lcom/android/server/am/ProcessProfileRecord;
    iget-object v1, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1118
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasProcStateChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1119
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p5, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;IJ)V

    .line 1120
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1122
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_2

    .line 1123
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1124
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_3

    .line 1125
    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    move-object v5, v3

    .local v5, "thread":Landroid/app/IApplicationThread;
    if-eqz v3, :cond_3

    .line 1132
    :try_start_0
    invoke-interface {v5, v4}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    goto :goto_0

    .line 1133
    :catch_0
    move-exception v3

    .line 1136
    .end local v5    # "thread":Landroid/app/IApplicationThread;
    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V

    .line 1138
    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    .line 1139
    return-void
.end method

.method onActivityLaunched()V
    .locals 4

    .line 2028
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2029
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2030
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2032
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method onActivityManagerInternalAdded()V
    .locals 3

    .line 2010
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2015
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    nop

    .line 2021
    return-void

    .line 2016
    :catch_0
    move-exception v0

    .line 2017
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ActivityManager"

    const-string v2, "Interrupted wait during start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2018
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2019
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method onAppDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2137
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 2139
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2141
    :cond_0
    monitor-exit v0

    .line 2142
    return-void

    .line 2141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2127
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2128
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2129
    .local v1, "profile":Lcom/android/server/am/ProcessProfileRecord;
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2130
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2131
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 2132
    .end local v1    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    monitor-exit v0

    .line 2133
    return-void

    .line 2132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final performAppGcsIfAppropriateLocked()V
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canGcNowLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    invoke-direct {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsLPf()V

    .line 1212
    monitor-exit v0

    return-void

    .line 1215
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1216
    monitor-exit v0

    .line 1217
    return-void

    .line 1216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method printCurrentCpuState(Ljava/lang/StringBuilder;J)V
    .locals 2
    .param p1, "report"    # Ljava/lang/StringBuilder;
    .param p2, "time"    # J

    .line 2316
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2317
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    monitor-exit v0

    .line 2319
    return-void

    .line 2318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method profileControlLPf(Lcom/android/server/am/ProcessRecord;ZLandroid/app/ProfilerInfo;I)Z
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "start"    # Z
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "profileType"    # I

    .line 1688
    if-eqz p2, :cond_1

    .line 1689
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;I)V

    .line 1690
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, p3}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 1691
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1692
    iput p4, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1693
    iget-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 1698
    goto :goto_0

    .line 1696
    :catch_0
    move-exception v2

    .line 1697
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 1699
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    iput-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1700
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1701
    const/4 v0, 0x0

    .line 1703
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1705
    goto :goto_1

    .line 1704
    :catch_1
    move-exception v2

    .line 1706
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v2

    iput-object v1, v2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1708
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_0

    .line 1713
    const/4 p3, 0x0

    .line 1715
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    goto :goto_2

    .line 1716
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;I)V

    .line 1717
    if-eqz p3, :cond_2

    iget-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 1719
    :try_start_5
    iget-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1721
    goto :goto_2

    .line 1720
    :catch_2
    move-exception v0

    .line 1725
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 1729
    if-eqz p3, :cond_3

    iget-object v1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_3

    .line 1731
    :try_start_6
    iget-object v1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1733
    goto :goto_3

    .line 1732
    :catch_3
    move-exception v1

    .line 1725
    :cond_3
    :goto_3
    return v0

    .line 1729
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1726
    :catch_4
    move-exception v0

    .line 1727
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Process disappeared"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    .end local p1    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "start":Z
    .end local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p4    # "profileType":I
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1729
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    .restart local p1    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "start":Z
    .restart local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p4    # "profileType":I
    :goto_4
    if-eqz p3, :cond_4

    iget-object v1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_4

    .line 1731
    :try_start_8
    iget-object v1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1733
    goto :goto_5

    .line 1732
    :catch_5
    move-exception v1

    .line 1735
    :cond_4
    :goto_5
    throw v0
.end method

.method reportMemUsage(Ljava/util/ArrayList;)V
    .locals 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessMemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1319
    .local p1, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    move-object v3, v0

    .line 1320
    .local v3, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1321
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    .line 1322
    .local v5, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v6, v5, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1320
    .end local v5    # "mi":Lcom/android/server/am/ProcessMemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1324
    .end local v0    # "i":I
    .end local v4    # "size":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 1325
    const/4 v0, 0x4

    new-array v4, v0, [J

    .line 1326
    .local v4, "memtrackTmp":[J
    const/4 v5, 0x2

    new-array v6, v5, [J

    .line 1328
    .local v6, "swaptrackTmp":[J
    sget-object v7, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;

    invoke-virtual {v1, v7}, Lcom/android/server/am/AppProfiler;->getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v7

    .line 1329
    .local v7, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1330
    .local v8, "statsCount":I
    const-wide/16 v9, 0x0

    .line 1331
    .local v9, "totalMemtrackGraphics":J
    const-wide/16 v11, 0x0

    .line 1332
    .local v11, "totalMemtrackGl":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const-wide/16 v15, 0x0

    if-ge v13, v8, :cond_3

    .line 1333
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 1334
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget v14, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v14, v6, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v0

    .line 1335
    .local v0, "pss":J
    cmp-long v14, v0, v15

    if-lez v14, :cond_2

    .line 1336
    iget v14, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v14

    if-gez v14, :cond_1

    .line 1337
    new-instance v14, Lcom/android/server/am/ProcessMemInfo;

    iget-object v15, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v28, v3

    .end local v3    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .local v28, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    iget v3, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v24, -0x3e8

    const/16 v25, -0x1

    const-string/jumbo v26, "native"

    const/16 v27, 0x0

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move/from16 v23, v3

    invoke-direct/range {v21 .. v27}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    move-object v3, v14

    .line 1339
    .local v3, "mi":Lcom/android/server/am/ProcessMemInfo;
    iput-wide v0, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1340
    move-wide/from16 v20, v0

    const/4 v14, 0x1

    .end local v0    # "pss":J
    .local v20, "pss":J
    aget-wide v0, v6, v14

    iput-wide v0, v3, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 1341
    const/4 v0, 0x0

    aget-wide v0, v4, v0

    iput-wide v0, v3, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 1342
    aget-wide v0, v4, v14

    add-long/2addr v9, v0

    .line 1343
    const/4 v0, 0x2

    aget-wide v14, v4, v0

    add-long/2addr v11, v14

    .line 1344
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1336
    .end local v20    # "pss":J
    .end local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .restart local v0    # "pss":J
    .local v3, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    :cond_1
    move-wide/from16 v20, v0

    move-object/from16 v28, v3

    .end local v0    # "pss":J
    .end local v3    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .restart local v20    # "pss":J
    .restart local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    goto :goto_2

    .line 1335
    .end local v20    # "pss":J
    .end local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .restart local v0    # "pss":J
    .restart local v3    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    :cond_2
    move-wide/from16 v20, v0

    move-object/from16 v28, v3

    .line 1332
    .end local v0    # "pss":J
    .end local v3    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x4

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v3, v28

    goto :goto_1

    .end local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .restart local v3    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    :cond_3
    move-object/from16 v28, v3

    .line 1349
    .end local v3    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v13    # "i":I
    .restart local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    const-wide/16 v0, 0x0

    .line 1350
    .local v0, "totalPss":J
    const-wide/16 v13, 0x0

    .line 1351
    .local v13, "totalSwapPss":J
    const-wide/16 v21, 0x0

    .line 1352
    .local v21, "totalMemtrack":J
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    :goto_3
    if-ge v3, v5, :cond_5

    .line 1353
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v15, v23

    check-cast v15, Lcom/android/server/am/ProcessMemInfo;

    .line 1354
    .local v15, "mi":Lcom/android/server/am/ProcessMemInfo;
    move-object/from16 v16, v7

    move/from16 v23, v8

    .end local v7    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v8    # "statsCount":I
    .local v16, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .local v23, "statsCount":I
    iget-wide v7, v15, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v24, 0x0

    cmp-long v7, v7, v24

    if-nez v7, :cond_4

    .line 1355
    iget v7, v15, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-static {v7, v6, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v7

    iput-wide v7, v15, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1356
    move v8, v3

    const/4 v7, 0x1

    .end local v3    # "i":I
    .local v8, "i":I
    aget-wide v2, v6, v7

    iput-wide v2, v15, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 1357
    move v3, v8

    const/4 v2, 0x0

    .end local v8    # "i":I
    .restart local v3    # "i":I
    aget-wide v7, v4, v2

    iput-wide v7, v15, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 1358
    const/4 v2, 0x1

    aget-wide v7, v4, v2

    add-long/2addr v9, v7

    .line 1359
    const/4 v2, 0x2

    aget-wide v7, v4, v2

    add-long/2addr v11, v7

    .line 1361
    :cond_4
    iget-wide v7, v15, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long/2addr v0, v7

    .line 1362
    iget-wide v7, v15, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    add-long/2addr v13, v7

    .line 1363
    iget-wide v7, v15, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v21, v21, v7

    .line 1352
    .end local v15    # "mi":Lcom/android/server/am/ProcessMemInfo;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p1

    move-object/from16 v7, v16

    move/from16 v8, v23

    const-wide/16 v15, 0x0

    goto :goto_3

    .end local v16    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v23    # "statsCount":I
    .restart local v7    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .local v8, "statsCount":I
    :cond_5
    move-object/from16 v16, v7

    move/from16 v23, v8

    .line 1365
    .end local v3    # "i":I
    .end local v5    # "size":I
    .end local v7    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v8    # "statsCount":I
    .restart local v16    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v23    # "statsCount":I
    new-instance v2, Lcom/android/server/am/AppProfiler$2;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Lcom/android/server/am/AppProfiler$2;-><init>(Lcom/android/server/am/AppProfiler;)V

    move-object/from16 v5, p1

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1377
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1378
    .local v2, "tag":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v8

    .line 1379
    .local v7, "stack":Ljava/lang/StringBuilder;
    const-string v8, "Low on memory -- "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    const-string/jumbo v8, "total"

    const/4 v15, 0x0

    invoke-static {v2, v0, v1, v8, v15}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1381
    const-string/jumbo v8, "total"

    const/4 v15, 0x1

    invoke-static {v7, v0, v1, v8, v15}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1383
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v15, 0x400

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1384
    .local v8, "fullNativeBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v26, v4

    .end local v4    # "memtrackTmp":[J
    .local v26, "memtrackTmp":[J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1385
    .local v4, "shortNativeBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v27, v6

    .end local v6    # "swaptrackTmp":[J
    .local v27, "swaptrackTmp":[J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1387
    .local v6, "fullJavaBuilder":Ljava/lang/StringBuilder;
    const/16 v29, 0x1

    .line 1388
    .local v29, "firstLine":Z
    const/high16 v30, -0x80000000

    .line 1389
    .local v30, "lastOomAdj":I
    const-wide/16 v31, 0x0

    .line 1390
    .local v31, "extraNativeRam":J
    const-wide/16 v33, 0x0

    .line 1391
    .local v33, "extraNativeMemtrack":J
    const-wide/16 v35, 0x0

    .line 1392
    .local v35, "cachedPss":J
    const/16 v37, 0x0

    .local v37, "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-wide/from16 v43, v13

    move/from16 v3, v30

    move-wide/from16 v39, v31

    move-wide/from16 v41, v33

    move/from16 v13, v37

    .end local v30    # "lastOomAdj":I
    .end local v31    # "extraNativeRam":J
    .end local v33    # "extraNativeMemtrack":J
    .end local v37    # "i":I
    .local v3, "lastOomAdj":I
    .local v13, "i":I
    .local v15, "size":I
    .local v39, "extraNativeRam":J
    .local v41, "extraNativeMemtrack":J
    .local v43, "totalSwapPss":J
    :goto_4
    if-ge v13, v15, :cond_16

    .line 1393
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v14, v30

    check-cast v14, Lcom/android/server/am/ProcessMemInfo;

    .line 1395
    .local v14, "mi":Lcom/android/server/am/ProcessMemInfo;
    move-wide/from16 v45, v11

    .end local v11    # "totalMemtrackGl":J
    .local v45, "totalMemtrackGl":J
    iget v11, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v12, 0x384

    if-lt v11, v12, :cond_6

    .line 1396
    iget-wide v11, v14, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v35, v35, v11

    move-wide/from16 v11, v35

    goto :goto_5

    .line 1395
    :cond_6
    move-wide/from16 v11, v35

    .line 1399
    .end local v35    # "cachedPss":J
    .local v11, "cachedPss":J
    :goto_5
    move-wide/from16 v47, v11

    .end local v11    # "cachedPss":J
    .local v47, "cachedPss":J
    iget v11, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v12, -0x3e8

    if-eq v11, v12, :cond_11

    iget v11, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v12, 0x1f4

    if-lt v11, v12, :cond_8

    iget v11, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v12, 0x258

    if-eq v11, v12, :cond_8

    iget v11, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v12, 0x2bc

    if-ne v11, v12, :cond_7

    goto :goto_6

    :cond_7
    move-wide/from16 v49, v9

    goto/16 :goto_a

    .line 1403
    :cond_8
    :goto_6
    iget v11, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v3, v11, :cond_c

    .line 1404
    iget v3, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    .line 1405
    iget v11, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v11, :cond_9

    .line 1406
    const-string v11, " / "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    :cond_9
    iget v11, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v11, :cond_b

    .line 1409
    if-eqz v29, :cond_a

    .line 1410
    const-string v11, ":"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    const/16 v29, 0x0

    .line 1413
    :cond_a
    const-string v11, "\n\t at "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1415
    :cond_b
    const-string v11, "$"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1418
    :cond_c
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    const-string v11, "$"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    :goto_7
    iget v11, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v11, :cond_d

    .line 1422
    iget-wide v11, v14, Lcom/android/server/am/ProcessMemInfo;->pss:J

    move-wide/from16 v49, v9

    .end local v9    # "totalMemtrackGraphics":J
    .local v49, "totalMemtrackGraphics":J
    iget-object v9, v14, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v2, v11, v12, v9, v10}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    goto :goto_8

    .line 1421
    .end local v49    # "totalMemtrackGraphics":J
    .restart local v9    # "totalMemtrackGraphics":J
    :cond_d
    move-wide/from16 v49, v9

    .line 1424
    .end local v9    # "totalMemtrackGraphics":J
    .restart local v49    # "totalMemtrackGraphics":J
    :goto_8
    iget-wide v9, v14, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v11, v14, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v7, v9, v10, v11, v12}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1425
    iget v9, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v9, :cond_12

    add-int/lit8 v9, v13, 0x1

    if-ge v9, v15, :cond_e

    add-int/lit8 v9, v13, 0x1

    .line 1426
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessMemInfo;

    iget v9, v9, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v9, v3, :cond_12

    .line 1427
    :cond_e
    const-string v9, "("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_9
    sget-object v10, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v10, v10

    if-ge v9, v10, :cond_10

    .line 1429
    sget-object v10, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v10, v10, v9

    iget v11, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v10, v11, :cond_f

    .line 1430
    sget-object v10, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v10, v10, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    sget-object v10, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v10, v10, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1428
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 1435
    .end local v9    # "k":I
    :cond_10
    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1399
    .end local v49    # "totalMemtrackGraphics":J
    .local v9, "totalMemtrackGraphics":J
    :cond_11
    move-wide/from16 v49, v9

    .line 1439
    .end local v9    # "totalMemtrackGraphics":J
    .restart local v49    # "totalMemtrackGraphics":J
    :cond_12
    :goto_a
    move/from16 v9, v29

    .end local v29    # "firstLine":Z
    .local v9, "firstLine":Z
    invoke-static {v8, v14}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 1440
    iget v10, v14, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v11, -0x3e8

    if-ne v10, v11, :cond_14

    .line 1442
    iget-wide v10, v14, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v29, 0x200

    cmp-long v10, v10, v29

    if-ltz v10, :cond_13

    .line 1443
    invoke-static {v4, v14}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    goto :goto_b

    .line 1445
    :cond_13
    iget-wide v10, v14, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v39, v39, v10

    .line 1446
    iget-wide v10, v14, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v41, v41, v10

    goto :goto_b

    .line 1451
    :cond_14
    const-wide/16 v10, 0x0

    cmp-long v12, v39, v10

    if-lez v12, :cond_15

    .line 1452
    const/16 v30, -0x3e8

    const/16 v31, -0x1

    const-string v36, "(Other native)"

    move-object/from16 v29, v4

    move-wide/from16 v32, v39

    move-wide/from16 v34, v41

    invoke-static/range {v29 .. v36}, Lcom/android/server/am/ActivityManagerService;->appendBasicMemEntry(Ljava/lang/StringBuilder;IIJJLjava/lang/String;)V

    .line 1454
    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1455
    const-wide/16 v39, 0x0

    .line 1457
    :cond_15
    invoke-static {v6, v14}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 1392
    .end local v14    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move/from16 v29, v9

    move-wide/from16 v11, v45

    move-wide/from16 v35, v47

    move-wide/from16 v9, v49

    goto/16 :goto_4

    .end local v45    # "totalMemtrackGl":J
    .end local v47    # "cachedPss":J
    .end local v49    # "totalMemtrackGraphics":J
    .local v9, "totalMemtrackGraphics":J
    .local v11, "totalMemtrackGl":J
    .restart local v29    # "firstLine":Z
    .restart local v35    # "cachedPss":J
    :cond_16
    move-wide/from16 v49, v9

    move-wide/from16 v45, v11

    .line 1461
    .end local v9    # "totalMemtrackGraphics":J
    .end local v11    # "totalMemtrackGl":J
    .end local v13    # "i":I
    .end local v15    # "size":I
    .restart local v45    # "totalMemtrackGl":J
    .restart local v49    # "totalMemtrackGraphics":J
    const-string v9, "           "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    invoke-static {v6, v0, v1}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 1463
    const-string v9, ": TOTAL"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    const-wide/16 v9, 0x0

    cmp-long v11, v21, v9

    if-lez v11, :cond_17

    .line 1465
    const-string v9, " ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    invoke-static/range {v21 .. v22}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    const-string v9, " memtrack)"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    :cond_17
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    new-instance v9, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v9}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1472
    .local v9, "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1473
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v10

    .line 1475
    .local v10, "infos":[J
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x400

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1476
    .local v11, "memInfoBuilder":Ljava/lang/StringBuilder;
    invoke-static {v10}, Landroid/os/Debug;->getMemInfo([J)V

    .line 1477
    const-string v12, "  MemInfo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    const/4 v12, 0x5

    aget-wide v12, v10, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " slab, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    const/4 v12, 0x4

    aget-wide v12, v10, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " shmem, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    const/16 v12, 0xc

    aget-wide v12, v10, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " vm alloc, "

    .line 1481
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    const/16 v12, 0xd

    aget-wide v12, v10, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " page tables "

    .line 1483
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    const/16 v12, 0xe

    aget-wide v12, v10, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " kernel stack\n"

    .line 1485
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    const-string v12, "           "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    const/4 v12, 0x2

    aget-wide v13, v10, v12

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " buffers, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    const/4 v12, 0x3

    aget-wide v13, v10, v12

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " cached, "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    const/16 v13, 0xb

    aget-wide v13, v10, v13

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " mapped, "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    const/4 v13, 0x1

    aget-wide v14, v10, v13

    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " free\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    const/16 v13, 0xa

    aget-wide v14, v10, v13

    const-wide/16 v24, 0x0

    cmp-long v14, v14, v24

    if-eqz v14, :cond_18

    .line 1492
    const-string v14, "  ZRAM: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    aget-wide v14, v10, v13

    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    const-string v13, " RAM, "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    const/16 v13, 0x8

    aget-wide v13, v10, v13

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    const-string v13, " swap total, "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    const/16 v13, 0x9

    aget-wide v13, v10, v13

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    const-string v13, " swap free\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    :cond_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    move-result-object v13

    .line 1501
    .local v13, "ksm":[J
    const/4 v14, 0x1

    aget-wide v30, v13, v14

    const-wide/16 v14, 0x0

    cmp-long v17, v30, v14

    if-nez v17, :cond_19

    const/16 v17, 0x0

    aget-wide v24, v13, v17

    cmp-long v17, v24, v14

    if-nez v17, :cond_19

    const/16 v17, 0x2

    aget-wide v24, v13, v17

    cmp-long v17, v24, v14

    if-nez v17, :cond_19

    aget-wide v24, v13, v12

    cmp-long v17, v24, v14

    if-eqz v17, :cond_1a

    .line 1503
    :cond_19
    const-string v14, "  KSM: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    const/4 v14, 0x1

    aget-wide v14, v13, v14

    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    const-string v14, " saved from shared "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    const/4 v14, 0x0

    aget-wide v30, v13, v14

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    const-string v14, "\n       "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    const/4 v14, 0x2

    aget-wide v14, v13, v14

    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    const-string v14, " unshared; "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    aget-wide v14, v13, v12

    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    const-string v12, " volatile\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    :cond_1a
    const-string v12, "  Free RAM: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v14

    add-long v14, v35, v14

    .line 1515
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v19

    add-long v14, v14, v19

    .line 1514
    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v14

    .line 1518
    .local v14, "kernelUsed":J
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v19

    .line 1519
    .local v19, "ionHeap":J
    invoke-static {}, Landroid/os/Debug;->getIonPoolsSizeKb()J

    move-result-wide v30

    .line 1520
    .local v30, "ionPool":J
    invoke-static {}, Landroid/os/Debug;->getDmabufMappedSizeKb()J

    move-result-wide v32

    .line 1521
    .local v32, "dmabufMapped":J
    const-wide/16 v24, 0x0

    cmp-long v12, v19, v24

    if-ltz v12, :cond_1b

    cmp-long v12, v30, v24

    if-ltz v12, :cond_1b

    .line 1522
    sub-long v47, v19, v32

    .line 1523
    .local v47, "ionUnmapped":J
    const-string v12, "       ION: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    add-long v51, v19, v30

    invoke-static/range {v51 .. v52}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    add-long v14, v14, v47

    .line 1530
    sub-long v0, v0, v49

    .line 1531
    add-long v0, v0, v32

    .line 1532
    .end local v47    # "ionUnmapped":J
    goto :goto_c

    .line 1533
    :cond_1b
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v47

    .line 1534
    .local v47, "totalExportedDmabuf":J
    const-wide/16 v24, 0x0

    cmp-long v12, v47, v24

    if-ltz v12, :cond_1c

    .line 1535
    sub-long v51, v47, v32

    .line 1536
    .local v51, "dmabufUnmapped":J
    const-string v12, "DMA-BUF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    invoke-static/range {v47 .. v48}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    add-long v14, v14, v51

    .line 1542
    sub-long v0, v0, v49

    .line 1543
    add-long v0, v0, v32

    .line 1547
    .end local v51    # "dmabufUnmapped":J
    :cond_1c
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v51

    .line 1548
    .local v51, "totalExportedDmabufHeap":J
    const-wide/16 v24, 0x0

    cmp-long v12, v51, v24

    if-ltz v12, :cond_1d

    .line 1549
    const-string v12, "DMA-BUF Heap: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-static/range {v51 .. v52}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    :cond_1d
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapPoolsSizeKb()J

    move-result-wide v53

    .line 1555
    .local v53, "totalDmabufHeapPool":J
    const-wide/16 v24, 0x0

    cmp-long v12, v53, v24

    if-ltz v12, :cond_1e

    .line 1556
    const-string v12, "DMA-BUF Heaps pool: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    invoke-static/range {v53 .. v54}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    .end local v47    # "totalExportedDmabuf":J
    .end local v51    # "totalExportedDmabufHeap":J
    .end local v53    # "totalDmabufHeapPool":J
    :cond_1e
    :goto_c
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v47

    .line 1563
    .local v47, "gpuUsage":J
    const-wide/16 v24, 0x0

    cmp-long v12, v47, v24

    if-ltz v12, :cond_20

    .line 1564
    invoke-static {}, Landroid/os/Debug;->getGpuDmaBufUsageKb()J

    move-result-wide v51

    .line 1565
    .local v51, "gpuDmaBufUsage":J
    cmp-long v12, v51, v24

    if-ltz v12, :cond_1f

    .line 1566
    sub-long v24, v47, v51

    .line 1567
    .local v24, "gpuPrivateUsage":J
    const-string v12, "      GPU: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    invoke-static/range {v47 .. v48}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    invoke-static/range {v51 .. v52}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    const-string v12, " dmabuf + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    invoke-static/range {v24 .. v25}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    const-string v12, " private)\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    sub-long v0, v0, v45

    .line 1577
    add-long v14, v14, v24

    .line 1578
    .end local v24    # "gpuPrivateUsage":J
    move-wide/from16 v24, v14

    move-wide v14, v0

    goto :goto_d

    .line 1579
    :cond_1f
    const-string v12, "       GPU: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    invoke-static/range {v47 .. v48}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    .end local v51    # "gpuDmaBufUsage":J
    :cond_20
    move-wide/from16 v24, v14

    move-wide v14, v0

    .end local v0    # "totalPss":J
    .local v14, "totalPss":J
    .local v24, "kernelUsed":J
    :goto_d
    const-string v0, "  Used RAM: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    sub-long v0, v14, v35

    add-long v0, v0, v24

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    const-string v0, "  Lost RAM: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v0

    sub-long v51, v14, v43

    sub-long v0, v0, v51

    .line 1594
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v51

    sub-long v0, v0, v51

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v51

    sub-long v0, v0, v51

    sub-long v0, v0, v24

    .line 1595
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v51

    sub-long v0, v0, v51

    .line 1593
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    const-string v0, "ActivityManager"

    const-string v1, "Low on memory:"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const-string v0, "ActivityManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const-string v0, "ActivityManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const-string v0, "ActivityManager"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v0

    .line 1603
    .local v1, "dropBuilder":Ljava/lang/StringBuilder;
    const-string v0, "Low on memory:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1605
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1606
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1607
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1608
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1609
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1611
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v12, v0

    .line 1612
    .local v12, "catSw":Ljava/io/StringWriter;
    move/from16 v17, v3

    move-object/from16 v34, v4

    move-object/from16 v3, p0

    .end local v3    # "lastOomAdj":I
    .end local v4    # "shortNativeBuilder":Ljava/lang/StringBuilder;
    .local v17, "lastOomAdj":I
    .local v34, "shortNativeBuilder":Ljava/lang/StringBuilder;
    iget-object v4, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1613
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/16 v5, 0x100

    move-object/from16 v37, v6

    const/4 v6, 0x0

    .end local v6    # "fullJavaBuilder":Ljava/lang/StringBuilder;
    .local v37, "fullJavaBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-direct {v0, v12, v6, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    move-object/from16 v53, v0

    .line 1614
    .local v53, "catPw":Ljava/io/PrintWriter;
    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v54, v0

    .line 1615
    .local v54, "emptyArgs":[Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/io/PrintWriter;->println()V

    .line 1616
    iget-object v5, v3, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1617
    iget-object v0, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v52, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, -0x1

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v58}, Lcom/android/server/am/ProcessList;->dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V

    .line 1618
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1619
    invoke-virtual/range {v53 .. v53}, Ljava/io/PrintWriter;->println()V

    .line 1620
    iget-object v0, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/16 v56, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v55, v0

    move-object/from16 v57, v53

    move-object/from16 v58, v54

    invoke-virtual/range {v55 .. v61}, Lcom/android/server/am/ActiveServices;->newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-result-object v0

    .line 1621
    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpLocked()V

    .line 1622
    invoke-virtual/range {v53 .. v53}, Ljava/io/PrintWriter;->println()V

    .line 1623
    iget-object v0, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v56, "activities"

    const/16 v57, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v55, v0

    move-object/from16 v58, v53

    move-object/from16 v59, v54

    invoke-virtual/range {v55 .. v63}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1625
    invoke-virtual/range {v53 .. v53}, Ljava/io/PrintWriter;->flush()V

    .line 1626
    .end local v53    # "catPw":Ljava/io/PrintWriter;
    .end local v54    # "emptyArgs":[Ljava/lang/String;
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1627
    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    const/16 v0, 0x51

    invoke-static {v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 1629
    iget-object v0, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v52, "lowmem"

    const/16 v53, 0x0

    const-string/jumbo v54, "system_server"

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    .line 1630
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    .line 1629
    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v64}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;)V

    .line 1631
    iget-object v5, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v51
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide/from16 v53, v51

    .line 1633
    .local v53, "now":J
    move-object v6, v1

    .end local v1    # "dropBuilder":Ljava/lang/StringBuilder;
    .local v6, "dropBuilder":Ljava/lang/StringBuilder;
    :try_start_5
    iget-wide v0, v3, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v38, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v53

    .end local v7    # "stack":Ljava/lang/StringBuilder;
    .end local v53    # "now":J
    .local v6, "now":J
    .local v18, "stack":Ljava/lang/StringBuilder;
    .local v38, "dropBuilder":Ljava/lang/StringBuilder;
    cmp-long v0, v0, v6

    if-gez v0, :cond_21

    .line 1634
    :try_start_6
    iput-wide v6, v3, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1636
    .end local v6    # "now":J
    :cond_21
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1637
    return-void

    .line 1636
    .end local v18    # "stack":Ljava/lang/StringBuilder;
    .end local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    .local v6, "dropBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "stack":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    move-object/from16 v38, v6

    move-object/from16 v18, v7

    .end local v6    # "dropBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "stack":Ljava/lang/StringBuilder;
    .restart local v18    # "stack":Ljava/lang/StringBuilder;
    .restart local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    goto :goto_e

    .end local v18    # "stack":Ljava/lang/StringBuilder;
    .end local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    .restart local v1    # "dropBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "stack":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v18, v7

    .end local v1    # "dropBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "stack":Ljava/lang/StringBuilder;
    .restart local v18    # "stack":Ljava/lang/StringBuilder;
    .restart local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    :goto_e
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_e

    .line 1618
    .end local v18    # "stack":Ljava/lang/StringBuilder;
    .end local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    .restart local v1    # "dropBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "stack":Ljava/lang/StringBuilder;
    .local v53, "catPw":Ljava/io/PrintWriter;
    .restart local v54    # "emptyArgs":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v18, v7

    .end local v1    # "dropBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "stack":Ljava/lang/StringBuilder;
    .restart local v18    # "stack":Ljava/lang/StringBuilder;
    .restart local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    :goto_f
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v2    # "tag":Ljava/lang/StringBuilder;
    .end local v8    # "fullNativeBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .end local v10    # "infos":[J
    .end local v11    # "memInfoBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "catSw":Ljava/io/StringWriter;
    .end local v13    # "ksm":[J
    .end local v14    # "totalPss":J
    .end local v16    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v17    # "lastOomAdj":I
    .end local v18    # "stack":Ljava/lang/StringBuilder;
    .end local v19    # "ionHeap":J
    .end local v21    # "totalMemtrack":J
    .end local v23    # "statsCount":I
    .end local v24    # "kernelUsed":J
    .end local v26    # "memtrackTmp":[J
    .end local v27    # "swaptrackTmp":[J
    .end local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v29    # "firstLine":Z
    .end local v30    # "ionPool":J
    .end local v32    # "dmabufMapped":J
    .end local v34    # "shortNativeBuilder":Ljava/lang/StringBuilder;
    .end local v35    # "cachedPss":J
    .end local v37    # "fullJavaBuilder":Ljava/lang/StringBuilder;
    .end local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    .end local v39    # "extraNativeRam":J
    .end local v41    # "extraNativeMemtrack":J
    .end local v43    # "totalSwapPss":J
    .end local v45    # "totalMemtrackGl":J
    .end local v47    # "gpuUsage":J
    .end local v49    # "totalMemtrackGraphics":J
    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    .end local p1    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    throw v0

    .restart local v2    # "tag":Ljava/lang/StringBuilder;
    .restart local v8    # "fullNativeBuilder":Ljava/lang/StringBuilder;
    .restart local v9    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v10    # "infos":[J
    .restart local v11    # "memInfoBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "catSw":Ljava/io/StringWriter;
    .restart local v13    # "ksm":[J
    .restart local v14    # "totalPss":J
    .restart local v16    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v17    # "lastOomAdj":I
    .restart local v18    # "stack":Ljava/lang/StringBuilder;
    .restart local v19    # "ionHeap":J
    .restart local v21    # "totalMemtrack":J
    .restart local v23    # "statsCount":I
    .restart local v24    # "kernelUsed":J
    .restart local v26    # "memtrackTmp":[J
    .restart local v27    # "swaptrackTmp":[J
    .restart local v28    # "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    .restart local v29    # "firstLine":Z
    .restart local v30    # "ionPool":J
    .restart local v32    # "dmabufMapped":J
    .restart local v34    # "shortNativeBuilder":Ljava/lang/StringBuilder;
    .restart local v35    # "cachedPss":J
    .restart local v37    # "fullJavaBuilder":Ljava/lang/StringBuilder;
    .restart local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    .restart local v39    # "extraNativeRam":J
    .restart local v41    # "extraNativeMemtrack":J
    .restart local v43    # "totalSwapPss":J
    .restart local v45    # "totalMemtrackGl":J
    .restart local v47    # "gpuUsage":J
    .restart local v49    # "totalMemtrackGraphics":J
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    .restart local p1    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    :catchall_4
    move-exception v0

    goto :goto_f

    .line 1626
    .end local v18    # "stack":Ljava/lang/StringBuilder;
    .end local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    .end local v53    # "catPw":Ljava/io/PrintWriter;
    .end local v54    # "emptyArgs":[Ljava/lang/String;
    .restart local v1    # "dropBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "stack":Ljava/lang/StringBuilder;
    :catchall_5
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v18, v7

    .end local v1    # "dropBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "stack":Ljava/lang/StringBuilder;
    .restart local v18    # "stack":Ljava/lang/StringBuilder;
    .restart local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    goto :goto_10

    .end local v18    # "stack":Ljava/lang/StringBuilder;
    .end local v37    # "fullJavaBuilder":Ljava/lang/StringBuilder;
    .end local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    .restart local v1    # "dropBuilder":Ljava/lang/StringBuilder;
    .local v6, "fullJavaBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "stack":Ljava/lang/StringBuilder;
    :catchall_6
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v37, v6

    move-object/from16 v18, v7

    .end local v1    # "dropBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "fullJavaBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "stack":Ljava/lang/StringBuilder;
    .restart local v18    # "stack":Ljava/lang/StringBuilder;
    .restart local v37    # "fullJavaBuilder":Ljava/lang/StringBuilder;
    .restart local v38    # "dropBuilder":Ljava/lang/StringBuilder;
    :goto_10
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_10
.end method

.method requestPssAllProcsLPr(JZZ)V
    .locals 11
    .param p1, "now"    # J
    .param p3, "always"    # Z
    .param p4, "memLowered"    # Z

    .line 858
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    if-nez p3, :cond_1

    .line 860
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 861
    if-eqz p4, :cond_0

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    goto :goto_0

    .line 862
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    :goto_0
    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 863
    monitor-exit v0

    return-void

    .line 869
    :cond_1
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 870
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    .line 871
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 872
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 871
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 874
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 875
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 876
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    new-instance v10, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;

    move-object v4, v10

    move-object v5, p0

    move v6, p4

    move v7, p3

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/AppProfiler;ZZJ)V

    invoke-virtual {v2, v3, v10}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 893
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 894
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 896
    :cond_3
    monitor-exit v0

    .line 897
    return-void

    .line 896
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method retrieveSettings()V
    .locals 5

    .line 2001
    const-string v0, "activity_manager"

    const-string v1, "activity_start_pss_defer"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 2003
    .local v1, "pssDeferralMs":J
    nop

    .line 2004
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2003
    invoke-static {v0, v3, v4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2006
    iput-wide v1, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 2007
    return-void
.end method

.method final scheduleAppGcsLPf()V
    .locals 8

    .line 1224
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1226
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1229
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1231
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    .line 1232
    .local v2, "when":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1233
    .local v4, "now":J
    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    add-long/2addr v6, v4

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    .line 1234
    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    add-long v2, v4, v6

    .line 1236
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v6, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1238
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "when":J
    .end local v4    # "now":J
    :cond_1
    return-void
.end method

.method setAgentAppLPf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Ljava/lang/String;

    .line 1761
    if-nez p2, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1763
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    goto :goto_0

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 1772
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App agent map has too many entries, cannot add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    return-void

    .line 1778
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    :cond_3
    :goto_0
    return-void
.end method

.method setAllowLowerMemLevelLocked(Z)V
    .locals 0
    .param p1, "allowLowerMemLevel"    # Z

    .line 934
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 935
    return-void
.end method

.method setCpuInfoService()V
    .locals 4

    .line 1987
    new-instance v0, Lcom/android/server/am/AppProfiler$CpuBinder;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CpuBinder;-><init>(Lcom/android/server/am/AppProfiler;)V

    const-string v1, "cpuinfo"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1990
    return-void
.end method

.method setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "maxMemSize"    # J
    .param p5, "reportPackage"    # Ljava/lang/String;

    .line 748
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 758
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 752
    :cond_0
    if-eqz p2, :cond_1

    .line 753
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_0

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :goto_0
    monitor-exit v0

    .line 759
    return-void

    .line 758
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setMemFactorOverrideLocked(I)V
    .locals 0
    .param p1, "factor"    # I

    .line 939
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 940
    return-void
.end method

.method setProfileAppLPf(Ljava/lang/String;Landroid/app/ProfilerInfo;)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 1740
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 1745
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    goto :goto_0

    .line 1746
    :catch_0
    move-exception v0

    .line 1750
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    new-instance v1, Landroid/app/ProfilerInfo;

    invoke-direct {v1, p2}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 1751
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1752
    return-void
.end method

.method setProfileProcLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1756
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1757
    return-void
.end method

.method setTestPssMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 900
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 901
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    .line 902
    if-eqz p1, :cond_0

    .line 905
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    .line 907
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 908
    return-void

    .line 907
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method setupProfilerInfoLocked(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)Landroid/app/ProfilerInfo;
    .locals 20
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "instr"    # Lcom/android/server/am/ActiveInstrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2037
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 2038
    .local v5, "profilerInfo":Landroid/app/ProfilerInfo;
    const/4 v6, 0x0

    .line 2039
    .local v6, "preBindAgent":Ljava/lang/String;
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2040
    .local v7, "processName":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2041
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2042
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2043
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2044
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2047
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2048
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v10

    .line 2049
    .local v0, "needsInfo":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 2050
    new-instance v11, Landroid/app/ProfilerInfo;

    iget-object v12, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v12}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    move-object v5, v11

    .line 2051
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v11}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 2052
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v11}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    move-object v6, v11

    .line 2054
    .end local v0    # "needsInfo":Z
    :cond_3
    goto :goto_3

    .line 2055
    :cond_4
    if-eqz v4, :cond_5

    iget-object v0, v4, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2056
    new-instance v0, Landroid/app/ProfilerInfo;

    iget-object v12, v4, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object v5, v0

    .line 2059
    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2062
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 2063
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2065
    .local v0, "agent":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 2066
    new-instance v19, Landroid/app/ProfilerInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 2067
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x1

    move-object/from16 v11, v19

    invoke-direct/range {v11 .. v18}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object/from16 v5, v19

    goto :goto_4

    .line 2068
    :cond_6
    iget-object v11, v5, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 2069
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11, v10}, Landroid/app/ProfilerInfo;->setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;

    move-result-object v11

    move-object v5, v11

    .line 2074
    .end local v0    # "agent":Ljava/lang/String;
    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    iget-object v0, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_8

    .line 2075
    iget-object v0, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2076
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2077
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2078
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2081
    :cond_8
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2087
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    if-nez v4, :cond_d

    .line 2088
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v10

    move v8, v0

    .line 2089
    .local v8, "i":I
    :goto_5
    if-ltz v8, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2090
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/am/ActiveInstrumentation;

    .line 2091
    .local v10, "aInstr":Lcom/android/server/am/ActiveInstrumentation;
    iget-boolean v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-nez v0, :cond_c

    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v11, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v11, :cond_c

    .line 2092
    iget-object v11, v1, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v11

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2093
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_9

    .line 2096
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2097
    invoke-virtual {v3, v10}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2098
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2101
    :cond_9
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v12, v0

    move v13, v9

    :goto_6
    if-ge v13, v12, :cond_b

    aget-object v14, v0, v13

    .line 2102
    .local v14, "proc":Ljava/lang/String;
    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 2103
    invoke-virtual {v3, v10}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2104
    iget-object v0, v10, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2105
    goto :goto_7

    .line 2101
    .end local v14    # "proc":Ljava/lang/String;
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 2109
    :cond_b
    :goto_7
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_8

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 2089
    .end local v10    # "aInstr":Lcom/android/server/am/ActiveInstrumentation;
    :cond_c
    :goto_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 2116
    .end local v8    # "i":I
    :cond_d
    if-eqz v6, :cond_e

    .line 2117
    invoke-interface {v2, v6}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 2119
    :cond_e
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    .line 2120
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    .line 2122
    :cond_f
    return-object v5

    .line 2081
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V
    .locals 6
    .param p1, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p2, "isUserInitiated"    # Z

    .line 660
    iget-object v0, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 661
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 662
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 663
    invoke-virtual {p1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 664
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 665
    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 669
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 668
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .local v1, "ctx":Landroid/content/Context;
    nop

    .line 673
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/AppProfiler$RecordPssRunnable;

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 674
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/android/server/am/AppProfiler$RecordPssRunnable;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 673
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void

    .line 670
    .end local v1    # "ctx":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "android package not found."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method updateCpuStats()V
    .locals 6

    .line 1783
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1784
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1785
    return-void

    .line 1787
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1788
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 1789
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1790
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1792
    :cond_1
    :goto_0
    return-void
.end method

.method updateCpuStatsNow()V
    .locals 29

    .line 1795
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v2

    .line 1796
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1797
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1798
    .local v3, "now":J
    const/4 v0, 0x0

    .line 1800
    .local v0, "haveNewCpuStats":Z
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1801
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    sub-long v7, v3, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 1802
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1803
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1804
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->hasGoodLastStats()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1805
    const/4 v0, 0x1

    .line 1811
    const-string/jumbo v5, "true"

    const-string v6, "events.cpu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1812
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v5

    .line 1813
    .local v5, "user":I
    iget-object v6, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v6}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v6

    .line 1814
    .local v6, "system":I
    iget-object v7, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v7

    .line 1815
    .local v7, "iowait":I
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v8

    .line 1816
    .local v8, "irq":I
    iget-object v9, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v9

    .line 1817
    .local v9, "softIrq":I
    iget-object v10, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v10

    .line 1819
    .local v10, "idle":I
    add-int v11, v5, v6

    add-int/2addr v11, v7

    add-int/2addr v11, v8

    add-int/2addr v11, v9

    add-int/2addr v11, v10

    .line 1820
    .local v11, "total":I
    if-nez v11, :cond_0

    const/4 v11, 0x1

    .line 1822
    :cond_0
    add-int v12, v5, v6

    add-int/2addr v12, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    mul-int/lit8 v12, v12, 0x64

    div-int v13, v12, v11

    mul-int/lit8 v12, v5, 0x64

    div-int v14, v12, v11

    mul-int/lit8 v12, v6, 0x64

    div-int v15, v12, v11

    mul-int/lit8 v12, v7, 0x64

    div-int v16, v12, v11

    mul-int/lit8 v12, v8, 0x64

    div-int v17, v12, v11

    mul-int/lit8 v12, v9, 0x64

    div-int v18, v12, v11

    invoke-static/range {v13 .. v18}, Lcom/android/server/am/EventLogTags;->writeCpu(IIIIII)V

    .line 1833
    .end local v5    # "user":I
    .end local v6    # "system":I
    .end local v7    # "iowait":I
    .end local v8    # "irq":I
    .end local v9    # "softIrq":I
    .end local v10    # "idle":I
    .end local v11    # "total":I
    :cond_1
    move v5, v0

    .end local v0    # "haveNewCpuStats":Z
    .local v5, "haveNewCpuStats":Z
    if-eqz v5, :cond_2

    .line 1834
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object v6, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, v6}, Lcom/android/server/am/PhantomProcessList;->updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V

    .line 1837
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    move-object v15, v0

    .line 1838
    .local v15, "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 1839
    if-eqz v5, :cond_b

    .line 1840
    :try_start_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->startAddingCpuLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1841
    const/4 v0, 0x0

    .line 1842
    .local v0, "totalUTime":I
    const/4 v6, 0x0

    .line 1843
    .local v6, "totalSTime":I
    iget-object v7, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v7

    move v14, v7

    .line 1844
    .local v14, "statsCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1845
    .local v9, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1846
    .local v11, "uptime":J
    iget-object v7, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 1847
    const/4 v7, 0x0

    move/from16 v28, v6

    move v6, v0

    move v0, v7

    move/from16 v7, v28

    .local v0, "i":I
    .local v6, "totalUTime":I
    .local v7, "totalSTime":I
    :goto_0
    if-ge v0, v14, :cond_9

    .line 1848
    :try_start_2
    iget-object v8, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 1849
    .local v8, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v22, v5

    .end local v5    # "haveNewCpuStats":Z
    .local v22, "haveNewCpuStats":Z
    :try_start_3
    iget-boolean v5, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-nez v5, :cond_3

    .line 1850
    move-wide/from16 v24, v3

    move-object v8, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    goto/16 :goto_6

    .line 1852
    :cond_3
    iget-object v5, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move/from16 v16, v14

    .end local v14    # "statsCount":I
    .local v16, "statsCount":I
    :try_start_4
    iget v14, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v5, v14}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 1853
    .local v5, "pr":Lcom/android/server/am/ProcessRecord;
    iget v14, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    add-int v20, v6, v14

    .line 1854
    .end local v6    # "totalUTime":I
    .local v20, "totalUTime":I
    :try_start_5
    iget v6, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    add-int v21, v7, v6

    .line 1855
    .end local v7    # "totalSTime":I
    .local v21, "totalSTime":I
    if-eqz v5, :cond_6

    .line 1856
    :try_start_6
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    move-object v14, v6

    .line 1857
    .local v14, "profile":Lcom/android/server/am/ProcessProfileRecord;
    invoke-virtual {v14}, Lcom/android/server/am/ProcessProfileRecord;->getCurProcBatteryStats()Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v17, v6

    .line 1858
    .local v17, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v17, :cond_5

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move-object/from16 v23, v5

    move-object v5, v8

    move-object/from16 v6, v17

    goto :goto_2

    .line 1878
    .end local v0    # "i":I
    .end local v5    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v14    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v17    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :catchall_0
    move-exception v0

    move-wide/from16 v24, v3

    move-object v8, v13

    move-object/from16 v27, v15

    move/from16 v26, v16

    move/from16 v6, v20

    move/from16 v7, v21

    goto/16 :goto_7

    .line 1859
    .restart local v0    # "i":I
    .restart local v5    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v14    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .restart local v17    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_5
    :goto_1
    :try_start_8
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1860
    move-object/from16 v18, v6

    move-object v6, v15

    move-object/from16 v23, v5

    move-object v5, v8

    .end local v8    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v23, "pr":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v8, v18

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v6

    move-object/from16 v17, v6

    .line 1859
    invoke-virtual {v14, v6}, Lcom/android/server/am/ProcessProfileRecord;->setCurProcBatteryStats(Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;)V

    move-object/from16 v6, v17

    .line 1864
    .end local v17    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .local v6, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :goto_2
    iget v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 1865
    iget-object v7, v14, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v17, v6

    .end local v6    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .restart local v17    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/2addr v8, v6

    move-wide/from16 v24, v3

    .end local v3    # "now":J
    .local v24, "now":J
    int-to-long v3, v8

    :try_start_9
    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v3

    .line 1867
    .local v3, "curCpuTime":J
    iget-object v6, v14, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1868
    move-object v8, v13

    move-object/from16 v27, v15

    move/from16 v26, v16

    .end local v3    # "curCpuTime":J
    .end local v14    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    .end local v17    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    goto :goto_5

    .line 1878
    .end local v0    # "i":I
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v23    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v24    # "now":J
    .local v3, "now":J
    :catchall_1
    move-exception v0

    move-wide/from16 v24, v3

    move-object v8, v13

    move-object/from16 v27, v15

    move/from16 v26, v16

    move/from16 v6, v20

    move/from16 v7, v21

    .end local v3    # "now":J
    .restart local v24    # "now":J
    goto/16 :goto_7

    .line 1869
    .end local v24    # "now":J
    .restart local v0    # "i":I
    .restart local v3    # "now":J
    .local v5, "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_6
    move-wide/from16 v24, v3

    move-object/from16 v23, v5

    move-object v5, v8

    .end local v3    # "now":J
    .end local v8    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v23    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v24    # "now":J
    :try_start_a
    iget-object v3, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1870
    .local v3, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move-object v8, v13

    move-object/from16 v27, v15

    move/from16 v26, v16

    goto :goto_4

    .line 1878
    .end local v0    # "i":I
    .end local v3    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v23    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v0

    move-object v8, v13

    move-object/from16 v27, v15

    move/from16 v26, v16

    move/from16 v6, v20

    move/from16 v7, v21

    goto/16 :goto_7

    .line 1871
    .restart local v0    # "i":I
    .restart local v3    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .restart local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v23    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_8
    :goto_3
    :try_start_c
    iget v4, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 1872
    invoke-virtual {v15, v4}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v14

    iget-object v4, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1871
    move-object v8, v13

    move-object v13, v15

    move/from16 v26, v16

    .end local v16    # "statsCount":I
    .local v26, "statsCount":I
    move-object/from16 v27, v15

    .end local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .local v27, "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object v15, v4

    move-wide/from16 v16, v9

    move-wide/from16 v18, v11

    :try_start_d
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    move-object v3, v4

    iput-object v4, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 1875
    :goto_4
    iget v4, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v3, v4, v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1847
    .end local v3    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v23    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_5
    move/from16 v6, v20

    move/from16 v7, v21

    .end local v20    # "totalUTime":I
    .end local v21    # "totalSTime":I
    .local v6, "totalUTime":I
    .restart local v7    # "totalSTime":I
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move-object v13, v8

    move/from16 v5, v22

    move-wide/from16 v3, v24

    move/from16 v14, v26

    move-object/from16 v15, v27

    goto/16 :goto_0

    .line 1878
    .end local v0    # "i":I
    .end local v6    # "totalUTime":I
    .end local v7    # "totalSTime":I
    .restart local v20    # "totalUTime":I
    .restart local v21    # "totalSTime":I
    :catchall_3
    move-exception v0

    move/from16 v6, v20

    move/from16 v7, v21

    goto/16 :goto_7

    .end local v26    # "statsCount":I
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v16    # "statsCount":I
    :catchall_4
    move-exception v0

    move-object v8, v13

    move-object/from16 v27, v15

    move/from16 v26, v16

    move/from16 v6, v20

    move/from16 v7, v21

    .end local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v16    # "statsCount":I
    .restart local v26    # "statsCount":I
    .restart local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    goto/16 :goto_7

    .end local v21    # "totalSTime":I
    .end local v24    # "now":J
    .end local v26    # "statsCount":I
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .local v3, "now":J
    .restart local v7    # "totalSTime":I
    .restart local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v16    # "statsCount":I
    :catchall_5
    move-exception v0

    move-wide/from16 v24, v3

    move-object v8, v13

    move-object/from16 v27, v15

    move/from16 v26, v16

    move/from16 v6, v20

    .end local v3    # "now":J
    .end local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v16    # "statsCount":I
    .restart local v24    # "now":J
    .restart local v26    # "statsCount":I
    .restart local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    goto/16 :goto_7

    .end local v20    # "totalUTime":I
    .end local v24    # "now":J
    .end local v26    # "statsCount":I
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v3    # "now":J
    .restart local v6    # "totalUTime":I
    .restart local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v16    # "statsCount":I
    :catchall_6
    move-exception v0

    move-wide/from16 v24, v3

    move-object v8, v13

    move-object/from16 v27, v15

    move/from16 v26, v16

    .end local v3    # "now":J
    .end local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v16    # "statsCount":I
    .restart local v24    # "now":J
    .restart local v26    # "statsCount":I
    .restart local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    goto :goto_7

    .end local v24    # "now":J
    .end local v26    # "statsCount":I
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v3    # "now":J
    .local v14, "statsCount":I
    .restart local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_7
    move-exception v0

    move-wide/from16 v24, v3

    move-object v8, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    .end local v3    # "now":J
    .end local v14    # "statsCount":I
    .end local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v24    # "now":J
    .restart local v26    # "statsCount":I
    .restart local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    goto :goto_7

    .end local v22    # "haveNewCpuStats":Z
    .end local v24    # "now":J
    .end local v26    # "statsCount":I
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v3    # "now":J
    .local v5, "haveNewCpuStats":Z
    .restart local v14    # "statsCount":I
    .restart local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_8
    move-exception v0

    move-wide/from16 v24, v3

    move/from16 v22, v5

    move-object v8, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    .end local v3    # "now":J
    .end local v5    # "haveNewCpuStats":Z
    .end local v14    # "statsCount":I
    .end local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v22    # "haveNewCpuStats":Z
    .restart local v24    # "now":J
    .restart local v26    # "statsCount":I
    .restart local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    goto :goto_7

    .line 1847
    .end local v22    # "haveNewCpuStats":Z
    .end local v24    # "now":J
    .end local v26    # "statsCount":I
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v0    # "i":I
    .restart local v3    # "now":J
    .restart local v5    # "haveNewCpuStats":Z
    .restart local v14    # "statsCount":I
    .restart local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_9
    move-wide/from16 v24, v3

    move/from16 v22, v5

    move-object v8, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    .line 1878
    .end local v0    # "i":I
    .end local v3    # "now":J
    .end local v5    # "haveNewCpuStats":Z
    .end local v14    # "statsCount":I
    .end local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v22    # "haveNewCpuStats":Z
    .restart local v24    # "now":J
    .restart local v26    # "statsCount":I
    .restart local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 1880
    :try_start_f
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v16

    .line 1881
    .local v16, "userTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v17

    .line 1882
    .local v17, "systemTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v18

    .line 1883
    .local v18, "iowaitTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v19

    .line 1884
    .local v19, "irqTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v20

    .line 1885
    .local v20, "softIrqTime":I
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v21

    .line 1886
    .local v21, "idleTime":I
    move-object/from16 v13, v27

    move v14, v6

    move v15, v7

    invoke-virtual/range {v13 .. v21}, Lcom/android/internal/os/BatteryStatsImpl;->finishAddingCpuLocked(IIIIIIII)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_8

    .line 1895
    .end local v6    # "totalUTime":I
    .end local v7    # "totalSTime":I
    .end local v9    # "elapsedRealtime":J
    .end local v11    # "uptime":J
    .end local v16    # "userTime":I
    .end local v17    # "systemTime":I
    .end local v18    # "iowaitTime":I
    .end local v19    # "irqTime":I
    .end local v20    # "softIrqTime":I
    .end local v21    # "idleTime":I
    .end local v26    # "statsCount":I
    :catchall_9
    move-exception v0

    move-wide/from16 v3, v24

    goto :goto_a

    .line 1878
    .restart local v6    # "totalUTime":I
    .restart local v7    # "totalSTime":I
    .restart local v9    # "elapsedRealtime":J
    .restart local v11    # "uptime":J
    .restart local v26    # "statsCount":I
    :catchall_a
    move-exception v0

    :goto_7
    :try_start_10
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .end local v22    # "haveNewCpuStats":Z
    .end local v24    # "now":J
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 1840
    .end local v6    # "totalUTime":I
    .end local v7    # "totalSTime":I
    .end local v9    # "elapsedRealtime":J
    .end local v11    # "uptime":J
    .end local v26    # "statsCount":I
    .restart local v3    # "now":J
    .restart local v5    # "haveNewCpuStats":Z
    .restart local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    :cond_a
    move-wide/from16 v24, v3

    move/from16 v22, v5

    move-object/from16 v27, v15

    .end local v3    # "now":J
    .end local v5    # "haveNewCpuStats":Z
    .end local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v22    # "haveNewCpuStats":Z
    .restart local v24    # "now":J
    .restart local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    goto :goto_8

    .line 1895
    .end local v22    # "haveNewCpuStats":Z
    .end local v24    # "now":J
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v3    # "now":J
    .restart local v5    # "haveNewCpuStats":Z
    .restart local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_b
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v27, v15

    .end local v3    # "now":J
    .end local v5    # "haveNewCpuStats":Z
    .end local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v22    # "haveNewCpuStats":Z
    .restart local v24    # "now":J
    .restart local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    goto :goto_a

    .line 1839
    .end local v22    # "haveNewCpuStats":Z
    .end local v24    # "now":J
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v3    # "now":J
    .restart local v5    # "haveNewCpuStats":Z
    .restart local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_b
    move-wide/from16 v24, v3

    move/from16 v22, v5

    move-object/from16 v27, v15

    .line 1891
    .end local v3    # "now":J
    .end local v5    # "haveNewCpuStats":Z
    .end local v15    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v22    # "haveNewCpuStats":Z
    .restart local v24    # "now":J
    .restart local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    :goto_8
    :try_start_12
    iget-wide v3, v1, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    const-wide/32 v5, 0x1b7740

    sub-long v5, v24, v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_c

    .line 1892
    move-wide/from16 v3, v24

    .end local v24    # "now":J
    .restart local v3    # "now":J
    :try_start_13
    iput-wide v3, v1, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 1893
    iget-object v0, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    goto :goto_9

    .line 1891
    .end local v3    # "now":J
    .restart local v24    # "now":J
    :cond_c
    move-wide/from16 v3, v24

    .line 1895
    .end local v24    # "now":J
    .restart local v3    # "now":J
    :goto_9
    monitor-exit v27
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    .line 1896
    .end local v3    # "now":J
    .end local v22    # "haveNewCpuStats":Z
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 1897
    return-void

    .line 1895
    .restart local v22    # "haveNewCpuStats":Z
    .restart local v24    # "now":J
    .restart local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_c
    move-exception v0

    move-wide/from16 v3, v24

    .end local v24    # "now":J
    .restart local v3    # "now":J
    :goto_a
    :try_start_15
    monitor-exit v27
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    .end local p0    # "this":Lcom/android/server/am/AppProfiler;
    :try_start_16
    throw v0

    .restart local p0    # "this":Lcom/android/server/am/AppProfiler;
    :catchall_d
    move-exception v0

    goto :goto_a

    .line 1896
    .end local v3    # "now":J
    .end local v22    # "haveNewCpuStats":Z
    .end local v27    # "bstats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_e
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    throw v0
.end method

.method updateLowMemStateLSP(III)Z
    .locals 22
    .param p1, "numCached"    # I
    .param p2, "numEmpty"    # I
    .param p3, "numTrimming"    # I

    .line 944
    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 946
    .local v14, "now":J
    iget-object v0, v11, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/LowMemDetector;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, v11, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    invoke-virtual {v0}, Lcom/android/server/am/LowMemDetector;->getMemFactor()I

    move-result v0

    .local v0, "memFactor":I
    goto :goto_1

    .line 955
    .end local v0    # "memFactor":I
    :cond_0
    iget-object v0, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    if-gt v12, v0, :cond_3

    iget-object v0, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-gt v13, v0, :cond_3

    .line 957
    add-int v0, v12, v13

    .line 958
    .local v0, "numCachedAndEmpty":I
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 959
    const/4 v1, 0x3

    move v0, v1

    .local v1, "memFactor":I
    goto :goto_0

    .line 960
    .end local v1    # "memFactor":I
    :cond_1
    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 961
    const/4 v1, 0x2

    move v0, v1

    .restart local v1    # "memFactor":I
    goto :goto_0

    .line 963
    .end local v1    # "memFactor":I
    :cond_2
    const/4 v1, 0x1

    move v0, v1

    .line 965
    .local v0, "memFactor":I
    :goto_0
    goto :goto_1

    .line 966
    .end local v0    # "memFactor":I
    :cond_3
    const/4 v0, 0x0

    .line 979
    .restart local v0    # "memFactor":I
    :goto_1
    iget v1, v11, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-eq v1, v2, :cond_4

    move v1, v10

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    move/from16 v16, v1

    .local v16, "override":Z
    if-eqz v1, :cond_5

    .line 980
    iget v0, v11, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 982
    :cond_5
    iget v1, v11, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-le v0, v1, :cond_7

    .line 983
    if-nez v16, :cond_7

    iget-boolean v1, v11, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    if-eqz v1, :cond_6

    iget-object v1, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 984
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    iget v2, v11, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    if-lt v1, v2, :cond_7

    .line 985
    :cond_6
    iget v0, v11, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    move v5, v0

    goto :goto_3

    .line 989
    :cond_7
    move v5, v0

    .end local v0    # "memFactor":I
    .local v5, "memFactor":I
    :goto_3
    iget v0, v11, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-eq v5, v0, :cond_8

    .line 990
    invoke-static {v5, v0}, Lcom/android/server/am/EventLogTags;->writeAmMemFactor(II)V

    .line 991
    const/16 v0, 0xf

    invoke-static {v0, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 993
    :cond_8
    iput v5, v11, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 994
    iget-object v0, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    iput v0, v11, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 997
    iget-object v0, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 998
    :try_start_0
    iget-object v0, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_a

    :try_start_1
    iget-object v2, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 999
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_5

    .line 1001
    :catchall_0
    move-exception v0

    move/from16 v19, v5

    goto/16 :goto_8

    .line 999
    :cond_a
    :goto_4
    move v2, v10

    .line 998
    :goto_5
    :try_start_2
    invoke-virtual {v0, v5, v2, v14, v15}, Lcom/android/server/am/ProcessStatsService;->setMemFactorLocked(IZJ)Z

    move-result v0

    .line 1000
    .local v0, "allChanged":Z
    iget-object v2, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    .line 1001
    .local v4, "trackerMemFactor":I
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1002
    const-wide/16 v1, 0x0

    if-eqz v5, :cond_f

    .line 1003
    iget-wide v6, v11, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v1, v6, v1

    if-nez v1, :cond_b

    .line 1004
    iput-wide v14, v11, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 1007
    :cond_b
    packed-switch v5, :pswitch_data_0

    .line 1015
    const/4 v1, 0x5

    move/from16 v17, v1

    .local v1, "fgTrimLevel":I
    goto :goto_6

    .line 1009
    .end local v1    # "fgTrimLevel":I
    :pswitch_0
    const/16 v1, 0xf

    .line 1010
    .restart local v1    # "fgTrimLevel":I
    move/from16 v17, v1

    goto :goto_6

    .line 1012
    .end local v1    # "fgTrimLevel":I
    :pswitch_1
    const/16 v1, 0xa

    .line 1013
    .restart local v1    # "fgTrimLevel":I
    move/from16 v17, v1

    .line 1018
    .end local v1    # "fgTrimLevel":I
    .local v17, "fgTrimLevel":I
    :goto_6
    div-int/lit8 v1, p3, 0x3

    .line 1019
    .local v1, "factor":I
    const/4 v2, 0x2

    .line 1020
    .local v2, "minFactor":I
    iget-boolean v6, v11, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    if-eqz v6, :cond_c

    add-int/lit8 v2, v2, 0x1

    .line 1021
    :cond_c
    iget-boolean v6, v11, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    if-eqz v6, :cond_d

    add-int/lit8 v2, v2, 0x1

    :cond_d
    move v6, v2

    .line 1022
    .end local v2    # "minFactor":I
    .local v6, "minFactor":I
    if-ge v1, v6, :cond_e

    move v1, v6

    :cond_e
    move/from16 v18, v1

    .line 1023
    .end local v1    # "factor":I
    .local v18, "factor":I
    move/from16 v9, v18

    .line 1024
    .local v9, "actualFactor":I
    new-array v8, v10, [I

    aput v3, v8, v3

    .line 1025
    .local v8, "step":[I
    new-array v7, v10, [I

    const/16 v1, 0x50

    aput v1, v7, v3

    .line 1026
    .local v7, "curLevel":[I
    iget-object v1, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    move-object v1, v2

    move-object v12, v2

    move-object/from16 v2, p0

    move-object v13, v3

    move v3, v0

    move/from16 v19, v5

    move/from16 v20, v6

    .end local v5    # "memFactor":I
    .end local v6    # "minFactor":I
    .local v19, "memFactor":I
    .local v20, "minFactor":I
    move-wide v5, v14

    move/from16 v21, v0

    move v0, v10

    .end local v0    # "allChanged":Z
    .local v21, "allChanged":Z
    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppProfiler;ZIJ[I[III)V

    invoke-virtual {v13, v0, v12}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1109
    .end local v7    # "curLevel":[I
    .end local v8    # "step":[I
    .end local v9    # "actualFactor":I
    .end local v17    # "fgTrimLevel":I
    .end local v18    # "factor":I
    .end local v20    # "minFactor":I
    goto :goto_7

    .line 1110
    .end local v19    # "memFactor":I
    .end local v21    # "allChanged":Z
    .restart local v0    # "allChanged":Z
    .restart local v5    # "memFactor":I
    :cond_f
    move/from16 v21, v0

    move/from16 v19, v5

    move v0, v10

    .end local v0    # "allChanged":Z
    .end local v5    # "memFactor":I
    .restart local v19    # "memFactor":I
    .restart local v21    # "allChanged":Z
    iget-wide v5, v11, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v3, v5, v1

    if-eqz v3, :cond_10

    .line 1111
    iget-wide v7, v11, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    sub-long v5, v14, v5

    add-long/2addr v7, v5

    iput-wide v7, v11, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 1112
    iput-wide v1, v11, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 1114
    :cond_10
    iget-object v1, v11, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;

    move-object v5, v2

    move-object/from16 v6, p0

    move/from16 v7, v21

    move v8, v4

    move-wide v9, v14

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/AppProfiler;ZIJ)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1141
    :goto_7
    return v21

    .line 1001
    .end local v4    # "trackerMemFactor":I
    .end local v19    # "memFactor":I
    .end local v21    # "allChanged":Z
    .restart local v5    # "memFactor":I
    :catchall_1
    move-exception v0

    move/from16 v19, v5

    .end local v5    # "memFactor":I
    .restart local v19    # "memFactor":I
    :goto_8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateLowRamTimestampLPr(J)V
    .locals 4
    .param p1, "now"    # J

    .line 926
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 927
    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 928
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 930
    :cond_0
    return-void
.end method

.method updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V
    .locals 7
    .param p1, "procState"    # I
    .param p2, "profile"    # Lcom/android/server/am/ProcessProfileRecord;
    .param p3, "now"    # J
    .param p5, "forceUpdate"    # Z

    .line 535
    if-nez p5, :cond_1

    .line 536
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getNextPssTime()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 537
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    .line 538
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 536
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 540
    return-void

    .line 542
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/am/AppProfiler;->requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    return-void

    .line 546
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 547
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v4

    .line 546
    move-object v1, p2

    move v2, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessProfileRecord;->computeNextPssTime(IZZJ)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setNextPssTime(J)V

    .line 548
    return-void
.end method

.method writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V
    .locals 17
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2238
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2239
    const-wide v2, 0x10b00000020L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2241
    .local v2, "token":J
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 2242
    .local v4, "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const-wide v7, 0x10900000001L

    if-ge v5, v6, :cond_1

    .line 2243
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2244
    .local v6, "proc":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 2245
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const-wide v10, 0x20b00000001L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 2247
    .local v10, "ptoken":J
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2249
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_0

    .line 2250
    const-wide v12, 0x20b00000002L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 2252
    .local v12, "utoken":J
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 2253
    .local v8, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    const-wide v14, 0x10500000001L

    .line 2254
    move-object/from16 v16, v4

    .end local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .local v16, "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2253
    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2255
    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 2257
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15, v4}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 2255
    const-wide v14, 0x10900000002L

    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2258
    const-wide v14, 0x10900000003L

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2260
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2249
    .end local v8    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v12    # "utoken":J
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v4, v16

    goto :goto_1

    .end local v16    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .restart local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_0
    move-object/from16 v16, v4

    .line 2262
    .end local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .end local v7    # "j":I
    .restart local v16    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2242
    .end local v6    # "proc":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v10    # "ptoken":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v16    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .restart local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_1
    move-object/from16 v16, v4

    .line 2265
    .end local v4    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    .end local v5    # "i":I
    .restart local v16    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    const-wide v4, 0x10b00000002L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2267
    .local v4, "dtoken":J
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2269
    const-wide v6, 0x10900000006L

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 2270
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2269
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2271
    const-wide v6, 0x10500000003L

    iget v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2273
    const-wide v6, 0x10500000004L

    iget v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2275
    const-wide v6, 0x10800000005L

    iget-boolean v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2278
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2280
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2282
    .end local v2    # "token":J
    .end local v4    # "dtoken":J
    .end local v16    # "procs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;>;"
    :cond_2
    return-void
.end method

.method writeMemoryLevelsToProtoLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2309
    iget-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    const-wide v1, 0x10800000037L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2311
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    const-wide v1, 0x10500000038L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2312
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    const-wide v1, 0x10500000039L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2313
    return-void
.end method

.method writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 2323
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2325
    .local v3, "now":J
    const/4 v5, 0x0

    .local v5, "i":I
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 2326
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 2327
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2328
    goto :goto_1

    .line 2330
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2331
    .local v8, "token":J
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2332
    .local v10, "profile":Lcom/android/server/am/ProcessProfileRecord;
    const-wide v11, 0x10b00000001L

    invoke-virtual {v7, v1, v11, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2333
    const-wide v11, 0x10800000002L

    invoke-virtual {v10}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v13

    invoke-virtual {v1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2334
    const-wide v11, 0x10300000003L

    invoke-virtual {v1, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2335
    const-wide v11, 0x10300000004L

    invoke-virtual {v10}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v13

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2336
    const-wide v11, 0x10300000005L

    invoke-virtual {v10}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v13

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2337
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2325
    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "token":J
    .end local v10    # "profile":Lcom/android/server/am/ProcessProfileRecord;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2340
    .end local v3    # "now":J
    .end local v5    # "i":I
    .end local v6    # "size":I
    :cond_1
    return-void
.end method

.method writeProfileDataToProtoLocked(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 2286
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2287
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2288
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2289
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    .line 2290
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2291
    :cond_1
    const-wide v0, 0x10b00000022L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2292
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2293
    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v4

    .line 2292
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2294
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2296
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2297
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/ProfilerInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2299
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2302
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2305
    .end local v0    # "token":J
    :cond_3
    return-void
.end method
