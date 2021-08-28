.class public Lcom/android/server/alarm/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/AlarmManagerService$ShellCmd;,
        Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;,
        Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;,
        Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/alarm/AlarmManagerService$AlarmThread;,
        Lcom/android/server/alarm/AlarmManagerService$Injector;,
        Lcom/android/server/alarm/AlarmManagerService$LocalService;,
        Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/alarm/AlarmManagerService$FilterStats;,
        Lcom/android/server/alarm/AlarmManagerService$InFlight;,
        Lcom/android/server/alarm/AlarmManagerService$PriorityClass;,
        Lcom/android/server/alarm/AlarmManagerService$Constants;,
        Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;,
        Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;,
        Lcom/android/server/alarm/AlarmManagerService$Stats;,
        Lcom/android/server/alarm/AlarmManagerService$IdleDispatchEntry;
    }
.end annotation


# static fields
.field static final ACTIVE_INDEX:I = 0x0

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field static final DEBUG_BG_LIMIT:Z = false

.field static final DEBUG_LISTENER_CALLBACK:Z = false

.field static final DEBUG_STANDBY:Z = false

.field static final DEBUG_WAKELOCK:Z = false

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final FREQUENT_INDEX:I = 0x2

.field static final INDEFINITE_DELAY:J = 0x757b12c00L

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field static final NEVER_INDEX:I = 0x4

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RARE_INDEX:I = 0x3

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field static final RECORD_DEVICE_IDLE_ALARMS:Z = false

.field private static final REMOVAL_HISTORY_SIZE_PER_UID:I = 0xa

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TICK_HISTORY_DEPTH:I = 0xa

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TIME_TICK_TAG:Ljava/lang/String; = "TIME_TICK"

.field static final WORKING_INDEX:I = 0x1

.field static final localLOGV:Z = false


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAlarmClockUpdater:Ljava/lang/Runnable;

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmStore:Lcom/android/server/alarm/AlarmStore;

.field mAlarmsPerUid:Landroid/util/SparseIntArray;

.field mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field final mAllowWhileIdleDispatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/AlarmManagerService$IdleDispatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field mAppOps:Landroid/app/AppOpsManager;

.field private mAppStandbyParole:Z

.field private mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field private final mBackgroundIntent:Landroid/content/Intent;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

.field mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field mDateChangeSender:Landroid/app/PendingIntent;

.field final mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

.field volatile mExactAlarmCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

.field mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private final mInFlightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerInternal$InFlightListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

.field mInteractive:Z

.field mLastAlarmDeliveryTime:J

.field mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

.field private final mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

.field private mLastTickReceived:J

.field private mLastTickSet:J

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field private mLastTrigger:J

.field private mLastWakeup:J

.field private mListenerCount:I

.field mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mListenerFinishCount:I

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field private volatile mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeUpSetAt:J

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field private mNextTickHistory:I

.field mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

.field private mNextWakeUpSetAt:J

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

.field mOptsWithFgs:Landroid/app/BroadcastOptions;

.field mOptsWithoutFgs:Landroid/app/BroadcastOptions;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mPendingBackgroundAlarms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/alarm/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovalHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSendCount:I

.field private mSendFinishCount:I

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field private final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field mSystemUiUid:I

