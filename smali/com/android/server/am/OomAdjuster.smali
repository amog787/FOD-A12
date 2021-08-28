.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;,
        Lcom/android/server/am/OomAdjuster$PlatformCompatCache;
    }
.end annotation


# static fields
.field static final CAMERA_MICROPHONE_CAPABILITY_CHANGE_ID:J = 0x81e8a55L

.field static final OOM_ADJ_REASON_ACTIVITY:Ljava/lang/String; = "updateOomAdj_activityChange"

.field static final OOM_ADJ_REASON_ALLOWLIST:Ljava/lang/String; = "updateOomAdj_allowlistChange"

.field static final OOM_ADJ_REASON_BIND_SERVICE:Ljava/lang/String; = "updateOomAdj_bindService"

.field static final OOM_ADJ_REASON_FINISH_RECEIVER:Ljava/lang/String; = "updateOomAdj_finishReceiver"

.field static final OOM_ADJ_REASON_GET_PROVIDER:Ljava/lang/String; = "updateOomAdj_getProvider"

.field static final OOM_ADJ_REASON_METHOD:Ljava/lang/String; = "updateOomAdj"

.field static final OOM_ADJ_REASON_NONE:Ljava/lang/String; = "updateOomAdj_meh"

.field static final OOM_ADJ_REASON_PROCESS_BEGIN:Ljava/lang/String; = "updateOomAdj_processBegin"

.field static final OOM_ADJ_REASON_PROCESS_END:Ljava/lang/String; = "updateOomAdj_processEnd"

.field static final OOM_ADJ_REASON_REMOVE_PROVIDER:Ljava/lang/String; = "updateOomAdj_removeProvider"

.field static final OOM_ADJ_REASON_START_RECEIVER:Ljava/lang/String; = "updateOomAdj_startReceiver"

.field static final OOM_ADJ_REASON_START_SERVICE:Ljava/lang/String; = "updateOomAdj_startService"

.field static final OOM_ADJ_REASON_UI_VISIBILITY:Ljava/lang/String; = "updateOomAdj_uiVisibility"

.field static final OOM_ADJ_REASON_UNBIND_SERVICE:Ljava/lang/String; = "updateOomAdj_unbindService"

.field static final PROCESS_CAPABILITY_CHANGE_ID:J = 0x81f62a4L

.field static final TAG:Ljava/lang/String; = "OomAdjuster"

.field static final USE_SHORT_FGS_USAGE_INTERACTION_TIME:J = 0xaf7340dL


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field private final mNumSlots:I

.field private mOomAdjUpdateOngoing:Z

.field private mPendingFullOomAdjUpdate:Z

.field private final mPendingProcessSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformCompatCache:Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcessGroupHandler:Landroid/os/Handler;

.field private final mProcessList:Lcom/android/server/am/ProcessList;

