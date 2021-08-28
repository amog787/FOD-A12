.class public Lcom/android/server/stats/pull/StatsPullAtomService;
.super Lcom/android/server/SystemService;
.source "StatsPullAtomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;,
        Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;,
        Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;,
        Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;,
        Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    }
.end annotation


# static fields
.field private static final APP_OPS_SAMPLING_INITIALIZATION_DELAY_MILLIS:J = 0xafc8L

.field private static final APP_OPS_SIZE_ESTIMATE:I = 0x7d0

.field private static final APP_OPS_TARGET_COLLECTION_SIZE:Ljava/lang/String; = "app_ops_target_collection_size"

.field private static final COMMON_PERMISSION_PREFIX:Ljava/lang/String; = "android.permission."

.field private static final CPU_CYCLES_PER_UID_CLUSTER_VALUES:I = 0x3

.field private static final CPU_TIME_PER_THREAD_FREQ_MAX_NUM_FREQUENCIES:I = 0x8

.field private static final DANGEROUS_PERMISSION_STATE_SAMPLE_RATE:Ljava/lang/String; = "dangerous_permission_state_sample_rate"

.field private static final DEBUG:Z = true

.field private static final DIMENSION_KEY_SIZE_HARD_LIMIT:I = 0x320

.field private static final DIMENSION_KEY_SIZE_SOFT_LIMIT:I = 0x1f4

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_BATTERY_STATS_HELPER_FREQUENCY_MS:I = 0x3e8

.field private static final MAX_PROCSTATS_RAW_SHARD_SIZE:I = 0xe666

.field private static final MAX_PROCSTATS_SHARDS:I = 0x5

.field private static final MAX_PROCSTATS_SHARD_SIZE:I = 0xc000

.field private static final MILLIS_PER_SEC:J = 0x3e8L

.field private static final MILLI_AMP_HR_TO_NANO_AMP_SECS:J = 0xd693a400L

.field private static final MIN_CPU_TIME_PER_UID_FREQ:I = 0xa

.field private static final NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

.field private static final OP_FLAGS_PULLED:I = 0x9

.field private static final RANDOM_SEED:I

.field private static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field private static final TAG:Ljava/lang/String; = "StatsPullAtomService"


# instance fields
.field private final mAppOpsLock:Ljava/lang/Object;

.field private mAppOpsSamplingRate:I

.field private final mAppSizeLock:Ljava/lang/Object;

.field private final mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

.field private final mAttributedAppOpsLock:Ljava/lang/Object;

.field private mBaseDir:Ljava/io/File;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private final mBatteryStatsHelperLock:Ljava/lang/Object;

.field private mBatteryStatsHelperTimestampMs:J

.field private final mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

.field private final mBinderCallsStatsLock:Ljava/lang/Object;

.field private final mBluetoothActivityInfoLock:Ljava/lang/Object;

.field private final mBluetoothBytesTransferLock:Ljava/lang/Object;

.field private final mBuildInformationLock:Ljava/lang/Object;

.field private final mCategorySizeLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mCooldownDeviceLock:Ljava/lang/Object;

.field private final mCpuActiveTimeLock:Ljava/lang/Object;

.field private final mCpuClusterTimeLock:Ljava/lang/Object;

.field private final mCpuTimePerClusterFreqLock:Ljava/lang/Object;

.field private final mCpuTimePerThreadFreqLock:Ljava/lang/Object;

.field private final mCpuTimePerUidFreqLock:Ljava/lang/Object;

.field private final mCpuTimePerUidLock:Ljava/lang/Object;

.field private mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

.field private mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

.field private mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

.field private mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

.field private final mDangerousAppOpsList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDangerousAppOpsListLock:Ljava/lang/Object;

.field private final mDangerousPermissionStateLock:Ljava/lang/Object;

.field private final mDataBytesTransferLock:Ljava/lang/Object;

.field private final mDebugElapsedClockLock:Ljava/lang/Object;

.field private mDebugElapsedClockPreviousValue:J

.field private mDebugElapsedClockPullCount:J

.field private final mDebugFailingElapsedClockLock:Ljava/lang/Object;

.field private mDebugFailingElapsedClockPreviousValue:J

.field private mDebugFailingElapsedClockPullCount:J

.field private final mDeviceCalculatedPowerBlameOtherLock:Ljava/lang/Object;

.field private final mDeviceCalculatedPowerBlameUidLock:Ljava/lang/Object;

.field private final mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

.field private final mDirectoryUsageLock:Ljava/lang/Object;

.field private final mDiskIoLock:Ljava/lang/Object;

.field private final mDiskStatsLock:Ljava/lang/Object;

.field private final mExternalStorageInfoLock:Ljava/lang/Object;

.field private final mFaceSettingsLock:Ljava/lang/Object;

.field private final mHealthHalLock:Ljava/lang/Object;

.field private mHealthService:Lcom/android/server/BatteryService$HealthServiceWrapper;

.field private final mHistoricalSubs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/stats/pull/netstats/SubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

.field private final mInstalledIncrementalPackagesLock:Ljava/lang/Object;

.field private final mIonHeapSizeLock:Ljava/lang/Object;

.field private mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

.field private final mKernelWakelockLock:Ljava/lang/Object;

.field private mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mKeystoreLock:Ljava/lang/Object;

.field private final mLooperStatsLock:Ljava/lang/Object;

.field private final mModemActivityInfoLock:Ljava/lang/Object;

.field private final mNetworkStatsBaselines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManagerService:Landroid/app/INotificationManager;

.field private final mNotificationRemoteViewsLock:Ljava/lang/Object;

.field private final mNotificationStatsLock:Ljava/lang/Object;

.field private final mNumBiometricsEnrolledLock:Ljava/lang/Object;

.field private final mPowerProfileLock:Ljava/lang/Object;

.field private final mProcStatsLock:Ljava/lang/Object;

.field private final mProcessCpuTimeLock:Ljava/lang/Object;

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private final mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

.field private final mProcessMemorySnapshotLock:Ljava/lang/Object;

.field private final mProcessMemoryStateLock:Ljava/lang/Object;

.field private mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

.field private final mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

.field private final mRoleHolderLock:Ljava/lang/Object;

.field private final mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

.field private final mSettingsStatsLock:Ljava/lang/Object;

.field private mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

.field private mStatsManager:Landroid/app/StatsManager;

.field private mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageService:Landroid/os/IStoraged;

.field private final mStoragedLock:Ljava/lang/Object;

.field private mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

.field private final mSystemElapsedRealtimeLock:Ljava/lang/Object;

.field private final mSystemIonHeapSizeLock:Ljava/lang/Object;

.field private final mSystemUptimeLock:Ljava/lang/Object;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mTemperatureLock:Ljava/lang/Object;

.field private final mThermalLock:Ljava/lang/Object;

.field private mThermalService:Landroid/os/IThermalService;

.field private final mTimeZoneDataInfoLock:Ljava/lang/Object;

.field private final mTimeZoneDetectionInfoLock:Ljava/lang/Object;

