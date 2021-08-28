.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;,
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;,
        Lcom/android/server/am/ProcessList$KillHandler;,
        Lcom/android/server/am/ProcessList$MyProcessMap;,
        Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;,
        Lcom/android/server/am/ProcessList$IsolatedUidRange;
    }
.end annotation


# static fields
.field static final ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.zygote.app_data_isolation"

.field static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field private static final APP_DATA_DIRECTORY_ISOLATION:J = 0x89450c5L

.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_IMPORTANCE_LEVELS:I = 0x5

.field static final CACHED_APP_LMK_FIRST_ADJ:I = 0x3b6

.field static final CACHED_APP_MAX_ADJ:I = 0x3e7

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field private static final GWP_ASAN:J = 0x8159f9eL

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field private static final LMKD_RECONNECT_DELAY_MS:J = 0x3e8L

.field static final LMK_ASYNC_EVENT_KILL:I = 0x0

.field static final LMK_ASYNC_EVENT_STAT:I = 0x1

.field static final LMK_GETKILLCNT:B = 0x4t

.field static final LMK_KILL_OCCURRED:B = 0x8t

.field static final LMK_PROCKILL:B = 0x6t

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPURGE:B = 0x3t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_STATE_CHANGED:B = 0x9t

.field static final LMK_SUBSCRIBE:B = 0x5t

.field static final LMK_TARGET:B = 0x0t

.field static final LMK_UPDATE_PROPS:B = 0x7t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field private static final MAX_ZYGOTE_UNSOLICITED_MESSAGE_SIZE:I = 0x10

.field static final MIN_CACHED_APPS:I = 0x2

.field static final NATIVE_ADJ:I = -0x3e8

.field private static final NATIVE_HEAP_POINTER_TAGGING:J = 0x81774caL

.field private static final NATIVE_HEAP_ZERO_INIT:J = 0xa9ca600L

.field private static final NATIVE_MEMTAG_ASYNC:J = 0x817bb2cL

.field private static final NATIVE_MEMTAG_SYNC:J = 0xa937ebaL

.field static final NETWORK_STATE_BLOCK:I = 0x1

.field static final NETWORK_STATE_NO_CHANGE:I = 0x0

.field static final NETWORK_STATE_UNBLOCK:I = 0x2

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERCEPTIBLE_LOW_APP_ADJ:I = 0xfa

.field static final PERCEPTIBLE_MEDIUM_APP_ADJ:I = 0xe1

.field static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field static final PROC_KILL_TIMEOUT:I = 0x7d0

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field private static final PROPERTY_USE_APP_IMAGE_STARTUP_CACHE:Ljava/lang/String; = "persist.device_config.runtime_native.use_app_image_startup_cache"

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field public static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_PROCESS_OBSERVERS:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x3e9

.field private static final UNSOL_ZYGOTE_MSG_SOCKET_PATH:Ljava/lang/String; = "/data/system/unsolzygotesocket"

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field static sKillThread:Lcom/android/server/ServiceThread;

.field private static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J


# instance fields
.field private mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field private mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppDataIsolationEnabled:Z

.field final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

.field final mAppZygoteProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/AppZygote;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAppZygotes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/os/AppZygote;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailProcessChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedRestoreLevel:J

.field final mDyingProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

.field private mHaveDisplaySize:Z

.field mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field final mIsolatedProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLruProcessActivityStart:I

.field private mLruProcessServiceStart:I

.field private final mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLruSeq:I

