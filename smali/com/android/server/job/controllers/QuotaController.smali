.class public final Lcom/android/server/job/controllers/QuotaController;
.super Lcom/android/server/job/controllers/StateController;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/QuotaController$QcConstants;,
        Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;,
        Lcom/android/server/job/controllers/QuotaController$AlarmQueue;,
        Lcom/android/server/job/controllers/QuotaController$QcHandler;,
        Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;,
        Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;,
        Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;,
        Lcom/android/server/job/controllers/QuotaController$StandbyTracker;,
        Lcom/android/server/job/controllers/QuotaController$TopAppTimer;,
        Lcom/android/server/job/controllers/QuotaController$Timer;,
        Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;,
        Lcom/android/server/job/controllers/QuotaController$TimingSession;,
        Lcom/android/server/job/controllers/QuotaController$ChargingTracker;,
        Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;,
        Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;,
        Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;,
        Lcom/android/server/job/controllers/QuotaController$QcUidObserver;,
        Lcom/android/server/job/controllers/QuotaController$ExecutionStats;,
        Lcom/android/server/job/controllers/QuotaController$Package;
    }
.end annotation


# static fields
.field private static final ALARM_TAG_CLEANUP:Ljava/lang/String; = "*job.cleanup*"

.field private static final ALARM_TAG_QUOTA_CHECK:Ljava/lang/String; = "*job.quota_check*"

.field private static final DEBUG:Z

.field private static final MAX_PERIOD_MS:J = 0x5265c00L

.field private static final MSG_CHECK_PACKAGE:I = 0x2

.field private static final MSG_CLEAN_UP_SESSIONS:I = 0x1

.field static final MSG_END_GRACE_PERIOD:I = 0x6

.field private static final MSG_PROCESS_USAGE_EVENT:I = 0x5

.field static final MSG_REACHED_EJ_QUOTA:I = 0x4

.field static final MSG_REACHED_QUOTA:I = 0x0

.field private static final MSG_UID_PROCESS_STATE_CHANGED:I = 0x3

.field private static final SYSTEM_APP_CHECK_FLAGS:I = 0x4c3000

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Quota"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowedTimeIntoQuotaMs:J

.field private mAllowedTimePerPeriodMs:J

.field private final mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

