.class Lcom/android/server/am/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryExternalStatsWorker$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"


# instance fields
.field private mBatteryLevelSync:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentReason:Ljava/lang/String;

.field private mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field final mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

.field private mLastCollectionTimeStamp:J

.field private mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field private mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

.field private mOnBattery:Z

.field private mOnBatteryScreenOff:Z

.field private mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field private mScreenState:I

.field private final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mSyncTask:Ljava/lang/Runnable;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mUidsToRemove:Landroid/util/IntArray;

.field private mUpdateFlags:I

.field private mUseLatestStates:Z

.field private mWakelockChangesUpdate:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkerLock:Ljava/lang/Object;

.field private final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 184
    new-instance v0, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker$Injector;Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 185
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker$Injector;Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 15
    .param p1, "injector"    # Lcom/android/server/am/BatteryExternalStatsWorker$Injector;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 188
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;

    .line 83
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 98
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 101
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 104
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 116
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 119
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    .line 129
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 131
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 134
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 137
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 142
    new-instance v2, Landroid/os/connectivity/WifiActivityEnergyInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 150
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 154
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    .line 425
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 498
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    .line 189
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    .line 190
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 70
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # I

    .line 70
    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 70
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .line 70
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZIZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 70
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/am/BatteryExternalStatsWorker;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # J

    .line 70
    iput-wide p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 70
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 70
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mScreenState:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .line 70
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 70
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 70
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V
    .locals 1
    .param p1, "energyConsumerIds"    # Landroid/util/IntArray;
    .param p2, "type"    # I

    .line 923
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 924
    .local v0, "consumerIds":[I
    if-nez v0, :cond_0

    return-void

    .line 925
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->addAll([I)V

    .line 926
    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 4
    .param p0, "receiver"    # Landroid/os/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 731
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 732
    return-object v0

    .line 736
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 737
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 738
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 740
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 742
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .local v2, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1

    .line 745
    return-object v2

    .line 750
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    .end local v2    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1
    goto :goto_0

    .line 748
    :catch_0
    move-exception v1

    .line 749
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryExternalStatsWorker"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    return-object v0
.end method

.method private cancelSyncDueToBatteryLevelChangeLocked()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 344
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 347
    :cond_0
    return-void
.end method

.method private extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .locals 54
    .param p1, "latest"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 756
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 757
    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 758
    .local v1, "timePeriodMs":J
    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v3

    .line 759
    .local v3, "lastScanMs":J
    iget-object v5, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v5

    .line 760
    .local v5, "lastIdleMs":J
    iget-object v7, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v7}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v7

    .line 761
    .local v7, "lastTxMs":J
    iget-object v9, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v9}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v9

    .line 762
    .local v9, "lastRxMs":J
    iget-object v11, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v11}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v11

    .line 764
    .local v11, "lastEnergy":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v27

    .line 765
    .local v27, "deltaTimeSinceBootMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v29

    .line 772
    .local v29, "deltaStackState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v13

    sub-long v30, v13, v7

    .line 773
    .local v30, "txTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v13

    sub-long v32, v13, v9

    .line 774
    .local v32, "rxTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v13

    sub-long v34, v13, v5

    .line 775
    .local v34, "idleTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v13

    sub-long v36, v13, v3

    .line 778
    .local v36, "scanTimeMs":J
    const-wide/16 v13, 0x0

    cmp-long v15, v30, v13

    if-ltz v15, :cond_1

    cmp-long v15, v32, v13

    if-ltz v15, :cond_1

    cmp-long v15, v36, v13

    if-ltz v15, :cond_1

    cmp-long v15, v34, v13

    if-gez v15, :cond_0

    move-wide/from16 v38, v3

    goto :goto_0

    .line 801
    :cond_0
    move-wide/from16 v15, v30

    .line 802
    .local v15, "deltaControllerTxDurationMillis":J
    move-wide/from16 v17, v32

    .line 803
    .local v17, "deltaControllerRxDurationMillis":J
    move-wide/from16 v19, v36

    .line 804
    .local v19, "deltaControllerScanDurationMillis":J
    move-wide/from16 v21, v34

    .line 805
    .local v21, "deltaControllerIdleDurationMillis":J
    nop

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v23

    move-wide/from16 v38, v3

    .end local v3    # "lastScanMs":J
    .local v38, "lastScanMs":J
    sub-long v3, v23, v11

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 807
    .local v3, "deltaControllerEnergyUsedMicroJoules":J
    const/4 v13, 0x0

    move/from16 v40, v13

    move-wide/from16 v41, v15

    move-wide/from16 v43, v17

    move-wide/from16 v45, v19

    move-wide/from16 v47, v21

    .local v13, "wasReset":Z
    goto :goto_2

    .line 778
    .end local v13    # "wasReset":Z
    .end local v15    # "deltaControllerTxDurationMillis":J
    .end local v17    # "deltaControllerRxDurationMillis":J
    .end local v19    # "deltaControllerScanDurationMillis":J
    .end local v21    # "deltaControllerIdleDurationMillis":J
    .end local v38    # "lastScanMs":J
    .local v3, "lastScanMs":J
    :cond_1
    move-wide/from16 v38, v3

    .line 782
    .end local v3    # "lastScanMs":J
    .restart local v38    # "lastScanMs":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v3

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v13

    add-long/2addr v3, v13

    .line 784
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v13

    add-long/2addr v3, v13

    .line 785
    .local v3, "totalOnTimeMs":J
    const-wide/16 v13, 0x2ee

    add-long/2addr v13, v1

    cmp-long v13, v3, v13

    if-gtz v13, :cond_2

    .line 786
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v13

    .line 787
    .local v13, "deltaControllerEnergyUsedMicroJoules":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v15

    .line 788
    .local v15, "deltaControllerRxDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v17

    .line 789
    .local v17, "deltaControllerTxDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v19

    .line 790
    .local v19, "deltaControllerIdleDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v21

    move-wide/from16 v50, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v50

    move-wide/from16 v52, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v52

    .local v21, "deltaControllerScanDurationMillis":J
    goto :goto_1

    .line 792
    .end local v13    # "deltaControllerEnergyUsedMicroJoules":J
    .end local v15    # "deltaControllerRxDurationMillis":J
    .end local v17    # "deltaControllerTxDurationMillis":J
    .end local v19    # "deltaControllerIdleDurationMillis":J
    .end local v21    # "deltaControllerScanDurationMillis":J
    :cond_2
    const-wide/16 v13, 0x0

    .line 793
    .restart local v13    # "deltaControllerEnergyUsedMicroJoules":J
    const-wide/16 v15, 0x0

    .line 794
    .restart local v15    # "deltaControllerRxDurationMillis":J
    const-wide/16 v17, 0x0

    .line 795
    .restart local v17    # "deltaControllerTxDurationMillis":J
    const-wide/16 v19, 0x0

    .line 796
    .restart local v19    # "deltaControllerIdleDurationMillis":J
    const-wide/16 v21, 0x0

    move-wide/from16 v50, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v50

    move-wide/from16 v52, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v52

    .line 798
    .local v15, "deltaControllerTxDurationMillis":J
    .local v17, "deltaControllerRxDurationMillis":J
    .local v19, "deltaControllerScanDurationMillis":J
    .local v21, "deltaControllerIdleDurationMillis":J
    :goto_1
    const/4 v3, 0x1

    .line 799
    .local v3, "wasReset":Z
    move/from16 v40, v3

    move-wide v3, v13

    move-wide/from16 v41, v15

    move-wide/from16 v43, v17

    move-wide/from16 v45, v19

    move-wide/from16 v47, v21

    .line 810
    .end local v13    # "deltaControllerEnergyUsedMicroJoules":J
    .end local v15    # "deltaControllerTxDurationMillis":J
    .end local v17    # "deltaControllerRxDurationMillis":J
    .end local v19    # "deltaControllerScanDurationMillis":J
    .end local v21    # "deltaControllerIdleDurationMillis":J
    .local v3, "deltaControllerEnergyUsedMicroJoules":J
    .local v40, "wasReset":Z
    .local v41, "deltaControllerTxDurationMillis":J
    .local v43, "deltaControllerRxDurationMillis":J
    .local v45, "deltaControllerScanDurationMillis":J
    .local v47, "deltaControllerIdleDurationMillis":J
    :goto_2
    move-object/from16 v14, p1

    iput-object v14, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 811
    new-instance v49, Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-object/from16 v13, v49

    move-wide/from16 v14, v27

    move/from16 v16, v29

    move-wide/from16 v17, v41

    move-wide/from16 v19, v43

    move-wide/from16 v21, v45

    move-wide/from16 v23, v47

    move-wide/from16 v25, v3

    invoke-direct/range {v13 .. v26}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    .line 819
    .local v13, "delta":Landroid/os/connectivity/WifiActivityEnergyInfo;
    if-eqz v40, :cond_3

    .line 820
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "BatteryExternalStatsWorker"

    invoke-static {v15, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_3
    return-object v13
.end method

.method private getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 871
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "consumerIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0, p1}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;)[Z"
        }
    .end annotation

    .line 834
    .local p0, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    if-nez p0, :cond_0

    .line 835
    const/4 v0, 0x0

    return-object v0

    .line 837
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Z

    .line 838
    .local v0, "buckets":[Z
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 839
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 840
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/EnergyConsumer;

    .line 841
    .local v3, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget-byte v4, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 860
    :pswitch_0
    const/4 v4, 0x4

    aput-boolean v5, v0, v4

    goto :goto_1

    .line 852
    :pswitch_1
    const/4 v4, 0x7

    aput-boolean v5, v0, v4

    .line 853
    goto :goto_1

    .line 849
    :pswitch_2
    const/4 v4, 0x6

    aput-boolean v5, v0, v4

    .line 850
    goto :goto_1

    .line 855
    :pswitch_3
    const/4 v4, 0x0

    aput-boolean v5, v0, v4

    .line 856
    aput-boolean v5, v0, v5

    .line 857
    const/4 v4, 0x2

    aput-boolean v5, v0, v4

    .line 858
    goto :goto_1

    .line 846
    :pswitch_4
    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 847
    goto :goto_1

    .line 843
    :pswitch_5
    const/4 v4, 0x5

    aput-boolean v5, v0, v4

    .line 844
    nop

    .line 839
    .end local v3    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 864
    .end local v2    # "idx":I
    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 87
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 88
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 89
    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "batterystats-worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 92
    return-object v0
.end method

.method static synthetic lambda$updateExternalStatsLocked$5(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2
    .param p0, "tempWifiReceiver"    # Landroid/os/SynchronousResultReceiver;
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 533
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 534
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 535
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 536
    return-void
.end method

.method private populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;"
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 932
    return-object v1

    .line 934
    :cond_0
    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    .line 935
    .local v0, "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    if-eqz v0, :cond_6

    array-length v2, v0

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 940
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 942
    .local v1, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 945
    .local v2, "tempTypeToId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 947
    .local v5, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v6, :cond_2

    .line 948
    iget-byte v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    packed-switch v6, :pswitch_data_0

    .line 953
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnergyConsumer \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' has unexpected ordinal "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryExternalStatsWorker"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    goto :goto_1

    .line 958
    :cond_2
    :pswitch_1
    iget v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 960
    iget-byte v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/IntArray;

    .line 961
    .local v6, "ids":Landroid/util/IntArray;
    if-nez v6, :cond_3

    .line 962
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    move-object v6, v7

    .line 963
    iget-byte v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 965
    :cond_3
    iget v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->add(I)V

    .line 945
    .end local v5    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    .end local v6    # "ids":Landroid/util/IntArray;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 968
    :cond_4
    new-instance v3, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 970
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 971
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_5

    .line 972
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 973
    .local v5, "consumerType":I
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/IntArray;

    invoke-virtual {v6}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    .line 974
    .local v6, "consumerIds":[I
    iget-object v7, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 971
    .end local v5    # "consumerType":I
    .end local v6    # "consumerIds":[I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 976
    .end local v4    # "i":I
    :cond_5
    return-object v1

    .line 936
    .end local v1    # "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    .end local v2    # "tempTypeToId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    .end local v3    # "size":I
    :cond_6
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 2
    .param p2, "syncRunnable"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 362
    .local p1, "lastScheduledSync":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 366
    :cond_0
    if-eqz p1, :cond_2

    .line 369
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 370
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 372
    :cond_1
    return-object p1

    .line 376
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    .line 411
    iput p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 412
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 415
    :cond_1
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 416
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private updateExternalStatsLocked(Ljava/lang/String;IZZIZ)V
    .locals 38
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I
    .param p3, "onBattery"    # Z
    .param p4, "onBatteryScreenOff"    # Z
    .param p5, "screenState"    # I
    .param p6, "useLatestStates"    # Z

    .line 511
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v0, 0x0

    .line 512
    .local v0, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v3, 0x0

    .line 513
    .local v3, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .line 514
    .local v4, "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    const/4 v5, 0x0

    .line 516
    .local v5, "railUpdated":Z
    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getMeasuredEnergyLocked(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    .line 518
    .local v6, "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_1

    .line 521
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 522
    new-instance v7, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v8, "wifi"

    invoke-direct {v7, v8}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 523
    .local v7, "tempWifiReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v9, Lcom/android/server/am/BatteryExternalStatsWorker$3;

    invoke-direct {v9, v1}, Lcom/android/server/am/BatteryExternalStatsWorker$3;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    new-instance v10, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v10, v7}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 538
    move-object v0, v7

    goto :goto_0

    .line 540
    .end local v7    # "tempWifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_0
    move-object v7, v0

    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .local v7, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_0
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 541
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 542
    monitor-exit v8

    .line 543
    const/4 v5, 0x1

    goto :goto_1

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 518
    .end local v7    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_1
    move-object v7, v0

    .line 546
    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v7    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_1
    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_2

    .line 548
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 549
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 550
    new-instance v8, Landroid/os/SynchronousResultReceiver;

    const-string v9, "bluetooth"

    invoke-direct {v8, v9}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 551
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 555
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_4

    .line 557
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 558
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 559
    .local v0, "temp":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    sget-object v9, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;

    new-instance v10, Lcom/android/server/am/BatteryExternalStatsWorker$4;

    invoke-direct {v10, v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$4;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 573
    move-object v4, v0

    .line 575
    .end local v0    # "temp":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    :cond_3
    if-nez v5, :cond_4

    .line 576
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 577
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 578
    monitor-exit v8

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 582
    :cond_4
    :goto_2
    and-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_5

    .line 584
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->fillLowPowerStats()V

    .line 587
    :cond_5
    invoke-static {v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 588
    .local v8, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    invoke-static {v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 589
    .local v15, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    const/4 v9, 0x0

    .line 591
    .local v9, "modemInfo":Landroid/telephony/ModemActivityInfo;
    const-wide/16 v10, 0x7d0

    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v10, v11, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v0

    .line 597
    move-object/from16 v24, v9

    goto :goto_4

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v12, "BatteryExternalStatsWorker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exception reading modem stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 593
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "BatteryExternalStatsWorker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "timeout or interrupt reading modem stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 600
    :goto_3
    move-object/from16 v24, v9

    .end local v9    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .local v24, "modemInfo":Landroid/telephony/ModemActivityInfo;
    :goto_4
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    if-eqz v0, :cond_7

    if-nez v6, :cond_6

    goto :goto_7

    .line 604
    :cond_6
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v9

    .line 605
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v0

    move v12, v0

    .line 606
    .local v12, "voltageMv":I
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 610
    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v10, v11, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2

    .local v0, "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_5

    .line 615
    .end local v0    # "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :catch_2
    move-exception v0

    .line 616
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception reading getEnergyConsumedAsync: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v9, 0x0

    move-object v0, v9

    .local v9, "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_6

    .line 611
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v9    # "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :catch_3
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeout or interrupt reading getEnergyConsumedAsync: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v0, 0x0

    .line 618
    .local v0, "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :goto_5
    nop

    .line 620
    :goto_6
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-virtual {v9, v0, v12}, Lcom/android/server/am/MeasuredEnergySnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;

    move-result-object v9

    move-object v13, v9

    .local v9, "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    goto :goto_8

    .line 606
    .end local v0    # "ecrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    .end local v9    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v12    # "voltageMv":I
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 601
    :cond_7
    :goto_7
    const/4 v9, 0x0

    move-object v13, v9

    .line 623
    .local v13, "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 624
    .local v9, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    .line 625
    .local v25, "uptime":J
    const-wide/16 v11, 0x3e8

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .end local v3    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v4    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    .local v27, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .local v28, "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    mul-long v3, v9, v11

    .line 626
    .local v3, "elapsedRealtimeUs":J
    mul-long v29, v25, v11

    .line 629
    .local v29, "uptimeUs":J
    iget-object v14, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v14

    .line 630
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v21, 0xe

    const/16 v23, 0x0

    move-object/from16 v16, v0

    move-wide/from16 v17, v9

    move-wide/from16 v19, v25

    move-object/from16 v22, p1

    invoke-virtual/range {v16 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    .line 636
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_a

    .line 637
    if-eqz p6, :cond_8

    .line 638
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move v11, v0

    .line 639
    .end local p3    # "onBattery":Z
    .local v11, "onBattery":Z
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move v12, v0

    .end local p4    # "onBatteryScreenOff":Z
    .local v0, "onBatteryScreenOff":Z
    goto :goto_9

    .line 696
    .end local v0    # "onBatteryScreenOff":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_3
    move-exception v0

    move/from16 v32, p4

    move-wide/from16 v35, v3

    move/from16 v31, v5

    move-object/from16 v37, v6

    move-wide v3, v9

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    goto/16 :goto_14

    .end local v11    # "onBattery":Z
    .restart local p3    # "onBattery":Z
    :catchall_4
    move-exception v0

    move/from16 v11, p3

    move/from16 v32, p4

    move-wide/from16 v35, v3

    move/from16 v31, v5

    move-object/from16 v37, v6

    move-wide v3, v9

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    goto/16 :goto_14

    .line 637
    :cond_8
    move/from16 v11, p3

    move/from16 v12, p4

    .line 643
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v11    # "onBattery":Z
    .local v12, "onBatteryScreenOff":Z
    :goto_9
    if-nez v13, :cond_9

    .line 644
    const/4 v0, 0x0

    .local v0, "cpuClusterChargeUC":[J
    goto :goto_a

    .line 646
    .end local v0    # "cpuClusterChargeUC":[J
    :cond_9
    :try_start_9
    iget-object v0, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 648
    .restart local v0    # "cpuClusterChargeUC":[J
    :goto_a
    move/from16 v31, v5

    .end local v5    # "railUpdated":Z
    .local v31, "railUpdated":Z
    :try_start_a
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5, v11, v12, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(ZZ[J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move v5, v11

    move/from16 v32, v12

    goto :goto_b

    .line 696
    .end local v0    # "cpuClusterChargeUC":[J
    :catchall_5
    move-exception v0

    move-wide/from16 v35, v3

    move-object/from16 v37, v6

    move-wide v3, v9

    move/from16 v32, v12

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    goto/16 :goto_14

    .end local v31    # "railUpdated":Z
    .restart local v5    # "railUpdated":Z
    :catchall_6
    move-exception v0

    move/from16 v31, v5

    move-wide/from16 v35, v3

    move-object/from16 v37, v6

    move-wide v3, v9

    move/from16 v32, v12

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    .end local v5    # "railUpdated":Z
    .restart local v31    # "railUpdated":Z
    goto/16 :goto_14

    .line 636
    .end local v11    # "onBattery":Z
    .end local v12    # "onBatteryScreenOff":Z
    .end local v31    # "railUpdated":Z
    .restart local v5    # "railUpdated":Z
    .restart local p3    # "onBattery":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :cond_a
    move/from16 v31, v5

    .end local v5    # "railUpdated":Z
    .restart local v31    # "railUpdated":Z
    move/from16 v5, p3

    move/from16 v32, p4

    .line 651
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .local v5, "onBattery":Z
    .local v32, "onBatteryScreenOff":Z
    :goto_b
    const/16 v0, 0x3f

    if-ne v2, v0, :cond_b

    .line 652
    :try_start_b
    iget-object v11, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v11, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked(J)V

    .line 653
    iget-object v11, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v11, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked(J)V

    goto :goto_c

    .line 696
    :catchall_7
    move-exception v0

    move-wide/from16 v35, v3

    move v11, v5

    move-object/from16 v37, v6

    move-wide v3, v9

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    goto/16 :goto_14

    .line 656
    :cond_b
    :goto_c
    and-int/lit8 v11, v2, 0x10

    if-eqz v11, :cond_c

    .line 657
    iget-object v11, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v11, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 661
    :cond_c
    const-wide/16 v33, -0x1

    if-eqz v13, :cond_e

    .line 662
    :try_start_c
    iget-wide v11, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->displayChargeUC:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 663
    .local v11, "displayChargeUC":J
    cmp-long v16, v11, v33

    if-eqz v16, :cond_d

    .line 665
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v16, v0

    move-wide/from16 v17, v11

    move/from16 v19, p5

    move-wide/from16 v20, v9

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/os/BatteryStatsImpl;->updateDisplayMeasuredEnergyStatsLocked(JIJ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 669
    :cond_d
    move-wide/from16 v35, v3

    .end local v3    # "elapsedRealtimeUs":J
    .local v35, "elapsedRealtimeUs":J
    :try_start_e
    iget-wide v3, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->gnssChargeUC:J

    .line 670
    .local v3, "gnssChargeUC":J
    cmp-long v0, v3, v33

    if-eqz v0, :cond_f

    .line 671
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->updateGnssMeasuredEnergyStatsLocked(JJ)V

    goto :goto_d

    .line 696
    .end local v11    # "displayChargeUC":J
    .end local v35    # "elapsedRealtimeUs":J
    .local v3, "elapsedRealtimeUs":J
    :catchall_8
    move-exception v0

    move-wide/from16 v35, v3

    move v11, v5

    move-object/from16 v37, v6

    move-wide v3, v9

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    .end local v3    # "elapsedRealtimeUs":J
    .restart local v35    # "elapsedRealtimeUs":J
    goto/16 :goto_14

    .line 661
    .end local v35    # "elapsedRealtimeUs":J
    .restart local v3    # "elapsedRealtimeUs":J
    :cond_e
    move-wide/from16 v35, v3

    .line 675
    .end local v3    # "elapsedRealtimeUs":J
    .restart local v35    # "elapsedRealtimeUs":J
    :cond_f
    :goto_d
    if-eqz v13, :cond_10

    iget-object v0, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    if-eqz v0, :cond_10

    .line 678
    const/4 v0, 0x0

    .local v0, "ord":I
    :goto_e
    iget-object v3, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    array-length v3, v3

    if-ge v0, v3, :cond_10

    .line 679
    iget-object v3, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    aget-wide v3, v3, v0

    .line 680
    .local v3, "totalEnergy":J
    iget-object v11, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aget-object v11, v11, v0

    .line 681
    .local v11, "uidEnergies":Landroid/util/SparseLongArray;
    iget-object v12, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v12, v0, v3, v4, v11}, Lcom/android/internal/os/BatteryStatsImpl;->updateCustomMeasuredEnergyStatsLocked(IJLandroid/util/SparseLongArray;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 678
    .end local v3    # "totalEnergy":J
    .end local v11    # "uidEnergies":Landroid/util/SparseLongArray;
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 696
    .end local v0    # "ord":I
    :catchall_9
    move-exception v0

    move v11, v5

    move-object/from16 v37, v6

    move-wide v3, v9

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    goto/16 :goto_14

    .line 685
    :cond_10
    if-eqz v15, :cond_13

    .line 686
    :try_start_f
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-eqz v0, :cond_12

    .line 687
    if-eqz v13, :cond_11

    .line 688
    :try_start_10
    iget-wide v3, v13, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->bluetoothChargeUC:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-wide v11, v3

    goto :goto_f

    .line 689
    :cond_11
    move-wide/from16 v11, v33

    :goto_f
    nop

    .line 690
    .local v11, "btChargeUC":J
    :try_start_11
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    move-wide v3, v9

    .end local v9    # "elapsedRealtime":J
    .local v3, "elapsedRealtime":J
    move-object v9, v0

    move-object v10, v15

    move/from16 p4, v5

    move-object v5, v13

    move-object/from16 v17, v14

    .end local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local v5, "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local p4, "onBattery":Z
    move-wide v13, v3

    move-object/from16 v37, v6

    move-object v6, v15

    .end local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v6, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v37, "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    move-wide/from16 v15, v25

    :try_start_12
    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    .line 692
    .end local v11    # "btChargeUC":J
    goto :goto_10

    .line 693
    .end local v3    # "elapsedRealtime":J
    .end local v37    # "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .end local p4    # "onBattery":Z
    .local v5, "onBattery":Z
    .local v6, "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .restart local v9    # "elapsedRealtime":J
    .restart local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .restart local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_12
    move/from16 p4, v5

    move-object/from16 v37, v6

    move-wide v3, v9

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    .end local v9    # "elapsedRealtime":J
    .end local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v3    # "elapsedRealtime":J
    .local v5, "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local v6, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v37    # "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .restart local p4    # "onBattery":Z
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bluetooth info is invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 696
    .end local v3    # "elapsedRealtime":J
    .end local v37    # "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .end local p4    # "onBattery":Z
    .local v5, "onBattery":Z
    .local v6, "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .restart local v9    # "elapsedRealtime":J
    .restart local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .restart local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catchall_a
    move-exception v0

    move/from16 p4, v5

    move-object/from16 v37, v6

    move-wide v3, v9

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    move/from16 v11, p4

    .end local v9    # "elapsedRealtime":J
    .end local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v3    # "elapsedRealtime":J
    .local v5, "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local v6, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v37    # "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .restart local p4    # "onBattery":Z
    goto/16 :goto_14

    .line 685
    .end local v3    # "elapsedRealtime":J
    .end local v37    # "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .end local p4    # "onBattery":Z
    .local v5, "onBattery":Z
    .local v6, "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .restart local v9    # "elapsedRealtime":J
    .restart local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .restart local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_13
    move/from16 p4, v5

    move-object/from16 v37, v6

    move-wide v3, v9

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    .line 696
    .end local v9    # "elapsedRealtime":J
    .end local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v3    # "elapsedRealtime":J
    .local v5, "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local v6, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v37    # "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .restart local p4    # "onBattery":Z
    :goto_10
    monitor-exit v17
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 701
    if-eqz v8, :cond_16

    .line 702
    invoke-virtual {v8}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 703
    if-eqz v5, :cond_14

    .line 704
    iget-wide v9, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->wifiChargeUC:J

    move-wide/from16 v18, v9

    goto :goto_11

    :cond_14
    move-wide/from16 v18, v33

    .line 705
    .local v18, "wifiChargeUC":J
    :goto_11
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 706
    invoke-direct {v1, v8}, Lcom/android/server/am/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v17

    .line 705
    move-object/from16 v16, v0

    move-wide/from16 v20, v3

    move-wide/from16 v22, v25

    invoke-virtual/range {v16 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJ)V

    .line 707
    .end local v18    # "wifiChargeUC":J
    goto :goto_12

    .line 708
    :cond_15
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wifi info is invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_16
    :goto_12
    if-eqz v24, :cond_18

    .line 713
    if-eqz v5, :cond_17

    .line 714
    iget-wide v9, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->mobileRadioChargeUC:J

    move-wide/from16 v18, v9

    goto :goto_13

    :cond_17
    move-wide/from16 v18, v33

    .line 715
    .local v18, "mobileRadioChargeUC":J
    :goto_13
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v16, v0

    move-object/from16 v17, v24

    move-wide/from16 v20, v3

    move-wide/from16 v22, v25

    invoke-virtual/range {v16 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJ)V

    .line 719
    .end local v18    # "mobileRadioChargeUC":J
    :cond_18
    const/16 v0, 0x3f

    if-ne v2, v0, :cond_19

    .line 721
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->informThatAllExternalStatsAreFlushed()V

    .line 723
    :cond_19
    return-void

    .line 696
    :catchall_b
    move-exception v0

    move/from16 v11, p4

    goto :goto_14

    .end local v31    # "railUpdated":Z
    .end local v32    # "onBatteryScreenOff":Z
    .end local v35    # "elapsedRealtimeUs":J
    .end local v37    # "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .local v3, "elapsedRealtimeUs":J
    .local v5, "railUpdated":Z
    .local v6, "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .restart local v9    # "elapsedRealtime":J
    .restart local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .restart local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local p3    # "onBattery":Z
    .local p4, "onBatteryScreenOff":Z
    :catchall_c
    move-exception v0

    move-wide/from16 v35, v3

    move/from16 v31, v5

    move-object/from16 v37, v6

    move-wide v3, v9

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v6, v15

    move/from16 v11, p3

    move/from16 v32, p4

    .end local v9    # "elapsedRealtime":J
    .end local v13    # "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .end local v15    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .local v3, "elapsedRealtime":J
    .local v5, "measuredEnergyDeltas":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .local v6, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v11, "onBattery":Z
    .restart local v31    # "railUpdated":Z
    .restart local v32    # "onBatteryScreenOff":Z
    .restart local v35    # "elapsedRealtimeUs":J
    .restart local v37    # "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    :goto_14
    :try_start_13
    monitor-exit v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_14
.end method


# virtual methods
.method public cancelCpuSyncDueToWakelockChange()V
    .locals 2

    .line 323
    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 325
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 328
    :cond_0
    monitor-exit p0

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLastCollectionTimeStamp()J
    .locals 2

    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMeasuredEnergyLocked(I)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_0

    goto :goto_0

    .line 892
    :cond_0
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_1

    .line 894
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 897
    :cond_1
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 898
    .local v0, "energyConsumerIds":Landroid/util/IntArray;
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_2

    .line 899
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 901
    :cond_2
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3

    .line 902
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 904
    :cond_3
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_4

    .line 905
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 907
    :cond_4
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_5

    .line 908
    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 910
    :cond_5
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_6

    .line 911
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 914
    :cond_6
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 915
    return-object v1

    .line 917
    :cond_7
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 890
    .end local v0    # "energyConsumerIds":Landroid/util/IntArray;
    :cond_8
    :goto_0
    return-object v1
.end method

.method public synthetic lambda$scheduleCpuSyncDueToWakelockChange$2$BatteryExternalStatsWorker()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method public synthetic lambda$scheduleCpuSyncDueToWakelockChange$3$BatteryExternalStatsWorker()V
    .locals 2

    .line 313
    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 314
    new-instance v0, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public synthetic lambda$scheduleSyncDueToBatteryLevelChange$4$BatteryExternalStatsWorker()V
    .locals 2

    .line 335
    const-string v0, "battery-level"

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public scheduleCopyFromAllUidsCpuTimes(ZZ)Ljava/util/concurrent/Future;
    .locals 5
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 280
    monitor-exit v0

    return-object v2

    .line 282
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 287
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 285
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 287
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 285
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 289
    :cond_1
    monitor-exit p0

    .line 290
    return-object v2

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 282
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 248
    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 246
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleCpuSyncDueToSettingChange()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 253
    :try_start_0
    const-string/jumbo v0, "setting-change"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 253
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 317
    monitor-exit p0

    return-object v0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleReadProcStateCpuTimes(ZZJ)Ljava/util/concurrent/Future;
    .locals 5
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .param p3, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 261
    monitor-exit v0

    return-object v2

    .line 263
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    monitor-enter p0

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 268
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 266
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 268
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 266
    invoke-interface {v0, v1, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 271
    :cond_1
    monitor-exit p0

    .line 272
    return-object v2

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 263
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :cond_0
    monitor-exit p0

    return-void

    .line 394
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 242
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 337
    monitor-exit p0

    return-object v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleSyncDueToScreenStateChange(IZZI)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "flags"    # I
    .param p2, "onBattery"    # Z
    .param p3, "onBatteryScreenOff"    # Z
    .param p4, "screenState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 298
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 299
    iput-boolean p3, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 303
    :cond_1
    iput p4, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mScreenState:I

    .line 304
    const-string/jumbo v0, "screen-state"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized scheduleWrite()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 384
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :cond_0
    :try_start_1
    const-string/jumbo v0, "write"

    const/16 v1, 0x3f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 387
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 402
    return-void
.end method

.method public systemServicesReady()V
    .locals 12

    .line 194
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 195
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 196
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v3, Landroid/power/PowerStatsInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/power/PowerStatsInternal;

    .line 198
    .local v2, "psi":Landroid/power/PowerStatsInternal;
    iget-object v3, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v4

    .line 200
    .local v4, "voltageMv":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 202
    iget-object v5, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 203
    :try_start_1
    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 204
    iput-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 205
    iput-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, "supportedStdBuckets":[Z
    const/4 v6, 0x0

    .line 209
    .local v6, "customBucketNames":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 210
    nop

    .line 211
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;

    move-result-object v7

    .line 212
    .local v7, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    if-eqz v7, :cond_0

    .line 213
    new-instance v8, Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-direct {v8, v7}, Lcom/android/server/am/MeasuredEnergySnapshot;-><init>(Landroid/util/SparseArray;)V

    iput-object v8, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object v8

    const-wide/16 v9, 0x7d0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 220
    .local v8, "initialEcrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    iget-object v9, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-virtual {v9, v8, v4}, Lcom/android/server/am/MeasuredEnergySnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    .end local v8    # "initialEcrs":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_0

    .line 225
    :catch_0
    move-exception v8

    .line 226
    .local v8, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception reading initial getEnergyConsumedAsync: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v8}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 226
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    .end local v8    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v8

    .line 222
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, "BatteryExternalStatsWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeout or interrupt reading initial getEnergyConsumedAsync: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    nop

    .line 230
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-virtual {v8}, Lcom/android/server/am/MeasuredEnergySnapshot;->getOtherOrdinalNames()[Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 231
    invoke-static {v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z

    move-result-object v8

    move-object v3, v8

    .line 234
    .end local v7    # "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    :try_start_4
    iget-object v8, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8, v3, v6}, Lcom/android/internal/os/BatteryStatsImpl;->initMeasuredEnergyStatsLocked([Z[Ljava/lang/String;)V

    .line 236
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    .end local v3    # "supportedStdBuckets":[Z
    .end local v6    # "customBucketNames":[Ljava/lang/String;
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 238
    return-void

    .line 236
    .restart local v3    # "supportedStdBuckets":[Z
    .restart local v6    # "customBucketNames":[Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "wm":Landroid/net/wifi/WifiManager;
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "psi":Landroid/power/PowerStatsInternal;
    .end local v4    # "voltageMv":I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :try_start_7
    throw v8

    .line 237
    .end local v3    # "supportedStdBuckets":[Z
    .end local v6    # "customBucketNames":[Ljava/lang/String;
    .restart local v0    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v2    # "psi":Landroid/power/PowerStatsInternal;
    .restart local v4    # "voltageMv":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 200
    .end local v4    # "voltageMv":I
    :catchall_2
    move-exception v4

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v4
.end method