.field private final mOomAdj:[I

.field private mOomLevelsSet:Z

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mPendingProcessChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingStarts:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mProcStartSeqCounter:J

.field mProcStateSeqCounter:J

.field private final mProcessChangeLock:Ljava/lang/Object;

.field private final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field private final mProcessObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IProcessObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mRemovedProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mStringBuilder:Ljava/lang/StringBuilder;

.field private mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field private final mTotalMemMb:J

.field private mVoldAppDataIsolationEnabled:Z

.field private final mZygoteSigChldMessage:[I

.field private final mZygoteUnsolicitedMessage:[B


# direct methods
.method public static synthetic $r8$lambda$eEVoHjWPClUsVDRm3xBMVJVcgcw(Lcom/android/server/am/ProcessList;Ljava/io/FileDescriptor;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessList;->handleZygoteMessages(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 421
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 422
    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 452
    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 1242
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 1265
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 1273
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1281
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 1289
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 1297
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 1305
    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 6

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 427
    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 433
    new-array v3, v1, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 439
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 444
    array-length v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 454
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 456
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 458
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 475
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 482
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 490
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 497
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 503
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 510
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 516
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 525
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 531
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 537
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {v2}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 543
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 547
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 564
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    .line 569
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    .line 680
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v2, 0x182b8

    const v3, 0x1869f

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 688
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v2, 0x15f90

    const v3, 0x182b7

    const/16 v4, 0x64

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 703
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    .line 707
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 711
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 722
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 730
    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 788
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 789
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 790
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 791
    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 792
    return-void

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method static synthetic access$000()Lcom/android/server/am/LmkdConnection;
    .locals 1

    .line 165
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    return-object v0
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .line 1160
    const/4 v0, 0x0

    .local v0, "j":I
    const/16 v1, 0xa

    .local v1, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 1161
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 1162
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 1165
    .end local v0    # "j":I
    .end local v1    # "fact":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1166
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "compactPrefix"    # Ljava/lang/String;
    .param p2, "space"    # Ljava/lang/String;
    .param p3, "val"    # I
    .param p4, "base"    # I
    .param p5, "compact"    # Z

    .line 1036
    sub-int v0, p3, p4

    .line 1037
    .local v0, "diff":I
    if-nez v0, :cond_2

    .line 1038
    if-eqz p5, :cond_0

    .line 1039
    return-object p1

    .line 1041
    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 1042
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1044
    :cond_2
    const/16 v1, 0xa

    const-string v2, "+"

    if-ge v0, v1, :cond_4

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "+ "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1047
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkSlow(JLjava/lang/String;)V
    .locals 6
    .param p1, "startTime"    # J
    .param p3, "where"    # Ljava/lang/String;

    .line 1603
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1604
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_0
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .line 1031
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private computeGidsForProcess(II[IZ)[I
    .locals 8
    .param p1, "mountExternal"    # I
    .param p2, "uid"    # I
    .param p3, "permGids"    # [I
    .param p4, "externalStorageAccess"    # Z

    .line 1612
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1614
    .local v0, "gidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    .line 1615
    .local v1, "sharedAppGid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v2

    .line 1616
    .local v2, "cacheAppGid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v3

    .line 1620
    .local v3, "userGid":I
    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, p3, v5

    .line 1621
    .local v6, "permGid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    .end local v6    # "permGid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1623
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 1624
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    :cond_1
    if-eq v2, v4, :cond_2

    .line 1627
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1629
    :cond_2
    if-eq v3, v4, :cond_3

    .line 1630
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    :cond_3
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0x437

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_5

    .line 1639
    :cond_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v7, 0x3f7

    invoke-static {v4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    const/16 v4, 0x436

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    :cond_5
    const/4 v4, 0x2

    if-ne p1, v4, :cond_6

    .line 1649
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    :cond_6
    if-ne p1, v5, :cond_7

    .line 1655
    const/16 v4, 0x3ff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    :cond_7
    if-eqz p4, :cond_8

    .line 1660
    const/16 v4, 0x435

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 1664
    .local v4, "gidArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_9

    .line 1665
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 1664
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1667
    .end local v5    # "i":I
    :cond_9
    return-object v4
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .locals 9
    .param p0, "procState"    # I
    .param p1, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .line 1376
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    .line 1377
    .local v0, "memState":I
    if-eqz p1, :cond_3

    .line 1378
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v1, :cond_0

    .line 1379
    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1380
    .local v1, "highestMemState":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1381
    .local v2, "first":Z
    :goto_1
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1382
    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 1383
    if-eqz v2, :cond_2

    .line 1384
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    .local v4, "scalingFactor":F
    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2

    .line 1386
    .end local v4    # "scalingFactor":F
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v4, v3, v0

    .line 1387
    .restart local v4    # "scalingFactor":F
    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 1389
    .end local v1    # "highestMemState":I
    :goto_2
    goto :goto_3

    .line 1390
    .end local v2    # "first":Z
    .end local v4    # "scalingFactor":F
    :cond_3
    const/4 v2, 0x1

    .line 1391
    .restart local v2    # "first":Z
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1393
    .restart local v4    # "scalingFactor":F
    :goto_3
    if-eqz p2, :cond_5

    .line 1394
    if-eqz v2, :cond_4

    .line 1395
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    .line 1396
    :cond_4
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    .line 1397
    :cond_5
    if-eqz v2, :cond_7

    .line 1398
    if-eqz p3, :cond_6

    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    .line 1399
    :cond_7
    if-eqz p3, :cond_8

    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4
    nop

    .line 1400
    .local v1, "table":[J
    aget-wide v5, v1, v0

    long-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-long v5, v3

    .line 1401
    .local v5, "delay":J
    const-wide/32 v7, 0x36ee80

    cmp-long v3, v5, v7

    if-lez v3, :cond_9

    .line 1402
    const-wide/32 v5, 0x36ee80

    .line 1404
    :cond_9
    add-long v7, p4, v5

    return-wide v7
.end method

.method private createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2214
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2217
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    .line 2218
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 2220
    .local v2, "appZygote":Landroid/os/AppZygote;
    if-nez v2, :cond_0

    .line 2224
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2226
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v5

    .line 2225
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v3

    .line 2227
    .local v3, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2230
    .local v4, "userId":I
    iget v5, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2231
    .local v5, "firstUid":I
    iget v6, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v4, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 2232
    .local v6, "lastUid":I
    new-instance v7, Landroid/content/pm/ApplicationInfo;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2239
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2240
    iput v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2241
    new-instance v8, Landroid/os/AppZygote;

    invoke-direct {v8, v7, v1, v5, v6}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;III)V

    move-object v2, v8

    .line 2242
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2243
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2244
    .local v8, "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    nop

    .end local v3    # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .end local v4    # "userId":I
    .end local v5    # "firstUid":I
    .end local v6    # "lastUid":I
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 2249
    .end local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2250
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v8, v3

    .line 2256
    .restart local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_0
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2259
    .end local v1    # "uid":I
    .end local v2    # "appZygote":Landroid/os/AppZygote;
    .end local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private createSystemServerSocketForZygote()Landroid/net/LocalSocket;
    .locals 5

    .line 4924
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/unsolzygotesocket"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4925
    .local v0, "socketFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4926
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4929
    :cond_0
    const/4 v2, 0x0

    .line 4931
    .local v2, "serverSocket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/net/LocalSocket;-><init>(I)V

    move-object v2, v3

    .line 4932
    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v1, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 4934
    const/16 v3, 0x1b6

    invoke-static {v1, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4943
    goto :goto_1

    .line 4935
    :catch_0
    move-exception v1

    .line 4936
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 4938
    :try_start_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4940
    goto :goto_0

    .line 4939
    :catch_1
    move-exception v3

    .line 4941
    :goto_0
    const/4 v2, 0x0

    .line 4944
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v2
.end method

.method private decideGwpAsanLevel(Lcom/android/server/am/ProcessRecord;)I
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1743
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x400000

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-eq v0, v1, :cond_1

    .line 1745
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne v0, v4, :cond_0

    .line 1746
    move v2, v3

    goto :goto_0

    .line 1747
    :cond_0
    nop

    .line 1745
    :goto_0
    return v2

    .line 1750
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1751
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1752
    move v2, v3

    goto :goto_1

    .line 1753
    :cond_2
    nop

    .line 1751
    :goto_1
    return v2

    .line 1757
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v5, 0x8159f9e

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1758
    return v3

    .line 1760
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    .line 1761
    const/high16 v0, 0x200000

    return v0

    .line 1763
    :cond_5
    return v2
.end method

.method private decideTaggingLevel(Lcom/android/server/am/ProcessRecord;)I
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1717
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList;->getRequestedMemtagLevel(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    .line 1720
    .local v0, "level":I
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1723
    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_3

    .line 1724
    const/4 v0, 0x0

    goto :goto_0

    .line 1726
    :cond_0
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1730
    const/high16 v1, 0x100000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x180000

    if-ne v0, v1, :cond_3

    .line 1731
    :cond_1
    const/high16 v0, 0x80000

    goto :goto_0

    .line 1735
    :cond_2
    const/4 v0, 0x0

    .line 1738
    :cond_3
    :goto_0
    return v0
.end method

.method private dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "index"    # I
    .param p3, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "prefix"    # Ljava/lang/String;

    .line 3927
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3928
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3929
    const/16 v0, 0x20

    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    .line 3930
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3932
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 3933
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3934
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3935
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3936
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3937
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3938
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    invoke-static {p1, v1}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 3939
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3940
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3941
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3942
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3943
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3944
    :cond_1
    const-string v1, " act:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3945
    const/4 v1, 0x0

    .line 3946
    .local v1, "printed":Z
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3947
    const-string v2, "activities"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3948
    const/4 v1, 0x1

    .line 3950
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result v2

    const-string/jumbo v3, "|"

    if-eqz v2, :cond_4

    .line 3951
    if-eqz v1, :cond_3

    .line 3952
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3954
    :cond_3
    const-string/jumbo v2, "recents"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3955
    const/4 v1, 0x1

    .line 3957
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3958
    if-eqz v1, :cond_5

    .line 3959
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3961
    :cond_5
    const-string v2, "client"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3962
    const/4 v1, 0x1

    .line 3964
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3965
    if-eqz v1, :cond_7

    .line 3966
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3968
    :cond_7
    const-string/jumbo v2, "treated"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3971
    .end local v1    # "printed":Z
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3972
    return-void
.end method

.method private static dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 27
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "normalLabel"    # Ljava/lang/String;
    .param p5, "persistentLabel"    # Ljava/lang/String;
    .param p6, "inclDetails"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 4326
    .local p2, "origList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 4327
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return v6

    .line 4329
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 4330
    .local v7, "curUptime":J
    move-object/from16 v5, p1

    iget-wide v9, v5, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v9, v7, v9

    .line 4332
    .local v9, "uptimeSince":J
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_f

    .line 4333
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 4334
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4335
    .local v14, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v15, v13, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4336
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v12

    invoke-static {v12, v6}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v12

    .line 4338
    .local v12, "oomAdj":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 4355
    const/16 v17, 0x3f

    move/from16 v6, v17

    .local v17, "schedGroup":C
    goto :goto_1

    .line 4352
    .end local v17    # "schedGroup":C
    :pswitch_0
    const/16 v17, 0x42

    .line 4353
    .restart local v17    # "schedGroup":C
    move/from16 v6, v17

    goto :goto_1

    .line 4346
    .end local v17    # "schedGroup":C
    :pswitch_1
    const/16 v17, 0x54

    .line 4347
    .restart local v17    # "schedGroup":C
    move/from16 v6, v17

    goto :goto_1

    .line 4343
    .end local v17    # "schedGroup":C
    :pswitch_2
    const/16 v17, 0x46

    .line 4344
    .restart local v17    # "schedGroup":C
    move/from16 v6, v17

    goto :goto_1

    .line 4349
    .end local v17    # "schedGroup":C
    :pswitch_3
    const/16 v17, 0x52

    .line 4350
    .restart local v17    # "schedGroup":C
    move/from16 v6, v17

    goto :goto_1

    .line 4340
    .end local v17    # "schedGroup":C
    :pswitch_4
    const/16 v17, 0x62

    .line 4341
    .restart local v17    # "schedGroup":C
    move/from16 v6, v17

    .line 4359
    .end local v17    # "schedGroup":C
    .local v6, "schedGroup":C
    :goto_1
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 4360
    const/16 v17, 0x41

    move/from16 v2, v17

    .local v17, "foreground":C
    goto :goto_2

    .line 4361
    .end local v17    # "foreground":C
    :cond_1
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 4362
    const/16 v17, 0x53

    move/from16 v2, v17

    .restart local v17    # "foreground":C
    goto :goto_2

    .line 4364
    .end local v17    # "foreground":C
    :cond_2
    const/16 v17, 0x20

    move/from16 v2, v17

    .line 4366
    .local v2, "foreground":C
    :goto_2
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    .line 4367
    .local v3, "procState":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4368
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v5, p5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4369
    const-string v5, " #"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4370
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v4

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    move-object/from16 v4, v17

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v5, v4

    .line 4371
    .local v5, "num":I
    const/16 v4, 0xa

    move-wide/from16 v19, v7

    .end local v7    # "curUptime":J
    .local v19, "curUptime":J
    const/16 v7, 0x20

    if-ge v5, v4, :cond_4

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4372
    :cond_4
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4373
    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4374
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4375
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4376
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 4377
    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 4378
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 4379
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 4380
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4381
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4382
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v8

    invoke-static {v0, v8}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 4383
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4384
    const-string v8, " t:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4385
    iget-object v8, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v8

    if-ge v8, v4, :cond_5

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4386
    :cond_5
    iget-object v8, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 4387
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4388
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4389
    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4390
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4391
    const/16 v8, 0x29

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(C)V

    .line 4392
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    const-string v4, "    "

    if-nez v8, :cond_7

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v21, v2

    goto :goto_6

    .line 4393
    :cond_7
    :goto_4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4394
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4395
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroid/content/ComponentName;

    move/from16 v21, v2

    .end local v2    # "foreground":C
    .local v21, "foreground":C
    const-string/jumbo v2, "{null}"

    if-eqz v8, :cond_8

    .line 4396
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 4397
    :cond_8
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 4398
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 4400
    :cond_9
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4402
    :goto_5
    const-string v8, "<="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4403
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_a

    .line 4404
    const-string v2, "Proc{"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4405
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4406
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 4407
    :cond_a
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 4408
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 4410
    :cond_b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4413
    :goto_6
    if-eqz p6, :cond_e

    .line 4414
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4415
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4416
    const-string/jumbo v2, "oom: max="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4417
    const-string v2, " curRaw="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4418
    const-string v2, " setRaw="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4419
    const-string v2, " cur="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4420
    const-string v2, " set="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 4421
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4422
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4423
    const-string/jumbo v8, "state: cur="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4424
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4425
    const-string v2, " lastPss="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4426
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    move-object v8, v3

    .end local v3    # "procState":Ljava/lang/String;
    .local v8, "procState":Ljava/lang/String;
    mul-long v2, v22, v24

    invoke-static {v0, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4427
    const-string v2, " lastSwapPss="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4428
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v2

    mul-long v2, v2, v24

    invoke-static {v0, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4429
    const-string v2, " lastCachedPss="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4430
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v2

    mul-long v2, v2, v24

    invoke-static {v0, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4431
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 4432
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4433
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4434
    const-string v2, "cached="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 4435
    const-string v2, " empty="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 4436
    const-string v2, " hasAboveClient="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4438
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_d

    .line 4439
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 4440
    .local v2, "lastCpuTime":J
    const-wide/16 v22, 0x0

    cmp-long v17, v2, v22

    if-eqz v17, :cond_c

    cmp-long v17, v9, v22

    if-lez v17, :cond_c

    .line 4441
    move/from16 v17, v5

    .end local v5    # "num":I
    .local v17, "num":I
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v22

    move/from16 v24, v6

    .end local v6    # "schedGroup":C
    .local v24, "schedGroup":C
    sub-long v5, v22, v2

    .line 4442
    .local v5, "timeUsed":J
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4443
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4444
    const-string/jumbo v4, "run cpu over "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4445
    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4446
    const-string v4, " used "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4447
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4448
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4449
    const-wide/16 v22, 0x64

    mul-long v22, v22, v5

    move-wide/from16 v25, v2

    .end local v2    # "lastCpuTime":J
    .local v25, "lastCpuTime":J
    div-long v1, v22, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4450
    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 4440
    .end local v17    # "num":I
    .end local v24    # "schedGroup":C
    .end local v25    # "lastCpuTime":J
    .restart local v2    # "lastCpuTime":J
    .local v5, "num":I
    .restart local v6    # "schedGroup":C
    :cond_c
    move-wide/from16 v25, v2

    move/from16 v17, v5

    move/from16 v24, v6

    .end local v2    # "lastCpuTime":J
    .end local v5    # "num":I
    .end local v6    # "schedGroup":C
    .restart local v17    # "num":I
    .restart local v24    # "schedGroup":C
    .restart local v25    # "lastCpuTime":J
    goto :goto_7

    .line 4438
    .end local v17    # "num":I
    .end local v24    # "schedGroup":C
    .end local v25    # "lastCpuTime":J
    .restart local v5    # "num":I
    .restart local v6    # "schedGroup":C
    :cond_d
    move/from16 v17, v5

    move/from16 v24, v6

    .end local v5    # "num":I
    .end local v6    # "schedGroup":C
    .restart local v17    # "num":I
    .restart local v24    # "schedGroup":C
    goto :goto_7

    .line 4413
    .end local v8    # "procState":Ljava/lang/String;
    .end local v17    # "num":I
    .end local v24    # "schedGroup":C
    .restart local v3    # "procState":Ljava/lang/String;
    .restart local v5    # "num":I
    .restart local v6    # "schedGroup":C
    :cond_e
    move-object v8, v3

    move/from16 v17, v5

    move/from16 v24, v6

    .line 4332
    .end local v3    # "procState":Ljava/lang/String;
    .end local v5    # "num":I
    .end local v6    # "schedGroup":C
    .end local v12    # "oomAdj":Ljava/lang/String;
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v15    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v21    # "foreground":C
    :goto_7
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v1, p3

    move-object/from16 v3, p7

    move-object/from16 v4, v18

    move-wide/from16 v7, v19

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4455
    .end local v11    # "i":I
    .end local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .end local v19    # "curUptime":J
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .restart local v7    # "curUptime":J
    :cond_f
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enableNativeHeapZeroInit(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1768
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-eq v0, v1, :cond_1

    .line 1770
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 1773
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1774
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2

    .line 1777
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v4, 0xa9ca600

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1778
    return v3

    .line 1780
    :cond_4
    return v2
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .locals 4
    .param p0, "min_oom_adj"    # I
    .param p1, "max_oom_adj"    # I

    .line 1474
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1475
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1476
    .local v1, "repl":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1477
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1478
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1480
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1481
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1482
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1483
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 1485
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;

    .line 2983
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2987
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2988
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2987
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    return-object v0

    .line 2985
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object v0
.end method

.method private getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .locals 12
    .param p1, "pmInt"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 2264
    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2265
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2266
    .local v1, "userId":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 2267
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 2268
    .local v5, "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v6, "ActivityManager"

    if-nez v5, :cond_0

    .line 2269
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    goto :goto_1

    .line 2272
    :cond_0
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    .line 2273
    .local v7, "volumeUuid":Ljava/lang/String;
    invoke-virtual {p1, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getCeDataInode(Ljava/lang/String;I)J

    move-result-wide v8

    .line 2274
    .local v8, "inode":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_1

    .line 2275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inode == 0 (b/152760674)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    const/4 v2, 0x0

    return-object v2

    .line 2278
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local v8    # "inode":J
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2281
    :cond_2
    return-object v0
.end method

.method private getRequestedMemtagLevel(Lcom/android/server/am/ProcessRecord;)I
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1684
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v0, v1, :cond_0

    .line 1686
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessList;->memtagModeToZygoteMemtagLevel(I)I

    move-result v0

    return v0

    .line 1690
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1691
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessList;->memtagModeToZygoteMemtagLevel(I)I

    move-result v0

    return v0

    .line 1694
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v1, 0xa937eba

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1695
    const/high16 v0, 0x180000

    return v0

    .line 1698
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v1, 0x817bb2c

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1699
    const/high16 v0, 0x100000

    return v0

    .line 1703
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->allowsNativeHeapPointerTagging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1704
    return v1

    .line 1708
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v2, 0x81774ca

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1709
    const/high16 v0, 0x80000

    return v0

    .line 1712
    :cond_5
    return v1
.end method

.method private handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 19
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "gids"    # [I
    .param p4, "runtimeFlags"    # I
    .param p5, "zygotePolicyFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "requiredAbi"    # Ljava/lang/String;
    .param p8, "instructionSet"    # Ljava/lang/String;
    .param p9, "invokeWith"    # Ljava/lang/String;
    .param p10, "startSeq"    # J

    .line 2110
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p10

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2112
    .local v11, "predecessor":Lcom/android/server/am/ProcessRecord;
    const/4 v10, 0x0

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v0

    move v1, v0

    .local v1, "prevPid":I
    if-lez v0, :cond_2

    .line 2113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2114
    .local v2, "now":J
    const-wide/16 v4, 0x7d0

    add-long/2addr v4, v2

    .line 2115
    .local v4, "end":J
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v6

    .line 2117
    .local v6, "oldPolicy":I
    :try_start_0
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2118
    const/16 v0, 0x7d0

    invoke-static {v1, v0}, Landroid/os/Process;->waitForProcessDeath(II)V

    .line 2120
    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2121
    :try_start_1
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 2122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v7

    .line 2123
    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 2125
    sub-long v7, v4, v2

    :try_start_2
    invoke-virtual {v11, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2127
    goto :goto_0

    .line 2126
    :catch_0
    move-exception v0

    .line 2128
    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-ltz v0, :cond_0

    .line 2129
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has died but its obituary delivery is slow."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_0
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_1

    .line 2136
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has died, but its cleanup isn\'t done"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_1
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2145
    nop

    :goto_1
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2146
    goto :goto_3

    .line 2139
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "prevPid":I
    .end local v2    # "now":J
    .end local v4    # "end":J
    .end local v6    # "oldPolicy":I
    .end local v11    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "entryPoint":Ljava/lang/String;
    .end local p3    # "gids":[I
    .end local p4    # "runtimeFlags":I
    .end local p5    # "zygotePolicyFlags":I
    .end local p6    # "mountExternal":I
    .end local p7    # "requiredAbi":Ljava/lang/String;
    .end local p8    # "instructionSet":Ljava/lang/String;
    .end local p9    # "invokeWith":Ljava/lang/String;
    .end local p10    # "startSeq":J
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2145
    .restart local v1    # "prevPid":I
    .restart local v2    # "now":J
    .restart local v4    # "end":J
    .restart local v6    # "oldPolicy":I
    .restart local v11    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "entryPoint":Ljava/lang/String;
    .restart local p3    # "gids":[I
    .restart local p4    # "runtimeFlags":I
    .restart local p5    # "zygotePolicyFlags":I
    .restart local p6    # "mountExternal":I
    .restart local p7    # "requiredAbi":Ljava/lang/String;
    .restart local p8    # "instructionSet":Ljava/lang/String;
    .restart local p9    # "invokeWith":Ljava/lang/String;
    .restart local p10    # "startSeq":J
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 2140
    :catch_1
    move-exception v0

    .line 2142
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " refused to die, but we need to launch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2145
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    :goto_2
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2146
    throw v0

    .line 2149
    .end local v1    # "prevPid":I
    .end local v2    # "now":J
    .end local v4    # "end":J
    .end local v6    # "oldPolicy":I
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    .line 2150
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    .line 2151
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v0

    .line 2152
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v16
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2149
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object v10, v0

    move-object/from16 v18, v11

    .end local v11    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .local v18, "predecessor":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-wide/from16 v14, v16

    :try_start_8
    invoke-direct/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    move-object v1, v0

    .line 2154
    .local v1, "startResult":Landroid/os/Process$ProcessStartResult;
    move-object/from16 v2, p0

    :try_start_9
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2155
    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    :try_start_b
    invoke-direct {v2, v4, v1, v5, v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 2156
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 2167
    .end local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_7

    .line 2156
    .restart local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    :goto_4
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v18    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "entryPoint":Ljava/lang/String;
    .end local p3    # "gids":[I
    .end local p4    # "runtimeFlags":I
    .end local p5    # "zygotePolicyFlags":I
    .end local p6    # "mountExternal":I
    .end local p7    # "requiredAbi":Ljava/lang/String;
    .end local p8    # "instructionSet":Ljava/lang/String;
    .end local p9    # "invokeWith":Ljava/lang/String;
    .end local p10    # "startSeq":J
    throw v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    .line 2157
    .end local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    .restart local v18    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "entryPoint":Ljava/lang/String;
    .restart local p3    # "gids":[I
    .restart local p4    # "runtimeFlags":I
    .restart local p5    # "zygotePolicyFlags":I
    .restart local p6    # "mountExternal":I
    .restart local p7    # "requiredAbi":Ljava/lang/String;
    .restart local p8    # "instructionSet":Ljava/lang/String;
    .restart local p9    # "invokeWith":Ljava/lang/String;
    .restart local p10    # "startSeq":J
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v2, p0

    :goto_5
    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    goto :goto_6

    .end local v18    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "predecessor":Lcom/android/server/am/ProcessRecord;
    :catch_5
    move-exception v0

    move-object/from16 v18, v11

    move-wide v5, v12

    move-object v2, v14

    move-object v4, v15

    .end local v11    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "predecessor":Lcom/android/server/am/ProcessRecord;
    :goto_6
    move-object v1, v0

    .line 2158
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2159
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure starting process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2161
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2162
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2163
    iget-object v8, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2164
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v17, "start failure"

    .line 2163
    move/from16 v16, v0

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2166
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2168
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_7
    return-void

    .line 2166
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_4
    move-exception v0

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .locals 8
    .param p1, "pending"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "startResult"    # Landroid/os/Process$ProcessStartResult;
    .param p3, "expectedStartSeq"    # J

    .line 2617
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2618
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v1, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne v0, v1, :cond_0

    .line 2619
    iget-boolean v0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2622
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2624
    :cond_1
    iget v3, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result v0

    return v0
.end method

.method private handleZygoteMessages(Ljava/io/FileDescriptor;I)I
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 4951
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 4952
    .local v0, "eventFd":I
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4955
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 4957
    .local v1, "len":I
    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    array-length v5, v3

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    invoke-static {v6, v1, v3}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    move-result v3

    if-ne v5, v3, :cond_0

    .line 4959
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget v4, v5, v4

    aget v6, v5, v2

    const/4 v7, 0x2

    aget v5, v5, v7

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/am/AppExitInfoTracker;->handleZygoteSigChld(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4966
    .end local v1    # "len":I
    :cond_0
    goto :goto_0

    .line 4964
    :catch_0
    move-exception v1

    .line 4965
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in reading unsolicited zygote message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4968
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method private isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "expectedStartSeq"    # J

    .line 2580
    const/4 v0, 0x0

    .line 2581
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2582
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2583
    :cond_0
    const-string/jumbo v1, "killedByAm=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_3

    .line 2586
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2587
    :cond_2
    const-string v1, "No entry in mProcessNames;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2589
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2590
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2591
    :cond_4
    const-string/jumbo v1, "pendingStart=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-lez v1, :cond_7

    .line 2594
    if-nez v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2595
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    :cond_7
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2601
    :catch_0
    move-exception v1

    .line 2602
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v2, :cond_9

    .line 2603
    if-nez v0, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 2604
    :cond_8
    const-string v2, "Package is frozen;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2607
    :cond_9
    throw v1

    .line 2599
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2609
    :goto_0
    nop

    .line 2610
    :goto_1
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method static killProcessGroup(II)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 1538
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_0

    .line 1539
    const/16 v1, 0xfa0

    .line 1540
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1539
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1542
    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 1545
    :goto_0
    return-void
.end method

.method static synthetic lambda$updateApplicationInfoLOSP$1(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p0, "updateFrameworkRes"    # Z
    .param p1, "packagesToUpdate"    # Ljava/util/List;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "targetProcesses"    # Ljava/util/ArrayList;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 4706
    if-nez p0, :cond_0

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4708
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x400

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 4709
    invoke-interface {v0, p4, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4710
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 4711
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4712
    iput-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 4714
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 4715
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4720
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_0

    .line 4717
    :catch_0
    move-exception v0

    .line 4718
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Failed to update %s ApplicationInfo for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .locals 7
    .param p0, "setAdj"    # I
    .param p1, "compact"    # Z

    .line 1051
    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    .line 1052
    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1054
    :cond_0
    const/16 v0, 0x320

    if-lt p0, v0, :cond_1

    .line 1055
    const/4 v3, 0x0

    const/16 v5, 0x320

    const-string/jumbo v1, "svcb  "

    const-string/jumbo v2, "svcb"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1057
    :cond_1
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_2

    .line 1058
    const/4 v3, 0x0

    const/16 v5, 0x2bc

    const-string/jumbo v1, "prev  "

    const-string/jumbo v2, "prev"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1060
    :cond_2
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3

    .line 1061
    const/4 v3, 0x0

    const/16 v5, 0x258

    const-string v1, "home  "

    const-string v2, "home"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1063
    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    .line 1064
    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const-string/jumbo v1, "svc   "

    const-string/jumbo v2, "svc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1066
    :cond_4
    const/16 v0, 0x190

    if-lt p0, v0, :cond_5

    .line 1067
    const/4 v3, 0x0

    const/16 v5, 0x190

    const-string v1, "hvy   "

    const-string v2, "hvy"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1069
    :cond_5
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6

    .line 1070
    const/4 v3, 0x0

    const/16 v5, 0x12c

    const-string v1, "bkup  "

    const-string v2, "bkup"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1072
    :cond_6
    const/16 v0, 0xfa

    if-lt p0, v0, :cond_7

    .line 1073
    const/4 v3, 0x0

    const/16 v5, 0xfa

    const-string/jumbo v1, "prcl  "

    const-string/jumbo v2, "prcl"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1075
    :cond_7
    const/16 v0, 0xe1

    if-lt p0, v0, :cond_8

    .line 1076
    const/4 v3, 0x0

    const/16 v5, 0xe1

    const-string/jumbo v1, "prcm  "

    const-string/jumbo v2, "prcm"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1078
    :cond_8
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_9

    .line 1079
    const/4 v3, 0x0

    const/16 v5, 0xc8

    const-string/jumbo v1, "prcp  "

    const-string/jumbo v2, "prcp"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1081
    :cond_9
    const/16 v0, 0x64

    if-lt p0, v0, :cond_a

    .line 1082
    const/16 v5, 0x64

    const-string/jumbo v1, "vis"

    const-string/jumbo v2, "vis"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1084
    :cond_a
    if-ltz p0, :cond_b

    .line 1085
    const/4 v5, 0x0

    const-string v1, "fg "

    const-string v2, "fg "

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1087
    :cond_b
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_c

    .line 1088
    const/4 v3, 0x0

    const/16 v5, -0x2bc

    const-string/jumbo v1, "psvc  "

    const-string/jumbo v2, "psvc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1090
    :cond_c
    const/16 v0, -0x320

    if-lt p0, v0, :cond_d

    .line 1091
    const/4 v3, 0x0

    const/16 v5, -0x320

    const-string/jumbo v1, "pers  "

    const-string/jumbo v2, "pers"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1093
    :cond_d
    const/16 v0, -0x384

    if-lt p0, v0, :cond_e

    .line 1094
    const/4 v3, 0x0

    const/16 v5, -0x384

    const-string/jumbo v1, "sys   "

    const-string/jumbo v2, "sys"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1096
    :cond_e
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_f

    .line 1097
    const/4 v3, 0x0

    const/16 v5, -0x3e8

    const-string/jumbo v1, "ntv  "

    const-string/jumbo v2, "ntv"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1100
    :cond_f
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 1
    .param p0, "curProcState"    # I

    .line 1109
    packed-switch p0, :pswitch_data_0

    .line 1155
    const/16 v0, 0x3e6

    return v0

    .line 1151
    :pswitch_0
    const/16 v0, 0x3fb

    return v0

    .line 1149
    :pswitch_1
    const/16 v0, 0x3fa

    return v0

    .line 1147
    :pswitch_2
    const/16 v0, 0x3f9

    return v0

    .line 1145
    :pswitch_3
    const/16 v0, 0x3f8

    return v0

    .line 1143
    :pswitch_4
    const/16 v0, 0x3f7

    return v0

    .line 1141
    :pswitch_5
    const/16 v0, 0x3f6

    return v0

    .line 1139
    :pswitch_6
    const/16 v0, 0x3f5

    return v0

    .line 1133
    :pswitch_7
    const/16 v0, 0x3f4

    return v0

    .line 1123
    :pswitch_8
    const/16 v0, 0x3f3

    return v0

    .line 1137
    :pswitch_9
    const/16 v0, 0x3f2

    return v0

    .line 1135
    :pswitch_a
    const/16 v0, 0x3f1

    return v0

    .line 1131
    :pswitch_b
    const/16 v0, 0x3f0

    return v0

    .line 1129
    :pswitch_c
    const/16 v0, 0x3ef

    return v0

    .line 1127
    :pswitch_d
    const/16 v0, 0x3ee

    return v0

    .line 1125
    :pswitch_e
    const/16 v0, 0x3ed

    return v0

    .line 1121
    :pswitch_f
    const/16 v0, 0x3ec

    return v0

    .line 1119
    :pswitch_10
    const/16 v0, 0x3eb

    return v0

    .line 1117
    :pswitch_11
    const/16 v0, 0x3fc

    return v0

    .line 1115
    :pswitch_12
    const/16 v0, 0x3ea

    return v0

    .line 1113
    :pswitch_13
    const/16 v0, 0x3e9

    return v0

    .line 1111
    :pswitch_14
    const/16 v0, 0x3e8

    return v0

    .line 1153
    :pswitch_15
    const/16 v0, 0x3e7

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .line 1105
    invoke-static {p0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private memtagModeToZygoteMemtagLevel(I)I
    .locals 1
    .param p1, "memtagMode"    # I

    .line 1671
    packed-switch p1, :pswitch_data_0

    .line 1677
    const/4 v0, 0x0

    return v0

    .line 1675
    :pswitch_0
    const/high16 v0, 0x180000

    return v0

    .line 1673
    :pswitch_1
    const/high16 v0, 0x100000

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .line 1369
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0
.end method

.method private needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "storageManagerInternal"    # Landroid/os/storage/StorageManagerInternal;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2286
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getMountMode()I

    move-result v0

    .line 2287
    .local v0, "mountMode":I
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2288
    invoke-virtual {p1, v1}, Landroid/os/storage/StorageManagerInternal;->isExternalStorageService(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2287
    :goto_0
    return v1
.end method

.method private printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "adj"    # I

    .line 4459
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4460
    const/16 v0, 0x20

    if-ltz p3, :cond_0

    .line 4461
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4462
    const/16 v1, 0xa

    if-ge p3, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 4464
    :cond_0
    const/16 v1, -0xa

    if-le p3, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4466
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 4467
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4468
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4469
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4470
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->stringifySize(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4471
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4472
    return-void
.end method

.method private static procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 2
    .param p0, "procState"    # I
    .param p1, "memAdj"    # I
    .param p2, "currApp"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"    # I

    .line 3726
    invoke-static {p0, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    .line 3728
    .local v0, "imp":I
    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    .line 3729
    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_0

    .line 3731
    :cond_0
    const/4 v1, 0x0

    iput v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 3733
    :goto_0
    return v0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .line 1365
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v0, p0

    aget v0, v0, p1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .line 1461
    if-gtz p0, :cond_0

    .line 1462
    return-void

    .line 1464
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1465
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1466
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1467
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1468
    return-void
.end method

.method private removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2186
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2188
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2187
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 2189
    .local v0, "appUidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    if-eqz v0, :cond_0

    .line 2190
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2193
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2194
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v3

    .line 2193
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AppZygote;

    .line 2195
    .local v1, "appZygote":Landroid/os/AppZygote;
    if-eqz v1, :cond_2

    .line 2196
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2197
    .local v2, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2198
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 2199
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2200
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2203
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_0

    .line 2205
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2206
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2207
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2211
    .end local v2    # "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void
.end method

.method public static setOomAdj(III)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .line 1436
    if-gtz p0, :cond_0

    .line 1437
    return-void

    .line 1439
    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    .line 1440
    return-void

    .line 1442
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1443
    .local v0, "start":J
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1444
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1445
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1446
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1447
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1448
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1449
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1450
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 1451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW OOM ADJ: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_2
    return-void
.end method

.method private static sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "dumpPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 4184
    .local p0, "origList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    .line 4185
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4186
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 4187
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4188
    .local v3, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4189
    goto :goto_1

    .line 4191
    :cond_0
    new-instance v4, Landroid/util/Pair;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4186
    .end local v3    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4194
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    new-instance v1, Lcom/android/server/am/ProcessList$2;

    invoke-direct {v1}, Lcom/android/server/am/ProcessList$2;-><init>()V

    .line 4216
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4217
    return-object v0
.end method

.method private startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .locals 40
    .param p1, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "zygotePolicyFlags"    # I
    .param p8, "mountExternal"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "requiredAbi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "startTime"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v15, p4

    move-wide/from16 v13, p13

    .line 2302
    const-wide/16 v11, 0x40

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start proc: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2304
    const-string/jumbo v0, "startProcess: asking zygote to start proc"

    invoke-direct {v1, v13, v14, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2305
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v0

    .line 2306
    .local v0, "isTopApp":Z
    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2310
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 2315
    :cond_0
    const/4 v4, 0x0

    .line 2316
    .local v4, "bindMountAppStorageDirs":Z
    iget-boolean v5, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2317
    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, v1, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v7, 0x89450c5

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2318
    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v6

    .line 2322
    .local v5, "bindMountAppsData":Z
    :goto_0
    iget-object v7, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    move-object v10, v7

    .line 2323
    .local v10, "pmInt":Landroid/content/pm/PackageManagerInternal;
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v10, v7, v8}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    .line 2325
    .local v9, "sharedPackages":[Ljava/lang/String;
    array-length v7, v9

    if-nez v7, :cond_3

    .line 2326
    new-array v7, v3, [Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v8, v7, v6

    goto :goto_1

    :cond_3
    move-object v7, v9

    :goto_1
    move-object v8, v7

    .line 2328
    .local v8, "targetPackagesList":[Ljava/lang/String;
    invoke-direct {v1, v10, v8, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2329
    .local v7, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-nez v7, :cond_4

    .line 2332
    const/4 v5, 0x0

    .line 2337
    :cond_4
    :try_start_1
    new-instance v11, Landroid/util/ArraySet;

    iget-object v12, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    invoke-direct {v11, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v12, v11

    .line 2338
    .local v12, "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v11, v8

    move v3, v6

    :goto_2
    if-ge v3, v11, :cond_5

    aget-object v19, v8, v3

    move-object/from16 v20, v19

    .line 2339
    .local v20, "pkg":Ljava/lang/String;
    move-object/from16 v6, v20

    .end local v20    # "pkg":Ljava/lang/String;
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {v12, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2338
    nop

    .end local v6    # "pkg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    goto :goto_2

    .line 2342
    :cond_5
    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/String;

    .line 2343
    invoke-interface {v12, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 2342
    invoke-direct {v1, v10, v3, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v3

    .line 2344
    .local v3, "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-nez v3, :cond_6

    .line 2347
    const/4 v5, 0x0

    move/from16 v26, v5

    goto :goto_3

    .line 2344
    :cond_6
    move/from16 v26, v5

    .line 2350
    .end local v5    # "bindMountAppsData":Z
    .local v26, "bindMountAppsData":Z
    :goto_3
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move v11, v5

    .line 2351
    .local v11, "userId":I
    const-class v5, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManagerInternal;

    move-object v6, v5

    .line 2353
    .local v6, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-direct {v1, v6, v2}, Lcom/android/server/am/ProcessList;->needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2356
    if-eqz v7, :cond_7

    invoke-virtual {v6, v11}, Landroid/os/storage/StorageManagerInternal;->isFuseMounted(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2357
    const/4 v4, 0x1

    move/from16 v27, v4

    goto :goto_4

    .line 2361
    :cond_7
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 2362
    const/4 v4, 0x0

    move/from16 v27, v4

    goto :goto_4

    .line 2353
    :cond_8
    move/from16 v27, v4

    .line 2368
    .end local v4    # "bindMountAppStorageDirs":Z
    .local v27, "bindMountAppStorageDirs":Z
    :goto_4
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v4, :cond_9

    .line 2369
    const/4 v7, 0x0

    .line 2370
    const/4 v3, 0x0

    move-object/from16 v28, v3

    move-object/from16 v29, v7

    goto :goto_5

    .line 2368
    :cond_9
    move-object/from16 v28, v3

    move-object/from16 v29, v7

    .line 2374
    .end local v3    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v7    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v28, "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v29, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_5
    const/16 v30, 0x0

    .line 2375
    .local v30, "regularZygote":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string/jumbo v4, "seq="

    if-eqz v3, :cond_a

    .line 2376
    :try_start_2
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v21, v3

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2380
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v22

    move-object/from16 v23, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v18, v6

    .end local v6    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .local v18, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    move/from16 v25, v7

    move-object/from16 v24, v8

    .end local v8    # "targetPackagesList":[Ljava/lang/String;
    .local v24, "targetPackagesList":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2376
    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move/from16 v5, p4

    move-object/from16 v8, v18

    .end local v18    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .local v8, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    move/from16 v6, p4

    move/from16 v18, v25

    move-object/from16 v7, p5

    move-object/from16 v32, v8

    move-object/from16 v31, v24

    .end local v8    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v24    # "targetPackagesList":[Ljava/lang/String;
    .local v31, "targetPackagesList":[Ljava/lang/String;
    .local v32, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    move/from16 v8, p6

    move-object/from16 v33, v9

    .end local v9    # "sharedPackages":[Ljava/lang/String;
    .local v33, "sharedPackages":[Ljava/lang/String;
    move/from16 v9, p8

    move-object/from16 v34, v10

    .end local v10    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .local v34, "pmInt":Landroid/content/pm/PackageManagerInternal;
    move/from16 v10, v18

    move/from16 v35, v11

    const-wide/16 v36, 0x40

    .end local v11    # "userId":I
    .local v35, "userId":I
    move-object/from16 v11, p9

    move-object/from16 v38, v12

    .end local v12    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v38, "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    :try_start_3
    invoke-static/range {v3 .. v18}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    .local v3, "startResult":Landroid/os/Process$ProcessStartResult;
    goto/16 :goto_6

    .line 2423
    .end local v0    # "isTopApp":Z
    .end local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v26    # "bindMountAppsData":Z
    .end local v27    # "bindMountAppStorageDirs":Z
    .end local v28    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v29    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v30    # "regularZygote":Z
    .end local v31    # "targetPackagesList":[Ljava/lang/String;
    .end local v32    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v33    # "sharedPackages":[Ljava/lang/String;
    .end local v34    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v35    # "userId":I
    .end local v38    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    const-wide/16 v36, 0x40

    goto/16 :goto_9

    .line 2382
    .restart local v0    # "isTopApp":Z
    .restart local v6    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .local v8, "targetPackagesList":[Ljava/lang/String;
    .restart local v9    # "sharedPackages":[Ljava/lang/String;
    .restart local v10    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v11    # "userId":I
    .restart local v12    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26    # "bindMountAppsData":Z
    .restart local v27    # "bindMountAppStorageDirs":Z
    .restart local v28    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v29    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v30    # "regularZygote":Z
    :cond_a
    move-object/from16 v32, v6

    move-object/from16 v31, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move/from16 v35, v11

    move-object/from16 v38, v12

    const-wide/16 v36, 0x40

    .end local v6    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v8    # "targetPackagesList":[Ljava/lang/String;
    .end local v9    # "sharedPackages":[Ljava/lang/String;
    .end local v10    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v11    # "userId":I
    .end local v12    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v31    # "targetPackagesList":[Ljava/lang/String;
    .restart local v32    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v33    # "sharedPackages":[Ljava/lang/String;
    .restart local v34    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v35    # "userId":I
    .restart local v38    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2383
    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v3

    move-object/from16 v39, v3

    .line 2386
    .local v39, "appZygote":Landroid/os/AppZygote;
    invoke-virtual/range {v39 .. v39}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v20, 0x0

    .line 2391
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v6, 0x1

    new-array v13, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2393
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v13, v6

    .line 2386
    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p8

    move-object/from16 v12, p9

    move-object/from16 v25, v13

    move-object/from16 v13, p10

    move-object/from16 v17, v14

    move-object/from16 v14, p11

    move/from16 v18, v20

    move/from16 v19, v0

    move-object/from16 v20, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v28

    invoke-virtual/range {v3 .. v25}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    .line 2394
    .end local v39    # "appZygote":Landroid/os/AppZygote;
    .restart local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_6

    .line 2395
    .end local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    :cond_b
    const/16 v30, 0x1

    .line 2396
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2400
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v20

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v13, v4

    .line 2396
    move-object/from16 v3, p2

    move-object v4, v5

    move/from16 v5, p4

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v24, v13

    move-object/from16 v13, p11

    move-object/from16 v16, v15

    move-object/from16 v15, p12

    move/from16 v17, p7

    move/from16 v18, v0

    move-object/from16 v19, v20

    move-object/from16 v20, v29

    move-object/from16 v21, v28

    move/from16 v22, v26

    move/from16 v23, v27

    invoke-static/range {v3 .. v24}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    .line 2405
    .restart local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    :goto_6
    if-nez v30, :cond_c

    .line 2407
    iget v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v5, p4

    :try_start_4
    invoke-static {v5, v4}, Landroid/os/Process;->createProcessGroup(II)I

    move-result v4

    if-gez v4, :cond_d

    .line 2408
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create process group for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2405
    :cond_c
    move/from16 v5, p4

    .line 2416
    :cond_d
    :goto_7
    if-eqz v27, :cond_e

    .line 2417
    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v8, v32

    move/from16 v7, v35

    .end local v32    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v35    # "userId":I
    .local v7, "userId":I
    .local v8, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v8, v7, v4, v6}, Landroid/os/storage/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    goto :goto_8

    .line 2416
    .end local v7    # "userId":I
    .end local v8    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v32    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v35    # "userId":I
    :cond_e
    move-object/from16 v8, v32

    move/from16 v7, v35

    .line 2420
    .end local v32    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v35    # "userId":I
    .restart local v7    # "userId":I
    .restart local v8    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :goto_8
    const-string/jumbo v4, "startProcess: returned from zygote!"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v9, p13

    :try_start_5
    invoke-direct {v1, v9, v10, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2421
    nop

    .line 2423
    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->traceEnd(J)V

    .line 2421
    return-object v3

    .line 2423
    .end local v0    # "isTopApp":Z
    .end local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v7    # "userId":I
    .end local v8    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v26    # "bindMountAppsData":Z
    .end local v27    # "bindMountAppStorageDirs":Z
    .end local v28    # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v29    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v30    # "regularZygote":Z
    .end local v31    # "targetPackagesList":[Ljava/lang/String;
    .end local v33    # "sharedPackages":[Ljava/lang/String;
    .end local v34    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v38    # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    :goto_9
    move/from16 v5, p4

    :goto_a
    move-wide/from16 v9, p13

    goto :goto_b

    :catchall_4
    move-exception v0

    move-wide v9, v13

    move v5, v15

    const-wide/16 v36, 0x40

    goto :goto_b

    :catchall_5
    move-exception v0

    move-wide/from16 v36, v11

    move-wide v9, v13

    move v5, v15

    :goto_b
    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->traceEnd(J)V

    .line 2424
    throw v0
.end method

.method private updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V
    .locals 16
    .param p1, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "topI"    # I
    .param p3, "bottomI"    # I
    .param p4, "endIndex"    # I

    .line 3288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3289
    .local v3, "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v4

    if-nez v4, :cond_15

    .line 3290
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_d

    .line 3296
    :cond_0
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3297
    .local v4, "uid":I
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v5

    .line 3298
    .local v5, "topConnectionGroup":I
    if-lez v5, :cond_5

    .line 3299
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v6

    .line 3300
    .local v6, "endImportance":I
    move/from16 v7, p4

    move v8, v7

    move v7, v6

    move/from16 v6, p4

    .end local p4    # "endIndex":I
    .local v6, "endIndex":I
    .local v7, "endImportance":I
    .local v8, "i":I
    :goto_0
    if-lt v8, v2, :cond_6

    .line 3301
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 3302
    .local v9, "subProc":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3303
    .local v10, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v11

    .line 3304
    .local v11, "subConnectionGroup":I
    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v12

    .line 3305
    .local v12, "subConnectionImportance":I
    iget-object v13, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v13, v4, :cond_4

    if-ne v11, v5, :cond_4

    .line 3307
    if-ne v8, v6, :cond_1

    if-lt v12, v7, :cond_1

    .line 3316
    add-int/lit8 v6, v6, -0x1

    .line 3317
    move v7, v12

    goto :goto_3

    .line 3325
    :cond_1
    const/4 v13, 0x0

    .line 3326
    .local v13, "moved":Z
    move/from16 v14, p2

    .local v14, "pos":I
    :goto_1
    if-le v14, v6, :cond_3

    .line 3327
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 3328
    .local v15, "posProc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3329
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v1

    if-gt v12, v1, :cond_2

    .line 3330
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3331
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v14, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3336
    const/4 v13, 0x1

    .line 3337
    add-int/lit8 v6, v6, -0x1

    .line 3338
    goto :goto_2

    .line 3326
    .end local v15    # "posProc":Lcom/android/server/am/ProcessRecord;
    :cond_2
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v1, p1

    goto :goto_1

    .line 3341
    .end local v14    # "pos":I
    :cond_3
    :goto_2
    if-nez v13, :cond_4

    .line 3343
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3344
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3349
    add-int/lit8 v6, v6, -0x1

    .line 3350
    move v1, v12

    move v7, v1

    .line 3300
    .end local v9    # "subProc":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v11    # "subConnectionGroup":I
    .end local v12    # "subConnectionImportance":I
    .end local v13    # "moved":Z
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v1, p1

    goto :goto_0

    .line 3298
    .end local v6    # "endIndex":I
    .end local v7    # "endImportance":I
    .end local v8    # "i":I
    .restart local p4    # "endIndex":I
    :cond_5
    move/from16 v6, p4

    .line 3359
    .end local p4    # "endIndex":I
    .restart local v6    # "endIndex":I
    :cond_6
    move v1, v6

    .line 3360
    .local v1, "i":I
    :goto_4
    if-lt v1, v2, :cond_14

    .line 3361
    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 3362
    .local v7, "subProc":Lcom/android/server/am/ProcessRecord;
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3363
    .local v8, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v9

    .line 3366
    .local v9, "subConnectionGroup":I
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v10, v4, :cond_13

    .line 3370
    if-ge v1, v6, :cond_e

    .line 3371
    const/4 v10, 0x0

    .line 3372
    .local v10, "hasActivity":Z
    const/4 v11, 0x0

    .line 3373
    .local v11, "connUid":I
    const/4 v12, 0x0

    .line 3374
    .local v12, "connGroup":I
    :goto_5
    if-lt v1, v2, :cond_e

    .line 3375
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3376
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3379
    add-int/lit8 v1, v1, -0x1

    .line 3380
    if-ge v1, v2, :cond_7

    .line 3381
    goto :goto_8

    .line 3383
    :cond_7
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 3386
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v13

    if-nez v13, :cond_b

    .line 3387
    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_6

    .line 3397
    :cond_8
    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 3400
    if-eqz v10, :cond_a

    .line 3401
    if-eqz v11, :cond_e

    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v11, v13, :cond_9

    .line 3407
    goto :goto_8

    .line 3408
    :cond_9
    if-eqz v12, :cond_e

    if-eq v12, v9, :cond_d

    .line 3414
    goto :goto_8

    .line 3420
    :cond_a
    const/4 v10, 0x1

    .line 3421
    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3422
    move v12, v9

    goto :goto_7

    .line 3390
    :cond_b
    :goto_6
    if-eqz v10, :cond_c

    .line 3394
    goto :goto_8

    .line 3396
    :cond_c
    const/4 v10, 0x1

    .line 3425
    :cond_d
    :goto_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 3432
    .end local v10    # "hasActivity":Z
    .end local v11    # "connUid":I
    .end local v12    # "connGroup":I
    :cond_e
    :goto_8
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v2, :cond_10

    .line 3433
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 3434
    .local v10, "endProc":Lcom/android/server/am/ProcessRecord;
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v4, :cond_f

    .line 3438
    goto :goto_9

    .line 3434
    .end local v10    # "endProc":Lcom/android/server/am/ProcessRecord;
    :cond_f
    goto :goto_8

    .line 3441
    :cond_10
    :goto_9
    if-lt v6, v2, :cond_12

    .line 3442
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 3443
    .restart local v10    # "endProc":Lcom/android/server/am/ProcessRecord;
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3444
    .local v11, "endPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v11}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v12

    .line 3445
    .local v12, "endConnectionGroup":I
    :goto_a
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v2, :cond_12

    .line 3446
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 3447
    .local v13, "nextEndProc":Lcom/android/server/am/ProcessRecord;
    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v14

    .line 3448
    .local v14, "nextConnectionGroup":I
    iget-object v15, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v15, v4, :cond_12

    if-eq v14, v12, :cond_11

    .line 3453
    goto :goto_b

    .line 3448
    .end local v13    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "nextConnectionGroup":I
    :cond_11
    goto :goto_a

    .line 3459
    .end local v10    # "endProc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "endPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v12    # "endConnectionGroup":I
    :cond_12
    :goto_b
    move v1, v6

    goto :goto_c

    .line 3461
    :cond_13
    add-int/lit8 v1, v1, -0x1

    .line 3463
    .end local v7    # "subProc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v9    # "subConnectionGroup":I
    :goto_c
    goto/16 :goto_4

    .line 3464
    :cond_14
    return-void

    .line 3293
    .end local v1    # "i":I
    .end local v4    # "uid":I
    .end local v5    # "topConnectionGroup":I
    .end local v6    # "endIndex":I
    .restart local p4    # "endIndex":I
    :cond_15
    :goto_d
    return-void
.end method

.method private updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J
    .param p4, "index"    # I
    .param p5, "lruSeq"    # I
    .param p6, "what"    # Ljava/lang/String;
    .param p7, "obj"    # Ljava/lang/Object;
    .param p8, "srcApp"    # Lcom/android/server/am/ProcessRecord;

    .line 3233
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    .line 3235
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3237
    return p4

    .line 3240
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3241
    .local v0, "lrui":I
    if-gez v0, :cond_1

    .line 3242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding dependent process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not on LRU list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    return p4

    .line 3247
    :cond_1
    if-lt v0, p4, :cond_2

    .line 3250
    return p4

    .line 3253
    :cond_2
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v0, v1, :cond_3

    if-ge p4, v1, :cond_3

    .line 3255
    return p4

    .line 3258
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3259
    if-lez p4, :cond_4

    .line 3260
    add-int/lit8 p4, p4, -0x1

    .line 3264
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3265
    invoke-virtual {p1, p5}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    .line 3266
    return p4
.end method

.method private updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V
    .locals 21
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "hasActivity"    # Z
    .param p4, "hasService"    # Z

    .line 3493
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 3494
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 3495
    .local v13, "now":J
    iget-object v15, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3496
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v10, v13, v14}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    .line 3500
    if-eqz p3, :cond_1

    .line 3501
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3502
    .local v0, "N":I
    if-lez v0, :cond_0

    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_0

    .line 3504
    return-void

    .line 3506
    .end local v0    # "N":I
    :cond_0
    goto :goto_0

    .line 3507
    :cond_1
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v0, :cond_2

    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v0, v12

    .line 3508
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_2

    .line 3510
    return-void

    .line 3514
    :cond_2
    :goto_0
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v8

    .line 3516
    .local v8, "lrui":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz v8, :cond_3

    .line 3520
    return-void

    .line 3557
    :cond_3
    if-ltz v8, :cond_6

    .line 3558
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v8, v0, :cond_4

    .line 3559
    sub-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3561
    :cond_4
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v8, v0, :cond_5

    .line 3562
    sub-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3572
    :cond_5
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3586
    :cond_6
    const/4 v0, -0x1

    .line 3587
    .local v0, "nextActivityIndex":I
    if-eqz p3, :cond_b

    .line 3588
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3589
    .local v1, "N":I
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3590
    .local v2, "nextIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_a

    .line 3598
    add-int/lit8 v3, v1, -0x1

    .line 3599
    .local v3, "pos":I
    :goto_1
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v3, v4, :cond_8

    .line 3600
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 3601
    .local v4, "posproc":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_7

    .line 3605
    goto :goto_2

    .line 3607
    :cond_7
    nop

    .end local v4    # "posproc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v3, v3, -0x1

    .line 3608
    goto :goto_1

    .line 3609
    :cond_8
    :goto_2
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3612
    add-int/lit8 v4, v3, -0x1

    .line 3613
    .local v4, "endIndex":I
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v4, v5, :cond_9

    .line 3614
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3616
    :cond_9
    move v0, v4

    .line 3617
    invoke-direct {v9, v10, v3, v5, v4}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    .line 3618
    .end local v3    # "pos":I
    .end local v4    # "endIndex":I
    goto :goto_3

    .line 3621
    :cond_a
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3622
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    move v0, v3

    .line 3624
    .end local v1    # "N":I
    :goto_3
    goto :goto_4

    .end local v2    # "nextIndex":I
    :cond_b
    if-eqz p4, :cond_c

    .line 3627
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-virtual {v1, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3628
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3629
    .restart local v2    # "nextIndex":I
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v1, v12

    iput v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    goto :goto_4

    .line 3632
    .end local v2    # "nextIndex":I
    :cond_c
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3633
    .local v1, "index":I
    if-eqz v11, :cond_e

    .line 3636
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3639
    .local v2, "clientIndex":I
    if-gt v2, v8, :cond_d

    .line 3642
    move v2, v8

    .line 3644
    :cond_d
    if-ltz v2, :cond_e

    if-le v1, v2, :cond_e

    .line 3645
    move v1, v2

    .line 3649
    .end local v2    # "clientIndex":I
    :cond_e
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3650
    add-int/lit8 v2, v1, -0x1

    .line 3651
    .local v2, "nextIndex":I
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v3, v12

    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3652
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/2addr v3, v12

    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3653
    if-le v1, v12, :cond_f

    .line 3654
    sub-int/2addr v3, v12

    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-direct {v9, v10, v3, v4, v5}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    .line 3658
    .end local v1    # "index":I
    :cond_f
    :goto_4
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v10, v1}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    .line 3662
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v1

    sub-int/2addr v1, v12

    move/from16 v16, v0

    move v7, v1

    move/from16 v17, v2

    .end local v0    # "nextActivityIndex":I
    .end local v2    # "nextIndex":I
    .local v7, "j":I
    .local v16, "nextActivityIndex":I
    .local v17, "nextIndex":I
    :goto_5
    if-ltz v7, :cond_15

    .line 3663
    invoke-virtual {v15, v7}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v6

    .line 3664
    .local v6, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_14

    iget-boolean v0, v6, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_14

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_14

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_14

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3666
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_13

    iget v0, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v1, 0x40000130    # 2.0000725f

    and-int/2addr v0, v1

    if-nez v0, :cond_13

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3668
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3669
    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3670
    if-ltz v16, :cond_10

    .line 3671
    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v18, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v13

    move/from16 v4, v16

    move-object/from16 v19, v6

    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v19, "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v6, v18

    move/from16 v18, v7

    .end local v7    # "j":I
    .local v18, "j":I
    move-object/from16 v7, v19

    move/from16 v20, v8

    .end local v8    # "lrui":I
    .local v20, "lrui":I
    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v16, v0

    .end local v16    # "nextActivityIndex":I
    .restart local v0    # "nextActivityIndex":I
    goto :goto_6

    .line 3670
    .end local v0    # "nextActivityIndex":I
    .end local v18    # "j":I
    .end local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v20    # "lrui":I
    .restart local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v7    # "j":I
    .restart local v8    # "lrui":I
    .restart local v16    # "nextActivityIndex":I
    :cond_10
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7    # "j":I
    .end local v8    # "lrui":I
    .restart local v18    # "j":I
    .restart local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v20    # "lrui":I
    goto :goto_6

    .line 3677
    .end local v18    # "j":I
    .end local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v20    # "lrui":I
    .restart local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v7    # "j":I
    .restart local v8    # "lrui":I
    :cond_11
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7    # "j":I
    .end local v8    # "lrui":I
    .restart local v18    # "j":I
    .restart local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v20    # "lrui":I
    move-object/from16 v8, v19

    .end local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v8, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v13

    move/from16 v4, v17

    move-object v7, v8

    .end local v8    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v17, v0

    .end local v17    # "nextIndex":I
    .local v0, "nextIndex":I
    goto :goto_6

    .line 3668
    .end local v0    # "nextIndex":I
    .end local v18    # "j":I
    .end local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v20    # "lrui":I
    .restart local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v7    # "j":I
    .local v8, "lrui":I
    .restart local v17    # "nextIndex":I
    :cond_12
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7    # "j":I
    .end local v8    # "lrui":I
    .restart local v18    # "j":I
    .restart local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v20    # "lrui":I
    goto :goto_6

    .line 3666
    .end local v18    # "j":I
    .end local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v20    # "lrui":I
    .restart local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v7    # "j":I
    .restart local v8    # "lrui":I
    :cond_13
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7    # "j":I
    .end local v8    # "lrui":I
    .restart local v18    # "j":I
    .restart local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v20    # "lrui":I
    goto :goto_6

    .line 3664
    .end local v18    # "j":I
    .end local v19    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v20    # "lrui":I
    .restart local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v7    # "j":I
    .restart local v8    # "lrui":I
    :cond_14
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .line 3662
    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7    # "j":I
    .end local v8    # "lrui":I
    .restart local v18    # "j":I
    .restart local v20    # "lrui":I
    :goto_6
    add-int/lit8 v7, v18, -0x1

    move/from16 v8, v20

    .end local v18    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_5

    .end local v20    # "lrui":I
    .restart local v8    # "lrui":I
    :cond_15
    move/from16 v18, v7

    move/from16 v20, v8

    .line 3684
    .end local v7    # "j":I
    .end local v8    # "lrui":I
    .restart local v20    # "lrui":I
    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 3685
    .local v8, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v0

    sub-int/2addr v0, v12

    move v12, v0

    .local v12, "j":I
    :goto_7
    if-ltz v12, :cond_17

    .line 3686
    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 3687
    .local v7, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_16

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_16

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3688
    iget-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "provider reference"

    move-object/from16 v0, p0

    move-wide v2, v13

    move/from16 v4, v17

    move-object/from16 v18, v7

    .end local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v18, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move-object/from16 v19, v8

    .end local v8    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v19, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v17, v0

    .end local v17    # "nextIndex":I
    .restart local v0    # "nextIndex":I
    goto :goto_8

    .line 3687
    .end local v0    # "nextIndex":I
    .end local v18    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v19    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v17    # "nextIndex":I
    :cond_16
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .line 3685
    .end local v7    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v8    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v19    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    :goto_8
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v8, v19

    goto :goto_7

    .line 3692
    .end local v12    # "j":I
    .end local v19    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v8    # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    :cond_17
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 16
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .line 937
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v3, 0x15e

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43af0000    # 350.0f

    div-float/2addr v1, v2

    .line 940
    .local v1, "scaleMem":F
    const v2, 0x5dc00

    .line 941
    .local v2, "minSize":I
    const v3, 0xfa000

    .line 942
    .local v3, "maxSize":I
    mul-int v4, p1, p2

    int-to-float v4, v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 949
    .local v4, "scaleDisp":F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 950
    .local v5, "scale":F
    :goto_0
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 951
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 952
    :cond_2
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e007c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 954
    .local v6, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e007b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 960
    .local v7, "minfree_abs":I
    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v8, v8

    const/4 v10, 0x1

    if-lez v8, :cond_3

    move v8, v10

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 962
    .local v8, "is64bit":Z
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v12

    const/4 v13, 0x4

    if-ge v11, v12, :cond_6

    .line 963
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v12, v12, v11

    .line 964
    .local v12, "low":I
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v14, v14, v11

    .line 965
    .local v14, "high":I
    if-eqz v8, :cond_5

    .line 967
    if-ne v11, v13, :cond_4

    mul-int/lit8 v13, v14, 0x3

    div-int/lit8 v14, v13, 0x2

    goto :goto_4

    .line 968
    :cond_4
    const/4 v15, 0x5

    if-ne v11, v15, :cond_5

    mul-int/lit8 v15, v14, 0x7

    div-int/lit8 v14, v15, 0x4

    .line 970
    :cond_5
    :goto_4
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v15, v12

    sub-int v9, v14, v12

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v15, v9

    float-to-int v9, v15

    aput v9, v13, v11

    .line 962
    .end local v12    # "low":I
    .end local v14    # "high":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 973
    .end local v11    # "i":I
    :cond_6
    if-ltz v7, :cond_7

    .line 974
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_7

    .line 975
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v14, v7

    aget v15, v12, v9

    int-to-float v15, v15

    mul-float/2addr v14, v15

    array-length v11, v11

    sub-int/2addr v11, v10

    aget v11, v12, v11

    int-to-float v11, v11

    div-float/2addr v14, v11

    float-to-int v11, v14

    aput v11, v12, v9

    .line 974
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 980
    .end local v9    # "i":I
    :cond_7
    if-eqz v6, :cond_9

    .line 981
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_9

    .line 982
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v12, v9

    int-to-float v15, v6

    aget v13, v12, v9

    int-to-float v13, v13

    mul-float/2addr v15, v13

    array-length v11, v11

    sub-int/2addr v11, v10

    aget v11, v12, v11

    int-to-float v11, v11

    div-float/2addr v15, v11

    float-to-int v11, v15

    add-int/2addr v14, v11

    aput v14, v12, v9

    .line 984
    aget v11, v12, v9

    if-gez v11, :cond_8

    .line 985
    const/4 v11, 0x0

    aput v11, v12, v9

    .line 981
    :cond_8
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x4

    goto :goto_6

    .line 993
    .end local v9    # "i":I
    :cond_9
    const/16 v9, 0x3e7

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    const-wide/16 v13, 0x3

    div-long/2addr v11, v13

    iput-wide v11, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 997
    mul-int v9, p1, p2

    const/4 v11, 0x4

    mul-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0x3

    div-int/lit16 v9, v9, 0x400

    .line 998
    .local v9, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0060

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 1000
    .local v11, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e005f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 1003
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_a

    .line 1004
    move v9, v12

    .line 1007
    :cond_a
    if-eqz v11, :cond_b

    .line 1008
    add-int/2addr v9, v11

    .line 1009
    if-gez v9, :cond_b

    .line 1010
    const/4 v9, 0x0

    .line 1014
    :cond_b
    if-eqz p3, :cond_d

    .line 1015
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v10

    const/4 v14, 0x4

    mul-int/2addr v13, v14

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1016
    .local v13, "buf":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1017
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_7
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    if-ge v14, v15, :cond_c

    .line 1018
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v15, v15, v14

    mul-int/lit16 v15, v15, 0x400

    div-int/lit16 v15, v15, 0x1000

    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1019
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v15, v15, v14

    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1017
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1022
    .end local v14    # "i":I
    :cond_c
    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1023
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "sys.sysctl.extra_free_kbytes"

    invoke-static {v15, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iput-boolean v10, v0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 1028
    .end local v13    # "buf":Ljava/nio/ByteBuffer;
    :cond_d
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "repl"    # Ljava/nio/ByteBuffer;

    .line 1522
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1524
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v1, 0xfa1

    .line 1525
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1524
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1528
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/LmkdConnection;->waitForConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1529
    const/4 v0, 0x0

    return v0

    .line 1533
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/LmkdConnection;->exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method private static writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z
    .locals 27
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p5, "inclDetails"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 4223
    .local p4, "origList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4224
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    return v4

    .line 4226
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4228
    .local v4, "curUptime":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_d

    .line 4229
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 4230
    .local v8, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4231
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4232
    .local v10, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 4233
    .local v11, "token":J
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-static {v13, v7}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v13

    .line 4234
    .local v13, "oomAdj":Ljava/lang/String;
    const-wide v14, 0x10800000001L

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4235
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v14, 0x1

    sub-int/2addr v7, v14

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v7, v14

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4236
    const-wide v14, 0x10900000003L

    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4237
    const/4 v7, -0x1

    .line 4238
    .local v7, "schedGroup":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 4249
    :pswitch_1
    const/4 v7, 0x3

    goto :goto_1

    .line 4246
    :pswitch_2
    const/4 v7, 0x2

    .line 4247
    goto :goto_1

    .line 4243
    :pswitch_3
    const/4 v7, 0x1

    .line 4244
    goto :goto_1

    .line 4240
    :pswitch_4
    const/4 v7, 0x0

    .line 4241
    nop

    .line 4252
    :goto_1
    const/4 v14, -0x1

    if-eq v7, v14, :cond_1

    .line 4253
    const-wide v14, 0x10e00000004L

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4255
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 4256
    const-wide v14, 0x10800000005L

    const/4 v1, 0x1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_2

    .line 4257
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 4258
    const-wide v14, 0x10800000006L

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4260
    :cond_3
    :goto_2
    nop

    .line 4261
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v1

    .line 4260
    const-wide v14, 0x10e00000007L

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4262
    const-wide v14, 0x10500000008L

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4263
    const-wide v14, 0x10b00000009L

    invoke-virtual {v8, v0, v14, v15}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4264
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v1

    const-wide v14, 0x1090000000aL

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4265
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 4266
    :cond_4
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    .line 4267
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 4268
    .local v1, "cn":Landroid/content/ComponentName;
    const-wide v14, 0x10b0000000bL

    invoke-virtual {v1, v0, v14, v15}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .end local v1    # "cn":Landroid/content/ComponentName;
    goto :goto_3

    .line 4269
    :cond_5
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4270
    const-wide v14, 0x1090000000cL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_4

    .line 4269
    :cond_6
    :goto_3
    nop

    .line 4272
    :goto_4
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_7

    .line 4273
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 4274
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    const-wide v14, 0x10b0000000dL

    invoke-virtual {v1, v0, v14, v15}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    goto :goto_5

    .line 4275
    :cond_7
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 4276
    const-wide v14, 0x1090000000eL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_6

    .line 4275
    :cond_8
    :goto_5
    nop

    .line 4279
    :cond_9
    :goto_6
    if-eqz p5, :cond_c

    .line 4280
    const-wide v14, 0x10b0000000fL

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 4281
    .local v1, "detailToken":J
    const-wide v14, 0x10500000001L

    move-object/from16 v24, v3

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v24, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4282
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4283
    const-wide v14, 0x10500000003L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4284
    const-wide v14, 0x10500000004L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4285
    const-wide v14, 0x10500000005L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4286
    nop

    .line 4287
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v3

    .line 4286
    const-wide v14, 0x10e00000007L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4288
    const-wide v14, 0x10e00000008L

    .line 4289
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v3

    .line 4288
    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4290
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4291
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v16

    const-wide/16 v18, 0x400

    mul-long v14, v16, v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4290
    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x10900000009L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4292
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4293
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v14

    mul-long v14, v14, v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4292
    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x1090000000aL

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4294
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4295
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v16

    mul-long v14, v16, v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4294
    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x1090000000bL

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4296
    const-wide v14, 0x1080000000cL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4297
    const-wide v14, 0x1080000000dL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4298
    const-wide v14, 0x1080000000eL

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4300
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v14, 0xa

    if-lt v3, v14, :cond_b

    .line 4301
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    .line 4302
    .local v14, "lastCpuTime":J
    move-object/from16 v3, p3

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v10    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v16, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v17, "psr":Lcom/android/server/am/ProcessServiceRecord;
    iget-wide v9, v3, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v9, v4, v9

    .line 4303
    .local v9, "uptimeSince":J
    const-wide/16 v18, 0x0

    cmp-long v20, v14, v18

    if-eqz v20, :cond_a

    cmp-long v18, v9, v18

    if-lez v18, :cond_a

    .line 4304
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    move-wide/from16 v20, v4

    .end local v4    # "curUptime":J
    .local v20, "curUptime":J
    sub-long v3, v18, v14

    .line 4305
    .local v3, "timeUsed":J
    move/from16 v18, v7

    move-object v5, v8

    const-wide v7, 0x10b0000000fL

    .end local v7    # "schedGroup":I
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    .local v18, "schedGroup":I
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 4306
    .local v7, "cpuTimeToken":J
    move-object/from16 v19, v13

    move-wide/from16 v22, v14

    .end local v13    # "oomAdj":Ljava/lang/String;
    .end local v14    # "lastCpuTime":J
    .local v19, "oomAdj":Ljava/lang/String;
    .local v22, "lastCpuTime":J
    const-wide v13, 0x10300000001L

    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4307
    const-wide v13, 0x10300000002L

    invoke-virtual {v0, v13, v14, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4308
    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    long-to-double v13, v3

    mul-double v13, v13, v25

    move-wide/from16 v25, v3

    .end local v3    # "timeUsed":J
    .local v25, "timeUsed":J
    long-to-double v3, v9

    div-double/2addr v13, v3

    const-wide v3, 0x10200000003L

    invoke-virtual {v0, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 4310
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_7

    .line 4303
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "schedGroup":I
    .end local v19    # "oomAdj":Ljava/lang/String;
    .end local v20    # "curUptime":J
    .end local v22    # "lastCpuTime":J
    .end local v25    # "timeUsed":J
    .restart local v4    # "curUptime":J
    .local v7, "schedGroup":I
    .restart local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13    # "oomAdj":Ljava/lang/String;
    .restart local v14    # "lastCpuTime":J
    :cond_a
    move-wide/from16 v20, v4

    move/from16 v18, v7

    move-object v5, v8

    move-object/from16 v19, v13

    move-wide/from16 v22, v14

    .end local v4    # "curUptime":J
    .end local v7    # "schedGroup":I
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "oomAdj":Ljava/lang/String;
    .end local v14    # "lastCpuTime":J
    .restart local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "schedGroup":I
    .restart local v19    # "oomAdj":Ljava/lang/String;
    .restart local v20    # "curUptime":J
    .restart local v22    # "lastCpuTime":J
    goto :goto_7

    .line 4300
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v17    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v18    # "schedGroup":I
    .end local v19    # "oomAdj":Ljava/lang/String;
    .end local v20    # "curUptime":J
    .end local v22    # "lastCpuTime":J
    .restart local v4    # "curUptime":J
    .restart local v7    # "schedGroup":I
    .restart local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v10    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v13    # "oomAdj":Ljava/lang/String;
    :cond_b
    move-wide/from16 v20, v4

    move/from16 v18, v7

    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v19, v13

    .line 4313
    .end local v4    # "curUptime":J
    .end local v7    # "schedGroup":I
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v10    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v13    # "oomAdj":Ljava/lang/String;
    .restart local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v17    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v18    # "schedGroup":I
    .restart local v19    # "oomAdj":Ljava/lang/String;
    .restart local v20    # "curUptime":J
    :goto_7
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8

    .line 4279
    .end local v1    # "detailToken":J
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v17    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v18    # "schedGroup":I
    .end local v19    # "oomAdj":Ljava/lang/String;
    .end local v20    # "curUptime":J
    .end local v24    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .restart local v4    # "curUptime":J
    .restart local v7    # "schedGroup":I
    .restart local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v10    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v13    # "oomAdj":Ljava/lang/String;
    :cond_c
    move-object/from16 v24, v3

    move-wide/from16 v20, v4

    move/from16 v18, v7

    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v19, v13

    .line 4315
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .end local v4    # "curUptime":J
    .end local v7    # "schedGroup":I
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v10    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v13    # "oomAdj":Ljava/lang/String;
    .restart local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v17    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v18    # "schedGroup":I
    .restart local v19    # "oomAdj":Ljava/lang/String;
    .restart local v20    # "curUptime":J
    .restart local v24    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    :goto_8
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4228
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "token":J
    .end local v16    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v17    # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v18    # "schedGroup":I
    .end local v19    # "oomAdj":Ljava/lang/String;
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-wide/from16 v4, v20

    move-object/from16 v3, v24

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 4318
    .end local v6    # "i":I
    .end local v20    # "curUptime":J
    .end local v24    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .restart local v4    # "curUptime":J
    :cond_d
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 2933
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2934
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 2935
    .local v1, "old":Lcom/android/server/am/ProcessRecord;
    if-ne v1, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2937
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-adding persistent process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2938
    :cond_0
    if-eqz v1, :cond_2

    .line 2939
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2942
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was killed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2943
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getKillTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms ago when adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2942
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2946
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already have existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 2950
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v2, :cond_5

    .line 2951
    new-instance v3, Lcom/android/server/am/UidRecord;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v3, v4, v5}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    move-object v2, v3

    .line 2956
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2957
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 2956
    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2958
    invoke-virtual {v3, v4}, Lcom/android/server/am/PendingTempAllowlists;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 2959
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 2960
    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 2962
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 2963
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 2964
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 2965
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    .line 2966
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    .line 2965
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 2968
    :cond_5
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 2969
    invoke-virtual {v2, p1}, Lcom/android/server/am/UidRecord;->addProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 2972
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setRenderThreadTid(I)V

    .line 2973
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 2974
    nop

    .end local v1    # "old":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2975
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_6

    .line 2976
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2978
    :cond_6
    return-void

    .line 2974
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 898
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_0

    .line 899
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 901
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 902
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 903
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 904
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 907
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method clearAllDnsCacheLOSP()V
    .locals 6

    .line 3201
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3202
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3203
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3204
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_0

    .line 3206
    :try_start_0
    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3209
    goto :goto_1

    .line 3207
    :catch_0
    move-exception v3

    .line 3208
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clear dns cache for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3212
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method collectProcessesLOSP(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "start"    # I
    .param p2, "allPkgs"    # Z
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 4663
    if-eqz p3, :cond_5

    array-length v0, p3

    if-le v0, p1, :cond_5

    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 4664
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    .line 4665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4666
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, -0x1

    .line 4668
    .local v1, "pid":I
    :try_start_0
    aget-object v2, p3, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 4670
    goto :goto_0

    .line 4669
    :catch_0
    move-exception v2

    .line 4671
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 4672
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4673
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 4674
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4675
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4676
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4677
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4678
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4679
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4671
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4682
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 4683
    const/4 v2, 0x0

    return-object v2

    .line 4685
    .end local v1    # "pid":I
    :cond_4
    goto :goto_3

    .line 4686
    .end local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4688
    .restart local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_3
    return-object v0
.end method

.method dispatchProcessDied(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 4646
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 4647
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 4648
    add-int/lit8 v0, v0, -0x1

    .line 4649
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IProcessObserver;

    .line 4650
    .local v1, "observer":Landroid/app/IProcessObserver;
    if-eqz v1, :cond_0

    .line 4652
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4654
    goto :goto_1

    .line 4653
    :catch_0
    move-exception v2

    .line 4656
    .end local v1    # "observer":Landroid/app/IProcessObserver;
    :cond_0
    :goto_1
    goto :goto_0

    .line 4657
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4658
    return-void
.end method

.method dispatchProcessesChanged()V
    .locals 8

    .line 4530
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4531
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4532
    .local v1, "numOfChanges":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 4533
    new-array v2, v1, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 4535
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4536
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4541
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4543
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v2, v0

    .line 4544
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_4

    .line 4545
    add-int/lit8 v2, v2, -0x1

    .line 4546
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IProcessObserver;

    .line 4547
    .local v0, "observer":Landroid/app/IProcessObserver;
    if-eqz v0, :cond_3

    .line 4549
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 4550
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v4, v4, v3

    .line 4551
    .local v4, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 4557
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v6, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget-boolean v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-interface {v0, v5, v6, v7}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V

    .line 4560
    :cond_1
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 4566
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v6, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-interface {v0, v5, v6, v7}, Landroid/app/IProcessObserver;->onForegroundServicesChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4549
    .end local v4    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4570
    .end local v3    # "j":I
    :catch_0
    move-exception v3

    nop

    .line 4573
    .end local v0    # "observer":Landroid/app/IProcessObserver;
    :cond_3
    goto :goto_0

    .line 4574
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4576
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4577
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 4578
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4577
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4580
    .end local v0    # "j":I
    :cond_5
    monitor-exit v3

    .line 4581
    return-void

    .line 4580
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4541
    .end local v1    # "numOfChanges":I
    .end local v2    # "i":I
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method doStopUidForIdleUidsLocked()V
    .locals 6

    .line 4787
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 4788
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4789
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 4790
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4791
    goto :goto_1

    .line 4793
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 4794
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4795
    goto :goto_1

    .line 4797
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 4788
    .end local v2    # "uid":I
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4799
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3917
    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3918
    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3919
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3920
    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3921
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3922
    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3923
    return-void
.end method

.method dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 3976
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3978
    .local v0, "lruSize":I
    if-nez p3, :cond_0

    .line 3979
    const-string v1, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity lru)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3980
    const-string v1, "  "

    .local v1, "innerPrefix":Ljava/lang/String;
    goto :goto_1

    .line 3982
    .end local v1    # "innerPrefix":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 3983
    .local v1, "haveAny":Z
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3984
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3985
    .local v3, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3986
    nop

    .line 3983
    .end local v3    # "r":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3988
    .restart local v3    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x1

    .line 3991
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_2
    if-nez v1, :cond_3

    .line 3992
    const/4 v2, 0x0

    return v2

    .line 3994
    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3995
    const-string v2, "Raw LRU list (dumpsys activity lru):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3999
    .local v1, "innerPrefix":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x1

    .line 4000
    .local v2, "first":Z
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_2
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v3, v4, :cond_6

    .line 4001
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4002
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_4

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4003
    goto :goto_3

    .line 4005
    :cond_4
    if-eqz v2, :cond_5

    .line 4006
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4007
    const-string v5, "Activities:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4008
    const/4 v2, 0x0

    .line 4010
    :cond_5
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4000
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 4012
    :cond_6
    const/4 v2, 0x1

    .line 4013
    :goto_4
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lt v3, v4, :cond_9

    .line 4014
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4015
    .restart local v4    # "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_7

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4016
    goto :goto_5

    .line 4018
    :cond_7
    if-eqz v2, :cond_8

    .line 4019
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4020
    const-string v5, "Services:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4021
    const/4 v2, 0x0

    .line 4023
    :cond_8
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4013
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 4025
    :cond_9
    const/4 v2, 0x1

    .line 4026
    :goto_6
    if-ltz v3, :cond_c

    .line 4027
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4028
    .restart local v4    # "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_a

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 4029
    goto :goto_7

    .line 4031
    :cond_a
    if-eqz v2, :cond_b

    .line 4032
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4033
    const-string v5, "Other:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4034
    const/4 v2, 0x0

    .line 4036
    :cond_b
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4026
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 4038
    :cond_c
    const/4 v4, 0x1

    return v4
.end method

.method dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;
    .param p8, "inclGc"    # Z

    .line 4477
    move-object v1, p0

    move-object v10, p2

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_2

    .line 4478
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4479
    :cond_0
    const/4 v0, 0x1

    .line 4480
    .end local p3    # "needSep":Z
    .local v0, "needSep":Z
    const-string v2, "  OOM levels:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4481
    const-string v2, "SYSTEM_ADJ"

    const/16 v3, -0x384

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4482
    const-string v2, "PERSISTENT_PROC_ADJ"

    const/16 v3, -0x320

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4483
    const-string v2, "PERSISTENT_SERVICE_ADJ"

    const/16 v3, -0x2bc

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4484
    const-string v2, "FOREGROUND_APP_ADJ"

    const/4 v3, 0x0

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4485
    const-string v2, "VISIBLE_APP_ADJ"

    const/16 v3, 0x64

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4486
    const-string v2, "PERCEPTIBLE_APP_ADJ"

    const/16 v3, 0xc8

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4487
    const-string v2, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    const/16 v3, 0xe1

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4488
    const-string v2, "PERCEPTIBLE_LOW_APP_ADJ"

    const/16 v3, 0xfa

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4489
    const-string v2, "BACKUP_APP_ADJ"

    const/16 v3, 0x12c

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4490
    const-string v2, "HEAVY_WEIGHT_APP_ADJ"

    const/16 v3, 0x190

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4491
    const-string v2, "SERVICE_ADJ"

    const/16 v3, 0x1f4

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4492
    const-string v2, "HOME_APP_ADJ"

    const/16 v3, 0x258

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4493
    const-string v2, "PREVIOUS_APP_ADJ"

    const/16 v3, 0x2bc

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4494
    const-string v2, "SERVICE_B_ADJ"

    const/16 v3, 0x320

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4495
    const-string v2, "CACHED_APP_MIN_ADJ"

    const/16 v3, 0x384

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4496
    const-string v2, "CACHED_APP_MAX_ADJ"

    const/16 v3, 0x3e7

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4498
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4499
    :cond_1
    const-string v2, "  Process OOM control ("

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4500
    const-string v2, " total, non-act at "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4501
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    iget v3, v1, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4502
    const-string v2, ", non-svc at "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4503
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    iget v3, v1, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4504
    const-string v2, "):"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4505
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const-string v5, "    "

    const-string v6, "Proc"

    const-string v7, "PERS"

    const/4 v8, 0x1

    move-object v2, p2

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 4507
    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    .line 4477
    .end local v0    # "needSep":Z
    .restart local p3    # "needSep":Z
    :cond_2
    move v2, p3

    .line 4510
    .end local p3    # "needSep":Z
    .local v2, "needSep":Z
    :goto_0
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4511
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v4, p7

    :try_start_1
    invoke-virtual {v0, p2, v2, v4}, Lcom/android/server/am/AppProfiler;->dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    .line 4512
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4514
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4515
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dumpForOom(Ljava/io/PrintWriter;)V

    .line 4517
    const/4 v0, 0x1

    return v0

    .line 4512
    :catchall_0
    move-exception v0

    move-object/from16 v4, p7

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "dumpAppId"    # I

    .line 4044
    move-object v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    const/4 v0, 0x0

    .line 4045
    .local v0, "needSep":Z
    const/4 v1, 0x0

    .line 4047
    .local v1, "numPers":I
    const-string v2, "ACTIVITY MANAGER RUNNING PROCESSES (dumpsys activity processes)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4049
    if-nez p5, :cond_1

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    move v12, v1

    goto/16 :goto_5

    .line 4050
    :cond_1
    :goto_0
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 4051
    .local v2, "numOfNames":I
    const/4 v3, 0x0

    .local v3, "ip":I
    :goto_1
    if-ge v3, v2, :cond_7

    .line 4052
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4053
    .local v4, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v5, 0x0

    .local v5, "ia":I
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    .local v6, "size":I
    :goto_2
    if-ge v5, v6, :cond_6

    .line 4054
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 4055
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v11, :cond_2

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 4056
    goto :goto_4

    .line 4058
    :cond_2
    if-nez v0, :cond_3

    .line 4059
    const-string v8, "  All known processes:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4060
    const/4 v0, 0x1

    .line 4062
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "  *PERS*"

    goto :goto_3

    :cond_4
    const-string v8, "  *APP*"

    :goto_3
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4063
    const-string v8, " UID "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 4064
    const-string v8, " "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4065
    const-string v8, "    "

    invoke-virtual {v7, v10, v8}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4066
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4067
    add-int/lit8 v1, v1, 0x1

    .line 4053
    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4051
    .end local v4    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v5    # "ia":I
    .end local v6    # "size":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v12, v1

    .line 4073
    .end local v1    # "numPers":I
    .end local v2    # "numOfNames":I
    .end local v3    # "ip":I
    .local v12, "numPers":I
    :goto_5
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 4074
    const/4 v1, 0x0

    .line 4075
    .local v1, "printed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_6
    if-ge v2, v3, :cond_b

    .line 4076
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4077
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v11, :cond_8

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 4078
    goto :goto_7

    .line 4080
    :cond_8
    if-nez v1, :cond_a

    .line 4081
    if-eqz v0, :cond_9

    .line 4082
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4084
    :cond_9
    const-string v5, "  Isolated process list (sorted by uid):"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4085
    const/4 v1, 0x1

    .line 4086
    const/4 v0, 0x1

    .line 4088
    :cond_a
    const-string v5, "    Isolated #"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4089
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4075
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4093
    .end local v1    # "printed":Z
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_b
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v10, v11, v0}, Lcom/android/server/am/ActivityManagerService;->dumpActiveInstruments(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z

    move-result v13

    .line 4095
    .end local v0    # "needSep":Z
    .local v13, "needSep":Z
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4096
    const/4 v13, 0x1

    .line 4099
    :cond_c
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 4100
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-string v4, "UID states:"

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v13, v0

    .line 4104
    :cond_d
    if-eqz p5, :cond_e

    .line 4105
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    const-string v4, "UID validation:"

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UidObserverController;->dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v13, v0

    .line 4109
    :cond_e
    if-eqz v13, :cond_f

    .line 4110
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4112
    :cond_f
    const-string v0, "  "

    invoke-virtual {p0, v10, v11, v0}, Lcom/android/server/am/ProcessList;->dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4113
    const/4 v13, 0x1

    .line 4116
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_12

    .line 4117
    if-eqz v13, :cond_11

    .line 4118
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4120
    :cond_11
    invoke-virtual {p0, v10}, Lcom/android/server/am/ProcessList;->dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V

    .line 4121
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const-string v3, "    "

    const-string v4, "Proc"

    const-string v5, "PERS"

    move-object/from16 v0, p2

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 4123
    const/4 v13, 0x1

    .line 4126
    :cond_12
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move v6, v12

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->dumpOtherProcessesInfoLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;IIZ)V

    .line 4128
    return-void
.end method

.method enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 4585
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4586
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4587
    .local v1, "i":I
    const/4 v2, 0x0

    .line 4588
    .local v2, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :goto_0
    if-ltz v1, :cond_1

    .line 4589
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-object v2, v3

    .line 4590
    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_0

    .line 4594
    goto :goto_1

    .line 4596
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4599
    :cond_1
    :goto_1
    if-gez v1, :cond_4

    .line 4601
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4602
    .local v3, "num":I
    if-lez v3, :cond_2

    .line 4603
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-object v2, v4

    goto :goto_2

    .line 4608
    :cond_2
    new-instance v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;-><init>()V

    move-object v2, v4

    .line 4613
    :goto_2
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 4614
    iput p1, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 4615
    iput p2, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    .line 4616
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 4620
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4621
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4623
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4626
    .end local v3    # "num":I
    :cond_4
    monitor-exit v0

    return-object v2

    .line 4627
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "outInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"    # I

    .line 3740
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3741
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 3742
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3743
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3745
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3746
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3748
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3749
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3751
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 3752
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3753
    .local v0, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    .line 3754
    .local v2, "adj":I
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    .line 3755
    .local v3, "procState":I
    invoke-static {v3, v2, p2, p3}, Lcom/android/server/am/ProcessList;->procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v4

    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3757
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAdjTypeCode()I

    move-result v4

    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 3758
    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 3759
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 3760
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v4

    iput-wide v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 3761
    return-void
.end method

.method findAppProcessLOSP(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 8
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1583
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1584
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1585
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1586
    .local v2, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1587
    .local v3, "NA":I
    const/4 v4, 0x0

    .local v4, "ia":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 1588
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1589
    .local v5, "p":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1590
    .local v6, "thread":Landroid/app/IApplicationThread;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, p1, :cond_0

    .line 1591
    return-object v5

    .line 1587
    .end local v5    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "thread":Landroid/app/IApplicationThread;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1584
    .end local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "NA":I
    .end local v4    # "ia":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1596
    .end local v1    # "ip":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find mystery application for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1596
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const/4 v1, 0x0

    return-object v1
.end method

.method forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V
    .locals 3
    .param p1, "iterateForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 3857
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz p1, :cond_1

    .line 3858
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3859
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3858
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    goto :goto_2

    .line 3862
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 3863
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3862
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3866
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method getBlockStateForUid(Lcom/android/server/am/UidRecord;)I
    .locals 5
    .param p1, "uidRec"    # Lcom/android/server/am/UidRecord;

    .line 4814
    nop

    .line 4815
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    .line 4816
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    .line 4815
    invoke-static {v0, v1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4817
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 4819
    .local v0, "isAllowed":Z
    :goto_1
    nop

    .line 4820
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v3

    .line 4821
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    .line 4820
    invoke-static {v3, v4}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4822
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v3

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    .line 4826
    .local v3, "wasAllowed":Z
    :goto_3
    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    .line 4827
    return v2

    .line 4831
    :cond_4
    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 4832
    const/4 v1, 0x2

    return v1

    .line 4834
    :cond_5
    return v1
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .line 1421
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getIsolatedProcessesLocked(I)Ljava/util/List;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2995
    const/4 v0, 0x0

    .line 2996
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2997
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 2998
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_1

    .line 2999
    if-nez v0, :cond_0

    .line 3000
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 3002
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2996
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3005
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    return-object v0
.end method

.method getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .locals 6
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 3696
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3697
    return-object v0

    .line 3699
    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3701
    .local v1, "threadBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3702
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3703
    .local v3, "rec":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    .line 3704
    .local v4, "t":Landroid/app/IApplicationThread;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v1, :cond_1

    .line 3705
    return-object v3

    .line 3701
    .end local v3    # "rec":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "t":Landroid/app/IApplicationThread;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3708
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method getLruProcessServiceStartLOSP()I
    .locals 1

    .line 3843
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    return v0
.end method

.method getLruProcessesLOSP()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 3821
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLruProcessesLSP()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 3829
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLruSeqLOSP()I
    .locals 1

    .line 3907
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    return v0
.end method

.method getLruSizeLOSP()I
    .locals 1

    .line 3813
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMemLevel(I)J
    .locals 3
    .param p1, "adjustment"    # I

    .line 1408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1409
    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 1410
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    .line 1408
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1413
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method

.method getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 10
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .line 1569
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    .line 1570
    .local v0, "homeAppMem":J
    const/16 v2, 0x384

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1571
    .local v2, "cachedAppMem":J
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1572
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1573
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1574
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v6, v0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iput-boolean v4, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1575
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 1576
    const/16 v4, 0x1f4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 1577
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1578
    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 1579
    return-void
.end method

.method getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;
    .locals 1

    .line 3912
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    return-object v0
.end method

.method getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1549
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_3

    .line 1553
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1554
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1555
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1556
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1557
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1558
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1560
    goto :goto_1

    .line 1562
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    return-object v4

    .line 1556
    .end local v3    # "procUid":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1565
    .end local v0    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v1    # "procCount":I
    .end local v2    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 914
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 915
    .local v0, "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 916
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 917
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 918
    .local v3, "record":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isBindMountPending()Z

    move-result v4

    if-nez v4, :cond_0

    .line 919
    goto :goto_1

    .line 921
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    .line 924
    .local v4, "pid":I
    if-eqz v4, :cond_1

    .line 928
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 925
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Pending process is not started yet,retry later"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "userId":I
    throw v5

    .line 916
    .end local v3    # "record":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "pid":I
    .restart local v0    # "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "userId":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 930
    .end local v2    # "i":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 931
    return-object v0

    .line 930
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method getRunningAppProcessesLOSP(ZIZII)Ljava/util/List;
    .locals 9
    .param p1, "allUsers"    # Z
    .param p2, "userId"    # I
    .param p3, "allUids"    # Z
    .param p4, "callingUid"    # I
    .param p5, "clientTargetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 3767
    const/4 v0, 0x0

    .line 3769
    .local v0, "runList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 3770
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3771
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3772
    .local v3, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 3773
    .local v4, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    if-nez p1, :cond_0

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p2, :cond_6

    :cond_0
    if-nez p3, :cond_1

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v5, p4, :cond_1

    .line 3775
    goto/16 :goto_2

    .line 3777
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 3778
    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3780
    new-instance v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3782
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 3783
    .local v5, "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0, v2, v5, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 3784
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_2

    .line 3785
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    iput v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3786
    nop

    .line 3788
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSourceProcState()I

    move-result v6

    .line 3787
    invoke-static {v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v6

    iput v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_1

    .line 3789
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v6, :cond_3

    .line 3790
    nop

    .line 3791
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3792
    .local v6, "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v7

    .line 3793
    .local v7, "pid":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 3794
    iput v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3797
    .end local v6    # "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v7    # "pid":I
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    .line 3798
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    iput-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 3802
    :cond_4
    if-nez v0, :cond_5

    .line 3803
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 3805
    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3769
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v4    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v5    # "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 3808
    .end local v1    # "i":I
    :cond_7
    return-object v0
.end method

.method getUidProcStateLOSP(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 4761
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 4762
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v0, :cond_0

    const/16 v1, 0x14

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    :goto_0
    return v1
.end method

.method getUidProcessCapabilityLOSP(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 4771
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 4772
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    :goto_0
    return v1
.end method

.method getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;
    .locals 1
    .param p1, "uid"    # I

    .line 4778
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method handleAllTrustStorageUpdateLOSP()V
    .locals 6

    .line 3216
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3217
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3218
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3219
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_0

    .line 3221
    :try_start_0
    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3225
    goto :goto_1

    .line 3222
    :catch_0
    move-exception v3

    .line 3223
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to handle trust storage update for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3228
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method handleDyingAppDeathLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I

    .line 4978
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 4979
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 4981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got obituary of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 4983
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 4985
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 4986
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 4987
    const/4 v0, 0x1

    return v0

    .line 4989
    :cond_0
    return v1
.end method

.method handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4999
    monitor-enter p1

    .line 5000
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 5004
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5005
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 5006
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5010
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 5011
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 5013
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 5014
    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 5016
    :cond_1
    monitor-exit p1

    .line 5017
    const/4 v0, 0x1

    return v0

    .line 5016
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .locals 20
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I
    .param p3, "usingWrapper"    # Z
    .param p4, "expectedStartSeq"    # J
    .param p6, "procAttached"    # Z

    .line 2631
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-wide/from16 v13, p4

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2632
    invoke-direct {v1, v2, v13, v14}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v15

    .line 2633
    .local v15, "reason":Ljava/lang/String;
    const/4 v10, 0x0

    if-eqz v15, :cond_0

    .line 2634
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " start not valid, killing pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2638
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2639
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/Process;->killProcessGroup(II)I

    .line 2640
    const/16 v0, 0xd

    invoke-virtual {v1, v2, v0, v0, v15}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 2642
    return v10

    .line 2644
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 2645
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: done updating battery stats"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2647
    const/16 v0, 0x753e

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 2648
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x1

    aput-object v4, v3, v16

    const/4 v4, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 2649
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2650
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, ""

    :goto_0
    aput-object v5, v3, v4

    .line 2647
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2653
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2654
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2653
    move/from16 v9, p2

    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2657
    goto :goto_1

    .line 2655
    :catch_0
    move-exception v0

    .line 2659
    :goto_1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v11}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 2661
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: building log message"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2662
    iget-object v9, v1, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2663
    .local v9, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2664
    const-string v0, "Start proc "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2666
    const/16 v0, 0x3a

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2667
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2668
    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2669
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2670
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2671
    const-string v0, " ["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2672
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2673
    const-string v0, "]"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2675
    :cond_2
    const-string v0, " for "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2676
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2678
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2679
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2681
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "ActivityManager"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2682
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2683
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2684
    invoke-virtual {v2, v12}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2685
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2686
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2687
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: starting to update pids map"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2689
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    .line 2690
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v10, v0

    .line 2691
    .local v10, "oldApp":Lcom/android/server/am/ProcessRecord;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2693
    if-eqz v10, :cond_4

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_4

    .line 2695
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleProcessStartedLocked process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startSeq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2696
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " belongs to another existing app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startSeq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2695
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v0, 0x1

    const/16 v17, 0x0

    move-object v4, v10

    move/from16 v5, p2

    move-object/from16 v18, v9

    .end local v9    # "buf":Ljava/lang/StringBuilder;
    .local v18, "buf":Ljava/lang/StringBuilder;
    move v9, v0

    move-object/from16 v19, v10

    .end local v10    # "oldApp":Lcom/android/server/am/ProcessRecord;
    .local v19, "oldApp":Lcom/android/server/am/ProcessRecord;
    move/from16 v10, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;IZZIZZ)Z

    goto :goto_2

    .line 2693
    .end local v18    # "buf":Ljava/lang/StringBuilder;
    .end local v19    # "oldApp":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "buf":Ljava/lang/StringBuilder;
    .restart local v10    # "oldApp":Lcom/android/server/am/ProcessRecord;
    :cond_4
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 2703
    .end local v9    # "buf":Ljava/lang/StringBuilder;
    .end local v10    # "oldApp":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "buf":Ljava/lang/StringBuilder;
    .restart local v19    # "oldApp":Lcom/android/server/am/ProcessRecord;
    :goto_2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2704
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    .line 2705
    if-nez p6, :cond_6

    .line 2706
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2707
    .local v0, "msg":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2708
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v12, :cond_5

    .line 2709
    const-wide/32 v5, 0x124f80

    goto :goto_3

    :cond_5
    sget v5, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v5, v5

    .line 2708
    :goto_3
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2711
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2712
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: done updating pids map"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2713
    return v16

    .line 2711
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 2691
    .end local v18    # "buf":Ljava/lang/StringBuilder;
    .end local v19    # "oldApp":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "buf":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v9

    .end local v9    # "buf":Ljava/lang/StringBuilder;
    .restart local v18    # "buf":Ljava/lang/StringBuilder;
    :goto_4
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 2686
    .end local v18    # "buf":Ljava/lang/StringBuilder;
    .restart local v9    # "buf":Ljava/lang/StringBuilder;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v9

    .end local v9    # "buf":Ljava/lang/StringBuilder;
    .restart local v18    # "buf":Ljava/lang/StringBuilder;
    :goto_5
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5
.end method

.method haveBackgroundProcessLOSP()Z
    .locals 5

    .line 3713
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3714
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3715
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3716
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 3717
    return v1

    .line 3713
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3720
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V
    .locals 10
    .param p1, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 4845
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerService;->mWaitForNetworkTimeoutMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 4846
    return-void

    .line 4849
    :cond_0
    const/4 v0, 0x0

    .line 4850
    .local v0, "blockingUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_9

    .line 4851
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 4853
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$Injector;->isNetworkRestrictedForUid(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4854
    goto :goto_2

    .line 4856
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    if-nez v4, :cond_2

    .line 4857
    goto :goto_2

    .line 4860
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 4861
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 4862
    goto :goto_2

    .line 4864
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/UidRecord;)I

    move-result v4

    .line 4867
    .local v4, "blockState":I
    if-nez v4, :cond_4

    .line 4868
    goto :goto_2

    .line 4870
    :cond_4
    iget-object v5, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4871
    :try_start_0
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    iput-wide v6, v3, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    .line 4872
    if-ne v4, v2, :cond_6

    .line 4873
    if-nez v0, :cond_5

    .line 4874
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 4876
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4882
    :cond_6
    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->waitingForNetwork:Z

    if-eqz v6, :cond_7

    .line 4883
    iget-object v6, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 4886
    :cond_7
    :goto_1
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4850
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v4    # "blockState":I
    :cond_8
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4890
    .end local v1    # "i":I
    :cond_9
    if-nez v0, :cond_a

    .line 4891
    return-void

    .line 4894
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_d

    .line 4895
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4896
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 4897
    goto :goto_4

    .line 4899
    :cond_b
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 4900
    .local v3, "thread":Landroid/app/IApplicationThread;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v3, :cond_c

    .line 4901
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    .line 4907
    .local v4, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v4, :cond_c

    .line 4908
    :try_start_1
    iget-wide v5, v4, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-interface {v3, v5, v6}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 4910
    :catch_0
    move-exception v5

    nop

    .line 4894
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "thread":Landroid/app/IApplicationThread;
    .end local v4    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 4914
    .end local v1    # "i":I
    :cond_d
    return-void
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p3, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;

    .line 796
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 797
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 798
    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 799
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 802
    nop

    .line 803
    const-string/jumbo v0, "persist.zygote.app_data_isolation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 804
    const-string/jumbo v0, "persist.sys.vold_app_data_isolation_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    .line 807
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    .line 809
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez v0, :cond_1

    .line 810
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v2, 0xa

    const-string v3, "ActivityManager:kill"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 812
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 813
    new-instance v0, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 814
    new-instance v0, Lcom/android/server/am/LmkdConnection;

    sget-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessList$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 882
    invoke-direct {p0}, Lcom/android/server/am/ProcessList;->createSystemServerSocketForZygote()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 883
    if-eqz v0, :cond_0

    .line 884
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$KillHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 885
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 884
    invoke-virtual {v0, v2, v1, v3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 889
    new-instance v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 891
    :cond_1
    return-void
.end method

.method isInLruListLOSP(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3902
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method killAllBackgroundProcessesExceptLSP(II)V
    .locals 12
    .param p1, "minTargetSdk"    # I
    .param p2, "maxProcState"    # I

    .line 3135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3136
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3137
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 3138
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3139
    .local v3, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 3140
    .local v4, "NA":I
    const/4 v5, 0x0

    .local v5, "ia":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 3141
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 3142
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_1

    if-ltz p1, :cond_0

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v7, p1, :cond_2

    :cond_0
    if-ltz p2, :cond_1

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3144
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v7

    if-le v7, p2, :cond_2

    .line 3145
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3140
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3137
    .end local v3    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "NA":I
    .end local v5    # "ia":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3150
    .end local v2    # "ip":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3151
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 3152
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xd

    const/16 v10, 0xa

    const-string/jumbo v11, "kill all background except"

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 3151
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3155
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .locals 5
    .param p1, "appZygote"    # Landroid/os/AppZygote;
    .param p2, "force"    # Z

    .line 2172
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2173
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2174
    .local v1, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2176
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 2177
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2179
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    .line 2181
    :cond_1
    return-void
.end method

.method killAppZygotesLocked(Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "force"    # Z

    .line 2761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2762
    .local v0, "zygotesToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/AppZygote;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 2763
    .local v2, "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2764
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2765
    .local v4, "appZygoteUid":I
    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_0

    .line 2766
    goto :goto_2

    .line 2768
    :cond_0
    if-ltz p2, :cond_1

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 2769
    goto :goto_2

    .line 2771
    :cond_1
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AppZygote;

    .line 2772
    .local v5, "appZygote":Landroid/os/AppZygote;
    if-eqz p1, :cond_2

    .line 2773
    invoke-virtual {v5}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2774
    goto :goto_2

    .line 2776
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2763
    .end local v4    # "appZygoteUid":I
    .end local v5    # "appZygote":Landroid/os/AppZygote;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2778
    .end local v2    # "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    .end local v3    # "i":I
    :cond_3
    goto :goto_0

    .line 2779
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 2780
    .local v2, "appZygote":Landroid/os/AppZygote;
    invoke-virtual {p0, v2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 2781
    .end local v2    # "appZygote":Landroid/os/AppZygote;
    goto :goto_3

    .line 2782
    :cond_5
    return-void
.end method

.method killPackageProcessesLSP(Ljava/lang/String;IIIIILjava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "minOomAdj"    # I
    .param p5, "reasonCode"    # I
    .param p6, "subReason"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 2751
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZIILjava/lang/String;)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "minOomAdj"    # I
    .param p5, "callerWillRestart"    # Z
    .param p6, "allowRestart"    # Z
    .param p7, "doit"    # Z
    .param p8, "evenPersistent"    # Z
    .param p9, "setRemoved"    # Z
    .param p10, "reasonCode"    # I
    .param p11, "subReason"    # I
    .param p12, "reason"    # Ljava/lang/String;

    .line 2789
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 2794
    .local v11, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 2795
    .local v12, "NP":I
    const/4 v0, 0x0

    .local v0, "ip":I
    :goto_0
    const/4 v14, 0x1

    if-ge v0, v12, :cond_d

    .line 2796
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2797
    .local v1, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2798
    .local v2, "NA":I
    const/4 v3, 0x0

    .local v3, "ia":I
    :goto_1
    if-ge v3, v2, :cond_c

    .line 2799
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2800
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p8, :cond_0

    .line 2802
    move/from16 v15, p4

    goto/16 :goto_3

    .line 2804
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2805
    if-eqz p7, :cond_1

    .line 2806
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v15, p4

    goto/16 :goto_3

    .line 2805
    :cond_1
    move/from16 v15, p4

    goto/16 :goto_3

    .line 2812
    :cond_2
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    move/from16 v15, p4

    if-ge v5, v15, :cond_3

    .line 2818
    goto :goto_3

    .line 2823
    :cond_3
    const/4 v5, -0x1

    if-nez v8, :cond_5

    .line 2824
    if-eq v10, v5, :cond_4

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, v10, :cond_4

    .line 2825
    goto :goto_3

    .line 2827
    :cond_4
    if-ltz v9, :cond_9

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, v9, :cond_9

    .line 2828
    goto :goto_3

    .line 2834
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 2835
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v14

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 2836
    .local v6, "isDep":Z
    :goto_2
    if-nez v6, :cond_7

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v13, v9, :cond_7

    .line 2837
    goto :goto_3

    .line 2839
    :cond_7
    if-eq v10, v5, :cond_8

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, v10, :cond_8

    .line 2840
    goto :goto_3

    .line 2842
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v6, :cond_9

    .line 2843
    goto :goto_3

    .line 2848
    .end local v6    # "isDep":Z
    :cond_9
    if-nez p7, :cond_a

    .line 2849
    return v14

    .line 2851
    :cond_a
    if-eqz p9, :cond_b

    .line 2852
    invoke-virtual {v4, v14}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 2854
    :cond_b
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2798
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_c
    move/from16 v15, p4

    .line 2795
    .end local v1    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2    # "NA":I
    .end local v3    # "ia":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    move/from16 v15, p4

    .line 2858
    .end local v0    # "ip":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2859
    .local v13, "N":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_4
    if-ge v6, v13, :cond_e

    .line 2860
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p10

    move/from16 v5, p11

    move/from16 v16, v6

    .end local v6    # "i":I
    .local v16, "i":I
    move-object/from16 v6, p12

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 2859
    add-int/lit8 v6, v16, 0x1

    .end local v16    # "i":I
    .restart local v6    # "i":I
    goto :goto_4

    :cond_e
    move/from16 v16, v6

    .line 2863
    .end local v6    # "i":I
    const/4 v0, 0x0

    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(Ljava/lang/String;IIZ)V

    .line 2864
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_processEnd"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2865
    if-lez v13, :cond_f

    goto :goto_5

    :cond_f
    move v14, v0

    :goto_5
    return v14
.end method

.method killProcessesWhenImperceptible([ILjava/lang/String;I)V
    .locals 5
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "requester"    # I

    .line 5080
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5081
    return-void

    .line 5084
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5086
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 5087
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5088
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 5089
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5090
    if-eqz v3, :cond_1

    .line 5091
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5086
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5089
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "pids":[I
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "requester":I
    :try_start_4
    throw v3

    .line 5094
    .end local v1    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "pids":[I
    .restart local p2    # "reason":Ljava/lang/String;
    .restart local p3    # "requester":I
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5095
    return-void

    .line 5094
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "gids"    # [I
    .param p4, "runtimeFlags"    # I
    .param p5, "zygotePolicyFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "requiredAbi"    # Ljava/lang/String;
    .param p8, "instructionSet"    # Ljava/lang/String;
    .param p9, "invokeWith"    # Ljava/lang/String;
    .param p10, "startSeq"    # J

    .line 2076
    invoke-direct/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "customProcess"    # Ljava/lang/String;
    .param p3, "isolated"    # Z
    .param p4, "isolatedUid"    # I
    .param p5, "hostingRecord"    # Lcom/android/server/am/HostingRecord;

    .line 3011
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3012
    .local v0, "proc":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3013
    .local v1, "userId":I
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3014
    .local v2, "uid":I
    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 3015
    if-nez p4, :cond_3

    .line 3016
    invoke-direct {p0, p1, p5}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v4

    .line 3017
    .local v4, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 3018
    return-object v5

    .line 3020
    :cond_1
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v2

    .line 3021
    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 3022
    return-object v5

    .line 3024
    .end local v4    # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    :cond_2
    goto :goto_1

    .line 3027
    :cond_3
    move v2, p4

    .line 3029
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v4, v4, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->addIsolatedUid(II)V

    .line 3030
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 3038
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    .line 3039
    const/16 v4, 0x2b

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 3042
    :cond_4
    new-instance v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, p1, v0, v2}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    .line 3043
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3045
    .local v5, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v6, :cond_5

    if-nez v1, :cond_5

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v7, 0x9

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5

    .line 3049
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3050
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3051
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 3052
    const/16 v3, -0x320

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    .line 3054
    :cond_5
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 3057
    const/16 v3, -0x2bc

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    .line 3059
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3060
    return-object v4
.end method

.method noteAppKill(IIIILjava/lang/String;)V
    .locals 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "subReason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .line 5065
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 5066
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 5067
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5068
    if-eqz v1, :cond_0

    iget v0, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5070
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5071
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5073
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(IIIILjava/lang/String;)V

    .line 5074
    return-void

    .line 5067
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # I
    .param p3, "subReason"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .line 5048
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5050
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5051
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5053
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 5054
    return-void
.end method

.method noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5029
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->processDied(Ljava/lang/String;I)V

    .line 5030
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5032
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5033
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5035
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V

    .line 5036
    return-void
.end method

.method public onLmkdConnect(Ljava/io/OutputStream;)Z
    .locals 7
    .param p1, "ostream"    # Ljava/io/OutputStream;

    .line 1491
    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1492
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1493
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1494
    iget-boolean v3, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1496
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    .line 1497
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1499
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v3, v3, v0

    mul-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x1000

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1500
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1502
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1505
    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 1506
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1507
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1508
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 1511
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1512
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1513
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1514
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    nop

    .line 1518
    return v4

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "ex":Ljava/io/IOException;
    return v1
.end method

.method onSystemReady()V
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppExitInfoTracker;->onSystemReady()V

    .line 895
    return-void
.end method

.method registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IProcessObserver;

    .line 4521
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 4522
    return-void
.end method

.method removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2718
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2719
    .local v0, "lrui":I
    const/4 v1, 0x1

    if-ltz v0, :cond_5

    .line 2720
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2721
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2722
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2723
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2725
    :cond_0
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-lez v3, :cond_1

    .line 2727
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2728
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2729
    const/16 v3, 0xd

    const/16 v4, 0x10

    const-string v5, "hasn\'t been killed"

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    goto :goto_0

    .line 2732
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2736
    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v0, v3, :cond_3

    .line 2737
    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2739
    :cond_3
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v0, v3, :cond_4

    .line 2740
    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2742
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2743
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 2745
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/am/ActivityManagerService;->removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2746
    return-void
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z
    .locals 23
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "reasonCode"    # I
    .param p5, "subReason"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .line 2878
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2879
    .local v8, "name":Ljava/lang/String;
    iget v9, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2883
    .local v9, "uid":I
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 2884
    .local v10, "old":Lcom/android/server/am/ProcessRecord;
    const/4 v1, 0x0

    if-eq v10, v7, :cond_0

    .line 2886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring remove of inactive process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    return v1

    .line 2889
    :cond_0
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2890
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 2892
    const/4 v2, 0x0

    .line 2893
    .local v2, "needRestart":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v11

    .line 2894
    .local v11, "pid":I
    if-lez v11, :cond_1

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v11, v3, :cond_2

    :cond_1
    if-nez v11, :cond_8

    .line 2895
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2896
    :cond_2
    if-lez v11, :cond_3

    .line 2897
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v11, v7}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)V

    .line 2898
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 2899
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2900
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 2901
    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_3

    .line 2902
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 2903
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 2906
    :cond_3
    const/4 v1, 0x0

    .line 2907
    .local v1, "willRestart":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_5

    .line 2908
    if-nez p2, :cond_4

    .line 2909
    const/4 v1, 0x1

    move v12, v1

    move v13, v2

    goto :goto_0

    .line 2911
    :cond_4
    const/4 v2, 0x1

    move v12, v1

    move v13, v2

    goto :goto_0

    .line 2914
    :cond_5
    move v12, v1

    move v13, v2

    .end local v1    # "willRestart":Z
    .end local v2    # "needRestart":Z
    .local v12, "willRestart":Z
    .local v13, "needRestart":Z
    :goto_0
    const/4 v1, 0x1

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v6, p6

    invoke-virtual {v7, v6, v14, v15, v1}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 2915
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    move/from16 v5, p3

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;IZZZ)V

    .line 2917
    if-eqz v12, :cond_6

    .line 2918
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2919
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2922
    .end local v12    # "willRestart":Z
    :cond_6
    move v2, v13

    goto :goto_2

    .line 2895
    .end local v13    # "needRestart":Z
    .restart local v2    # "needRestart":Z
    :cond_7
    move/from16 v14, p4

    move/from16 v15, p5

    goto :goto_1

    .line 2894
    :cond_8
    move/from16 v14, p4

    move/from16 v15, p5

    .line 2923
    :goto_1
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2926
    :goto_2
    return v2
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "reasonCode"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 2871
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3065
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "expecting"    # Lcom/android/server/am/ProcessRecord;

    .line 3071
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3072
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3073
    .local v1, "record":Lcom/android/server/am/ProcessRecord;
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3077
    if-eqz p3, :cond_1

    if-ne v0, p3, :cond_2

    .line 3078
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3080
    :cond_2
    if-eqz v1, :cond_4

    .line 3081
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 3082
    .local v3, "uidRecord":Lcom/android/server/am/UidRecord;
    if-eqz v3, :cond_4

    .line 3083
    invoke-virtual {v3, v1}, Lcom/android/server/am/UidRecord;->removeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3084
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v4

    if-nez v4, :cond_3

    .line 3089
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 3091
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 3092
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 3093
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/FgsTempAllowList;->removeUid(I)V

    .line 3094
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 3097
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3100
    .end local v3    # "uidRecord":Lcom/android/server/am/UidRecord;
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3101
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3102
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 3104
    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz v2, :cond_5

    .line 3105
    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3108
    :cond_5
    return-object v0

    .line 3100
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v3
.end method

.method scheduleDispatchProcessDiedLocked(II)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 4632
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4633
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4634
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 4635
    .local v2, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    if-lez p1, :cond_0

    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_0

    .line 4636
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4637
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4633
    .end local v2    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4640
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4641
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4642
    monitor-exit v0

    .line 4643
    return-void

    .line 4642
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;
    .locals 4
    .param p1, "iterateForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/function/Function<",
            "Lcom/android/server/am/ProcessRecord;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 3882
    .local p2, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/am/ProcessRecord;TR;>;"
    if-eqz p1, :cond_2

    .line 3883
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3885
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "r":Ljava/lang/Object;, "TR;"
    if-eqz v2, :cond_0

    .line 3886
    return-object v3

    .line 3883
    .end local v3    # "r":Ljava/lang/Object;, "TR;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    goto :goto_2

    .line 3890
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 3892
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;, "TR;"
    if-eqz v1, :cond_3

    .line 3893
    return-object v2

    .line 3890
    .end local v2    # "r":Ljava/lang/Object;, "TR;"
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3897
    .end local v0    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .locals 7
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4730
    const/4 v0, 0x0

    .line 4731
    .local v0, "foundProcess":Z
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 4732
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4733
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 4734
    .local v3, "thread":Landroid/app/IApplicationThread;
    if-eqz v3, :cond_3

    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p3, :cond_3

    .line 4736
    :cond_0
    :try_start_0
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    .local v4, "index":I
    :goto_1
    if-ltz v4, :cond_2

    if-nez v0, :cond_2

    .line 4737
    aget-object v5, p2, v4

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4738
    const/4 v0, 0x1

    .line 4736
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4741
    .end local v4    # "index":I
    :cond_2
    invoke-interface {v3, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4743
    goto :goto_2

    .line 4742
    :catch_0
    move-exception v4

    .line 4731
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "thread":Landroid/app/IApplicationThread;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4747
    .end local v1    # "i":I
    :cond_4
    if-nez v0, :cond_5

    .line 4749
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4751
    goto :goto_3

    .line 4750
    :catch_1
    move-exception v1

    .line 4753
    :cond_5
    :goto_3
    return-void
.end method

.method setAllHttpProxy()V
    .locals 8

    .line 3179
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3180
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3181
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3182
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 3186
    .local v3, "thread":Landroid/app/IApplicationThread;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_0

    if-eqz v3, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 3188
    :try_start_1
    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3192
    goto :goto_1

    .line 3189
    :catch_0
    move-exception v4

    .line 3190
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to update http proxy for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "thread":Landroid/app/IApplicationThread;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3195
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3196
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 3197
    return-void

    .line 3195
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method setLruProcessServiceStartLSP(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 3838
    iput p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3839
    return-void
.end method

.method startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .locals 16
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "intentFlags"    # I
    .param p5, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p6, "zygotePolicyFlags"    # I
    .param p7, "allowWhileBooting"    # Z
    .param p8, "isolated"    # Z
    .param p9, "isolatedUid"    # I
    .param p10, "abiOverride"    # Ljava/lang/String;
    .param p11, "entryPoint"    # Ljava/lang/String;
    .param p12, "entryPointArgs"    # [Ljava/lang/String;
    .param p13, "crashHandler"    # Ljava/lang/Runnable;

    .line 2445
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2447
    .local v10, "startTime":J
    const/4 v12, 0x0

    if-nez v9, :cond_1

    .line 2448
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7, v0}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2449
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v1, "startProcess: after getProcessRecord"

    invoke-direct {v6, v10, v11, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2451
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_0

    .line 2454
    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v7, v2}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2457
    return-object v12

    .line 2466
    :cond_0
    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v7, v2}, Lcom/android/server/am/AppErrors;->resetProcessCrashTime(Ljava/lang/String;I)V

    .line 2467
    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v7, v2}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2468
    const/16 v1, 0x7540

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2469
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v5, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 2468
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2471
    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v7, v2}, Lcom/android/server/am/AppErrors;->clearBadProcess(Ljava/lang/String;I)V

    .line 2472
    if-eqz v0, :cond_2

    .line 2473
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    goto :goto_0

    .line 2479
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v0, 0x0

    .line 2492
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 2493
    .local v1, "predecessor":Lcom/android/server/am/ProcessRecord;
    const-string v13, "ActivityManager"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    if-lez v2, :cond_7

    .line 2494
    if-nez p3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-nez v2, :cond_5

    .line 2499
    :cond_4
    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v3, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2500
    const-string/jumbo v2, "startProcess: done, added package to proc"

    invoke-direct {v6, v10, v11, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2501
    return-object v0

    .line 2507
    :cond_5
    const-string/jumbo v2, "startProcess: bad proc running, killing"

    invoke-direct {v6, v10, v11, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2508
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2509
    const-string/jumbo v2, "startProcess: done killing old proc"

    invoke-direct {v6, v10, v11, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2511
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    const-string v3, " is attached to a previous process"

    if-nez v2, :cond_6

    .line 2513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2515
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    :goto_1
    move-object v1, v0

    .line 2520
    const/4 v0, 0x0

    move-object v14, v0

    move-object v15, v1

    goto :goto_2

    .line 2521
    :cond_7
    if-nez v9, :cond_a

    .line 2524
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2525
    if-eqz v1, :cond_9

    .line 2526
    if-eqz v0, :cond_8

    .line 2527
    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2528
    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 2530
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is attached to a previous process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2530
    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    :cond_9
    move-object v14, v0

    move-object v15, v1

    goto :goto_2

    .line 2521
    :cond_a
    move-object v14, v0

    move-object v15, v1

    .line 2535
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "predecessor":Lcom/android/server/am/ProcessRecord;
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    .local v15, "predecessor":Lcom/android/server/am/ProcessRecord;
    :goto_2
    if-nez v14, :cond_d

    .line 2536
    const-string/jumbo v0, "startProcess: creating new process record"

    invoke-direct {v6, v10, v11, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2537
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    .line 2538
    if-nez v14, :cond_b

    .line 2539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed making new process record for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isolated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    return-object v12

    .line 2543
    :cond_b
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashHandler(Ljava/lang/Runnable;)V

    .line 2544
    move-object/from16 v0, p11

    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPoint(Ljava/lang/String;)V

    .line 2545
    move-object/from16 v2, p12

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPointArgs([Ljava/lang/String;)V

    .line 2546
    if-eqz v15, :cond_c

    .line 2547
    iput-object v15, v14, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2548
    iput-object v14, v15, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 2550
    :cond_c
    const-string/jumbo v3, "startProcess: done creating new process record"

    invoke-direct {v6, v10, v11, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    goto :goto_3

    .line 2553
    :cond_d
    move-object/from16 v0, p11

    move-object/from16 v2, p12

    move-object/from16 v1, p13

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v4, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v13, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v14, v3, v4, v5, v13}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2554
    const-string/jumbo v3, "startProcess: added package to existing proc"

    invoke-direct {v6, v10, v11, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2559
    :goto_3
    iget-object v3, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v3, :cond_f

    iget-object v3, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2560
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_f

    if-nez p7, :cond_f

    .line 2562
    iget-object v3, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2563
    iget-object v3, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2567
    :cond_e
    const-string/jumbo v3, "startProcess: returning with proc on hold"

    invoke-direct {v6, v10, v11, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2568
    return-object v14

    .line 2571
    :cond_f
    const-string/jumbo v3, "startProcess: stepping in to startProcess"

    invoke-direct {v6, v10, v11, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2572
    nop

    .line 2573
    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p10

    invoke-virtual {v6, v14, v3, v4, v5}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    move-result v13

    .line 2574
    .local v13, "success":Z
    const-string/jumbo v12, "startProcess: done starting proc!"

    invoke-direct {v6, v10, v11, v12}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2575
    if-eqz v13, :cond_10

    move-object v12, v14

    goto :goto_4

    :cond_10
    const/4 v12, 0x0

    :goto_4
    return-object v12
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I

    .line 2429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    .line 2430
    return-void
.end method

.method startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 29
    .param p1, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "zygotePolicyFlags"    # I
    .param p8, "mountExternal"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "requiredAbi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "startTime"    # J

    .line 2048
    move-object/from16 v14, p0

    move-object/from16 v15, p3

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2049
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 2050
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2051
    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setKilledByAm(Z)V

    .line 2052
    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setKilled(Z)V

    .line 2053
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2054
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2055
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startProcessLocked processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with non-zero startSeq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2055
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2059
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startProcessLocked processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with non-zero pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2059
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2063
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_2

    .line 2064
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/compat/PlatformCompat;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2066
    :cond_2
    iget-wide v0, v14, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, v14, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    move-wide v10, v0

    .line 2067
    .local v10, "startSeq":J
    invoke-virtual {v15, v10, v11}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    .line 2068
    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p9

    move-wide/from16 v5, p13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V

    .line 2069
    if-nez p12, :cond_4

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2070
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v12

    .line 2069
    :goto_1
    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2071
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v10, v11, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2073
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_5

    .line 2076
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-wide/from16 v16, v10

    .end local v10    # "startSeq":J
    .local v16, "startSeq":J
    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v18, v12

    move-object v14, v13

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2079
    return v18

    .line 2082
    .end local v16    # "startSeq":J
    .restart local v10    # "startSeq":J
    :cond_5
    move-wide/from16 v16, v10

    move/from16 v18, v12

    .end local v10    # "startSeq":J
    .restart local v16    # "startSeq":J
    :try_start_1
    invoke-direct/range {p0 .. p14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 2086
    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2094
    move-object/from16 v2, p0

    .end local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_2

    .line 2088
    :catch_0
    move-exception v0

    .line 2089
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure starting process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2091
    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2092
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v28, "start failure"

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move/from16 v27, v4

    invoke-virtual/range {v19 .. v28}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2095
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_6

    move/from16 v12, v18

    goto :goto_3

    :cond_6
    move v12, v8

    :goto_3
    return v12

    .line 2053
    .end local v16    # "startSeq":J
    :catchall_0
    move-exception v0

    move-object v2, v14

    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I
    .param p4, "abiOverride"    # Ljava/lang/String;

    .line 2435
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z
    .locals 31
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I
    .param p4, "disableHiddenApiChecks"    # Z
    .param p5, "disableTestApiChecks"    # Z
    .param p6, "abiOverride"    # Ljava/lang/String;

    .line 1790
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1791
    return v1

    .line 1793
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1794
    .local v12, "startTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v11, 0x0

    if-lez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v2, :cond_1

    .line 1795
    const-string/jumbo v0, "startProcess: removing from pids map"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1796
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v2, v15}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)V

    .line 1797
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 1798
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1799
    const-string/jumbo v0, "startProcess: done removing from pids map"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1800
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 1801
    const-wide/16 v2, 0x0

    invoke-virtual {v15, v2, v3}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    .line 1804
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 1805
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 1810
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1812
    const-string/jumbo v0, "startProcess: starting to update cpu stats"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1813
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1814
    const-string/jumbo v0, "startProcess: done updating cpu stats"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1817
    :try_start_0
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_9

    move v9, v0

    .line 1819
    .local v9, "userId":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2, v9}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9

    .line 1822
    nop

    .line 1824
    :try_start_2
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    move v2, v0

    .line 1825
    .local v2, "uid":I
    const/4 v3, 0x0

    .line 1826
    .local v3, "gids":[I
    const/4 v4, 0x0

    .line 1827
    .local v4, "mountExternal":I
    const/4 v5, 0x0

    .line 1828
    .local v5, "externalStorageAccess":Z
    iget-boolean v0, v15, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_9

    if-nez v0, :cond_5

    .line 1829
    const/4 v6, 0x0

    .line 1831
    .local v6, "permGids":[I
    :try_start_3
    const-string/jumbo v0, "startProcess: getting gids from package manager"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1832
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1833
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/high16 v8, 0x10000000

    iget v10, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v0, v7, v8, v10}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;II)[I

    move-result-object v7

    move-object v6, v7

    .line 1835
    const-class v7, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManagerInternal;

    .line 1837
    .local v7, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v8

    move v4, v8

    .line 1839
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/os/storage/StorageManagerInternal;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v8

    move v5, v8

    .line 1841
    const-string v8, "android.permission.INSTALL_PACKAGES"

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8, v10, v9}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_2

    .line 1844
    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is exempt from freezer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeExempt(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1849
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_2
    nop

    .line 1854
    :try_start_5
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v0, :cond_4

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v0, v0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v0, :cond_4

    .line 1855
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v0, v0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1856
    iget-object v7, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v8, v8, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 1857
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget v10, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1856
    invoke-virtual {v7, v8, v10}, Landroid/content/pm/PackageManagerInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v7

    .line 1858
    .local v7, "denyGids":[I
    if-eqz v7, :cond_3

    .line 1859
    array-length v8, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_3

    aget v11, v7, v10

    .line 1860
    .local v11, "gid":I
    invoke-static {v6, v11}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v17

    move-object/from16 v6, v17

    .line 1859
    .end local v11    # "gid":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1855
    .end local v7    # "denyGids":[I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1866
    .end local v0    # "i":I
    :cond_4
    invoke-direct {v14, v4, v2, v6, v5}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(II[IZ)[I

    move-result-object v0

    move-object v3, v0

    move-object v11, v3

    move v8, v4

    move/from16 v17, v5

    goto :goto_2

    .line 2028
    .end local v2    # "uid":I
    .end local v3    # "gids":[I
    .end local v4    # "mountExternal":I
    .end local v5    # "externalStorageAccess":Z
    .end local v6    # "permGids":[I
    .end local v9    # "userId":I
    :catch_0
    move-exception v0

    move/from16 v28, v11

    move-wide/from16 v29, v12

    goto/16 :goto_f

    .line 1847
    .restart local v2    # "uid":I
    .restart local v3    # "gids":[I
    .restart local v4    # "mountExternal":I
    .restart local v5    # "externalStorageAccess":Z
    .restart local v6    # "permGids":[I
    .restart local v9    # "userId":I
    :catch_1
    move-exception v0

    .line 1848
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v12    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2028
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "uid":I
    .end local v3    # "gids":[I
    .end local v4    # "mountExternal":I
    .end local v5    # "externalStorageAccess":Z
    .end local v6    # "permGids":[I
    .end local v9    # "userId":I
    .restart local v12    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "abiOverride":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-wide/from16 v29, v12

    const/16 v28, 0x0

    goto/16 :goto_f

    .line 1828
    .restart local v2    # "uid":I
    .restart local v3    # "gids":[I
    .restart local v4    # "mountExternal":I
    .restart local v5    # "externalStorageAccess":Z
    .restart local v9    # "userId":I
    :cond_5
    move-object v11, v3

    move v8, v4

    move/from16 v17, v5

    .line 1868
    .end local v3    # "gids":[I
    .end local v4    # "mountExternal":I
    .end local v5    # "externalStorageAccess":Z
    .local v8, "mountExternal":I
    .local v11, "gids":[I
    .local v17, "externalStorageAccess":Z
    :goto_2
    :try_start_6
    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setMountMode(I)V

    .line 1869
    const-string/jumbo v0, "startProcess: building args"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1870
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1871
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_3

    .line 1870
    :cond_6
    move/from16 v18, v2

    .line 1873
    .end local v2    # "uid":I
    .local v18, "uid":I
    :goto_3
    const/4 v0, 0x0

    .line 1874
    .local v0, "runtimeFlags":I
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    .line 1875
    or-int/lit8 v0, v0, 0x1

    .line 1876
    or-int/lit16 v0, v0, 0x100

    .line 1879
    or-int/lit8 v0, v0, 0x2

    .line 1882
    :try_start_7
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "art_verifier_verify_debuggable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    .line 1884
    or-int/lit16 v0, v0, 0x200

    .line 1885
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": ART verification disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1890
    :cond_7
    :try_start_8
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_8

    :try_start_9
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    if-eqz v2, :cond_9

    .line 1891
    :cond_8
    or-int/lit8 v0, v0, 0x8

    .line 1893
    :cond_9
    :try_start_a
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    .line 1894
    const v2, 0x8000

    or-int/2addr v0, v2

    .line 1896
    :cond_a
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 1897
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 1899
    :cond_b
    const-string v1, "1"

    const-string v2, "debug.checkjni"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1900
    or-int/lit8 v0, v0, 0x2

    .line 1902
    :cond_c
    const-string v1, "debug.generate-debug-info"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 1903
    .local v7, "genDebugInfoProperty":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    if-nez v1, :cond_d

    :try_start_b
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    if-eqz v1, :cond_e

    .line 1904
    :cond_d
    or-int/lit8 v0, v0, 0x20

    .line 1906
    :cond_e
    :try_start_c
    const-string v1, "dalvik.vm.minidebuginfo"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 1907
    .local v6, "genMiniDebugInfoProperty":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    if-nez v1, :cond_f

    :try_start_d
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    if-eqz v1, :cond_10

    .line 1908
    :cond_f
    or-int/lit16 v0, v0, 0x800

    .line 1910
    :cond_10
    :try_start_e
    const-string v1, "1"

    const-string v2, "debug.jni.logging"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1911
    or-int/lit8 v0, v0, 0x10

    .line 1913
    :cond_11
    const-string v1, "1"

    const-string v2, "debug.assert"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1914
    or-int/lit8 v0, v0, 0x4

    .line 1916
    :cond_12
    const-string v1, "1"

    const-string v2, "debug.ignoreappsignalhandler"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1917
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 1919
    :cond_13
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6

    if-eqz v1, :cond_14

    :try_start_f
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1920
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1922
    or-int/lit8 v0, v0, 0x40

    .line 1923
    or-int/lit8 v0, v0, 0x20

    .line 1924
    or-int/lit16 v0, v0, 0x80

    .line 1925
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    move v1, v0

    goto :goto_4

    .line 1928
    :cond_14
    move v1, v0

    .end local v0    # "runtimeFlags":I
    .local v1, "runtimeFlags":I
    :goto_4
    :try_start_10
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1929
    or-int/lit16 v1, v1, 0x400

    goto :goto_5

    .line 1930
    :cond_15
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6

    if-eqz v0, :cond_17

    .line 1931
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    move-object v2, v0

    .line 1932
    .local v2, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    .line 1933
    nop

    .line 1934
    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1933
    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1935
    or-int/lit16 v1, v1, 0x400

    .line 1937
    :cond_16
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .end local v12    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "abiOverride":Ljava/lang/String;
    :try_start_13
    throw v0

    .line 1940
    .end local v2    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local v12    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "abiOverride":Ljava/lang/String;
    :cond_17
    :goto_5
    if-nez p4, :cond_19

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1941
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 1942
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v2

    .line 1941
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 1943
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1944
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v0

    .line 1945
    .local v0, "policy":I
    sget v2, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v2, v0, v2

    .line 1946
    .local v2, "policyBits":I
    and-int/lit16 v4, v2, 0x3000

    if-ne v4, v2, :cond_18

    .line 1949
    or-int/2addr v1, v2

    .line 1951
    if-eqz p5, :cond_19

    .line 1952
    const/high16 v4, 0x40000

    or-int/2addr v1, v4

    goto :goto_6

    .line 1947
    :cond_18
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid API policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v12    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "abiOverride":Ljava/lang/String;
    throw v3
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2

    .line 1956
    .end local v0    # "policy":I
    .end local v2    # "policyBits":I
    .restart local v12    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "abiOverride":Ljava/lang/String;
    :cond_19
    :goto_6
    :try_start_14
    const-string/jumbo v0, "persist.device_config.runtime_native.use_app_image_startup_cache"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1959
    .local v5, "useAppImageCache":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_6

    if-nez v0, :cond_1a

    :try_start_15
    const-string v0, "false"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_2

    if-nez v0, :cond_1a

    .line 1960
    const/high16 v0, 0x10000

    or-int/2addr v1, v0

    .line 1963
    :cond_1a
    :try_start_16
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->decideGwpAsanLevel(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    or-int/2addr v1, v0

    .line 1965
    const/4 v2, 0x0

    .line 1966
    .local v2, "invokeWith":Ljava/lang/String;
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_6

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    .line 1968
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/wrap.sh"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 1969
    .local v4, "wrapperFileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_2

    move-object v10, v0

    .line 1971
    .local v10, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/logwrapper "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    move-object v2, v0

    .line 1975
    :cond_1b
    :try_start_19
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1976
    move-object v0, v2

    goto :goto_7

    .line 1975
    :catchall_1
    move-exception v0

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1976
    nop

    .end local v12    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "abiOverride":Ljava/lang/String;
    throw v0
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_2

    .line 1966
    .end local v4    # "wrapperFileName":Ljava/lang/String;
    .end local v10    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v12    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "abiOverride":Ljava/lang/String;
    :cond_1c
    move-object v0, v2

    .line 1979
    .end local v2    # "invokeWith":Ljava/lang/String;
    .local v0, "invokeWith":Ljava/lang/String;
    :goto_7
    if-eqz p6, :cond_1d

    move-object/from16 v2, p6

    goto :goto_8

    :cond_1d
    :try_start_1a
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_6

    .line 1980
    .local v2, "requiredAbi":Ljava/lang/String;
    :goto_8
    if-nez v2, :cond_1e

    .line 1981
    :try_start_1b
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_4

    const/16 v16, 0x0

    :try_start_1c
    aget-object v3, v3, v16
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_3

    move-object v2, v3

    move-object v4, v2

    goto :goto_a

    .line 2028
    .end local v0    # "invokeWith":Ljava/lang/String;
    .end local v1    # "runtimeFlags":I
    .end local v2    # "requiredAbi":Ljava/lang/String;
    .end local v5    # "useAppImageCache":Ljava/lang/String;
    .end local v6    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v7    # "genDebugInfoProperty":Ljava/lang/String;
    .end local v8    # "mountExternal":I
    .end local v9    # "userId":I
    .end local v11    # "gids":[I
    .end local v17    # "externalStorageAccess":Z
    .end local v18    # "uid":I
    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    const/16 v16, 0x0

    :goto_9
    move-wide/from16 v29, v12

    move/from16 v28, v16

    goto/16 :goto_f

    .line 1980
    .restart local v0    # "invokeWith":Ljava/lang/String;
    .restart local v1    # "runtimeFlags":I
    .restart local v2    # "requiredAbi":Ljava/lang/String;
    .restart local v5    # "useAppImageCache":Ljava/lang/String;
    .restart local v6    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .restart local v7    # "genDebugInfoProperty":Ljava/lang/String;
    .restart local v8    # "mountExternal":I
    .restart local v9    # "userId":I
    .restart local v11    # "gids":[I
    .restart local v17    # "externalStorageAccess":Z
    .restart local v18    # "uid":I
    :cond_1e
    const/16 v16, 0x0

    move-object v4, v2

    .line 1984
    .end local v2    # "requiredAbi":Ljava/lang/String;
    .local v4, "requiredAbi":Ljava/lang/String;
    :goto_a
    const/4 v2, 0x0

    .line 1985
    .local v2, "instructionSet":Ljava/lang/String;
    :try_start_1d
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_5

    if-eqz v3, :cond_1f

    .line 1988
    :try_start_1e
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_3

    move-object v2, v3

    goto :goto_b

    .line 1985
    :cond_1f
    move-object v3, v2

    .line 1991
    .end local v2    # "instructionSet":Ljava/lang/String;
    .local v3, "instructionSet":Ljava/lang/String;
    :goto_b
    :try_start_1f
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setGids([I)V

    .line 1992
    invoke-virtual {v15, v4}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 1993
    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessRecord;->setInstructionSet(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_5

    .line 2005
    if-eqz v3, :cond_20

    :try_start_20
    const-string v2, "arm64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_3

    if-eqz v2, :cond_21

    .line 2006
    :cond_20
    :try_start_21
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->decideTaggingLevel(Lcom/android/server/am/ProcessRecord;)I

    move-result v2

    or-int/2addr v1, v2

    .line 2009
    :cond_21
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->enableNativeHeapZeroInit(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2010
    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    move/from16 v19, v1

    goto :goto_c

    .line 2009
    :cond_22
    move/from16 v19, v1

    .line 2014
    .end local v1    # "runtimeFlags":I
    .local v19, "runtimeFlags":I
    :goto_c
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_5

    if-eqz v1, :cond_23

    .line 2015
    :try_start_22
    const-string v1, "ActivityManager"

    const-string v2, "SELinux tag not defined"

    new-instance v10, Ljava/lang/IllegalStateException;

    move-object/from16 v20, v3

    .end local v3    # "instructionSet":Ljava/lang/String;
    .local v20, "instructionSet":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    .end local v4    # "requiredAbi":Ljava/lang/String;
    .local v21, "requiredAbi":Ljava/lang/String;
    const-string v4, "SELinux tag not defined for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_3

    goto :goto_d

    .line 2014
    .end local v20    # "instructionSet":Ljava/lang/String;
    .end local v21    # "requiredAbi":Ljava/lang/String;
    .restart local v3    # "instructionSet":Ljava/lang/String;
    .restart local v4    # "requiredAbi":Ljava/lang/String;
    :cond_23
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 2019
    .end local v3    # "instructionSet":Ljava/lang/String;
    .end local v4    # "requiredAbi":Ljava/lang/String;
    .restart local v20    # "instructionSet":Ljava/lang/String;
    .restart local v21    # "requiredAbi":Ljava/lang/String;
    :goto_d
    :try_start_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_5

    if-eqz v2, :cond_24

    :try_start_24
    const-string v2, ""
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_3

    goto :goto_e

    :cond_24
    :try_start_25
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2023
    .local v10, "seInfo":Ljava/lang/String;
    const-string v1, "android.app.ActivityThread"

    move-object/from16 v22, v1

    .line 2025
    .local v22, "entryPoint":Ljava/lang/String;
    const-string v3, "android.app.ActivityThread"
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    .end local v5    # "useAppImageCache":Ljava/lang/String;
    .local v23, "useAppImageCache":Ljava/lang/String;
    move/from16 v5, v18

    move-object/from16 v24, v6

    .end local v6    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .local v24, "genMiniDebugInfoProperty":Ljava/lang/String;
    move-object v6, v11

    move-object/from16 v25, v7

    .end local v7    # "genDebugInfoProperty":Ljava/lang/String;
    .local v25, "genDebugInfoProperty":Ljava/lang/String;
    move/from16 v7, v19

    move/from16 v26, v8

    .end local v8    # "mountExternal":I
    .local v26, "mountExternal":I
    move/from16 v8, p3

    move/from16 v27, v9

    .end local v9    # "userId":I
    .local v27, "userId":I
    move/from16 v9, v26

    move/from16 v28, v16

    move-object/from16 v16, v11

    .end local v11    # "gids":[I
    .local v16, "gids":[I
    move-object/from16 v11, v21

    move-wide/from16 v29, v12

    .end local v12    # "startTime":J
    .local v29, "startTime":J
    move-object/from16 v12, v20

    move-object v13, v0

    move-wide/from16 v14, v29

    :try_start_26
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    return v1

    .line 2028
    .end local v0    # "invokeWith":Ljava/lang/String;
    .end local v10    # "seInfo":Ljava/lang/String;
    .end local v16    # "gids":[I
    .end local v17    # "externalStorageAccess":Z
    .end local v18    # "uid":I
    .end local v19    # "runtimeFlags":I
    .end local v20    # "instructionSet":Ljava/lang/String;
    .end local v21    # "requiredAbi":Ljava/lang/String;
    .end local v22    # "entryPoint":Ljava/lang/String;
    .end local v23    # "useAppImageCache":Ljava/lang/String;
    .end local v24    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v25    # "genDebugInfoProperty":Ljava/lang/String;
    .end local v26    # "mountExternal":I
    .end local v27    # "userId":I
    .end local v29    # "startTime":J
    .restart local v12    # "startTime":J
    :catch_5
    move-exception v0

    move-wide/from16 v29, v12

    move/from16 v28, v16

    goto :goto_f

    :catch_6
    move-exception v0

    move-wide/from16 v29, v12

    const/16 v28, 0x0

    goto :goto_f

    .line 1820
    .restart local v9    # "userId":I
    :catch_7
    move-exception v0

    move/from16 v27, v9

    move/from16 v28, v11

    move-wide/from16 v29, v12

    .line 1821
    .end local v9    # "userId":I
    .end local v12    # "startTime":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v27    # "userId":I
    .restart local v29    # "startTime":J
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v29    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_8

    .line 2028
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v27    # "userId":I
    .restart local v29    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "abiOverride":Ljava/lang/String;
    :catch_8
    move-exception v0

    goto :goto_f

    .end local v29    # "startTime":J
    .restart local v12    # "startTime":J
    :catch_9
    move-exception v0

    move/from16 v28, v11

    move-wide/from16 v29, v12

    .line 2029
    .end local v12    # "startTime":J
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v29    # "startTime":J
    :goto_f
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure starting process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2037
    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v13, "start failure"

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2039
    return v28
.end method

.method unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IProcessObserver;

    .line 4525
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 4526
    return-void
.end method

.method updateAllTimePrefsLOSP(I)V
    .locals 6
    .param p1, "timePref"    # I

    .line 3163
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3164
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3165
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3166
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_0

    .line 3168
    :try_start_0
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3172
    goto :goto_1

    .line 3169
    :catch_0
    move-exception v3

    .line 3170
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update preferences for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3175
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method updateApplicationInfoLOSP(Ljava/util/List;IZ)V
    .locals 5
    .param p2, "userId"    # I
    .param p3, "updateFrameworkRes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 4694
    .local p1, "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4695
    .local v0, "targetProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowProcessController;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4696
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4697
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4698
    goto :goto_1

    .line 4701
    :cond_0
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v3, p2, :cond_1

    .line 4702
    goto :goto_1

    .line 4705
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;

    invoke-direct {v4, p3, p1, v2, v0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;-><init>(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4695
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4725
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateAssetConfiguration(Ljava/util/List;Z)V

    .line 4726
    return-void
.end method

.method updateCoreSettingsLOSP(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "settings"    # Landroid/os/Bundle;

    .line 3114
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3115
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3116
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3118
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_0

    .line 3119
    :try_start_0
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3121
    :catch_0
    move-exception v3

    goto :goto_2

    .line 3123
    :cond_0
    :goto_1
    nop

    .line 3114
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3125
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityChange"    # Z
    .param p3, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 3468
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3469
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3470
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 3471
    .local v1, "hasActivity":Z
    :goto_1
    const/4 v3, 0x0

    .line 3472
    .local v3, "hasService":Z
    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    .line 3477
    return-void

    .line 3480
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3482
    return-void

    .line 3485
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3486
    invoke-direct {p0, p1, p3, v1, v2}, Lcom/android/server/am/ProcessList;->updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 3487
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3488
    return-void

    .line 3487
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method writeProcessesToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 4132
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v1, 0x0

    .line 4134
    .local v1, "numPers":I
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 4135
    .local v10, "numOfNames":I
    const/4 v2, 0x0

    move v11, v1

    .end local v1    # "numPers":I
    .local v2, "ip":I
    .local v11, "numPers":I
    :goto_0
    if-ge v2, v10, :cond_3

    .line 4136
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 4137
    .local v1, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v3, 0x0

    .local v3, "ia":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 4138
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 4139
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_0

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4140
    goto :goto_2

    .line 4142
    :cond_0
    const-wide v6, 0x20b00000001L

    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4143
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 4142
    invoke-virtual {v5, v8, v6, v7, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4145
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4146
    add-int/lit8 v11, v11, 0x1

    .line 4137
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4135
    .end local v1    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "ia":I
    .end local v4    # "size":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4151
    .end local v2    # "ip":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_3
    if-ge v1, v2, :cond_5

    .line 4152
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4153
    .local v3, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4154
    goto :goto_4

    .line 4156
    :cond_4
    const-wide v4, 0x20b00000002L

    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4157
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 4156
    invoke-virtual {v3, v8, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4151
    .end local v3    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4161
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityManagerService;->getAppId(Ljava/lang/String;)I

    move-result v12

    .line 4162
    .local v12, "dumpAppId":I
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-wide v5, 0x20b00000004L

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 4165
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    if-lez v1, :cond_6

    .line 4166
    const-wide v1, 0x10b00000006L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 4167
    .local v13, "lruToken":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v15

    .line 4168
    .local v15, "total":I
    const-wide v1, 0x10500000001L

    invoke-virtual {v8, v1, v2, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4169
    const-wide v1, 0x10500000002L

    iget v3, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int v3, v15, v3

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4171
    const-wide v1, 0x10500000003L

    iget v3, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int v3, v15, v3

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4173
    const-wide v2, 0x20b00000004L

    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z

    .line 4176
    invoke-virtual {v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4179
    .end local v13    # "lruToken":J
    .end local v15    # "total":I
    :cond_6
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v8, v9, v12, v11}, Lcom/android/server/am/ActivityManagerService;->writeOtherProcessesInfoToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;II)V

    .line 4180
    return-void
.end method