.field private final mBucketPeriodsMs:[J

.field private final mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

.field private final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field private final mDeleteOldSessionsFunctor:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEJGracePeriodTempAllowlistMs:J

.field private mEJGracePeriodTopAppMs:J

.field private mEJLimitWindowSizeMs:J

.field private final mEJLimitsMs:[J

.field private final mEJPkgTimers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private mEJRewardInteractionMs:J

.field private mEJRewardNotificationSeenMs:J

.field private mEJRewardTopAppMs:J

.field private final mEJStats:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;",
            ">;"
        }
    .end annotation
.end field

.field private final mEJTimingSessions:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEJTopAppTimeChunkSizeMs:J

.field private final mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

.field private mEjLimitAdditionInstallerMs:J

.field private mEjLimitAdditionSpecialMs:J

.field private final mExecutionStatsCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/android/server/job/controllers/QuotaController$ExecutionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundUids:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

.field private final mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

.field private final mMaxBucketJobCounts:[I

.field private final mMaxBucketSessionCounts:[I

.field private mMaxExecutionTimeIntoQuotaMs:J

.field private mMaxExecutionTimeMs:J

.field private mMaxJobCountPerRateLimitingWindow:I

.field private mMaxSessionCountPerRateLimitingWindow:I

.field private mNextCleanupTimeElapsed:J

.field private final mPkgTimers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

.field private mQuotaBufferMs:J

.field private mRateLimitingWindowMs:J

.field private final mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mSystemInstallers:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempAllowlistCache:Landroid/util/SparseBooleanArray;

.field private final mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

.field private final mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

.field private mTimingSessionCoalescingDurationMs:J

.field private final mTimingSessionTooOld:Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

.field private final mTimingSessions:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTopAppCache:Landroid/util/SparseBooleanArray;

.field private final mTopAppGraceCache:Landroid/util/SparseLongArray;

.field private final mTopAppTrackers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$TopAppTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedJobs:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 118
    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "backgroundJobsController"    # Lcom/android/server/job/controllers/BackgroundJobsController;
    .param p3, "connectivityController"    # Lcom/android/server/job/controllers/ConnectivityController;

    .line 585
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 307
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 310
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 313
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 316
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    .line 322
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 328
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    .line 332
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 335
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 337
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 340
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 347
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 350
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 356
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 359
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 365
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 376
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    .line 382
    const-wide/32 v4, 0xdbba00

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 388
    const-wide/16 v6, 0x7530

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 394
    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    .line 400
    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 403
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 406
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 413
    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 416
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 417
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 452
    const/4 v0, 0x6

    new-array v8, v0, [J

    fill-array-data v8, :array_0

    iput-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 471
    new-array v8, v0, [I

    fill-array-data v8, :array_1

    iput-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 487
    new-array v8, v0, [I

    fill-array-data v8, :array_2

    iput-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 500
    const-wide/16 v8, 0x1388

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 507
    new-array v0, v0, [J

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 516
    const-wide/32 v8, 0x1b7740

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 518
    const-wide/32 v8, 0xdbba0

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    .line 525
    const-wide/32 v8, 0x5265c00

    iput-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 530
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 535
    const-wide/16 v6, 0x2710

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 540
    const-wide/16 v6, 0x3a98

    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 545
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    .line 547
    const-wide/32 v4, 0x2bf20

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 550
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 556
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 1500
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 1564
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 1699
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 2495
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionTooOld:Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    .line 2498
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Ljava/util/function/Consumer;

    .line 586
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 587
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    .line 588
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->startTracking()V

    .line 589
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 590
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 591
    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 592
    iput-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 595
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    .line 596
    .local v0, "appStandby":Lcom/android/server/usage/AppStandbyInternal;
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {v0, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 598
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 599
    .local v2, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 601
    const-class v3, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PowerAllowlistInternal;

    .line 602
    .local v3, "pai":Lcom/android/server/PowerAllowlistInternal;
    new-instance v4, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {v3, v4}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    .line 605
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {v5, p0, v1}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-interface {v4, v5, v7, v6, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 608
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {v5, p0, v1}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V

    const/4 v6, 0x2

    invoke-interface {v4, v5, v7, v6, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    goto :goto_0

    .line 611
    :catch_0
    move-exception v1

    .line 614
    :goto_0
    return-void

    :array_0
    .array-data 8
        0x927c0
        0x6ddd00
        0x1b77400
        0x5265c00
        0x0
        0x5265c00
    .end array-data

    :array_1
    .array-data 4
        0x4b
        0x78
        0xc8
        0x30
        0x0
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x4b
        0xa
        0x8
        0x3
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 8
        0x1b7740
        0x1b7740
        0x927c0
        0x927c0
        0x0
        0x493e0
    .end array-data
.end method

.method static synthetic access$000(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .line 115
    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 115
    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->hashLong(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 115
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->handleNewChargingStateLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/job/controllers/QuotaController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .param p4, "x4"    # Z
    .param p5, "x5"    # J

    .line 115
    invoke-direct/range {p0 .. p6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->incrementTimingSessionCountLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .param p6, "x5"    # J

    .line 115
    invoke-direct/range {p0 .. p7}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/job/controllers/QuotaController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForUidLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->grantRewardForInstantEvent(ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/android/server/job/controllers/QuotaController;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/job/controllers/QuotaController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/job/controllers/QuotaController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method static synthetic access$4602(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide p1
.end method

.method static synthetic access$4700(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method static synthetic access$4702(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide p1
.end method

.method static synthetic access$4802(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    return-wide p1
.end method

.method static synthetic access$4900(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method static synthetic access$4902(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide p1
.end method

.method static synthetic access$5000(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide p1
.end method

.method static synthetic access$5102(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    return-wide p1
.end method

.method static synthetic access$5200(Lcom/android/server/job/controllers/QuotaController;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method static synthetic access$5302(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide p1
.end method

.method static synthetic access$5400(Lcom/android/server/job/controllers/QuotaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/job/controllers/QuotaController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I

    .line 115
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/job/controllers/QuotaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/server/job/controllers/QuotaController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # I

    .line 115
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p1
.end method

.method static synthetic access$5600(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method static synthetic access$5602(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide p1
.end method

.method static synthetic access$5700(Lcom/android/server/job/controllers/QuotaController;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method static synthetic access$5802(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide p1
.end method

.method static synthetic access$5900(Lcom/android/server/job/controllers/QuotaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 115
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method static synthetic access$5902(Lcom/android/server/job/controllers/QuotaController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v0

    return v0
.end method

.method private cacheInstallerPackagesLocked(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 773
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 774
    const v1, 0x4c3000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 775
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 776
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 777
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 778
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    invoke-static {v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 781
    .local v4, "idx":I
    if-ltz v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 782
    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_0

    .line 783
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 775
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "idx":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 786
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J
    .locals 15
    .param p2, "windowStartElapsed"    # J
    .param p4, "deadSpaceMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;JJ)J"
        }
    .end annotation

    .line 1086
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    const-wide/16 v0, 0x0

    .line 1087
    .local v0, "timeUntilQuotaConsumedMs":J
    move-wide/from16 v2, p2

    .line 1088
    .local v2, "start":J
    const/4 v4, 0x0

    move v6, v4

    move-wide v4, v2

    move-wide v2, v0

    move-wide/from16 v0, p4

    .end local p4    # "deadSpaceMs":J
    .local v0, "deadSpaceMs":J
    .local v2, "timeUntilQuotaConsumedMs":J
    .local v4, "start":J
    .local v6, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1089
    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1091
    .local v8, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v9, v9, p2

    if-gez v9, :cond_0

    .line 1093
    goto :goto_1

    .line 1094
    :cond_0
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v9, v9, p2

    if-gtz v9, :cond_1

    .line 1096
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v9, v9, p2

    add-long/2addr v2, v9

    .line 1097
    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    goto :goto_1

    .line 1101
    :cond_1
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v9, v4

    .line 1102
    .local v9, "diff":J
    cmp-long v11, v9, v0

    if-lez v11, :cond_2

    .line 1103
    goto :goto_2

    .line 1105
    :cond_2
    iget-wide v11, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v13, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v11, v13

    add-long/2addr v11, v9

    add-long/2addr v2, v11

    .line 1107
    sub-long/2addr v0, v9

    .line 1108
    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 1088
    .end local v8    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v9    # "diff":J
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v7, p1

    .line 1112
    .end local v6    # "i":I
    :goto_2
    add-long/2addr v2, v0

    .line 1113
    move-object v6, p0

    iget-wide v8, v6, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_4

    .line 1114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calculated quota consumed time too high: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "JobScheduler.Quota"

    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_4
    return-wide v2
.end method

.method private getEJLimitMsLocked(ILjava/lang/String;I)J
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 1021
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, p3

    .line 1022
    .local v0, "baseLimitMs":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1023
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    add-long/2addr v2, v0

    return-wide v2

    .line 1025
    :cond_0
    return-wide v0
.end method

.method private getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I
    .param p4, "refreshStatsIfOld"    # Z

    .line 1187
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 1188
    const-string v0, "JobScheduler.Quota"

    const-string v1, "getExecutionStatsLocked called for a NEVER app."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v0}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object v0

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1192
    .local v0, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v0, :cond_1

    .line 1193
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v1, v1

    new-array v0, v1, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1194
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1196
    :cond_1
    aget-object v1, v0, p3

    .line 1197
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v1, :cond_2

    .line 1198
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v2}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v1, v2

    .line 1199
    aput-object v1, v0, p3

    .line 1201
    :cond_2
    if-eqz p4, :cond_5

    .line 1202
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    aget-wide v2, v2, p3

    .line 1203
    .local v2, "bucketWindowSizeMs":J
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget v4, v4, p3

    .line 1204
    .local v4, "jobCountLimit":I
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget v5, v5, p3

    .line 1205
    .local v5, "sessionCountLimit":I
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1206
    .local v6, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1207
    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v7, v7, v2

    if-nez v7, :cond_4

    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v7, v4, :cond_4

    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-eq v7, v5, :cond_5

    .line 1212
    :cond_4
    iput-wide v2, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 1213
    iput v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 1214
    iput v5, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 1215
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    .line 1219
    .end local v2    # "bucketWindowSizeMs":J
    .end local v4    # "jobCountLimit":I
    .end local v5    # "sessionCountLimit":I
    .end local v6    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_5
    return-object v1
.end method

.method private getRemainingExecutionTimeLocked(ILjava/lang/String;I)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 962
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 963
    const-wide/16 v0, 0x0

    return-wide v0

    .line 965
    :cond_0
    nop

    .line 966
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    .line 965
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J
    .locals 6
    .param p1, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 970
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private grantRewardForInstantEvent(ILjava/lang/String;J)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "credit"    # J

    .line 1456
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1457
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1458
    .local v1, "nowElapsed":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v8

    .line 1459
    .local v8, "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-wide v6, v1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1460
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1461
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1463
    .end local v1    # "nowElapsed":J
    .end local v8    # "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    :cond_0
    monitor-exit v0

    .line 1464
    return-void

    .line 1463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleNewChargingStateLocked()V
    .locals 4

    .line 1568
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    .line 1569
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v3

    .line 1568
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->access$800(Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;JZ)V

    .line 1570
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNewChargingStateLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1575
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1577
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 1578
    return-void
.end method

.method private static hashLong(J)I
    .locals 2
    .param p0, "val"    # J

    .line 174
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private incrementTimingSessionCountLocked(ILjava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1404
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1405
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1406
    .local v2, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v2, :cond_0

    .line 1407
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1408
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1410
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1411
    aget-object v4, v2, v3

    .line 1412
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_1

    .line 1413
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    .line 1414
    aput-object v4, v2, v3

    .line 1416
    :cond_1
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_2

    .line 1417
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1418
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1420
    :cond_2
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1410
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1422
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private isQuotaFreeLocked(I)Z
    .locals 2
    .param p1, "standbyBucket"    # I

    .line 900
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 903
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 905
    :cond_1
    return v1
.end method

.method private isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 799
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUidInForeground(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 789
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const/4 v0, 0x1

    return v0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .locals 7
    .param p1, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .param p2, "standbyBucket"    # I

    .line 924
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 925
    .local v0, "now":J
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    if-ge v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 928
    .local v2, "isUnderAllowedTimeQuota":Z
    :goto_1
    if-eqz v2, :cond_2

    iget v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget v6, v6, p2

    if-ge v5, v6, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method private isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .locals 7
    .param p1, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .param p2, "standbyBucket"    # I

    .line 934
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 935
    .local v0, "now":J
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    if-ge v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 937
    .local v2, "isUnderAllowedTimeQuota":Z
    :goto_1
    if-eqz v2, :cond_2

    iget v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget v6, v6, p2

    if-ge v5, v6, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method static synthetic lambda$dumpControllerStateLocked$4(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/QuotaController$TopAppTimer;)V
    .locals 0
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "timer"    # Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 4228
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic lambda$invalidateAllExecutionStatsLocked$0(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 2
    .param p0, "nowElapsed"    # J
    .param p2, "appStats"    # [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1354
    if-eqz p2, :cond_1

    .line 1355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 1356
    aget-object v1, p2, v0

    .line 1357
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v1, :cond_0

    .line 1358
    iput-wide p0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1355
    .end local v1    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1362
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private maybeUpdateAllConstraintsLocked()V
    .locals 8

    .line 1581
    const/4 v0, 0x0

    .line 1582
    .local v0, "changed":Z
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1583
    .local v1, "nowElapsed":J
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1584
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    .line 1585
    .local v4, "userId":I
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1586
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1587
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1, v2, v4, v6}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 1585
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1583
    .end local v4    # "userId":I
    .end local v5    # "p":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1590
    .end local v3    # "u":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1591
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1593
    :cond_2
    return-void
.end method

.method private maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Z
    .locals 10
    .param p1, "nowElapsed"    # J
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1602
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p3, p4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1603
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 1608
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v1

    .line 1609
    .local v1, "realStandbyBucket":I
    invoke-virtual {p0, p3, p4, v1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v2

    .line 1610
    .local v2, "realInQuota":Z
    const/4 v3, 0x0

    .line 1611
    .local v3, "outOfEJQuota":Z
    const/4 v4, 0x0

    .line 1612
    .local v4, "changed":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 1613
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    .line 1614
    .local v7, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v7}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1617
    invoke-virtual {v7, p1, p2, v6}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(JZ)Z

    move-result v8

    or-int/2addr v4, v8

    goto :goto_1

    .line 1618
    :cond_1
    if-eqz v1, :cond_2

    .line 1619
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v8

    if-ne v1, v8, :cond_2

    .line 1623
    invoke-direct {p0, v7, p1, p2, v2}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v8

    or-int/2addr v4, v8

    goto :goto_1

    .line 1626
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    invoke-direct {p0, v7, p1, p2, v8}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v8

    or-int/2addr v4, v8

    .line 1629
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1630
    invoke-virtual {p0, v7}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    .line 1631
    .local v8, "isWithinEJQuota":Z
    invoke-direct {p0, v7, p1, p2, v8}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v9

    or-int/2addr v4, v9

    .line 1632
    xor-int/lit8 v9, v8, 0x1

    or-int/2addr v3, v9

    .line 1612
    .end local v7    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v8    # "isWithinEJQuota":Z
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1635
    .end local v5    # "i":I
    :cond_4
    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    goto :goto_2

    .line 1641
    :cond_5
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v5, p3, p4}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(ILjava/lang/String;)V

    goto :goto_3

    .line 1639
    :cond_6
    :goto_2
    invoke-virtual {p0, p3, p4, v1}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 1643
    :goto_3
    return v4

    .line 1604
    .end local v1    # "realStandbyBucket":I
    .end local v2    # "realInQuota":Z
    .end local v3    # "outOfEJQuota":Z
    .end local v4    # "changed":Z
    :cond_7
    :goto_4
    return v1
.end method

.method private maybeUpdateConstraintForUidLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1702
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->prepare()V

    .line 1703
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 1705
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->postProcess()V

    .line 1706
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    .line 1707
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->reset()V

    .line 1708
    return v0
.end method

.method private saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .param p4, "isExpedited"    # Z
    .param p5, "debitAdjustment"    # J

    .line 1432
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1434
    if-eqz p4, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    .line 1435
    .local v1, "sessionMap":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;>;"
    :goto_0
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1436
    .local v2, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-nez v2, :cond_1

    .line 1437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 1438
    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1440
    :cond_1
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    if-eqz p4, :cond_2

    .line 1442
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v3

    .line 1443
    .local v3, "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    iget-wide v4, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v6, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v6

    add-long/2addr v4, p5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 1445
    nop

    .end local v3    # "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    goto :goto_1

    .line 1447
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1451
    .end local v1    # "sessionMap":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;>;"
    .end local v2    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :goto_1
    monitor-exit v0

    .line 1452
    return-void

    .line 1451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsed"    # J
    .param p4, "isWithinQuota"    # Z

    .line 1811
    if-nez p4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1813
    invoke-virtual {p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    .line 1815
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(JZ)Z

    move-result v0

    return v0
.end method

.method private setExpeditedConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsed"    # J
    .param p4, "isWithinQuota"    # Z

    .line 1824
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setExpeditedJobQuotaConstraintSatisfied(JZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1825
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1826
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1827
    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1830
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1832
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static string(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "nowElapsed"    # J
    .param p5, "debits"    # Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .param p6, "credit"    # J

    .line 1468
    invoke-virtual {p5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v0

    .line 1469
    .local v0, "oldTally":J
    neg-long v2, p6

    invoke-virtual {p5, v2, v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    move-result-wide v2

    .line 1470
    .local v2, "leftover":J
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "debits overflowed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler.Quota"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_0
    invoke-virtual {p5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1474
    .local v4, "changed":Z
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_2

    .line 1476
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1477
    .local v5, "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1478
    invoke-virtual {v5, p3, p4, v2, v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->updateDebitAdjustment(JJ)V

    .line 1479
    const/4 v4, 0x1

    .line 1482
    .end local v5    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_2
    return v4
.end method


# virtual methods
.method public clearAppStatsLocked(ILjava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 749
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 751
    .local v0, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    const-string v2, "clearAppStats called before Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 757
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 758
    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    const-string v2, "clearAppStats called before EJ Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 764
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(ILjava/lang/String;)V

    .line 767
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 770
    return-void
.end method

.method deleteObsoleteSessionsLocked()V
    .locals 12

    .line 2507
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionTooOld:Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;->access$3200(Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;)V

    .line 2510
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldSessionsFunctor:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2513
    const/4 v0, 0x0

    .local v0, "uIdx":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2514
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 2515
    .local v1, "userId":I
    const/4 v2, 0x0

    .local v2, "pIdx":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2516
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2517
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v4

    .line 2518
    .local v4, "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2519
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-nez v5, :cond_0

    .line 2520
    goto :goto_3

    .line 2523
    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2524
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2525
    .local v7, "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionTooOld:Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;->test(Lcom/android/server/job/controllers/QuotaController$TimingSession;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2527
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v8, v10

    .line 2528
    .local v8, "duration":J
    neg-long v10, v8

    invoke-virtual {v4, v10, v11}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 2529
    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2533
    .end local v7    # "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v8    # "duration":J
    goto :goto_2

    .line 2515
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .end local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2513
    .end local v1    # "userId":I
    .end local v2    # "pIdx":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2536
    .end local v0    # "uIdx":I
    :cond_3
    return-void
.end method

.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 4416
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$6100(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/IndentingPrintWriter;)V

    .line 4417
    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 4421
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$6200(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V

    .line 4422
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 9
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 4104
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is charging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current elapsed time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4106
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4108
    const-string v0, "Foreground UIDs: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4109
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4112
    const-string v0, "Cached top apps: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4113
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4114
    const-string v0, "Cached top app grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4115
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    const-string v0, "Cached temp allowlist: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4118
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4119
    const-string v0, "Cached temp allowlist grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4120
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4121
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4123
    const-string v0, "Special apps:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4124
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4125
    const-string v0, "System installers={"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4126
    const/4 v0, 0x0

    .local v0, "si":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4127
    if-lez v0, :cond_0

    .line 4128
    const-string v1, ", "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4130
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 4131
    const-string v1, "->"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4132
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 4126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4134
    .end local v0    # "si":I
    :cond_1
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4135
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4137
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4138
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 4181
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4182
    const/4 v0, 0x0

    .local v0, "u":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    const-string v2, "Saved sessions:"

    if-ge v0, v1, :cond_5

    .line 4183
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 4184
    .local v1, "userId":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 4185
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4186
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 4187
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4188
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4189
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v5, :cond_3

    .line 4190
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4191
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4193
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_3
    if-ltz v6, :cond_2

    .line 4194
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 4195
    .local v7, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    invoke-virtual {v7, p1}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4193
    .end local v7    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 4197
    .end local v6    # "j":I
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4198
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4199
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4184
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4182
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4204
    .end local v0    # "u":I
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4205
    const/4 v0, 0x0

    .restart local v0    # "u":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 4206
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 4207
    .restart local v1    # "userId":I
    const/4 v3, 0x0

    .restart local v3    # "p":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 4208
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4209
    .restart local v4    # "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 4210
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4211
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4212
    .restart local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v5, :cond_7

    .line 4213
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4214
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4215
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4216
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .restart local v6    # "j":I
    :goto_6
    if-ltz v6, :cond_6

    .line 4217
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 4218
    .restart local v7    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    invoke-virtual {v7, p1}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4216
    .end local v7    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 4220
    .end local v6    # "j":I
    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4221
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4222
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4207
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4205
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4227
    .end local v0    # "u":I
    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4228
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 4230
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4231
    const-string v0, "Cached execution stats:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4232
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4233
    const/4 v0, 0x0

    .restart local v0    # "u":I
    :goto_7
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    const-string v2, ": "

    if-ge v0, v1, :cond_d

    .line 4234
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 4235
    .restart local v1    # "userId":I
    const/4 v3, 0x0

    .restart local v3    # "p":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 4236
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4237
    .restart local v4    # "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 4239
    .local v5, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4240
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4241
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9
    array-length v7, v5

    if-ge v6, v7, :cond_b

    .line 4242
    aget-object v7, v5, v6

    .line 4243
    .local v7, "executionStats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v7, :cond_a

    .line 4244
    invoke-static {v6}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4246
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4241
    .end local v7    # "executionStats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 4249
    .end local v6    # "i":I
    :cond_b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4235
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 4233
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4252
    .end local v0    # "u":I
    :cond_d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4254
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4255
    const-string v0, "EJ debits:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4256
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4257
    const/4 v0, 0x0

    .restart local v0    # "u":I
    :goto_a
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 4258
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 4259
    .restart local v1    # "userId":I
    const/4 v3, 0x0

    .restart local v3    # "p":I
    :goto_b
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 4260
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4261
    .restart local v4    # "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 4263
    .local v5, "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4264
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4265
    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 4259
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4257
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4268
    .end local v0    # "u":I
    :cond_f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4270
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4271
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 4272
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4273
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 23
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 4278
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 4279
    .local v3, "token":J
    const-wide v5, 0x10b00000009L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4281
    .local v5, "mToken":J
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    .line 4282
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v7

    .line 4281
    const-wide v8, 0x10800000001L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4283
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 4284
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 4283
    const-wide v9, 0x10300000006L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4286
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 4287
    const-wide v11, 0x20500000003L

    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 4288
    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 4287
    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4286
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4291
    .end local v7    # "i":I
    :cond_0
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v8, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;

    invoke-direct {v8, v0, v2, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v7, v8}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 4320
    const/4 v7, 0x0

    .local v7, "u":I
    :goto_1
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 4321
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    .line 4322
    .local v8, "userId":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_2
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v12

    if-ge v11, v12, :cond_7

    .line 4323
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v12, v7, v11}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 4324
    .local v12, "pkgName":Ljava/lang/String;
    const-wide v13, 0x20b00000005L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 4327
    .local v13, "psToken":J
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v15, v7, v11}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v9, 0x10b00000002L

    invoke-virtual {v15, v1, v9, v10, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    .line 4329
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v8, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 4330
    .local v9, "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v9, :cond_1

    .line 4331
    move-wide/from16 v16, v3

    .end local v3    # "token":J
    .local v16, "token":J
    const-wide v3, 0x10b00000006L

    invoke-virtual {v9, v1, v3, v4, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    goto :goto_3

    .line 4330
    .end local v16    # "token":J
    .restart local v3    # "token":J
    :cond_1
    move-wide/from16 v16, v3

    .line 4336
    .end local v3    # "token":J
    .restart local v16    # "token":J
    :goto_3
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v8, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4337
    .local v3, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v3, :cond_3

    .line 4338
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_4
    if-ltz v4, :cond_2

    .line 4339
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 4340
    .local v10, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-object v15, v3

    .end local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .local v15, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    const-wide v2, 0x20b00000003L

    invoke-virtual {v10, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4338
    .end local v10    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v2, p4

    move-object v3, v15

    goto :goto_4

    .end local v15    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_2
    move-object v15, v3

    .end local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v15    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    goto :goto_5

    .line 4337
    .end local v4    # "j":I
    .end local v15    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :cond_3
    move-object v15, v3

    .line 4345
    .end local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .restart local v15    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    :goto_5
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v8, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 4346
    .local v2, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v2, :cond_6

    .line 4347
    const/4 v3, 0x0

    .local v3, "bucketIndex":I
    :goto_6
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 4348
    aget-object v4, v2, v3

    .line 4349
    .local v4, "es":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_4

    .line 4350
    move-wide/from16 v19, v5

    move/from16 v22, v8

    move-object/from16 v18, v9

    move/from16 v21, v11

    goto/16 :goto_7

    .line 4352
    :cond_4
    move v10, v8

    move-object/from16 v18, v9

    .end local v8    # "userId":I
    .end local v9    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .local v10, "userId":I
    .local v18, "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    const-wide v8, 0x20b00000004L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4354
    .local v8, "esToken":J
    move-wide/from16 v19, v5

    .end local v5    # "mToken":J
    .local v19, "mToken":J
    const-wide v5, 0x10e00000001L

    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4357
    const-wide v5, 0x10300000002L

    move/from16 v22, v10

    move/from16 v21, v11

    .end local v10    # "userId":I
    .end local v11    # "p":I
    .local v21, "p":I
    .local v22, "userId":I
    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4360
    const-wide v5, 0x10300000003L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4363
    const-wide v5, 0x1050000000eL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4366
    const-wide v5, 0x1050000000fL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4369
    const-wide v5, 0x10300000004L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4372
    const-wide v5, 0x10500000005L

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4375
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v10, 0x10300000006L

    invoke-virtual {v1, v10, v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4378
    const-wide v5, 0x10500000007L

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4381
    const-wide v5, 0x1050000000bL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4384
    const-wide v5, 0x10300000008L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4387
    const-wide v5, 0x10300000009L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4390
    const-wide v5, 0x1050000000aL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4393
    const-wide v5, 0x1030000000cL

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4396
    const-wide v5, 0x1050000000dL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4399
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4347
    .end local v4    # "es":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v8    # "esToken":J
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v9, v18

    move-wide/from16 v5, v19

    move/from16 v11, v21

    move/from16 v8, v22

    goto/16 :goto_6

    .end local v18    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v19    # "mToken":J
    .end local v21    # "p":I
    .end local v22    # "userId":I
    .restart local v5    # "mToken":J
    .local v8, "userId":I
    .restart local v9    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v11    # "p":I
    :cond_5
    move-wide/from16 v19, v5

    move/from16 v22, v8

    move-object/from16 v18, v9

    move/from16 v21, v11

    .end local v5    # "mToken":J
    .end local v8    # "userId":I
    .end local v9    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v11    # "p":I
    .restart local v18    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v19    # "mToken":J
    .restart local v21    # "p":I
    .restart local v22    # "userId":I
    goto :goto_8

    .line 4346
    .end local v3    # "bucketIndex":I
    .end local v18    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v19    # "mToken":J
    .end local v21    # "p":I
    .end local v22    # "userId":I
    .restart local v5    # "mToken":J
    .restart local v8    # "userId":I
    .restart local v9    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v11    # "p":I
    :cond_6
    move-wide/from16 v19, v5

    move/from16 v22, v8

    move-object/from16 v18, v9

    move/from16 v21, v11

    .line 4403
    .end local v5    # "mToken":J
    .end local v8    # "userId":I
    .end local v9    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v11    # "p":I
    .restart local v18    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v19    # "mToken":J
    .restart local v21    # "p":I
    .restart local v22    # "userId":I
    :goto_8
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4322
    .end local v2    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "psToken":J
    .end local v15    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .end local v18    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    add-int/lit8 v11, v21, 0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v16

    move-wide/from16 v5, v19

    move/from16 v8, v22

    const-wide v9, 0x10300000006L

    .end local v21    # "p":I
    .restart local v11    # "p":I
    goto/16 :goto_2

    .end local v16    # "token":J
    .end local v19    # "mToken":J
    .end local v22    # "userId":I
    .local v3, "token":J
    .restart local v5    # "mToken":J
    .restart local v8    # "userId":I
    :cond_7
    move-wide/from16 v16, v3

    move-wide/from16 v19, v5

    move/from16 v22, v8

    move/from16 v21, v11

    .line 4320
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v8    # "userId":I
    .end local v11    # "p":I
    .restart local v16    # "token":J
    .restart local v19    # "mToken":J
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p4

    const-wide v9, 0x10300000006L

    goto/16 :goto_1

    .end local v16    # "token":J
    .end local v19    # "mToken":J
    .restart local v3    # "token":J
    .restart local v5    # "mToken":J
    :cond_8
    move-wide/from16 v16, v3

    move-wide/from16 v19, v5

    .line 4407
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v7    # "u":I
    .restart local v16    # "token":J
    .restart local v19    # "mToken":J
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->dumpLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4410
    move-wide/from16 v2, v19

    .end local v19    # "mToken":J
    .local v2, "mToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4411
    move-wide/from16 v4, v16

    .end local v16    # "token":J
    .local v4, "token":J
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4412
    return-void
.end method

.method getAllowedTimePerPeriodMs()J
    .locals 2

    .line 3957
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    return-wide v0
.end method

.method getBucketMaxJobCounts()[I
    .locals 1

    .line 3963
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object v0
.end method

.method getBucketMaxSessionCounts()[I
    .locals 1

    .line 3969
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object v0
.end method

.method getBucketWindowSizes()[J
    .locals 1

    .line 3975
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object v0
.end method

.method getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 873
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 874
    .local v0, "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    if-nez v0, :cond_0

    .line 875
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 877
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 876
    invoke-static {p2, p1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;-><init>(I)V

    move-object v0, v1

    .line 879
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 881
    :cond_0
    return-object v0
.end method

.method getEJGracePeriodTempAllowlistMs()J
    .locals 2

    .line 3992
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method getEJGracePeriodTopAppMs()J
    .locals 2

    .line 3997
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method getEJLimitWindowSizeMs()J
    .locals 2

    .line 4019
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method getEJLimitsMs()[J
    .locals 1

    .line 4003
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object v0
.end method

.method getEJRewardInteractionMs()J
    .locals 2

    .line 4025
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method getEJRewardNotificationSeenMs()J
    .locals 2

    .line 4031
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method getEJRewardTopAppMs()J
    .locals 2

    .line 4037
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method getEJTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;"
        }
    .end annotation

    .line 4043
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getEJTopAppTimeChunkSizeMs()J
    .locals 2

    .line 4049
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method getEjLimitAdditionInstallerMs()J
    .locals 2

    .line 4008
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method getEjLimitAdditionSpecialMs()J
    .locals 2

    .line 4013
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 1180
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    return-object v0
.end method

.method getForegroundUids()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 3981
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 3987
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object v0
.end method

.method getInQuotaBufferMs()J
    .locals 2

    .line 4054
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method getMaxExecutionTimeMs()J
    .locals 2

    .line 4059
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method getMaxJobCountPerRateLimitingWindow()I
    .locals 1

    .line 4064
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return v0
.end method

.method public getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 805
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 809
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    nop

    .line 815
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 812
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide v0

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mChargeTracker:Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isChargingLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide v0

    .line 822
    :cond_3
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const-wide/16 v1, 0x2

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 827
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 828
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    div-long/2addr v3, v1

    .line 830
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 829
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v0

    .line 828
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 832
    :cond_5
    nop

    .line 833
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 823
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    div-long/2addr v3, v1

    .line 825
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 824
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v0

    .line 823
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getMaxSessionCountPerRateLimitingWindow()I
    .locals 1

    .line 4069
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return v0
.end method

.method getMinQuotaCheckDelayMs()J
    .locals 2

    .line 4074
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->access$6000(Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method getQcConstants()Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .locals 1

    .line 4096
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    return-object v0
.end method

.method getRateLimitingWindowMs()J
    .locals 2

    .line 4079
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J
    .locals 19
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 976
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v3

    .line 977
    .local v3, "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 978
    const-wide/16 v4, 0x0

    return-wide v4

    .line 980
    :cond_0
    nop

    .line 981
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v4

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v4

    .line 982
    .local v4, "limitMs":J
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 985
    .local v6, "remainingMs":J
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 986
    .local v8, "timingSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 987
    .local v9, "nowElapsed":J
    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long v11, v9, v11

    .line 988
    .local v11, "windowStartTimeElapsed":J
    if-eqz v8, :cond_3

    .line 989
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 990
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 991
    .local v14, "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-wide v15, v4

    .end local v4    # "limitMs":J
    .local v15, "limitMs":J
    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v4, v11

    if-gez v4, :cond_1

    .line 992
    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v17, v9

    .end local v9    # "nowElapsed":J
    .local v17, "nowElapsed":J
    iget-wide v9, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v9

    .line 993
    .local v4, "duration":J
    add-long/2addr v6, v4

    .line 994
    neg-long v9, v4

    invoke-virtual {v3, v9, v10}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 995
    invoke-interface {v8, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 996
    .end local v4    # "duration":J
    nop

    .line 1003
    .end local v14    # "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-wide v4, v15

    move-wide/from16 v9, v17

    goto :goto_0

    .line 996
    .end local v17    # "nowElapsed":J
    .restart local v9    # "nowElapsed":J
    .restart local v14    # "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_1
    move-wide/from16 v17, v9

    .end local v9    # "nowElapsed":J
    .restart local v17    # "nowElapsed":J
    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v4, v11

    if-gez v4, :cond_4

    .line 997
    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long v4, v11, v4

    add-long/2addr v6, v4

    .line 998
    goto :goto_1

    .line 989
    .end local v14    # "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v15    # "limitMs":J
    .end local v17    # "nowElapsed":J
    .local v4, "limitMs":J
    .restart local v9    # "nowElapsed":J
    :cond_2
    move-wide v15, v4

    move-wide/from16 v17, v9

    .end local v4    # "limitMs":J
    .end local v9    # "nowElapsed":J
    .restart local v15    # "limitMs":J
    .restart local v17    # "nowElapsed":J
    goto :goto_1

    .line 988
    .end local v15    # "limitMs":J
    .end local v17    # "nowElapsed":J
    .restart local v4    # "limitMs":J
    .restart local v9    # "nowElapsed":J
    :cond_3
    move-wide v15, v4

    move-wide/from16 v17, v9

    .line 1006
    .end local v4    # "limitMs":J
    .end local v9    # "nowElapsed":J
    .restart local v15    # "limitMs":J
    .restart local v17    # "nowElapsed":J
    :cond_4
    :goto_1
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 1007
    .local v4, "topAppTimer":Lcom/android/server/job/controllers/QuotaController$TopAppTimer;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1008
    move-wide/from16 v9, v17

    .end local v17    # "nowElapsed":J
    .restart local v9    # "nowElapsed":J
    invoke-virtual {v4, v9, v10}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->getPendingReward(J)J

    move-result-wide v13

    add-long/2addr v6, v13

    goto :goto_2

    .line 1007
    .end local v9    # "nowElapsed":J
    .restart local v17    # "nowElapsed":J
    :cond_5
    move-wide/from16 v9, v17

    .line 1011
    .end local v17    # "nowElapsed":J
    .restart local v9    # "nowElapsed":J
    :goto_2
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1012
    .local v5, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-nez v5, :cond_6

    .line 1013
    return-wide v6

    .line 1016
    :cond_6
    sget-object v13, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v13}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v13

    sub-long v13, v6, v13

    return-wide v13
.end method

.method getRemainingExecutionTimeLocked(ILjava/lang/String;)J
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 950
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 951
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 950
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    .line 952
    .local v0, "standbyBucket":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v1

    return-wide v1
.end method

.method getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 943
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 944
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 945
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    .line 943
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J
    .locals 28
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1126
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1127
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v3

    .line 1129
    .local v3, "remainingExecutionTimeMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1130
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_5

    .line 1134
    :cond_0
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 1135
    .local v6, "nowElapsed":J
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v8

    .line 1136
    .local v8, "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    nop

    .line 1137
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v9

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v9

    .line 1138
    .local v9, "limitMs":J
    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long v11, v6, v11

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 1139
    .local v11, "startWindowElapsed":J
    move-wide v15, v3

    .line 1141
    .local v15, "remainingDeadSpaceMs":J
    const-wide/16 v17, 0x0

    .line 1143
    .local v17, "deadSpaceMs":J
    const-wide/16 v19, 0x0

    .line 1145
    .local v19, "phasedOutSessionTimeMs":J
    const/16 v21, 0x0

    move-wide v13, v15

    move/from16 v15, v21

    .local v13, "remainingDeadSpaceMs":J
    .local v15, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_6

    .line 1146
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1147
    .local v0, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v1, v1, v11

    if-gez v1, :cond_1

    .line 1150
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v22, v6

    .end local v6    # "nowElapsed":J
    .local v22, "nowElapsed":J
    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v6

    add-long/2addr v13, v1

    .line 1151
    invoke-interface {v5, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1152
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v26, v11

    const-wide/16 v1, 0x0

    goto :goto_3

    .line 1153
    .end local v22    # "nowElapsed":J
    .restart local v6    # "nowElapsed":J
    :cond_1
    move-wide/from16 v22, v6

    .end local v6    # "nowElapsed":J
    .restart local v22    # "nowElapsed":J
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v1, v1, v11

    if-gez v1, :cond_2

    .line 1155
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v1, v11

    move-wide/from16 v19, v1

    move-wide/from16 v26, v11

    const-wide/16 v1, 0x0

    .end local v19    # "phasedOutSessionTimeMs":J
    .local v1, "phasedOutSessionTimeMs":J
    goto :goto_3

    .line 1158
    .end local v1    # "phasedOutSessionTimeMs":J
    .restart local v19    # "phasedOutSessionTimeMs":J
    :cond_2
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 1159
    if-nez v15, :cond_3

    move-wide v6, v11

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v15, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v6, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    :goto_1
    sub-long/2addr v1, v6

    .line 1160
    .local v1, "timeBetweenSessions":J
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1161
    .local v6, "usedDeadSpaceMs":J
    add-long v17, v17, v6

    .line 1162
    cmp-long v16, v6, v1

    if-nez v16, :cond_4

    .line 1163
    move-wide/from16 v24, v1

    .end local v1    # "timeBetweenSessions":J
    .local v24, "timeBetweenSessions":J
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v26, v11

    .end local v11    # "startWindowElapsed":J
    .local v26, "startWindowElapsed":J
    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v11

    add-long v19, v19, v1

    goto :goto_2

    .line 1162
    .end local v24    # "timeBetweenSessions":J
    .end local v26    # "startWindowElapsed":J
    .restart local v1    # "timeBetweenSessions":J
    .restart local v11    # "startWindowElapsed":J
    :cond_4
    move-wide/from16 v24, v1

    move-wide/from16 v26, v11

    .line 1165
    .end local v1    # "timeBetweenSessions":J
    .end local v11    # "startWindowElapsed":J
    .restart local v24    # "timeBetweenSessions":J
    .restart local v26    # "startWindowElapsed":J
    :goto_2
    sub-long/2addr v13, v6

    .line 1166
    const-wide/16 v1, 0x0

    cmp-long v11, v13, v1

    if-gtz v11, :cond_5

    .line 1167
    goto :goto_4

    .line 1145
    .end local v0    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v6    # "usedDeadSpaceMs":J
    .end local v24    # "timeBetweenSessions":J
    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v6, v22

    move-wide/from16 v11, v26

    goto :goto_0

    .end local v22    # "nowElapsed":J
    .end local v26    # "startWindowElapsed":J
    .local v6, "nowElapsed":J
    .restart local v11    # "startWindowElapsed":J
    :cond_6
    move-wide/from16 v22, v6

    move-wide/from16 v26, v11

    .line 1172
    .end local v6    # "nowElapsed":J
    .end local v11    # "startWindowElapsed":J
    .end local v15    # "i":I
    .restart local v22    # "nowElapsed":J
    .restart local v26    # "startWindowElapsed":J
    :goto_4
    add-long v0, v17, v19

    add-long/2addr v0, v13

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1131
    .end local v8    # "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .end local v9    # "limitMs":J
    .end local v13    # "remainingDeadSpaceMs":J
    .end local v17    # "deadSpaceMs":J
    .end local v19    # "phasedOutSessionTimeMs":J
    .end local v22    # "nowElapsed":J
    .end local v26    # "startWindowElapsed":J
    :cond_7
    :goto_5
    return-wide v3
.end method

.method getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .locals 22
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1036
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 1037
    .local v9, "nowElapsed":J
    invoke-static {v8, v7, v9, v10}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v11

    .line 1039
    .local v11, "standbyBucket":I
    const/4 v0, 0x4

    if-ne v11, v0, :cond_0

    .line 1040
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1043
    :cond_0
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    .line 1044
    .local v12, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    invoke-virtual {v6, v7, v8, v11}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v13

    .line 1045
    .local v13, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1054
    :cond_1
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v14, v9, v0

    .line 1055
    .local v14, "startWindowElapsed":J
    const-wide/32 v0, 0x5265c00

    sub-long v16, v9, v0

    .line 1056
    .local v16, "startMaxElapsed":J
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    iget-wide v2, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long v18, v0, v2

    .line 1057
    .local v18, "allowedTimeRemainingMs":J
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v2, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long v20, v0, v2

    .line 1062
    .local v20, "maxExecutionTimeRemainingMs":J
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-wide v2, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1063
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    return-wide v0

    .line 1071
    :cond_2
    nop

    .line 1072
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v16

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v4

    .line 1074
    move-wide v2, v14

    move-wide v7, v4

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    .line 1071
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1048
    .end local v14    # "startWindowElapsed":J
    .end local v16    # "startMaxElapsed":J
    .end local v18    # "allowedTimeRemainingMs":J
    .end local v20    # "maxExecutionTimeRemainingMs":J
    :cond_3
    :goto_0
    iget-wide v0, v13, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-wide v2, v6, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1049
    iget-wide v0, v6, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0

    .line 1051
    :cond_4
    return-wide v2
.end method

.method getTimingSessionCoalescingDurationMs()J
    .locals 2

    .line 4084
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimingSession;",
            ">;"
        }
    .end annotation

    .line 4090
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method incrementJobCountLocked(ILjava/lang/String;I)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 1382
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1383
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1384
    .local v2, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v2, :cond_0

    .line 1385
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1386
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1388
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1389
    aget-object v4, v2, v3

    .line 1390
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_1

    .line 1391
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    .line 1392
    aput-object v4, v2, v3

    .line 1394
    :cond_1
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_2

    .line 1395
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1396
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1398
    :cond_2
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v5, p3

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1388
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1400
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method invalidateAllExecutionStatsLocked()V
    .locals 4

    .line 1352
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1353
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1363
    return-void
.end method

.method invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1368
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1369
    .local v0, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v0, :cond_1

    .line 1370
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1371
    .local v1, "nowElapsed":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1372
    aget-object v4, v0, v3

    .line 1373
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v4, :cond_0

    .line 1374
    iput-wide v1, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1371
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1378
    .end local v1    # "nowElapsed":J
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 14
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 839
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 840
    return v1

    .line 846
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    .line 850
    :cond_1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 851
    .local v2, "nowElapsed":J
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 852
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 853
    .local v4, "tempAllowlistGracePeriodEndElapsed":J
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_3

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 855
    .local v0, "hasTempAllowlistExemption":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 856
    return v1

    .line 859
    :cond_4
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    .line 860
    .local v7, "topAppGracePeriodEndElapsed":J
    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_6

    cmp-long v9, v2, v7

    if-gez v9, :cond_5

    goto :goto_2

    :cond_5
    move v9, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v9, v1

    .line 862
    .local v9, "hasTopAppExemption":Z
    :goto_3
    if-eqz v9, :cond_7

    .line 863
    return v1

    .line 866
    :cond_7
    const-wide/16 v10, 0x0

    .line 867
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v12

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v13

    .line 866
    invoke-virtual {p0, v12, v13}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    goto :goto_4

    :cond_8
    move v1, v6

    :goto_4
    return v1

    .line 847
    .end local v0    # "hasTempAllowlistExemption":Z
    .end local v2    # "nowElapsed":J
    .end local v4    # "tempAllowlistGracePeriodEndElapsed":J
    .end local v7    # "topAppGracePeriodEndElapsed":J
    .end local v9    # "hasTopAppExemption":Z
    :cond_9
    :goto_5
    return v1
.end method

.method isWithinQuotaLocked(ILjava/lang/String;I)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 912
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    return v0

    .line 914
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 916
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v1

    .line 917
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 918
    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 919
    invoke-direct {p0, v1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    nop

    .line 917
    :goto_0
    return v0
.end method

.method isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 886
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    .line 891
    .local v0, "standbyBucket":I
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 892
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 894
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 893
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 891
    :goto_1
    return v1
.end method

.method public synthetic lambda$dumpControllerStateLocked$3$QuotaController(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .locals 4
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p3, "jobs"    # Landroid/util/ArraySet;

    .line 4139
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 4140
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 4141
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4142
    goto/16 :goto_3

    .line 4144
    :cond_0
    const-string v2, "#"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4145
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 4146
    const-string v2, " from "

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4147
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4148
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4149
    const-string v2, " (TOP)"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4151
    :cond_1
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4153
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4154
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4155
    const-string v2, ", "

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4156
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4157
    const-string/jumbo v3, "within EJ quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 4158
    :cond_2
    iget-boolean v3, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v3, :cond_3

    .line 4159
    const-string/jumbo v3, "out of EJ quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 4160
    :cond_3
    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4161
    const-string/jumbo v3, "within regular quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 4163
    :cond_4
    const-string/jumbo v3, "not within quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4165
    :goto_1
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4166
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4167
    nop

    .line 4168
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 4167
    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 4169
    const-string/jumbo v2, "ms remaining in EJ quota"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 4170
    :cond_5
    iget-boolean v2, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v2, :cond_6

    .line 4171
    const-string/jumbo v2, "should be stopped after min execution time"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 4173
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 4174
    const-string/jumbo v2, "ms remaining in quota"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4176
    :goto_2
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4177
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4139
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 4179
    .end local v0    # "j":I
    :cond_7
    return-void
.end method

.method public synthetic lambda$dumpControllerStateLocked$5$QuotaController(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .locals 8
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p3, "jobs"    # Landroid/util/ArraySet;

    .line 4292
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4293
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 4294
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4295
    goto :goto_1

    .line 4297
    :cond_0
    const-wide v2, 0x20b00000004L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 4298
    .local v2, "jsToken":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, p2, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4299
    const-wide v4, 0x10500000002L

    .line 4300
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    .line 4299
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4301
    const-wide v4, 0x10e00000003L

    .line 4303
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v6

    .line 4301
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4304
    const-wide v4, 0x10800000004L

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 4305
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 4304
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4306
    const-wide v4, 0x10800000005L

    const/high16 v6, 0x1000000

    .line 4307
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    .line 4306
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4308
    const-wide v4, 0x10300000006L

    .line 4309
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    .line 4308
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4310
    const-wide v4, 0x10800000007L

    .line 4312
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v6

    .line 4310
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4313
    const-wide v4, 0x10800000008L

    const/high16 v6, 0x800000

    .line 4315
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    .line 4313
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4316
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4292
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsToken":J
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 4318
    .end local v0    # "j":I
    :cond_1
    return-void
.end method

.method public synthetic lambda$new$1$QuotaController(Ljava/util/List;)V
    .locals 1
    .param p1, "sessions"    # Ljava/util/List;

    .line 2499
    if-eqz p1, :cond_0

    .line 2501
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionTooOld:Lcom/android/server/job/controllers/QuotaController$TimingSessionTooOldPredicate;

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2503
    :cond_0
    return-void
.end method

.method public synthetic lambda$onConstantsUpdatedLocked$2$QuotaController()V
    .locals 2

    .line 2967
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2968
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked()V

    .line 2969
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 2970
    monitor-exit v0

    .line 2971
    return-void

    .line 2970
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method maybeScheduleCleanupAlarmLocked()V
    .locals 15

    .line 1505
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1506
    .local v0, "nowElapsed":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    cmp-long v2, v2, v0

    const-string v3, "JobScheduler.Quota"

    if-lez v2, :cond_1

    .line 1509
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not scheduling cleanup since there\'s already one at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " (in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_0
    return-void

    .line 1516
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->reset()V

    .line 1517
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v2, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1518
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v2, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1519
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    iget-wide v4, v2, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 1520
    .local v4, "earliestEndElapsed":J
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 1523
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1524
    const-string v2, "Didn\'t find a time to schedule cleanup"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_2
    return-void

    .line 1530
    :cond_3
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v4

    .line 1531
    .local v6, "nextCleanupElapsed":J
    iget-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long v10, v6, v8

    const-wide/32 v12, 0x927c0

    cmp-long v2, v10, v12

    if-gtz v2, :cond_4

    .line 1534
    add-long v6, v8, v12

    .line 1536
    :cond_4
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 1537
    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x3

    iget-object v13, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v14, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const-string v12, "*job.cleanup*"

    move-wide v10, v6

    invoke-virtual/range {v8 .. v14}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1539
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheduled next cleanup for "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_5
    return-void
.end method

.method maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .locals 29
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 1718
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1719
    return-void

    .line 1722
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1723
    .local v4, "pkgString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v5

    .line 1724
    .local v5, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-direct {v0, v5, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v6

    .line 1725
    .local v6, "isUnderJobCountQuota":Z
    invoke-direct {v0, v5, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v7

    .line 1727
    .local v7, "isUnderTimingSessionCountQuota":Z
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v8

    .line 1729
    .local v8, "remainingEJQuota":J
    iget-wide v10, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v11, v13, v11

    if-gez v11, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 1733
    .local v11, "inRegularQuota":Z
    :goto_0
    const-wide/16 v12, 0x0

    const-string v14, "JobScheduler.Quota"

    if-eqz v11, :cond_3

    cmp-long v16, v8, v12

    if-lez v16, :cond_3

    .line 1735
    sget-boolean v10, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 1736
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "maybeScheduleStartAlarmLocked called for "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " even though it already has "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    invoke-direct/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms in its quota."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1736
    invoke-static {v14, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_2
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v10, v1, v2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmLocked(ILjava/lang/String;)V

    .line 1742
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v1, v13, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 1743
    return-void

    .line 1746
    :cond_3
    const-wide v15, 0x7fffffffffffffffL

    .line 1747
    .local v15, "inRegularQuotaTimeElapsed":J
    const-wide v17, 0x7fffffffffffffffL

    .line 1748
    .local v17, "inEJQuotaTimeElapsed":J
    if-nez v11, :cond_6

    .line 1750
    move/from16 v19, v11

    .end local v11    # "inRegularQuota":Z
    .local v19, "inRegularQuota":Z
    iget-wide v10, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1751
    .local v10, "inQuotaTimeElapsed":J
    if-nez v6, :cond_4

    iget v12, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v12, v13, :cond_4

    .line 1753
    iget-wide v12, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1754
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1756
    :cond_4
    if-nez v7, :cond_5

    iget v12, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v12, v13, :cond_5

    .line 1759
    iget-wide v12, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1760
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1762
    :cond_5
    move-wide v15, v10

    goto :goto_1

    .line 1748
    .end local v10    # "inQuotaTimeElapsed":J
    .end local v19    # "inRegularQuota":Z
    .restart local v11    # "inRegularQuota":Z
    :cond_6
    move/from16 v19, v11

    .end local v11    # "inRegularQuota":Z
    .restart local v19    # "inRegularQuota":Z
    move-wide v10, v15

    .line 1764
    .end local v15    # "inRegularQuotaTimeElapsed":J
    .local v10, "inRegularQuotaTimeElapsed":J
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-gtz v12, :cond_e

    .line 1765
    nop

    .line 1766
    invoke-direct/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v12

    move-object v15, v4

    .end local v4    # "pkgString":Ljava/lang/String;
    .local v15, "pkgString":Ljava/lang/String;
    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v12, v3

    .line 1767
    .local v12, "limitMs":J
    const-wide/16 v3, 0x0

    .line 1768
    .local v3, "sumMs":J
    move/from16 v16, v6

    .end local v6    # "isUnderJobCountQuota":Z
    .local v16, "isUnderJobCountQuota":Z
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1769
    .local v6, "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1770
    sget-object v21, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    move/from16 v22, v7

    move-wide/from16 v23, v8

    .end local v7    # "isUnderTimingSessionCountQuota":Z
    .end local v8    # "remainingEJQuota":J
    .local v22, "isUnderTimingSessionCountQuota":Z
    .local v23, "remainingEJQuota":J
    invoke-virtual/range {v21 .. v21}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 1771
    .local v7, "nowElapsed":J
    invoke-virtual {v6, v7, v8}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v25

    add-long v3, v3, v25

    .line 1772
    cmp-long v9, v3, v12

    if-ltz v9, :cond_7

    .line 1773
    sub-long v25, v7, v12

    move-wide/from16 v27, v3

    .end local v3    # "sumMs":J
    .local v27, "sumMs":J
    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long v17, v25, v3

    move-wide/from16 v3, v27

    goto :goto_2

    .line 1772
    .end local v27    # "sumMs":J
    .restart local v3    # "sumMs":J
    :cond_7
    move-wide/from16 v27, v3

    .end local v3    # "sumMs":J
    .restart local v27    # "sumMs":J
    goto :goto_2

    .line 1769
    .end local v22    # "isUnderTimingSessionCountQuota":Z
    .end local v23    # "remainingEJQuota":J
    .end local v27    # "sumMs":J
    .restart local v3    # "sumMs":J
    .local v7, "isUnderTimingSessionCountQuota":Z
    .restart local v8    # "remainingEJQuota":J
    :cond_8
    move/from16 v22, v7

    move-wide/from16 v23, v8

    .line 1776
    .end local v7    # "isUnderTimingSessionCountQuota":Z
    .end local v8    # "remainingEJQuota":J
    .restart local v22    # "isUnderTimingSessionCountQuota":Z
    .restart local v23    # "remainingEJQuota":J
    :goto_2
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1777
    .local v7, "timingSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v7, :cond_b

    .line 1778
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .local v8, "i":I
    :goto_3
    if-ltz v8, :cond_a

    .line 1779
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1780
    .local v9, "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v1, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v20, v10

    .end local v10    # "inRegularQuotaTimeElapsed":J
    .local v20, "inRegularQuotaTimeElapsed":J
    iget-wide v10, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v10

    .line 1781
    .local v1, "durationMs":J
    add-long/2addr v3, v1

    .line 1782
    cmp-long v10, v3, v12

    if-ltz v10, :cond_9

    .line 1783
    iget-wide v10, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long v25, v3, v12

    add-long v10, v10, v25

    move-wide/from16 v25, v1

    .end local v1    # "durationMs":J
    .local v25, "durationMs":J
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long/2addr v10, v1

    .line 1785
    .end local v17    # "inEJQuotaTimeElapsed":J
    .local v10, "inEJQuotaTimeElapsed":J
    move-wide/from16 v17, v10

    goto :goto_4

    .line 1782
    .end local v10    # "inEJQuotaTimeElapsed":J
    .end local v25    # "durationMs":J
    .restart local v1    # "durationMs":J
    .restart local v17    # "inEJQuotaTimeElapsed":J
    :cond_9
    move-wide/from16 v25, v1

    .line 1778
    .end local v1    # "durationMs":J
    .end local v9    # "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v8, v8, -0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v10, v20

    goto :goto_3

    .end local v20    # "inRegularQuotaTimeElapsed":J
    .local v10, "inRegularQuotaTimeElapsed":J
    :cond_a
    move-wide/from16 v20, v10

    .end local v8    # "i":I
    .end local v10    # "inRegularQuotaTimeElapsed":J
    .restart local v20    # "inRegularQuotaTimeElapsed":J
    :goto_4
    move-wide/from16 v1, v17

    goto :goto_5

    .line 1788
    .end local v20    # "inRegularQuotaTimeElapsed":J
    .restart local v10    # "inRegularQuotaTimeElapsed":J
    :cond_b
    move-wide/from16 v20, v10

    .end local v10    # "inRegularQuotaTimeElapsed":J
    .restart local v20    # "inRegularQuotaTimeElapsed":J
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    if-eqz v19, :cond_d

    .line 1792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1793
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has 0 EJ quota without running anything"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1792
    invoke-static {v14, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    return-void

    .line 1797
    .end local v3    # "sumMs":J
    .end local v6    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v7    # "timingSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    .end local v12    # "limitMs":J
    :cond_d
    move-wide/from16 v1, v17

    goto :goto_5

    .line 1764
    .end local v15    # "pkgString":Ljava/lang/String;
    .end local v16    # "isUnderJobCountQuota":Z
    .end local v20    # "inRegularQuotaTimeElapsed":J
    .end local v22    # "isUnderTimingSessionCountQuota":Z
    .end local v23    # "remainingEJQuota":J
    .restart local v4    # "pkgString":Ljava/lang/String;
    .local v6, "isUnderJobCountQuota":Z
    .local v7, "isUnderTimingSessionCountQuota":Z
    .local v8, "remainingEJQuota":J
    .restart local v10    # "inRegularQuotaTimeElapsed":J
    :cond_e
    move-object v15, v4

    move/from16 v16, v6

    move/from16 v22, v7

    move-wide/from16 v23, v8

    move-wide/from16 v20, v10

    .end local v4    # "pkgString":Ljava/lang/String;
    .end local v6    # "isUnderJobCountQuota":Z
    .end local v7    # "isUnderTimingSessionCountQuota":Z
    .end local v8    # "remainingEJQuota":J
    .end local v10    # "inRegularQuotaTimeElapsed":J
    .restart local v15    # "pkgString":Ljava/lang/String;
    .restart local v16    # "isUnderJobCountQuota":Z
    .restart local v20    # "inRegularQuotaTimeElapsed":J
    .restart local v22    # "isUnderTimingSessionCountQuota":Z
    .restart local v23    # "remainingEJQuota":J
    move-wide/from16 v1, v17

    .line 1797
    .end local v17    # "inEJQuotaTimeElapsed":J
    .local v1, "inEJQuotaTimeElapsed":J
    :goto_5
    move-wide/from16 v3, v20

    .end local v20    # "inRegularQuotaTimeElapsed":J
    .local v3, "inRegularQuotaTimeElapsed":J
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1799
    .local v6, "inQuotaTimeElapsed":J
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gtz v8, :cond_f

    .line 1800
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 1801
    .local v8, "nowElapsed":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In quota time is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v8, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms old. Now="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", inQuotaTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const-wide/32 v10, 0x493e0

    add-long v6, v8, v10

    .line 1806
    .end local v8    # "nowElapsed":J
    :cond_f
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual {v8, v9, v10, v6, v7}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->addAlarmLocked(ILjava/lang/String;J)V

    .line 1807
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 626
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 627
    .local v0, "nowElapsed":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    .line 628
    .local v2, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 630
    .local v4, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v4, :cond_0

    .line 631
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v5

    .line 632
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v3, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 634
    :cond_0
    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 635
    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 637
    .local v5, "isWithinQuota":Z
    invoke-direct {p0, p1, v0, v1, v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    .line 639
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 640
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    .line 641
    .local v6, "isWithinEJQuota":Z
    invoke-direct {p0, p1, v0, v1, v6}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    .line 642
    xor-int/lit8 v7, v6, 0x1

    move v6, v7

    .line 643
    .local v6, "outOfEJQuota":Z
    goto :goto_0

    .line 644
    .end local v6    # "outOfEJQuota":Z
    :cond_1
    const/4 v6, 0x0

    .line 646
    .restart local v6    # "outOfEJQuota":Z
    :goto_0
    if-eqz v5, :cond_2

    if-eqz v6, :cond_3

    .line 647
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v7

    invoke-virtual {p0, v2, v3, v7}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 649
    :cond_3
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 700
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 702
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 703
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 704
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 708
    .end local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 712
    if-nez p1, :cond_0

    .line 713
    const-string v0, "JobScheduler.Quota"

    const-string v1, "Told app removed but given null package name."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void

    .line 716
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 721
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 722
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 723
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 724
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 726
    :cond_1
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .locals 2

    .line 2964
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$4000(Lcom/android/server/job/controllers/QuotaController$QcConstants;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2966
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2973
    :cond_0
    return-void
.end method

.method public onSystemServicesReady()V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    .line 620
    monitor-exit v0

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserAddedLocked(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 730
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    .line 731
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 735
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 736
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 737
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 738
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 739
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 740
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmListener:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmListener;->removeAlarmsLocked(I)V

    .line 741
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 742
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 743
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 744
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 745
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 654
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_0

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 659
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 660
    if-eqz v0, :cond_1

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is top started job"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 665
    return-void

    .line 668
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 669
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    :goto_0
    move-object v9, v3

    .line 672
    .local v9, "timerMap":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/job/controllers/QuotaController$Timer;>;"
    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 673
    .local v10, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-nez v10, :cond_4

    .line 674
    new-instance v11, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    move-object v3, v11

    move-object v4, p0

    move v5, v2

    move v6, v0

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V

    move-object v10, v11

    .line 675
    invoke-virtual {v9, v0, v1, v10}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 677
    :cond_4
    invoke-virtual {v10, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 678
    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .locals 2

    .line 2951
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$4002(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z

    .line 2952
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$4102(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z

    .line 2953
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$4202(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z

    .line 2954
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->access$4302(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)Z

    .line 2955
    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 1
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .param p2, "key"    # Ljava/lang/String;

    .line 2959
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    .line 2960
    return-void
.end method

.method saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;Z)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .param p4, "isExpedited"    # Z

    .line 1427
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    .line 1428
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 683
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 684
    .local v0, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 687
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 689
    if-eqz v0, :cond_1

    .line 690
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 694
    return-void
.end method

.method updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 26
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1225
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1226
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1227
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1228
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1229
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 1230
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-eqz v6, :cond_1

    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-nez v6, :cond_0

    goto :goto_0

    .line 1234
    :cond_0
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_1

    .line 1232
    :cond_1
    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1237
    :goto_1
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1238
    .local v4, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 1239
    .local v5, "nowElapsed":J
    const-wide/32 v7, 0x5265c00

    add-long v9, v5, v7

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1240
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1243
    nop

    .line 1244
    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1245
    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->getBgJobCount()I

    move-result v9

    iput v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1248
    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1249
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    .line 1250
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long v11, v5, v11

    iget-wide v13, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1253
    :cond_2
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_3

    .line 1254
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long v11, v5, v11

    add-long/2addr v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1257
    :cond_3
    iget v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v9, v10, :cond_4

    .line 1258
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1263
    :cond_4
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1264
    .local v9, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimingSession;>;"
    if-eqz v9, :cond_12

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_5

    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    goto/16 :goto_8

    .line 1268
    :cond_5
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v10, v5, v10

    .line 1269
    .local v10, "startWindowElapsed":J
    sub-long v12, v5, v7

    .line 1270
    .local v12, "startMaxElapsed":J
    const/4 v14, 0x0

    .line 1273
    .local v14, "sessionCountInWindow":I
    const-wide v15, 0x7fffffffffffffffL

    .line 1276
    .local v15, "emptyTimeMs":J
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .line 1277
    .local v7, "loopStart":I
    move v8, v7

    move-wide v1, v15

    .end local v15    # "emptyTimeMs":J
    .local v1, "emptyTimeMs":J
    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_10

    .line 1278
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1281
    .local v15, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5    # "nowElapsed":J
    .local v16, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .local v18, "nowElapsed":J
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_c

    .line 1283
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_6

    .line 1284
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 1285
    .local v4, "start":J
    move-wide/from16 v20, v4

    .end local v4    # "start":J
    .local v20, "start":J
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v10

    .line 1286
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide/from16 v4, v20

    goto :goto_3

    .line 1290
    .end local v20    # "start":J
    :cond_6
    move-wide v4, v10

    .line 1291
    .restart local v4    # "start":J
    const-wide/16 v1, 0x0

    .line 1294
    :goto_3
    move-wide/from16 v20, v1

    .end local v1    # "emptyTimeMs":J
    .local v20, "emptyTimeMs":J
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v22, v10

    .end local v10    # "startWindowElapsed":J
    .local v22, "startWindowElapsed":J
    iget-wide v10, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v10, v4

    add-long/2addr v1, v10

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1295
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1296
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    cmp-long v1, v1, v10

    if-ltz v1, :cond_7

    .line 1297
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    add-long/2addr v10, v4

    move-wide/from16 v24, v4

    .end local v4    # "start":J
    .local v24, "start":J
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimeIntoQuotaMs:J

    sub-long/2addr v10, v4

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v10, v4

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_4

    .line 1296
    .end local v24    # "start":J
    .restart local v4    # "start":J
    :cond_7
    move-wide/from16 v24, v4

    .line 1301
    .end local v4    # "start":J
    .restart local v24    # "start":J
    :goto_4
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v1, v2, :cond_8

    .line 1302
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v10

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1305
    :cond_8
    if-eq v8, v7, :cond_a

    add-int/lit8 v1, v8, 0x1

    .line 1306
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v1, v1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v1, v4

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_9

    goto :goto_5

    :cond_9
    move-wide/from16 v1, v20

    goto :goto_6

    .line 1309
    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 1311
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-lt v14, v1, :cond_b

    .line 1312
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v10

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1319
    .end local v24    # "start":J
    :cond_b
    move-wide/from16 v1, v20

    goto :goto_6

    .line 1281
    .end local v20    # "emptyTimeMs":J
    .end local v22    # "startWindowElapsed":J
    .restart local v1    # "emptyTimeMs":J
    .restart local v10    # "startWindowElapsed":J
    :cond_c
    move-wide/from16 v22, v10

    .line 1319
    .end local v10    # "startWindowElapsed":J
    .restart local v22    # "startWindowElapsed":J
    :goto_6
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_e

    .line 1320
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move/from16 v17, v7

    .end local v7    # "loopStart":I
    .local v17, "loopStart":I
    iget-wide v6, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v10, v6

    add-long/2addr v4, v10

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1322
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1323
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v12

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1324
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_d

    .line 1325
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v6, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v6, v10

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v6, v10

    const-wide/32 v10, 0x5265c00

    add-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1277
    .end local v15    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_d
    const-wide/32 v10, 0x5265c00

    goto :goto_7

    .line 1329
    .end local v17    # "loopStart":I
    .restart local v7    # "loopStart":I
    .restart local v15    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_e
    move/from16 v17, v7

    .end local v7    # "loopStart":I
    .restart local v17    # "loopStart":I
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v12, v4

    if-gez v4, :cond_11

    .line 1332
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v6, v12

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1333
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1334
    const-wide/16 v1, 0x0

    .line 1335
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_f

    .line 1336
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v6, v12

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v6, v10

    const-wide/32 v10, 0x5265c00

    add-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_7

    .line 1335
    :cond_f
    const-wide/32 v10, 0x5265c00

    .line 1277
    .end local v15    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :goto_7
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v4, v16

    move/from16 v7, v17

    move-wide/from16 v5, v18

    move-wide/from16 v10, v22

    goto/16 :goto_2

    .end local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v17    # "loopStart":I
    .end local v18    # "nowElapsed":J
    .end local v22    # "startWindowElapsed":J
    .local v4, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v5    # "nowElapsed":J
    .restart local v7    # "loopStart":I
    .restart local v10    # "startWindowElapsed":J
    :cond_10
    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    move/from16 v17, v7

    move-wide/from16 v22, v10

    .line 1345
    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5    # "nowElapsed":J
    .end local v7    # "loopStart":I
    .end local v8    # "i":I
    .end local v10    # "startWindowElapsed":J
    .restart local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v17    # "loopStart":I
    .restart local v18    # "nowElapsed":J
    .restart local v22    # "startWindowElapsed":J
    :cond_11
    add-long v5, v18, v1

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1346
    iput v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 1347
    return-void

    .line 1264
    .end local v1    # "emptyTimeMs":J
    .end local v12    # "startMaxElapsed":J
    .end local v14    # "sessionCountInWindow":I
    .end local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v17    # "loopStart":I
    .end local v18    # "nowElapsed":J
    .end local v22    # "startWindowElapsed":J
    .restart local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v5    # "nowElapsed":J
    :cond_12
    move-object/from16 v16, v4

    move-wide/from16 v18, v5

    .line 1265
    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v5    # "nowElapsed":J
    .restart local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v18    # "nowElapsed":J
    :goto_8
    return-void
.end method

.method updateStandbyBucket(ILjava/lang/String;I)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "bucketIndex"    # I

    .line 2392
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2393
    const-string v0, "JobScheduler.Quota"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/QuotaController;->string(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to bucketIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2397
    .local v0, "restrictedChanges":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2398
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 2399
    .local v2, "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    if-eqz v2, :cond_1

    .line 2400
    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->setStandbyBucketLocked(I)V

    .line 2403
    :cond_1
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 2404
    .local v3, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 2408
    :cond_2
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_5

    .line 2409
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 2412
    .local v5, "js":Lcom/android/server/job/controllers/JobStatus;
    const/4 v6, 0x5

    if-eq p3, v6, :cond_3

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 2413
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    if-eq p3, v6, :cond_4

    .line 2414
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2416
    :cond_4
    invoke-virtual {v5, p3}, Lcom/android/server/job/controllers/JobStatus;->setStandbyBucket(I)V

    .line 2408
    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2418
    .end local v4    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 2419
    .local v4, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2420
    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 2422
    :cond_6
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    move-object v4, v5

    .line 2423
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2424
    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 2426
    :cond_7
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2428
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 2430
    .end local v2    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .end local v3    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2431
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 2432
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1, v0}, Lcom/android/server/job/StateChangedListener;->onRestrictedBucketChanged(Ljava/util/List;)V

    .line 2434
    :cond_9
    return-void

    .line 2406
    .restart local v2    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .restart local v3    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_a
    :goto_1
    :try_start_1
    monitor-exit v1

    return-void

    .line 2430
    .end local v2    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .end local v3    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