.field private mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field private final mWifiActivityInfoLock:Ljava/lang/Object;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 249
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 268
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 299
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    .line 303
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    .line 307
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    .line 317
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 319
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 322
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 324
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    .line 362
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelperLock:Ljava/lang/Object;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 365
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelperTimestampMs:J

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 372
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsListLock:Ljava/lang/Object;

    .line 373
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    .line 395
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    .line 396
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    .line 397
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    .line 398
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    .line 399
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    .line 400
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    .line 402
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    .line 403
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    .line 404
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    .line 405
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    .line 406
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    .line 407
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    .line 408
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    .line 410
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemorySnapshotLock:Ljava/lang/Object;

    .line 411
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 412
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    .line 413
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 414
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    .line 415
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    .line 416
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    .line 417
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    .line 418
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    .line 419
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    .line 420
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    .line 421
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    .line 422
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    .line 423
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    .line 424
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 425
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    .line 426
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    .line 427
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    .line 428
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    .line 429
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    .line 430
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerBlameUidLock:Ljava/lang/Object;

    .line 431
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerBlameOtherLock:Ljava/lang/Object;

    .line 432
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    .line 434
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    .line 435
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    .line 436
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    .line 437
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    .line 438
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    .line 439
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    .line 440
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    .line 441
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    .line 442
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    .line 443
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    .line 444
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    .line 445
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    .line 446
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    .line 447
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    .line 448
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    .line 449
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    .line 453
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 454
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDataBytesTransferLocked(ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemorySnapshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNumBiometricsEnrolledLocked(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcStatsLocked(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerBlameUidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerBlameOtherLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6000()I
    .locals 1

    .line 244
    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->estimateAppOpsSamplingRate()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/stats/pull/StatsPullAtomService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/server/stats/pull/StatsPullAtomService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p1, "x1"    # I

    .line 244
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/stats/pull/StatsPullAtomService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p1, "x1"    # Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 244
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 16
    .param p1, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1256
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p1

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1257
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1258
    iget-object v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1259
    const/16 v4, 0x2763

    iget v5, v1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, v1, Landroid/net/NetworkStats$Entry;->metered:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    move v6, v3

    :goto_1
    iget v7, v1, Landroid/net/NetworkStats$Entry;->tag:I

    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v12, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v14, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIJJJJ)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v4, p2

    .line 1264
    .end local v2    # "i":I
    return-void
.end method

.method private static addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V
    .locals 17
    .param p0, "atomTag"    # I
    .param p2, "threadGroup"    # I
    .param p3, "cpuTimesUs"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;I[J)V"
        }
    .end annotation

    .line 1876
    .local p1, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p3

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v1

    .line 1877
    .local v1, "freqsClusters":[I
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v2

    .line 1878
    .local v2, "clusters":I
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v3

    .line 1879
    .local v3, "freqs":[J
    new-array v4, v2, [J

    .line 1880
    .local v4, "aggregatedCycles":[J
    new-array v5, v2, [J

    .line 1881
    .local v5, "aggregatedTimesUs":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v0

    const-wide/16 v8, 0x3e8

    if-ge v6, v7, :cond_0

    .line 1882
    aget v7, v1, v6

    aget-wide v10, v4, v7

    aget-wide v12, v3, v6

    aget-wide v14, v0, v6

    mul-long/2addr v12, v14

    div-long/2addr v12, v8

    add-long/2addr v10, v12

    aput-wide v10, v4, v7

    .line 1883
    aget v7, v1, v6

    aget-wide v8, v5, v7

    aget-wide v10, v0, v6

    add-long/2addr v8, v10

    aput-wide v8, v5, v7

    .line 1881
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1885
    .end local v6    # "i":I
    :cond_0
    const/4 v6, 0x0

    .local v6, "cluster":I
    :goto_1
    if-ge v6, v2, :cond_1

    .line 1886
    aget-wide v10, v4, v6

    const-wide/32 v12, 0xf4240

    div-long v13, v10, v12

    aget-wide v10, v5, v6

    div-long v15, v10, v8

    move/from16 v10, p0

    move/from16 v11, p2

    move v12, v6

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJ)Landroid/util/StatsEvent;

    move-result-object v7

    move-object/from16 v10, p1

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1885
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p1

    .line 1890
    .end local v6    # "cluster":I
    return-void
.end method

.method private addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 23
    .param p1, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1273
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1275
    .local v1, "is5GNsa":Z
    :goto_0
    if-nez v1, :cond_2

    iget v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v21, v2

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v21, v3

    .line 1277
    .local v21, "isNR":Z
    :goto_2
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1278
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v4}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1279
    iget-object v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v4, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1280
    iget v7, v2, Landroid/net/NetworkStats$Entry;->set:I

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1283
    if-eqz v1, :cond_3

    const/16 v4, 0xd

    goto :goto_4

    :cond_3
    iget v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    :goto_4
    move/from16 v16, v4

    iget-object v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v4, v4, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v5, v5, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget v6, v6, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    .line 1287
    move/from16 v22, v1

    .end local v1    # "is5GNsa":Z
    .local v22, "is5GNsa":Z
    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-boolean v1, v1, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    if-eqz v1, :cond_4

    .line 1288
    const/4 v1, 0x2

    move/from16 v20, v1

    goto :goto_5

    .line 1289
    :cond_4
    const/4 v1, 0x3

    move/from16 v20, v1

    .line 1280
    :goto_5
    move/from16 v19, v6

    const/16 v1, 0x2762

    move v6, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-static/range {v6 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJILjava/lang/String;Ljava/lang/String;IIZ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v22

    goto :goto_3

    .line 1292
    .end local v3    # "i":I
    .end local v22    # "is5GNsa":Z
    .restart local v1    # "is5GNsa":Z
    :cond_5
    return-void
.end method

.method private addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V
    .locals 16
    .param p1, "atomTag"    # I
    .param p3, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ")V"
        }
    .end annotation

    .line 1232
    .local p2, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v1

    .line 1233
    .local v1, "size":I
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1234
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1235
    iget-object v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v4, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1238
    iget-boolean v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    if-eqz v4, :cond_1

    .line 1240
    iget v6, v2, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v2, Landroid/net/NetworkStats$Entry;->set:I

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v7, v4

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v12, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    move/from16 v5, p1

    invoke-static/range {v5 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZJJJJ)Landroid/util/StatsEvent;

    move-result-object v4

    .local v4, "statsEvent":Landroid/util/StatsEvent;
    goto :goto_2

    .line 1246
    .end local v4    # "statsEvent":Landroid/util/StatsEvent;
    :cond_1
    iget v6, v2, Landroid/net/NetworkStats$Entry;->uid:I

    iget-wide v7, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v9, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v11, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v13, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    move/from16 v5, p1

    invoke-static/range {v5 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJ)Landroid/util/StatsEvent;

    move-result-object v4

    .line 1250
    .restart local v4    # "statsEvent":Landroid/util/StatsEvent;
    :goto_2
    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1234
    .end local v4    # "statsEvent":Landroid/util/StatsEvent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v5, p2

    .line 1252
    .end local v3    # "j":I
    return-void
.end method

.method private addOemDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 24
    .param p1, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1296
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p1

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1297
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    iget v15, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    .line 1298
    .local v15, "oemManaged":I
    iget-object v13, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    array-length v14, v13

    const/16 v16, 0x0

    move/from16 v11, v16

    :goto_0
    if-ge v11, v14, :cond_2

    aget v17, v13, v11

    .line 1299
    .local v17, "transport":I
    const/4 v2, 0x0

    move v12, v2

    .local v12, "i":I
    :goto_1
    iget-object v2, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v2

    if-ge v12, v2, :cond_1

    .line 1300
    iget-object v2, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v2, v12, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1301
    const/16 v2, 0x2774

    iget v3, v1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v1, Landroid/net/NetworkStats$Entry;->set:I

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    move/from16 v4, v16

    :goto_2
    iget-wide v7, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v9, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v18, v13

    move/from16 v19, v14

    iget-wide v13, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v20, v5

    move v5, v15

    move/from16 v6, v17

    move/from16 v22, v11

    move/from16 v23, v12

    .end local v12    # "i":I
    .local v23, "i":I
    move-wide/from16 v11, v20

    invoke-static/range {v2 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIIJJJJ)Landroid/util/StatsEvent;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    add-int/lit8 v12, v23, 0x1

    move-object/from16 v13, v18

    move/from16 v14, v19

    move/from16 v11, v22

    .end local v23    # "i":I
    .restart local v12    # "i":I
    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    move/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v18, v13

    move/from16 v19, v14

    .line 1298
    .end local v12    # "i":I
    .end local v17    # "transport":I
    add-int/lit8 v11, v22, 0x1

    goto :goto_0

    .line 1307
    :cond_2
    move-object/from16 v3, p2

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

    .line 1567
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1568
    return-object v0

    .line 1572
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 1573
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 1574
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1576
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 1578
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    .local v2, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1

    .line 1580
    return-object v2

    .line 1585
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    .end local v2    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1
    goto :goto_0

    .line 1583
    :catch_0
    move-exception v1

    .line 1584
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatsPullAtomService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    return-object v0
.end method

.method private collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;
    .locals 14
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown atomTag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1178
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForOemManaged()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1179
    goto/16 :goto_1

    .line 1157
    :sswitch_1
    nop

    .line 1158
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1157
    invoke-direct {p0, v1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1159
    .local v1, "wifiStats":Landroid/net/NetworkStats;
    nop

    .line 1160
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1159
    invoke-direct {p0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1161
    .local v2, "cellularStats":Landroid/net/NetworkStats;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1162
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1163
    .local v3, "stats":Landroid/net/NetworkStats;
    new-instance v13, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    const/4 v4, 0x2

    new-array v6, v4, [I

    fill-array-data v6, :array_0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    .end local v3    # "stats":Landroid/net/NetworkStats;
    goto/16 :goto_1

    .line 1172
    .end local v1    # "wifiStats":Landroid/net/NetworkStats;
    .end local v2    # "cellularStats":Landroid/net/NetworkStats;
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 1173
    .local v2, "subInfo":Lcom/android/server/stats/pull/netstats/SubInfo;
    invoke-direct {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1174
    .end local v2    # "subInfo":Lcom/android/server/stats/pull/netstats/SubInfo;
    goto :goto_0

    .line 1175
    :cond_0
    goto :goto_1

    .line 1148
    :sswitch_3
    nop

    .line 1149
    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1150
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_1

    .line 1151
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    new-array v6, v2, [I

    aput v1, v6, v1

    invoke-direct {v4, v5, v6, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1139
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :sswitch_4
    nop

    .line 1140
    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1141
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_1

    .line 1142
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    new-array v2, v2, [I

    aput v1, v2, v1

    invoke-direct {v4, v5, v2, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1131
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1132
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_1

    .line 1133
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    new-array v6, v2, [I

    aput v2, v6, v1

    invoke-direct {v4, v5, v6, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1123
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1124
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_1

    .line 1125
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    new-array v6, v2, [I

    aput v2, v6, v1

    invoke-direct {v4, v5, v6, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :cond_1
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_6
        0x2711 -> :sswitch_5
        0x2712 -> :sswitch_4
        0x2713 -> :sswitch_3
        0x2762 -> :sswitch_2
        0x2763 -> :sswitch_1
        0x2774 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method private convertToMetricsDetectionMode(I)I
    .locals 3
    .param p1, "detectionMode"    # I

    .line 3405
    packed-switch p1, :pswitch_data_0

    .line 3413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3411
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 3409
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 3407
    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private estimateAppOpsSamplingRate()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3728
    move-object/from16 v1, p0

    const-string v0, "permissions"

    const-string v2, "app_ops_target_collection_size"

    const/16 v3, 0x7d0

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 3731
    .local v2, "appOpsTargetCollectionSize":I
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    .line 3733
    .local v3, "appOps":Landroid/app/AppOpsManager;
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v4, v0

    .line 3734
    .local v4, "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 3736
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v5, v7, v8, v6}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 3737
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v0

    .line 3738
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    .line 3739
    .local v5, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;

    invoke-direct {v6, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v5, v0, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3740
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 3742
    .local v6, "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    nop

    .line 3743
    const/16 v0, 0x275b

    const/16 v7, 0x64

    invoke-direct {v1, v6, v0, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v7

    .line 3745
    .local v7, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    const-wide/16 v8, 0x0

    .line 3746
    .local v8, "estimatedSize":J
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    .line 3747
    .local v10, "nOps":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 3748
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3749
    .local v11, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    iget-object v12, v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x20

    iget-object v13, v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    if-nez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    .line 3750
    :cond_0
    iget-object v13, v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    :goto_1
    add-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v8, v12

    .line 3747
    .end local v11    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3753
    .end local v0    # "i":I
    :cond_1
    mul-int/lit8 v0, v2, 0x64

    int-to-long v11, v0

    div-long v13, v11, v8

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x64

    invoke-static/range {v13 .. v18}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v11

    long-to-int v11, v11

    .line 3755
    .local v11, "estimatedSamplingRate":I
    iget-object v12, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3756
    :try_start_0
    iget v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3757
    monitor-exit v12

    .line 3758
    return-void

    .line 3757
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 3

    .line 1590
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1591
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 1592
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1594
    .local v1, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 1595
    invoke-static {v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    return-object v2

    .line 1597
    .end local v1    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_0
    const-string v1, "StatsPullAtomService"

    const-string v2, "Failed to get bluetooth adapter!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;
    .locals 9

    .line 3010
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3011
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3012
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3015
    .local v3, "callingToken":J
    :try_start_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3017
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3018
    nop

    .line 3019
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v5, 0x0

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    goto :goto_0

    .line 3017
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3018
    nop

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService;
    throw v1

    .line 3021
    .end local v3    # "callingToken":J
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3022
    .local v3, "currentTime":J
    iget-wide v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelperTimestampMs:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long v1, v5, v7

    if-ltz v1, :cond_1

    .line 3025
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 3028
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 3029
    iput-wide v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelperTimestampMs:J

    .line 3031
    .end local v3    # "currentTime":J
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3032
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0

    .line 3031
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getDataUsageBytesTransferSnapshotForOemManaged()Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    .line 1310
    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 1312
    .local v2, "transports":[I
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 1314
    .local v1, "oemManagedTypes":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget v17, v2, v6

    .line 1317
    .local v17, "transport":I
    array-length v15, v1

    move v14, v5

    :goto_1
    if-ge v14, v15, :cond_1

    aget v27, v1, v14

    .line 1320
    .local v27, "oemManaged":I
    new-instance v18, Landroid/net/NetworkTemplate;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/16 v16, -0x1

    const/16 v19, -0x1

    move-object/from16 v7, v18

    move/from16 v8, v17

    move/from16 v28, v14

    move/from16 v14, v16

    move/from16 v29, v15

    move/from16 v15, v19

    move/from16 v16, v27

    invoke-direct/range {v7 .. v16}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 1324
    .local v7, "template":Landroid/net/NetworkTemplate;
    const/4 v8, 0x1

    invoke-direct {v0, v7, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v9

    .line 1325
    .local v9, "stats":Landroid/net/NetworkStats;
    if-eqz v9, :cond_0

    .line 1326
    new-instance v10, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {v0, v9}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v19

    new-array v8, v8, [I

    aput v17, v8, v5

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v10

    move-object/from16 v20, v8

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1317
    .end local v7    # "template":Landroid/net/NetworkTemplate;
    .end local v9    # "stats":Landroid/net/NetworkStats;
    .end local v27    # "oemManaged":I
    :cond_0
    add-int/lit8 v14, v28, 0x1

    move/from16 v15, v29

    goto :goto_1

    .line 1316
    .end local v17    # "transport":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1334
    :cond_2
    return-object v3

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x2
    .end array-data
.end method

.method private getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .locals 19
    .param p1, "subInfo"    # Lcom/android/server/stats/pull/netstats/SubInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/SubInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    .line 1380
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    invoke-static {}, Landroid/net/NetworkTemplate;->getAllCollapsedRatTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget v15, v2, v5

    .line 1382
    .local v15, "ratType":I
    move-object/from16 v14, p1

    iget-object v6, v14, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 1383
    invoke-static {v6, v15}, Landroid/net/NetworkTemplate;->buildTemplateMobileWithRatType(Ljava/lang/String;I)Landroid/net/NetworkTemplate;

    move-result-object v13

    .line 1384
    .local v13, "template":Landroid/net/NetworkTemplate;
    nop

    .line 1385
    invoke-direct {v0, v13, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v12

    .line 1386
    .local v12, "stats":Landroid/net/NetworkStats;
    if-eqz v12, :cond_0

    .line 1387
    new-instance v11, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {v0, v12}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v7

    const/4 v6, 0x1

    new-array v8, v6, [I

    aput v4, v8, v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    move-object v6, v11

    move-object v4, v11

    move/from16 v11, v16

    move-object/from16 v16, v12

    .end local v12    # "stats":Landroid/net/NetworkStats;
    .local v16, "stats":Landroid/net/NetworkStats;
    move v12, v15

    move-object/from16 v18, v13

    .end local v13    # "template":Landroid/net/NetworkTemplate;
    .local v18, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v13, p1

    move/from16 v14, v17

    invoke-direct/range {v6 .. v14}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1386
    .end local v16    # "stats":Landroid/net/NetworkStats;
    .end local v18    # "template":Landroid/net/NetworkTemplate;
    .restart local v12    # "stats":Landroid/net/NetworkStats;
    .restart local v13    # "template":Landroid/net/NetworkTemplate;
    :cond_0
    move-object/from16 v16, v12

    move-object/from16 v18, v13

    .line 1381
    .end local v12    # "stats":Landroid/net/NetworkStats;
    .end local v13    # "template":Landroid/net/NetworkTemplate;
    .end local v15    # "ratType":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 1393
    :cond_1
    return-object v1
.end method

.method private getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;
    .locals 4

    .line 1018
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    if-nez v1, :cond_0

    .line 1020
    const-string v1, "android.security.metrics"

    .line 1021
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1020
    invoke-static {v1}, Landroid/security/metrics/IKeystoreMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    if-eqz v1, :cond_0

    .line 1024
    :try_start_1
    invoke-interface {v1}, Landroid/security/metrics/IKeystoreMetrics;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    goto :goto_0

    .line 1029
    :catch_0
    move-exception v1

    .line 1030
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with IKeystoreMetrics failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 1035
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    monitor-exit v0

    return-object v1

    .line 1036
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getINotificationManagerService()Landroid/app/INotificationManager;
    .locals 4

    .line 1062
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1063
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    if-nez v1, :cond_0

    .line 1064
    const-string v1, "notification"

    .line 1065
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1064
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1067
    :cond_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1069
    :try_start_1
    invoke-interface {v1}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    goto :goto_0

    .line 1074
    :catch_0
    move-exception v1

    .line 1075
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with notificationManager failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1076
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1079
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1080
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    return-object v0

    .line 1079
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;
    .locals 4

    .line 1084
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    if-nez v1, :cond_0

    .line 1086
    const-string v1, "procstats"

    .line 1087
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1086
    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1091
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/app/procstats/IProcessStats;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1099
    goto :goto_0

    .line 1096
    :catch_0
    move-exception v1

    .line 1097
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with ProcessStats failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1098
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1101
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1102
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    return-object v0

    .line 1101
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private getIStoragedService()Landroid/os/IStoraged;
    .locals 4

    .line 1040
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    if-nez v1, :cond_0

    .line 1042
    const-string v1, "storaged"

    .line 1043
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1042
    invoke-static {v1}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1045
    :cond_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1047
    :try_start_1
    invoke-interface {v1}, Landroid/os/IStoraged;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1055
    goto :goto_0

    .line 1052
    :catch_0
    move-exception v1

    .line 1053
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with storagedService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1054
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1057
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1058
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    return-object v0

    .line 1057
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private getIThermalService()Landroid/os/IThermalService;
    .locals 4

    .line 996
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    if-nez v1, :cond_0

    .line 998
    const-string v1, "thermalservice"

    .line 999
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 998
    invoke-static {v1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    if-eqz v1, :cond_0

    .line 1002
    :try_start_1
    invoke-interface {v1}, Landroid/os/IThermalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    goto :goto_0

    .line 1007
    :catch_0
    move-exception v1

    .line 1008
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with thermalService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 1013
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    monitor-exit v0

    return-object v1

    .line 1014
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getNetworkStatsSession(Z)Landroid/net/INetworkStatsSession;
    .locals 5
    .param p1, "bypassRateLimit"    # Z

    .line 980
    nop

    .line 982
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 981
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    .line 983
    .local v0, "networkStatsService":Landroid/net/INetworkStatsService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 986
    :cond_0
    const/4 v2, 0x4

    .line 987
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    .line 988
    :cond_1
    const/4 v3, 0x1

    :goto_0
    or-int/2addr v2, v3

    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 986
    invoke-interface {v0, v2, v3}, Landroid/net/INetworkStatsService;->openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 989
    :catch_0
    move-exception v2

    .line 990
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "StatsPullAtomService"

    const-string v4, "Cannot get NetworkStats session"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    return-object v1
.end method

.method private getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;
    .locals 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "includeTags"    # Z

    .line 1356
    move-object v1, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1357
    .local v2, "elapsedMillisSinceBoot":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 1358
    .local v4, "currentTimeInMillis":J
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-wide v6, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    const-string v8, "netstats_uid_bucket_duration"

    invoke-static {v0, v8, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1366
    .local v13, "bucketDuration":J
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v6, 0x7

    if-ne v0, v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getNetworkStatsSession(Z)Landroid/net/INetworkStatsSession;

    move-result-object v6

    sub-long v7, v4, v2

    sub-long v8, v7, v13

    .line 1367
    move-object/from16 v7, p1

    move-wide v10, v4

    move/from16 v12, p2

    invoke-interface/range {v6 .. v12}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    .local v0, "stats":Landroid/net/NetworkStats;
    return-object v0

    .line 1371
    .end local v0    # "stats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pulling netstats for template="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " and includeTags="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " causes error"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "StatsPullAtomService"

    invoke-static {v9, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;
    .locals 2
    .param p1, "transport"    # I

    .line 1341
    if-nez p1, :cond_0

    .line 1342
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileWithRatType(Ljava/lang/String;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0

    .line 1344
    :cond_0
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    :goto_0
    nop

    .line 1345
    .local v0, "template":Landroid/net/NetworkTemplate;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method private initAndRegisterNetworkStatsPullers()V
    .locals 3

    .line 937
    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering NetworkStats pullers with statsd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 941
    const/16 v1, 0x2710

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 940
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 942
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 943
    const/16 v1, 0x2711

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 942
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 944
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 945
    const/16 v1, 0x2712

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 944
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 946
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2713

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 948
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2763

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 950
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 951
    const/16 v1, 0x2762

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 950
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 952
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 953
    const/16 v1, 0x2774

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 952
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 957
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 958
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 957
    invoke-virtual {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 960
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransfer()V

    .line 961
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransferBackground()V

    .line 962
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransfer()V

    .line 963
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransferBackground()V

    .line 964
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBytesTransferByTagAndMetered()V

    .line 965
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDataUsageBytesTransfer()V

    .line 966
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerOemManagedBytesTransfer()V

    .line 967
    return-void
.end method

.method private native initializeNativePullers()V
.end method

.method static synthetic lambda$pullCpuActiveTimeLocked$14(Ljava/util/List;IILjava/lang/Long;)V
    .locals 2
    .param p0, "pulledData"    # Ljava/util/List;
    .param p1, "atomTag"    # I
    .param p2, "uid"    # I
    .param p3, "cpuActiveTimesMs"    # Ljava/lang/Long;

    .line 1909
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1910
    return-void
.end method

.method static synthetic lambda$pullCpuClusterTimeLocked$15(Ljava/util/List;II[J)V
    .locals 3
    .param p0, "pulledData"    # Ljava/util/List;
    .param p1, "atomTag"    # I
    .param p2, "uid"    # I
    .param p3, "cpuClusterTimesMs"    # [J

    .line 1931
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 1932
    aget-wide v1, p3, v0

    .line 1933
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v1

    .line 1932
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1931
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1935
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$pullCpuCyclesPerUidClusterLocked$12(Landroid/util/SparseArray;I[I[J[DI[J)V
    .locals 15
    .param p0, "aggregated"    # Landroid/util/SparseArray;
    .param p1, "clusters"    # I
    .param p2, "freqsClusters"    # [I
    .param p3, "freqs"    # [J
    .param p4, "freqsPowers"    # [D
    .param p5, "uid"    # I
    .param p6, "cpuFreqTimeMs"    # [J

    .line 1732
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1735
    return-void

    .line 1736
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1738
    const v2, 0xea5f

    .end local p5    # "uid":I
    .local v2, "uid":I
    goto :goto_0

    .line 1741
    .end local v2    # "uid":I
    .restart local p5    # "uid":I
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1744
    .end local p5    # "uid":I
    .restart local v2    # "uid":I
    :goto_0
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 1745
    .local v3, "values":[D
    if-nez v3, :cond_2

    .line 1746
    mul-int/lit8 v4, p1, 0x3

    new-array v3, v4, [D

    .line 1747
    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1750
    :cond_2
    const/4 v4, 0x0

    .local v4, "freqIndex":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 1751
    aget v5, p2, v4

    .line 1752
    .local v5, "cluster":I
    aget-wide v6, v1, v4

    .line 1753
    .local v6, "timeMs":J
    mul-int/lit8 v8, v5, 0x3

    aget-wide v9, v3, v8

    aget-wide v11, p3, v4

    mul-long/2addr v11, v6

    long-to-double v11, v11

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 1754
    mul-int/lit8 v8, v5, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-wide v9, v3, v8

    long-to-double v11, v6

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 1755
    mul-int/lit8 v8, v5, 0x3

    add-int/lit8 v8, v8, 0x2

    aget-wide v9, v3, v8

    aget-wide v11, p4, v4

    long-to-double v13, v6

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 1750
    .end local v5    # "cluster":I
    .end local v6    # "timeMs":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1758
    .end local v4    # "freqIndex":I
    :cond_3
    return-void
.end method

.method static synthetic lambda$pullCpuTimePerUidFreqLocked$13(Landroid/util/SparseArray;I[J)V
    .locals 6
    .param p0, "aggregated"    # Landroid/util/SparseArray;
    .param p1, "uid"    # I
    .param p2, "cpuFreqTimeMs"    # [J

    .line 1794
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    return-void

    .line 1798
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1800
    const p1, 0xea5f

    goto :goto_0

    .line 1803
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 1806
    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1807
    .local v0, "aggCpuFreqTimeMs":[J
    if-nez v0, :cond_2

    .line 1808
    array-length v1, p2

    new-array v0, v1, [J

    .line 1809
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1811
    :cond_2
    const/4 v1, 0x0

    .local v1, "freqIndex":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 1812
    aget-wide v2, v0, v1

    aget-wide v4, p2, v1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 1811
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1814
    .end local v1    # "freqIndex":I
    :cond_3
    return-void
.end method

.method static synthetic lambda$pullCpuTimePerUidLocked$11(Ljava/util/List;II[J)V
    .locals 11
    .param p0, "pulledData"    # Ljava/util/List;
    .param p1, "atomTag"    # I
    .param p2, "uid"    # I
    .param p3, "timesUs"    # [J

    .line 1682
    const/4 v0, 0x0

    aget-wide v7, p3, v0

    .local v7, "userTimeUs":J
    const/4 v0, 0x1

    aget-wide v9, p3, v0

    .line 1683
    .local v9, "systemTimeUs":J
    nop

    .line 1684
    move v1, p1

    move v2, p2

    move-wide v3, v7

    move-wide v5, v9

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v0

    .line 1683
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1685
    return-void
.end method

.method static synthetic lambda$pullDataBytesTransferLocked$7(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .locals 1
    .param p0, "item"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .param p1, "it"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1197
    invoke-virtual {p1, p0}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->hasSameSlicing(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$pullDiskIOLocked$21(Ljava/util/List;IIJJJJJJJJJJ)V
    .locals 2
    .param p0, "pulledData"    # Ljava/util/List;
    .param p1, "atomTag"    # I
    .param p2, "uid"    # I
    .param p3, "fgCharsRead"    # J
    .param p5, "fgCharsWrite"    # J
    .param p7, "fgBytesRead"    # J
    .param p9, "fgBytesWrite"    # J
    .param p11, "bgCharsRead"    # J
    .param p13, "bgCharsWrite"    # J
    .param p15, "bgBytesRead"    # J
    .param p17, "bgBytesWrite"    # J
    .param p19, "fgFsync"    # J
    .param p21, "bgFsync"    # J

    .line 2884
    invoke-static/range {p1 .. p22}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object v1, p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2887
    return-void
.end method

.method static synthetic lambda$pullHealthHalLocked$22(ILjava/util/List;ILandroid/hardware/health/V2_0/HealthInfo;)V
    .locals 3
    .param p0, "atomTag"    # I
    .param p1, "pulledData"    # Ljava/util/List;
    .param p2, "result"    # I
    .param p3, "value"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 3983
    sparse-switch p0, :sswitch_data_0

    .line 4000
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid atomTag in healthHal puller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3997
    :sswitch_0
    iget-object v0, p3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 3998
    .local v0, "pulledValue":I
    goto :goto_0

    .line 3985
    .end local v0    # "pulledValue":I
    :sswitch_1
    iget-object v0, p3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 3986
    .restart local v0    # "pulledValue":I
    goto :goto_0

    .line 3994
    .end local v0    # "pulledValue":I
    :sswitch_2
    iget-object v0, p3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 3995
    .restart local v0    # "pulledValue":I
    goto :goto_0

    .line 3991
    .end local v0    # "pulledValue":I
    :sswitch_3
    iget-object v0, p3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 3992
    .restart local v0    # "pulledValue":I
    goto :goto_0

    .line 3988
    .end local v0    # "pulledValue":I
    :sswitch_4
    iget-object v0, p3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 3989
    .restart local v0    # "pulledValue":I
    nop

    .line 4003
    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4004
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2723 -> :sswitch_4
        0x2724 -> :sswitch_3
        0x272e -> :sswitch_2
        0x273b -> :sswitch_1
        0x273d -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic lambda$pullProcessDmabufMemory$19(Landroid/app/ProcessMemoryState;)I
    .locals 1
    .param p0, "x"    # Landroid/app/ProcessMemoryState;

    .line 2294
    iget v0, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    return v0
.end method

.method static synthetic lambda$pullProcessMemoryHighWaterMarkLocked$17(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .locals 1
    .param p0, "processCmdlines"    # Landroid/util/SparseArray;
    .param p1, "managedProcess"    # Landroid/app/ProcessMemoryState;

    .line 2161
    iget v0, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method static synthetic lambda$pullProcessMemorySnapshotLocked$18(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .locals 1
    .param p0, "processCmdlines"    # Landroid/util/SparseArray;
    .param p1, "managedProcess"    # Landroid/app/ProcessMemoryState;

    .line 2207
    iget v0, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method static synthetic lambda$pullWifiActivityInfoLocked$16(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2
    .param p0, "wifiReceiver"    # Landroid/os/SynchronousResultReceiver;
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 1963
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1964
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1965
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1966
    return-void
.end method

.method static synthetic lambda$readProcStatsHighWaterMark$20(ILjava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p0, "section"    # I
    .param p1, "d"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 2849
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sliceNetworkStatsByFgbg$8(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 1
    .param p0, "newEntry"    # Landroid/net/NetworkStats$Entry;
    .param p1, "oldEntry"    # Landroid/net/NetworkStats$Entry;

    .line 1399
    iget v0, p1, Landroid/net/NetworkStats$Entry;->set:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->set:I

    .line 1400
    return-void
.end method

.method static synthetic lambda$sliceNetworkStatsByUidAndFgbg$9(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 1
    .param p0, "newEntry"    # Landroid/net/NetworkStats$Entry;
    .param p1, "oldEntry"    # Landroid/net/NetworkStats$Entry;

    .line 1406
    iget v0, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1407
    iget v0, p1, Landroid/net/NetworkStats$Entry;->set:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->set:I

    .line 1408
    return-void
.end method

.method static synthetic lambda$sliceNetworkStatsByUidTagAndMetered$10(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 1
    .param p0, "newEntry"    # Landroid/net/NetworkStats$Entry;
    .param p1, "oldEntry"    # Landroid/net/NetworkStats$Entry;

    .line 1414
    iget v0, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1415
    iget v0, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1416
    iget v0, p1, Landroid/net/NetworkStats$Entry;->metered:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1417
    return-void
.end method

.method private milliAmpHrsToNanoAmpSecs(D)J
    .locals 4
    .param p1, "mAh"    # D

    .line 3036
    const-wide v0, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p3, "uid"    # I
    .param p4, "samplingRatio"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3794
    .local p2, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    const/4 v0, 0x0

    .line 3795
    .local v0, "firstChar":I
    if-eqz p6, :cond_0

    invoke-virtual {p6, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3796
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    .line 3797
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    .line 3798
    add-int/lit8 v0, v0, 0x1

    .line 3801
    :cond_0
    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3802
    if-nez p6, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p5

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;I)V

    .line 3804
    .local v1, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    iget v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-ge v2, p4, :cond_2

    .line 3805
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3807
    :cond_2
    return-void
.end method

.method private processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;
    .locals 20
    .param p1, "histOps"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "atomTag"    # I
    .param p3, "samplingRatio"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;"
        }
    .end annotation

    .line 3762
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3763
    .local v1, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    const/4 v2, 0x0

    move v9, v2

    .local v9, "uidIdx":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    if-ge v9, v2, :cond_5

    .line 3764
    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v11

    .line 3765
    .local v11, "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v12

    .line 3766
    .local v12, "uid":I
    const/4 v2, 0x0

    move v13, v2

    .local v13, "pkgIdx":I
    :goto_1
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 3767
    invoke-virtual {v11, v13}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v14

    .line 3768
    .local v14, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    const/16 v2, 0x275b

    if-ne v0, v2, :cond_2

    .line 3769
    const/4 v2, 0x0

    move v15, v2

    .line 3770
    .local v15, "attributionIdx":I
    :goto_2
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    if-ge v15, v2, :cond_1

    .line 3771
    nop

    .line 3772
    invoke-virtual {v14, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v8

    .line 3773
    .local v8, "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    const/4 v2, 0x0

    move v7, v2

    .local v7, "opIdx":I
    :goto_3
    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v2

    if-ge v7, v2, :cond_0

    .line 3774
    invoke-virtual {v8, v7}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v16

    .line 3775
    .local v16, "op":Landroid/app/AppOpsManager$HistoricalOp;
    nop

    .line 3776
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v18

    .line 3775
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object v4, v1

    move v5, v12

    move/from16 v6, p3

    move/from16 v19, v7

    .end local v7    # "opIdx":I
    .local v19, "opIdx":I
    move-object/from16 v7, v17

    move-object/from16 v17, v8

    .end local v8    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .local v17, "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    move-object/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    .line 3773
    .end local v16    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v8, v17

    .end local v19    # "opIdx":I
    .restart local v7    # "opIdx":I
    goto :goto_3

    .end local v17    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .restart local v8    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_0
    move/from16 v19, v7

    move-object/from16 v17, v8

    .line 3770
    .end local v7    # "opIdx":I
    .end local v8    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v15    # "attributionIdx":I
    :cond_1
    goto :goto_5

    .line 3779
    :cond_2
    const/16 v2, 0x274c

    if-ne v0, v2, :cond_3

    .line 3780
    const/4 v2, 0x0

    move v15, v2

    .local v15, "opIdx":I
    :goto_4
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 3781
    invoke-virtual {v14, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v16

    .line 3782
    .restart local v16    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    nop

    .line 3783
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 3782
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object v4, v1

    move v5, v12

    move/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    .line 3780
    .end local v16    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 3766
    .end local v14    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .end local v15    # "opIdx":I
    :cond_3
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3763
    .end local v11    # "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v12    # "uid":I
    .end local v13    # "pkgIdx":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v10, p1

    .line 3788
    .end local v9    # "uidIdx":I
    return-object v1
.end method

.method private pullDataBytesTransferLocked(ILjava/util/List;)I
    .locals 21
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1188
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v3

    .line 1190
    .local v3, "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    const/4 v4, 0x1

    const-string v5, ", return."

    const-string v6, "StatsPullAtomService"

    if-nez v3, :cond_0

    .line 1191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current snapshot is null for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return v4

    .line 1195
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1196
    .local v8, "item":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    iget-object v9, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;

    invoke-direct {v10, v8}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    invoke-static {v9, v10}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1201
    .local v9, "baseline":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    if-nez v9, :cond_1

    .line 1202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "baseline is null for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return v4

    .line 1205
    :cond_1
    new-instance v19, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    iget-object v10, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    iget-object v11, v9, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 1206
    invoke-virtual {v10, v11}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkStats;->removeEmptyEntries()Landroid/net/NetworkStats;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    iget-boolean v13, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    iget-boolean v14, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    iget-boolean v15, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    iget v10, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    iget-object v4, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    move-object/from16 v20, v3

    .end local v3    # "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    .local v20, "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    iget v3, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    move/from16 v16, v10

    move-object/from16 v10, v19

    move-object/from16 v17, v4

    move/from16 v18, v3

    invoke-direct/range {v10 .. v18}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    move-object/from16 v3, v19

    .line 1211
    .local v3, "diff":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    iget-object v4, v3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v4}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v3, v20

    const/4 v4, 0x1

    goto :goto_0

    .line 1213
    :cond_2
    sparse-switch v1, :sswitch_data_0

    .line 1224
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    goto :goto_1

    .line 1221
    :sswitch_0
    invoke-direct {v0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addOemDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    .line 1222
    goto :goto_1

    .line 1215
    :sswitch_1
    invoke-direct {v0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    .line 1216
    goto :goto_1

    .line 1218
    :sswitch_2
    invoke-direct {v0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    .line 1219
    nop

    .line 1226
    .end local v3    # "diff":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .end local v8    # "item":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .end local v9    # "baseline":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    :goto_1
    move-object/from16 v3, v20

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1227
    .end local v20    # "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    .local v3, "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    :cond_3
    move-object/from16 v20, v3

    .end local v3    # "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    .restart local v20    # "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    const/4 v3, 0x0

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2762 -> :sswitch_2
        0x2763 -> :sswitch_1
        0x2774 -> :sswitch_0
    .end sparse-switch
.end method

.method private pullNumBiometricsEnrolledLocked(IILjava/util/List;)I
    .locals 16
    .param p1, "modality"    # I
    .param p2, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2736
    .local p3, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2737
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 2738
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v4, 0x0

    .line 2740
    .local v4, "faceManager":Landroid/hardware/face/FaceManager;
    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2741
    iget-object v5, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    move-object v5, v0

    goto :goto_0

    .line 2740
    :cond_0
    move-object v5, v0

    .line 2743
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .local v5, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :goto_0
    const-string v0, "android.hardware.biometrics.face"

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2744
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/face/FaceManager;

    .line 2747
    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    if-nez v5, :cond_2

    .line 2748
    return v0

    .line 2750
    :cond_2
    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    if-nez v4, :cond_3

    .line 2751
    return v0

    .line 2753
    :cond_3
    iget-object v7, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 2754
    .local v7, "userManager":Landroid/os/UserManager;
    if-nez v7, :cond_4

    .line 2755
    return v0

    .line 2758
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2760
    .local v8, "token":J
    :try_start_0
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 2761
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 2762
    .local v12, "userId":I
    const/4 v13, 0x0

    .line 2763
    .local v13, "numEnrolled":I
    if-ne v2, v0, :cond_5

    .line 2764
    invoke-virtual {v5, v12}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v13, v14

    goto :goto_2

    .line 2765
    :cond_5
    if-ne v2, v6, :cond_6

    .line 2766
    invoke-virtual {v4, v12}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v13, v14

    .line 2770
    :goto_2
    move/from16 v14, p2

    :try_start_1
    invoke-static {v14, v12, v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v6, p3

    :try_start_2
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2771
    const/4 v6, 0x4

    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "userId":I
    .end local v13    # "numEnrolled":I
    goto :goto_1

    .line 2773
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 2768
    .restart local v11    # "user":Landroid/content/pm/UserInfo;
    .restart local v12    # "userId":I
    .restart local v13    # "numEnrolled":I
    :cond_6
    move/from16 v14, p2

    move-object/from16 v6, p3

    .line 2773
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2768
    return v0

    .line 2773
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "userId":I
    .end local v13    # "numEnrolled":I
    :cond_7
    move/from16 v14, p2

    move-object/from16 v6, p3

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2774
    nop

    .line 2775
    const/4 v0, 0x0

    return v0

    .line 2773
    :catchall_2
    move-exception v0

    move/from16 v14, p2

    :goto_3
    move-object/from16 v6, p3

    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2774
    throw v0
.end method

.method private pullProcStatsLocked(IILjava/util/List;)I
    .locals 22
    .param p1, "section"    # I
    .param p2, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2799
    .local p3, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    move/from16 v9, p1

    const-string v0, "_"

    const-string v10, "/"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v11

    .line 2800
    .local v11, "processStatsService":Lcom/android/internal/app/procstats/IProcessStats;
    const/4 v12, 0x1

    if-nez v11, :cond_0

    .line 2801
    return v12

    .line 2804
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2807
    .local v13, "token":J
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->readProcStatsHighWaterMark(I)J

    move-result-wide v2

    move-wide v7, v2

    .line 2809
    .local v7, "lastHighWaterMark":J
    const/4 v2, 0x5

    new-array v2, v2, [Landroid/util/proto/ProtoOutputStream;

    move-object v15, v2

    .line 2810
    .local v15, "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v15
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-ge v2, v3, :cond_1

    .line 2811
    :try_start_1
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    aput-object v3, v15, v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2810
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2840
    .end local v2    # "i":I
    .end local v7    # "lastHighWaterMark":J
    .end local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :catchall_0
    move-exception v0

    move/from16 v7, p2

    move-wide/from16 v20, v13

    move-object/from16 v14, p3

    goto/16 :goto_4

    .line 2836
    :catch_0
    move-exception v0

    move/from16 v7, p2

    move-wide/from16 v20, v13

    move-object/from16 v14, p3

    goto/16 :goto_3

    .line 2814
    .restart local v7    # "lastHighWaterMark":J
    .restart local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :cond_1
    :try_start_2
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v5, v2

    .line 2816
    .local v5, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v2, v11

    move-wide v3, v7

    move-object/from16 v18, v5

    .end local v5    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v18, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    move/from16 v5, p1

    move/from16 v19, v6

    move/from16 v6, v16

    move-wide/from16 v20, v13

    move-wide v12, v7

    .end local v7    # "lastHighWaterMark":J
    .end local v13    # "token":J
    .local v12, "lastHighWaterMark":J
    .local v20, "token":J
    move-object/from16 v7, v17

    move-object/from16 v8, v18

    :try_start_3
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v2

    .line 2818
    .local v2, "highWaterMark":J
    const-wide/32 v4, 0xe666

    move-object/from16 v6, v18

    .end local v18    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v6, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v6, v15, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    .line 2820
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v15

    if-ge v4, v5, :cond_3

    .line 2821
    aget-object v5, v15, v4

    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    .line 2822
    .local v5, "bytes":[B
    array-length v7, v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lez v7, :cond_2

    .line 2823
    move/from16 v7, p2

    :try_start_4
    invoke-static {v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BI)Landroid/util/StatsEvent;

    move-result-object v8
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v14, p3

    :try_start_5
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2840
    .end local v2    # "highWaterMark":J
    .end local v4    # "i":I
    .end local v5    # "bytes":[B
    .end local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v12    # "lastHighWaterMark":J
    .end local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v14, p3

    goto/16 :goto_4

    .line 2836
    :catch_1
    move-exception v0

    move-object/from16 v14, p3

    goto/16 :goto_3

    .line 2822
    .restart local v2    # "highWaterMark":J
    .restart local v4    # "i":I
    .restart local v5    # "bytes":[B
    .restart local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v12    # "lastHighWaterMark":J
    .restart local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :cond_2
    move/from16 v7, p2

    move-object/from16 v14, p3

    .line 2820
    .end local v5    # "bytes":[B
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move/from16 v7, p2

    move-object/from16 v14, p3

    .line 2832
    .end local v4    # "i":I
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2833
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2834
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2835
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2840
    nop

    .end local v2    # "highWaterMark":J
    .end local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v12    # "lastHighWaterMark":J
    .end local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2841
    nop

    .line 2842
    return v19

    .line 2836
    :catch_2
    move-exception v0

    goto :goto_3

    .line 2840
    :catchall_2
    move-exception v0

    move/from16 v7, p2

    move-object/from16 v14, p3

    goto :goto_4

    .line 2836
    :catch_3
    move-exception v0

    move/from16 v7, p2

    move-object/from16 v14, p3

    goto :goto_3

    .line 2840
    .end local v20    # "token":J
    .restart local v13    # "token":J
    :catchall_3
    move-exception v0

    move/from16 v7, p2

    move-wide/from16 v20, v13

    move-object/from16 v14, p3

    .end local v13    # "token":J
    .restart local v20    # "token":J
    goto :goto_4

    .line 2836
    .end local v20    # "token":J
    .restart local v13    # "token":J
    :catch_4
    move-exception v0

    move/from16 v7, p2

    move-wide/from16 v20, v13

    move-object/from16 v14, p3

    .line 2837
    .end local v13    # "token":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "token":J
    :goto_3
    :try_start_6
    const-string v2, "StatsPullAtomService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 2838
    nop

    .line 2840
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2838
    const/4 v2, 0x1

    return v2

    .line 2840
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v0

    :goto_4
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2841
    throw v0
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3844
    const/4 v0, 0x0

    .line 3845
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 3846
    .local v1, "initialAvail":I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x4000

    :goto_0
    new-array v2, v2, [B

    .line 3848
    .local v2, "data":[B
    :goto_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 3850
    .local v3, "amt":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of avail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatsPullAtomService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    const/4 v4, 0x0

    if-gez v3, :cond_1

    .line 3854
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** FINISHED READING: pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    aput v0, p1, v4

    .line 3857
    return-object v2

    .line 3859
    :cond_1
    add-int/2addr v0, v3

    .line 3860
    array-length v6, v2

    if-lt v0, v6, :cond_2

    .line 3861
    add-int/lit16 v6, v0, 0x4000

    new-array v6, v6, [B

    .line 3863
    .local v6, "newData":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Copying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bytes to new array len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    invoke-static {v2, v4, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3866
    move-object v2, v6

    .line 3868
    .end local v3    # "amt":I
    .end local v6    # "newData":[B
    :cond_2
    goto :goto_1
.end method

.method private readProcStatsHighWaterMark(I)J
    .locals 7
    .param p1, "section"    # I

    .line 2848
    const-string v0, "StatsPullAtomService"

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;

    invoke-direct {v4, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 2851
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_0

    .line 2854
    :cond_0
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 2855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only 1 file expected for high water mark. Found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :cond_1
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2852
    :cond_2
    :goto_0
    return-wide v1

    .line 2860
    .end local v3    # "files":[Ljava/io/File;
    :catch_0
    move-exception v3

    .line 2861
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Failed to parse file name."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2858
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 2859
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "Failed to get procstats high watermark file."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2862
    .end local v3    # "e":Ljava/lang/SecurityException;
    nop

    .line 2863
    :goto_1
    return-wide v1
.end method

.method private registerAppOps()V
    .locals 5

    .line 3567
    const/16 v0, 0x274c

    .line 3568
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3574
    return-void
.end method

.method private registerAppSize()V
    .locals 5

    .line 2613
    const/16 v0, 0x272b

    .line 2614
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2620
    return-void
.end method

.method private registerAppsOnExternalStorageInfo()V
    .locals 5

    .line 3463
    const/16 v0, 0x2749

    .line 3464
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3470
    return-void
.end method

.method private registerAttributedAppOps()V
    .locals 5

    .line 3672
    const/16 v0, 0x275b

    .line 3673
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3679
    return-void
.end method

.method private registerBatteryCycleCount()V
    .locals 5

    .line 3966
    const/16 v0, 0x273d

    .line 3967
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3973
    return-void
.end method

.method private registerBatteryLevel()V
    .locals 5

    .line 3926
    const/16 v0, 0x273b

    .line 3927
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3933
    return-void
.end method

.method private registerBatteryVoltage()V
    .locals 5

    .line 3956
    const/16 v0, 0x272e

    .line 3957
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3963
    return-void
.end method

.method private registerBinderCallsStats()V
    .locals 5

    .line 2430
    const/16 v0, 0x2726

    .line 2431
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2432
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2433
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2434
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2440
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x8
        0xc
    .end array-data
.end method

.method private registerBinderCallsStatsExceptions()V
    .locals 5

    .line 2464
    const/16 v0, 0x2727

    .line 2465
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2471
    return-void
.end method

.method private registerBluetoothActivityInfo()V
    .locals 5

    .line 2048
    const/16 v0, 0x2717

    .line 2049
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2055
    return-void
.end method

.method private registerBluetoothBytesTransfer()V
    .locals 5

    .line 1549
    const/16 v0, 0x2716

    .line 1550
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1551
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1552
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1553
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1559
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method private registerBuildInformation()V
    .locals 5

    .line 3181
    const/16 v0, 0x273c

    .line 3182
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3188
    return-void
.end method

.method private registerBytesTransferByTagAndMetered()V
    .locals 5

    .line 1510
    const/16 v0, 0x2763

    .line 1511
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1512
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1513
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1514
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1517
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1514
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1520
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private registerCategorySize()V
    .locals 5

    .line 2652
    const/16 v0, 0x272c

    .line 2653
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2659
    return-void
.end method

.method private registerCoolingDevice()V
    .locals 5

    .line 2398
    const/16 v0, 0x274b

    .line 2399
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2405
    return-void
.end method

.method private registerCpuActiveTime()V
    .locals 5

    .line 1895
    const/16 v0, 0x2720

    .line 1896
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    .line 1897
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1898
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1899
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1905
    return-void
.end method

.method private registerCpuClusterTime()V
    .locals 5

    .line 1917
    const/16 v0, 0x2721

    .line 1918
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 1919
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1920
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1921
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1927
    return-void
.end method

.method private registerCpuCyclesPerThreadGroupCluster()V
    .locals 5

    .line 1831
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    const/16 v0, 0x2772

    .line 1833
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1834
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1835
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1836
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1843
    .end local v0    # "tagId":I
    .end local v1    # "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method private registerCpuCyclesPerUidCluster()V
    .locals 5

    .line 1692
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v0

    if-lez v0, :cond_1

    .line 1693
    :cond_0
    const/16 v0, 0x2770

    .line 1694
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1695
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1696
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1697
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1704
    .end local v0    # "tagId":I
    .end local v1    # "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerCpuTimePerClusterFreq()V
    .locals 5

    .line 1637
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    const/16 v0, 0x276f

    .line 1639
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 1640
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1641
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1642
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1649
    .end local v0    # "tagId":I
    .end local v1    # "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    :cond_0
    return-void
.end method

.method private registerCpuTimePerThreadFreq()V
    .locals 5

    .line 2939
    const/16 v0, 0x2735

    .line 2940
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2941
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2942
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2943
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2949
    return-void

    :array_0
    .array-data 4
        0x7
        0x9
        0xb
        0xd
        0xf
        0x11
        0x13
        0x15
    .end array-data
.end method

.method private registerCpuTimePerUid()V
    .locals 5

    .line 1668
    const/16 v0, 0x2719

    .line 1669
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1670
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1671
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1672
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1678
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method private registerCpuTimePerUidFreq()V
    .locals 5

    .line 1778
    const/16 v0, 0x271a

    .line 1779
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 1780
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1781
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1782
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1788
    return-void
.end method

.method private registerDangerousPermissionState()V
    .locals 5

    .line 3248
    const/16 v0, 0x2742

    .line 3249
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3255
    return-void
.end method

.method private registerDangerousPermissionStateSampled()V
    .locals 5

    .line 3916
    const/16 v0, 0x2753

    .line 3917
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3923
    return-void
.end method

.method private registerDataUsageBytesTransfer()V
    .locals 5

    .line 1523
    const/16 v0, 0x2762

    .line 1524
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1525
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1526
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1527
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1530
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1527
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1533
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerDebugElapsedClock()V
    .locals 5

    .line 3112
    const/16 v0, 0x273e

    .line 3113
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 3114
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 3115
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 3116
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3122
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private registerDebugFailingElapsedClock()V
    .locals 5

    .line 3147
    const/16 v0, 0x273f

    .line 3148
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 3149
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 3150
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 3151
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3157
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private registerDeviceCalculatedPowerBlameOther()V
    .locals 5

    .line 3083
    const/16 v0, 0x2739

    .line 3084
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3090
    return-void
.end method

.method private registerDeviceCalculatedPowerBlameUid()V
    .locals 5

    .line 3057
    const/16 v0, 0x2738

    .line 3058
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3064
    return-void
.end method

.method private registerDeviceCalculatedPowerUse()V
    .locals 5

    .line 3040
    const/16 v0, 0x2737

    .line 3041
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3047
    return-void
.end method

.method private registerDirectoryUsage()V
    .locals 5

    .line 2584
    const/16 v0, 0x272a

    .line 2585
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2591
    return-void
.end method

.method private registerDiskIO()V
    .locals 5

    .line 2867
    const/16 v0, 0x2730

    .line 2868
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2869
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2870
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2871
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2872
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2878
    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method

.method private registerDiskStats()V
    .locals 5

    .line 2524
    const/16 v0, 0x2729

    .line 2525
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2531
    return-void
.end method

.method private registerExternalStorageInfo()V
    .locals 5

    .line 3418
    const/16 v0, 0x2745

    .line 3419
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3425
    return-void
.end method

.method private registerFaceSettings()V
    .locals 5

    .line 3515
    const/16 v0, 0x274a

    .line 3516
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3522
    return-void
.end method

.method private registerFullBatteryCapacity()V
    .locals 5

    .line 3946
    const/16 v0, 0x2724

    .line 3947
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3953
    return-void
.end method

.method private registerInstalledIncrementalPackages()V
    .locals 5

    .line 4049
    const/16 v0, 0x2782

    .line 4050
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4056
    return-void
.end method

.method private registerIonHeapSize()V
    .locals 5

    .line 2241
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/ion/total_heaps_kb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2242
    return-void

    .line 2244
    :cond_0
    const/16 v0, 0x2756

    .line 2245
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2251
    return-void
.end method

.method private registerKernelWakelock()V
    .locals 5

    .line 1615
    const/16 v0, 0x2714

    .line 1616
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1622
    return-void
.end method

.method private registerKeystoreAtomWithOverflow()V
    .locals 5

    .line 4114
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2789

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4119
    return-void
.end method

.method private registerKeystoreCrashStats()V
    .locals 5

    .line 4146
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x278d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4151
    return-void
.end method

.method private registerKeystoreKeyCreationWithAuthInfo()V
    .locals 5

    .line 4098
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2787

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4103
    return-void
.end method

.method private registerKeystoreKeyCreationWithGeneralInfo()V
    .locals 5

    .line 4090
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2786

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4095
    return-void
.end method

.method private registerKeystoreKeyCreationWithPurposeModesInfo()V
    .locals 5

    .line 4106
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2788

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4111
    return-void
.end method

.method private registerKeystoreKeyOperationWithGeneralInfo()V
    .locals 5

    .line 4130
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x278b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4135
    return-void
.end method

.method private registerKeystoreKeyOperationWithPurposeAndModesInfo()V
    .locals 5

    .line 4122
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x278a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4127
    return-void
.end method

.method private registerKeystoreStorageStats()V
    .locals 5

    .line 4074
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2777

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4079
    return-void
.end method

.method private registerLooperStats()V
    .locals 5

    .line 2492
    const/16 v0, 0x2728

    .line 2493
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2494
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2495
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2496
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2502
    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method private registerMobileBytesTransfer()V
    .locals 5

    .line 1484
    const/16 v0, 0x2712

    .line 1485
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1486
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1487
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1488
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1494
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerMobileBytesTransferBackground()V
    .locals 5

    .line 1497
    const/16 v0, 0x2713

    .line 1498
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1499
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1500
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1501
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1507
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private registerModemActivityInfo()V
    .locals 5

    .line 1988
    const/16 v0, 0x271c

    .line 1989
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1995
    return-void
.end method

.method private registerNotificationRemoteViews()V
    .locals 5

    .line 3872
    const/16 v0, 0x2752

    .line 3873
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3879
    return-void
.end method

.method private registerNumFacesEnrolled()V
    .locals 5

    .line 2725
    const/16 v0, 0x2740

    .line 2726
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2732
    return-void
.end method

.method private registerNumFingerprintsEnrolled()V
    .locals 5

    .line 2715
    const/16 v0, 0x272f

    .line 2716
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2722
    return-void
.end method

.method private registerOemManagedBytesTransfer()V
    .locals 5

    .line 1536
    const/16 v0, 0x2774

    .line 1537
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1538
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1539
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1540
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1543
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1540
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1546
    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private registerPowerProfile()V
    .locals 5

    .line 2892
    const/16 v0, 0x2731

    .line 2893
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2899
    return-void
.end method

.method private registerProcStats()V
    .locals 5

    .line 2779
    const/16 v0, 0x272d

    .line 2780
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2786
    return-void
.end method

.method private registerProcStatsPkgProc()V
    .locals 5

    .line 2789
    const/16 v0, 0x2732

    .line 2790
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2796
    return-void
.end method

.method private registerProcessCpuTime()V
    .locals 5

    .line 2911
    const/16 v0, 0x2733

    .line 2913
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 2914
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2915
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2916
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2922
    return-void
.end method

.method private registerProcessDmabufMemory()V
    .locals 5

    .line 2281
    const/16 v0, 0x2779

    .line 2282
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2288
    return-void
.end method

.method private registerProcessMemoryHighWaterMark()V
    .locals 5

    .line 2135
    const/16 v0, 0x273a

    .line 2136
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2142
    return-void
.end method

.method private registerProcessMemorySnapshot()V
    .locals 5

    .line 2180
    const/16 v0, 0x2750

    .line 2181
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2187
    return-void
.end method

.method private registerProcessMemoryState()V
    .locals 5

    .line 2104
    const/16 v0, 0x271d

    .line 2105
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2106
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2107
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2108
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2114
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private registerProcessSystemIonHeapSize()V
    .locals 5

    .line 2260
    const/16 v0, 0x274d

    .line 2261
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2267
    return-void
.end method

.method private registerRemainingBatteryCapacity()V
    .locals 5

    .line 3936
    const/16 v0, 0x2723

    .line 3937
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3943
    return-void
.end method

.method private registerRkpErrorStats()V
    .locals 5

    .line 4138
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x278c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4143
    return-void
.end method

.method private registerRkpPoolStats()V
    .locals 5

    .line 4082
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2778

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4087
    return-void
.end method

.method private registerRoleHolder()V
    .locals 5

    .line 3198
    const/16 v0, 0x2741

    .line 3199
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3205
    return-void
.end method

.method private registerRuntimeAppOpAccessMessage()V
    .locals 5

    .line 3577
    const/16 v0, 0x2755

    .line 3578
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3584
    return-void
.end method

.method private registerSettingsStats()V
    .locals 5

    .line 4012
    const/16 v0, 0x2760

    .line 4013
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4019
    return-void
.end method

.method private registerSystemElapsedRealtime()V
    .locals 5

    .line 2070
    const/16 v0, 0x271e

    .line 2071
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 2072
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2073
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2074
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2075
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2081
    return-void
.end method

.method private registerSystemIonHeapSize()V
    .locals 5

    .line 2225
    const/16 v0, 0x2748

    .line 2226
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2232
    return-void
.end method

.method private registerSystemMemory()V
    .locals 5

    .line 2318
    const/16 v0, 0x276c

    .line 2319
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2325
    return-void
.end method

.method private registerSystemUptime()V
    .locals 5

    .line 2089
    const/16 v0, 0x271f

    .line 2090
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2096
    return-void
.end method

.method private registerTemperature()V
    .locals 5

    .line 2366
    const/16 v0, 0x2725

    .line 2367
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2373
    return-void
.end method

.method private registerTimeZoneDataInfo()V
    .locals 5

    .line 3344
    const/16 v0, 0x2744

    .line 3345
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3351
    return-void
.end method

.method private registerTimeZoneDetectorState()V
    .locals 5

    .line 3367
    const/16 v0, 0x2776

    .line 3368
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3374
    return-void
.end method

.method private registerVmStat()V
    .locals 5

    .line 2345
    const/16 v0, 0x2785

    .line 2346
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2352
    return-void
.end method

.method private registerWifiActivityInfo()V
    .locals 5

    .line 1940
    const/16 v0, 0x271b

    .line 1941
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1947
    return-void
.end method

.method private registerWifiBytesTransfer()V
    .locals 5

    .line 1106
    const/16 v0, 0x2710

    .line 1107
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1108
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1109
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1110
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1116
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerWifiBytesTransferBackground()V
    .locals 5

    .line 1471
    const/16 v0, 0x2711

    .line 1472
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1473
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1474
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1475
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1481
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private sampleAppOps(Ljava/util/List;Ljava/util/List;II)I
    .locals 24
    .param p3, "atomTag"    # I
    .param p4, "samplingRate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;II)I"
        }
    .end annotation

    .line 3631
    .local p1, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    .local p2, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v14, p4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    .line 3632
    .local v15, "nOps":I
    const/4 v4, 0x0

    move v12, v4

    .local v12, "i":I
    :goto_0
    if-ge v12, v15, :cond_2

    .line 3633
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3634
    .local v13, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    iget v4, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-lt v4, v14, :cond_0

    .line 3635
    move/from16 v22, v12

    move/from16 v23, v15

    goto/16 :goto_2

    .line 3638
    :cond_0
    const/16 v4, 0x275b

    const/16 v10, 0x9

    if-ne v3, v4, :cond_1

    .line 3639
    iget v4, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    iget-object v5, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    iget-object v7, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3640
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v7

    iget-object v8, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3641
    invoke-virtual {v8, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v8

    iget-object v11, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3642
    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v16

    move v3, v10

    move-wide/from16 v10, v16

    move/from16 v16, v12

    .end local v12    # "i":I
    .local v16, "i":I
    iget-object v12, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3643
    invoke-virtual {v12, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v17

    move-object v3, v13

    move/from16 v22, v16

    .end local v13    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .end local v16    # "i":I
    .local v3, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .local v22, "i":I
    move-wide/from16 v12, v17

    iget-object v14, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3644
    const/16 v2, 0x9

    invoke-virtual {v14, v2}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v16

    move/from16 v23, v15

    .end local v15    # "nOps":I
    .local v23, "nOps":I
    move-wide/from16 v14, v16

    iget-object v1, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3645
    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v16

    iget-object v1, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3646
    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v18

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3647
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v20

    .line 3639
    move/from16 v1, p3

    move-object v2, v3

    .end local v3    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .local v2, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    move/from16 v3, p3

    move/from16 v21, p4

    invoke-static/range {v3 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;IJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v3

    .local v3, "e":Landroid/util/StatsEvent;
    goto :goto_1

    .line 3650
    .end local v2    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .end local v3    # "e":Landroid/util/StatsEvent;
    .end local v22    # "i":I
    .end local v23    # "nOps":I
    .restart local v12    # "i":I
    .restart local v13    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .restart local v15    # "nOps":I
    :cond_1
    move v1, v3

    move/from16 v22, v12

    move-object v2, v13

    move/from16 v23, v15

    .end local v12    # "i":I
    .end local v13    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .end local v15    # "nOps":I
    .restart local v2    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .restart local v22    # "i":I
    .restart local v23    # "nOps":I
    iget v4, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    iget-object v5, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3651
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v6

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    const/16 v15, 0x9

    invoke-virtual {v3, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v7

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3652
    invoke-virtual {v3, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v9

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3653
    invoke-virtual {v3, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v11

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3654
    invoke-virtual {v3, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v13

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3655
    invoke-virtual {v3, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v16

    move v3, v15

    move-wide/from16 v15, v16

    iget-object v1, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3656
    invoke-virtual {v1, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v17

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3657
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    .line 3650
    move/from16 v3, p3

    invoke-static/range {v3 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJZ)Landroid/util/StatsEvent;

    move-result-object v3

    .line 3659
    .restart local v3    # "e":Landroid/util/StatsEvent;
    :goto_1
    move-object/from16 v1, p1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3632
    .end local v2    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .end local v3    # "e":Landroid/util/StatsEvent;
    :goto_2
    add-int/lit8 v12, v22, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v14, p4

    move/from16 v15, v23

    .end local v22    # "i":I
    .restart local v12    # "i":I
    goto/16 :goto_0

    .end local v23    # "nOps":I
    .restart local v15    # "nOps":I
    :cond_2
    move/from16 v22, v12

    move/from16 v23, v15

    .line 3661
    .end local v12    # "i":I
    .end local v15    # "nOps":I
    .restart local v23    # "nOps":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x320

    if-le v2, v3, :cond_3

    .line 3662
    move/from16 v2, p4

    mul-int/lit16 v3, v2, 0x1f4

    .line 3663
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x1

    .line 3662
    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    .line 3665
    .local v3, "adjustedSamplingRate":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 3666
    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v6

    return v6

    .line 3668
    .end local v3    # "adjustedSamplingRate":I
    :cond_3
    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p4

    return v2
.end method

.method private sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/BiConsumer;)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/net/NetworkStats$Entry;",
            "Landroid/net/NetworkStats$Entry;",
            ">;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .line 1442
    .local p2, "slicer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;>;"
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1444
    .local v0, "ret":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1445
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1446
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1447
    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 1448
    const/4 v3, 0x0

    iput v3, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1449
    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1450
    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1451
    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 1453
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1454
    .local v2, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1455
    invoke-virtual {p1, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1456
    if-eqz p2, :cond_0

    .line 1457
    invoke-interface {p2, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1460
    :cond_0
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1461
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1462
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1463
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1465
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1454
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1467
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method private sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 1397
    sget-object v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->INSTANCE:Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;

    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/BiConsumer;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 1404
    sget-object v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->INSTANCE:Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;

    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/BiConsumer;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 1412
    sget-object v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;

    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/BiConsumer;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    .locals 4
    .param p0, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3837
    .local p1, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    .local p2, "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 3838
    .local v0, "stream":Ljava/io/InputStream;
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 3839
    .local v2, "len":[I
    invoke-static {v0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    .line 3840
    .local v3, "stats":[B
    aget v1, v2, v1

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3841
    return-void
.end method


# virtual methods
.method initializePullersState()V
    .locals 7

    .line 771
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v1, "stats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 772
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 773
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 774
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 775
    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 776
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 777
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 780
    new-instance v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-direct {v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 783
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "stats_pull"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 784
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 787
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 788
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 789
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 790
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 793
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 794
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 797
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 798
    invoke-static {v0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 801
    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 803
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->init()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "StatsPullAtomService"

    const-string v3, "failed to initialize healthHalWrapper"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 810
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "op":I
    :goto_1
    const/16 v3, 0x74

    if-ge v2, v3, :cond_2

    .line 811
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, "perm":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 813
    goto :goto_2

    .line 817
    :cond_0
    :try_start_1
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 818
    .local v4, "permInfo":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v4}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 819
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 823
    :cond_1
    goto :goto_2

    .line 821
    .end local v4    # "permInfo":Landroid/content/pm/PermissionInfo;
    :catch_1
    move-exception v4

    .line 822
    .local v4, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 810
    .end local v3    # "perm":Ljava/lang/String;
    .end local v4    # "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 827
    .end local v2    # "op":I
    :cond_2
    new-instance v1, Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    const-string v2, "/system/bin/surfaceflinger"

    invoke-direct {v1, v2}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    .line 830
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    .line 831
    return-void
.end method

.method public synthetic lambda$getIKeystoreMetricsService$3$StatsPullAtomService()V
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 1027
    monitor-exit v0

    .line 1028
    return-void

    .line 1027
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getINotificationManagerService$5$StatsPullAtomService()V
    .locals 2

    .line 1070
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1072
    monitor-exit v0

    .line 1073
    return-void

    .line 1072
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getIProcessStatsService$6$StatsPullAtomService()V
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1093
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1094
    monitor-exit v0

    .line 1095
    return-void

    .line 1094
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getIStoragedService$4$StatsPullAtomService()V
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1050
    monitor-exit v0

    .line 1051
    return-void

    .line 1050
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getIThermalService$2$StatsPullAtomService()V
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 1005
    monitor-exit v0

    .line 1006
    return-void

    .line 1005
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onBootPhase$0$StatsPullAtomService()V
    .locals 0

    .line 756
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializeNativePullers()V

    .line 757
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializePullersState()V

    .line 758
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPullers()V

    .line 759
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerEventListeners()V

    .line 760
    return-void
.end method

.method public synthetic lambda$onBootPhase$1$StatsPullAtomService()V
    .locals 0

    .line 763
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initAndRegisterNetworkStatsPullers()V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 753
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 754
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 755
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 761
    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 763
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 765
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 749
    return-void
.end method

.method parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 8
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4227
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4228
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 4230
    const/4 v0, 0x1

    return v0

    .line 4232
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v4

    .line 4233
    .local v4, "atom":Landroid/security/metrics/Keystore2AtomWithOverflow;
    const/16 v5, 0x2789

    iget v6, v4, Landroid/security/metrics/Keystore2AtomWithOverflow;->atom_id:I

    iget v7, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static {v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4227
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/Keystore2AtomWithOverflow;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4237
    :cond_1
    return v1
.end method

.method parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 7
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4287
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4288
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    .line 4289
    const/4 v0, 0x1

    return v0

    .line 4291
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v4

    .line 4292
    .local v4, "atom":Landroid/security/metrics/CrashStats;
    const/16 v5, 0x278d

    iget v6, v4, Landroid/security/metrics/CrashStats;->count_of_crash_events:I

    invoke-static {v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4287
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/CrashStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4295
    :cond_1
    return v1
.end method

.method parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 10
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4195
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4196
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 4197
    const/4 v0, 0x1

    return v0

    .line 4199
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v4

    .line 4200
    .local v4, "atom":Landroid/security/metrics/KeyCreationWithAuthInfo;
    const/16 v5, 0x2787

    iget v6, v4, Landroid/security/metrics/KeyCreationWithAuthInfo;->user_auth_type:I

    iget v7, v4, Landroid/security/metrics/KeyCreationWithAuthInfo;->log10_auth_key_timeout_seconds:I

    iget v8, v4, Landroid/security/metrics/KeyCreationWithAuthInfo;->security_level:I

    iget v9, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4195
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/KeyCreationWithAuthInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4204
    :cond_1
    return v1
.end method

.method parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 13
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4180
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4181
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 4183
    const/4 v0, 0x1

    return v0

    .line 4185
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v4

    .line 4186
    .local v4, "atom":Landroid/security/metrics/KeyCreationWithGeneralInfo;
    const/16 v5, 0x2786

    iget v6, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    iget v7, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    iget v8, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    iget v9, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    iget v10, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    iget-boolean v11, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    iget v12, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v5 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIZI)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4180
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/KeyCreationWithGeneralInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4191
    :cond_1
    return v1
.end method

.method parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 12
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4210
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4211
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 4213
    const/4 v0, 0x1

    return v0

    .line 4215
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 4216
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v4

    .line 4217
    .local v4, "atom":Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    const/16 v5, 0x2788

    iget v6, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->algorithm:I

    iget v7, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->purpose_bitmap:I

    iget v8, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v9, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v10, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v11, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4210
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4223
    :cond_1
    return v1
.end method

.method parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 11
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4259
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4260
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    .line 4262
    const/4 v0, 0x1

    return v0

    .line 4264
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v4

    .line 4265
    .local v4, "atom":Landroid/security/metrics/KeyOperationWithGeneralInfo;
    const/16 v5, 0x278b

    iget v6, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->outcome:I

    iget v7, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->error_code:I

    iget-boolean v8, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->key_upgraded:Z

    iget v9, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->security_level:I

    iget v10, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4259
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/KeyOperationWithGeneralInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4269
    :cond_1
    return v1
.end method

.method parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 11
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4242
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4243
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    .line 4245
    const/4 v0, 0x1

    return v0

    .line 4247
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 4248
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v4

    .line 4249
    .local v4, "atom":Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    const/16 v5, 0x278a

    iget v6, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->purpose:I

    iget v7, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v8, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v9, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v10, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4242
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4254
    :cond_1
    return v1
.end method

.method parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 10
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4154
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4155
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    if-eqz v4, :cond_0

    .line 4156
    const/4 v0, 0x1

    return v0

    .line 4158
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v4

    .line 4159
    .local v4, "atom":Landroid/security/metrics/StorageStats;
    const/16 v5, 0x2777

    iget v6, v4, Landroid/security/metrics/StorageStats;->storage_type:I

    iget v7, v4, Landroid/security/metrics/StorageStats;->size:I

    iget v8, v4, Landroid/security/metrics/StorageStats;->unused_size:I

    int-to-long v8, v8

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4154
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/StorageStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4163
    :cond_1
    return v1
.end method

.method parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 8
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4274
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4275
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 4276
    const/4 v0, 0x1

    return v0

    .line 4278
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v4

    .line 4279
    .local v4, "atom":Landroid/security/metrics/RkpErrorStats;
    const/16 v5, 0x278c

    iget v6, v4, Landroid/security/metrics/RkpErrorStats;->rkpError:I

    iget v7, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static {v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4274
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/RkpErrorStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4282
    :cond_1
    return v1
.end method

.method parseRkpPoolStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 11
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4167
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4168
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 4169
    return v5

    .line 4171
    :cond_0
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpPoolStats()Landroid/security/metrics/RkpPoolStats;

    move-result-object v4

    .line 4172
    .local v4, "atom":Landroid/security/metrics/RkpPoolStats;
    const/16 v5, 0x2778

    iget v6, v4, Landroid/security/metrics/RkpPoolStats;->security_level:I

    iget v7, v4, Landroid/security/metrics/RkpPoolStats;->expiring:I

    iget v8, v4, Landroid/security/metrics/RkpPoolStats;->unassigned:I

    iget v9, v4, Landroid/security/metrics/RkpPoolStats;->attested:I

    iget v10, v4, Landroid/security/metrics/RkpPoolStats;->total:I

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4167
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/RkpPoolStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4176
    :cond_1
    return v1
.end method

.method pullAppOpsLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3603
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v0, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3605
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 3607
    .local v3, "appOps":Landroid/app/AppOpsManager;
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3608
    .local v4, "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v6, 0x9

    .line 3609
    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    .line 3610
    .local v5, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;

    invoke-direct {v7, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3611
    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 3614
    .local v6, "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    const/16 v7, 0x64

    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v8

    .line 3615
    .local v8, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    invoke-direct {p0, p2, v8, p1, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v9

    .line 3616
    .local v9, "samplingRate":I
    if-eq v9, v7, :cond_0

    .line 3617
    const-string v7, "Atom 10060 downsampled - too many dimensions"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3624
    .end local v3    # "appOps":Landroid/app/AppOpsManager;
    .end local v4    # "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v5    # "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .end local v6    # "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v8    # "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    .end local v9    # "samplingRate":I
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3625
    nop

    .line 3626
    const/4 v0, 0x0

    return v0

    .line 3619
    :catchall_0
    move-exception v3

    .line 3621
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v4, "Could not read appops"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3622
    const/4 v0, 0x1

    .line 3624
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3622
    return v0

    .line 3624
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3625
    throw v0
.end method

.method pullAppSizeLocked(ILjava/util/List;)I
    .locals 24
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2624
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v1, "StatsPullAtomService"

    const/4 v2, 0x1

    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2625
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2626
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "queryTime"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 2627
    .local v15, "cache_time":J
    const-string v4, "packageNames"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2628
    .local v4, "pkg_names":Lorg/json/JSONArray;
    const-string v7, "appSizes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v13, v7

    .line 2629
    .local v13, "app_sizes":Lorg/json/JSONArray;
    const-string v7, "appDataSizes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v14, v7

    .line 2630
    .local v14, "app_data_sizes":Lorg/json/JSONArray;
    const-string v7, "cacheSizes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v11, v7

    .line 2632
    .local v11, "app_cache_sizes":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v12, v7

    .line 2633
    .local v12, "length":I
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v12, :cond_2

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 2634
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eq v7, v12, :cond_0

    move-object/from16 v8, p2

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    goto :goto_1

    .line 2638
    :cond_0
    const/4 v7, 0x0

    move v9, v7

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_1

    .line 2639
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2640
    invoke-virtual {v13, v9, v5, v6}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v17

    .line 2641
    invoke-virtual {v14, v9, v5, v6}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v19

    .line 2642
    invoke-virtual {v11, v9, v5, v6}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v21

    .line 2639
    move/from16 v7, p1

    move/from16 v23, v9

    .end local v9    # "i":I
    .local v23, "i":I
    move-wide/from16 v9, v17

    move-object/from16 v17, v11

    move/from16 v18, v12

    .end local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v12    # "length":I
    .local v17, "app_cache_sizes":Lorg/json/JSONArray;
    .local v18, "length":I
    move-wide/from16 v11, v19

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .end local v13    # "app_sizes":Lorg/json/JSONArray;
    .end local v14    # "app_data_sizes":Lorg/json/JSONArray;
    .local v19, "app_sizes":Lorg/json/JSONArray;
    .local v20, "app_data_sizes":Lorg/json/JSONArray;
    move-wide/from16 v13, v21

    invoke-static/range {v7 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;JJJJ)Landroid/util/StatsEvent;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, p2

    :try_start_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2638
    add-int/lit8 v9, v23, 0x1

    move-object/from16 v11, v17

    move/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    .end local v23    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .end local v17    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v18    # "length":I
    .end local v19    # "app_sizes":Lorg/json/JSONArray;
    .end local v20    # "app_data_sizes":Lorg/json/JSONArray;
    .restart local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .restart local v12    # "length":I
    .restart local v13    # "app_sizes":Lorg/json/JSONArray;
    .restart local v14    # "app_data_sizes":Lorg/json/JSONArray;
    :cond_1
    move-object/from16 v8, p2

    move/from16 v23, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .line 2647
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "pkg_names":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v12    # "length":I
    .end local v13    # "app_sizes":Lorg/json/JSONArray;
    .end local v14    # "app_data_sizes":Lorg/json/JSONArray;
    .end local v15    # "cache_time":J
    nop

    .line 2648
    const/4 v0, 0x0

    return v0

    .line 2633
    .restart local v0    # "jsonStr":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "pkg_names":Lorg/json/JSONArray;
    .restart local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .restart local v12    # "length":I
    .restart local v13    # "app_sizes":Lorg/json/JSONArray;
    .restart local v14    # "app_data_sizes":Lorg/json/JSONArray;
    .restart local v15    # "cache_time":J
    :cond_2
    move-object/from16 v8, p2

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .line 2635
    .end local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v12    # "length":I
    .end local v13    # "app_sizes":Lorg/json/JSONArray;
    .end local v14    # "app_data_sizes":Lorg/json/JSONArray;
    .restart local v17    # "app_cache_sizes":Lorg/json/JSONArray;
    .restart local v18    # "length":I
    .restart local v19    # "app_sizes":Lorg/json/JSONArray;
    .restart local v20    # "app_data_sizes":Lorg/json/JSONArray;
    :goto_1
    const-string v5, "formatting error in diskstats cache file!"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2636
    return v2

    .line 2644
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "pkg_names":Lorg/json/JSONArray;
    .end local v15    # "cache_time":J
    .end local v17    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v18    # "length":I
    .end local v19    # "app_sizes":Lorg/json/JSONArray;
    .end local v20    # "app_data_sizes":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v8, p2

    .line 2645
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v3, "Unable to read diskstats cache file within pullAppSize"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    return v2
.end method

.method pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3473
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 3474
    const/4 v0, 0x1

    return v0

    .line 3477
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3478
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3479
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 3480
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 3481
    .local v5, "storageUuid":Ljava/util/UUID;
    if-nez v5, :cond_1

    .line 3482
    goto :goto_0

    .line 3485
    :cond_1
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 3486
    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3485
    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v6

    .line 3487
    .local v6, "volumeInfo":Landroid/os/storage/VolumeInfo;
    if-nez v6, :cond_2

    .line 3488
    goto :goto_0

    .line 3491
    :cond_2
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v7

    .line 3492
    .local v7, "diskInfo":Landroid/os/storage/DiskInfo;
    if-nez v7, :cond_3

    .line 3493
    goto :goto_0

    .line 3496
    :cond_3
    const/4 v8, -0x1

    .line 3497
    .local v8, "externalStorageType":I
    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3498
    const/4 v8, 0x1

    goto :goto_1

    .line 3499
    :cond_4
    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3500
    const/4 v8, 0x2

    goto :goto_1

    .line 3501
    :cond_5
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3502
    const/4 v8, 0x3

    .line 3506
    :cond_6
    :goto_1
    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    .line 3507
    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3510
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "storageUuid":Ljava/util/UUID;
    .end local v6    # "volumeInfo":Landroid/os/storage/VolumeInfo;
    .end local v7    # "diskInfo":Landroid/os/storage/DiskInfo;
    .end local v8    # "externalStorageType":I
    :cond_7
    goto :goto_0

    .line 3511
    :cond_8
    return v1
.end method

.method pullAttributedAppOpsLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3682
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3684
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 3685
    .local v2, "appOps":Landroid/app/AppOpsManager;
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3686
    .local v3, "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v5, 0x9

    .line 3687
    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v4

    .line 3688
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v4

    .line 3690
    .local v4, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;

    invoke-direct {v6, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3691
    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 3694
    .local v5, "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    iget v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    if-nez v6, :cond_0

    .line 3695
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$3;

    invoke-direct {v7, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$3;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const-wide/32 v8, 0xafc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3708
    const/16 v6, 0x64

    iput v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3711
    :cond_0
    iget v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3712
    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v6

    .line 3714
    .local v6, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    iget v7, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-direct {p0, p2, v6, p1, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v7

    .line 3716
    .local v7, "newSamplingRate":I
    iget v8, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3722
    .end local v2    # "appOps":Landroid/app/AppOpsManager;
    .end local v3    # "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v4    # "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .end local v5    # "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v6    # "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    .end local v7    # "newSamplingRate":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3723
    nop

    .line 3724
    const/4 v2, 0x0

    return v2

    .line 3717
    :catchall_0
    move-exception v2

    .line 3719
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "StatsPullAtomService"

    const-string v4, "Could not read appops"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3720
    const/4 v3, 0x1

    .line 3722
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3720
    return v3

    .line 3722
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3723
    throw v2
.end method

.method pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I
    .locals 7
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2474
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2475
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2476
    .local v0, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    if-nez v0, :cond_0

    .line 2477
    const-string v1, "StatsPullAtomService"

    const-string v2, "failed to get binderStats"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    const/4 v1, 0x1

    return v1

    .line 2481
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 2484
    .local v1, "exceptionStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2485
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 2486
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {p1, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;J)Landroid/util/StatsEvent;

    move-result-object v4

    .line 2485
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2487
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 2488
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method pullBinderCallsStatsLocked(ILjava/util/List;)I
    .locals 30
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2443
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2444
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2445
    .local v0, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    if-nez v0, :cond_0

    .line 2446
    const-string v1, "StatsPullAtomService"

    const-string v2, "failed to get binderStats"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    const/4 v1, 0x1

    return v1

    .line 2450
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v1

    .line 2451
    .local v1, "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    .line 2452
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 2453
    .local v3, "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iget v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    iget-object v6, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v10, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-wide v12, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v14, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    .end local v0    # "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    .end local v1    # "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .local v28, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    .local v29, "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-wide v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    move-wide/from16 v16, v0

    iget-wide v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    move-wide/from16 v18, v0

    iget-wide v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    move-wide/from16 v20, v0

    iget-wide v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    move-wide/from16 v22, v0

    iget-wide v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    move-wide/from16 v24, v0

    iget-boolean v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    move/from16 v26, v0

    iget v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    move/from16 v27, v0

    move/from16 v4, p1

    invoke-static/range {v4 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;JJJJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2459
    .end local v3    # "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    goto :goto_0

    .line 2460
    .end local v28    # "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    .end local v29    # "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v0    # "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    .restart local v1    # "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_1
    move-object/from16 v28, v0

    .end local v0    # "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    .restart local v28    # "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    const/4 v0, 0x0

    return v0
.end method

.method pullBluetoothActivityInfoLocked(ILjava/util/List;)I
    .locals 14
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2058
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 2059
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-nez v0, :cond_0

    .line 2060
    const/4 v1, 0x1

    return v1

    .line 2062
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v3

    .line 2063
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v6

    .line 2064
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v10

    .line 2065
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v12

    .line 2062
    move v2, p1

    invoke-static/range {v2 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2066
    const/4 v1, 0x0

    return v1
.end method

.method pullBluetoothBytesTransferLocked(ILjava/util/List;)I
    .locals 12
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1603
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 1604
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1607
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1608
    .local v5, "traffic":Landroid/bluetooth/UidTraffic;
    nop

    .line 1609
    invoke-virtual {v5}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v7

    invoke-virtual {v5}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v10

    .line 1608
    move v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    .end local v5    # "traffic":Landroid/bluetooth/UidTraffic;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1611
    :cond_1
    return v3

    .line 1605
    :cond_2
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method pullBuildInformationLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3191
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->TAGS:Ljava/lang/String;

    move v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3194
    const/4 v0, 0x0

    return v0
.end method

.method pullCategorySizeLocked(ILjava/util/List;)I
    .locals 18
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p2

    .line 2663
    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2664
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2665
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "queryTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2668
    .local v10, "cacheTime":J
    const/4 v7, 0x1

    const-string v3, "appSize"

    .line 2670
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2668
    move/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2673
    const/4 v13, 0x2

    const-string v3, "appDataSize"

    .line 2675
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2673
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2678
    const/4 v13, 0x3

    const-string v3, "cacheSize"

    .line 2680
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2678
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2683
    const/4 v13, 0x4

    const-string v3, "photosSize"

    .line 2685
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2683
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2687
    const/4 v13, 0x5

    const-string v3, "videosSize"

    .line 2689
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2687
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2691
    const/4 v13, 0x6

    const-string v3, "audioSize"

    .line 2693
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2691
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2695
    const/4 v13, 0x7

    const-string v3, "downloadsSize"

    .line 2697
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2695
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2700
    const/16 v13, 0x8

    const-string v3, "systemSize"

    .line 2702
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2700
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2704
    const/16 v13, 0x9

    const-string v3, "otherSize"

    .line 2706
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2704
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2710
    nop

    .line 2711
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v10    # "cacheTime":J
    const/4 v0, 0x0

    return v0

    .line 2707
    :catch_0
    move-exception v0

    .line 2708
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StatsPullAtomService"

    const-string v3, "Unable to read diskstats cache file within pullCategorySize"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const/4 v2, 0x1

    return v2
.end method

.method pullCooldownDeviceLocked(ILjava/util/List;)I
    .locals 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2408
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 2409
    .local v0, "thermalService":Landroid/os/IThermalService;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2410
    return v1

    .line 2412
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2414
    .local v2, "callingToken":J
    :try_start_0
    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object v4

    .line 2415
    .local v4, "devices":[Landroid/os/CoolingDevice;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    .line 2416
    .local v8, "device":Landroid/os/CoolingDevice;
    nop

    .line 2417
    invoke-virtual {v8}, Landroid/os/CoolingDevice;->getType()I

    move-result v9

    invoke-virtual {v8}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/os/CoolingDevice;->getValue()J

    move-result-wide v11

    long-to-int v11, v11

    .line 2416
    invoke-static {p1, v9, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2415
    nop

    .end local v8    # "device":Landroid/os/CoolingDevice;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2424
    .end local v4    # "devices":[Landroid/os/CoolingDevice;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2425
    nop

    .line 2426
    return v6

    .line 2424
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2419
    :catch_0
    move-exception v4

    .line 2421
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "StatsPullAtomService"

    const-string v6, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2422
    nop

    .line 2424
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2422
    return v1

    .line 2424
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2425
    throw v1
.end method

.method pullCpuActiveTimeLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1908
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1911
    const/4 v0, 0x0

    return v0
.end method

.method pullCpuClusterTimeLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1930
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1936
    const/4 v0, 0x0

    return v0
.end method

.method pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I
    .locals 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1846
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/os/BatteryStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    .line 1847
    invoke-virtual {v0}, Landroid/os/BatteryStatsInternal;->getSystemServiceCpuThreadTimes()Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    move-result-object v0

    .line 1848
    .local v0, "times":Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1849
    return v1

    .line 1852
    :cond_0
    const/4 v2, 0x2

    iget-object v3, v0, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 1855
    iget-object v2, v0, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 1859
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    invoke-virtual {v1}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->readAbsolute()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object v1

    .line 1860
    .local v1, "surfaceFlingerTimes":Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    if-eqz v2, :cond_2

    .line 1861
    iget-object v2, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    array-length v2, v2

    new-array v2, v2, [J

    .line 1863
    .local v2, "surfaceFlingerTimesUs":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 1864
    iget-object v4, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    aget-wide v4, v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 1863
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1866
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x3

    invoke-static {p1, p2, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 1871
    .end local v2    # "surfaceFlingerTimesUs":[J
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I
    .locals 24
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1707
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 1708
    .local v1, "powerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v8

    .line 1709
    .local v8, "freqsClusters":[I
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v9

    .line 1710
    .local v9, "clusters":I
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v10

    .line 1711
    .local v10, "freqs":[J
    array-length v2, v10

    new-array v11, v2, [D

    .line 1714
    .local v11, "freqsPowers":[D
    const/4 v2, 0x0

    .line 1715
    .local v2, "freqClusterIndex":I
    const/4 v3, -0x1

    .line 1716
    .local v3, "lastCluster":I
    const/4 v4, 0x0

    .local v4, "freqIndex":I
    :goto_0
    array-length v5, v10

    if-ge v4, v5, :cond_1

    .line 1717
    aget v5, v8, v4

    .line 1718
    .local v5, "cluster":I
    if-eq v5, v3, :cond_0

    .line 1719
    const/4 v2, 0x0

    .line 1721
    :cond_0
    move v3, v5

    .line 1723
    nop

    .line 1724
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v6

    aput-wide v6, v11, v4

    .line 1716
    .end local v5    # "cluster":I
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1730
    .end local v2    # "freqClusterIndex":I
    .end local v3    # "lastCluster":I
    .end local v4    # "freqIndex":I
    :cond_1
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v12, v2

    .line 1731
    .local v12, "aggregated":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[D>;"
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v14, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;

    move-object v2, v14

    move-object v3, v12

    move v4, v9

    move-object v5, v8

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;-><init>(Landroid/util/SparseArray;I[I[J[D)V

    invoke-virtual {v13, v14}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1760
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1761
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1762
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1763
    .local v4, "uid":I
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 1764
    .local v5, "values":[D
    const/4 v6, 0x0

    .local v6, "cluster":I
    :goto_2
    if-ge v6, v9, :cond_2

    .line 1765
    mul-int/lit8 v7, v6, 0x3

    aget-wide v13, v5, v7

    const-wide v15, 0x412e848000000000L    # 1000000.0

    div-double/2addr v13, v15

    double-to-long v14, v13

    mul-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v22, v1

    .end local v1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .local v22, "powerProfile":Lcom/android/internal/os/PowerProfile;
    aget-wide v0, v5, v7

    double-to-long v0, v0

    mul-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-wide v16, v5, v7

    const-wide v18, 0x408f400000000000L    # 1000.0

    move-object/from16 v23, v8

    .end local v8    # "freqsClusters":[I
    .local v23, "freqsClusters":[I
    div-double v7, v16, v18

    double-to-long v7, v7

    move/from16 v13, p1

    move-wide/from16 v16, v14

    move v14, v4

    move v15, v6

    move-wide/from16 v18, v0

    move-wide/from16 v20, v7

    invoke-static/range {v13 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1764
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v8, v23

    goto :goto_2

    .end local v22    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v23    # "freqsClusters":[I
    .restart local v1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v8    # "freqsClusters":[I
    :cond_2
    move-object/from16 v22, v1

    move-object/from16 v23, v8

    move-object/from16 v1, p2

    .line 1761
    .end local v1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v4    # "uid":I
    .end local v5    # "values":[D
    .end local v6    # "cluster":I
    .end local v8    # "freqsClusters":[I
    .restart local v22    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v23    # "freqsClusters":[I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    goto :goto_1

    .line 1772
    .end local v3    # "i":I
    .end local v22    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v23    # "freqsClusters":[I
    .restart local v1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v8    # "freqsClusters":[I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I
    .locals 9
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1652
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v0

    .line 1653
    .local v0, "freqsClusters":[I
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v1

    .line 1654
    .local v1, "freqs":[J
    invoke-static {}, Lcom/android/internal/os/KernelCpuTotalBpfMapReader;->read()[J

    move-result-object v2

    .line 1655
    .local v2, "timesMs":[J
    if-nez v2, :cond_0

    .line 1656
    const/4 v3, 0x1

    return v3

    .line 1658
    :cond_0
    const/4 v3, 0x0

    .local v3, "freqIndex":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 1659
    aget v4, v0, v3

    .line 1660
    .local v4, "cluster":I
    aget-wide v5, v1, v3

    long-to-int v5, v5

    .line 1661
    .local v5, "freq":I
    aget-wide v6, v2, v3

    .line 1662
    .local v6, "timeMs":J
    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1658
    .end local v4    # "cluster":I
    .end local v5    # "freq":I
    .end local v6    # "timeMs":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1664
    .end local v3    # "freqIndex":I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I
    .locals 37
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2952
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const-string v2, "StatsPullAtomService"

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 2953
    const-string v1, "mKernelCpuThreadReader is null"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    return v3

    .line 2956
    :cond_0
    nop

    .line 2957
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    move-result-object v1

    .line 2958
    .local v1, "processCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    if-nez v1, :cond_1

    .line 2959
    const-string v4, "processCpuUsages is null"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    return v3

    .line 2962
    :cond_1
    iget-object v4, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    invoke-virtual {v4}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    move-result-object v4

    .line 2963
    .local v4, "cpuFrequencies":[I
    array-length v5, v4

    const/16 v6, 0x8

    if-le v5, v6, :cond_2

    .line 2964
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected maximum 8 frequencies, but got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2966
    .local v5, "message":Ljava/lang/String;
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    return v3

    .line 2969
    .end local v5    # "message":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v5, v7, :cond_7

    .line 2970
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 2971
    .local v7, "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    iget-object v9, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 2973
    .local v9, "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 2974
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 2975
    .local v11, "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    iget-object v12, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v12, v12

    array-length v13, v4

    if-eq v12, v13, :cond_3

    .line 2976
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected number of usage times, expected "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " but got "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2979
    .local v6, "message":Ljava/lang/String;
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    return v3

    .line 2983
    .end local v6    # "message":Ljava/lang/String;
    :cond_3
    new-array v12, v6, [I

    .line 2984
    .local v12, "frequencies":[I
    new-array v13, v6, [I

    .line 2985
    .local v13, "usageTimesMillis":[I
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    if-ge v14, v6, :cond_5

    .line 2986
    array-length v15, v4

    if-ge v14, v15, :cond_4

    .line 2987
    aget v15, v4, v14

    aput v15, v12, v14

    .line 2988
    iget-object v15, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    aget v15, v15, v14

    aput v15, v13, v14

    goto :goto_3

    .line 2993
    :cond_4
    aput v8, v12, v14

    .line 2994
    aput v8, v13, v14

    .line 2985
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2997
    .end local v14    # "k":I
    :cond_5
    iget v14, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    move/from16 v16, v14

    iget v14, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    move/from16 v17, v14

    iget v14, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    move/from16 v18, v14

    iget-object v14, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    move-object/from16 v19, v14

    iget-object v14, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    move-object/from16 v20, v14

    aget v21, v12, v8

    aget v22, v13, v8

    aget v23, v12, v3

    aget v24, v13, v3

    const/4 v14, 0x2

    aget v25, v12, v14

    aget v26, v13, v14

    const/4 v14, 0x3

    aget v27, v12, v14

    aget v28, v13, v14

    const/4 v14, 0x4

    aget v29, v12, v14

    aget v30, v13, v14

    const/4 v14, 0x5

    aget v31, v12, v14

    aget v32, v13, v14

    const/4 v14, 0x6

    aget v33, v12, v14

    aget v34, v13, v14

    const/4 v14, 0x7

    aget v35, v12, v14

    aget v36, v13, v14

    move/from16 v15, p1

    invoke-static/range {v15 .. v36}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2973
    .end local v11    # "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    .end local v12    # "frequencies":[I
    .end local v13    # "usageTimesMillis":[I
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v15, p2

    .line 2969
    .end local v7    # "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    .end local v9    # "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    .end local v10    # "j":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v15, p2

    .line 3006
    .end local v5    # "i":I
    return v8
.end method

.method pullCpuTimePerUidFreqLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1792
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1793
    .local v0, "aggregated":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[J>;"
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1816
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1817
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1818
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1819
    .local v3, "uid":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 1820
    .local v4, "aggCpuFreqTimeMs":[J
    const/4 v5, 0x0

    .local v5, "freqIndex":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 1821
    aget-wide v6, v4, v5

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 1822
    aget-wide v6, v4, v5

    invoke-static {p1, v3, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1820
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1817
    .end local v3    # "uid":I
    .end local v4    # "aggCpuFreqTimeMs":[J
    .end local v5    # "freqIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1827
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method pullCpuTimePerUidLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1681
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1686
    const/4 v0, 0x0

    return v0
.end method

.method pullDangerousPermissionStateLocked(ILjava/util/List;)I
    .locals 30
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3258
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    move/from16 v14, p1

    const-string v15, "android.permission."

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3259
    .local v16, "token":J
    const-string v0, "permissions"

    const-string v2, "dangerous_permission_state_sample_rate"

    const v3, 0x3c75c28f    # 0.015f

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v18

    .line 3261
    .local v18, "samplingRate":F
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v13, v0

    .line 3263
    .local v13, "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v19, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v12, v0

    .line 3265
    .local v12, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    .line 3267
    .local v11, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    move v10, v0

    .line 3268
    .local v10, "numUsers":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "userNum":I
    :goto_0
    if-ge v9, v10, :cond_9

    .line 3269
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    move-object v6, v0

    .line 3271
    .local v6, "user":Landroid/os/UserHandle;
    const/16 v0, 0x1000

    .line 3272
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 3271
    invoke-virtual {v12, v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 3274
    .local v5, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    .line 3275
    .local v4, "numPkgs":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "pkgNum":I
    :goto_1
    if-ge v3, v4, :cond_8

    .line 3276
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v2, v0

    .line 3278
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3279
    move-object/from16 v8, p2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    const/16 v25, 0x0

    goto/16 :goto_8

    .line 3282
    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3284
    move-object/from16 v8, p2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    const/16 v25, 0x0

    goto/16 :goto_8

    .line 3286
    :cond_1
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3288
    const/16 v0, 0x2753

    if-ne v14, v0, :cond_2

    .line 3289
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float v0, v0, v18

    if-lez v0, :cond_2

    .line 3290
    move-object/from16 v8, p2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    const/16 v25, 0x0

    goto/16 :goto_8

    .line 3334
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkgNum":I
    .end local v4    # "numPkgs":I
    .end local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v9    # "userNum":I
    .end local v10    # "numUsers":I
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v20, v13

    goto/16 :goto_9

    .line 3293
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pkgNum":I
    .restart local v4    # "numPkgs":I
    .restart local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "user":Landroid/os/UserHandle;
    .restart local v9    # "userNum":I
    .restart local v10    # "numUsers":I
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_2
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v0, v0

    move v7, v0

    .line 3294
    .local v7, "numPerms":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "permNum":I
    :goto_2
    if-ge v8, v7, :cond_7

    .line 3295
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v21, v0

    .line 3298
    .local v21, "permName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3300
    .local v22, "permissionFlags":I
    move/from16 v20, v9

    move-object/from16 v1, v21

    const/4 v9, 0x0

    .end local v9    # "userNum":I
    .end local v21    # "permName":Ljava/lang/String;
    .local v1, "permName":Ljava/lang/String;
    .local v20, "userNum":I
    :try_start_3
    invoke-virtual {v12, v1, v9}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3301
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    :try_start_4
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3302
    invoke-virtual {v12, v1, v9, v6}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v9
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v23, v7

    .end local v7    # "numPerms":I
    .local v23, "numPerms":I
    move v7, v9

    .line 3305
    .end local v22    # "permissionFlags":I
    .local v7, "permissionFlags":I
    nop

    .line 3307
    :try_start_5
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v9, :cond_3

    .line 3308
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .line 3312
    :cond_3
    const/16 v9, 0x2742

    if-ne v14, v9, :cond_5

    .line 3313
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v22, ""

    move/from16 v24, v3

    .end local v3    # "pkgNum":I
    .local v24, "pkgNum":I
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v8

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    move/from16 v25, v19

    goto :goto_3

    :cond_4
    const/16 v25, 0x0

    .line 3318
    :goto_3
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    .line 3319
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v26

    or-int v26, v3, v26

    .line 3313
    move-object v3, v2

    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    move/from16 v2, p1

    move-object v14, v3

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .local v14, "pkg":Landroid/content/pm/PackageInfo;
    move-object v3, v1

    move/from16 v27, v4

    .end local v4    # "numPkgs":I
    .local v27, "numPkgs":I
    move v4, v9

    move-object/from16 v28, v5

    .end local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v28, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v5, v22

    move-object/from16 v29, v6

    .end local v6    # "user":Landroid/os/UserHandle;
    .local v29, "user":Landroid/os/UserHandle;
    move/from16 v6, v25

    move/from16 v21, v8

    const/16 v25, 0x0

    .end local v8    # "permNum":I
    .local v21, "permNum":I
    move/from16 v8, v26

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;ILjava/lang/String;ZII)Landroid/util/StatsEvent;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, v2

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move/from16 v5, v20

    move-object/from16 v20, v13

    .local v2, "e":Landroid/util/StatsEvent;
    goto :goto_5

    .line 3322
    .end local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v21    # "permNum":I
    .end local v24    # "pkgNum":I
    .end local v27    # "numPkgs":I
    .end local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v29    # "user":Landroid/os/UserHandle;
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "pkgNum":I
    .restart local v4    # "numPkgs":I
    .restart local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "user":Landroid/os/UserHandle;
    .restart local v8    # "permNum":I
    :cond_5
    move-object v14, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v21, v8

    const/16 v25, 0x0

    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkgNum":I
    .end local v4    # "numPkgs":I
    .end local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v8    # "permNum":I
    .restart local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "permNum":I
    .restart local v24    # "pkgNum":I
    .restart local v27    # "numPkgs":I
    .restart local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v29    # "user":Landroid/os/UserHandle;
    :try_start_7
    iget-object v2, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v21

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    move/from16 v3, v19

    goto :goto_4

    :cond_6
    move/from16 v3, v25

    .line 3327
    :goto_4
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v4

    .line 3328
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    or-int/2addr v4, v5

    .line 3322
    move/from16 v8, p1

    move/from16 v5, v20

    .end local v20    # "userNum":I
    .local v5, "userNum":I
    move-object v9, v1

    move v6, v10

    .end local v10    # "numUsers":I
    .local v6, "numUsers":I
    move v10, v2

    move-object v2, v11

    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move v11, v3

    move-object v3, v12

    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .local v3, "pm":Landroid/content/pm/PackageManager;
    move v12, v7

    move-object/from16 v20, v13

    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v20, "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move v13, v4

    :try_start_8
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IZII)Landroid/util/StatsEvent;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3330
    .local v4, "e":Landroid/util/StatsEvent;
    :goto_5
    move-object/from16 v8, p2

    :try_start_9
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    .line 3334
    .end local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v1    # "permName":Ljava/lang/String;
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "e":Landroid/util/StatsEvent;
    .end local v5    # "userNum":I
    .end local v6    # "numUsers":I
    .end local v7    # "permissionFlags":I
    .end local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v21    # "permNum":I
    .end local v23    # "numPerms":I
    .end local v24    # "pkgNum":I
    .end local v27    # "numPkgs":I
    .end local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v29    # "user":Landroid/os/UserHandle;
    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_9

    .line 3303
    .restart local v1    # "permName":Ljava/lang/String;
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "pkgNum":I
    .local v4, "numPkgs":I
    .local v5, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v6, "user":Landroid/os/UserHandle;
    .local v7, "numPerms":I
    .restart local v8    # "permNum":I
    .restart local v10    # "numUsers":I
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v20, "userNum":I
    .restart local v22    # "permissionFlags":I
    :catch_0
    move-exception v0

    move-object v14, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v23, v7

    move/from16 v21, v8

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move/from16 v5, v20

    const/16 v25, 0x0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v14, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v23, v7

    move/from16 v21, v8

    move/from16 v25, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move/from16 v5, v20

    :goto_6
    move-object/from16 v8, p2

    move-object/from16 v20, v13

    .line 3304
    .end local v4    # "numPkgs":I
    .end local v7    # "numPerms":I
    .end local v8    # "permNum":I
    .end local v10    # "numUsers":I
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v0, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v3, "pm":Landroid/content/pm/PackageManager;
    .local v5, "userNum":I
    .local v6, "numUsers":I
    .restart local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .local v20, "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v21    # "permNum":I
    .restart local v23    # "numPerms":I
    .restart local v24    # "pkgNum":I
    .restart local v27    # "numPkgs":I
    .restart local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v29    # "user":Landroid/os/UserHandle;
    nop

    .line 3294
    .end local v0    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "permName":Ljava/lang/String;
    .end local v22    # "permissionFlags":I
    :goto_7
    add-int/lit8 v0, v21, 0x1

    move-object/from16 v1, p0

    move v8, v0

    move-object v11, v2

    move-object v12, v3

    move v9, v5

    move v10, v6

    move-object v2, v14

    move-object/from16 v13, v20

    move/from16 v7, v23

    move/from16 v3, v24

    move/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move/from16 v14, p1

    .end local v21    # "permNum":I
    .local v0, "permNum":I
    goto/16 :goto_2

    .end local v0    # "permNum":I
    .end local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v23    # "numPerms":I
    .end local v24    # "pkgNum":I
    .end local v27    # "numPkgs":I
    .end local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v29    # "user":Landroid/os/UserHandle;
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "pkgNum":I
    .restart local v4    # "numPkgs":I
    .local v5, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v6, "user":Landroid/os/UserHandle;
    .restart local v7    # "numPerms":I
    .restart local v8    # "permNum":I
    .restart local v9    # "userNum":I
    .restart local v10    # "numUsers":I
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_7
    move-object v14, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v23, v7

    move/from16 v21, v8

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    const/16 v25, 0x0

    move-object/from16 v8, p2

    .line 3275
    .end local v4    # "numPkgs":I
    .end local v7    # "numPerms":I
    .end local v8    # "permNum":I
    .end local v9    # "userNum":I
    .end local v10    # "numUsers":I
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v3, "pm":Landroid/content/pm/PackageManager;
    .local v5, "userNum":I
    .local v6, "numUsers":I
    .restart local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v24    # "pkgNum":I
    .restart local v27    # "numPkgs":I
    .restart local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v29    # "user":Landroid/os/UserHandle;
    :goto_8
    add-int/lit8 v0, v24, 0x1

    move-object/from16 v1, p0

    move/from16 v14, p1

    move-object v11, v2

    move-object v12, v3

    move v9, v5

    move v10, v6

    move-object/from16 v13, v20

    move/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move v3, v0

    .end local v24    # "pkgNum":I
    .local v0, "pkgNum":I
    goto/16 :goto_1

    .end local v0    # "pkgNum":I
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v27    # "numPkgs":I
    .end local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v29    # "user":Landroid/os/UserHandle;
    .local v3, "pkgNum":I
    .restart local v4    # "numPkgs":I
    .local v5, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v6, "user":Landroid/os/UserHandle;
    .restart local v9    # "userNum":I
    .restart local v10    # "numUsers":I
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_8
    move-object/from16 v8, p2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    .line 3268
    .end local v4    # "numPkgs":I
    .end local v9    # "userNum":I
    .end local v10    # "numUsers":I
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v3, "pm":Landroid/content/pm/PackageManager;
    .local v5, "userNum":I
    .local v6, "numUsers":I
    .restart local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit8 v9, v5, 0x1

    move-object/from16 v1, p0

    move/from16 v14, p1

    .end local v5    # "userNum":I
    .restart local v9    # "userNum":I
    goto/16 :goto_0

    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "numUsers":I
    .end local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v10    # "numUsers":I
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v8, p2

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    const/16 v25, 0x0

    .line 3338
    .end local v9    # "userNum":I
    .end local v10    # "numUsers":I
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3339
    nop

    .line 3340
    return v25

    .line 3334
    .end local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v20, v13

    .line 3335
    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_9
    :try_start_a
    const-string v1, "StatsPullAtomService"

    const-string v2, "Could not read permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 3336
    nop

    .line 3338
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3336
    return v19

    .line 3338
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_4
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3339
    throw v0
.end method

.method pullDebugElapsedClockLocked(ILjava/util/List;)I
    .locals 21
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3125
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 3126
    .local v14, "elapsedMillis":J
    iget-wide v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 3127
    move-wide v9, v4

    goto :goto_0

    :cond_0
    sub-long v2, v14, v2

    move-wide v9, v2

    .line 3129
    .local v9, "clockDiffMillis":J
    :goto_0
    iget-wide v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const/4 v11, 0x1

    move/from16 v2, p1

    move-wide v5, v14

    move-wide v7, v14

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3134
    iget-wide v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const-wide/16 v2, 0x2

    rem-long v2, v12, v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 3135
    const/16 v20, 0x2

    move/from16 v11, p1

    move-wide v2, v14

    .end local v14    # "elapsedMillis":J
    .local v2, "elapsedMillis":J
    move-wide/from16 v16, v2

    move-wide/from16 v18, v9

    invoke-static/range {v11 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3134
    .end local v2    # "elapsedMillis":J
    .restart local v14    # "elapsedMillis":J
    :cond_1
    move-wide v2, v14

    .line 3141
    .end local v14    # "elapsedMillis":J
    .restart local v2    # "elapsedMillis":J
    :goto_1
    iget-wide v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 3142
    iput-wide v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 3143
    const/4 v4, 0x0

    return v4
.end method

.method pullDebugFailingElapsedClockLocked(ILjava/util/List;)I
    .locals 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3160
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 3162
    .local v9, "elapsedMillis":J
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v4, 0x5

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 3163
    iput-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 3164
    const-string v0, "StatsPullAtomService"

    const-string v1, "Failing debug elapsed clock"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    const/4 v0, 0x1

    return v0

    .line 3168
    :cond_0
    nop

    .line 3172
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 3173
    move-wide v7, v4

    goto :goto_0

    .line 3174
    :cond_1
    sub-long v0, v9, v0

    move-wide v7, v0

    .line 3168
    :goto_0
    move v0, p1

    move-wide v1, v2

    move-wide v3, v9

    move-wide v5, v9

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3176
    iput-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 3177
    const/4 v0, 0x0

    return v0
.end method

.method pullDeviceCalculatedPowerBlameOtherLocked(ILjava/util/List;)I
    .locals 6
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3093
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 3094
    .local v0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v0, :cond_0

    .line 3095
    const/4 v1, 0x1

    return v1

    .line 3098
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 3099
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_1

    .line 3100
    goto :goto_0

    .line 3102
    :cond_1
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_2

    .line 3103
    goto :goto_0

    .line 3105
    :cond_2
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 3106
    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v3

    iget-wide v4, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-direct {p0, v4, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v4

    .line 3105
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3107
    .end local v2    # "bs":Lcom/android/internal/os/BatterySipper;
    goto :goto_0

    .line 3108
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method pullDeviceCalculatedPowerBlameUidLocked(ILjava/util/List;)I
    .locals 6
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3067
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 3068
    .local v0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v0, :cond_0

    .line 3069
    const/4 v1, 0x1

    return v1

    .line 3072
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 3073
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v3, v4, :cond_1

    .line 3074
    goto :goto_0

    .line 3076
    :cond_1
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 3077
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    iget-wide v4, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-direct {p0, v4, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v4

    .line 3076
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3078
    .end local v2    # "bs":Lcom/android/internal/os/BatterySipper;
    goto :goto_0

    .line 3079
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I
    .locals 3
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3050
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    .line 3051
    .local v0, "bsHelper":Lcom/android/internal/os/BatteryStatsHelper;
    nop

    .line 3052
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v1

    .line 3051
    invoke-static {p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3053
    const/4 v1, 0x0

    return v1
.end method

.method pullDirectoryUsageLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2594
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2595
    .local v0, "statFsData":Landroid/os/StatFs;
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2596
    .local v1, "statFsSystem":Landroid/os/StatFs;
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2598
    .local v2, "statFsCache":Landroid/os/StatFs;
    nop

    .line 2599
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    .line 2600
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    .line 2598
    const/4 v4, 0x1

    move v3, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2602
    nop

    .line 2604
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    .line 2602
    const/4 v5, 0x2

    move v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2606
    nop

    .line 2608
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    .line 2606
    const/4 v5, 0x3

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2609
    const/4 v3, 0x0

    return v3
.end method

.method pullDiskIOLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2881
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    .line 2888
    const/4 v0, 0x0

    return v0
.end method

.method pullDiskStatsLocked(ILjava/util/List;)I
    .locals 14
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2535
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 2536
    .local v1, "junk":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2538
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "system/statsdperftest.tmp"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 2539
    .local v2, "tmp":Ljava/io/File;
    const/4 v3, 0x0

    .line 2540
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 2542
    .local v4, "error":Ljava/io/IOException;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2544
    .local v5, "before":J
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 2545
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2550
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2553
    :cond_1
    :goto_1
    goto :goto_4

    .line 2551
    :catch_0
    move-exception v0

    .line 2554
    goto :goto_4

    .line 2549
    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 2550
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2551
    :catch_1
    move-exception v0

    goto :goto_3

    .line 2553
    :cond_2
    :goto_2
    nop

    .line 2554
    :goto_3
    throw v7

    .line 2546
    :catch_2
    move-exception v0

    .line 2547
    .local v0, "e":Ljava/io/IOException;
    move-object v4, v0

    .line 2550
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2556
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 2557
    .local v7, "latency":J
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2559
    :cond_3
    const-string v9, "StatsPullAtomService"

    if-eqz v4, :cond_4

    .line 2560
    const-string v0, "Error performing diskstats latency test"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    const-wide/16 v7, -0x1

    .line 2564
    :cond_4
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v10

    .line 2567
    .local v10, "fileBased":Z
    const/4 v11, -0x1

    .line 2568
    .local v11, "writeSpeed":I
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIStoragedService()Landroid/os/IStoraged;

    move-result-object v12

    .line 2569
    .local v12, "storaged":Landroid/os/IStoraged;
    if-nez v12, :cond_5

    .line 2570
    const/4 v0, 0x1

    return v0

    .line 2573
    :cond_5
    :try_start_4
    invoke-interface {v12}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move v11, v0

    .line 2576
    goto :goto_5

    .line 2574
    :catch_3
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 2575
    .local v0, "e":Landroid/os/RemoteException;
    const-string v13, "storaged not found"

    invoke-static {v9, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    move v9, p1

    invoke-static {p1, v7, v8, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJZI)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v13, p2

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2580
    const/4 v0, 0x0

    return v0
.end method

.method pullExternalStorageInfoLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3428
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3429
    return v1

    .line 3432
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 3433
    .local v0, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 3434
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    invoke-static {v4}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v4

    .line 3435
    .local v4, "envState":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    .line 3436
    .local v5, "diskInfo":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_5

    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3438
    const/4 v6, 0x3

    .line 3439
    .local v6, "volumeType":I
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    if-nez v7, :cond_1

    .line 3440
    const/4 v6, 0x1

    goto :goto_1

    .line 3441
    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    if-ne v7, v1, :cond_2

    .line 3442
    const/4 v6, 0x2

    .line 3447
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3448
    const/4 v7, 0x1

    .local v7, "externalStorageType":I
    goto :goto_2

    .line 3449
    .end local v7    # "externalStorageType":I
    :cond_3
    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3450
    const/4 v7, 0x2

    .restart local v7    # "externalStorageType":I
    goto :goto_2

    .line 3452
    .end local v7    # "externalStorageType":I
    :cond_4
    const/4 v7, 0x3

    .line 3455
    .restart local v7    # "externalStorageType":I
    :goto_2
    iget-wide v8, v5, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p1, v7, v6, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3458
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "envState":Ljava/lang/String;
    .end local v5    # "diskInfo":Landroid/os/storage/DiskInfo;
    .end local v6    # "volumeType":I
    .end local v7    # "externalStorageType":I
    :cond_5
    goto :goto_0

    .line 3459
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method pullFaceSettingsLocked(ILjava/util/List;)I
    .locals 23
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3525
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3527
    .local v2, "callingToken":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3528
    .local v0, "manager":Landroid/os/UserManager;
    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 3529
    nop

    .line 3561
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3529
    return v4

    .line 3531
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 3532
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 3533
    .local v6, "numUsers":I
    const/4 v7, 0x0

    .local v7, "userNum":I
    :goto_0
    const/4 v8, 0x0

    if-ge v7, v6, :cond_7

    .line 3534
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 3536
    .local v9, "userId":I
    iget-object v10, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3537
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "face_unlock_keyguard_enabled"

    .line 3536
    invoke-static {v10, v11, v4, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 3539
    .local v10, "unlockKeyguardEnabled":I
    iget-object v11, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3540
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "face_unlock_dismisses_keyguard"

    .line 3539
    invoke-static {v11, v12, v4, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 3542
    .local v11, "unlockDismissesKeyguard":I
    iget-object v12, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3543
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "face_unlock_attention_required"

    .line 3542
    invoke-static {v12, v13, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 3545
    .local v12, "unlockAttentionRequired":I
    iget-object v13, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3546
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "face_unlock_app_enabled"

    .line 3545
    invoke-static {v13, v14, v4, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 3548
    .local v13, "unlockAppEnabled":I
    iget-object v14, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3549
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "face_unlock_always_require_confirmation"

    .line 3548
    invoke-static {v14, v15, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 3551
    .local v14, "unlockAlwaysRequireConfirmation":I
    iget-object v15, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3552
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v8, "face_unlock_diversity_required"

    .line 3551
    invoke-static {v15, v8, v4, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 3555
    .local v8, "unlockDiversityRequired":I
    if-eqz v10, :cond_1

    move/from16 v17, v4

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    if-eqz v11, :cond_2

    move/from16 v18, v4

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_2
    if-eqz v12, :cond_3

    move/from16 v19, v4

    goto :goto_3

    :cond_3
    const/16 v19, 0x0

    :goto_3
    if-eqz v13, :cond_4

    move/from16 v20, v4

    goto :goto_4

    :cond_4
    const/16 v20, 0x0

    :goto_4
    if-eqz v14, :cond_5

    move/from16 v21, v4

    goto :goto_5

    :cond_5
    const/16 v21, 0x0

    :goto_5
    if-eqz v8, :cond_6

    move/from16 v22, v4

    goto :goto_6

    :cond_6
    const/16 v22, 0x0

    :goto_6
    move/from16 v16, p1

    invoke-static/range {v16 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZZ)Landroid/util/StatsEvent;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v4, p2

    :try_start_2
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3533
    nop

    .end local v8    # "unlockDiversityRequired":I
    .end local v9    # "userId":I
    .end local v10    # "unlockKeyguardEnabled":I
    .end local v11    # "unlockDismissesKeyguard":I
    .end local v12    # "unlockAttentionRequired":I
    .end local v13    # "unlockAppEnabled":I
    .end local v14    # "unlockAlwaysRequireConfirmation":I
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3561
    .end local v0    # "manager":Landroid/os/UserManager;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "numUsers":I
    .end local v7    # "userNum":I
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 3533
    .restart local v0    # "manager":Landroid/os/UserManager;
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "numUsers":I
    .restart local v7    # "userNum":I
    :cond_7
    move-object/from16 v4, p2

    .line 3561
    .end local v0    # "manager":Landroid/os/UserManager;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "numUsers":I
    .end local v7    # "userNum":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3562
    nop

    .line 3563
    const/4 v0, 0x0

    return v0

    .line 3561
    :catchall_1
    move-exception v0

    move-object/from16 v4, p2

    :goto_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3562
    throw v0
.end method

.method pullHealthHalLocked(ILjava/util/List;)I
    .locals 3
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3976
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 3977
    .local v0, "healthService":Landroid/hardware/health/V2_0/IHealth;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3978
    return v1

    .line 3981
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4007
    nop

    .line 4008
    const/4 v1, 0x0

    return v1

    .line 4005
    :catch_0
    move-exception v2

    .line 4006
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method

.method pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I
    .locals 6
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4059
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4060
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.software.incremental_delivery"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4062
    return v2

    .line 4064
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 4065
    .local v1, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 4066
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4067
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4069
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    goto :goto_0

    .line 4070
    :cond_2
    return v2
.end method

.method pullIonHeapSizeLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2254
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2255
    .local v0, "ionHeapSizeInKilobytes":I
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2256
    const/4 v1, 0x0

    return v1
.end method

.method pullKernelWakelockLocked(ILjava/util/List;)I
    .locals 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1625
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 1626
    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v0

    .line 1627
    .local v0, "wakelockStats":Lcom/android/internal/os/KernelWakelockStats;
    invoke-virtual {v0}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1628
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1629
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 1630
    .local v10, "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v6, v10, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget v7, v10, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    iget-wide v8, v10, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    move v4, p1

    move-object v5, v3

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IIJ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v10    # "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    goto :goto_0

    .line 1633
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method pullKeystoreAtoms(ILjava/util/List;)I
    .locals 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4299
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v0

    .line 4300
    .local v0, "keystoreMetricsService":Landroid/security/metrics/IKeystoreMetrics;
    const/4 v1, 0x1

    const-string v2, "StatsPullAtomService"

    if-nez v0, :cond_0

    .line 4301
    const-string v3, "Keystore service is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    return v1

    .line 4304
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4306
    .local v3, "callingToken":J
    :try_start_0
    invoke-interface {v0, p1}, Landroid/security/metrics/IKeystoreMetrics;->pullMetrics(I)[Landroid/security/metrics/KeystoreAtom;

    move-result-object v5

    .line 4307
    .local v5, "atoms":[Landroid/security/metrics/KeystoreAtom;
    sparse-switch p1, :sswitch_data_0

    .line 4329
    goto :goto_0

    .line 4327
    :sswitch_0
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4327
    return v1

    .line 4325
    :sswitch_1
    :try_start_1
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4325
    return v1

    .line 4323
    :sswitch_2
    :try_start_2
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4323
    return v1

    .line 4321
    :sswitch_3
    :try_start_3
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4321
    return v1

    .line 4319
    :sswitch_4
    :try_start_4
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4319
    return v1

    .line 4317
    :sswitch_5
    :try_start_5
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4317
    return v1

    .line 4315
    :sswitch_6
    :try_start_6
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4315
    return v1

    .line 4313
    :sswitch_7
    :try_start_7
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4313
    return v1

    .line 4311
    :sswitch_8
    :try_start_8
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpPoolStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4311
    return v1

    .line 4309
    :sswitch_9
    :try_start_9
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4309
    return v1

    .line 4329
    :goto_0
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported keystore atom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4330
    nop

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4330
    return v1

    .line 4340
    .end local v5    # "atoms":[Landroid/security/metrics/KeystoreAtom;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4336
    :catch_0
    move-exception v5

    .line 4337
    .local v5, "e":Landroid/os/ServiceSpecificException;
    :try_start_b
    const-string v6, "pulling keystore metrics failed"

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4338
    nop

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4338
    return v1

    .line 4332
    .end local v5    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v5

    .line 4334
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_c
    const-string v6, "Disconnected from keystore service. Cannot pull."

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 4335
    nop

    .line 4340
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4335
    return v1

    .line 4340
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4341
    throw v1

    :sswitch_data_0
    .sparse-switch
        0x2777 -> :sswitch_9
        0x2778 -> :sswitch_8
        0x2786 -> :sswitch_7
        0x2787 -> :sswitch_6
        0x2788 -> :sswitch_5
        0x2789 -> :sswitch_4
        0x278a -> :sswitch_3
        0x278b -> :sswitch_2
        0x278c -> :sswitch_1
        0x278d -> :sswitch_0
    .end sparse-switch
.end method

.method pullLooperStatsLocked(ILjava/util/List;)I
    .locals 32
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2505
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    .line 2506
    .local v0, "looperStats":Lcom/android/internal/os/LooperStats;
    if-nez v0, :cond_0

    .line 2507
    const/4 v1, 0x1

    return v1

    .line 2510
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 2511
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 2512
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 2513
    .local v3, "entry":Lcom/android/internal/os/LooperStats$ExportedEntry;
    iget v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    iget-object v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    iget-wide v9, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    iget-wide v11, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    iget-wide v13, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    move-object/from16 v30, v0

    move-object/from16 v31, v1

    .end local v0    # "looperStats":Lcom/android/internal/os/LooperStats;
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    .local v30, "looperStats":Lcom/android/internal/os/LooperStats;
    .local v31, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    move-wide v15, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    move-wide/from16 v17, v0

    iget-boolean v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    move/from16 v19, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    move-wide/from16 v20, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    move-wide/from16 v22, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    move-wide/from16 v24, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    move-wide/from16 v26, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    move-wide/from16 v28, v0

    move/from16 v4, p1

    invoke-static/range {v4 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJZJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2519
    .end local v3    # "entry":Lcom/android/internal/os/LooperStats$ExportedEntry;
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    goto :goto_0

    .line 2520
    .end local v30    # "looperStats":Lcom/android/internal/os/LooperStats;
    .end local v31    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    .restart local v0    # "looperStats":Lcom/android/internal/os/LooperStats;
    .restart local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    :cond_1
    move-object/from16 v30, v0

    .end local v0    # "looperStats":Lcom/android/internal/os/LooperStats;
    .restart local v30    # "looperStats":Lcom/android/internal/os/LooperStats;
    const/4 v0, 0x0

    return v0
.end method

.method pullModemActivityInfoLocked(ILjava/util/List;)I
    .locals 30
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1998
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    const-string v2, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2000
    .local v3, "token":J
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v5, v0

    .line 2001
    .local v5, "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    sget-object v6, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$2;

    invoke-direct {v7, v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService$2;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2018
    const-wide/16 v6, 0x7d0

    const/4 v8, 0x1

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2026
    .local v0, "modemInfo":Landroid/telephony/ModemActivityInfo;
    nop

    .line 2028
    if-nez v0, :cond_0

    .line 2029
    nop

    .line 2042
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2029
    return v8

    .line 2031
    :cond_0
    nop

    .line 2032
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v10

    .line 2033
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v14

    .line 2034
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v16

    .line 2035
    invoke-virtual {v0, v8}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v18

    const/4 v6, 0x2

    .line 2036
    invoke-virtual {v0, v6}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v20

    const/4 v6, 0x3

    .line 2037
    invoke-virtual {v0, v6}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v22

    const/4 v6, 0x4

    .line 2038
    invoke-virtual {v0, v6}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v24

    .line 2039
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, -0x1

    .line 2031
    move/from16 v9, p1

    invoke-static/range {v9 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p2

    :try_start_3
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2042
    nop

    .end local v0    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v5    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2043
    nop

    .line 2044
    return v2

    .line 2023
    .restart local v5    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    :catch_0
    move-exception v0

    move-object/from16 v7, p2

    .line 2024
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception reading modem stats: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2025
    nop

    .line 2042
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2025
    return v8

    .line 2020
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    move-object/from16 v7, p2

    .line 2021
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeout or interrupt reading modem stats: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2022
    nop

    .line 2042
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2022
    return v8

    .line 2042
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v7, p2

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2043
    throw v0
.end method

.method pullNotificationRemoteViewsLocked(ILjava/util/List;)I
    .locals 17
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3882
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v1, "Getting notistats failed: "

    const-string v2, "StatsPullAtomService"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getINotificationManagerService()Landroid/app/INotificationManager;

    move-result-object v9

    .line 3883
    .local v9, "notificationManagerService":Landroid/app/INotificationManager;
    const/4 v10, 0x1

    if-nez v9, :cond_0

    .line 3884
    return v10

    .line 3886
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3889
    .local v11, "callingToken":J
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v13, v3, v5

    .line 3890
    .local v13, "wallClockNanos":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 3891
    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sub-long v15, v13, v3

    .line 3893
    .local v15, "lastNotificationStatsNs":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3894
    .local v0, "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v9

    move-wide v4, v15

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Landroid/app/INotificationManager;->pullStats(JIZLjava/util/List;)J

    .line 3896
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v10, :cond_1

    .line 3897
    nop

    .line 3910
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3897
    return v10

    .line 3899
    :cond_1
    move/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_1
    invoke-static {v3, v4, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3910
    .end local v0    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v13    # "wallClockNanos":J
    .end local v15    # "lastNotificationStatsNs":J
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3911
    nop

    .line 3912
    const/4 v0, 0x0

    return v0

    .line 3906
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3903
    :catch_1
    move-exception v0

    goto :goto_1

    .line 3900
    :catch_2
    move-exception v0

    goto :goto_2

    .line 3910
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    goto :goto_3

    .line 3906
    :catch_3
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    .line 3907
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_0
    :try_start_2
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3908
    nop

    .line 3910
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3908
    return v10

    .line 3903
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    .line 3904
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_3
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3905
    nop

    .line 3910
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3905
    return v10

    .line 3900
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    .line 3901
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3902
    nop

    .line 3910
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3902
    return v10

    .line 3910
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3911
    throw v0
.end method

.method pullPowerProfileLocked(ILjava/util/List;)I
    .locals 3
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2902
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 2903
    .local v0, "powerProfile":Lcom/android/internal/os/PowerProfile;
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 2904
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 2905
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2906
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2907
    const/4 v2, 0x0

    return v2
.end method

.method pullProcessCpuTimeLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2925
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2926
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 2927
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 2929
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 2930
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2931
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 2932
    .local v2, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    iget-wide v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move v3, p1

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2930
    .end local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2935
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method pullProcessDmabufMemory(ILjava/util/List;)I
    .locals 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2291
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2292
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2293
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 2294
    .local v0, "managedProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    sget-object v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;->INSTANCE:Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 2295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProcessMemoryState;

    .line 2296
    .local v2, "process":Landroid/app/ProcessMemoryState;
    iget v3, v2, Landroid/app/ProcessMemoryState;->uid:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    .line 2297
    goto :goto_0

    .line 2299
    :cond_1
    iget v3, v2, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v3}, Lcom/android/internal/os/DmabufInfoReader;->getProcessStats(I)Lcom/android/internal/os/DmabufInfoReader$ProcessDmabuf;

    move-result-object v3

    .line 2300
    .local v3, "proc":Lcom/android/internal/os/DmabufInfoReader$ProcessDmabuf;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/internal/os/DmabufInfoReader$ProcessDmabuf;->retainedBuffersCount:I

    if-gtz v4, :cond_2

    iget v4, v3, Lcom/android/internal/os/DmabufInfoReader$ProcessDmabuf;->mappedBuffersCount:I

    if-gtz v4, :cond_2

    .line 2301
    goto :goto_0

    .line 2303
    :cond_2
    iget v6, v2, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v7, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v8, v2, Landroid/app/ProcessMemoryState;->oomScore:I

    iget v9, v3, Lcom/android/internal/os/DmabufInfoReader$ProcessDmabuf;->retainedSizeKb:I

    iget v10, v3, Lcom/android/internal/os/DmabufInfoReader$ProcessDmabuf;->retainedBuffersCount:I

    iget v11, v3, Lcom/android/internal/os/DmabufInfoReader$ProcessDmabuf;->mappedSizeKb:I

    iget v12, v3, Lcom/android/internal/os/DmabufInfoReader$ProcessDmabuf;->mappedBuffersCount:I

    .line 2304
    move v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIII)Landroid/util/StatsEvent;

    move-result-object v4

    .line 2303
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2313
    .end local v2    # "process":Landroid/app/ProcessMemoryState;
    .end local v3    # "proc":Lcom/android/internal/os/DmabufInfoReader$ProcessDmabuf;
    goto :goto_0

    .line 2314
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I
    .locals 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2145
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2146
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2147
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 2148
    .local v0, "managedProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x400

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProcessMemoryState;

    .line 2149
    .local v2, "managedProcess":Landroid/app/ProcessMemoryState;
    iget v5, v2, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v5}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v5

    .line 2150
    .local v5, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v5, :cond_0

    .line 2151
    goto :goto_0

    .line 2153
    :cond_0
    iget v7, v2, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v8, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v9, v6

    mul-long/2addr v9, v3

    iget v11, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    move v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    .end local v2    # "managedProcess":Landroid/app/ProcessMemoryState;
    .end local v5    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    goto :goto_0

    .line 2160
    :cond_1
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v1

    .line 2161
    .local v1, "processCmdlines":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2162
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2163
    .local v2, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 2164
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    .line 2165
    .local v6, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v6, :cond_2

    .line 2166
    goto :goto_2

    .line 2168
    :cond_2
    iget v8, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 2169
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    iget v7, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v10, v7

    mul-long/2addr v10, v3

    iget v12, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 2168
    move v7, p1

    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2163
    .end local v6    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2175
    .end local v5    # "i":I
    :cond_3
    const-string v3, "sys.rss_hwm_reset.on"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    const/4 v3, 0x0

    return v3
.end method

.method pullProcessMemorySnapshotLocked(ILjava/util/List;)I
    .locals 16
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2190
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p2

    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 2191
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 2192
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v1

    .line 2193
    .local v1, "managedProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProcessMemoryState;

    .line 2194
    .local v3, "managedProcess":Landroid/app/ProcessMemoryState;
    iget v4, v3, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v4}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v4

    .line 2195
    .local v4, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v4, :cond_0

    .line 2196
    goto :goto_0

    .line 2198
    :cond_0
    iget v6, v3, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v7, v3, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v8, v3, Landroid/app/ProcessMemoryState;->pid:I

    iget v9, v3, Landroid/app/ProcessMemoryState;->oomScore:I

    iget v10, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v11, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v12, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    iget v5, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v13, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int/2addr v13, v5

    move/from16 v5, p1

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2202
    .end local v3    # "managedProcess":Landroid/app/ProcessMemoryState;
    .end local v4    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    goto :goto_0

    .line 2206
    :cond_1
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v2

    .line 2207
    .local v2, "processCmdlines":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;

    invoke-direct {v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2208
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 2209
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 2210
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 2211
    .local v14, "pid":I
    invoke-static {v14}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v15

    .line 2212
    .local v15, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v15, :cond_2

    .line 2213
    goto :goto_2

    .line 2215
    :cond_2
    iget v6, v15, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 2216
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    const/16 v9, -0x3e9

    iget v10, v15, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v11, v15, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v12, v15, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    iget v5, v15, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v8, v15, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v13, v5, v8

    .line 2215
    move/from16 v5, p1

    move v8, v14

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2209
    .end local v14    # "pid":I
    .end local v15    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2221
    .end local v4    # "i":I
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method pullProcessMemoryStateLocked(ILjava/util/List;)I
    .locals 25
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2117
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2118
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2119
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 2120
    .local v0, "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProcessMemoryState;

    .line 2121
    .local v2, "processMemoryState":Landroid/app/ProcessMemoryState;
    iget v3, v2, Landroid/app/ProcessMemoryState;->uid:I

    iget v4, v2, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v3, v4}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v3

    .line 2123
    .local v3, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    if-nez v3, :cond_0

    .line 2124
    goto :goto_0

    .line 2126
    :cond_0
    iget v5, v2, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v6, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v7, v2, Landroid/app/ProcessMemoryState;->oomScore:I

    iget-wide v8, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v10, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v12, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v14, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    .end local v0    # "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    .local v23, "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    iget-wide v0, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    const/16 v22, -0x1

    move/from16 v4, p1

    invoke-static/range {v4 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJJI)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2130
    .end local v2    # "processMemoryState":Landroid/app/ProcessMemoryState;
    .end local v3    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    goto :goto_0

    .line 2131
    .end local v23    # "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    .restart local v0    # "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    :cond_1
    move-object/from16 v23, v0

    .end local v0    # "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    .restart local v23    # "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I
    .locals 12
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2270
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;

    move-result-object v0

    .line 2271
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    .line 2272
    .local v2, "allocations":Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    iget v3, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    invoke-static {v3}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    iget v3, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 2273
    invoke-static {v3}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v3, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    const-wide/16 v7, 0x400

    div-long/2addr v3, v7

    long-to-int v3, v3

    iget v9, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    iget-wide v10, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    div-long/2addr v10, v7

    long-to-int v10, v10

    .line 2272
    move v4, p1

    move v7, v3

    move v8, v9

    move v9, v10

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;III)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2276
    .end local v2    # "allocations":Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    goto :goto_0

    .line 2277
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method pullRoleHolderLocked(ILjava/util/List;)I
    .locals 19
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3209
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3211
    .local v2, "callingToken":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v4, v0

    .line 3212
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Lcom/android/role/RoleManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/role/RoleManagerLocal;

    move-object v5, v0

    .line 3215
    .local v5, "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 3217
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    .line 3218
    .local v7, "numUsers":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "userNum":I
    :goto_0
    const/4 v0, 0x0

    if-ge v8, v7, :cond_2

    .line 3219
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 3221
    .local v9, "userId":I
    invoke-interface {v5, v9}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    move-result-object v10

    .line 3223
    .local v10, "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 3224
    .local v12, "roleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3225
    .local v13, "roleName":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    .line 3227
    .local v14, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v16

    .line 3230
    .local v17, "packageName":Ljava/lang/String;
    move-object/from16 v1, v17

    .end local v17    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4, v1, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v16
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v17, v16

    .line 3234
    .local v17, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 3236
    move-object/from16 v0, v17

    move-object/from16 v17, v4

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    .local v17, "pm":Landroid/content/pm/PackageManager;
    :try_start_2
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v18, v5

    move/from16 v5, p1

    .end local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .local v18, "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    invoke-static {v5, v4, v1, v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p2

    :try_start_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3238
    move-object/from16 v1, p0

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v0, 0x0

    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 3231
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    :catch_0
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    move-object v4, v0

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    move-object v0, v4

    .line 3232
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "StatsPullAtomService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Role holder "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " not found"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3233
    nop

    .line 3242
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3233
    const/4 v4, 0x1

    return v4

    .line 3242
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "numUsers":I
    .end local v8    # "userNum":I
    .end local v9    # "userId":I
    .end local v10    # "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v12    # "roleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v13    # "roleName":Ljava/lang/String;
    .end local v14    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 3227
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "numUsers":I
    .restart local v8    # "userNum":I
    .restart local v9    # "userId":I
    .restart local v10    # "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v12    # "roleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v13    # "roleName":Ljava/lang/String;
    .restart local v14    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    .line 3239
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .end local v12    # "roleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v13    # "roleName":Ljava/lang/String;
    .end local v14    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    move-object/from16 v1, p0

    move-object/from16 v5, v18

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3223
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    :cond_1
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    .line 3218
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .end local v9    # "userId":I
    .end local v10    # "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v18

    goto/16 :goto_0

    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    :cond_2
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    .line 3242
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "numUsers":I
    .end local v8    # "userNum":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3243
    nop

    .line 3244
    const/4 v0, 0x0

    return v0

    .line 3242
    :catchall_1
    move-exception v0

    move-object/from16 v5, p2

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3243
    throw v0
.end method

.method pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I
    .locals 16
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3810
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v1, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3812
    .local v2, "token":J
    move-object/from16 v4, p0

    :try_start_0
    iget-object v0, v4, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3814
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v5

    .line 3815
    .local v5, "message":Landroid/app/RuntimeAppOpAccessMessage;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 3816
    const-string v7, "No runtime appop access message collected"

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3817
    nop

    .line 3830
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3817
    return v6

    .line 3820
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getUid()I

    move-result v9

    .line 3821
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    .line 3822
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v12, v7

    .line 3823
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getSamplingStrategy()I

    move-result v14

    .line 3824
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getOp()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v15

    .line 3820
    move/from16 v8, p1

    invoke-static/range {v8 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v8, p2

    :try_start_2
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3830
    nop

    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v5    # "message":Landroid/app/RuntimeAppOpAccessMessage;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3831
    nop

    .line 3832
    return v6

    .line 3825
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v8, p2

    .line 3827
    .local v0, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    const-string v5, "Could not read runtime appop access message"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3828
    const/4 v1, 0x1

    .line 3830
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3828
    return v1

    .line 3830
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3831
    throw v0
.end method

.method pullSettingsStatsLocked(ILjava/util/List;)I
    .locals 9
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4022
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 4023
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4024
    return v1

    .line 4027
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4029
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4030
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 4032
    .local v7, "userId":I
    if-nez v7, :cond_1

    .line 4033
    iget-object v8, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4036
    :cond_1
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSystemSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4037
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSecureSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4038
    nop

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    goto :goto_0

    .line 4043
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4044
    nop

    .line 4045
    return v6

    .line 4043
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4039
    :catch_0
    move-exception v4

    .line 4040
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "StatsPullAtomService"

    const-string v6, "failed to pullSettingsStats"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4041
    nop

    .line 4043
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4041
    return v1

    .line 4043
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4044
    throw v1
.end method

.method pullSystemElapsedRealtimeLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2084
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2085
    const/4 v0, 0x0

    return v0
.end method

.method pullSystemIonHeapSizeLocked(ILjava/util/List;)I
    .locals 3
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2235
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readSystemIonHeapSizeFromDebugfs()J

    move-result-wide v0

    .line 2236
    .local v0, "systemIonHeapSizeInBytes":J
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2237
    const/4 v2, 0x0

    return v2
.end method

.method pullSystemMemory(ILjava/util/List;)I
    .locals 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2328
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/stats/pull/SystemMemoryUtil;->getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    move-result-object v0

    .line 2329
    .local v0, "metrics":Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    iget v2, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unreclaimableSlabKb:I

    iget v3, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->vmallocUsedKb:I

    iget v4, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->pageTablesKb:I

    iget v5, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->kernelStackKb:I

    iget v6, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalIonKb:I

    iget v7, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unaccountedKb:I

    iget v8, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuTotalUsageKb:I

    iget v9, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuPrivateAllocationsKb:I

    iget v10, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->dmaBufTotalExportedKb:I

    .line 2330
    move v1, p1

    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v1

    .line 2329
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2341
    const/4 v1, 0x0

    return v1
.end method

.method pullSystemUptimeLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2099
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2100
    const/4 v0, 0x0

    return v0
.end method

.method pullTemperatureLocked(ILjava/util/List;)I
    .locals 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2376
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 2377
    .local v0, "thermalService":Landroid/os/IThermalService;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2378
    return v1

    .line 2380
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2382
    .local v2, "callingToken":J
    :try_start_0
    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object v4

    .line 2383
    .local v4, "temperatures":[Landroid/os/Temperature;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    .line 2384
    .local v8, "temp":Landroid/os/Temperature;
    invoke-virtual {v8}, Landroid/os/Temperature;->getType()I

    move-result v9

    .line 2385
    invoke-virtual {v8}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/os/Temperature;->getValue()F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/os/Temperature;->getStatus()I

    move-result v12

    .line 2384
    invoke-static {p1, v9, v10, v11, v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2383
    nop

    .end local v8    # "temp":Landroid/os/Temperature;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2392
    .end local v4    # "temperatures":[Landroid/os/Temperature;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2393
    nop

    .line 2394
    return v6

    .line 2392
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2387
    :catch_0
    move-exception v4

    .line 2389
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "StatsPullAtomService"

    const-string v6, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2390
    nop

    .line 2392
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2390
    return v1

    .line 2392
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2393
    throw v1
.end method

.method pullTimeZoneDataInfoLocked(ILjava/util/List;)I
    .locals 4
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3354
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v0, "Unknown"

    .line 3356
    .local v0, "tzDbVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3360
    nop

    .line 3362
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3363
    const/4 v1, 0x0

    return v1

    .line 3357
    :catch_0
    move-exception v1

    .line 3358
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string v2, "StatsPullAtomService"

    const-string v3, "Getting tzdb version failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3359
    const/4 v2, 0x1

    return v2
.end method

.method pullTimeZoneDetectorStateLocked(ILjava/util/List;)I
    .locals 16
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3377
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3379
    .local v1, "token":J
    :try_start_0
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 3380
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 3381
    .local v0, "timeZoneDetectorInternal":Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;
    nop

    .line 3382
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v3

    .line 3383
    .local v3, "metricsState":Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    nop

    .line 3384
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyDetectionSupported()Z

    move-result v5

    .line 3385
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isGeoDetectionSupported()Z

    move-result v6

    .line 3386
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isUserLocationEnabled()Z

    move-result v7

    .line 3387
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getAutoDetectionEnabledSetting()Z

    move-result v8

    .line 3388
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionEnabledSetting()Z

    move-result v9

    .line 3389
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDetectionMode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v15, p0

    :try_start_1
    invoke-direct {v15, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToMetricsDetectionMode(I)I

    move-result v10

    .line 3390
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneIdOrdinal()I

    move-result v11

    .line 3391
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestManualSuggestionProtoBytes()[B

    move-result-object v12

    .line 3392
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestTelephonySuggestionProtoBytes()[B

    move-result-object v13

    .line 3393
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestGeolocationSuggestionProtoBytes()[B

    move-result-object v14

    .line 3383
    move/from16 v4, p1

    invoke-static/range {v4 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZII[B[B[B)Landroid/util/StatsEvent;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v5, p2

    :try_start_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3399
    nop

    .end local v0    # "timeZoneDetectorInternal":Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;
    .end local v3    # "metricsState":Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3400
    nop

    .line 3401
    const/4 v0, 0x0

    return v0

    .line 3395
    :catch_0
    move-exception v0

    goto :goto_2

    .line 3399
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 3395
    :catch_1
    move-exception v0

    goto :goto_1

    .line 3399
    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    :goto_0
    move-object/from16 v5, p2

    goto :goto_3

    .line 3395
    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    :goto_1
    move-object/from16 v5, p2

    .line 3396
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_3
    const-string v3, "StatsPullAtomService"

    const-string v4, "Getting time zone detection state failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3397
    const/4 v3, 0x1

    .line 3399
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3397
    return v3

    .line 3399
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v0

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3400
    throw v0
.end method

.method pullVmStat(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2355
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readVmStat()Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;

    move-result-object v0

    .line 2356
    .local v0, "vmStat":Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;
    if-eqz v0, :cond_0

    .line 2357
    iget v1, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    .line 2358
    invoke-static {p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v1

    .line 2357
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2362
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method pullWifiActivityInfoLocked(ILjava/util/List;)I
    .locals 18
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1950
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1952
    .local v2, "token":J
    const/4 v4, 0x1

    :try_start_0
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string v5, "wifi"

    invoke-direct {v0, v5}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1953
    .local v0, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v5, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$1;

    invoke-direct {v6, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$1;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 1968
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    .local v5, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    if-nez v5, :cond_0

    .line 1970
    nop

    .line 1982
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1970
    return v4

    .line 1972
    :cond_0
    nop

    .line 1973
    :try_start_1
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v7

    .line 1974
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v9

    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v10

    .line 1975
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v12

    .line 1976
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v14

    .line 1977
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v16

    .line 1973
    move/from16 v6, p1

    invoke-static/range {v6 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1972
    move-object/from16 v7, p2

    :try_start_2
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1982
    nop

    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v5    # "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    nop

    .line 1984
    const/4 v0, 0x0

    return v0

    .line 1978
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1982
    :catchall_0
    move-exception v0

    move-object/from16 v7, p2

    goto :goto_1

    .line 1978
    :catch_1
    move-exception v0

    move-object/from16 v7, p2

    .line 1979
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    :try_start_3
    const-string v5, "StatsPullAtomService"

    const-string v6, "failed to getWifiActivityEnergyInfoAsync"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1980
    nop

    .line 1982
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1980
    return v4

    .line 1982
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    throw v0
.end method

.method registerEventListeners()V
    .locals 6

    .line 834
    const-string v0, "StatsPullAtomService"

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 835
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 837
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 838
    .local v2, "request":Landroid/net/NetworkRequest;
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 842
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object v3

    .line 843
    .local v3, "thermalService":Landroid/os/IThermalService;
    if-eqz v3, :cond_0

    .line 845
    :try_start_0
    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;

    invoke-direct {v5, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService$1;)V

    invoke-interface {v3, v5}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 846
    const-string v4, "register thermal listener successfully"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    goto :goto_0

    .line 847
    :catch_0
    move-exception v4

    .line 848
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "failed to register thermal listener"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method registerPullers()V
    .locals 2

    .line 855
    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering pullers with statsd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService$1;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 858
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothBytesTransfer()V

    .line 859
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKernelWakelock()V

    .line 860
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerClusterFreq()V

    .line 861
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUid()V

    .line 862
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerUidCluster()V

    .line 863
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUidFreq()V

    .line 864
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerThreadGroupCluster()V

    .line 865
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuActiveTime()V

    .line 866
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuClusterTime()V

    .line 867
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiActivityInfo()V

    .line 868
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerModemActivityInfo()V

    .line 869
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothActivityInfo()V

    .line 870
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemElapsedRealtime()V

    .line 871
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemUptime()V

    .line 872
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryState()V

    .line 873
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryHighWaterMark()V

    .line 874
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemorySnapshot()V

    .line 875
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemIonHeapSize()V

    .line 876
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerIonHeapSize()V

    .line 877
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessSystemIonHeapSize()V

    .line 878
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemMemory()V

    .line 879
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessDmabufMemory()V

    .line 880
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerVmStat()V

    .line 881
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTemperature()V

    .line 882
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCoolingDevice()V

    .line 883
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStats()V

    .line 884
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStatsExceptions()V

    .line 885
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerLooperStats()V

    .line 886
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskStats()V

    .line 887
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDirectoryUsage()V

    .line 888
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppSize()V

    .line 889
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCategorySize()V

    .line 890
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFingerprintsEnrolled()V

    .line 891
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFacesEnrolled()V

    .line 892
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStats()V

    .line 893
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStatsPkgProc()V

    .line 894
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskIO()V

    .line 895
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPowerProfile()V

    .line 896
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessCpuTime()V

    .line 897
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerThreadFreq()V

    .line 898
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerUse()V

    .line 899
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerBlameUid()V

    .line 900
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerBlameOther()V

    .line 901
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugElapsedClock()V

    .line 902
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugFailingElapsedClock()V

    .line 903
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBuildInformation()V

    .line 904
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRoleHolder()V

    .line 905
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDataInfo()V

    .line 906
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDetectorState()V

    .line 907
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerExternalStorageInfo()V

    .line 908
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppsOnExternalStorageInfo()V

    .line 909
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFaceSettings()V

    .line 910
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppOps()V

    .line 911
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAttributedAppOps()V

    .line 912
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRuntimeAppOpAccessMessage()V

    .line 913
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNotificationRemoteViews()V

    .line 914
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionState()V

    .line 915
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionStateSampled()V

    .line 916
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryLevel()V

    .line 917
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRemainingBatteryCapacity()V

    .line 918
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFullBatteryCapacity()V

    .line 919
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryVoltage()V

    .line 920
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryCycleCount()V

    .line 921
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSettingsStats()V

    .line 922
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerInstalledIncrementalPackages()V

    .line 923
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreStorageStats()V

    .line 924
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRkpPoolStats()V

    .line 925
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithGeneralInfo()V

    .line 926
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithAuthInfo()V

    .line 927
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithPurposeModesInfo()V

    .line 928
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreAtomWithOverflow()V

    .line 929
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyOperationWithPurposeAndModesInfo()V

    .line 930
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyOperationWithGeneralInfo()V

    .line 931
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRkpErrorStats()V

    .line 932
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreCrashStats()V

    .line 933
    return-void
.end method