.field private final mTickHistory:[J

.field mTimeTickIntent:Landroid/content/Intent;

.field mTimeTickTrigger:Landroid/app/IAlarmListener;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$-MgquypUP3unWGG2OT4ob8k7gsI(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    const/high16 v1, 0x21000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1181
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V

    .line 1182
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 209
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 221
    nop

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 228
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 233
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 244
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 251
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 260
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 261
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 263
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    .line 268
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 302
    new-instance v1, Lcom/android/internal/util/jobs/StatLogger;

    const-string v2, "REORDER_ALARMS_FOR_STANDBY"

    const-string v3, "HAS_SCHEDULE_EXACT_ALARM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Alarm manager stats"

    invoke-direct {v1, v3, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 307
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 308
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 309
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 312
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 314
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 316
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 320
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    .line 324
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1094
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 1095
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    .line 1097
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 1171
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 1172
    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 1603
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1606
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 1607
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1608
    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 2437
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 4644
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$8;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 4734
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    .line 4736
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 4738
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 4740
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 1177
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 1178
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/alarm/AlarmManagerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/alarm/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->isIdlingImpl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/alarm/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$1600()J
    .locals 2

    .line 171
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1700(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 171
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(JIJJ)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .line 171
    invoke-static/range {p0 .. p6}, Lcom/android/server/alarm/AlarmManagerService;->set(JIJJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(JI)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 171
    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/alarm/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 171
    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(JJ)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 171
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 171
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->close(J)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/alarm/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # J

    .line 171
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/android/server/alarm/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # J

    .line 171
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/alarm/AlarmManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/alarm/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # Z

    .line 171
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/server/alarm/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # J

    .line 171
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/alarm/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # Lcom/android/server/alarm/Alarm;

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # I

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method static synthetic access$3408(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return v0
.end method

.method static synthetic access$3508(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/alarm/Alarm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/Alarm;

    .line 171
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3708(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3908(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/alarm/AlarmManagerService;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/alarm/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # J

    .line 171
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/alarm/AlarmManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # I

    .line 171
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return p1
.end method

.method static synthetic access$4108(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # I

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/Alarm;

    .line 171
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # Lcom/android/server/alarm/Alarm;

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 171
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 171
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(ZZI)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 171
    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getScheduleExactAlarmState(ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/alarm/AlarmManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method private adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .locals 11
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2128
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2129
    .local v0, "nowElapsed":J
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2130
    const/4 v2, 0x0

    return v2

    .line 2133
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    const/4 v3, 0x3

    if-eqz v2, :cond_8

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 2139
    :cond_1
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 2141
    move-wide v4, v0

    .local v4, "batterySaverPolicyElapsed":J
    goto :goto_3

    .line 2142
    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_2
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2144
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2148
    .local v2, "userId":I
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 2149
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2150
    .local v4, "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2151
    .local v5, "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .local v7, "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    goto :goto_0

    .line 2153
    .end local v4    # "quota":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :cond_3
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2154
    .restart local v4    # "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2155
    .restart local v5    # "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2157
    .restart local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :goto_0
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v8

    .line 2159
    .local v8, "dispatchesInHistory":I
    if-ge v8, v4, :cond_4

    .line 2161
    move-wide v9, v0

    move-wide v4, v9

    .local v9, "batterySaverPolicyElapsed":J
    goto :goto_1

    .line 2163
    .end local v9    # "batterySaverPolicyElapsed":J
    :cond_4
    iget-object v9, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v9, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v9

    add-long/2addr v9, v5

    move-wide v4, v9

    .line 2166
    .end local v2    # "userId":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    .end local v8    # "dispatchesInHistory":I
    .local v4, "batterySaverPolicyElapsed":J
    :goto_1
    goto :goto_3

    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_5
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    .line 2167
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    .line 2168
    .local v7, "lastDispatch":J
    cmp-long v2, v7, v5

    if-nez v2, :cond_6

    .line 2169
    move-wide v4, v0

    goto :goto_2

    .line 2170
    :cond_6
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v4, v7

    :goto_2
    nop

    .line 2171
    .end local v7    # "lastDispatch":J
    .restart local v4    # "batterySaverPolicyElapsed":J
    goto :goto_3

    .line 2173
    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_7
    const-wide v4, 0x757b12c00L

    add-long/2addr v4, v0

    .line 2175
    .restart local v4    # "batterySaverPolicyElapsed":J
    :goto_3
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2

    .line 2135
    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_8
    :goto_4
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2
.end method

.method private adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z
    .locals 13
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2250
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2251
    .local v0, "nowElapsed":J
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    if-eqz v2, :cond_0

    goto :goto_2

    .line 2255
    :cond_0
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 2256
    .local v2, "sourcePackage":Ljava/lang/String;
    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2257
    .local v4, "sourceUserId":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v5, v2, v4, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v5

    .line 2260
    .local v5, "standbyBucket":I
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v6

    .line 2262
    .local v6, "wakeupsInWindow":I
    const/16 v7, 0x2d

    if-ne v5, v7, :cond_2

    .line 2266
    if-lez v6, :cond_4

    .line 2267
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v8, v8, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-virtual {v7, v2, v4, v8}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v7

    .line 2269
    .local v7, "lastWakeupTime":J
    sub-long v9, v0, v7

    iget-object v11, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    .line 2270
    iget-object v9, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v9, v9, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    add-long/2addr v9, v7

    invoke-virtual {p1, v3, v9, v10}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2273
    .end local v7    # "lastWakeupTime":J
    :cond_1
    goto :goto_1

    .line 2275
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v7

    .line 2276
    .local v7, "quotaForBucket":I
    if-lt v6, v7, :cond_4

    .line 2278
    if-gtz v7, :cond_3

    .line 2280
    const-wide v8, 0x757b12c00L

    add-long/2addr v8, v0

    .local v8, "minElapsed":J
    goto :goto_0

    .line 2284
    .end local v8    # "minElapsed":J
    :cond_3
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v8, v2, v4, v7}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v8

    .line 2286
    .local v8, "t":J
    iget-object v10, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v10, v10, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    add-long/2addr v10, v8

    move-wide v8, v10

    .line 2288
    .local v8, "minElapsed":J
    :goto_0
    invoke-virtual {p1, v3, v8, v9}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2292
    .end local v7    # "quotaForBucket":I
    .end local v8    # "minElapsed":J
    :cond_4
    :goto_1
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2252
    .end local v2    # "sourcePackage":Ljava/lang/String;
    .end local v4    # "sourceUserId":I
    .end local v5    # "standbyBucket":I
    .end local v6    # "wakeupsInWindow":I
    :cond_5
    :goto_2
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2
.end method

.method private adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z
    .locals 13
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2195
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2196
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    const/4 v3, 0x2

    if-eqz v2, :cond_7

    if-ne v2, p1, :cond_0

    goto/16 :goto_4

    .line 2201
    :cond_0
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0xa

    if-eqz v2, :cond_1

    .line 2203
    move-wide v4, v0

    .local v4, "deviceIdlePolicyTime":J
    goto/16 :goto_3

    .line 2204
    .end local v4    # "deviceIdlePolicyTime":J
    :cond_1
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2206
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2210
    .local v2, "userId":I
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 2211
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2212
    .local v4, "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2213
    .local v5, "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .local v7, "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    goto :goto_0

    .line 2215
    .end local v4    # "quota":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :cond_2
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2216
    .restart local v4    # "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2217
    .restart local v5    # "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2219
    .restart local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :goto_0
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v8

    .line 2221
    .local v8, "dispatchesInHistory":I
    if-ge v8, v4, :cond_3

    .line 2223
    move-wide v9, v0

    move-wide v4, v9

    .local v9, "deviceIdlePolicyTime":J
    goto :goto_1

    .line 2225
    .end local v9    # "deviceIdlePolicyTime":J
    :cond_3
    iget-object v9, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v9, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v9

    add-long/2addr v9, v5

    .line 2227
    .local v9, "whenInQuota":J
    iget-object v11, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v11}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-wide v4, v11

    .line 2229
    .end local v2    # "userId":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    .end local v8    # "dispatchesInHistory":I
    .end local v9    # "whenInQuota":J
    .local v4, "deviceIdlePolicyTime":J
    :goto_1
    goto :goto_3

    .end local v4    # "deviceIdlePolicyTime":J
    :cond_4
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 2230
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    .line 2231
    .local v7, "lastDispatch":J
    cmp-long v2, v7, v5

    if-nez v2, :cond_5

    .line 2232
    move-wide v4, v0

    goto :goto_2

    .line 2233
    :cond_5
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v4, v7

    :goto_2
    nop

    .line 2234
    .local v4, "whenAllowed":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2235
    .end local v7    # "lastDispatch":J
    .local v4, "deviceIdlePolicyTime":J
    goto :goto_3

    .line 2237
    .end local v4    # "deviceIdlePolicyTime":J
    :cond_6
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    .line 2239
    .restart local v4    # "deviceIdlePolicyTime":J
    :goto_3
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2

    .line 2197
    .end local v4    # "deviceIdlePolicyTime":J
    :cond_7
    :goto_4
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2
.end method

.method private adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z
    .locals 17
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2091
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x10

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2092
    return v3

    .line 2094
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    .line 2095
    .local v2, "changedBeforeFuzz":Z
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-nez v4, :cond_1

    .line 2097
    return v2

    .line 2099
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    .line 2102
    .local v4, "upcomingWakeFromIdle":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, v8, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    sub-long v8, v4, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 2104
    return v2

    .line 2106
    :cond_2
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v6

    .line 2107
    .local v6, "nowElapsed":J
    sub-long v8, v4, v6

    .line 2109
    .local v8, "futurity":J
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v10, v10, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v10, v8, v10

    if-gtz v10, :cond_3

    .line 2111
    invoke-virtual {v1, v3, v6, v7}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-wide v15, v6

    goto :goto_0

    .line 2113
    :cond_3
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v10

    .line 2114
    .local v10, "random":Ljava/util/concurrent/ThreadLocalRandom;
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    .line 2115
    .local v11, "upperBoundExcl":J
    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v13, v13, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v10, v13, v14, v11, v12}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v13

    .line 2116
    .local v13, "fuzz":J
    move-wide v15, v6

    .end local v6    # "nowElapsed":J
    .local v15, "nowElapsed":J
    sub-long v6, v4, v13

    invoke-virtual {v1, v3, v6, v7}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 2118
    .end local v10    # "random":Ljava/util/concurrent/ThreadLocalRandom;
    .end local v11    # "upperBoundExcl":J
    .end local v13    # "fuzz":J
    :goto_0
    const/4 v3, 0x1

    return v3
.end method

.method static clampPositive(J)J
    .locals 2
    .param p0, "val"    # J

    .line 1289
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method private static native close(J)V
.end method

.method private convertToElapsed(JI)J
    .locals 4
    .param p1, "when"    # J
    .param p3, "type"    # I

    .line 1189
    invoke-static {p3}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 1192
    :cond_0
    return-wide p1
.end method

.method private decrementAlarmCount(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "decrement"    # I

    .line 5086
    const/4 v0, 0x0

    .line 5087
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 5088
    .local v1, "uidIndex":I
    if-ltz v1, :cond_1

    .line 5089
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 5090
    if-le v0, p2, :cond_0

    .line 5091
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v3, v0, p2

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    .line 5093
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 5096
    :cond_1
    :goto_0
    if-ge v0, p2, :cond_2

    .line 5097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to decrement existing alarm count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    :cond_2
    return-void
.end method

.method private deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 30
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 1372
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1373
    .local v12, "N":I
    const/4 v1, 0x0

    .line 1374
    .local v1, "hasWakeup":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_2

    .line 1375
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1376
    .local v3, "alarm":Lcom/android/server/alarm/Alarm;
    iget-boolean v4, v3, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v4, :cond_0

    .line 1377
    const/4 v1, 0x1

    move/from16 v20, v1

    goto :goto_1

    .line 1376
    :cond_0
    move/from16 v20, v1

    .line 1379
    .end local v1    # "hasWakeup":Z
    .local v20, "hasWakeup":Z
    :goto_1
    const/4 v1, 0x1

    iput v1, v3, Lcom/android/server/alarm/Alarm;->count:I

    .line 1382
    iget-wide v4, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 1383
    iget v1, v3, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v1

    invoke-virtual {v3}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v6

    sub-long v6, v13, v6

    iget-wide v8, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v1, v4

    iput v1, v3, Lcom/android/server/alarm/Alarm;->count:I

    .line 1385
    iget v1, v3, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v1

    iget-wide v6, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    mul-long v21, v4, v6

    .line 1386
    .local v21, "delta":J
    invoke-virtual {v3}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v4

    add-long v23, v4, v21

    .local v23, "nextElapsed":J
    move-wide/from16 v4, v23

    .line 1387
    iget-wide v10, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide/from16 v6, p2

    move-wide/from16 v8, v23

    invoke-static/range {v6 .. v11}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v25

    .line 1389
    .local v25, "nextMaxElapsed":J
    iget v1, v3, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v6, v3, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long v6, v6, v21

    move/from16 v27, v2

    move-object v11, v3

    .end local v2    # "i":I
    .end local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v11, "alarm":Lcom/android/server/alarm/Alarm;
    .local v27, "i":I
    move-wide v2, v6

    sub-long v6, v25, v23

    iget-wide v8, v11, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iget-object v10, v11, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    move-object/from16 v28, v11

    .end local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v28, "alarm":Lcom/android/server/alarm/Alarm;
    move-object/from16 v11, v16

    move/from16 v29, v12

    .end local v12    # "N":I
    .local v29, "N":I
    move-object/from16 v12, v16

    move-object/from16 v11, v28

    .end local v28    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    iget v12, v11, Lcom/android/server/alarm/Alarm;->flags:I

    move v13, v12

    iget-object v14, v11, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object v15, v12

    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    move/from16 v16, v12

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v17, v12

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object v12, v0

    move-object/from16 v0, p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .end local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v28    # "alarm":Lcom/android/server/alarm/Alarm;
    invoke-direct/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_2

    .line 1382
    .end local v21    # "delta":J
    .end local v23    # "nextElapsed":J
    .end local v25    # "nextMaxElapsed":J
    .end local v27    # "i":I
    .end local v28    # "alarm":Lcom/android/server/alarm/Alarm;
    .end local v29    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v12    # "N":I
    :cond_1
    move/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v29, v12

    .line 1374
    .end local v2    # "i":I
    .end local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    .end local v12    # "N":I
    .restart local v27    # "i":I
    .restart local v29    # "N":I
    :goto_2
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    move/from16 v1, v20

    move/from16 v12, v29

    .end local v27    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .end local v20    # "hasWakeup":Z
    .end local v29    # "N":I
    .restart local v1    # "hasWakeup":Z
    .restart local v12    # "N":I
    :cond_2
    move/from16 v27, v2

    move/from16 v29, v12

    .line 1396
    .end local v2    # "i":I
    .end local v12    # "N":I
    .restart local v29    # "N":I
    if-nez v1, :cond_5

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1398
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 1399
    iput-wide v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1400
    nop

    .line 1401
    invoke-virtual {v0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1403
    :cond_3
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1404
    iget v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    goto :goto_4

    .line 1396
    :cond_4
    move-object/from16 v5, p1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v2, p2

    .line 1410
    :goto_3
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1411
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1412
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v6, v2, v6

    .line 1413
    .local v6, "thisDelayTime":J
    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1414
    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v8, v6

    if-gez v4, :cond_6

    .line 1415
    iput-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 1417
    :cond_6
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1419
    .end local v6    # "thisDelayTime":J
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1420
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1421
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1423
    :goto_4
    return-void
.end method

.method static final dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V
    .locals 5
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowELAPSED"    # J
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 3814
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3815
    .local v0, "n":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3816
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 3817
    .local v2, "a":Lcom/android/server/alarm/Alarm;
    iget v3, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v3}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 3818
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3819
    const-string v4, " #"

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3820
    sub-int v4, v0, v1

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3821
    const-string v4, ": "

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3822
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3823
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3824
    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3825
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3815
    .end local v2    # "a":Lcom/android/server/alarm/Alarm;
    .end local v3    # "label":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3827
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1351
    .local p0, "pendingAlarms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;>;"
    .local p1, "unrestrictedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .local p2, "isBackgroundRestricted":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidIndex":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1352
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1354
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "alarmIndex":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1355
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1357
    .local v3, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1358
    goto :goto_2

    .line 1361
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1354
    .end local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1365
    .end local v2    # "alarmIndex":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1366
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1351
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1369
    .end local v0    # "uidIndex":I
    :cond_3
    return-void
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .line 3516
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EHm"

    goto :goto_0

    :cond_0
    const-string v0, "Ehma"

    .line 3517
    .local v0, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3518
    .local v1, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v2, ""

    goto :goto_1

    .line 3519
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3518
    :goto_1
    return-object v2
.end method

.method private static getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .locals 1
    .param p0, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4296
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4297
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v0

    return v0

    .line 4300
    :cond_0
    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    return v0
.end method

.method private static native getNextAlarm(JI)J
.end method

.method private static getScheduleExactAlarmState(ZZI)Z
    .locals 2
    .param p0, "requested"    # Z
    .param p1, "denyListed"    # Z
    .param p2, "appOpMode"    # I

    .line 2382
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2383
    return v0

    .line 2385
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 2386
    xor-int/lit8 v0, p1, 0x1

    return v0

    .line 2388
    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private final getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 4716
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4717
    .local v0, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    if-nez v0, :cond_0

    .line 4718
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 4719
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4721
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 4722
    .local v1, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    if-nez v1, :cond_1

    .line 4723
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    invoke-direct {v2, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 4724
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4726
    :cond_1
    return-object v1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 4710
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 4711
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 4712
    .local v1, "uid":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object v2

    return-object v2
.end method

.method private incrementAlarmCount(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 5053
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 5054
    .local v0, "uidIndex":I
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 5055
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    .line 5057
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5059
    :goto_0
    return-void
.end method

.method private static native init()J
.end method

.method private static isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 2185
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x24

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 3844
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3846
    return v1

    .line 3848
    :cond_0
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3850
    return v1

    .line 3852
    :cond_1
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 3853
    .local v0, "sourcePackage":Ljava/lang/String;
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 3854
    .local v2, "sourceUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3855
    return v1

    .line 3857
    :cond_2
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2, v0}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static isExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2695
    nop

    .line 2696
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2695
    const-wide/32 v1, 0xa35edc1

    invoke-static {v1, v2, p0, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method static isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4016
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .locals 2
    .param p0, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 3830
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3831
    return v1

    .line 3833
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 3834
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3835
    :cond_1
    return v1

    .line 3837
    :cond_2
    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3838
    return v1

    .line 3840
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isIdlingImpl()Z
    .locals 2

    .line 3391
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 3393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static isRtc(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 1185
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z
    .locals 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 284
    iget v0, p0, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    const-string v1, "TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeExactAlarmsOnPermissionRevokedLocked$11(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .locals 4
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 3619
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p0, :cond_0

    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeLocked$14(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "operation"    # Landroid/app/PendingIntent;
    .param p1, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 3701
    invoke-virtual {p2, p0, p1}, Lcom/android/server/alarm/Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeLocked$15(ILcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 3709
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeLocked$16(Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 3720
    invoke-virtual {p1, p0}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeUserLocked$18(ILcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p0, "userHandle"    # I
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 3740
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static maxTriggerTime(JJJ)J
    .locals 8
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .line 1214
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    .line 1215
    sub-long v2, p2, p0

    goto :goto_0

    .line 1216
    :cond_0
    move-wide v2, p4

    :goto_0
    nop

    .line 1217
    .local v2, "futurity":J
    const-wide/16 v4, 0x2710

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 1218
    const-wide/16 v2, 0x0

    .line 1220
    :cond_1
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    long-to-double v6, v2

    mul-double/2addr v6, v4

    double-to-long v4, v6

    add-long/2addr v4, p2

    .line 1225
    .local v4, "maxElapsed":J
    cmp-long v0, p4, v0

    if-nez v0, :cond_2

    .line 1226
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1228
    :cond_2
    invoke-static {v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyBroadcastAlarmCompleteLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 1509
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1510
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1511
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmComplete(I)V

    .line 1510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1513
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private notifyBroadcastAlarmPendingLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 1502
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1503
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1504
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmPending(I)V

    .line 1503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1506
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V
    .locals 19
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;I)V"
        }
    .end annotation

    .line 3630
    .local p1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 3631
    .local v10, "nowRtc":J
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v12

    .line 3633
    .local v12, "nowElapsed":J
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v1}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3634
    .local v2, "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v14, 0x1

    xor-int/2addr v3, v14

    move v15, v3

    .line 3636
    .local v15, "removedFromStore":Z
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v14

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 3637
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3638
    .local v4, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v14

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_1

    .line 3639
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 3640
    .local v6, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-interface {v1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3641
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3638
    .end local v6    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3644
    .end local v5    # "j":I
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 3645
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3636
    .end local v4    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3648
    .end local v3    # "i":I
    :cond_3
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v14

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_5

    .line 3649
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 3650
    .local v4, "a":Lcom/android/server/alarm/Alarm;
    invoke-interface {v1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3651
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3648
    .end local v4    # "a":Lcom/android/server/alarm/Alarm;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 3655
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/server/alarm/Alarm;

    .line 3656
    .local v8, "removed":Lcom/android/server/alarm/Alarm;
    iget v3, v8, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-direct {v0, v3, v14}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3657
    iget-object v3, v8, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v3, :cond_6

    .line 3658
    iget-object v3, v8, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v3}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3660
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->isLoggable(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3661
    goto :goto_3

    .line 3663
    :cond_7
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v4, v8, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/RingBuffer;

    .line 3664
    .local v3, "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    if-nez v3, :cond_8

    .line 3665
    new-instance v4, Lcom/android/internal/util/RingBuffer;

    const-class v5, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    move-object v3, v4

    .line 3666
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v5, v8, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v9, v3

    goto :goto_4

    .line 3664
    :cond_8
    move-object v9, v3

    .line 3668
    .end local v3    # "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    .local v9, "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    :goto_4
    new-instance v6, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    move-object v3, v6

    move-object v4, v8

    move/from16 v5, p2

    move-object v14, v6

    move-wide v6, v10

    move-object/from16 v18, v2

    move-object/from16 v17, v8

    move-object v2, v9

    .end local v8    # "removed":Lcom/android/server/alarm/Alarm;
    .end local v9    # "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    .local v2, "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    .local v17, "removed":Lcom/android/server/alarm/Alarm;
    .local v18, "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    move-wide v8, v12

    invoke-direct/range {v3 .. v9}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;-><init>(Lcom/android/server/alarm/Alarm;IJJ)V

    invoke-virtual {v2, v14}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 3669
    .end local v2    # "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    .end local v17    # "removed":Lcom/android/server/alarm/Alarm;
    move-object/from16 v2, v18

    const/4 v14, 0x1

    goto :goto_3

    .line 3671
    .end local v18    # "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .local v2, "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_9
    move-object/from16 v18, v2

    .end local v2    # "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .restart local v18    # "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v15, :cond_d

    .line 3672
    const/4 v2, 0x0

    .line 3673
    .local v2, "idleUntilUpdated":Z
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_a

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3674
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 3675
    const/4 v2, 0x1

    .line 3677
    :cond_a
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_b

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3678
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v3}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 3679
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_b

    .line 3680
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v3, v4}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 3684
    :cond_b
    if-eqz v2, :cond_c

    .line 3685
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v3, v4}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 3688
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3689
    invoke-direct/range {p0 .. p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3691
    .end local v2    # "idleUntilUpdated":Z
    :cond_d
    return-void
.end method

.method private restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z
    .locals 3
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1285
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    iget v2, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v0

    return v0
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    .line 3485
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3486
    .local v0, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3488
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3489
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3490
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3491
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 3492
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3490
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3494
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3495
    .end local v2    # "n":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3497
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3498
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 3499
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3500
    .local v3, "userId":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3501
    .local v4, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "next_alarm_formatted"

    .line 3503
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v3}, Lcom/android/server/alarm/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    .line 3501
    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3506
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3498
    .end local v3    # "userId":I
    .end local v4    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3509
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 3495
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5067
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5069
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5072
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5076
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 5077
    .local v1, "opts":Landroid/app/BroadcastOptions;
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 5078
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v3

    .line 5077
    const/4 v5, 0x0

    const/16 v6, 0xcf

    const-string v7, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 5081
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 5082
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 5081
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5083
    return-void
.end method

.method private static native set(JIJJ)I
.end method

.method private setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 22
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "interval"    # J
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "flags"    # I
    .param p14, "workSource"    # Landroid/os/WorkSource;
    .param p15, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p16, "callingUid"    # I
    .param p17, "callingPackage"    # Ljava/lang/String;
    .param p18, "idleOptions"    # Landroid/os/Bundle;
    .param p19, "exactAllowReason"    # I

    move-object/from16 v0, p0

    move/from16 v1, p16

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v15, p13

    move-object/from16 v14, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    .line 2047
    new-instance v21, Lcom/android/server/alarm/Alarm;

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v20}, Lcom/android/server/alarm/Alarm;-><init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 2050
    .local v1, "a":Lcom/android/server/alarm/Alarm;
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v3, p16

    move-object/from16 v4, p17

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2051
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not setting alarm from "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -- package not allowed to start"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AlarmManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    return-void

    .line 2055
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    invoke-virtual {v0, v5, v6, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2056
    iget v2, v1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-direct {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->incrementAlarmCount(I)V

    .line 2057
    invoke-direct {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    .line 2058
    invoke-static {v1}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmScheduled(Lcom/android/server/alarm/Alarm;)V

    .line 2059
    return-void
.end method

.method private setImplLocked(Lcom/android/server/alarm/Alarm;)V
    .locals 4
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 2296
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 2297
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    .line 2309
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImplLocked: idle until changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v2, v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/alarm/Alarm;)V

    invoke-interface {v0, v2}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 2314
    :cond_0
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 2315
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_0

    .line 2316
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_2

    .line 2317
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 2319
    :cond_2
    :goto_0
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 2320
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    .line 2321
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 2322
    :cond_3
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 2325
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_4

    .line 2326
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v0

    .line 2328
    .local v0, "updated":Z
    if-eqz v0, :cond_4

    .line 2330
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 2336
    .end local v0    # "updated":Z
    :cond_4
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_5

    .line 2337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2339
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 2340
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 2341
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0, p1}, Lcom/android/server/alarm/AlarmStore;->add(Lcom/android/server/alarm/Alarm;)V

    .line 2342
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2343
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2344
    return-void
.end method

.method private static native setKernelTime(JJ)I
.end method

.method private static native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "when"    # J

    .line 3801
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3802
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setAlarm(IJ)V

    goto :goto_0

    .line 3804
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3805
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3807
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3808
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3810
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .locals 10

    .line 3406
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_0

    .line 3407
    return-void

    .line 3409
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3411
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3412
    .local v0, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3414
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3415
    .local v1, "allAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 3416
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    iget-object v4, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_2

    .line 3417
    iget v4, v3, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3418
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3427
    .local v5, "current":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3428
    iget-object v6, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 3429
    :cond_1
    iget-object v6, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3430
    invoke-virtual {v5}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v6

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 3432
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3435
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    .end local v4    # "userId":I
    .end local v5    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_2
    :goto_1
    goto :goto_0

    .line 3437
    :cond_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3438
    .local v2, "newUserCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 3439
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3440
    .local v4, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3441
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3442
    .local v6, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3443
    invoke-direct {p0, v5, v4}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3438
    .end local v4    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v5    # "userId":I
    .end local v6    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3447
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3448
    .local v3, "oldUserCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_7

    .line 3449
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3450
    .restart local v5    # "userId":I
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    .line 3451
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3448
    .end local v5    # "userId":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 3454
    .end local v4    # "i":I
    :cond_7
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3458
    if-eqz p2, :cond_0

    .line 3463
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3468
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3471
    :goto_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3472
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3473
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 3474
    return-void
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1127
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1128
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 1129
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 1132
    .local v2, "a":Lcom/android/server/alarm/Alarm;
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_0

    .line 1133
    const/4 v3, 0x0

    .local v3, "alarmPrio":I
    goto :goto_1

    .line 1134
    .end local v3    # "alarmPrio":I
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v3, :cond_1

    .line 1135
    const/4 v3, 0x1

    .restart local v3    # "alarmPrio":I
    goto :goto_1

    .line 1137
    .end local v3    # "alarmPrio":I
    :cond_1
    const/4 v3, 0x2

    .line 1140
    .restart local v3    # "alarmPrio":I
    :goto_1
    iget-object v4, v2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    .line 1141
    .local v4, "packagePrio":Lcom/android/server/alarm/AlarmManagerService$PriorityClass;
    iget-object v5, v2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 1142
    .local v5, "alarmPackage":Ljava/lang/String;
    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    .line 1143
    :cond_2
    if-nez v4, :cond_3

    .line 1144
    new-instance v6, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    invoke-direct {v6, p0}, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v6, v2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    move-object v4, v6

    .line 1145
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    :cond_3
    iput-object v4, v2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    .line 1149
    iget v6, v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->seq:I

    iget v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    if-eq v6, v7, :cond_4

    .line 1151
    iput v3, v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    .line 1152
    iget v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    iput v6, v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->seq:I

    goto :goto_2

    .line 1157
    :cond_4
    iget v6, v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    if-ge v3, v6, :cond_5

    .line 1158
    iput v3, v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    .line 1128
    .end local v2    # "a":Lcom/android/server/alarm/Alarm;
    .end local v3    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/alarm/AlarmManagerService$PriorityClass;
    .end local v5    # "alarmPackage":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 6
    .param p1, "nowELAPSED"    # J

    .line 3970
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3971
    return v1

    .line 3973
    :cond_0
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 3974
    return v1

    .line 3976
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    .line 3980
    return v1

    .line 3982
    :cond_2
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 3983
    .local v2, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .locals 4
    .param p1, "nowELAPSED"    # J

    .line 3956
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v0

    .line 3957
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 3959
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 3960
    :cond_0
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 3962
    const-wide/32 v2, 0xdbba0

    return-wide v2

    .line 3965
    :cond_1
    const-wide/32 v2, 0x36ee80

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 9
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 3987
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 3988
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3989
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 3990
    .local v1, "alarm":Lcom/android/server/alarm/Alarm;
    iget-boolean v2, v1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const-wide/32 v3, 0x20000

    if-eqz v2, :cond_0

    .line 3991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatch wakeup alarm to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_1

    .line 3994
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatch non-wakeup alarm to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4002
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v7, v1, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v8, v1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/app/ActivityManagerInternal;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4005
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4008
    goto :goto_2

    .line 4006
    :catch_0
    move-exception v2

    .line 4007
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v5, "AlarmManager"

    const-string v6, "Failure sending alarm."

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4009
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4010
    iget v2, v1, Lcom/android/server/alarm/Alarm;->uid:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3988
    .end local v1    # "alarm":Lcom/android/server/alarm/Alarm;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4012
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method dumpImpl(Landroid/util/IndentingPrintWriter;)V
    .locals 33
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 2700
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2701
    :try_start_0
    const-string v4, "Current Alarm Manager state:"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2702
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2704
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v4, v2}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2705
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2707
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v4, :cond_0

    .line 2708
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2709
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2712
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Standby Parole: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2713
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2715
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    .line 2716
    .local v4, "nowELAPSED":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2717
    .local v6, "nowUPTIME":J
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 2718
    .local v8, "nowRTC":J
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2720
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v11, "nowRTC="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2721
    invoke-virtual {v2, v8, v9}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2722
    const-string v11, "="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2723
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2724
    const-string v11, " nowELAPSED="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {v2, v4, v5}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2726
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2728
    const-string/jumbo v11, "mLastTimeChangeClockTime="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2729
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v2, v11, v12}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2730
    const-string v11, "="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2731
    new-instance v11, Ljava/util/Date;

    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2733
    const-string/jumbo v11, "mLastTimeChangeRealtime="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2734
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v2, v11, v12}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2736
    const-string/jumbo v11, "mLastTickReceived="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2737
    new-instance v11, Ljava/util/Date;

    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2739
    const-string/jumbo v11, "mLastTickSet="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2740
    new-instance v11, Ljava/util/Date;

    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2743
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2744
    const-string v11, "Recent TIME_TICK history:"

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2745
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2746
    iget v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    .line 2748
    .local v11, "i":I
    :goto_0
    add-int/lit8 v11, v11, -0x1

    .line 2749
    if-gez v11, :cond_1

    const/16 v11, 0x9

    .line 2750
    :cond_1
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    aget-wide v12, v12, v11

    .line 2751
    .local v12, "time":J
    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_2

    .line 2752
    new-instance v14, Ljava/util/Date;

    sub-long v18, v4, v12

    move-wide/from16 v20, v12

    .end local v12    # "time":J
    .local v20, "time":J
    sub-long v12, v8, v18

    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 2753
    .end local v20    # "time":J
    .restart local v12    # "time":J
    :cond_2
    move-wide/from16 v20, v12

    .end local v12    # "time":J
    .restart local v20    # "time":J
    const-string v12, "-"

    .line 2751
    :goto_1
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2754
    .end local v20    # "time":J
    iget v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    if-ne v11, v12, :cond_2f

    .line 2755
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2758
    nop

    .end local v11    # "i":I
    const-class v11, Lcom/android/server/SystemServiceManager;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/SystemServiceManager;

    .line 2759
    .local v11, "ssm":Lcom/android/server/SystemServiceManager;
    if-eqz v11, :cond_4

    .line 2760
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2761
    const-string v12, "RuntimeStarted="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2762
    new-instance v12, Ljava/util/Date;

    sub-long v13, v8, v4

    .line 2763
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v18

    add-long v13, v13, v18

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 2762
    invoke-virtual {v10, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2764
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2765
    const-string v12, "  (Runtime restarted)"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2767
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2769
    const-string v12, "Runtime uptime (elapsed): "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2770
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2771
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2773
    const-string v12, "Runtime uptime (uptime): "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2774
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2775
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2778
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2779
    iget-boolean v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v12, :cond_5

    .line 2780
    const-string v12, "Time since non-interactive: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2781
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v12, v4, v12

    invoke-static {v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2782
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2784
    :cond_5
    const-string v12, "Max wakeup delay: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2785
    invoke-virtual {v1, v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v12

    invoke-static {v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2786
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2788
    const-string v12, "Time since last dispatch: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2789
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v12, v4, v12

    invoke-static {v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2790
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2792
    const-string v12, "Next non-wakeup delivery time: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2793
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v12, v13, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2794
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2796
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long v14, v8, v4

    add-long/2addr v12, v14

    .line 2797
    .local v12, "nextWakeupRTC":J
    iget-wide v14, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    sub-long v18, v8, v4

    add-long v14, v14, v18

    .line 2798
    .local v14, "nextNonWakeupRTC":J
    move-wide/from16 v18, v6

    .end local v6    # "nowUPTIME":J
    .local v18, "nowUPTIME":J
    const-string v6, "Next non-wakeup alarm: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2799
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2800
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2801
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2802
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2803
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2806
    const-string/jumbo v6, "set at "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2807
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2808
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2809
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2811
    const-string v6, "Next wakeup alarm: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2812
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2813
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2814
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2815
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2816
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2818
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2819
    const-string/jumbo v6, "set at "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2820
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2821
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2822
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2824
    const-string v6, "Next kernel non-wakeup alarm: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2825
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v6

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2826
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2827
    const-string v6, "Next kernel wakeup alarm: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2828
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v6

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2829
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2831
    const-string v6, "Last wakeup: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2832
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2833
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2834
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2836
    const-string v6, "Last trigger: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2837
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2838
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2839
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2841
    const-string v6, "Num time change events: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2842
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 2844
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2845
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App ids requesting SCHEDULE_EXACT_ALARM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2848
    const-string v6, "Last OP_SCHEDULE_EXACT_ALARM: ["

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2849
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 2850
    if-lez v6, :cond_6

    .line 2851
    const-string v7, ", "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2853
    :cond_6
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-static {v2, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2854
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    .end local v11    # "ssm":Lcom/android/server/SystemServiceManager;
    .local v20, "ssm":Lcom/android/server/SystemServiceManager;
    const-string v11, ":"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2849
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v11, v20

    goto :goto_2

    .end local v20    # "ssm":Lcom/android/server/SystemServiceManager;
    .restart local v11    # "ssm":Lcom/android/server/SystemServiceManager;
    :cond_7
    move-object/from16 v20, v11

    .line 2856
    .end local v6    # "i":I
    .end local v11    # "ssm":Lcom/android/server/SystemServiceManager;
    .restart local v20    # "ssm":Lcom/android/server/SystemServiceManager;
    const-string v6, "]"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2859
    const-string v6, "Next alarm clock information: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2861
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 2862
    .local v6, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 2863
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2862
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2865
    .end local v7    # "i":I
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_9

    .line 2866
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2865
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2868
    .end local v7    # "i":I
    :cond_9
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2869
    .local v11, "user":I
    move-object/from16 v21, v6

    .end local v6    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v21, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2870
    .local v6, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v22

    goto :goto_6

    :cond_a
    const-wide/16 v22, 0x0

    :goto_6
    move-wide/from16 v24, v22

    .line 2871
    .local v24, "time":J
    move-object/from16 v22, v6

    .end local v6    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .local v22, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 2872
    .local v6, "pendingSend":Z
    move-object/from16 v23, v7

    const-string/jumbo v7, "user:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2873
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2874
    const-string v7, " pendingSend:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2875
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 2876
    const-string v7, " time:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2877
    move/from16 v26, v6

    move-wide/from16 v6, v24

    .end local v24    # "time":J
    .local v6, "time":J
    .local v26, "pendingSend":Z
    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 2878
    const-wide/16 v16, 0x0

    cmp-long v24, v6, v16

    if-lez v24, :cond_b

    .line 2879
    move/from16 v24, v11

    .end local v11    # "user":I
    .local v24, "user":I
    const-string v11, " = "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2880
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2881
    const-string v11, " = "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2882
    invoke-static {v6, v7, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_7

    .line 2878
    .end local v24    # "user":I
    .restart local v11    # "user":I
    :cond_b
    move/from16 v24, v11

    .line 2884
    .end local v11    # "user":I
    .restart local v24    # "user":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2885
    .end local v6    # "time":J
    .end local v22    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v24    # "user":I
    .end local v26    # "pendingSend":Z
    move-object/from16 v6, v21

    move-object/from16 v7, v23

    goto :goto_5

    .line 2886
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v6, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_c
    move-object/from16 v21, v6

    .end local v6    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2888
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v6}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 2889
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2890
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v6, v2, v4, v5, v10}, Lcom/android/server/alarm/AlarmStore;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 2892
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2894
    const-string v6, "Pending user blocked background alarms: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2896
    const/4 v6, 0x0

    .line 2897
    .local v6, "blocked":Z
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_8
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_f

    .line 2898
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 2899
    .local v11, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_e

    .line 2900
    const/4 v6, 0x1

    .line 2901
    invoke-static {v2, v11, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 2897
    .end local v11    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2904
    .end local v7    # "i":I
    :cond_f
    if-nez v6, :cond_10

    .line 2905
    const-string/jumbo v7, "none"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2908
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2910
    const-string v7, "Pending alarms per uid: ["

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2911
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_9
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_12

    .line 2912
    if-lez v7, :cond_11

    .line 2913
    const-string v11, ", "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2915
    :cond_11
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    invoke-static {v2, v11}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2916
    const-string v11, ":"

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2917
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2911
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 2919
    .end local v7    # "i":I
    :cond_12
    const-string v7, "]"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2920
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2922
    const-string v7, "App Alarm history:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v7, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 2925
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_14

    .line 2926
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2927
    const-string v7, "Idle mode state:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2929
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2930
    const-string v7, "Idling until: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2931
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_13

    .line 2932
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2933
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v7, v2, v4, v5, v10}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    goto :goto_a

    .line 2935
    :cond_13
    const-string/jumbo v7, "null"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2937
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2939
    :cond_14
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_15

    .line 2940
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2941
    const-string v7, "Next wake from idle: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2942
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2944
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2945
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v7, v2, v4, v5, v10}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 2946
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2949
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2950
    const-string v7, "Past-due non-wakeup alarms: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2951
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 2952
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 2954
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2955
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-static {v2, v7, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 2956
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_b

    .line 2958
    :cond_16
    const-string v7, "(none)"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2961
    const-string v7, "Number of delayed alarms: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2962
    iget v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2963
    const-string v7, ", total delay time: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2964
    move v11, v6

    .end local v6    # "blocked":Z
    .local v11, "blocked":Z
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2965
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2967
    const-string v6, "Max delay time: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2968
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2969
    const-string v6, ", max non-interactive time: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2970
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2971
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2972
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2974
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2975
    const-string v6, "Broadcast ref count: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2976
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 2977
    const-string v6, "PendingIntent send count: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2978
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 2979
    const-string v6, "PendingIntent finish count: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2980
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 2981
    const-string v6, "Listener send count: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2982
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 2983
    const-string v6, "Listener finish count: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2984
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 2985
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2987
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_18

    .line 2988
    const-string v6, "Outstanding deliveries:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2990
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_17

    .line 2991
    const-string v7, "#"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2992
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2993
    const-string v7, ": "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2994
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2990
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 2996
    .end local v6    # "i":I
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2997
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3000
    :cond_18
    const-string v6, "Allow while idle history:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3002
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3004
    const-string v6, "Allow while idle compat history:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3006
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3008
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    if-lez v6, :cond_1a

    .line 3009
    const-string v6, "Last priority alarm dispatches:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3011
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_d
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_19

    .line 3012
    const-string v7, "UID: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3013
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v7

    invoke-static {v2, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3014
    const-string v7, ": "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3015
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    move-wide/from16 v16, v8

    .end local v8    # "nowRTC":J
    .local v16, "nowRTC":J
    invoke-virtual {v7, v6}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    invoke-static {v7, v8, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3016
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3011
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, v16

    goto :goto_d

    .end local v16    # "nowRTC":J
    .restart local v8    # "nowRTC":J
    :cond_19
    move-wide/from16 v16, v8

    .line 3018
    .end local v6    # "i":I
    .end local v8    # "nowRTC":J
    .restart local v16    # "nowRTC":J
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_e

    .line 3008
    .end local v16    # "nowRTC":J
    .restart local v8    # "nowRTC":J
    :cond_1a
    move-wide/from16 v16, v8

    .line 3021
    .end local v8    # "nowRTC":J
    .restart local v16    # "nowRTC":J
    :goto_e
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_1d

    .line 3022
    const-string v6, "Removal history: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3024
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_f
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_1c

    .line 3025
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3026
    const-string v8, ":"

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3028
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    .line 3029
    .local v8, "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    array-length v9, v8

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v9, :cond_1b

    aget-object v23, v8, v7

    move-object/from16 v24, v23

    .line 3030
    .local v24, "removedAlarm":Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    move-object/from16 v23, v8

    move-object/from16 v8, v24

    .end local v24    # "removedAlarm":Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    .local v8, "removedAlarm":Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    .local v23, "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    invoke-virtual {v8, v2, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3029
    .end local v8    # "removedAlarm":Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v23

    goto :goto_10

    .line 3032
    .end local v23    # "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    .local v8, "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    :cond_1b
    move-object/from16 v23, v8

    .end local v8    # "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    .restart local v23    # "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3024
    nop

    .end local v23    # "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 3034
    .end local v6    # "i":I
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3035
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3038
    :cond_1d
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v7, "Recent problems:"

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/util/LocalLog;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 3039
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3042
    :cond_1e
    const/16 v6, 0xa

    new-array v6, v6, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3043
    .local v6, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    new-instance v7, Lcom/android/server/alarm/AlarmManagerService$6;

    invoke-direct {v7, v1}, Lcom/android/server/alarm/AlarmManagerService$6;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 3054
    .local v7, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v8, 0x0

    .line 3056
    .local v8, "len":I
    const/4 v9, 0x0

    .local v9, "iu":I
    :goto_11
    move-object/from16 v23, v10

    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .local v23, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_25

    .line 3057
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 3058
    .local v10, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/16 v24, 0x0

    move/from16 v32, v24

    move/from16 v24, v8

    move/from16 v8, v32

    .local v8, "ip":I
    .local v24, "len":I
    :goto_12
    move/from16 v25, v11

    .end local v11    # "blocked":Z
    .local v25, "blocked":Z
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v8, v11, :cond_24

    .line 3059
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3060
    .local v11, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    const/16 v26, 0x0

    move-object/from16 v27, v10

    move-wide/from16 v28, v12

    move/from16 v10, v24

    move/from16 v12, v26

    .end local v24    # "len":I
    .local v10, "len":I
    .local v12, "is":I
    .local v27, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .local v28, "nextWakeupRTC":J
    :goto_13
    iget-object v13, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v12, v13, :cond_23

    .line 3061
    iget-object v13, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3062
    .local v13, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    if-lez v10, :cond_1f

    .line 3063
    move-object/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .local v26, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    invoke-static {v6, v11, v10, v13, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v22

    goto :goto_14

    .end local v26    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v11    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_1f
    move-object/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v26    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    move/from16 v22, v11

    :goto_14
    move/from16 v24, v22

    .line 3064
    .local v24, "pos":I
    move/from16 v11, v24

    .end local v24    # "pos":I
    .local v11, "pos":I
    if-gez v11, :cond_20

    .line 3065
    move-wide/from16 v30, v14

    .end local v14    # "nextNonWakeupRTC":J
    .local v30, "nextNonWakeupRTC":J
    neg-int v14, v11

    add-int/lit8 v24, v14, -0x1

    move/from16 v11, v24

    .end local v11    # "pos":I
    .restart local v24    # "pos":I
    goto :goto_15

    .line 3064
    .end local v24    # "pos":I
    .end local v30    # "nextNonWakeupRTC":J
    .restart local v11    # "pos":I
    .restart local v14    # "nextNonWakeupRTC":J
    :cond_20
    move-wide/from16 v30, v14

    .line 3067
    .end local v14    # "nextNonWakeupRTC":J
    .restart local v30    # "nextNonWakeupRTC":J
    :goto_15
    array-length v14, v6

    if-ge v11, v14, :cond_22

    .line 3068
    array-length v14, v6

    sub-int/2addr v14, v11

    add-int/lit8 v14, v14, -0x1

    .line 3069
    .local v14, "copylen":I
    if-lez v14, :cond_21

    .line 3070
    add-int/lit8 v15, v11, 0x1

    invoke-static {v6, v11, v6, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3072
    :cond_21
    aput-object v13, v6, v11

    .line 3073
    array-length v15, v6

    if-ge v10, v15, :cond_22

    .line 3074
    add-int/lit8 v10, v10, 0x1

    .line 3060
    .end local v11    # "pos":I
    .end local v13    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v14    # "copylen":I
    :cond_22
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v26

    move-wide/from16 v14, v30

    goto :goto_13

    .end local v26    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v30    # "nextNonWakeupRTC":J
    .local v11, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .local v14, "nextNonWakeupRTC":J
    :cond_23
    move-object/from16 v26, v11

    move-wide/from16 v30, v14

    .line 3058
    .end local v11    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v12    # "is":I
    .end local v14    # "nextNonWakeupRTC":J
    .restart local v30    # "nextNonWakeupRTC":J
    add-int/lit8 v8, v8, 0x1

    move/from16 v24, v10

    move/from16 v11, v25

    move-object/from16 v10, v27

    move-wide/from16 v12, v28

    goto :goto_12

    .end local v27    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v28    # "nextWakeupRTC":J
    .end local v30    # "nextNonWakeupRTC":J
    .local v10, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .local v12, "nextWakeupRTC":J
    .restart local v14    # "nextNonWakeupRTC":J
    .local v24, "len":I
    :cond_24
    move-object/from16 v27, v10

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    .line 3056
    .end local v8    # "ip":I
    .end local v10    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v12    # "nextWakeupRTC":J
    .end local v14    # "nextNonWakeupRTC":J
    .restart local v28    # "nextWakeupRTC":J
    .restart local v30    # "nextNonWakeupRTC":J
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v23

    move/from16 v8, v24

    move/from16 v11, v25

    goto/16 :goto_11

    .end local v24    # "len":I
    .end local v25    # "blocked":Z
    .end local v28    # "nextWakeupRTC":J
    .end local v30    # "nextNonWakeupRTC":J
    .local v8, "len":I
    .local v11, "blocked":Z
    .restart local v12    # "nextWakeupRTC":J
    .restart local v14    # "nextNonWakeupRTC":J
    :cond_25
    move/from16 v25, v11

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    .line 3080
    .end local v9    # "iu":I
    .end local v11    # "blocked":Z
    .end local v12    # "nextWakeupRTC":J
    .end local v14    # "nextNonWakeupRTC":J
    .restart local v25    # "blocked":Z
    .restart local v28    # "nextWakeupRTC":J
    .restart local v30    # "nextNonWakeupRTC":J
    if-lez v8, :cond_28

    .line 3081
    const-string v9, "Top Alarms:"

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3083
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_16
    if-ge v9, v8, :cond_27

    .line 3084
    aget-object v10, v6, v9

    .line 3085
    .local v10, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v11, :cond_26

    const-string v11, "*ACTIVE* "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3086
    :cond_26
    iget-wide v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v11, v12, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3087
    const-string v11, " running, "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3088
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3089
    const-string v11, " wakeups, "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3090
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3091
    const-string v11, " alarms: "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3092
    iget-object v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v11, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v2, v11}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3093
    const-string v11, ":"

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3094
    iget-object v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3095
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3097
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3098
    iget-object v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3099
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3100
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3083
    nop

    .end local v10    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 3102
    .end local v9    # "i":I
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3105
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3106
    const-string v9, "Alarm Stats:"

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3108
    .local v9, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v10, 0x0

    .local v10, "iu":I
    :goto_17
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_2e

    .line 3109
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 3110
    .local v11, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_18
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v12, v13, :cond_2d

    .line 3111
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3112
    .local v13, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    iget v14, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v14, :cond_29

    const-string v14, "*ACTIVE* "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3113
    :cond_29
    iget v14, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v2, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3114
    const-string v14, ":"

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3115
    iget-object v14, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3116
    const-string v14, " "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3117
    iget-wide v14, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v14, v15, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3118
    const-string v14, " running, "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3119
    iget v14, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3120
    const-string v14, " wakeups:"

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3123
    const/4 v14, 0x0

    .local v14, "is":I
    :goto_19
    iget-object v15, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_2a

    .line 3124
    iget-object v15, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3123
    add-int/lit8 v14, v14, 0x1

    goto :goto_19

    .line 3126
    .end local v14    # "is":I
    :cond_2a
    invoke-static {v9, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3127
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3128
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_2c

    .line 3129
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3130
    .local v15, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v22, v6

    .end local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .local v22, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    iget v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v6, :cond_2b

    const-string v6, "*ACTIVE* "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3131
    :cond_2b
    move-object/from16 v24, v7

    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .local v24, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    iget-wide v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3132
    const-string v6, " "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3133
    iget v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3134
    const-string v6, " wakes "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3135
    iget v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3136
    const-string v6, " alarms, last "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3137
    iget-wide v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3138
    const-string v6, ":"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3141
    iget-object v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3142
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3143
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3128
    nop

    .end local v15    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v22

    move-object/from16 v7, v24

    goto :goto_1a

    .end local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    :cond_2c
    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .line 3145
    .end local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v14    # "i":I
    .restart local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3110
    nop

    .end local v13    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v22

    move-object/from16 v7, v24

    goto/16 :goto_18

    .end local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    :cond_2d
    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .line 3108
    .end local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v11    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v12    # "ip":I
    .restart local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_17

    .end local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    :cond_2e
    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .line 3148
    .end local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v10    # "iu":I
    .restart local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3149
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v6, v2}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3179
    .end local v4    # "nowELAPSED":J
    .end local v8    # "len":I
    .end local v9    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v16    # "nowRTC":J
    .end local v18    # "nowUPTIME":J
    .end local v20    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v23    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v25    # "blocked":Z
    .end local v28    # "nextWakeupRTC":J
    .end local v30    # "nextNonWakeupRTC":J
    monitor-exit v3

    .line 3180
    return-void

    .line 2754
    .restart local v4    # "nowELAPSED":J
    .local v6, "nowUPTIME":J
    .local v8, "nowRTC":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .local v11, "i":I
    :cond_2f
    move-wide/from16 v18, v6

    move-wide/from16 v16, v8

    move-object/from16 v23, v10

    .end local v6    # "nowUPTIME":J
    .end local v8    # "nowRTC":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v16    # "nowRTC":J
    .restart local v18    # "nowUPTIME":J
    .restart local v23    # "sdf":Ljava/text/SimpleDateFormat;
    goto/16 :goto_0

    .line 3179
    .end local v4    # "nowELAPSED":J
    .end local v11    # "i":I
    .end local v16    # "nowRTC":J
    .end local v18    # "nowUPTIME":J
    .end local v23    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v0

    move-object v4, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .locals 24
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 3183
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v9, v0

    .line 3185
    .local v9, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3186
    :try_start_0
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    move-wide v11, v3

    .line 3187
    .local v11, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    move-wide v13, v3

    .line 3188
    .local v13, "nowElapsed":J
    const-wide v3, 0x10300000001L

    invoke-virtual {v9, v3, v4, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3189
    const-wide v3, 0x10300000002L

    invoke-virtual {v9, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3190
    iget-wide v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v5, 0x10300000003L

    invoke-virtual {v9, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3192
    const-wide v3, 0x10300000004L

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3195
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3197
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v0, :cond_0

    .line 3198
    const-wide v3, 0x10b00000006L

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3201
    :cond_0
    const-wide v3, 0x10800000007L

    iget-boolean v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    invoke-virtual {v9, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3202
    iget-boolean v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 3204
    const-wide v3, 0x10300000008L

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v7, v13, v7

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3206
    const-wide v3, 0x10300000009L

    .line 3207
    invoke-virtual {v1, v13, v14}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v7

    .line 3206
    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3208
    const-wide v3, 0x1030000000aL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v7, v13, v7

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3210
    const-wide v3, 0x1030000000bL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v7, v13, v7

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3214
    :cond_1
    const-wide v3, 0x1030000000cL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v7, v13

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3216
    const-wide v3, 0x1030000000dL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v7, v13

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3218
    const-wide v3, 0x1030000000eL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    sub-long v7, v13, v7

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3220
    const-wide v3, 0x1030000000fL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v7, v13, v7

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3222
    const-wide v3, 0x10300000010L

    iget v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v9, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3224
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 3225
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v15, v3

    .line 3226
    .local v15, "nextAlarmClockForUserSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v15, :cond_2

    .line 3227
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3226
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3229
    .end local v3    # "i":I
    :cond_2
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 3230
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v7, v3

    .line 3231
    .local v7, "pendingSendNextAlarmClockChangedForUserSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 3232
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3231
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3234
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3235
    .local v4, "user":I
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3236
    .local v8, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v18

    goto :goto_3

    :cond_4
    const-wide/16 v18, 0x0

    :goto_3
    move-wide/from16 v20, v18

    .line 3237
    .local v20, "time":J
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 3238
    .local v5, "pendingSend":Z
    move-object v6, v3

    const-wide v2, 0x20b00000012L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3240
    .local v2, "aToken":J
    move-object/from16 v23, v6

    move/from16 v22, v7

    const-wide v6, 0x10500000001L

    .end local v7    # "pendingSendNextAlarmClockChangedForUserSize":I
    .local v22, "pendingSendNextAlarmClockChangedForUserSize":I
    invoke-virtual {v9, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3241
    const-wide v6, 0x10800000002L

    invoke-virtual {v9, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3242
    move/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v6, v20

    const-wide v4, 0x10300000003L

    .end local v4    # "user":I
    .end local v5    # "pendingSend":Z
    .end local v20    # "time":J
    .local v6, "time":J
    .local v16, "user":I
    .local v17, "pendingSend":Z
    invoke-virtual {v9, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3243
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3244
    .end local v2    # "aToken":J
    .end local v6    # "time":J
    .end local v8    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v16    # "user":I
    .end local v17    # "pendingSend":Z
    move-object/from16 v2, p1

    move-wide v5, v4

    move/from16 v7, v22

    move-object/from16 v3, v23

    goto :goto_2

    .line 3245
    .end local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v7    # "pendingSendNextAlarmClockChangedForUserSize":I
    :cond_5
    move/from16 v22, v7

    const-wide v6, 0x10500000001L

    .end local v7    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v9, v13, v14}, Lcom/android/server/alarm/AlarmStore;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3247
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 3248
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v16, v3

    .line 3249
    .local v16, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v16, :cond_7

    .line 3250
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 3251
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    const-wide v18, 0x20b00000014L

    move-object v4, v9

    move-wide v7, v6

    move-wide/from16 v5, v18

    move-wide/from16 v19, v11

    move/from16 v18, v22

    move-wide v11, v7

    .end local v11    # "nowRTC":J
    .end local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    .local v18, "pendingSendNextAlarmClockChangedForUserSize":I
    .local v19, "nowRTC":J
    move-wide v7, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3254
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    move-wide v6, v11

    move/from16 v22, v18

    move-wide/from16 v11, v19

    goto :goto_5

    .line 3250
    .end local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v19    # "nowRTC":J
    .restart local v11    # "nowRTC":J
    .restart local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    :cond_6
    move-wide/from16 v19, v11

    move/from16 v18, v22

    move-wide v11, v6

    .end local v11    # "nowRTC":J
    .end local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v19    # "nowRTC":J
    goto :goto_6

    .line 3249
    .end local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v19    # "nowRTC":J
    .restart local v11    # "nowRTC":J
    .restart local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    :cond_7
    move-wide/from16 v19, v11

    move/from16 v18, v22

    move-wide v11, v6

    .line 3247
    .end local v11    # "nowRTC":J
    .end local v16    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .end local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v19    # "nowRTC":J
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-wide v6, v11

    move/from16 v22, v18

    move-wide/from16 v11, v19

    goto :goto_4

    .end local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v19    # "nowRTC":J
    .restart local v11    # "nowRTC":J
    .restart local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    :cond_8
    move-wide/from16 v19, v11

    move/from16 v18, v22

    move-wide v11, v6

    .line 3257
    .end local v2    # "i":I
    .end local v11    # "nowRTC":J
    .end local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v19    # "nowRTC":J
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_9

    .line 3258
    const-wide v5, 0x10b00000015L

    move-object v4, v9

    move-wide v7, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3261
    :cond_9
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_a

    .line 3262
    const-wide v5, 0x10b00000017L

    move-object v4, v9

    move-wide v7, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3266
    :cond_a
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 3267
    .restart local v3    # "a":Lcom/android/server/alarm/Alarm;
    const-wide v5, 0x20b00000018L

    move-object v4, v9

    move-wide v7, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3269
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    goto :goto_7

    .line 3271
    :cond_b
    const-wide v2, 0x10500000019L

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3272
    const-wide v2, 0x1030000001aL

    iget-wide v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3273
    const-wide v2, 0x1030000001bL

    iget-wide v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3274
    const-wide v2, 0x1030000001cL

    iget-wide v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3277
    const-wide v2, 0x1050000001dL

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3278
    const-wide v2, 0x1050000001eL

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3279
    const-wide v2, 0x1050000001fL

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3280
    const-wide v2, 0x10500000020L

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3281
    const-wide v2, 0x10500000021L

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3283
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 3284
    .local v3, "f":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    const-wide v4, 0x20b00000022L

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3285
    .end local v3    # "f":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    goto :goto_8

    .line 3287
    :cond_c
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v3, 0x10b00000025L

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/internal/util/LocalLog;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3289
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3290
    .local v2, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$7;

    invoke-direct {v3, v1}, Lcom/android/server/alarm/AlarmManagerService$7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 3301
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 3303
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "iu":I
    :goto_9
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 3304
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 3305
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_a
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_13

    .line 3306
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3307
    .local v8, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "is":I
    :goto_b
    iget-object v12, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_12

    .line 3308
    iget-object v12, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3309
    .local v12, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v21, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v21, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-lez v4, :cond_d

    .line 3310
    invoke-static {v2, v0, v4, v12, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    :cond_d
    nop

    .line 3311
    .local v0, "pos":I
    if-gez v0, :cond_e

    .line 3312
    move-object/from16 v22, v6

    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .local v22, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    neg-int v6, v0

    add-int/lit8 v0, v6, -0x1

    goto :goto_c

    .line 3311
    .end local v22    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    :cond_e
    move-object/from16 v22, v6

    .line 3314
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .restart local v22    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    :goto_c
    array-length v6, v2

    if-ge v0, v6, :cond_10

    .line 3315
    array-length v6, v2

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    .line 3316
    .local v6, "copylen":I
    if-lez v6, :cond_f

    .line 3317
    move-object/from16 v23, v8

    .end local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .local v23, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    add-int/lit8 v8, v0, 0x1

    invoke-static {v2, v0, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    .line 3316
    .end local v23    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_f
    move-object/from16 v23, v8

    .line 3319
    .end local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v23    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :goto_d
    aput-object v12, v2, v0

    .line 3320
    array-length v8, v2

    if-ge v4, v8, :cond_11

    .line 3321
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 3314
    .end local v6    # "copylen":I
    .end local v23    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_10
    move-object/from16 v23, v8

    .line 3307
    .end local v0    # "pos":I
    .end local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v12    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v23    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_11
    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v21

    move-object/from16 v6, v22

    move-object/from16 v8, v23

    goto :goto_b

    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v23    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .restart local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_12
    move-object/from16 v21, v0

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    .line 3305
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v11    # "is":I
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v22    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide v11, 0x10500000001L

    goto :goto_a

    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    :cond_13
    move-object/from16 v21, v0

    move-object/from16 v22, v6

    .line 3303
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v7    # "ip":I
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v5, v5, 0x1

    const-wide v11, 0x10500000001L

    goto/16 :goto_9

    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_14
    move-object/from16 v21, v0

    .line 3327
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v5    # "iu":I
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v4, :cond_15

    .line 3328
    const-wide v5, 0x20b00000026L

    invoke-virtual {v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3329
    .local v5, "token":J
    aget-object v7, v2, v0

    .line 3331
    .local v7, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    iget-object v8, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v8, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v11, 0x10500000001L

    invoke-virtual {v9, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3332
    const-wide v11, 0x10900000002L

    iget-object v8, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3334
    const-wide v11, 0x10b00000003L

    invoke-virtual {v7, v9, v11, v12}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3336
    invoke-virtual {v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3327
    .end local v5    # "token":J
    .end local v7    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 3339
    .end local v0    # "i":I
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3340
    .local v0, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v5, 0x0

    .local v5, "iu":I
    :goto_10
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_19

    .line 3341
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 3342
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_11
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_18

    .line 3343
    const-wide v11, 0x20b00000027L

    invoke-virtual {v9, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 3345
    .local v11, "token":J
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3346
    .restart local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    move-object/from16 v16, v2

    .end local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .local v16, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    const-wide v1, 0x10b00000001L

    invoke-virtual {v8, v9, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3349
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3350
    const/4 v1, 0x0

    .local v1, "is":I
    :goto_12
    iget-object v2, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 3351
    iget-object v2, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3350
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 3353
    .end local v1    # "is":I
    :cond_16
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3354
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3355
    .local v2, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v17, v0

    move-object/from16 v22, v1

    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .local v17, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const-wide v0, 0x20b00000002L

    invoke-virtual {v2, v9, v0, v1}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3356
    .end local v2    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    goto :goto_13

    .line 3358
    .end local v17    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    :cond_17
    move-object/from16 v17, v0

    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v17    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    invoke-virtual {v9, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3342
    .end local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v11    # "token":J
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    goto :goto_11

    .end local v16    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v17    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .local v2, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_18
    move-object/from16 v17, v0

    move-object/from16 v16, v2

    .line 3340
    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v7    # "ip":I
    .restart local v16    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v17    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_10

    .end local v16    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v17    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_19
    move-object/from16 v17, v0

    move-object/from16 v16, v2

    .line 3379
    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v4    # "len":I
    .end local v5    # "iu":I
    .end local v13    # "nowElapsed":J
    .end local v15    # "nextAlarmClockForUserSize":I
    .end local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v19    # "nowRTC":J
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3381
    invoke-virtual {v9}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3382
    return-void

    .line 3379
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1860
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1863
    nop

    .line 1864
    return-void

    .line 1862
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1863
    throw v0
.end method

.method getMinimumAllowedWindow(JJ)J
    .locals 6
    .param p1, "nowElapsed"    # J
    .param p3, "triggerElapsed"    # J

    .line 1203
    sub-long v0, p3, p1

    .line 1204
    .local v0, "futurity":J
    long-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 3397
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3398
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object v1

    .line 3399
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNextWakeFromIdleTimeImpl()J
    .locals 3

    .line 3385
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3386
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 3387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getQuotaForBucketLocked(I)I
    .locals 2
    .param p1, "bucket"    # I

    .line 2068
    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 2069
    const/4 v0, 0x0

    .local v0, "index":I
    goto :goto_0

    .line 2070
    .end local v0    # "index":I
    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    .line 2071
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_0

    .line 2072
    .end local v0    # "index":I
    :cond_1
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_2

    .line 2073
    const/4 v0, 0x2

    .restart local v0    # "index":I
    goto :goto_0

    .line 2074
    .end local v0    # "index":I
    :cond_2
    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    .line 2075
    const/4 v0, 0x3

    .restart local v0    # "index":I
    goto :goto_0

    .line 2077
    .end local v0    # "index":I
    :cond_3
    const/4 v0, 0x4

    .line 2079
    .restart local v0    # "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v1, v1, v0

    return v1
.end method

.method handleChangesToExactAlarmDenyList(Landroid/util/ArraySet;Z)V
    .locals 13
    .param p2, "added"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 3563
    .local p1, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Packages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, " added to"

    goto :goto_0

    :cond_0
    const-string v2, " removed from"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " the exact alarm deny list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getStartedUserIds()[I

    move-result-object v0

    .line 3568
    .local v0, "startedUserIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 3569
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3570
    .local v2, "changedPackage":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_5

    aget v6, v0, v5

    .line 3571
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v2, v4, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v7

    .line 3572
    .local v7, "uid":I
    if-gtz v7, :cond_1

    .line 3573
    goto :goto_3

    .line 3575
    :cond_1
    invoke-static {v2, v6}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3576
    goto :goto_3

    .line 3579
    :cond_2
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3580
    :try_start_0
    iget-object v9, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    const/16 v10, 0x6b

    .line 3581
    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    .line 3580
    invoke-virtual {v9, v7, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 3582
    .local v9, "appOpMode":I
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3583
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 3587
    .local v8, "requested":Z
    xor-int/lit8 v10, p2, 0x1

    invoke-static {v8, v10, v9}, Lcom/android/server/alarm/AlarmManagerService;->getScheduleExactAlarmState(ZZI)Z

    move-result v10

    .line 3589
    .local v10, "hadPermission":Z
    invoke-static {v8, p2, v9}, Lcom/android/server/alarm/AlarmManagerService;->getScheduleExactAlarmState(ZZI)Z

    move-result v11

    .line 3592
    .local v11, "hasPermission":Z
    if-ne v10, v11, :cond_3

    .line 3593
    goto :goto_3

    .line 3595
    :cond_3
    if-eqz p2, :cond_4

    .line 3596
    iget-object v12, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3597
    :try_start_1
    invoke-virtual {p0, v7, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevokedLocked(ILjava/lang/String;)V

    .line 3598
    monitor-exit v12

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 3600
    :cond_4
    invoke-direct {p0, v2, v6}, Lcom/android/server/alarm/AlarmManagerService;->sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V

    .line 3570
    .end local v6    # "userId":I
    .end local v7    # "uid":I
    .end local v8    # "requested":Z
    .end local v9    # "appOpMode":I
    .end local v10    # "hadPermission":Z
    .end local v11    # "hasPermission":Z
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3582
    .restart local v6    # "userId":I
    .restart local v7    # "uid":I
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 3568
    .end local v2    # "changedPackage":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "uid":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3604
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2396
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 2398
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 2399
    const/4 v2, 0x0

    .local v2, "hasPermission":Z
    goto :goto_1

    .line 2400
    .end local v2    # "hasPermission":Z
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2401
    const/4 v2, 0x0

    .restart local v2    # "hasPermission":Z
    goto :goto_1

    .line 2403
    .end local v2    # "hasPermission":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x6b

    invoke-virtual {v2, v4, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 2405
    .local v2, "mode":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 2406
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    move v2, v4

    .local v4, "hasPermission":Z
    goto :goto_1

    .line 2408
    .end local v4    # "hasPermission":Z
    :cond_2
    if-nez v2, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 2411
    .local v2, "hasPermission":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 2412
    return v2
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 6
    .param p1, "interactive"    # Z

    .line 3761
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_4

    .line 3762
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 3763
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3764
    .local v0, "nowELAPSED":J
    if-eqz p1, :cond_3

    .line 3765
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3766
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 3767
    .local v2, "thisDelayTime":J
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 3768
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 3769
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 3771
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3772
    .local v4, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 3773
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3775
    .end local v2    # "thisDelayTime":J
    .end local v4    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_1
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 3776
    sub-long v2, v0, v2

    .line 3777
    .local v2, "dur":J
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 3778
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    .line 3782
    .end local v2    # "dur":J
    :cond_2
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3785
    :cond_3
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 3788
    .end local v0    # "nowELAPSED":J
    :cond_4
    :goto_0
    return-void
.end method

.method isExemptFromExactAlarmPermission(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 2428
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2429
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz v0, :cond_1

    .line 2431
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/DeviceIdleInternal;->isAppOnWhitelist(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2428
    :goto_1
    return v0
.end method

.method isExemptFromMinWindowRestrictions(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 2419
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermission(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$interactiveStateChangedLocked$19$AlarmManagerService()V
    .locals 3

    .line 3783
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$new$0$AlarmManagerService()V
    .locals 1

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return-void
.end method

.method public synthetic lambda$onBootPhase$7$AlarmManagerService()Lcom/android/server/alarm/AlarmStore;
    .locals 1

    .line 1853
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    return-object v0
.end method

.method public synthetic lambda$onUserStarting$6$AlarmManagerService(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 1759
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1760
    .local v1, "appId":I
    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1761
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 1763
    .local v3, "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v3, :cond_0

    .line 1764
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x6b

    .line 1765
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1764
    invoke-virtual {v4, v5, v2, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 1766
    .local v4, "mode":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1767
    :try_start_0
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1768
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1770
    .end local v1    # "appId":I
    .end local v2    # "uid":I
    .end local v3    # "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "mode":I
    :cond_0
    :goto_1
    goto :goto_0

    .line 1771
    :cond_1
    return-void
.end method

.method public synthetic lambda$reevaluateRtcAlarms$1$AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1235
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1236
    const/4 v0, 0x0

    return v0

    .line 1238
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$reevaluateRtcAlarms$2$AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1246
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$reevaluateRtcAlarms$3$AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 1249
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$refreshExactAlarmCandidates$5$AlarmManagerService(ILcom/android/server/alarm/Alarm;)Z
    .locals 6
    .param p1, "removedAppId"    # I
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1739
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    iget-wide v2, p2, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1742
    :cond_0
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1743
    return v1

    .line 1745
    :cond_1
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermission(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1740
    :cond_2
    :goto_0
    return v1
.end method

.method public synthetic lambda$removeAlarmsInternalLocked$12$AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 3681
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$removeAlarmsInternalLocked$13$AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 3686
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$removeForStoppedLocked$17$AlarmManagerService(ILcom/android/server/alarm/Alarm;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 3729
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 3730
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3729
    :goto_0
    return v0
.end method

.method public synthetic lambda$reorderAlarmsBasedOnStandbyBuckets$4$AlarmManagerService(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .locals 2
    .param p1, "targetPackages"    # Landroid/util/ArraySet;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1272
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1273
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1274
    .local v0, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1275
    const/4 v1, 0x0

    return v1

    .line 1277
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    return v1
.end method

.method public synthetic lambda$setImplLocked$10$AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2331
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$setImplLocked$8$AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2315
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$setImplLocked$9$AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2327
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$triggerAlarmsLocked$20$AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .locals 1
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 3895
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3791
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3792
    .local v0, "allAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 3793
    .local v2, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-virtual {v2, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3794
    const/4 v1, 0x1

    return v1

    .line 3796
    .end local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_0
    goto :goto_0

    .line 3797
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 1776
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1778
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->start()V

    .line 1780
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1782
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 1783
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 1784
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1785
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1787
    const-class v1, Lcom/android/server/AppStateTracker;

    .line 1788
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTrackerImpl;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 1789
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {v1, v2}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 1791
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1792
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1793
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1794
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 1796
    .local v0, "iAppOpsService":Lcom/android/internal/app/IAppOpsService;
    const/16 v1, 0x6b

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1843
    goto :goto_0

    .line 1842
    :catch_0
    move-exception v1

    .line 1845
    :goto_0
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1847
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    .line 1849
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 1850
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 1851
    .local v1, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;

    invoke-direct {v3, p0, v2}, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$1;)V

    invoke-interface {v1, v3}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1853
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/alarm/MetricsHelper;->registerPuller(Ljava/util/function/Supplier;)V

    goto :goto_1

    .line 1793
    .end local v0    # "iAppOpsService":Lcom/android/internal/app/IAppOpsService;
    .end local v1    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1855
    :cond_0
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 8

    .line 1612
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->init()V

    .line 1613
    new-instance v0, Lcom/android/server/alarm/MetricsHelper;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    .line 1615
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1627
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1628
    :try_start_0
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 1629
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 1631
    iget-boolean v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/alarm/LazyAlarmStore;

    invoke-direct {v1}, Lcom/android/server/alarm/LazyAlarmStore;-><init>()V

    goto :goto_0

    .line 1632
    :cond_0
    new-instance v1, Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-direct {v1}, Lcom/android/server/alarm/BatchingAlarmStore;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    .line 1633
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->setAlarmClockRemovalListener(Ljava/lang/Runnable;)V

    .line 1635
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v2, 0x36ee80

    invoke-direct {v1, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1636
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v1, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1637
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v1, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1639
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 1643
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 1648
    const-wide/16 v1, 0x3e8

    const-string/jumbo v3, "ro.build.date.utc"

    const-wide/16 v4, -0x1

    .line 1649
    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    mul-long/2addr v3, v1

    .line 1650
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v1

    .line 1648
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v1

    .line 1651
    .local v1, "systemBuildTime":J
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    .line 1652
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current time only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", advancing to build time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1657
    :cond_1
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1659
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4, v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getSystemUiUid(Landroid/content/pm/PackageManagerInternal;)I

    move-result v3

    iput v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 1660
    if-gtz v3, :cond_2

    .line 1661
    const-string v3, "AlarmManager"

    const-string v4, "SysUI package not found!"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_2
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1665
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x50200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 1670
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$3;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 1695
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1696
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1698
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v4, v5, v3, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1701
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4, p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 1702
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1703
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1704
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1706
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1707
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;

    invoke-direct {v4, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1708
    .local v4, "waitThread":Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->start()V

    .line 1709
    .end local v4    # "waitThread":Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
    goto :goto_1

    .line 1710
    :cond_3
    const-string v4, "AlarmManager"

    const-string v5, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    .end local v1    # "systemBuildTime":J
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1714
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/alarm/AlarmManagerService$LocalService;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1715
    const-string v0, "alarm"

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1716
    return-void

    .line 1712
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1756
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 1757
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1758
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    .line 1772
    return-void
.end method

.method reevaluateRtcAlarms()V
    .locals 5

    .line 1233
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    .line 1241
    .local v1, "changed":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_0

    .line 1242
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v2

    .line 1247
    .local v2, "idleUntilUpdated":Z
    if-eqz v2, :cond_0

    .line 1248
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v3, v4}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 1254
    .end local v2    # "idleUntilUpdated":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1258
    .end local v1    # "changed":Z
    :cond_1
    monitor-exit v0

    .line 1259
    return-void

    .line 1258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method refreshExactAlarmCandidates()V
    .locals 9

    .line 1719
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1721
    .local v0, "candidates":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1722
    .local v1, "newAppIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 1723
    .local v5, "candidate":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v7, 0x400000

    invoke-virtual {v6, v5, v7, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    .line 1725
    .local v6, "uid":I
    if-lez v6, :cond_0

    .line 1726
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1722
    .end local v5    # "candidate":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1729
    :cond_1
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1730
    .local v2, "removed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1733
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1734
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1735
    .local v4, "removedAppId":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1736
    :try_start_0
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " lost SCHEDULE_EXACT_ALARM on update"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    new-instance v6, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0, v4}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 1747
    .local v6, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 1748
    .end local v6    # "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    monitor-exit v5

    .line 1733
    .end local v4    # "removedAppId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1748
    .restart local v4    # "removedAppId":I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1751
    .end local v3    # "i":I
    .end local v4    # "removedAppId":I
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 1752
    return-void
.end method

.method removeExactAlarmsOnPermissionRevokedLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3613
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermission(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3614
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3617
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lost SCHEDULE_EXACT_ALARM!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;-><init>(ILjava/lang/String;)V

    .line 3621
    .local v0, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 3623
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

    if-eqz v1, :cond_1

    .line 3624
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v3, "schedule_exact_alarm revoked"

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    .line 3627
    :cond_1
    return-void

    .line 3615
    .end local v0    # "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method removeForStoppedLocked(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 3725
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 3727
    return-void

    .line 3729
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 3731
    .local v0, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 3732
    return-void
.end method

.method removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .line 1937
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1938
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 1939
    monitor-exit v0

    .line 1940
    return-void

    .line 1939
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeLocked(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .line 3705
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 3707
    return-void

    .line 3709
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 3710
    return-void
.end method

.method removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p3, "reason"    # I

    .line 3694
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 3699
    return-void

    .line 3701
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    invoke-direct {p0, v0, p3}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 3702
    return-void
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3713
    if-nez p1, :cond_0

    .line 3718
    return-void

    .line 3720
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 3721
    return-void
.end method

.method removeUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 3735
    if-nez p1, :cond_0

    .line 3736
    const-string v0, "AlarmManager"

    const-string v1, "Ignoring attempt to remove system-user state!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    return-void

    .line 3739
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;-><init>(I)V

    .line 3741
    .local v0, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 3743
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3744
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 3745
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 3743
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3748
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 3749
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 3750
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3748
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3753
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 3754
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 3755
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3753
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 3758
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 1269
    .local p1, "targetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1271
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v2

    .line 1280
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 1281
    return v2
.end method

.method rescheduleKernelAlarmsLocked()V
    .locals 11

    .line 3525
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3526
    .local v0, "nowElapsed":J
    const-wide/16 v2, 0x0

    .line 3527
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_1

    .line 3528
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->getNextWakeupDeliveryTime()J

    move-result-wide v7

    .line 3529
    .local v7, "firstWakeup":J
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->getNextDeliveryTime()J

    move-result-wide v9

    .line 3530
    .local v9, "first":J
    cmp-long v4, v7, v5

    if-eqz v4, :cond_0

    .line 3531
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 3532
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 3533
    const/4 v4, 0x2

    invoke-direct {p0, v4, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    .line 3535
    :cond_0
    cmp-long v4, v9, v7

    if-eqz v4, :cond_1

    .line 3536
    move-wide v2, v9

    .line 3539
    .end local v7    # "firstWakeup":J
    .end local v9    # "first":J
    :cond_1
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 3540
    cmp-long v4, v2, v5

    if-eqz v4, :cond_2

    iget-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v7, v2

    if-gez v4, :cond_3

    .line 3541
    :cond_2
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 3544
    :cond_3
    cmp-long v4, v2, v5

    if-eqz v4, :cond_4

    .line 3545
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 3546
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    .line 3547
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    .line 3549
    :cond_4
    return-void
.end method

.method sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .locals 3

    .line 1336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1338
    .local v0, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1341
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1344
    :cond_0
    return-void
.end method

.method sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1300
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1301
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 1305
    :cond_0
    if-eqz p2, :cond_3

    .line 1309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    .local v1, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1311
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1312
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    invoke-virtual {v3, p2}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1313
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1316
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 1317
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 1323
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_3
    move-object v1, v0

    .line 1324
    .restart local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1326
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1327
    return-void

    .line 1302
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_5
    :goto_2
    return-void
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 40
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p10, "listenerTag"    # Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "workSource"    # Landroid/os/WorkSource;
    .param p13, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p14, "callingUid"    # I
    .param p15, "callingPackage"    # Ljava/lang/String;
    .param p16, "idleOptions"    # Landroid/os/Bundle;
    .param p17, "exactAllowReason"    # I

    .line 1946
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v13, p14

    move-object/from16 v12, p15

    if-nez p8, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    if-eqz p8, :cond_2

    if-eqz p9, :cond_2

    .line 1948
    :cond_1
    const-string v0, "AlarmManager"

    const-string v7, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    return-void

    .line 1954
    :cond_2
    const/4 v0, 0x0

    if-eqz p9, :cond_3

    .line 1956
    :try_start_0
    invoke-interface/range {p9 .. p9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v15, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v7, v8, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1960
    move-object/from16 v11, p10

    goto :goto_0

    .line 1957
    :catch_0
    move-exception v0

    .line 1958
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping unreachable alarm listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p10

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    return-void

    .line 1954
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v11, p10

    .line 1966
    :goto_0
    iget-object v7, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v9, v7, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 1967
    .local v9, "minInterval":J
    const-wide/16 v7, 0x0

    cmp-long v16, v5, v7

    if-lez v16, :cond_4

    cmp-long v16, v5, v9

    if-gez v16, :cond_4

    .line 1968
    const-string v0, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suspiciously short interval "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " millis; expanding to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v19, 0x3e8

    div-long v11, v9, v19

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    move-wide v5, v9

    move-wide/from16 v25, v5

    .end local p6    # "interval":J
    .local v5, "interval":J
    goto :goto_1

    .line 1972
    .end local v5    # "interval":J
    .restart local p6    # "interval":J
    :cond_4
    iget-object v0, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v7, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    .line 1973
    const-string v0, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suspiciously long interval "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " millis; clamping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    iget-object v0, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    move-wide/from16 v25, v5

    .end local p6    # "interval":J
    .restart local v5    # "interval":J
    goto :goto_1

    .line 1972
    .end local v5    # "interval":J
    .restart local p6    # "interval":J
    :cond_5
    move-wide/from16 v25, v5

    .line 1978
    .end local p6    # "interval":J
    .local v25, "interval":J
    :goto_1
    if-ltz v14, :cond_f

    const/4 v0, 0x3

    if-gt v14, v0, :cond_f

    .line 1982
    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-gez v0, :cond_6

    .line 1983
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    int-to-long v5, v0

    .line 1984
    .local v5, "what":J
    const-string v0, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid alarm trigger time! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " from uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const-wide/16 v0, 0x0

    move-wide v11, v0

    .end local p2    # "triggerAtTime":J
    .local v0, "triggerAtTime":J
    goto :goto_2

    .line 1982
    .end local v0    # "triggerAtTime":J
    .end local v5    # "what":J
    .restart local p2    # "triggerAtTime":J
    :cond_6
    move-wide v11, v1

    .line 1989
    .end local p2    # "triggerAtTime":J
    .local v11, "triggerAtTime":J
    :goto_2
    iget-object v0, v15, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v7

    .line 1990
    .local v7, "nowElapsed":J
    invoke-direct {v15, v11, v12, v14}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v5

    .line 1992
    .local v5, "nominalTrigger":J
    nop

    .line 1993
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_3

    :cond_7
    iget-object v0, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    :goto_3
    add-long v1, v7, v0

    .line 1994
    .local v1, "minTrigger":J
    move-wide/from16 v27, v9

    .end local v9    # "minInterval":J
    .local v27, "minInterval":J
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 1997
    .local v9, "triggerElapsed":J
    const-wide/16 v17, 0x0

    cmp-long v0, v3, v17

    if-nez v0, :cond_8

    .line 1998
    move-wide/from16 v17, v9

    move-object/from16 v14, p15

    move-wide/from16 p2, v1

    move-wide/from16 v21, v3

    move-wide/from16 p6, v5

    move-wide/from16 v23, v17

    .local v17, "maxElapsed":J
    goto/16 :goto_6

    .line 1999
    .end local v17    # "maxElapsed":J
    :cond_8
    cmp-long v0, v3, v17

    if-gez v0, :cond_9

    .line 2000
    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    move-wide/from16 v23, v25

    invoke-static/range {v19 .. v24}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v17

    .line 2002
    .restart local v17    # "maxElapsed":J
    sub-long v3, v17, v9

    move-object/from16 v14, p15

    move-wide/from16 p2, v1

    move-wide/from16 v21, v3

    move-wide/from16 p6, v5

    move-wide/from16 v23, v17

    .end local p4    # "windowLength":J
    .local v3, "windowLength":J
    goto/16 :goto_6

    .line 2005
    .end local v3    # "windowLength":J
    .end local v17    # "maxElapsed":J
    .restart local p4    # "windowLength":J
    :cond_9
    move-wide/from16 p2, v1

    .end local v1    # "minTrigger":J
    .local p2, "minTrigger":J
    invoke-virtual {v15, v7, v8, v9, v10}, Lcom/android/server/alarm/AlarmManagerService;->getMinimumAllowedWindow(JJ)J

    move-result-wide v0

    .line 2006
    .local v0, "minAllowedWindow":J
    const-wide/32 v17, 0x5265c00

    cmp-long v2, v3, v17

    if-lez v2, :cond_a

    .line 2007
    const-string v2, "AlarmManager"

    move-wide/from16 p6, v5

    .end local v5    # "nominalTrigger":J
    .local p6, "nominalTrigger":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms too long; limiting to 1 day"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const-wide/32 v2, 0x5265c00

    move-object/from16 v14, p15

    .end local p4    # "windowLength":J
    .local v2, "windowLength":J
    goto :goto_5

    .line 2009
    .end local v2    # "windowLength":J
    .end local p6    # "nominalTrigger":J
    .restart local v5    # "nominalTrigger":J
    .restart local p4    # "windowLength":J
    :cond_a
    move-wide/from16 p6, v5

    .end local v5    # "nominalTrigger":J
    .restart local p6    # "nominalTrigger":J
    and-int/lit8 v2, p11, 0x40

    if-nez v2, :cond_c

    cmp-long v2, v3, v0

    if-gez v2, :cond_c

    .line 2011
    invoke-virtual {v15, v13}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromMinWindowRestrictions(I)Z

    move-result v2

    if-nez v2, :cond_b

    const-wide/32 v5, 0xb09e9e4

    .line 2013
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2011
    move-object/from16 v14, p15

    invoke-static {v5, v6, v14, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2014
    const-string v2, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms too short; expanding to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    move-wide v2, v0

    .end local p4    # "windowLength":J
    .restart local v2    # "windowLength":J
    goto :goto_5

    .line 2011
    .end local v2    # "windowLength":J
    .restart local p4    # "windowLength":J
    :cond_b
    move-object/from16 v14, p15

    goto :goto_4

    .line 2009
    :cond_c
    move-object/from16 v14, p15

    .line 2019
    :cond_d
    :goto_4
    move-wide v2, v3

    .end local p4    # "windowLength":J
    .restart local v2    # "windowLength":J
    :goto_5
    add-long v17, v9, v2

    move-wide/from16 v21, v2

    move-wide/from16 v23, v17

    .line 2021
    .end local v0    # "minAllowedWindow":J
    .end local v2    # "windowLength":J
    .local v21, "windowLength":J
    .local v23, "maxElapsed":J
    :goto_6
    iget-object v5, v15, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2028
    :try_start_1
    iget-object v0, v15, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v1, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ge v0, v1, :cond_e

    .line 2036
    move-wide/from16 v29, p2

    .end local p2    # "minTrigger":J
    .local v29, "minTrigger":J
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v3, v11

    move-wide/from16 v31, p6

    move-object/from16 v33, v5

    .end local p6    # "nominalTrigger":J
    .local v31, "nominalTrigger":J
    move-wide v5, v9

    move-wide/from16 v34, v7

    .end local v7    # "nowElapsed":J
    .local v34, "nowElapsed":J
    move-wide/from16 v7, v21

    move-wide/from16 v36, v9

    .end local v9    # "triggerElapsed":J
    .local v36, "triggerElapsed":J
    move-wide/from16 v9, v25

    move-wide/from16 v38, v11

    .end local v11    # "triggerAtTime":J
    .local v38, "triggerAtTime":J
    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    :try_start_2
    invoke-direct/range {v1 .. v20}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 2039
    monitor-exit v33

    .line 2040
    return-void

    .line 2039
    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    :goto_7
    move-object/from16 v6, p15

    goto :goto_8

    .line 2029
    .end local v29    # "minTrigger":J
    .end local v31    # "nominalTrigger":J
    .end local v34    # "nowElapsed":J
    .end local v36    # "triggerElapsed":J
    .end local v38    # "triggerAtTime":J
    .restart local v7    # "nowElapsed":J
    .restart local v9    # "triggerElapsed":J
    .restart local v11    # "triggerAtTime":J
    .restart local p2    # "minTrigger":J
    .restart local p6    # "nominalTrigger":J
    :cond_e
    move-wide/from16 v29, p2

    move-wide/from16 v31, p6

    move-object/from16 v33, v5

    move-wide/from16 v34, v7

    move-wide/from16 v36, v9

    move-wide/from16 v38, v11

    .end local v7    # "nowElapsed":J
    .end local v9    # "triggerElapsed":J
    .end local v11    # "triggerAtTime":J
    .end local p2    # "minTrigger":J
    .end local p6    # "nominalTrigger":J
    .restart local v29    # "minTrigger":J
    .restart local v31    # "nominalTrigger":J
    .restart local v34    # "nowElapsed":J
    .restart local v36    # "triggerElapsed":J
    .restart local v38    # "triggerAtTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum limit of concurrent alarms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v5, p0

    :try_start_3
    iget-object v1, v5, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reached for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v6, p15

    :try_start_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2033
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v21    # "windowLength":J
    .end local v23    # "maxElapsed":J
    .end local v25    # "interval":J
    .end local v27    # "minInterval":J
    .end local v29    # "minTrigger":J
    .end local v31    # "nominalTrigger":J
    .end local v34    # "nowElapsed":J
    .end local v36    # "triggerElapsed":J
    .end local v38    # "triggerAtTime":J
    .end local p0    # "this":Lcom/android/server/alarm/AlarmManagerService;
    .end local p1    # "type":I
    .end local p8    # "operation":Landroid/app/PendingIntent;
    .end local p9    # "directReceiver":Landroid/app/IAlarmListener;
    .end local p10    # "listenerTag":Ljava/lang/String;
    .end local p11    # "flags":I
    .end local p12    # "workSource":Landroid/os/WorkSource;
    .end local p13    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local p14    # "callingUid":I
    .end local p15    # "callingPackage":Ljava/lang/String;
    .end local p16    # "idleOptions":Landroid/os/Bundle;
    .end local p17    # "exactAllowReason":I
    throw v1

    .line 2039
    .end local v0    # "errorMsg":Ljava/lang/String;
    .restart local v21    # "windowLength":J
    .restart local v23    # "maxElapsed":J
    .restart local v25    # "interval":J
    .restart local v27    # "minInterval":J
    .restart local v29    # "minTrigger":J
    .restart local v31    # "nominalTrigger":J
    .restart local v34    # "nowElapsed":J
    .restart local v36    # "triggerElapsed":J
    .restart local v38    # "triggerAtTime":J
    .restart local p0    # "this":Lcom/android/server/alarm/AlarmManagerService;
    .restart local p1    # "type":I
    .restart local p8    # "operation":Landroid/app/PendingIntent;
    .restart local p9    # "directReceiver":Landroid/app/IAlarmListener;
    .restart local p10    # "listenerTag":Ljava/lang/String;
    .restart local p11    # "flags":I
    .restart local p12    # "workSource":Landroid/os/WorkSource;
    .restart local p13    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local p14    # "callingUid":I
    .restart local p15    # "callingPackage":Ljava/lang/String;
    .restart local p16    # "idleOptions":Landroid/os/Bundle;
    .restart local p17    # "exactAllowReason":I
    :catchall_1
    move-exception v0

    goto :goto_7

    .end local v29    # "minTrigger":J
    .end local v31    # "nominalTrigger":J
    .end local v34    # "nowElapsed":J
    .end local v36    # "triggerElapsed":J
    .end local v38    # "triggerAtTime":J
    .restart local v7    # "nowElapsed":J
    .restart local v9    # "triggerElapsed":J
    .restart local v11    # "triggerAtTime":J
    .restart local p2    # "minTrigger":J
    .restart local p6    # "nominalTrigger":J
    :catchall_2
    move-exception v0

    move-wide/from16 v29, p2

    move-wide/from16 v31, p6

    move-object/from16 v33, v5

    move-wide/from16 v34, v7

    move-wide/from16 v36, v9

    move-wide/from16 v38, v11

    move-object v6, v14

    move-object v5, v15

    .end local v7    # "nowElapsed":J
    .end local v9    # "triggerElapsed":J
    .end local v11    # "triggerAtTime":J
    .end local p2    # "minTrigger":J
    .end local p6    # "nominalTrigger":J
    .restart local v29    # "minTrigger":J
    .restart local v31    # "nominalTrigger":J
    .restart local v34    # "nowElapsed":J
    .restart local v36    # "triggerElapsed":J
    .restart local v38    # "triggerAtTime":J
    :goto_8
    monitor-exit v33
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_8

    .line 1978
    .end local v21    # "windowLength":J
    .end local v23    # "maxElapsed":J
    .end local v27    # "minInterval":J
    .end local v29    # "minTrigger":J
    .end local v31    # "nominalTrigger":J
    .end local v34    # "nowElapsed":J
    .end local v36    # "triggerElapsed":J
    .end local v38    # "triggerAtTime":J
    .local v9, "minInterval":J
    .local p2, "triggerAtTime":J
    .restart local p4    # "windowLength":J
    :cond_f
    move-object/from16 v6, p15

    move-wide/from16 v27, v9

    move-object v5, v15

    .line 1979
    .end local v9    # "minInterval":J
    .restart local v27    # "minInterval":J
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid alarm type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTimeImpl(J)Z
    .locals 8
    .param p1, "millis"    # J

    .line 1867
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1868
    const-string v0, "AlarmManager"

    const-string v1, "Not setting time since no alarm driver is available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const/4 v0, 0x0

    return v0

    .line 1872
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1873
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 1874
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1875
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 1876
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 1877
    .local v4, "currentTzOffset":I
    invoke-virtual {v3, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 1878
    .local v5, "newTzOffset":I
    if-eq v4, v5, :cond_1

    .line 1879
    const-string v6, "AlarmManager"

    const-string v7, "Timezone offset has changed, updating kernel timezone"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const v7, 0xea60

    div-int v7, v5, v7

    neg-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1885
    :cond_1
    const/4 v6, 0x1

    monitor-exit v0

    return v6

    .line 1886
    .end local v1    # "currentTimeMillis":J
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    .end local v4    # "currentTzOffset":I
    .end local v5    # "newTzOffset":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .locals 12
    .param p1, "tz"    # Ljava/lang/String;

    .line 1890
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    return-void

    .line 1894
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1897
    .local v0, "zone":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .line 1898
    .local v1, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 1899
    :try_start_0
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1900
    .local v2, "current":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1904
    :cond_1
    const/4 v1, 0x1

    .line 1905
    const-string/jumbo v3, "persist.sys.timezone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    :cond_2
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 1911
    .local v3, "gmtOffset":I
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const v5, 0xea60

    div-int v5, v3, v5

    neg-int v5, v5

    invoke-virtual {v4, v5}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1912
    .end local v2    # "current":Ljava/lang/String;
    .end local v3    # "gmtOffset":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1914
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1916
    if-eqz v1, :cond_3

    .line 1918
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1921
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1922
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x25200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1926
    const-string/jumbo v4, "time-zone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1927
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1928
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v7

    const/4 v9, 0x0

    const/16 v10, 0xcc

    const-string v11, ""

    .line 1927
    invoke-virtual/range {v6 .. v11}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1931
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 1932
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 1931
    invoke-virtual {v4, v3, v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1934
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 1912
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "knownUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "first"    # Z

    .line 4277
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 4279
    if-eqz p1, :cond_1

    .line 4280
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4281
    return-void

    .line 4284
    :cond_1
    if-ltz p2, :cond_2

    .line 4285
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4286
    return-void

    .line 4289
    :cond_2
    goto :goto_1

    .line 4288
    :catch_0
    move-exception v1

    .line 4292
    :goto_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4293
    return-void
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;J)I
    .locals 31
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)I"
        }
    .end annotation

    .line 3870
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    const/4 v1, 0x0

    .line 3871
    .local v1, "wakeUps":I
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v13, v14}, Lcom/android/server/alarm/AlarmStore;->removePendingAlarms(J)Ljava/util/ArrayList;

    move-result-object v20

    .line 3872
    .local v20, "pendingAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move/from16 v22, v1

    .end local v1    # "wakeUps":I
    .local v22, "wakeUps":I
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 3873
    .local v2, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-direct {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3878
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v3, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3879
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-nez v1, :cond_0

    .line 3880
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 3881
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3883
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3884
    goto :goto_0

    .line 3887
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_1
    iput v12, v2, Lcom/android/server/alarm/Alarm;->count:I

    .line 3888
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3889
    iget v1, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 3890
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_2

    move v1, v12

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 3893
    :cond_3
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v1, v2, :cond_4

    .line 3894
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 3895
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 3907
    :cond_4
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-ne v1, v2, :cond_5

    .line 3908
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 3915
    :cond_5
    iget-wide v3, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_6

    .line 3918
    iget v1, v2, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v3, v1

    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v5

    sub-long v5, v13, v5

    iget-wide v7, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v1, v3

    iput v1, v2, Lcom/android/server/alarm/Alarm;->count:I

    .line 3920
    iget v1, v2, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v3, v1

    iget-wide v5, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    mul-long v23, v3, v5

    .line 3921
    .local v23, "delta":J
    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v3

    add-long v25, v3, v23

    .local v25, "nextElapsed":J
    move-wide/from16 v4, v25

    .line 3922
    iget-wide v10, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide/from16 v6, p2

    move-wide/from16 v8, v25

    invoke-static/range {v6 .. v11}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v27

    .line 3924
    .local v27, "nextMaxElapsed":J
    iget v1, v2, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v6, v2, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long v6, v6, v23

    move-object v11, v2

    .end local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v11, "alarm":Lcom/android/server/alarm/Alarm;
    move-wide v2, v6

    sub-long v6, v27, v25

    iget-wide v8, v11, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iget-object v10, v11, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    move-object/from16 v29, v11

    .end local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v29, "alarm":Lcom/android/server/alarm/Alarm;
    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object/from16 v11, v29

    .end local v29    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    iget v12, v11, Lcom/android/server/alarm/Alarm;->flags:I

    move v13, v12

    iget-object v14, v11, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object v15, v12

    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    move/from16 v16, v12

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v17, v12

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object v12, v0

    move-object/from16 v0, p0

    move-object/from16 v30, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    .end local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v30, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-direct/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_2

    .line 3915
    .end local v23    # "delta":J
    .end local v25    # "nextElapsed":J
    .end local v27    # "nextMaxElapsed":J
    .end local v30    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_6
    move-object/from16 v30, v2

    .line 3930
    .end local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v30    # "alarm":Lcom/android/server/alarm/Alarm;
    :goto_2
    move-object/from16 v0, v30

    .end local v30    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v0, "alarm":Lcom/android/server/alarm/Alarm;
    iget-boolean v1, v0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v1, :cond_7

    .line 3931
    add-int/lit8 v22, v22, 0x1

    .line 3935
    :cond_7
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_8

    .line 3936
    const/4 v2, 0x1

    move-object/from16 v1, p0

    iput-boolean v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto :goto_3

    .line 3935
    :cond_8
    move-object/from16 v1, p0

    .line 3938
    .end local v0    # "alarm":Lcom/android/server/alarm/Alarm;
    :goto_3
    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    move-object v0, v1

    goto/16 :goto_0

    .line 3942
    :cond_9
    move-object v1, v0

    move v2, v12

    iget v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    .line 3943
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 3944
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3952
    return v22
.end method