.field private final mProcessesInCycle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpBecameIdle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpBroadcastQueue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field final mTmpLong:[J

.field private final mTmpProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public static synthetic $r8$lambda$4pnHIE50TnOcNgt4SOu10KtoinY(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ihQaI4mSYofPBYBnyj-KozGpFJs(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 372
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    .line 373
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p4, "adjusterThread"    # Lcom/android/server/ServiceThread;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x3

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 203
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 204
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 205
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 211
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 217
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 229
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 240
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 241
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 250
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 256
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 1365
    new-instance v2, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 386
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 387
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 388
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 389
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 391
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 392
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 393
    new-instance v2, Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 394
    new-instance v2, Lcom/android/server/am/CacheOomRanker;

    invoke-direct {v2, p1}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 396
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 418
    new-instance v2, Lcom/android/server/am/ActiveUids;

    invoke-direct {v2, p1, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 419
    new-instance v1, Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 420
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 422
    new-instance v1, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {v1, v0}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;-><init>([J)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPlatformCompatCache:Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    .line 426
    return-void

    nop

    :array_0
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/am/OomAdjuster;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OomAdjuster;

    .line 125
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OomAdjuster;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .locals 20
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "doingAll"    # Z
    .param p3, "now"    # J
    .param p5, "nowElapsed"    # J

    .line 2575
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const/4 v3, 0x1

    .line 2576
    .local v3, "success":Z
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2578
    .local v13, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 2579
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetRawAdj(I)V

    .line 2582
    :cond_0
    const/4 v4, 0x0

    .line 2585
    .local v4, "changes":I
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_5

    .line 2587
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 2591
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    const/16 v5, 0xc8

    if-gt v0, v5, :cond_2

    .line 2592
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x2bc

    if-eq v0, v5, :cond_1

    .line 2593
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x258

    if-ne v0, v5, :cond_2

    .line 2594
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppSome(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 2595
    :cond_2
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x384

    if-lt v0, v5, :cond_5

    .line 2596
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x3e7

    if-gt v0, v5, :cond_5

    .line 2597
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppFull(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 2599
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v14, :cond_4

    .line 2600
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-gez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2605
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2606
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 2607
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v14, :cond_5

    .line 2608
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2610
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2611
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    .line 2615
    :cond_5
    :goto_0
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    if-eq v0, v5, :cond_7

    .line 2616
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 2617
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v5, :cond_6

    .line 2618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " adj "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2619
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2620
    .local v0, "msg":Ljava/lang/String;
    const-string v5, "ActivityManager"

    invoke-direct {v1, v5, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    .end local v0    # "msg":Ljava/lang/String;
    :cond_6
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    .line 2623
    const/16 v0, -0x2710

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    .line 2626
    :cond_7
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v15

    .line 2627
    .local v15, "curSchedGroup":I
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v0

    const/16 v8, 0xa

    const/4 v6, 0x0

    if-eq v0, v15, :cond_13

    .line 2628
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v5

    .line 2629
    .local v5, "oldSchedGroup":I
    invoke-virtual {v13, v15}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 2630
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v7, :cond_8

    .line 2631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting sched group of "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2633
    .restart local v0    # "msg":Ljava/lang/String;
    const-string v7, "ActivityManager"

    invoke-direct {v1, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    .end local v0    # "msg":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v0

    if-nez v0, :cond_9

    .line 2636
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v0

    if-nez v0, :cond_9

    .line 2637
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v8, v6, v14}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 2639
    const/4 v3, 0x0

    move/from16 v18, v3

    goto/16 :goto_7

    .line 2642
    :cond_9
    packed-switch v15, :pswitch_data_0

    .line 2654
    :pswitch_0
    const/4 v0, -0x1

    move v7, v0

    .local v0, "processGroup":I
    goto :goto_1

    .line 2648
    .end local v0    # "processGroup":I
    :pswitch_1
    const/4 v0, 0x5

    .line 2649
    .restart local v0    # "processGroup":I
    move v7, v0

    goto :goto_1

    .line 2651
    .end local v0    # "processGroup":I
    :pswitch_2
    const/4 v0, 0x7

    .line 2652
    .restart local v0    # "processGroup":I
    move v7, v0

    goto :goto_1

    .line 2644
    .end local v0    # "processGroup":I
    :pswitch_3
    const/4 v0, 0x0

    .line 2645
    .restart local v0    # "processGroup":I
    move v7, v0

    .line 2657
    .end local v0    # "processGroup":I
    .local v7, "processGroup":I
    :goto_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 2658
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2657
    invoke-virtual {v0, v6, v8, v7, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2660
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move v8, v0

    .line 2661
    .local v8, "renderThreadTid":I
    const/4 v0, 0x3

    if-ne v15, v0, :cond_e

    .line 2663
    if-eq v5, v0, :cond_d

    .line 2664
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2665
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_b

    .line 2667
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSavedPriority(I)V

    .line 2668
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v14, 0x1

    invoke-static {v0, v14}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 2669
    if-eqz v8, :cond_a

    .line 2670
    invoke-static {v8, v14}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    move/from16 v18, v3

    goto/16 :goto_5

    .line 2669
    :cond_a
    move/from16 v18, v3

    goto/16 :goto_5

    .line 2683
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/16 v14, -0xa

    invoke-static {v0, v14}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2684
    if-eqz v8, :cond_c

    .line 2686
    :try_start_2
    invoke-static {v8, v14}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2690
    :goto_2
    move/from16 v18, v3

    goto/16 :goto_5

    .line 2688
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2684
    :cond_c
    move/from16 v18, v3

    goto/16 :goto_5

    .line 2722
    .end local v8    # "renderThreadTid":I
    :catch_1
    move-exception v0

    move/from16 v18, v3

    goto/16 :goto_7

    .line 2663
    .restart local v8    # "renderThreadTid":I
    :cond_d
    move/from16 v18, v3

    goto/16 :goto_5

    .line 2694
    :cond_e
    if-ne v5, v0, :cond_11

    if-eq v15, v0, :cond_11

    .line 2696
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2697
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v0, :cond_10

    .line 2700
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-static {v0, v6, v6}, Landroid/os/Process;->setThreadScheduler(III)V

    .line 2701
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSavedPriority()I

    move-result v14

    invoke-static {v0, v14}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2702
    if-eqz v8, :cond_f

    .line 2703
    invoke-static {v8, v6, v6}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2712
    :cond_f
    move/from16 v18, v3

    goto :goto_4

    .line 2706
    :catch_2
    move-exception v0

    move/from16 v18, v3

    goto :goto_3

    .line 2710
    :catch_3
    move-exception v0

    .line 2711
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_6
    const-string v14, "OomAdjuster"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move/from16 v18, v3

    .end local v3    # "success":Z
    .local v18, "success":Z
    :try_start_8
    const-string v3, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    const/4 v6, 0x0

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_4

    .line 2722
    .end local v8    # "renderThreadTid":I
    .end local v18    # "success":Z
    .restart local v3    # "success":Z
    :catch_4
    move-exception v0

    move/from16 v18, v3

    const/4 v6, 0x0

    goto :goto_6

    .line 2706
    .restart local v8    # "renderThreadTid":I
    :catch_5
    move-exception v0

    move/from16 v18, v3

    .line 2707
    .end local v3    # "success":Z
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v18    # "success":Z
    :goto_3
    const-string v3, "OomAdjuster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    const/4 v6, 0x0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_4

    .line 2715
    .end local v18    # "success":Z
    .restart local v3    # "success":Z
    :cond_10
    move/from16 v18, v3

    .end local v3    # "success":Z
    .restart local v18    # "success":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v6, 0x0

    :try_start_9
    invoke-static {v0, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2718
    :goto_4
    if-eqz v8, :cond_12

    .line 2719
    const/4 v0, -0x4

    invoke-static {v8, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    .line 2722
    .end local v8    # "renderThreadTid":I
    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    const/4 v6, 0x0

    goto :goto_7

    .line 2694
    .end local v18    # "success":Z
    .restart local v3    # "success":Z
    .restart local v8    # "renderThreadTid":I
    :cond_11
    move/from16 v18, v3

    .line 2726
    .end local v3    # "success":Z
    .end local v8    # "renderThreadTid":I
    .restart local v18    # "success":Z
    :cond_12
    :goto_5
    goto :goto_7

    .line 2722
    .end local v18    # "success":Z
    .restart local v3    # "success":Z
    :catch_8
    move-exception v0

    move/from16 v18, v3

    .end local v3    # "success":Z
    .restart local v18    # "success":Z
    :goto_6
    goto :goto_7

    .line 2627
    .end local v5    # "oldSchedGroup":I
    .end local v7    # "processGroup":I
    .end local v18    # "success":Z
    .restart local v3    # "success":Z
    :cond_13
    move/from16 v18, v3

    .line 2729
    .end local v3    # "success":Z
    .restart local v18    # "success":Z
    :goto_7
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_14

    .line 2730
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setRepForegroundActivities(Z)V

    .line 2731
    or-int/lit8 v4, v4, 0x1

    move v14, v4

    goto :goto_8

    .line 2729
    :cond_14
    move v14, v4

    .line 2734
    .end local v4    # "changes":I
    .local v14, "changes":I
    :goto_8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 2736
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_15

    .line 2737
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 2738
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2745
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    .line 2747
    goto :goto_9

    .line 2746
    :catch_9
    move-exception v0

    .line 2750
    :cond_15
    :goto_9
    const/4 v0, 0x0

    .line 2751
    .local v0, "forceUpdatePssTime":Z
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_17

    .line 2753
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    .line 2752
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_a

    :cond_16
    move/from16 v17, v0

    goto :goto_b

    .line 2754
    :cond_17
    :goto_a
    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setLastStateTime(J)V

    .line 2755
    const/4 v0, 0x1

    move/from16 v17, v0

    .line 2763
    .end local v0    # "forceUpdatePssTime":Z
    .local v17, "forceUpdatePssTime":Z
    :goto_b
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2764
    :try_start_b
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessProfileRecord;->updateProcState(Lcom/android/server/am/ProcessStateRecord;)V

    .line 2765
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 2766
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2765
    move/from16 v19, v15

    move v15, v6

    .end local v15    # "curSchedGroup":I
    .local v19, "curSchedGroup":I
    move-wide/from16 v6, p3

    move-object/from16 v16, v8

    const/16 v15, 0xa

    move/from16 v8, v17

    :try_start_c
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 2767
    monitor-exit v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2768
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_1e

    .line 2769
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_18

    .line 2770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proc state change of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2771
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2773
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-direct {v1, v3, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    .end local v0    # "msg":Ljava/lang/String;
    :cond_18
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    if-ge v0, v15, :cond_19

    const/4 v6, 0x1

    goto :goto_c

    :cond_19
    const/4 v6, 0x0

    :goto_c
    move v0, v6

    .line 2776
    .local v0, "setImportant":Z
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-ge v3, v15, :cond_1a

    const/4 v6, 0x1

    goto :goto_d

    :cond_1a
    const/4 v6, 0x0

    :goto_d
    move v3, v6

    .line 2777
    .local v3, "curImportant":Z
    if-eqz v0, :cond_1b

    if-nez v3, :cond_1b

    .line 2781
    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setWhenUnimportant(J)V

    .line 2782
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2786
    :cond_1b
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 2788
    invoke-direct {v1, v13, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V

    .line 2790
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetProcState(I)V

    .line 2791
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1c

    .line 2792
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->setNotCachedSinceIdle(Z)V

    .line 2794
    :cond_1c
    if-nez p2, :cond_1d

    .line 2795
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2796
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 2795
    invoke-virtual {v4, v2, v5, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_e

    .line 2798
    :cond_1d
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 2800
    .end local v0    # "setImportant":Z
    .end local v3    # "curImportant":Z
    :goto_e
    goto :goto_11

    :cond_1e
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v0

    const-wide/32 v3, 0xaf7340d

    if-eqz v0, :cond_21

    .line 2801
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OomAdjuster;->getPlatformCompatCache()Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    move-result-object v0

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;Z)Z

    move-result v0

    .line 2803
    .local v0, "fgsInteractionChangeEnabled":Z
    if-eqz v0, :cond_1f

    .line 2804
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_f

    .line 2805
    :cond_1f
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_f
    nop

    .line 2808
    .local v3, "interactionThreshold":J
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v5

    sub-long v5, v11, v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_20

    .line 2809
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 2811
    .end local v0    # "fgsInteractionChangeEnabled":Z
    .end local v3    # "interactionThreshold":J
    :cond_20
    goto :goto_11

    .line 2812
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OomAdjuster;->getPlatformCompatCache()Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    move-result-object v0

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;Z)Z

    move-result v0

    .line 2814
    .restart local v0    # "fgsInteractionChangeEnabled":Z
    if-eqz v0, :cond_22

    .line 2815
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_10

    .line 2816
    :cond_22
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_10
    nop

    .line 2818
    .restart local v3    # "interactionThreshold":J
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v5

    sub-long v5, v11, v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_23

    .line 2819
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 2823
    .end local v0    # "fgsInteractionChangeEnabled":Z
    .end local v3    # "interactionThreshold":J
    :cond_23
    :goto_11
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v3

    if-eq v0, v3, :cond_24

    .line 2824
    or-int/lit8 v14, v14, 0x4

    .line 2825
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    .line 2828
    :cond_24
    if-eqz v14, :cond_25

    .line 2831
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2832
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v0

    .line 2833
    .local v0, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iget v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr v3, v14

    iput v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 2834
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 2835
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v3

    iput v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    .line 2844
    .end local v0    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_25
    return v18

    .line 2767
    .end local v19    # "curSchedGroup":I
    .restart local v15    # "curSchedGroup":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v8

    move/from16 v19, v15

    .end local v15    # "curSchedGroup":I
    .restart local v19    # "curSchedGroup":I
    :goto_12
    :try_start_d
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 1011
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1015
    .local v1, "numLru":I
    const/16 v2, 0x384

    .line 1016
    .local v2, "curCachedAdj":I
    add-int/lit8 v3, v2, 0xa

    .line 1017
    .local v3, "nextCachedAdj":I
    const/4 v4, 0x0

    .line 1018
    .local v4, "curCachedImpAdj":I
    const/16 v5, 0x389

    .line 1019
    .local v5, "curEmptyAdj":I
    add-int/lit8 v6, v5, 0xa

    .line 1021
    .local v6, "nextEmptyAdj":I
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1022
    .local v7, "emptyProcessLimit":I
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v8, v7

    .line 1028
    .local v8, "cachedProcessLimit":I
    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v9, v1, v9

    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v9, v10

    .line 1029
    .local v9, "numEmptyProcs":I
    if-le v9, v8, :cond_0

    .line 1036
    move v9, v8

    .line 1038
    :cond_0
    const/4 v11, 0x1

    if-lez v10, :cond_1

    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v10, v12

    sub-int/2addr v10, v11

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v10, v12

    .line 1040
    .local v10, "cachedFactor":I
    if-ge v10, v11, :cond_2

    const/4 v10, 0x1

    .line 1042
    :cond_2
    add-int v13, v9, v12

    sub-int/2addr v13, v11

    div-int/2addr v13, v12

    .line 1043
    .local v13, "emptyFactor":I
    if-ge v13, v11, :cond_3

    const/4 v13, 0x1

    .line 1045
    :cond_3
    const/4 v11, -0x1

    .line 1046
    .local v11, "stepCached":I
    const/4 v12, -0x1

    .line 1047
    .local v12, "stepEmpty":I
    const/4 v14, 0x0

    .line 1048
    .local v14, "lastCachedGroup":I
    const/4 v15, 0x0

    .line 1049
    .local v15, "lastCachedGroupImportance":I
    const/16 v16, 0x0

    .line 1051
    .local v16, "lastCachedGroupUid":I
    add-int/lit8 v17, v1, -0x1

    move/from16 v0, v16

    move/from16 v16, v1

    move/from16 v1, v17

    .local v0, "lastCachedGroupUid":I
    .local v1, "i":I
    .local v16, "numLru":I
    :goto_1
    if-ltz v1, :cond_d

    .line 1052
    move/from16 v17, v7

    move-object/from16 v7, p1

    .end local v7    # "emptyProcessLimit":I
    .local v17, "emptyProcessLimit":I
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1053
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v18, v8

    .end local v8    # "cachedProcessLimit":I
    .local v18, "cachedProcessLimit":I
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1056
    .local v8, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v19

    if-nez v19, :cond_c

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v19

    if-eqz v19, :cond_c

    move/from16 v19, v9

    .end local v9    # "numEmptyProcs":I
    .local v19, "numEmptyProcs":I
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v9

    move/from16 v20, v1

    .end local v1    # "i":I
    .local v20, "i":I
    const/16 v1, 0x3e9

    if-lt v9, v1, :cond_b

    .line 1058
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1059
    .local v1, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v9

    move/from16 v21, v13

    .end local v13    # "emptyFactor":I
    .local v21, "emptyFactor":I
    packed-switch v9, :pswitch_data_0

    .line 1112
    move/from16 v23, v12

    .end local v12    # "stepEmpty":I
    .local v23, "stepEmpty":I
    if-eq v5, v6, :cond_9

    .line 1113
    add-int/lit8 v12, v23, 0x1

    .line 1114
    .end local v23    # "stepEmpty":I
    .restart local v12    # "stepEmpty":I
    move/from16 v13, v21

    .end local v21    # "emptyFactor":I
    .restart local v13    # "emptyFactor":I
    if-lt v12, v13, :cond_a

    .line 1115
    const/4 v12, 0x0

    .line 1116
    move v5, v6

    .line 1117
    add-int/lit8 v6, v6, 0xa

    .line 1118
    const/16 v9, 0x3e7

    if-le v6, v9, :cond_a

    .line 1119
    const/16 v6, 0x3e7

    goto/16 :goto_4

    .line 1064
    .end local v13    # "emptyFactor":I
    .restart local v21    # "emptyFactor":I
    :pswitch_0
    const/4 v9, 0x0

    .line 1065
    .local v9, "inGroup":Z
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v13

    .line 1066
    .local v13, "connectionGroup":I
    if-eqz v13, :cond_7

    .line 1067
    move/from16 v22, v9

    .end local v9    # "inGroup":Z
    .local v22, "inGroup":Z
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v9

    .line 1068
    .local v9, "connectionImportance":I
    move/from16 v23, v12

    .end local v12    # "stepEmpty":I
    .restart local v23    # "stepEmpty":I
    iget v12, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v12, :cond_6

    if-ne v14, v13, :cond_6

    .line 1072
    if-le v9, v15, :cond_5

    .line 1073
    move v12, v9

    .line 1074
    .end local v15    # "lastCachedGroupImportance":I
    .local v12, "lastCachedGroupImportance":I
    if-ge v2, v3, :cond_4

    const/16 v15, 0x3e7

    if-ge v2, v15, :cond_4

    .line 1076
    add-int/lit8 v4, v4, 0x1

    move v15, v12

    goto :goto_2

    .line 1079
    :cond_4
    move v15, v12

    .end local v12    # "lastCachedGroupImportance":I
    .restart local v15    # "lastCachedGroupImportance":I
    :cond_5
    :goto_2
    const/4 v12, 0x1

    move v9, v12

    .end local v22    # "inGroup":Z
    .local v12, "inGroup":Z
    goto :goto_3

    .line 1081
    .end local v12    # "inGroup":Z
    .restart local v22    # "inGroup":Z
    :cond_6
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1082
    move v14, v13

    .line 1083
    move v15, v9

    move/from16 v9, v22

    goto :goto_3

    .line 1066
    .end local v22    # "inGroup":Z
    .end local v23    # "stepEmpty":I
    .local v9, "inGroup":Z
    .local v12, "stepEmpty":I
    :cond_7
    move/from16 v22, v9

    move/from16 v23, v12

    .line 1086
    .end local v12    # "stepEmpty":I
    .restart local v23    # "stepEmpty":I
    :goto_3
    if-nez v9, :cond_8

    if-eq v2, v3, :cond_8

    .line 1087
    add-int/lit8 v11, v11, 0x1

    .line 1088
    const/4 v4, 0x0

    .line 1089
    if-lt v11, v10, :cond_8

    .line 1090
    const/4 v11, 0x0

    .line 1091
    move v2, v3

    .line 1092
    add-int/lit8 v3, v3, 0xa

    .line 1093
    const/16 v12, 0x3e7

    if-le v3, v12, :cond_8

    .line 1094
    const/16 v3, 0x3e7

    .line 1101
    :cond_8
    add-int v12, v2, v4

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1102
    add-int v12, v2, v4

    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1109
    move/from16 v13, v21

    move/from16 v12, v23

    goto :goto_6

    .line 1112
    .end local v9    # "inGroup":Z
    .end local v13    # "connectionGroup":I
    :cond_9
    move/from16 v13, v21

    .end local v21    # "emptyFactor":I
    .local v13, "emptyFactor":I
    move/from16 v12, v23

    .line 1128
    .end local v23    # "stepEmpty":I
    .restart local v12    # "stepEmpty":I
    :cond_a
    :goto_4
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1129
    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    goto :goto_6

    .line 1056
    .end local v1    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_b
    move/from16 v23, v12

    .end local v12    # "stepEmpty":I
    .restart local v23    # "stepEmpty":I
    goto :goto_5

    .end local v19    # "numEmptyProcs":I
    .end local v20    # "i":I
    .end local v23    # "stepEmpty":I
    .local v1, "i":I
    .local v9, "numEmptyProcs":I
    .restart local v12    # "stepEmpty":I
    :cond_c
    move/from16 v20, v1

    move/from16 v19, v9

    move/from16 v23, v12

    .line 1051
    .end local v1    # "i":I
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v9    # "numEmptyProcs":I
    .end local v12    # "stepEmpty":I
    .restart local v19    # "numEmptyProcs":I
    .restart local v20    # "i":I
    .restart local v23    # "stepEmpty":I
    :goto_5
    move/from16 v12, v23

    .end local v23    # "stepEmpty":I
    .restart local v12    # "stepEmpty":I
    :goto_6
    add-int/lit8 v1, v20, -0x1

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    .end local v20    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_1

    .line 1139
    .end local v1    # "i":I
    .end local v17    # "emptyProcessLimit":I
    .end local v18    # "cachedProcessLimit":I
    .end local v19    # "numEmptyProcs":I
    .local v7, "emptyProcessLimit":I
    .local v8, "cachedProcessLimit":I
    .restart local v9    # "numEmptyProcs":I
    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 784
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-nez v0, :cond_0

    .line 785
    const/4 v0, 0x0

    return v0

    .line 787
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 792
    :goto_0
    return v0
.end method

.method private collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .locals 11
    .param p3, "uids"    # Lcom/android/server/am/ActiveUids;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            ")Z"
        }
    .end annotation

    .line 686
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    .local p2, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 687
    .local v0, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 688
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 689
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 690
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 691
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 692
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 689
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 698
    const/4 v1, 0x0

    .line 700
    .local v1, "containsCycle":Z
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    :goto_1
    if-eqz v2, :cond_c

    .line 701
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v4

    .line 703
    .local v4, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v4, :cond_1

    .line 704
    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {p3, v5, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 706
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 707
    .local v5, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_7

    .line 708
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v7

    .line 709
    .local v7, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v8, v7, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 710
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_3

    :cond_2
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 711
    .local v8, "service":Lcom/android/server/am/ProcessRecord;
    :goto_3
    if-eqz v8, :cond_6

    if-ne v8, v2, :cond_3

    .line 712
    goto :goto_4

    .line 714
    :cond_3
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v9

    or-int/2addr v1, v9

    .line 715
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 716
    goto :goto_4

    .line 718
    :cond_4
    iget v9, v7, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v10, 0x80000a0

    and-int/2addr v9, v10

    const/16 v10, 0x20

    if-ne v9, v10, :cond_5

    .line 722
    goto :goto_4

    .line 724
    :cond_5
    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 725
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 707
    .end local v7    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v8    # "service":Lcom/android/server/am/ProcessRecord;
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 727
    .end local v6    # "i":I
    :cond_7
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 728
    .local v6, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v7

    sub-int/2addr v7, v3

    .local v7, "i":I
    :goto_5
    if-ltz v7, :cond_b

    .line 729
    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v8

    .line 730
    .local v8, "cpc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v9, v8, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v9, v9, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 731
    .local v9, "provider":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_a

    if-ne v9, v2, :cond_8

    .line 732
    goto :goto_6

    .line 734
    :cond_8
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    or-int/2addr v1, v10

    .line 735
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 736
    goto :goto_6

    .line 738
    :cond_9
    invoke-virtual {v0, v9}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 739
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 728
    .end local v8    # "cpc":Lcom/android/server/am/ContentProviderConnection;
    .end local v9    # "provider":Lcom/android/server/am/ProcessRecord;
    :cond_a
    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 700
    .end local v4    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v5    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v6    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v7    # "i":I
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_1

    .line 743
    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 744
    .local v2, "size":I
    if-lez v2, :cond_d

    .line 746
    const/4 v3, 0x0

    .local v3, "l":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "r":I
    :goto_7
    if-ge v3, v4, :cond_d

    .line 747
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 748
    .local v5, "t":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 749
    invoke-virtual {p2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 746
    .end local v5    # "t":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 752
    .end local v3    # "l":I
    .end local v4    # "r":I
    :cond_d
    return v1
.end method

.method private computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z
    .locals 61
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"    # I
    .param p3, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"    # Z
    .param p5, "now"    # J
    .param p7, "cycleReEval"    # Z
    .param p8, "computeClients"    # Z

    .line 1502
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-wide/from16 v13, p5

    iget-object v9, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1503
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v1

    const/4 v8, 0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_1

    .line 1504
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1506
    return v6

    .line 1510
    :cond_0
    invoke-virtual {v9, v8}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 1511
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1513
    return v6

    .line 1517
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/16 v7, 0x13

    if-nez v0, :cond_2

    .line 1518
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 1519
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1520
    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1521
    const/16 v0, 0x3e7

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1522
    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1523
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 1524
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 1525
    return v6

    .line 1528
    :cond_2
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 1529
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 1530
    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 1531
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    .line 1532
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1533
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->resetAllowStartFgsState()V

    .line 1534
    if-nez p7, :cond_3

    .line 1536
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 1539
    :cond_3
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1540
    .local v5, "appUid":I
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1542
    .local v4, "logUid":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    .line 1543
    .local v3, "prevAppAdj":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    .line 1544
    .local v2, "prevProcState":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    .line 1545
    .local v1, "prevCapability":I
    iget-object v15, v11, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1547
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    const-string v8, "ActivityManager"

    if-gtz v0, :cond_d

    .line 1550
    if-ne v4, v5, :cond_4

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making fixed: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :cond_4
    const-string v0, "fixed"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1554
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 1555
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1556
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 1557
    const/4 v7, 0x2

    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1558
    const/16 v7, 0xf

    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 1559
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1564
    const/4 v7, 0x1

    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1565
    if-ne v11, v12, :cond_5

    .line 1566
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1567
    const/4 v7, 0x3

    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1568
    const-string/jumbo v0, "pers-top-activity"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_0

    .line 1569
    :cond_5
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1571
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1572
    const-string/jumbo v0, "pers-top-ui"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_0

    .line 1573
    :cond_6
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1574
    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1576
    :cond_7
    :goto_0
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1577
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_9

    .line 1578
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 1584
    :cond_8
    const/4 v8, 0x5

    invoke-virtual {v9, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1585
    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_2

    .line 1580
    :cond_9
    :goto_1
    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1581
    const/4 v7, 0x3

    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1588
    :cond_a
    :goto_2
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 1589
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1590
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 1591
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->bumpAllowStartFgsState(I)V

    .line 1593
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-lt v0, v3, :cond_c

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ge v0, v2, :cond_b

    goto :goto_3

    :cond_b
    move v8, v6

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v8, 0x1

    :goto_4
    return v8

    .line 1596
    :cond_d
    const/16 v27, 0x5

    const/16 v28, 0x3

    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1598
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v6

    .line 1606
    .local v6, "PROCESS_STATE_CUR_TOP":I
    const/4 v0, 0x0

    .line 1608
    .local v0, "capability":I
    const/16 v16, 0x0

    .line 1609
    .local v16, "foregroundActivities":Z
    const/16 v17, 0x0

    .line 1610
    .local v17, "hasVisibleActivities":Z
    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    if-ne v11, v12, :cond_f

    .line 1612
    const/4 v7, 0x0

    .line 1613
    .local v7, "adj":I
    const/16 v18, 0x3

    .line 1614
    .local v18, "schedGroup":I
    move/from16 v32, v0

    .end local v0    # "capability":I
    .local v32, "capability":I
    const-string/jumbo v0, "top-activity"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1615
    const/16 v16, 0x1

    .line 1616
    const/16 v17, 0x1

    .line 1617
    move v0, v6

    .line 1618
    .local v0, "procState":I
    move/from16 v33, v1

    const/4 v1, 0x2

    .end local v1    # "prevCapability":I
    .local v33, "prevCapability":I
    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->bumpAllowStartFgsState(I)V

    .line 1619
    if-ne v4, v5, :cond_e

    .line 1620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    .end local v0    # "procState":I
    .local v19, "procState":I
    const-string v0, "Making top: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1619
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_e
    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    goto :goto_5

    .line 1610
    .end local v7    # "adj":I
    .end local v18    # "schedGroup":I
    .end local v19    # "procState":I
    .end local v32    # "capability":I
    .end local v33    # "prevCapability":I
    .local v0, "capability":I
    .restart local v1    # "prevCapability":I
    :cond_f
    move/from16 v32, v0

    move/from16 v33, v1

    .line 1622
    .end local v0    # "capability":I
    .end local v1    # "prevCapability":I
    .restart local v32    # "capability":I
    .restart local v33    # "prevCapability":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1623
    const/16 v7, 0x64

    .line 1624
    .restart local v7    # "adj":I
    const/16 v18, 0x3

    .line 1625
    .restart local v18    # "schedGroup":I
    const-string/jumbo v0, "running-remote-anim"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1626
    move v0, v6

    .line 1627
    .local v0, "procState":I
    if-ne v4, v5, :cond_10

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    const-string v0, "Making running remote anim: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1627
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_10
    move/from16 v19, v0

    .line 1690
    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    :goto_5
    move/from16 v1, v16

    move/from16 v34, v17

    move/from16 v35, v18

    move/from16 v0, v19

    goto/16 :goto_8

    .line 1630
    .end local v7    # "adj":I
    .end local v18    # "schedGroup":I
    .end local v19    # "procState":I
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1632
    const/4 v7, 0x0

    .line 1633
    .restart local v7    # "adj":I
    const/16 v18, 0x2

    .line 1634
    .restart local v18    # "schedGroup":I
    const-string v0, "instrumentation"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1635
    const/4 v0, 0x4

    .line 1636
    .restart local v0    # "procState":I
    if-ne v4, v5, :cond_12

    .line 1637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    const-string v0, "Making instrumentation: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1636
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_12
    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    goto :goto_5

    .line 1639
    .end local v7    # "adj":I
    .end local v18    # "schedGroup":I
    .end local v19    # "procState":I
    :cond_13
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1644
    const/4 v7, 0x0

    .line 1645
    .restart local v7    # "adj":I
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1646
    const/4 v0, 0x2

    goto :goto_6

    :cond_14
    const/4 v0, 0x0

    :goto_6
    move/from16 v18, v0

    .line 1647
    .restart local v18    # "schedGroup":I
    const-string v0, "broadcast"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1648
    const/16 v0, 0xb

    .line 1649
    .restart local v0    # "procState":I
    if-ne v4, v5, :cond_15

    .line 1650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    const-string v0, "Making broadcast: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1649
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_15
    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    goto :goto_5

    .line 1652
    .end local v7    # "adj":I
    .end local v18    # "schedGroup":I
    .end local v19    # "procState":I
    :cond_16
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-lez v0, :cond_19

    .line 1655
    const/4 v7, 0x0

    .line 1656
    .restart local v7    # "adj":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1657
    const/4 v0, 0x2

    goto :goto_7

    :cond_17
    const/4 v0, 0x0

    :goto_7
    move/from16 v18, v0

    .line 1658
    .restart local v18    # "schedGroup":I
    const-string v0, "exec-service"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1659
    const/16 v0, 0xa

    .line 1660
    .restart local v0    # "procState":I
    if-ne v4, v5, :cond_18

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    const-string v0, "Making exec-service: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1660
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_18
    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    goto/16 :goto_5

    .line 1663
    .end local v7    # "adj":I
    .end local v18    # "schedGroup":I
    .end local v19    # "procState":I
    :cond_19
    if-ne v11, v12, :cond_1b

    .line 1664
    const/4 v7, 0x0

    .line 1665
    .restart local v7    # "adj":I
    const/16 v18, 0x0

    .line 1666
    .restart local v18    # "schedGroup":I
    const-string/jumbo v0, "top-sleeping"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1667
    const/16 v16, 0x1

    .line 1668
    move v0, v6

    .line 1669
    .restart local v0    # "procState":I
    if-ne v4, v5, :cond_1a

    .line 1670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    const-string v0, "Making top (sleeping): "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1669
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_1a
    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    goto/16 :goto_5

    .line 1674
    .end local v7    # "adj":I
    .end local v18    # "schedGroup":I
    .end local v19    # "procState":I
    :cond_1b
    const/16 v18, 0x0

    .line 1677
    .restart local v18    # "schedGroup":I
    move/from16 v7, p2

    .line 1678
    .restart local v7    # "adj":I
    const/16 v0, 0x13

    .line 1679
    .restart local v0    # "procState":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1680
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1681
    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    .line 1682
    const-string v1, "cch-empty"

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1684
    :cond_1c
    if-ne v4, v5, :cond_1d

    .line 1685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    const-string v0, "Making empty: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1684
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_1d
    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    goto/16 :goto_5

    .line 1690
    .end local v16    # "foregroundActivities":Z
    .end local v17    # "hasVisibleActivities":Z
    .end local v18    # "schedGroup":I
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    .local v1, "foregroundActivities":Z
    .local v34, "hasVisibleActivities":Z
    .local v35, "schedGroup":I
    :goto_8
    if-nez v1, :cond_1e

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 1691
    move/from16 v36, v2

    .end local v2    # "prevProcState":I
    .local v36, "prevProcState":I
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move-object/from16 v37, v15

    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v37, "psr":Lcom/android/server/am/ProcessServiceRecord;
    move-object v15, v9

    move-object/from16 v16, v2

    move/from16 v17, v7

    move/from16 v18, v1

    move/from16 v19, v34

    move/from16 v20, v0

    move/from16 v21, v35

    move/from16 v22, v5

    move/from16 v23, v4

    move/from16 v24, v6

    invoke-virtual/range {v15 .. v24}, Lcom/android/server/am/ProcessStateRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V

    .line 1695
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdj()I

    move-result v7

    .line 1696
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedForegroundActivities()Z

    move-result v1

    .line 1697
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v34

    .line 1698
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedProcState()I

    move-result v0

    .line 1699
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedSchedGroup()I

    move-result v35

    move v15, v1

    move/from16 v2, v34

    goto :goto_9

    .line 1690
    .end local v36    # "prevProcState":I
    .end local v37    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v2    # "prevProcState":I
    .restart local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_1e
    move/from16 v36, v2

    move-object/from16 v37, v15

    .line 1702
    .end local v2    # "prevProcState":I
    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v36    # "prevProcState":I
    .restart local v37    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    move v15, v1

    move/from16 v2, v34

    .end local v1    # "foregroundActivities":Z
    .end local v34    # "hasVisibleActivities":Z
    .local v2, "hasVisibleActivities":Z
    .local v15, "foregroundActivities":Z
    :goto_9
    const/16 v1, 0x12

    if-le v0, v1, :cond_20

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasRecentTasks()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1703
    const/16 v0, 0x12

    .line 1704
    const-string v1, "cch-rec"

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1705
    if-ne v4, v5, :cond_1f

    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "procState":I
    .local v16, "procState":I
    const-string v0, "Raise procstate to cached recent: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1705
    .end local v16    # "procState":I
    .restart local v0    # "procState":I
    :cond_1f
    move/from16 v16, v0

    .line 1710
    .end local v0    # "procState":I
    .restart local v16    # "procState":I
    :goto_a
    move/from16 v0, v16

    .end local v16    # "procState":I
    .restart local v0    # "procState":I
    :cond_20
    const-string v1, ": "

    const-string v12, "Raise to "

    move/from16 v16, v15

    .end local v15    # "foregroundActivities":Z
    .local v16, "foregroundActivities":Z
    const/16 v15, 0xc8

    if-gt v7, v15, :cond_21

    const/4 v15, 0x4

    if-le v0, v15, :cond_25

    .line 1712
    :cond_21
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v15

    if-eqz v15, :cond_23

    .line 1714
    const/16 v7, 0xc8

    .line 1715
    const/4 v0, 0x4

    .line 1716
    const/4 v15, 0x4

    invoke-virtual {v9, v15}, Lcom/android/server/am/ProcessStateRecord;->bumpAllowStartFgsState(I)V

    .line 1717
    const-string v15, "fg-service"

    invoke-virtual {v9, v15}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1718
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1719
    const/16 v35, 0x2

    .line 1720
    if-ne v4, v5, :cond_22

    .line 1721
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1720
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_22
    move/from16 v19, v0

    .line 1740
    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    :goto_b
    move/from16 v0, v19

    goto :goto_c

    .line 1724
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_23
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v15

    if-eqz v15, :cond_25

    .line 1726
    const/16 v7, 0xc8

    .line 1727
    const/4 v0, 0x6

    .line 1728
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1729
    const-string v15, "has-overlay-ui"

    invoke-virtual {v9, v15}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1730
    const/16 v35, 0x2

    .line 1731
    if-ne v4, v5, :cond_24

    .line 1732
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    const-string v0, "Raise to overlay ui: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1731
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_24
    move/from16 v19, v0

    .end local v0    # "procState":I
    .restart local v19    # "procState":I
    goto :goto_b

    .line 1740
    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :cond_25
    :goto_c
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v15

    if-eqz v15, :cond_27

    const/16 v15, 0x32

    if-le v7, v15, :cond_27

    .line 1741
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v19

    iget-object v15, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v22, v1

    move/from16 v21, v2

    .end local v2    # "hasVisibleActivities":Z
    .local v21, "hasVisibleActivities":Z
    iget-wide v1, v15, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long v19, v19, v1

    cmp-long v1, v19, v13

    if-gtz v1, :cond_26

    .line 1742
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_28

    .line 1743
    :cond_26
    const/16 v7, 0x32

    .line 1744
    const-string v1, "fg-service-act"

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1745
    if-ne v4, v5, :cond_28

    .line 1746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise to recent fg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v8, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1740
    .end local v21    # "hasVisibleActivities":Z
    .restart local v2    # "hasVisibleActivities":Z
    :cond_27
    move-object/from16 v22, v1

    move/from16 v21, v2

    .line 1750
    .end local v2    # "hasVisibleActivities":Z
    .restart local v21    # "hasVisibleActivities":Z
    :cond_28
    :goto_d
    const/16 v15, 0x8

    const/16 v1, 0xc8

    if-gt v7, v1, :cond_29

    if-le v0, v15, :cond_2a

    .line 1752
    :cond_29
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1756
    const/16 v7, 0xc8

    .line 1757
    const/16 v0, 0x8

    .line 1758
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1759
    const-string v1, "force-imp"

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 1761
    const/16 v35, 0x2

    .line 1762
    if-ne v4, v5, :cond_2a

    .line 1763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise to force imp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v8, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    :cond_2a
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHeavyWeight()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1769
    const/16 v1, 0x190

    const-string v2, "heavy"

    if-le v7, v1, :cond_2b

    .line 1771
    const/16 v7, 0x190

    .line 1772
    const/16 v35, 0x0

    .line 1773
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1774
    invoke-virtual {v9, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1775
    if-ne v4, v5, :cond_2b

    .line 1776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise adj to heavy: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v8, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    :cond_2b
    const/16 v1, 0xd

    if-le v0, v1, :cond_2c

    .line 1780
    const/16 v0, 0xd

    .line 1781
    invoke-virtual {v9, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1782
    if-ne v4, v5, :cond_2c

    .line 1783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to heavy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v8, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    :cond_2c
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1789
    const/16 v1, 0x258

    const-string v2, "home"

    if-le v7, v1, :cond_2d

    .line 1792
    const/16 v7, 0x258

    .line 1793
    const/16 v35, 0x0

    .line 1794
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1795
    invoke-virtual {v9, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1796
    if-ne v4, v5, :cond_2d

    .line 1797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise adj to home: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v8, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    :cond_2d
    const/16 v1, 0xe

    if-le v0, v1, :cond_2e

    .line 1801
    const/16 v0, 0xe

    .line 1802
    invoke-virtual {v9, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1803
    if-ne v4, v5, :cond_2e

    .line 1804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to home: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v8, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :cond_2e
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsPreviousProcess()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1810
    const/16 v1, 0x2bc

    if-le v7, v1, :cond_2f

    .line 1814
    const/16 v7, 0x2bc

    .line 1815
    const/16 v35, 0x0

    .line 1816
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1817
    const-string/jumbo v1, "previous"

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1818
    if-ne v4, v5, :cond_2f

    .line 1819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise adj to prev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v8, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    :cond_2f
    const/16 v15, 0xf

    if-le v0, v15, :cond_30

    .line 1823
    const/16 v0, 0xf

    .line 1824
    const-string/jumbo v1, "previous"

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1825
    if-ne v4, v5, :cond_32

    .line 1826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to prev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v8, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1822
    :cond_30
    move/from16 v1, v35

    goto :goto_f

    .line 1809
    :cond_31
    const/16 v15, 0xf

    .line 1839
    :cond_32
    :goto_e
    move/from16 v1, v35

    .end local v35    # "schedGroup":I
    .local v1, "schedGroup":I
    :goto_f
    if-eqz p7, :cond_33

    .line 1840
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1841
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1842
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1844
    :cond_33
    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1845
    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 1847
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    .line 1848
    iget v2, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v9, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 1850
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v15, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/am/BackupRecord;

    .line 1851
    .local v15, "backupTarget":Lcom/android/server/am/BackupRecord;
    if-eqz v15, :cond_38

    iget-object v2, v15, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v11, v2, :cond_38

    .line 1853
    const/16 v2, 0x12c

    if-le v7, v2, :cond_36

    .line 1855
    const/16 v7, 0x12c

    .line 1856
    const/16 v2, 0x8

    if-le v0, v2, :cond_34

    .line 1857
    const/16 v0, 0x8

    .line 1859
    :cond_34
    const-string v2, "backup"

    invoke-virtual {v9, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1860
    if-ne v4, v5, :cond_35

    .line 1861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v0

    .end local v0    # "procState":I
    .local v20, "procState":I
    const-string v0, "Raise adj to backup: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1860
    .end local v20    # "procState":I
    .restart local v0    # "procState":I
    :cond_35
    move/from16 v20, v0

    .line 1863
    .end local v0    # "procState":I
    .restart local v20    # "procState":I
    :goto_10
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    move/from16 v0, v20

    .line 1865
    .end local v20    # "procState":I
    .restart local v0    # "procState":I
    :cond_36
    const/16 v2, 0x9

    if-le v0, v2, :cond_38

    .line 1866
    const/16 v0, 0x9

    .line 1867
    const-string v2, "backup"

    invoke-virtual {v9, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1868
    if-ne v4, v5, :cond_37

    .line 1869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v0

    .end local v0    # "procState":I
    .restart local v20    # "procState":I
    const-string v0, "Raise procstate to backup: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1868
    .end local v20    # "procState":I
    .restart local v0    # "procState":I
    :cond_37
    move/from16 v20, v0

    .line 1874
    .end local v0    # "procState":I
    .restart local v20    # "procState":I
    :goto_11
    move/from16 v0, v20

    .end local v20    # "procState":I
    .restart local v0    # "procState":I
    :cond_38
    const/4 v2, 0x0

    .line 1875
    .local v2, "capabilityFromFGS":I
    const/16 v20, 0x0

    .line 1876
    .local v20, "scheduleLikeTopApp":Z
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v23

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v60, v20

    move/from16 v20, v2

    move/from16 v2, v23

    move/from16 v23, v60

    .line 1877
    .local v2, "is":I
    .local v20, "capabilityFromFGS":I
    .local v23, "scheduleLikeTopApp":Z
    :goto_12
    move-object/from16 v24, v15

    .end local v15    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v24, "backupTarget":Lcom/android/server/am/BackupRecord;
    if-ltz v2, :cond_88

    if-gtz v7, :cond_3a

    if-eqz v1, :cond_3a

    const/4 v15, 0x2

    if-le v0, v15, :cond_39

    goto :goto_13

    :cond_39
    move/from16 v38, v1

    move/from16 v50, v3

    move/from16 v31, v6

    move-object v6, v8

    move/from16 v49, v21

    move/from16 v46, v33

    move/from16 v48, v36

    move-object/from16 v15, v37

    const/4 v8, 0x0

    move-object/from16 v37, v12

    move-object v12, v11

    move-object/from16 v11, v22

    move-object/from16 v60, v9

    move v9, v4

    move v4, v5

    move-object/from16 v5, v60

    goto/16 :goto_39

    .line 1881
    :cond_3a
    :goto_13
    move-object/from16 v15, v37

    move-object/from16 v37, v12

    .end local v37    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v15, v2}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v12

    .line 1882
    .local v12, "s":Lcom/android/server/am/ServiceRecord;
    move/from16 v38, v1

    .end local v1    # "schedGroup":I
    .local v38, "schedGroup":I
    iget-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_43

    .line 1883
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    .line 1884
    const/16 v1, 0xa

    if-le v0, v1, :cond_3c

    .line 1885
    const/16 v0, 0xa

    .line 1886
    const-string/jumbo v1, "started-services"

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1887
    if-ne v4, v5, :cond_3b

    .line 1888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v39, v0

    .end local v0    # "procState":I
    .local v39, "procState":I
    const-string v0, "Raise procstate to started service: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 1887
    .end local v39    # "procState":I
    .restart local v0    # "procState":I
    :cond_3b
    move/from16 v39, v0

    .line 1892
    .end local v0    # "procState":I
    .restart local v39    # "procState":I
    :goto_14
    move/from16 v0, v39

    .end local v39    # "procState":I
    .restart local v0    # "procState":I
    :cond_3c
    iget-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v1, :cond_3e

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1897
    const/16 v1, 0x1f4

    if-le v7, v1, :cond_3d

    .line 1898
    const-string v1, "cch-started-ui-services"

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1925
    :cond_3d
    move/from16 v39, v0

    move/from16 v40, v2

    move/from16 v41, v3

    const/4 v3, 0x0

    goto :goto_17

    .line 1901
    :cond_3e
    iget-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v1, :cond_40

    move/from16 v39, v0

    .end local v0    # "procState":I
    .restart local v39    # "procState":I
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move/from16 v40, v2

    .end local v2    # "is":I
    .local v40, "is":I
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v41, v3

    .end local v3    # "prevAppAdj":I
    .local v41, "prevAppAdj":I
    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v0, v2

    cmp-long v0, v13, v0

    if-gez v0, :cond_3f

    goto :goto_15

    :cond_3f
    const/4 v3, 0x0

    goto :goto_16

    .end local v39    # "procState":I
    .end local v40    # "is":I
    .end local v41    # "prevAppAdj":I
    .restart local v0    # "procState":I
    .restart local v2    # "is":I
    .restart local v3    # "prevAppAdj":I
    :cond_40
    move/from16 v39, v0

    move/from16 v40, v2

    move/from16 v41, v3

    .line 1906
    .end local v0    # "procState":I
    .end local v2    # "is":I
    .end local v3    # "prevAppAdj":I
    .restart local v39    # "procState":I
    .restart local v40    # "is":I
    .restart local v41    # "prevAppAdj":I
    :goto_15
    const/16 v0, 0x1f4

    if-le v7, v0, :cond_42

    .line 1907
    const/16 v7, 0x1f4

    .line 1908
    const-string/jumbo v0, "started-services"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1909
    if-ne v4, v5, :cond_41

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to started service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    :cond_41
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    goto :goto_16

    .line 1906
    :cond_42
    const/4 v3, 0x0

    .line 1919
    :goto_16
    const/16 v0, 0x1f4

    if-le v7, v0, :cond_44

    .line 1920
    const-string v0, "cch-started-services"

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_17

    .line 1882
    .end local v39    # "procState":I
    .end local v40    # "is":I
    .end local v41    # "prevAppAdj":I
    .restart local v0    # "procState":I
    .restart local v2    # "is":I
    .restart local v3    # "prevAppAdj":I
    :cond_43
    move/from16 v40, v2

    move/from16 v41, v3

    const/4 v3, 0x0

    .end local v2    # "is":I
    .end local v3    # "prevAppAdj":I
    .restart local v40    # "is":I
    .restart local v41    # "prevAppAdj":I
    move/from16 v39, v0

    .line 1925
    .end local v0    # "procState":I
    .restart local v39    # "procState":I
    :cond_44
    :goto_17
    iget-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_4a

    .line 1926
    iget v1, v12, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 1927
    .local v1, "fgsType":I
    iget-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-eqz v0, :cond_49

    .line 1928
    nop

    .line 1930
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    goto :goto_18

    :cond_45
    move v0, v3

    :goto_18
    or-int v2, v20, v0

    .line 1932
    .end local v20    # "capabilityFromFGS":I
    .local v2, "capabilityFromFGS":I
    const/16 v20, 0x0

    .line 1934
    .local v20, "enabled":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OomAdjuster;->getPlatformCompatCache()Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v30, v4

    .end local v4    # "logUid":I
    .local v30, "logUid":I
    :try_start_1
    iget-object v3, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v44, v5

    const-wide/32 v4, 0x81e8a55

    .end local v5    # "appUid":I
    .local v44, "appUid":I
    :try_start_2
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v20, v0

    .line 1937
    goto :goto_19

    .line 1936
    :catch_0
    move-exception v0

    goto :goto_19

    .end local v44    # "appUid":I
    .restart local v5    # "appUid":I
    :catch_1
    move-exception v0

    move/from16 v44, v5

    .end local v5    # "appUid":I
    .restart local v44    # "appUid":I
    goto :goto_19

    .end local v30    # "logUid":I
    .end local v44    # "appUid":I
    .restart local v4    # "logUid":I
    .restart local v5    # "appUid":I
    :catch_2
    move-exception v0

    move/from16 v30, v4

    move/from16 v44, v5

    .line 1938
    .end local v4    # "logUid":I
    .end local v5    # "appUid":I
    .restart local v30    # "logUid":I
    .restart local v44    # "appUid":I
    :goto_19
    if-eqz v20, :cond_48

    .line 1939
    nop

    .line 1941
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_46

    const/4 v0, 0x2

    goto :goto_1a

    :cond_46
    const/4 v0, 0x0

    :goto_1a
    or-int/2addr v0, v2

    .line 1942
    .end local v2    # "capabilityFromFGS":I
    .local v0, "capabilityFromFGS":I
    nop

    .line 1944
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_47

    const/4 v2, 0x4

    goto :goto_1b

    :cond_47
    const/4 v2, 0x0

    :goto_1b
    or-int/2addr v0, v2

    move/from16 v20, v0

    goto :goto_1c

    .line 1946
    .end local v0    # "capabilityFromFGS":I
    .restart local v2    # "capabilityFromFGS":I
    :cond_48
    or-int/lit8 v0, v2, 0x6

    move/from16 v20, v0

    .end local v2    # "capabilityFromFGS":I
    .restart local v0    # "capabilityFromFGS":I
    goto :goto_1c

    .line 1927
    .end local v0    # "capabilityFromFGS":I
    .end local v30    # "logUid":I
    .end local v44    # "appUid":I
    .restart local v4    # "logUid":I
    .restart local v5    # "appUid":I
    .local v20, "capabilityFromFGS":I
    :cond_49
    move/from16 v30, v4

    move/from16 v44, v5

    .end local v4    # "logUid":I
    .end local v5    # "appUid":I
    .restart local v30    # "logUid":I
    .restart local v44    # "appUid":I
    goto :goto_1c

    .line 1925
    .end local v1    # "fgsType":I
    .end local v30    # "logUid":I
    .end local v44    # "appUid":I
    .restart local v4    # "logUid":I
    .restart local v5    # "appUid":I
    :cond_4a
    move/from16 v30, v4

    move/from16 v44, v5

    .line 1952
    .end local v4    # "logUid":I
    .end local v5    # "appUid":I
    .restart local v30    # "logUid":I
    .restart local v44    # "appUid":I
    :goto_1c
    invoke-virtual {v12}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1953
    .local v5, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/16 v25, 0x1

    add-int/lit8 v0, v0, -0x1

    move v2, v7

    move/from16 v1, v38

    move v7, v0

    move/from16 v0, v39

    .line 1954
    .end local v38    # "schedGroup":I
    .end local v39    # "procState":I
    .local v0, "procState":I
    .local v1, "schedGroup":I
    .local v2, "adj":I
    .local v7, "conni":I
    :goto_1d
    if-ltz v7, :cond_87

    if-gtz v2, :cond_4c

    if-eqz v1, :cond_4c

    const/4 v3, 0x2

    if-le v0, v3, :cond_4b

    goto :goto_1e

    :cond_4b
    move/from16 v31, v6

    move-object v6, v8

    move-object v5, v9

    move-object v12, v11

    move/from16 v49, v21

    move-object/from16 v11, v22

    move/from16 v9, v30

    move/from16 v46, v33

    move/from16 v48, v36

    move/from16 v21, v40

    move/from16 v50, v41

    move/from16 v4, v44

    const/4 v8, 0x0

    goto/16 :goto_38

    .line 1958
    :cond_4c
    :goto_1e
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    .line 1959
    .local v4, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    move/from16 v38, v32

    move/from16 v32, v23

    move/from16 v23, v1

    move/from16 v60, v3

    move v3, v2

    move/from16 v2, v60

    .line 1960
    .end local v1    # "schedGroup":I
    .local v2, "i":I
    .local v3, "adj":I
    .local v23, "schedGroup":I
    .local v32, "scheduleLikeTopApp":Z
    .local v38, "capability":I
    :goto_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_86

    if-gtz v3, :cond_4e

    if-eqz v23, :cond_4e

    const/4 v1, 0x2

    if-le v0, v1, :cond_4d

    goto :goto_20

    :cond_4d
    move/from16 v19, v0

    move/from16 v31, v6

    move/from16 v35, v7

    move-object v6, v8

    move-object v7, v12

    move/from16 v49, v21

    move/from16 v46, v33

    move/from16 v48, v36

    move/from16 v21, v40

    move/from16 v50, v41

    move/from16 v4, v44

    move/from16 v36, v3

    move-object/from16 v40, v5

    move-object v5, v9

    move-object v12, v11

    move-object/from16 v41, v15

    move-object/from16 v11, v22

    move/from16 v9, v30

    goto/16 :goto_37

    :cond_4e
    const/4 v1, 0x2

    .line 1966
    :goto_20
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v39, v9

    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v39, "state":Lcom/android/server/am/ProcessStateRecord;
    move-object/from16 v9, v29

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    .line 1967
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v1, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v11, :cond_4f

    .line 1969
    move/from16 v31, v6

    move/from16 v35, v7

    move-object/from16 v53, v8

    move/from16 v49, v21

    move-object/from16 v47, v22

    move/from16 v51, v30

    move/from16 v46, v33

    move/from16 v48, v36

    move-object/from16 v26, v39

    move/from16 v21, v40

    move/from16 v50, v41

    move/from16 v52, v44

    move/from16 v33, v2

    move/from16 v36, v3

    move-object/from16 v30, v4

    move-object/from16 v40, v5

    move-object/from16 v41, v15

    goto/16 :goto_23

    .line 1972
    :cond_4f
    const/16 v42, 0x0

    .line 1974
    .local v42, "trackedProcState":Z
    iget-object v1, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1975
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v43, v9

    .end local v9    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v43, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1976
    .local v9, "cstate":Lcom/android/server/am/ProcessStateRecord;
    if-eqz p8, :cond_50

    .line 1977
    const/16 v45, 0x1

    move-object/from16 v47, v22

    move/from16 v46, v33

    const/16 v29, 0x2

    move-object/from16 v22, v1

    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v33    # "prevCapability":I
    .local v22, "client":Lcom/android/server/am/ProcessRecord;
    .local v46, "prevCapability":I
    move-object/from16 v1, p0

    move/from16 v33, v2

    move/from16 v49, v21

    move/from16 v48, v36

    move/from16 v21, v40

    .end local v2    # "i":I
    .end local v36    # "prevProcState":I
    .end local v40    # "is":I
    .local v21, "is":I
    .local v33, "i":I
    .local v48, "prevProcState":I
    .local v49, "hasVisibleActivities":Z
    move-object/from16 v2, v22

    move/from16 v36, v3

    move/from16 v50, v41

    const/16 v35, 0x0

    .end local v3    # "adj":I
    .end local v41    # "prevAppAdj":I
    .local v36, "adj":I
    .local v50, "prevAppAdj":I
    move/from16 v3, p2

    move/from16 v51, v30

    move-object/from16 v30, v4

    .end local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v30, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v51, "logUid":I
    move-object/from16 v4, p3

    move-object/from16 v40, v5

    move/from16 v52, v44

    .end local v5    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v44    # "appUid":I
    .local v40, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v52, "appUid":I
    move/from16 v5, p4

    move/from16 v31, v6

    move/from16 v35, v7

    .end local v6    # "PROCESS_STATE_CUR_TOP":I
    .end local v7    # "conni":I
    .local v31, "PROCESS_STATE_CUR_TOP":I
    .local v35, "conni":I
    move-wide/from16 v6, p5

    move-object/from16 v53, v8

    move-object/from16 v41, v15

    move/from16 v15, v29

    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v41, "psr":Lcom/android/server/am/ProcessServiceRecord;
    move/from16 v8, p7

    move-object/from16 v27, v9

    move-object/from16 v26, v39

    move-object/from16 v54, v43

    .end local v9    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v43    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v26, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v27, "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v54, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v9, v45

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v7, v27

    goto :goto_21

    .line 1980
    .end local v22    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v27    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v31    # "PROCESS_STATE_CUR_TOP":I
    .end local v35    # "conni":I
    .end local v46    # "prevCapability":I
    .end local v48    # "prevProcState":I
    .end local v49    # "hasVisibleActivities":Z
    .end local v50    # "prevAppAdj":I
    .end local v51    # "logUid":I
    .end local v52    # "appUid":I
    .end local v54    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "i":I
    .restart local v3    # "adj":I
    .restart local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v5    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v6    # "PROCESS_STATE_CUR_TOP":I
    .restart local v7    # "conni":I
    .restart local v9    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v21, "hasVisibleActivities":Z
    .local v30, "logUid":I
    .local v33, "prevCapability":I
    .local v36, "prevProcState":I
    .restart local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v40, "is":I
    .local v41, "prevAppAdj":I
    .restart local v43    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v44    # "appUid":I
    :cond_50
    move/from16 v31, v6

    move/from16 v35, v7

    move-object/from16 v53, v8

    move-object/from16 v27, v9

    move/from16 v49, v21

    move-object/from16 v47, v22

    move/from16 v51, v30

    move/from16 v46, v33

    move/from16 v48, v36

    move-object/from16 v26, v39

    move/from16 v21, v40

    move/from16 v50, v41

    move-object/from16 v54, v43

    move/from16 v52, v44

    move-object/from16 v22, v1

    move/from16 v33, v2

    move/from16 v36, v3

    move-object/from16 v30, v4

    move-object/from16 v40, v5

    move-object/from16 v41, v15

    const/4 v15, 0x2

    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "i":I
    .end local v3    # "adj":I
    .end local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v6    # "PROCESS_STATE_CUR_TOP":I
    .end local v7    # "conni":I
    .end local v9    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v43    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v44    # "appUid":I
    .local v21, "is":I
    .restart local v22    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v26    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v27    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v30, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v31    # "PROCESS_STATE_CUR_TOP":I
    .local v33, "i":I
    .restart local v35    # "conni":I
    .local v36, "adj":I
    .local v40, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v41, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v46    # "prevCapability":I
    .restart local v48    # "prevProcState":I
    .restart local v49    # "hasVisibleActivities":Z
    .restart local v50    # "prevAppAdj":I
    .restart local v51    # "logUid":I
    .restart local v52    # "appUid":I
    .restart local v54    # "cr":Lcom/android/server/am/ConnectionRecord;
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    move-object/from16 v7, v27

    .end local v27    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v7, "cstate":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1981
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 1984
    :goto_21
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v8

    .line 1985
    .local v8, "clientAdj":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v9

    .line 1987
    .local v9, "clientProcState":I
    if-ge v9, v15, :cond_51

    const/4 v1, 0x1

    goto :goto_22

    :cond_51
    const/4 v1, 0x0

    :goto_22
    move/from16 v27, v1

    .line 1989
    .local v27, "clientIsSystem":Z
    move-object/from16 v6, v22

    .end local v22    # "client":Lcom/android/server/am/ProcessRecord;
    .local v6, "client":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1991
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 1994
    :cond_52
    move-object/from16 v5, v54

    .end local v54    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v5, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v1, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v4, 0x384

    if-nez v1, :cond_7d

    .line 1995
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move v15, v4

    move v4, v0

    move-object v15, v5

    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v15, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v5, v36

    move-object/from16 v55, v6

    .end local v6    # "client":Lcom/android/server/am/ProcessRecord;
    .local v55, "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1996
    nop

    .line 1963
    .end local v8    # "clientAdj":I
    .end local v9    # "clientProcState":I
    .end local v26    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v27    # "clientIsSystem":Z
    .end local v31    # "PROCESS_STATE_CUR_TOP":I
    .end local v35    # "conni":I
    .end local v42    # "trackedProcState":Z
    .end local v46    # "prevCapability":I
    .end local v48    # "prevProcState":I
    .end local v49    # "hasVisibleActivities":Z
    .end local v50    # "prevAppAdj":I
    .end local v51    # "logUid":I
    .end local v52    # "appUid":I
    .end local v55    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "i":I
    .restart local v3    # "adj":I
    .restart local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v5, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v6, "PROCESS_STATE_CUR_TOP":I
    .local v7, "conni":I
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v21, "hasVisibleActivities":Z
    .local v30, "logUid":I
    .local v33, "prevCapability":I
    .local v36, "prevProcState":I
    .restart local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v40, "is":I
    .local v41, "prevAppAdj":I
    .restart local v44    # "appUid":I
    :goto_23
    move-object v7, v12

    move-object/from16 v5, v26

    move/from16 v3, v36

    move/from16 v9, v51

    move/from16 v4, v52

    move-object/from16 v6, v53

    move-object v12, v11

    move-object/from16 v11, v47

    .end local v2    # "i":I
    .end local v3    # "adj":I
    .end local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v6    # "PROCESS_STATE_CUR_TOP":I
    .end local v7    # "conni":I
    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v44    # "appUid":I
    .local v21, "is":I
    .restart local v26    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v30, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v31    # "PROCESS_STATE_CUR_TOP":I
    .local v33, "i":I
    .restart local v35    # "conni":I
    .local v36, "adj":I
    .local v40, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v41, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v46    # "prevCapability":I
    .restart local v48    # "prevProcState":I
    .restart local v49    # "hasVisibleActivities":Z
    .restart local v50    # "prevAppAdj":I
    .restart local v51    # "logUid":I
    .restart local v52    # "appUid":I
    goto/16 :goto_36

    .line 1999
    .local v7, "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v8    # "clientAdj":I
    .restart local v9    # "clientProcState":I
    .local v15, "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v27    # "clientIsSystem":Z
    .restart local v42    # "trackedProcState":Z
    .restart local v55    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_53
    const/16 v1, 0x1000

    invoke-virtual {v15, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2000
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    or-int v38, v38, v1

    .line 2008
    :cond_54
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_56

    .line 2009
    const/4 v6, 0x5

    if-gt v9, v6, :cond_55

    .line 2010
    iget v1, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_57

    .line 2012
    or-int/lit8 v38, v38, 0x8

    goto :goto_24

    .line 2015
    :cond_55
    or-int/lit8 v38, v38, 0x8

    goto :goto_24

    .line 2008
    :cond_56
    const/4 v6, 0x5

    .line 2019
    :cond_57
    :goto_24
    const/16 v1, 0x10

    if-lt v9, v1, :cond_58

    .line 2023
    const/16 v9, 0x13

    .line 2025
    :cond_58
    const/4 v2, 0x0

    .line 2026
    .local v2, "adjType":Ljava/lang/String;
    iget v3, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_5d

    .line 2028
    const/16 v1, 0x384

    if-ge v8, v1, :cond_59

    .line 2029
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 2033
    :cond_59
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 2038
    move/from16 v1, v36

    .end local v36    # "adj":I
    .local v1, "adj":I
    if-le v1, v8, :cond_5a

    .line 2039
    const-string v2, "cch-bound-ui-services"

    .line 2041
    :cond_5a
    move-object/from16 v5, v26

    const/4 v4, 0x0

    .end local v26    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v5, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2042
    move v8, v1

    .line 2043
    move v9, v0

    move-object v3, v7

    move-object/from16 v26, v12

    goto :goto_25

    .line 2033
    .end local v1    # "adj":I
    .end local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v26    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v36    # "adj":I
    :cond_5b
    move-object/from16 v5, v26

    move/from16 v1, v36

    const/4 v4, 0x0

    .line 2045
    .end local v26    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v36    # "adj":I
    .restart local v1    # "adj":I
    .restart local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    move-object v3, v7

    .end local v7    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v3, "cstate":Lcom/android/server/am/ProcessStateRecord;
    iget-wide v6, v12, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v4, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v26, v12

    .end local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .local v26, "s":Lcom/android/server/am/ServiceRecord;
    iget-wide v11, v4, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v6, v11

    cmp-long v4, v13, v6

    if-ltz v4, :cond_5e

    .line 2052
    if-le v1, v8, :cond_5c

    .line 2053
    const-string v2, "cch-bound-services"

    .line 2055
    :cond_5c
    move v8, v1

    goto :goto_25

    .line 2026
    .end local v1    # "adj":I
    .end local v3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v7    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .local v26, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v36    # "adj":I
    :cond_5d
    move-object v3, v7

    move-object/from16 v5, v26

    move/from16 v1, v36

    move-object/from16 v26, v12

    .line 2059
    .end local v7    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v36    # "adj":I
    .restart local v1    # "adj":I
    .restart local v3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v26, "s":Lcom/android/server/am/ServiceRecord;
    :cond_5e
    :goto_25
    if-le v1, v8, :cond_6a

    .line 2067
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v4

    if-nez v4, :cond_5f

    const/16 v4, 0xc8

    if-le v8, v4, :cond_5f

    .line 2069
    const/16 v4, 0x384

    if-lt v1, v4, :cond_6a

    .line 2070
    const-string v2, "cch-bound-ui-services"

    move v4, v1

    move v1, v0

    move/from16 v0, v23

    goto/16 :goto_27

    .line 2074
    :cond_5f
    iget v4, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v4, v4, 0x48

    if-eqz v4, :cond_61

    .line 2076
    const/16 v4, -0x2bc

    if-lt v8, v4, :cond_60

    .line 2077
    move v4, v8

    .local v4, "newAdj":I
    goto :goto_26

    .line 2080
    .end local v4    # "newAdj":I
    :cond_60
    const/16 v4, -0x2bc

    .line 2081
    .restart local v4    # "newAdj":I
    const/4 v6, 0x2

    .line 2082
    .end local v23    # "schedGroup":I
    .local v6, "schedGroup":I
    const/4 v0, 0x0

    .line 2083
    iget v7, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v15, v0, v7, v13, v14}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 2084
    const/4 v7, 0x1

    move/from16 v23, v6

    move/from16 v42, v7

    .end local v42    # "trackedProcState":Z
    .local v7, "trackedProcState":Z
    goto :goto_26

    .line 2086
    .end local v4    # "newAdj":I
    .end local v6    # "schedGroup":I
    .end local v7    # "trackedProcState":Z
    .restart local v23    # "schedGroup":I
    .restart local v42    # "trackedProcState":Z
    :cond_61
    iget v4, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_62

    const/16 v4, 0xc8

    if-gt v8, v4, :cond_62

    const/16 v4, 0xfa

    if-lt v1, v4, :cond_62

    .line 2089
    const/16 v4, 0xfa

    .restart local v4    # "newAdj":I
    goto :goto_26

    .line 2090
    .end local v4    # "newAdj":I
    :cond_62
    iget v4, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v6, 0x10000

    and-int/2addr v4, v6

    if-eqz v4, :cond_63

    const/16 v4, 0xc8

    if-ge v8, v4, :cond_63

    const/16 v4, 0xe1

    if-lt v1, v4, :cond_63

    .line 2093
    const/16 v4, 0xe1

    .restart local v4    # "newAdj":I
    goto :goto_26

    .line 2094
    .end local v4    # "newAdj":I
    :cond_63
    iget v4, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v4, v6

    if-eqz v4, :cond_64

    const/16 v4, 0xc8

    if-ge v8, v4, :cond_65

    if-lt v1, v4, :cond_65

    .line 2097
    const/16 v6, 0xc8

    move v4, v6

    .local v6, "newAdj":I
    goto :goto_26

    .line 2094
    .end local v6    # "newAdj":I
    :cond_64
    const/16 v4, 0xc8

    .line 2098
    :cond_65
    if-lt v8, v4, :cond_66

    .line 2099
    move v4, v8

    .restart local v4    # "newAdj":I
    goto :goto_26

    .line 2101
    .end local v4    # "newAdj":I
    :cond_66
    const/16 v4, 0x64

    if-le v1, v4, :cond_67

    .line 2103
    const/16 v4, 0x64

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4    # "newAdj":I
    goto :goto_26

    .line 2105
    .end local v4    # "newAdj":I
    :cond_67
    move v4, v1

    .line 2108
    .restart local v4    # "newAdj":I
    :goto_26
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v6

    if-nez v6, :cond_68

    .line 2109
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2111
    :cond_68
    if-le v1, v4, :cond_69

    .line 2112
    move v1, v4

    .line 2113
    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2114
    const-string/jumbo v2, "service"

    move v1, v0

    move/from16 v0, v23

    goto :goto_27

    .line 2111
    :cond_69
    move v4, v1

    move v1, v0

    move/from16 v0, v23

    goto :goto_27

    .line 2118
    .end local v4    # "newAdj":I
    :cond_6a
    move v4, v1

    move v1, v0

    move/from16 v0, v23

    .end local v23    # "schedGroup":I
    .local v0, "schedGroup":I
    .local v1, "procState":I
    .local v4, "adj":I
    :goto_27
    iget v6, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v7, 0x800004

    and-int/2addr v6, v7

    if-nez v6, :cond_73

    .line 2123
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v6

    .line 2124
    .local v6, "curSchedGroup":I
    if-le v6, v0, :cond_6c

    .line 2125
    iget v7, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_6b

    .line 2126
    move v0, v6

    move v7, v0

    goto :goto_28

    .line 2128
    :cond_6b
    const/4 v0, 0x2

    move v7, v0

    goto :goto_28

    .line 2124
    :cond_6c
    move v7, v0

    .line 2131
    .end local v0    # "schedGroup":I
    .local v7, "schedGroup":I
    :goto_28
    const/4 v11, 0x2

    if-ge v9, v11, :cond_6f

    .line 2136
    const/high16 v0, 0x4000000

    invoke-virtual {v15, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2137
    const/4 v9, 0x5

    .line 2138
    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Lcom/android/server/am/ProcessStateRecord;->bumpAllowStartFgsState(I)V

    move/from16 v28, v7

    move-object/from16 v11, v55

    goto/16 :goto_2a

    .line 2140
    :cond_6d
    const/4 v11, 0x5

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_6e

    iget v0, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v12, 0x2000000

    and-int/2addr v0, v12

    if-eqz v0, :cond_6e

    .line 2144
    const/4 v9, 0x5

    move/from16 v28, v7

    move-object/from16 v11, v55

    goto :goto_2a

    .line 2146
    :cond_6e
    const/4 v9, 0x6

    move/from16 v28, v7

    move-object/from16 v11, v55

    goto :goto_2a

    .line 2149
    :cond_6f
    const/4 v11, 0x5

    const/4 v12, 0x2

    if-ne v9, v12, :cond_71

    .line 2152
    const/4 v9, 0x3

    .line 2153
    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Lcom/android/server/am/ProcessStateRecord;->bumpAllowStartFgsState(I)V

    .line 2154
    const/16 v22, 0x0

    .line 2156
    .local v22, "enabled":Z
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OomAdjuster;->getPlatformCompatCache()Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v11, v55

    .end local v55    # "client":Lcom/android/server/am/ProcessRecord;
    .local v11, "client":Lcom/android/server/am/ProcessRecord;
    :try_start_4
    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v23, v6

    move/from16 v28, v7

    const-wide/32 v6, 0x81f62a4

    .end local v6    # "curSchedGroup":I
    .end local v7    # "schedGroup":I
    .local v23, "curSchedGroup":I
    .local v28, "schedGroup":I
    :try_start_5
    invoke-virtual {v0, v6, v7, v12}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move/from16 v22, v0

    .line 2159
    goto :goto_29

    .line 2158
    :catch_3
    move-exception v0

    goto :goto_29

    .end local v23    # "curSchedGroup":I
    .end local v28    # "schedGroup":I
    .restart local v6    # "curSchedGroup":I
    .restart local v7    # "schedGroup":I
    :catch_4
    move-exception v0

    move/from16 v23, v6

    move/from16 v28, v7

    .end local v6    # "curSchedGroup":I
    .end local v7    # "schedGroup":I
    .restart local v23    # "curSchedGroup":I
    .restart local v28    # "schedGroup":I
    goto :goto_29

    .end local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "curSchedGroup":I
    .end local v28    # "schedGroup":I
    .restart local v6    # "curSchedGroup":I
    .restart local v7    # "schedGroup":I
    .restart local v55    # "client":Lcom/android/server/am/ProcessRecord;
    :catch_5
    move-exception v0

    move/from16 v23, v6

    move/from16 v28, v7

    move-object/from16 v11, v55

    .line 2160
    .end local v6    # "curSchedGroup":I
    .end local v7    # "schedGroup":I
    .end local v55    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "curSchedGroup":I
    .restart local v28    # "schedGroup":I
    :goto_29
    if-eqz v22, :cond_70

    .line 2161
    const/16 v0, 0x1000

    invoke-virtual {v15, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 2163
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int v38, v38, v0

    goto :goto_2a

    .line 2169
    :cond_70
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int v38, v38, v0

    goto :goto_2a

    .line 2149
    .end local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v22    # "enabled":Z
    .end local v23    # "curSchedGroup":I
    .end local v28    # "schedGroup":I
    .restart local v6    # "curSchedGroup":I
    .restart local v7    # "schedGroup":I
    .restart local v55    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_71
    move/from16 v23, v6

    move/from16 v28, v7

    move-object/from16 v11, v55

    .line 2172
    .end local v6    # "curSchedGroup":I
    .end local v7    # "schedGroup":I
    .end local v55    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "schedGroup":I
    :cond_72
    :goto_2a
    move/from16 v0, v28

    const/16 v6, 0x8

    goto :goto_2b

    .end local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "schedGroup":I
    .restart local v0    # "schedGroup":I
    .restart local v55    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_73
    move-object/from16 v11, v55

    .end local v55    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "client":Lcom/android/server/am/ProcessRecord;
    iget v6, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-nez v6, :cond_74

    .line 2173
    const/16 v6, 0x8

    if-ge v9, v6, :cond_75

    .line 2175
    const/16 v7, 0x8

    move v9, v7

    .end local v9    # "clientProcState":I
    .local v7, "clientProcState":I
    goto :goto_2b

    .line 2179
    .end local v7    # "clientProcState":I
    .restart local v9    # "clientProcState":I
    :cond_74
    const/16 v6, 0x8

    const/4 v7, 0x7

    if-ge v9, v7, :cond_75

    .line 2181
    const/4 v7, 0x7

    move v9, v7

    .line 2186
    :cond_75
    :goto_2b
    const/4 v7, 0x3

    if-ge v0, v7, :cond_76

    iget v7, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v7, v12

    if-eqz v7, :cond_76

    if-eqz v27, :cond_76

    .line 2189
    const/4 v0, 0x3

    .line 2190
    const/4 v7, 0x1

    move/from16 v23, v0

    move/from16 v32, v7

    .end local v32    # "scheduleLikeTopApp":Z
    .local v7, "scheduleLikeTopApp":Z
    goto :goto_2c

    .line 2193
    .end local v7    # "scheduleLikeTopApp":Z
    .restart local v32    # "scheduleLikeTopApp":Z
    :cond_76
    move/from16 v23, v0

    .end local v0    # "schedGroup":I
    .local v23, "schedGroup":I
    :goto_2c
    if-nez v42, :cond_77

    .line 2194
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v15, v9, v0, v13, v14}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 2197
    :cond_77
    if-le v1, v9, :cond_78

    .line 2198
    move v0, v9

    .line 2199
    .end local v1    # "procState":I
    .local v0, "procState":I
    invoke-virtual {v5, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2200
    if-nez v2, :cond_79

    .line 2201
    const-string/jumbo v2, "service"

    goto :goto_2d

    .line 2197
    .end local v0    # "procState":I
    .restart local v1    # "procState":I
    :cond_78
    move v0, v1

    .line 2204
    .end local v1    # "procState":I
    .restart local v0    # "procState":I
    :cond_79
    :goto_2d
    const/4 v1, 0x7

    if-ge v0, v1, :cond_7a

    iget v1, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x20000000

    and-int/2addr v1, v7

    if-eqz v1, :cond_7a

    .line 2206
    move-object/from16 v12, p1

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    goto :goto_2e

    .line 2204
    :cond_7a
    move-object/from16 v12, p1

    .line 2208
    :goto_2e
    if-eqz v2, :cond_7c

    .line 2209
    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2210
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2212
    iget-object v1, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2213
    invoke-virtual {v5, v9}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 2214
    move-object/from16 v7, v26

    .end local v26    # "s":Lcom/android/server/am/ServiceRecord;
    .local v7, "s":Lcom/android/server/am/ServiceRecord;
    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2215
    move/from16 v19, v9

    move/from16 v9, v51

    move/from16 v1, v52

    .end local v51    # "logUid":I
    .end local v52    # "appUid":I
    .local v1, "appUid":I
    .local v9, "logUid":I
    .local v19, "clientProcState":I
    if-ne v9, v1, :cond_7b

    .line 2216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v55, v11

    move-object/from16 v11, v37

    .end local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v55    # "client":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v47

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move/from16 v52, v1

    .end local v1    # "appUid":I
    .restart local v52    # "appUid":I
    const-string v1, ", due to "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adj="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procState="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2216
    move-object/from16 v6, v53

    invoke-direct {v10, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 2215
    .end local v52    # "appUid":I
    .end local v55    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "appUid":I
    .restart local v11    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_7b
    move/from16 v52, v1

    move-object/from16 v55, v11

    move-object/from16 v11, v47

    move-object/from16 v6, v53

    .end local v1    # "appUid":I
    .end local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v52    # "appUid":I
    .restart local v55    # "client":Lcom/android/server/am/ProcessRecord;
    goto :goto_2f

    .line 2208
    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "clientProcState":I
    .end local v55    # "client":Lcom/android/server/am/ProcessRecord;
    .local v9, "clientProcState":I
    .restart local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v26    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v51    # "logUid":I
    :cond_7c
    move/from16 v19, v9

    move-object/from16 v55, v11

    move-object/from16 v7, v26

    move-object/from16 v11, v47

    move/from16 v9, v51

    move-object/from16 v6, v53

    .line 2222
    .end local v2    # "adjType":Ljava/lang/String;
    .end local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v51    # "logUid":I
    .restart local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .local v9, "logUid":I
    .restart local v19    # "clientProcState":I
    .restart local v55    # "client":Lcom/android/server/am/ProcessRecord;
    :goto_2f
    move/from16 v36, v4

    move/from16 v2, v19

    move/from16 v4, v52

    const/4 v1, 0x1

    goto :goto_31

    .line 2232
    .end local v3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v4    # "adj":I
    .end local v15    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19    # "clientProcState":I
    .end local v55    # "client":Lcom/android/server/am/ProcessRecord;
    .local v5, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v6, "client":Lcom/android/server/am/ProcessRecord;
    .local v7, "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v9, "clientProcState":I
    .restart local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .local v26, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v36    # "adj":I
    .restart local v51    # "logUid":I
    :cond_7d
    move-object v15, v5

    move-object/from16 v55, v6

    move-object v3, v7

    move v2, v9

    move-object v7, v12

    move-object/from16 v5, v26

    move/from16 v1, v36

    move/from16 v9, v51

    move/from16 v4, v52

    move-object/from16 v6, v53

    move-object v12, v11

    move-object/from16 v11, v47

    .end local v6    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v26    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v36    # "adj":I
    .end local v51    # "logUid":I
    .end local v52    # "appUid":I
    .local v1, "adj":I
    .local v2, "clientProcState":I
    .restart local v3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v4, "appUid":I
    .local v5, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v7, "s":Lcom/android/server/am/ServiceRecord;
    .local v9, "logUid":I
    .restart local v15    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v55    # "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v19, v0

    const/16 v0, 0x384

    .end local v0    # "procState":I
    .local v19, "procState":I
    if-ge v8, v0, :cond_7e

    .line 2233
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move/from16 v36, v1

    const/4 v1, 0x1

    .end local v1    # "adj":I
    .restart local v36    # "adj":I
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    goto :goto_30

    .line 2232
    .end local v36    # "adj":I
    .restart local v1    # "adj":I
    :cond_7e
    move/from16 v36, v1

    const/4 v1, 0x1

    .line 2236
    .end local v1    # "adj":I
    .restart local v36    # "adj":I
    :goto_30
    move/from16 v0, v19

    .end local v19    # "procState":I
    .restart local v0    # "procState":I
    :goto_31
    iget v1, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v19, 0x8000000

    and-int v1, v1, v19

    if-eqz v1, :cond_7f

    .line 2237
    move/from16 v19, v2

    move-object/from16 v1, v41

    const/4 v2, 0x1

    .end local v2    # "clientProcState":I
    .end local v41    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v1, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v19, "clientProcState":I
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    goto :goto_32

    .line 2236
    .end local v1    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v19    # "clientProcState":I
    .restart local v2    # "clientProcState":I
    .restart local v41    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_7f
    move/from16 v19, v2

    move-object/from16 v1, v41

    .line 2239
    .end local v2    # "clientProcState":I
    .end local v41    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v1    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v19    # "clientProcState":I
    :goto_32
    iget-object v2, v15, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 2240
    .local v2, "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    move-object/from16 v41, v1

    .end local v1    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v41    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    iget v1, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_85

    .line 2241
    if-eqz v2, :cond_84

    if-lez v36, :cond_84

    .line 2242
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 2243
    const/4 v1, 0x0

    .line 2244
    .end local v36    # "adj":I
    .local v1, "adj":I
    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2245
    move/from16 v22, v1

    .end local v1    # "adj":I
    .local v22, "adj":I
    iget v1, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/16 v17, 0x4

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_81

    .line 2246
    iget v1, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_80

    .line 2247
    const/16 v23, 0x4

    goto :goto_33

    .line 2249
    :cond_80
    const/16 v23, 0x2

    .line 2252
    :cond_81
    :goto_33
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2253
    const-string/jumbo v1, "service"

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2254
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2256
    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2257
    invoke-virtual {v5, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 2258
    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2259
    if-ne v9, v4, :cond_82

    .line 2260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v0

    .end local v0    # "procState":I
    .local v28, "procState":I
    const-string v0, "Raise to service w/activity: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v6, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 2259
    .end local v28    # "procState":I
    .restart local v0    # "procState":I
    :cond_82
    move/from16 v28, v0

    .line 1963
    .end local v0    # "procState":I
    .end local v2    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v8    # "clientAdj":I
    .end local v15    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19    # "clientProcState":I
    .end local v27    # "clientIsSystem":Z
    .end local v42    # "trackedProcState":Z
    .end local v55    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "procState":I
    :goto_34
    move/from16 v3, v22

    move/from16 v0, v28

    goto :goto_36

    .line 2242
    .end local v22    # "adj":I
    .end local v28    # "procState":I
    .restart local v0    # "procState":I
    .restart local v2    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local v3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v8    # "clientAdj":I
    .restart local v15    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v19    # "clientProcState":I
    .restart local v27    # "clientIsSystem":Z
    .restart local v36    # "adj":I
    .restart local v42    # "trackedProcState":Z
    .restart local v55    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_83
    move/from16 v28, v0

    .end local v0    # "procState":I
    .restart local v28    # "procState":I
    goto :goto_35

    .line 2241
    .end local v28    # "procState":I
    .restart local v0    # "procState":I
    :cond_84
    move/from16 v28, v0

    .end local v0    # "procState":I
    .restart local v28    # "procState":I
    goto :goto_35

    .line 2240
    .end local v28    # "procState":I
    .restart local v0    # "procState":I
    :cond_85
    move/from16 v28, v0

    .line 1963
    .end local v0    # "procState":I
    .end local v2    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v3    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v8    # "clientAdj":I
    .end local v15    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19    # "clientProcState":I
    .end local v27    # "clientIsSystem":Z
    .end local v42    # "trackedProcState":Z
    .end local v55    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "procState":I
    :goto_35
    move/from16 v0, v28

    move/from16 v3, v36

    .end local v28    # "procState":I
    .end local v36    # "adj":I
    .restart local v0    # "procState":I
    .local v3, "adj":I
    :goto_36
    add-int/lit8 v2, v33, 0x1

    move/from16 v44, v4

    move-object v8, v6

    move-object/from16 v22, v11

    move-object v11, v12

    move-object/from16 v4, v30

    move/from16 v6, v31

    move-object/from16 v15, v41

    move/from16 v33, v46

    move/from16 v36, v48

    move/from16 v41, v50

    const/16 v25, 0x1

    const/16 v27, 0x5

    const/16 v28, 0x3

    move-object v12, v7

    move/from16 v30, v9

    move/from16 v7, v35

    move-object v9, v5

    move-object/from16 v5, v40

    move/from16 v40, v21

    move/from16 v21, v49

    .end local v33    # "i":I
    .local v2, "i":I
    goto/16 :goto_1f

    .line 1960
    .end local v31    # "PROCESS_STATE_CUR_TOP":I
    .end local v35    # "conni":I
    .end local v46    # "prevCapability":I
    .end local v48    # "prevProcState":I
    .end local v49    # "hasVisibleActivities":Z
    .end local v50    # "prevAppAdj":I
    .local v4, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v5, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v6, "PROCESS_STATE_CUR_TOP":I
    .local v7, "conni":I
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v21, "hasVisibleActivities":Z
    .local v30, "logUid":I
    .local v33, "prevCapability":I
    .local v36, "prevProcState":I
    .local v40, "is":I
    .local v41, "prevAppAdj":I
    .restart local v44    # "appUid":I
    :cond_86
    move/from16 v19, v0

    move/from16 v31, v6

    move/from16 v35, v7

    move-object v6, v8

    move-object v7, v12

    move/from16 v49, v21

    move/from16 v46, v33

    move/from16 v48, v36

    move/from16 v21, v40

    move/from16 v50, v41

    move/from16 v33, v2

    move/from16 v36, v3

    move-object/from16 v40, v5

    move-object v5, v9

    move-object v12, v11

    move-object/from16 v41, v15

    move-object/from16 v11, v22

    move/from16 v9, v30

    move-object/from16 v30, v4

    move/from16 v4, v44

    .line 1957
    .end local v0    # "procState":I
    .end local v2    # "i":I
    .end local v3    # "adj":I
    .end local v6    # "PROCESS_STATE_CUR_TOP":I
    .end local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v30    # "logUid":I
    .end local v33    # "prevCapability":I
    .end local v44    # "appUid":I
    .local v4, "appUid":I
    .local v5, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v7, "s":Lcom/android/server/am/ServiceRecord;
    .local v9, "logUid":I
    .local v19, "procState":I
    .local v21, "is":I
    .restart local v31    # "PROCESS_STATE_CUR_TOP":I
    .restart local v35    # "conni":I
    .local v36, "adj":I
    .local v40, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v41, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v46    # "prevCapability":I
    .restart local v48    # "prevProcState":I
    .restart local v49    # "hasVisibleActivities":Z
    .restart local v50    # "prevAppAdj":I
    :goto_37
    add-int/lit8 v0, v35, -0x1

    move/from16 v44, v4

    move-object v8, v6

    move/from16 v30, v9

    move-object/from16 v22, v11

    move-object v11, v12

    move/from16 v1, v23

    move/from16 v6, v31

    move/from16 v23, v32

    move/from16 v2, v36

    move/from16 v32, v38

    move-object/from16 v15, v41

    move/from16 v33, v46

    move/from16 v36, v48

    move/from16 v41, v50

    const/16 v25, 0x1

    const/16 v27, 0x5

    const/16 v28, 0x3

    move-object v9, v5

    move-object v12, v7

    move-object/from16 v5, v40

    move v7, v0

    move/from16 v0, v19

    move/from16 v40, v21

    move/from16 v21, v49

    .end local v35    # "conni":I
    .local v0, "conni":I
    goto/16 :goto_1d

    .line 1954
    .end local v4    # "appUid":I
    .end local v19    # "procState":I
    .end local v31    # "PROCESS_STATE_CUR_TOP":I
    .end local v38    # "capability":I
    .end local v46    # "prevCapability":I
    .end local v48    # "prevProcState":I
    .end local v49    # "hasVisibleActivities":Z
    .end local v50    # "prevAppAdj":I
    .local v0, "procState":I
    .local v1, "schedGroup":I
    .local v2, "adj":I
    .local v5, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v6    # "PROCESS_STATE_CUR_TOP":I
    .local v7, "conni":I
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v21, "hasVisibleActivities":Z
    .local v23, "scheduleLikeTopApp":Z
    .restart local v30    # "logUid":I
    .local v32, "capability":I
    .restart local v33    # "prevCapability":I
    .local v36, "prevProcState":I
    .local v40, "is":I
    .local v41, "prevAppAdj":I
    .restart local v44    # "appUid":I
    :cond_87
    move/from16 v31, v6

    move/from16 v35, v7

    move-object v6, v8

    move-object v7, v12

    move/from16 v49, v21

    move/from16 v46, v33

    move/from16 v48, v36

    move/from16 v21, v40

    move/from16 v50, v41

    move/from16 v4, v44

    const/4 v8, 0x0

    move-object/from16 v40, v5

    move-object v5, v9

    move-object v12, v11

    move-object/from16 v11, v22

    move/from16 v9, v30

    .line 1880
    .end local v6    # "PROCESS_STATE_CUR_TOP":I
    .end local v7    # "conni":I
    .end local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v30    # "logUid":I
    .end local v33    # "prevCapability":I
    .end local v36    # "prevProcState":I
    .end local v40    # "is":I
    .end local v41    # "prevAppAdj":I
    .end local v44    # "appUid":I
    .restart local v4    # "appUid":I
    .local v5, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v9, "logUid":I
    .local v21, "is":I
    .restart local v31    # "PROCESS_STATE_CUR_TOP":I
    .restart local v46    # "prevCapability":I
    .restart local v48    # "prevProcState":I
    .restart local v49    # "hasVisibleActivities":Z
    .restart local v50    # "prevAppAdj":I
    :goto_38
    add-int/lit8 v3, v21, -0x1

    move v7, v2

    move v2, v3

    move-object v8, v6

    move-object/from16 v22, v11

    move-object v11, v12

    move/from16 v6, v31

    move-object/from16 v12, v37

    move/from16 v33, v46

    move/from16 v36, v48

    move/from16 v21, v49

    move/from16 v3, v50

    const/16 v27, 0x5

    const/16 v28, 0x3

    move-object/from16 v37, v15

    move-object/from16 v15, v24

    move-object/from16 v60, v5

    move v5, v4

    move v4, v9

    move-object/from16 v9, v60

    .end local v21    # "is":I
    .local v3, "is":I
    goto/16 :goto_12

    .line 1877
    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v31    # "PROCESS_STATE_CUR_TOP":I
    .end local v46    # "prevCapability":I
    .end local v48    # "prevProcState":I
    .end local v49    # "hasVisibleActivities":Z
    .end local v50    # "prevAppAdj":I
    .local v2, "is":I
    .local v3, "prevAppAdj":I
    .local v4, "logUid":I
    .local v5, "appUid":I
    .restart local v6    # "PROCESS_STATE_CUR_TOP":I
    .local v7, "adj":I
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v21, "hasVisibleActivities":Z
    .restart local v33    # "prevCapability":I
    .restart local v36    # "prevProcState":I
    .restart local v37    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_88
    move/from16 v38, v1

    move/from16 v50, v3

    move/from16 v31, v6

    move-object v6, v8

    move/from16 v49, v21

    move/from16 v46, v33

    move/from16 v48, v36

    move-object/from16 v15, v37

    const/4 v8, 0x0

    move/from16 v21, v2

    move-object/from16 v37, v12

    move-object v12, v11

    move-object/from16 v11, v22

    move-object/from16 v60, v9

    move v9, v4

    move v4, v5

    move-object/from16 v5, v60

    .line 2269
    .end local v1    # "schedGroup":I
    .end local v2    # "is":I
    .end local v3    # "prevAppAdj":I
    .end local v6    # "PROCESS_STATE_CUR_TOP":I
    .end local v21    # "hasVisibleActivities":Z
    .end local v33    # "prevCapability":I
    .end local v36    # "prevProcState":I
    .end local v37    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v4, "appUid":I
    .local v5, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v9, "logUid":I
    .restart local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v31    # "PROCESS_STATE_CUR_TOP":I
    .local v38, "schedGroup":I
    .restart local v46    # "prevCapability":I
    .restart local v48    # "prevProcState":I
    .restart local v49    # "hasVisibleActivities":Z
    .restart local v50    # "prevAppAdj":I
    :goto_39
    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 2270
    .local v3, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v2, v7

    move v7, v1

    move/from16 v1, v38

    .line 2271
    .end local v38    # "schedGroup":I
    .restart local v1    # "schedGroup":I
    .local v2, "adj":I
    .local v7, "provi":I
    :goto_3a
    if-ltz v7, :cond_a3

    if-gtz v2, :cond_8a

    if-eqz v1, :cond_8a

    const/4 v8, 0x2

    if-le v0, v8, :cond_89

    goto :goto_3b

    :cond_89
    move/from16 v19, v1

    move-object/from16 v27, v3

    move v8, v4

    move-object v7, v5

    move-object v3, v6

    move v1, v9

    move-object/from16 v41, v15

    const/4 v11, 0x0

    goto/16 :goto_4a

    .line 2275
    :cond_8a
    :goto_3b
    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v8

    .line 2276
    .local v8, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move/from16 v19, v1

    .end local v1    # "schedGroup":I
    .local v19, "schedGroup":I
    iget-object v1, v8, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v21, 0x1

    add-int/lit8 v1, v1, -0x1

    move/from16 v51, v9

    move v9, v2

    move v2, v1

    move/from16 v1, v19

    .line 2277
    .end local v19    # "schedGroup":I
    .restart local v1    # "schedGroup":I
    .local v2, "i":I
    .local v9, "adj":I
    .restart local v51    # "logUid":I
    :goto_3c
    if-ltz v2, :cond_9d

    if-gtz v9, :cond_8c

    if-eqz v1, :cond_8c

    move/from16 v19, v1

    const/4 v1, 0x2

    .end local v1    # "schedGroup":I
    .restart local v19    # "schedGroup":I
    if-le v0, v1, :cond_8b

    goto :goto_3d

    :cond_8b
    move-object/from16 v27, v3

    move-object v3, v6

    move/from16 v28, v7

    move-object v2, v8

    move-object/from16 v41, v15

    move/from16 v1, v51

    const/4 v6, 0x2

    move v8, v4

    move-object v7, v5

    move v4, v9

    move-object v5, v11

    goto/16 :goto_47

    .end local v19    # "schedGroup":I
    .restart local v1    # "schedGroup":I
    :cond_8c
    move/from16 v19, v1

    .line 2281
    .end local v1    # "schedGroup":I
    .restart local v19    # "schedGroup":I
    :goto_3d
    iget-object v1, v8, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;

    .line 2282
    .local v1, "conn":Lcom/android/server/am/ContentProviderConnection;
    move/from16 v21, v9

    .end local v9    # "adj":I
    .local v21, "adj":I
    iget-object v9, v1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 2283
    .local v9, "client":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v41, v15

    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v41, "psr":Lcom/android/server/am/ProcessServiceRecord;
    iget-object v15, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2284
    .local v15, "cstate":Lcom/android/server/am/ProcessStateRecord;
    if-ne v9, v12, :cond_8d

    .line 2286
    move/from16 v26, v2

    move-object/from16 v27, v3

    move/from16 v56, v4

    move-object/from16 v39, v5

    move-object/from16 v57, v6

    move/from16 v28, v7

    move-object/from16 v58, v8

    move-object/from16 v47, v11

    move/from16 v30, v21

    move/from16 v59, v51

    goto/16 :goto_3f

    .line 2288
    :cond_8d
    if-eqz p8, :cond_8e

    .line 2289
    const/16 v22, 0x1

    move-object/from16 v47, v11

    move-object v11, v1

    .end local v1    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v11, "conn":Lcom/android/server/am/ContentProviderConnection;
    move-object/from16 v1, p0

    move/from16 v26, v2

    .end local v2    # "i":I
    .local v26, "i":I
    move-object v2, v9

    move-object/from16 v27, v3

    .end local v3    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v27, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    move/from16 v3, p2

    move/from16 v56, v4

    .end local v4    # "appUid":I
    .local v56, "appUid":I
    move-object/from16 v4, p3

    move-object/from16 v39, v5

    .end local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    move/from16 v5, p4

    move-object/from16 v57, v6

    move/from16 v28, v7

    .end local v7    # "provi":I
    .local v28, "provi":I
    move-wide/from16 v6, p5

    move-object/from16 v58, v8

    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v58, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move/from16 v8, p7

    move/from16 v30, v21

    move/from16 v59, v51

    move-object/from16 v21, v11

    move-object v11, v9

    .end local v9    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v51    # "logUid":I
    .local v11, "client":Lcom/android/server/am/ProcessRecord;
    .local v21, "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v30, "adj":I
    .local v59, "logUid":I
    move/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    goto :goto_3e

    .line 2291
    .end local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "i":I
    .end local v27    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v28    # "provi":I
    .end local v30    # "adj":I
    .end local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v56    # "appUid":I
    .end local v58    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v59    # "logUid":I
    .restart local v1    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v2    # "i":I
    .restart local v3    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v4    # "appUid":I
    .restart local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v7    # "provi":I
    .restart local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v9    # "client":Lcom/android/server/am/ProcessRecord;
    .local v21, "adj":I
    .restart local v51    # "logUid":I
    :cond_8e
    move/from16 v26, v2

    move-object/from16 v27, v3

    move/from16 v56, v4

    move-object/from16 v39, v5

    move-object/from16 v57, v6

    move/from16 v28, v7

    move-object/from16 v58, v8

    move-object/from16 v47, v11

    move/from16 v30, v21

    move/from16 v59, v51

    move-object/from16 v21, v1

    move-object v11, v9

    .end local v1    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v2    # "i":I
    .end local v3    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v4    # "appUid":I
    .end local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v7    # "provi":I
    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v9    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v51    # "logUid":I
    .restart local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .local v21, "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v26    # "i":I
    .restart local v27    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v28    # "provi":I
    .restart local v30    # "adj":I
    .restart local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v56    # "appUid":I
    .restart local v58    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v59    # "logUid":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2292
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2295
    :goto_3e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move v4, v0

    move/from16 v5, v30

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 2296
    nop

    .line 2280
    .end local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v26    # "i":I
    .end local v27    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v28    # "provi":I
    .end local v30    # "adj":I
    .end local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v56    # "appUid":I
    .end local v58    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v59    # "logUid":I
    .restart local v2    # "i":I
    .restart local v3    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v4    # "appUid":I
    .restart local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v7    # "provi":I
    .restart local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v21, "adj":I
    .restart local v51    # "logUid":I
    :goto_3f
    move/from16 v9, v30

    move-object/from16 v7, v39

    move-object/from16 v5, v47

    move/from16 v8, v56

    move-object/from16 v3, v57

    move/from16 v1, v59

    .end local v2    # "i":I
    .end local v3    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v4    # "appUid":I
    .end local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v7    # "provi":I
    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v21    # "adj":I
    .end local v51    # "logUid":I
    .restart local v26    # "i":I
    .restart local v27    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v28    # "provi":I
    .restart local v30    # "adj":I
    .restart local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v56    # "appUid":I
    .restart local v58    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v59    # "logUid":I
    goto/16 :goto_46

    .line 2299
    .restart local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v21, "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_8f
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v6

    .line 2300
    .local v6, "clientAdj":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v1

    .line 2302
    .local v1, "clientProcState":I
    const/16 v3, 0x10

    if-lt v1, v3, :cond_90

    .line 2305
    const/16 v1, 0x13

    .line 2307
    :cond_90
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2309
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 2311
    :cond_91
    const/4 v2, 0x0

    .line 2312
    .local v2, "adjType":Ljava/lang/String;
    move/from16 v4, v30

    .end local v30    # "adj":I
    .local v4, "adj":I
    if-le v4, v6, :cond_95

    .line 2313
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v5

    if-nez v5, :cond_92

    const/16 v5, 0xc8

    if-le v6, v5, :cond_93

    .line 2315
    const-string v2, "cch-ui-provider"

    move v9, v4

    move-object/from16 v7, v39

    goto :goto_41

    .line 2313
    :cond_92
    const/16 v5, 0xc8

    .line 2317
    :cond_93
    if-lez v6, :cond_94

    .line 2318
    move v7, v6

    goto :goto_40

    :cond_94
    const/4 v7, 0x0

    :goto_40
    move v9, v7

    .line 2319
    .end local v4    # "adj":I
    .local v9, "adj":I
    move-object/from16 v7, v39

    .end local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v7, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2320
    const-string/jumbo v2, "provider"

    .line 2322
    :goto_41
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v8

    and-int/2addr v4, v8

    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    goto :goto_42

    .line 2312
    .end local v7    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v9    # "adj":I
    .restart local v4    # "adj":I
    .restart local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_95
    move-object/from16 v7, v39

    const/16 v5, 0xc8

    .end local v39    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v7    # "state":Lcom/android/server/am/ProcessStateRecord;
    move v9, v4

    .line 2325
    .end local v4    # "adj":I
    .restart local v9    # "adj":I
    :goto_42
    const/4 v8, 0x4

    if-gt v1, v8, :cond_98

    .line 2326
    if-nez v2, :cond_96

    .line 2327
    const-string/jumbo v2, "provider"

    .line 2329
    :cond_96
    const/4 v4, 0x2

    if-ne v1, v4, :cond_97

    .line 2330
    const/4 v1, 0x3

    goto :goto_43

    .line 2332
    :cond_97
    const/4 v1, 0x5

    goto :goto_43

    .line 2325
    :cond_98
    const/4 v4, 0x2

    .line 2336
    :goto_43
    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v4, v21

    .end local v21    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v4, "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {v4, v1, v3, v13, v14}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(IIJ)V

    .line 2337
    if-le v0, v1, :cond_99

    .line 2338
    move v0, v1

    .line 2339
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2341
    :cond_99
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v3

    move/from16 v5, v19

    .end local v19    # "schedGroup":I
    .local v5, "schedGroup":I
    if-le v3, v5, :cond_9a

    .line 2342
    const/4 v3, 0x2

    .end local v5    # "schedGroup":I
    .local v3, "schedGroup":I
    goto :goto_44

    .line 2341
    .end local v3    # "schedGroup":I
    .restart local v5    # "schedGroup":I
    :cond_9a
    move v3, v5

    .line 2344
    .end local v5    # "schedGroup":I
    .restart local v3    # "schedGroup":I
    :goto_44
    if-eqz v2, :cond_9c

    .line 2345
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2346
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2348
    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2349
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 2350
    move-object/from16 v5, v58

    .end local v58    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v5, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v8, v5, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2351
    move/from16 v19, v1

    move/from16 v8, v56

    move/from16 v1, v59

    .end local v56    # "appUid":I
    .end local v59    # "logUid":I
    .local v1, "logUid":I
    .local v8, "appUid":I
    .local v19, "clientProcState":I
    if-ne v1, v8, :cond_9b

    .line 2352
    move/from16 v21, v3

    .end local v3    # "schedGroup":I
    .local v21, "schedGroup":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v58, v5

    move-object/from16 v5, v37

    .end local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v58    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v47

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v2

    .end local v2    # "adjType":Ljava/lang/String;
    .local v22, "adjType":Ljava/lang/String;
    const-string v2, ", due to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " adj="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " procState="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2355
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2352
    move-object/from16 v3, v57

    invoke-direct {v10, v3, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 2351
    .end local v21    # "schedGroup":I
    .end local v22    # "adjType":Ljava/lang/String;
    .end local v58    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v2    # "adjType":Ljava/lang/String;
    .restart local v3    # "schedGroup":I
    .restart local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_9b
    move-object/from16 v22, v2

    move/from16 v21, v3

    move-object/from16 v58, v5

    move-object/from16 v5, v47

    move-object/from16 v3, v57

    .end local v2    # "adjType":Ljava/lang/String;
    .end local v3    # "schedGroup":I
    .end local v5    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v21    # "schedGroup":I
    .restart local v22    # "adjType":Ljava/lang/String;
    .restart local v58    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto :goto_45

    .line 2344
    .end local v8    # "appUid":I
    .end local v19    # "clientProcState":I
    .end local v21    # "schedGroup":I
    .end local v22    # "adjType":Ljava/lang/String;
    .local v1, "clientProcState":I
    .restart local v2    # "adjType":Ljava/lang/String;
    .restart local v3    # "schedGroup":I
    .restart local v56    # "appUid":I
    .restart local v59    # "logUid":I
    :cond_9c
    move/from16 v19, v1

    move-object/from16 v22, v2

    move/from16 v21, v3

    move-object/from16 v5, v47

    move/from16 v8, v56

    move-object/from16 v3, v57

    move/from16 v1, v59

    .line 2280
    .end local v2    # "adjType":Ljava/lang/String;
    .end local v3    # "schedGroup":I
    .end local v4    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v6    # "clientAdj":I
    .end local v11    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v56    # "appUid":I
    .end local v59    # "logUid":I
    .local v1, "logUid":I
    .restart local v8    # "appUid":I
    .restart local v21    # "schedGroup":I
    :goto_45
    move/from16 v19, v21

    .end local v21    # "schedGroup":I
    .local v19, "schedGroup":I
    :goto_46
    add-int/lit8 v2, v26, -0x1

    move/from16 v51, v1

    move-object v6, v3

    move-object v11, v5

    move-object v5, v7

    move v4, v8

    move/from16 v1, v19

    move-object/from16 v3, v27

    move/from16 v7, v28

    move-object/from16 v15, v41

    move-object/from16 v8, v58

    .end local v26    # "i":I
    .local v2, "i":I
    goto/16 :goto_3c

    .line 2277
    .end local v19    # "schedGroup":I
    .end local v27    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v28    # "provi":I
    .end local v41    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v58    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v1, "schedGroup":I
    .local v3, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v4, "appUid":I
    .local v5, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v7, "provi":I
    .local v8, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v51    # "logUid":I
    :cond_9d
    move/from16 v19, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    move-object v3, v6

    move/from16 v28, v7

    move-object v2, v8

    move-object/from16 v41, v15

    move/from16 v1, v51

    const/4 v6, 0x2

    move v8, v4

    move-object v7, v5

    move v4, v9

    move-object v5, v11

    .line 2362
    .end local v3    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v9    # "adj":I
    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v51    # "logUid":I
    .local v1, "logUid":I
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v4, "adj":I
    .local v7, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v8, "appUid":I
    .restart local v19    # "schedGroup":I
    .restart local v27    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v28    # "provi":I
    .restart local v41    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_47
    invoke-virtual {v2}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 2363
    if-lez v4, :cond_9f

    .line 2364
    const/4 v9, 0x0

    .line 2365
    .end local v4    # "adj":I
    .restart local v9    # "adj":I
    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2366
    const/4 v4, 0x2

    .line 2367
    .end local v19    # "schedGroup":I
    .local v4, "schedGroup":I
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2368
    const-string v15, "ext-provider"

    invoke-virtual {v7, v15}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2369
    iget-object v15, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v15}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2370
    if-ne v1, v8, :cond_9e

    .line 2371
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise adj to external provider: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v3, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    :cond_9e
    move/from16 v19, v4

    goto :goto_48

    .line 2363
    .end local v9    # "adj":I
    .local v4, "adj":I
    .restart local v19    # "schedGroup":I
    :cond_9f
    const/4 v11, 0x0

    move v9, v4

    .line 2375
    .end local v4    # "adj":I
    .restart local v9    # "adj":I
    :goto_48
    const/4 v4, 0x6

    if-le v0, v4, :cond_a1

    .line 2376
    const/4 v0, 0x6

    .line 2377
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2378
    if-ne v1, v8, :cond_a0

    .line 2379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise procstate to external provider: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_a0
    move v2, v9

    goto :goto_49

    .line 2375
    .restart local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_a1
    move v2, v9

    goto :goto_49

    .line 2362
    .end local v9    # "adj":I
    .restart local v4    # "adj":I
    :cond_a2
    const/4 v11, 0x0

    move v2, v4

    .line 2274
    .end local v4    # "adj":I
    .local v2, "adj":I
    :goto_49
    add-int/lit8 v4, v28, -0x1

    move v9, v1

    move-object v6, v3

    move/from16 v1, v19

    move-object/from16 v3, v27

    move-object/from16 v15, v41

    move-object/from16 v60, v7

    move v7, v4

    move v4, v8

    move v8, v11

    move-object v11, v5

    move-object/from16 v5, v60

    .end local v28    # "provi":I
    .local v4, "provi":I
    goto/16 :goto_3a

    .line 2271
    .end local v8    # "appUid":I
    .end local v19    # "schedGroup":I
    .end local v27    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v41    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v1, "schedGroup":I
    .restart local v3    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v4, "appUid":I
    .restart local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v7, "provi":I
    .local v9, "logUid":I
    .restart local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_a3
    move/from16 v19, v1

    move-object/from16 v27, v3

    move-object v3, v6

    move/from16 v28, v7

    move v11, v8

    move v1, v9

    move-object/from16 v41, v15

    move v8, v4

    move-object v7, v5

    .line 2386
    .end local v3    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v4    # "appUid":I
    .end local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v9    # "logUid":I
    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v1, "logUid":I
    .local v7, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v8    # "appUid":I
    .restart local v19    # "schedGroup":I
    .restart local v27    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v41    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_4a
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v4

    const-wide/16 v17, 0x0

    cmp-long v4, v4, v17

    if-lez v4, :cond_a7

    .line 2387
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v4

    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v6, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v4, v11

    cmp-long v4, v4, v13

    if-lez v4, :cond_a6

    .line 2388
    const/16 v4, 0x2bc

    if-le v2, v4, :cond_a5

    .line 2389
    const/16 v2, 0x2bc

    .line 2390
    const/4 v4, 0x0

    .line 2391
    .end local v19    # "schedGroup":I
    .local v4, "schedGroup":I
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2392
    const-string/jumbo v5, "recent-provider"

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2393
    if-ne v1, v8, :cond_a4

    .line 2394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise adj to recent provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v3, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 2393
    :cond_a4
    move-object/from16 v6, p1

    .line 2398
    :goto_4b
    move/from16 v19, v4

    goto :goto_4c

    .line 2388
    .end local v4    # "schedGroup":I
    .restart local v19    # "schedGroup":I
    :cond_a5
    move-object/from16 v6, p1

    .line 2398
    :goto_4c
    const/16 v4, 0xf

    if-le v0, v4, :cond_a8

    .line 2399
    const/16 v0, 0xf

    .line 2400
    const-string/jumbo v4, "recent-provider"

    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2401
    if-ne v1, v8, :cond_a8

    .line 2402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise procstate to recent provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 2387
    :cond_a6
    move-object/from16 v6, p1

    goto :goto_4d

    .line 2386
    :cond_a7
    move-object v6, v12

    .line 2408
    :cond_a8
    :goto_4d
    const/16 v3, 0x13

    if-lt v0, v3, :cond_aa

    .line 2409
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 2411
    const/16 v0, 0x11

    .line 2412
    const-string v3, "cch-client-act"

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_4e

    .line 2413
    :cond_a9
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 2416
    const/16 v0, 0x10

    .line 2417
    const-string v3, "cch-as-act"

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2421
    :cond_aa
    :goto_4e
    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_b0

    .line 2422
    if-eqz p4, :cond_af

    if-nez p7, :cond_af

    .line 2423
    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v4, v10, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const/4 v5, 0x3

    div-int/2addr v4, v5

    if-le v3, v4, :cond_ab

    const/4 v3, 0x1

    goto :goto_4f

    :cond_ab
    const/4 v3, 0x0

    :goto_4f
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    .line 2424
    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 2425
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v3

    if-nez v3, :cond_ae

    .line 2430
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v3

    if-nez v3, :cond_ad

    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2431
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v3

    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2432
    invoke-virtual {v5}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v11

    cmp-long v3, v3, v11

    if-ltz v3, :cond_ac

    .line 2433
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    .line 2434
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    const/4 v3, 0x0

    goto :goto_51

    .line 2432
    :cond_ac
    const/4 v3, 0x1

    goto :goto_50

    .line 2430
    :cond_ad
    const/4 v3, 0x1

    .line 2437
    :goto_50
    iget v4, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v4, v3

    iput v4, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    const/4 v3, 0x0

    goto :goto_51

    .line 2441
    :cond_ae
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    goto :goto_51

    .line 2422
    :cond_af
    const/4 v3, 0x0

    .line 2444
    :goto_51
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 2445
    const/16 v2, 0x320

    goto :goto_52

    .line 2421
    :cond_b0
    const/4 v3, 0x0

    .line 2449
    :cond_b1
    :goto_52
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2451
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    if-le v2, v4, :cond_b3

    .line 2452
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    .line 2453
    const/16 v4, 0xfa

    if-gt v2, v4, :cond_b2

    .line 2454
    const/16 v19, 0x2

    move/from16 v4, v19

    goto :goto_53

    .line 2453
    :cond_b2
    move/from16 v4, v19

    goto :goto_53

    .line 2451
    :cond_b3
    move/from16 v4, v19

    .line 2460
    .end local v19    # "schedGroup":I
    .restart local v4    # "schedGroup":I
    :goto_53
    const/4 v5, 0x5

    if-lt v0, v5, :cond_b4

    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2461
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v9, 0x1

    if-eq v5, v9, :cond_b5

    if-nez v23, :cond_b5

    .line 2463
    if-le v4, v9, :cond_b5

    .line 2464
    const/4 v4, 0x1

    goto :goto_54

    .line 2460
    :cond_b4
    const/4 v9, 0x1

    .line 2469
    :cond_b5
    :goto_54
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 2470
    or-int v32, v32, v20

    .line 2473
    :cond_b6
    move-object/from16 v5, v41

    .end local v41    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v5, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-direct {v10, v5, v0}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessServiceRecord;I)I

    move-result v11

    or-int v11, v32, v11

    .line 2480
    .end local v32    # "capability":I
    .local v11, "capability":I
    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 2481
    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2482
    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2483
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2484
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2485
    move/from16 v12, v49

    .end local v49    # "hasVisibleActivities":Z
    .local v12, "hasVisibleActivities":Z
    invoke-virtual {v7, v12}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    .line 2486
    move/from16 v15, v16

    .end local v16    # "foregroundActivities":Z
    .local v15, "foregroundActivities":Z
    invoke-virtual {v7, v15}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 2487
    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 2490
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    move/from16 v9, v50

    .end local v50    # "prevAppAdj":I
    .local v9, "prevAppAdj":I
    if-lt v3, v9, :cond_b9

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    move/from16 v51, v1

    move/from16 v1, v48

    .end local v48    # "prevProcState":I
    .local v1, "prevProcState":I
    .restart local v51    # "logUid":I
    if-lt v3, v1, :cond_b8

    .line 2491
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    move/from16 v48, v1

    move/from16 v1, v46

    .end local v46    # "prevCapability":I
    .local v1, "prevCapability":I
    .restart local v48    # "prevProcState":I
    if-eq v3, v1, :cond_b7

    goto :goto_55

    :cond_b7
    const/16 v25, 0x0

    goto :goto_56

    .line 2490
    .end local v48    # "prevProcState":I
    .local v1, "prevProcState":I
    .restart local v46    # "prevCapability":I
    :cond_b8
    move/from16 v48, v1

    move/from16 v1, v46

    .end local v46    # "prevCapability":I
    .local v1, "prevCapability":I
    .restart local v48    # "prevProcState":I
    goto :goto_55

    .end local v51    # "logUid":I
    .local v1, "logUid":I
    .restart local v46    # "prevCapability":I
    :cond_b9
    move/from16 v51, v1

    move/from16 v1, v46

    .line 2491
    .end local v46    # "prevCapability":I
    .local v1, "prevCapability":I
    .restart local v51    # "logUid":I
    :goto_55
    const/16 v25, 0x1

    .line 2490
    :goto_56
    return v25
.end method

.method private static createAdjusterThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 378
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "OomAdjuster"

    const/16 v2, -0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 380
    .local v0, "adjusterThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 381
    return-object v0
.end method

.method private getDefaultCapability(Lcom/android/server/am/ProcessServiceRecord;I)I
    .locals 2
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "procState"    # I

    .line 2495
    const/16 v0, 0x8

    packed-switch p2, :pswitch_data_0

    .line 2516
    const/4 v0, 0x0

    return v0

    .line 2514
    :pswitch_0
    return v0

    .line 2503
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2506
    return v0

    .line 2511
    :cond_0
    const/16 v0, 0xe

    return v0

    .line 2501
    :pswitch_2
    return v0

    .line 2499
    :pswitch_3
    const/16 v0, 0xf

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 7
    .param p0, "msg"    # Landroid/os/Message;

    .line 397
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 398
    .local v0, "pid":I
    iget v1, p0, Landroid/os/Message;->arg2:I

    .line 399
    .local v1, "group":I
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 401
    return v3

    .line 403
    :cond_0
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProcessGroup "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 408
    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 415
    goto :goto_1

    .line 414
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 415
    throw v2

    .line 409
    :catch_0
    move-exception v2

    goto :goto_0

    .line 416
    :goto_1
    return v3
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/am/ProcessStateRecord;
    .param p2, "nowUptime"    # J

    .line 2949
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 2950
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 2951
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setLastTopTime(J)V

    .line 2953
    :cond_0
    return-void
.end method

.method private maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .locals 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J

    .line 2893
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2899
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v5, :cond_0

    .line 2900
    return-void

    .line 2902
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OomAdjuster;->getPlatformCompatCache()Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    move-result-object v5

    const-wide/32 v6, 0xaf7340d

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;Z)Z

    move-result v5

    .line 2908
    .local v5, "fgsInteractionChangeEnabled":Z
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x6

    const-wide/16 v10, 0x0

    if-le v6, v7, :cond_7

    .line 2909
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 2912
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    const/4 v7, 0x4

    const/4 v12, 0x1

    if-gt v6, v7, :cond_5

    .line 2913
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-nez v6, :cond_2

    .line 2914
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    .line 2915
    const/4 v6, 0x0

    .local v6, "isInteraction":Z
    goto :goto_2

    .line 2917
    .end local v6    # "isInteraction":Z
    :cond_2
    if-eqz v5, :cond_3

    .line 2918
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_0

    .line 2919
    :cond_3
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_0
    nop

    .line 2920
    .local v6, "interactionTime":J
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v13

    add-long/2addr v13, v6

    cmp-long v13, v2, v13

    if-lez v13, :cond_4

    move v9, v12

    :cond_4
    move v6, v9

    .line 2921
    .local v6, "isInteraction":Z
    goto :goto_2

    .line 2923
    .end local v6    # "isInteraction":Z
    :cond_5
    nop

    .line 2924
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    if-gt v6, v8, :cond_6

    move v9, v12

    :cond_6
    move v6, v9

    .line 2925
    .restart local v6    # "isInteraction":Z
    invoke-virtual {v4, v10, v11}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    goto :goto_2

    .line 2910
    .end local v6    # "isInteraction":Z
    :cond_7
    :goto_1
    const/4 v6, 0x1

    .line 2911
    .restart local v6    # "isInteraction":Z
    invoke-virtual {v4, v10, v11}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    .line 2927
    :goto_2
    if-eqz v5, :cond_8

    .line 2928
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v7, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_3

    .line 2929
    :cond_8
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v7, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_3
    nop

    .line 2930
    .local v12, "interactionThreshold":J
    if-eqz v6, :cond_a

    .line 2931
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2932
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v14

    sub-long v14, v2, v14

    cmp-long v7, v14, v12

    if-lez v7, :cond_a

    .line 2933
    :cond_9
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    .line 2934
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v7

    .line 2935
    .local v7, "packages":[Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 2936
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v14, v7

    if-ge v9, v14, :cond_a

    .line 2937
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v15, v7, v9

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v14, v15, v10, v8}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2936
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v10, 0x0

    goto :goto_4

    .line 2942
    .end local v7    # "packages":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_a
    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessStateRecord;->setReportedInteraction(Z)V

    .line 2943
    if-nez v6, :cond_b

    .line 2944
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    .line 2946
    :cond_b
    return-void
.end method

.method private performUpdateOomAdjLSP(Ljava/lang/String;)V
    .locals 8
    .param p1, "oomAdjReason"    # Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 557
    .local v0, "topApp":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 558
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    iput-boolean v3, v1, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    .line 559
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 560
    return-void
.end method

.method private performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;J)Z
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"    # I
    .param p3, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "now"    # J

    .line 481
    move-object v9, p0

    move-object v10, p1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    return v0

    .line 485
    :cond_0
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 486
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v11

    .line 487
    .local v11, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v11, :cond_1

    .line 491
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->reset()V

    .line 495
    :cond_1
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 498
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 499
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 501
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 503
    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 501
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 505
    .end local v0    # "i":I
    :cond_2
    return v1

    .line 508
    :cond_3
    if-eqz v11, :cond_5

    .line 511
    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-virtual {v11, v0}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 512
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_5

    .line 513
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 514
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 515
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v1

    if-eq v0, v1, :cond_5

    .line 516
    :cond_4
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 517
    .local v0, "uids":Lcom/android/server/am/ActiveUids;
    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 518
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 520
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    .line 524
    .end local v0    # "uids":Lcom/android/server/am/ActiveUids;
    :cond_5
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    return v0
.end method

.method private performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 24
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # Ljava/lang/String;

    .line 601
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 603
    .local v12, "topApp":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v13, 0x40

    move-object/from16 v15, p2

    invoke-static {v13, v14, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 604
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 605
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 608
    iget-object v9, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 609
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v8

    .line 610
    .local v8, "wasCached":Z
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    .line 611
    .local v7, "oldAdj":I
    const/16 v0, 0x384

    if-lt v7, v0, :cond_0

    .line 612
    move v2, v7

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e9

    .line 613
    .local v2, "cachedAdj":I
    :goto_0
    nop

    .line 614
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    .line 613
    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    .line 615
    .local v4, "wasBackground":Z
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v5

    .line 616
    .local v5, "oldCap":I
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 617
    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 618
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 620
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 621
    nop

    .line 622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v13, v3

    move-object v3, v12

    move v14, v4

    move v13, v5

    .end local v4    # "wasBackground":Z
    .end local v5    # "oldCap":I
    .local v13, "oldCap":I
    .local v14, "wasBackground":Z
    move-wide/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    .line 625
    .local v0, "success":Z
    if-eqz v0, :cond_6

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    if-ne v8, v1, :cond_1

    const/16 v1, -0x2710

    if-eq v7, v1, :cond_1

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 626
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    if-ne v13, v1, :cond_1

    .line 629
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v1

    .line 628
    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-ne v14, v1, :cond_1

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    goto/16 :goto_3

    .line 641
    :cond_1
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 642
    .local v1, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 643
    .local v5, "uids":Lcom/android/server/am/ActiveUids;
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 647
    iget-object v4, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 646
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 649
    .end local v3    # "i":I
    :cond_2
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 651
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-direct {v10, v3, v1, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v18

    .line 655
    .local v18, "containsCycle":Z
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 657
    if-nez v18, :cond_3

    .line 659
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 661
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 664
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 665
    .local v19, "size":I
    if-lez v19, :cond_4

    .line 666
    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 668
    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v20, v5

    .end local v5    # "uids":Lcom/android/server/am/ActiveUids;
    .local v20, "uids":Lcom/android/server/am/ActiveUids;
    move-object v5, v12

    move-object v6, v1

    move/from16 v21, v7

    .end local v7    # "oldAdj":I
    .local v21, "oldAdj":I
    move-object/from16 v7, v20

    move/from16 v22, v8

    .end local v8    # "wasCached":Z
    .local v22, "wasCached":Z
    move/from16 v8, v18

    move-object/from16 v23, v9

    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v23, "state":Lcom/android/server/am/ProcessStateRecord;
    move/from16 v9, v17

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_2

    .line 669
    .end local v20    # "uids":Lcom/android/server/am/ActiveUids;
    .end local v21    # "oldAdj":I
    .end local v22    # "wasCached":Z
    .end local v23    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v5    # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v7    # "oldAdj":I
    .restart local v8    # "wasCached":Z
    .restart local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_4
    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    .end local v5    # "uids":Lcom/android/server/am/ActiveUids;
    .end local v7    # "oldAdj":I
    .end local v8    # "wasCached":Z
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v20    # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v21    # "oldAdj":I
    .restart local v22    # "wasCached":Z
    .restart local v23    # "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_5

    .line 672
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-direct {v10, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 674
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 674
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    .line 677
    :cond_5
    :goto_2
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 678
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 679
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 680
    return v16

    .line 625
    .end local v1    # "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v18    # "containsCycle":Z
    .end local v19    # "size":I
    .end local v20    # "uids":Lcom/android/server/am/ActiveUids;
    .end local v21    # "oldAdj":I
    .end local v22    # "wasCached":Z
    .end local v23    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v7    # "oldAdj":I
    .restart local v8    # "wasCached":Z
    .restart local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_6
    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    .line 630
    .end local v7    # "oldAdj":I
    .end local v8    # "wasCached":Z
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v21    # "oldAdj":I
    .restart local v22    # "wasCached":Z
    .restart local v23    # "state":Lcom/android/server/am/ProcessStateRecord;
    :goto_3
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 635
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 636
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 637
    return v0
.end method

.method private performUpdateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    .locals 13
    .param p1, "oomAdjReason"    # Ljava/lang/String;

    .line 829
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 831
    .local v0, "topApp":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v8, 0x40

    invoke-static {v8, v9, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 832
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 834
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 835
    .local v10, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v11, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 836
    .local v11, "uids":Lcom/android/server/am/ActiveUids;
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-direct {p0, v1, v10, v11}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 837
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 838
    iget-object v12, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 839
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 840
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 841
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 843
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 844
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 845
    return-void

    .line 840
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method private reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 2562
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v1, :cond_0

    .line 2565
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2566
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2568
    :cond_0
    monitor-exit v0

    .line 2569
    return-void

    .line 2568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"    # Lcom/android/server/am/ProcessStateRecord;
    .param p3, "procState"    # I
    .param p4, "adj"    # I
    .param p5, "cycleReEval"    # Z

    .line 2533
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2537
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 2538
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2541
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v0

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v0, v2, :cond_1

    .line 2542
    if-eqz p5, :cond_0

    .line 2545
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v0

    if-lt v0, p3, :cond_1

    .line 2546
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    if-lt v0, p4, :cond_1

    .line 2547
    return v1

    .line 2552
    :cond_0
    return v1

    .line 2556
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;)Z
    .locals 23
    .param p1, "now"    # J
    .param p3, "nowElapsed"    # J
    .param p5, "oldTime"    # J
    .param p7, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 1144
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v8

    .line 1145
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1147
    .local v9, "numLru":I
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v10, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1148
    .local v10, "emptyProcessLimit":I
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v11, v0, v10

    .line 1150
    .local v11, "cachedProcessLimit":I
    const/4 v0, 0x0

    .line 1151
    .local v0, "lastCachedGroup":I
    const/4 v1, 0x0

    .line 1152
    .local v1, "lastCachedGroupUid":I
    const/4 v2, 0x0

    .line 1153
    .local v2, "numCached":I
    const/4 v3, 0x0

    .line 1154
    .local v3, "numCachedExtraGroup":I
    const/4 v4, 0x0

    .line 1155
    .local v4, "numEmpty":I
    const/4 v5, 0x0

    .line 1157
    .local v5, "numTrimming":I
    add-int/lit8 v6, v9, -0x1

    move v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    move v3, v6

    move v6, v5

    move v5, v4

    .end local v0    # "lastCachedGroup":I
    .end local v1    # "lastCachedGroupUid":I
    .end local v2    # "numCached":I
    .end local v4    # "numEmpty":I
    .local v3, "i":I
    .local v5, "numEmpty":I
    .local v6, "numTrimming":I
    .local v12, "lastCachedGroup":I
    .local v13, "lastCachedGroupUid":I
    .local v14, "numCached":I
    .local v15, "numCachedExtraGroup":I
    :goto_0
    if-ltz v3, :cond_9

    .line 1158
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1159
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1160
    .local v2, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1162
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v0

    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v0, v1, :cond_0

    .line 1163
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v17, v2

    .end local v2    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v17, "state":Lcom/android/server/am/ProcessStateRecord;
    move/from16 v2, v16

    move/from16 v16, v3

    move-object/from16 v18, v4

    .end local v3    # "i":I
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .local v16, "i":I
    .local v18, "app":Lcom/android/server/am/ProcessRecord;
    move-wide/from16 v3, p1

    move-object/from16 v19, v8

    move/from16 v20, v9

    move v8, v5

    move v9, v6

    .end local v5    # "numEmpty":I
    .end local v6    # "numTrimming":I
    .local v8, "numEmpty":I
    .local v9, "numTrimming":I
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v20, "numLru":I
    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    goto :goto_1

    .line 1162
    .end local v16    # "i":I
    .end local v17    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v18    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v19    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v20    # "numLru":I
    .restart local v2    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v3    # "i":I
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "numEmpty":I
    .restart local v6    # "numTrimming":I
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v9, "numLru":I
    :cond_0
    move-object/from16 v17, v2

    move/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    move/from16 v20, v9

    move v8, v5

    move v9, v6

    .line 1166
    .end local v2    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v3    # "i":I
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "numEmpty":I
    .end local v6    # "numTrimming":I
    .local v8, "numEmpty":I
    .local v9, "numTrimming":I
    .restart local v16    # "i":I
    .restart local v17    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v18    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v20    # "numLru":I
    :goto_1
    move-object/from16 v0, v18

    .end local v18    # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1168
    .local v1, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0xd

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 1214
    :pswitch_0
    iget v2, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v2, v4

    iput v2, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto/16 :goto_3

    .line 1196
    :pswitch_1
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v8, v2, :cond_1

    .line 1197
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v5

    cmp-long v2, v5, p5

    if-gez v2, :cond_1

    .line 1198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "empty for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v5, 0x1b7740

    add-long v5, p5, v5

    .line 1199
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v21

    sub-long v5, v5, v21

    const-wide/16 v21, 0x3e8

    div-long v5, v5, v21

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    .line 1198
    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_3

    .line 1204
    :cond_1
    add-int/lit8 v5, v8, 0x1

    .line 1205
    .end local v8    # "numEmpty":I
    .restart local v5    # "numEmpty":I
    if-le v5, v10, :cond_5

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-virtual {v0, v2, v3, v6, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_4

    .line 1171
    .end local v5    # "numEmpty":I
    .restart local v8    # "numEmpty":I
    :pswitch_2
    iget v2, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v2, v4

    iput v2, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 1172
    add-int/lit8 v14, v14, 0x1

    .line 1173
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v2

    .line 1174
    .local v2, "connectionGroup":I
    if-eqz v2, :cond_3

    .line 1175
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v13, v5, :cond_2

    if-ne v12, v2, :cond_2

    .line 1180
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1182
    :cond_2
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1183
    move v12, v2

    goto :goto_2

    .line 1186
    :cond_3
    const/4 v5, 0x0

    move v12, v5

    move v13, v5

    .line 1188
    :goto_2
    sub-int v5, v14, v15

    if-le v5, v11, :cond_4

    .line 1189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cached #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v3, v6, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1218
    .end local v2    # "connectionGroup":I
    :cond_4
    :goto_3
    move v5, v8

    .end local v8    # "numEmpty":I
    .restart local v5    # "numEmpty":I
    :cond_5
    :goto_4
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v2

    if-gtz v2, :cond_6

    .line 1219
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1227
    const/16 v2, 0x11

    const-string/jumbo v6, "isolated not needed"

    invoke-virtual {v0, v6, v3, v2, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_5

    .line 1231
    :cond_6
    invoke-direct {v7, v0}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1234
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_7

    .line 1235
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1236
    add-int/lit8 v6, v9, 0x1

    .end local v9    # "numTrimming":I
    .restart local v6    # "numTrimming":I
    goto :goto_6

    .line 1157
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v6    # "numTrimming":I
    .end local v17    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v9    # "numTrimming":I
    :cond_7
    move v6, v9

    goto :goto_6

    .line 1160
    .end local v16    # "i":I
    .end local v19    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v20    # "numLru":I
    .local v2, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v3    # "i":I
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "numTrimming":I
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v9, "numLru":I
    :cond_8
    move-object/from16 v17, v2

    move/from16 v16, v3

    move-object v0, v4

    move-object/from16 v19, v8

    move/from16 v20, v9

    move v8, v5

    move v9, v6

    .line 1157
    .end local v2    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v3    # "i":I
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "numEmpty":I
    .end local v6    # "numTrimming":I
    .local v8, "numEmpty":I
    .local v9, "numTrimming":I
    .restart local v16    # "i":I
    .restart local v19    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v20    # "numLru":I
    move v5, v8

    move v6, v9

    .end local v8    # "numEmpty":I
    .end local v9    # "numTrimming":I
    .restart local v5    # "numEmpty":I
    .restart local v6    # "numTrimming":I
    :goto_6
    add-int/lit8 v3, v16, -0x1

    move-object/from16 v8, v19

    move/from16 v9, v20

    .end local v16    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .end local v19    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v20    # "numLru":I
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v9, "numLru":I
    :cond_9
    move-object/from16 v19, v8

    move/from16 v20, v9

    move v8, v5

    move v9, v6

    .line 1241
    .end local v3    # "i":I
    .end local v5    # "numEmpty":I
    .end local v6    # "numTrimming":I
    .local v8, "numEmpty":I
    .local v9, "numTrimming":I
    .restart local v19    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v20    # "numLru":I
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    .line 1243
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v14, v8, v9}, Lcom/android/server/am/AppProfiler;->updateLowMemStateLSP(III)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3062
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3063
    return-void

    .line 3066
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3067
    return-void

    .line 3070
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3072
    .local v0, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3073
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 3074
    return-void

    .line 3077
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3079
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    const/16 v3, 0x384

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3080
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3081
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 3082
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v2

    if-ge v2, v3, :cond_4

    .line 3083
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 3085
    :cond_4
    :goto_0
    return-void
.end method

.method private updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1248
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1249
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1250
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1254
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1257
    :cond_1
    :goto_0
    return-void
.end method

.method private updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1261
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 1262
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v0, :cond_2

    .line 1263
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1264
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setEphemeral(Z)V

    .line 1265
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 1266
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 1268
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1269
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setForegroundServices(Z)V

    .line 1271
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    .line 1273
    .end local v1    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_2
    return-void
.end method

.method private updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 456
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 457
    .local v0, "warmServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .line 458
    .local v1, "includeWarmPkg":Z
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    .line 459
    .local v2, "pkgList":Lcom/android/server/am/PackageList;
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_0
    if-ltz v3, :cond_1

    .line 460
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    const/4 v1, 0x1

    .line 462
    goto :goto_1

    .line 459
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 465
    .end local v3    # "j":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 466
    return-void

    .line 468
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 469
    .local v3, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_2
    if-ltz v4, :cond_3

    .line 470
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    .line 469
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 472
    .end local v4    # "j":I
    :cond_3
    return-void
.end method

.method private updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 28
    .param p1, "oomAdjReason"    # Ljava/lang/String;
    .param p2, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uids"    # Lcom/android/server/am/ActiveUids;
    .param p5, "potentialCycles"    # Z
    .param p6, "startProfiling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            "ZZ)V"
        }
    .end annotation

    .line 856
    .local p3, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v10, p0

    const-wide/16 v11, 0x40

    if-eqz p6, :cond_0

    .line 857
    move-object/from16 v13, p1

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 858
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    goto :goto_0

    .line 856
    :cond_0
    move-object/from16 v13, p1

    .line 860
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 861
    .local v14, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 862
    .local v8, "nowElapsed":J
    const-wide/32 v0, 0x1b7740

    sub-long v16, v14, v0

    .line 863
    .local v16, "oldTime":J
    const/4 v0, 0x1

    const/4 v6, 0x0

    if-nez p3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    move/from16 v18, v1

    .line 864
    .local v18, "fullUpdate":Z
    move-object/from16 v1, p4

    .line 865
    .local v1, "activeUids":Lcom/android/server/am/ActiveUids;
    if-eqz v18, :cond_2

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_2

    .line 866
    :cond_2
    move-object/from16 v2, p3

    :goto_2
    move-object v7, v2

    .line 867
    .local v7, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 869
    .local v5, "numProc":I
    if-nez v1, :cond_4

    .line 870
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v2

    .line 871
    .local v2, "numUids":I
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 872
    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 873
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_3

    .line 874
    iget-object v4, v10, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    .line 875
    .local v4, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-virtual {v1, v11, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 873
    .end local v4    # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v11, 0x40

    goto :goto_3

    :cond_3
    move-object v11, v1

    goto :goto_4

    .line 869
    .end local v2    # "numUids":I
    .end local v3    # "i":I
    :cond_4
    move-object v11, v1

    .line 880
    .end local v1    # "activeUids":Lcom/android/server/am/ActiveUids;
    .local v11, "activeUids":Lcom/android/server/am/ActiveUids;
    :goto_4
    invoke-virtual {v11}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_5
    if-ltz v1, :cond_5

    .line 881
    invoke-virtual {v11, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 885
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->reset()V

    .line 880
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 888
    .end local v1    # "i":I
    :cond_5
    iget v1, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v1, v0

    iput v1, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 889
    if-eqz v18, :cond_6

    .line 890
    iput v6, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 891
    iput v6, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 894
    :cond_6
    const/4 v1, 0x0

    .line 895
    .local v1, "retryCycles":Z
    if-nez v18, :cond_8

    if-eqz p5, :cond_7

    goto :goto_6

    :cond_7
    move v0, v6

    :cond_8
    :goto_6
    move v12, v0

    .line 898
    .local v12, "computeClients":Z
    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_a

    .line 899
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 900
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 901
    .local v3, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 903
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v4

    iget v6, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v4, v6, :cond_9

    .line 904
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 905
    const/16 v6, 0x13

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 906
    const/16 v6, 0x3e9

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 907
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    .line 908
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 898
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_9
    add-int/lit8 v0, v0, -0x1

    const/4 v6, 0x0

    goto :goto_7

    .line 911
    .end local v0    # "i":I
    :cond_a
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 912
    add-int/lit8 v0, v5, -0x1

    move/from16 v20, v1

    .end local v1    # "retryCycles":Z
    .restart local v0    # "i":I
    .local v20, "retryCycles":Z
    :goto_8
    if-ltz v0, :cond_c

    .line 913
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 914
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 915
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 916
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 917
    const/16 v19, 0x3e9

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v22, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    .end local v4    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v19, "state":Lcom/android/server/am/ProcessStateRecord;
    move-object/from16 v4, p2

    move/from16 v23, v5

    .end local v5    # "numProc":I
    .local v23, "numProc":I
    move/from16 v5, v18

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v22, "app":Lcom/android/server/am/ProcessRecord;
    .local v24, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-wide v6, v14

    move-wide/from16 v25, v8

    .end local v8    # "nowElapsed":J
    .local v25, "nowElapsed":J
    move/from16 v8, v21

    move v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 920
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    or-int v1, v20, v1

    .line 922
    .end local v20    # "retryCycles":Z
    .restart local v1    # "retryCycles":Z
    iget v2, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v3, v19

    .end local v19    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v3    # "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    move/from16 v20, v1

    goto :goto_9

    .line 915
    .end local v1    # "retryCycles":Z
    .end local v3    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v22    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "numProc":I
    .end local v24    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v25    # "nowElapsed":J
    .restart local v4    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v5    # "numProc":I
    .restart local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8    # "nowElapsed":J
    .restart local v20    # "retryCycles":Z
    :cond_b
    move-object v3, v4

    move/from16 v23, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-wide/from16 v25, v8

    .line 912
    .end local v4    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v5    # "numProc":I
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8    # "nowElapsed":J
    .restart local v23    # "numProc":I
    .restart local v24    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v25    # "nowElapsed":J
    :goto_9
    add-int/lit8 v0, v0, -0x1

    move/from16 v5, v23

    move-object/from16 v7, v24

    move-wide/from16 v8, v25

    goto :goto_8

    .end local v23    # "numProc":I
    .end local v24    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v25    # "nowElapsed":J
    .restart local v5    # "numProc":I
    .restart local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8    # "nowElapsed":J
    :cond_c
    move/from16 v23, v5

    move-object/from16 v24, v7

    move-wide/from16 v25, v8

    .line 926
    .end local v0    # "i":I
    .end local v5    # "numProc":I
    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8    # "nowElapsed":J
    .restart local v23    # "numProc":I
    .restart local v24    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v25    # "nowElapsed":J
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v0}, Lcom/android/server/am/CacheOomRanker;->useOomReranking()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 927
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLSP()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 928
    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessServiceStartLOSP()I

    move-result v2

    .line 927
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/CacheOomRanker;->reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V

    .line 930
    :cond_d
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 932
    if-eqz v12, :cond_14

    .line 937
    const/4 v0, 0x0

    .line 938
    .local v0, "cycleCount":I
    :goto_a
    if-eqz v20, :cond_13

    const/16 v1, 0xa

    if-ge v0, v1, :cond_13

    .line 939
    add-int/lit8 v0, v0, 0x1

    .line 940
    const/4 v1, 0x0

    .line 942
    .end local v20    # "retryCycles":Z
    .restart local v1    # "retryCycles":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    move/from16 v9, v23

    .end local v23    # "numProc":I
    .local v9, "numProc":I
    if-ge v2, v9, :cond_f

    .line 943
    move-object/from16 v8, v24

    .end local v24    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v8, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 944
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 945
    .restart local v4    # "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 946
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->decAdjSeq()V

    .line 947
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->decCompletedAdjSeq()V

    .line 942
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v24, v8

    move/from16 v23, v9

    goto :goto_b

    .end local v8    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v24    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_f
    move-object/from16 v8, v24

    .line 951
    .end local v2    # "i":I
    .end local v24    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v2, 0x0

    move/from16 v20, v1

    move v6, v2

    .end local v1    # "retryCycles":Z
    .local v6, "i":I
    .restart local v20    # "retryCycles":Z
    :goto_c
    if-ge v6, v9, :cond_12

    .line 952
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 953
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 954
    .local v5, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 955
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const/16 v19, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v4, p2

    move-object/from16 v23, v5

    .end local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v23, "state":Lcom/android/server/am/ProcessStateRecord;
    move/from16 v5, v19

    move/from16 v19, v6

    move-object/from16 v24, v7

    .end local v6    # "i":I
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .local v19, "i":I
    .local v24, "app":Lcom/android/server/am/ProcessRecord;
    move-wide v6, v14

    move-object/from16 v27, v8

    .end local v8    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v27, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9    # "numProc":I
    .local v21, "numProc":I
    move/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 957
    const/16 v20, 0x1

    goto :goto_d

    .line 954
    .end local v19    # "i":I
    .end local v21    # "numProc":I
    .end local v23    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v24    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v27    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v6    # "i":I
    .restart local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9    # "numProc":I
    :cond_10
    move-object/from16 v23, v5

    move/from16 v19, v6

    move-object/from16 v24, v7

    move-object/from16 v27, v8

    move/from16 v21, v9

    .line 951
    .end local v5    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v6    # "i":I
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v9    # "numProc":I
    .restart local v19    # "i":I
    .restart local v21    # "numProc":I
    .restart local v27    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_11
    :goto_d
    add-int/lit8 v6, v19, 0x1

    move/from16 v9, v21

    move-object/from16 v8, v27

    .end local v19    # "i":I
    .restart local v6    # "i":I
    goto :goto_c

    .end local v21    # "numProc":I
    .end local v27    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9    # "numProc":I
    :cond_12
    move/from16 v19, v6

    move-object/from16 v27, v8

    move/from16 v21, v9

    .end local v6    # "i":I
    .end local v8    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v9    # "numProc":I
    .restart local v19    # "i":I
    .restart local v21    # "numProc":I
    .restart local v27    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v23, v21

    move-object/from16 v24, v27

    .end local v19    # "i":I
    goto/16 :goto_a

    .line 938
    .end local v21    # "numProc":I
    .end local v27    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v23, "numProc":I
    .local v24, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_13
    move/from16 v21, v23

    move-object/from16 v27, v24

    .end local v23    # "numProc":I
    .end local v24    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v21    # "numProc":I
    .restart local v27    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    goto :goto_e

    .line 932
    .end local v0    # "cycleCount":I
    .end local v21    # "numProc":I
    .end local v27    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v23    # "numProc":I
    .restart local v24    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_14
    move/from16 v21, v23

    move-object/from16 v27, v24

    .line 963
    .end local v23    # "numProc":I
    .end local v24    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v21    # "numProc":I
    .restart local v27    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_e
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 965
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 966
    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 968
    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide/from16 v4, v25

    move-wide/from16 v6, v16

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;)Z

    move-result v1

    .line 969
    .local v1, "allChanged":Z
    iget v2, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v2, v10, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 971
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v2, :cond_15

    .line 974
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v3, "always-finish"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 977
    :cond_15
    if-eqz v1, :cond_16

    .line 978
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 979
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v3

    .line 978
    invoke-virtual {v2, v14, v15, v0, v3}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    .line 982
    :cond_16
    move-wide/from16 v2, v25

    .end local v25    # "nowElapsed":J
    .local v2, "nowElapsed":J
    invoke-direct {v10, v11, v2, v3}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 984
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 985
    :try_start_0
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 986
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 991
    :cond_17
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v5, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v5, v14, v15}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 992
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    if-eqz p6, :cond_18

    .line 1004
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 1005
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1007
    :cond_18
    return-void

    .line 992
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateOomAdjLSP(Ljava/lang/String;)V
    .locals 2
    .param p1, "oomAdjReason"    # Ljava/lang/String;

    .line 539
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    return-void

    .line 544
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 545
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 549
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 550
    nop

    .line 551
    return-void

    .line 548
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 549
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 550
    throw v0
.end method

.method private updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # Ljava/lang/String;

    .line 579
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    return v0

    .line 590
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 591
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 595
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 591
    return v0

    .line 594
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 595
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 596
    throw v0

    .line 580
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    .line 581
    return v0
.end method

.method private updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .locals 11
    .param p1, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p2, "nowElapsed"    # J

    .line 1277
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 1278
    .local v0, "becameIdle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UidRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1281
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_0

    .line 1282
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 1284
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_e

    .line 1285
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 1286
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    const/4 v4, 0x0

    .line 1287
    .local v4, "uidChange":I
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    const/16 v6, 0x14

    if-eq v5, v6, :cond_d

    .line 1288
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    if-ne v5, v7, :cond_1

    .line 1289
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v7

    if-ne v5, v7, :cond_1

    .line 1290
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v7

    if-eq v5, v7, :cond_d

    .line 1297
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    .line 1298
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1301
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1302
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1303
    :cond_2
    invoke-virtual {v3, p2, p3}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1304
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1309
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1313
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetIdle()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1314
    const/4 v4, 0x2

    .line 1315
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1318
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1319
    const/4 v4, 0x4

    .line 1320
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 1321
    invoke-virtual {v3, v7}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 1323
    :cond_5
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1325
    :cond_6
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    const/16 v8, 0xb

    if-le v5, v8, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v7

    .line 1327
    .local v5, "wasCached":Z
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v8, :cond_8

    move v7, v2

    .line 1329
    .local v7, "isCached":Z
    :cond_8
    if-ne v5, v7, :cond_9

    .line 1330
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v8

    if-ne v8, v6, :cond_b

    .line 1331
    :cond_9
    if-eqz v7, :cond_a

    const/16 v6, 0x8

    goto :goto_3

    :cond_a
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v4, v6

    .line 1333
    :cond_b
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v8

    if-eq v6, v8, :cond_c

    .line 1334
    or-int/lit8 v4, v4, 0x20

    .line 1336
    :cond_c
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 1337
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 1338
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 1339
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 1340
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1341
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v9

    .line 1340
    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    .line 1342
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    invoke-virtual {v6, v3, v8, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 1343
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    .line 1344
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v10

    .line 1343
    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 1345
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->hasForegroundServices()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1346
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    .line 1349
    .end local v5    # "wasCached":Z
    .end local v7    # "isCached":Z
    :cond_d
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(I)V

    .line 1284
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v4    # "uidChange":I
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 1351
    .end local v1    # "i":I
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_f

    .line 1352
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 1355
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1356
    .local v1, "size":I
    if-lez v1, :cond_10

    .line 1359
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_4
    if-ltz v2, :cond_10

    .line 1360
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidRecord;

    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    .line 1359
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1363
    .end local v2    # "i":I
    :cond_10
    return-void
.end method


# virtual methods
.method dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3057
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CacheOomRanker;->dump(Ljava/io/PrintWriter;)V

    .line 3058
    return-void
.end method

.method dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3052
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    .line 3053
    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 3044
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3043
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 3026
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3027
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v0

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3028
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3030
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3031
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v1, 0x10500000036L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3034
    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    return-void
.end method

.method enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 760
    if-eqz p1, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_0
    return-void
.end method

.method protected getPlatformCompatCache()Lcom/android/server/am/OomAdjuster$PlatformCompatCache;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPlatformCompatCache:Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    return-object v0
.end method

.method handleUserSwitchedLocked()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 452
    return-void
.end method

.method idleUidsLocked()V
    .locals 14

    .line 2961
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 2962
    .local v0, "N":I
    if-gtz v0, :cond_0

    .line 2963
    return-void

    .line 2965
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2966
    .local v1, "nowElapsed":J
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v3, v1, v3

    .line 2967
    .local v3, "maxBgTime":J
    const-wide/16 v5, 0x0

    .line 2968
    .local v5, "nextTime":J
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_1

    .line 2969
    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 2971
    :cond_1
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_5

    .line 2972
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    .line 2973
    .local v10, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v11

    .line 2974
    .local v11, "bgTime":J
    cmp-long v13, v11, v8

    if-lez v13, :cond_4

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v13

    if-nez v13, :cond_4

    .line 2975
    cmp-long v13, v11, v3

    if-gtz v13, :cond_2

    .line 2976
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 2977
    iget-object v13, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2978
    const/4 v8, 0x1

    invoke-virtual {v10, v8}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 2979
    invoke-virtual {v10, v8}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 2980
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2981
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    .line 2980
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v8

    .line 2983
    :cond_2
    cmp-long v8, v5, v8

    if-eqz v8, :cond_3

    cmp-long v8, v5, v11

    if-lez v8, :cond_4

    .line 2984
    :cond_3
    move-wide v5, v11

    .line 2971
    .end local v10    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v11    # "bgTime":J
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2989
    .end local v7    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_6

    .line 2990
    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 2992
    :cond_6
    cmp-long v7, v5, v8

    if-lez v7, :cond_7

    .line 2993
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2994
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v1

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2997
    :cond_7
    return-void
.end method

.method initSettings()V
    .locals 5

    .line 429
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    .line 430
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/CacheOomRanker;->init(Ljava/util/concurrent/Executor;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 432
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OomAdjuster$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 442
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J

    .line 2884
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2885
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2886
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 2887
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2888
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2889
    return-void

    .line 2887
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/OomAdjuster;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "nowElapsed":J
    throw v2

    .line 2888
    .restart local p0    # "this":Lcom/android/server/am/OomAdjuster;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "nowElapsed":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "procDied"    # Z

    .line 767
    if-eqz p1, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 769
    if-eqz p2, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->getPlatformCompatCache()Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    .line 773
    :cond_0
    return-void
.end method

.method setAppIdTempAllowlistStateLSP(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "onAllowlist"    # Z

    .line 3001
    const/4 v0, 0x0

    .line 3002
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3003
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 3004
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v3

    if-eq v3, p2, :cond_0

    .line 3005
    invoke-virtual {v2, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 3006
    const/4 v0, 0x1

    .line 3002
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3009
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 3010
    const-string/jumbo v1, "updateOomAdj_allowlistChange"

    invoke-direct {p0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    .line 3012
    :cond_2
    return-void
.end method

.method setAttachingSchedGroupLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2849
    const/4 v0, 0x2

    .line 2850
    .local v0, "initialSchedGroup":I
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2853
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2854
    const/4 v2, 0x0

    .line 2859
    .local v2, "fallbackReason":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 2860
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2861
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const/16 v4, -0xa

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    goto :goto_0

    .line 2863
    :cond_0
    const-string/jumbo v3, "not expected top priority"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 2867
    :goto_0
    goto :goto_1

    .line 2865
    :catch_0
    move-exception v3

    .line 2866
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2868
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    if-nez v2, :cond_1

    .line 2869
    const/4 v0, 0x3

    goto :goto_2

    .line 2873
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fallback pre-set sched group to default: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OomAdjuster"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    .end local v2    # "fallbackReason":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 2878
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2879
    return-void
.end method

.method setUidTempAllowlistStateLSP(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "onAllowlist"    # Z

    .line 3016
    const/4 v0, 0x0

    .line 3017
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 3018
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 3019
    invoke-virtual {v1, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 3020
    const-string/jumbo v2, "updateOomAdj_allowlistChange"

    invoke-direct {p0, v2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    .line 3022
    :cond_0
    return-void
.end method

.method updateOomAdjLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "oomAdjReason"    # Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 533
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    .line 534
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 573
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v1

    .line 574
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "oomAdjReason"    # Ljava/lang/String;

    .line 802
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 803
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 804
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 806
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    return-void

    .line 812
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-eqz v0, :cond_2

    .line 815
    return-void

    .line 818
    :cond_2
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 819
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 823
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 824
    nop

    .line 825
    return-void

    .line 822
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 823
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 824
    throw v0
.end method
